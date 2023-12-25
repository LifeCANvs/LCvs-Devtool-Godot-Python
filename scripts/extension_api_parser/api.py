from typing import List, Dict, Optional, Set, Union
from collections import OrderedDict
from dataclasses import dataclass, replace
from pathlib import Path
import json
from enum import Enum

from .type_spec import *
from .builtins import *
from .classes import *
from .utils import *


class BuildConfig(Enum):
    FLOAT_32 = "float_32"
    DOUBLE_32 = "double_32"
    FLOAT_64 = "float_64"
    DOUBLE_64 = "double_64"


@dataclass
class GlobalConstantSpec:
    @classmethod
    def parse(cls, item: dict) -> "GlobalConstantSpec":
        # Don't known what it is supposed to contain given the list is so far empty in the JSON
        raise NotImplementedError


def parse_global_enum(spec: dict) -> EnumTypeSpec:
    assert spec.keys() == {"name", "is_bitfield", "values"}, spec.keys()
    cooked_name = "".join(spec["name"].split("."))
    return EnumTypeSpec(
        original_name=spec["name"],
        py_type=cooked_name,
        cy_type=cooked_name,
        is_bitfield=spec["is_bitfield"],
        values={x["name"]: x["value"] for x in spec["values"]},
    )


@dataclass
class UtilityFunctionArgumentSpec:
    name: str
    original_name: str
    type: TypeInUse
    default_value: Optional[ValueInUse]

    @classmethod
    def parse(cls, item: dict) -> "UtilityFunctionArgumentSpec":
        item.setdefault("original_name", item["name"])
        item.setdefault("default_value", None)
        assert_api_consistency(cls, item)
        arg_type = TypeInUse(item["type"])
        return cls(
            name=correct_name(item["name"]),
            original_name=item["original_name"],
            type=arg_type,
            default_value=ValueInUse.parse(arg_type, item["default_value"])
            if item["default_value"]
            else None,
        )


@dataclass
class UtilityFunctionSpec:
    original_name: str
    name: str
    return_type: TypeInUse
    category: str
    is_vararg: bool
    hash: int
    arguments: List[UtilityFunctionArgumentSpec]

    @classmethod
    def parse(cls, item: dict) -> "UtilityFunctionSpec":
        item.setdefault("original_name", item["name"])
        item.setdefault("arguments", [])
        item.setdefault("return_type", "Nil")
        assert_api_consistency(cls, item)
        return cls(
            name=correct_name(item["name"]),
            original_name=item["original_name"],
            return_type=TypeInUse(item["return_type"]),
            category=item["category"],
            is_vararg=item["is_vararg"],
            hash=item["hash"],
            arguments=[UtilityFunctionArgumentSpec.parse(x) for x in item["arguments"]],
        )


@dataclass
class SingletonSpec:
    original_name: str
    name: str
    type: TypeInUse

    @classmethod
    def parse(cls, item: dict) -> "SingletonSpec":
        item.setdefault("original_name", item["name"])
        assert_api_consistency(cls, item)
        return cls(
            name=correct_name(item["name"]),
            original_name=item["original_name"],
            type=TypeInUse(item["type"]),
        )


@dataclass(frozen=True, repr=False)
class NativeStructureSpec(TypeSpec):
    original_name: str
    # Format is basically a dump of the C struct content, so don't try to be clever by parsing it
    fields: Dict[str, TypeInUse]

    @property
    def is_native_structure(self) -> bool:
        return True

    def __getattribute__(self, name: str):
        if name in ("variant_type_name", "py_type", "cy_type"):
            raise RuntimeError(
                "NativeStructureSpec type ! Should handle this by hand with a if condition on `<my_type>.is_native_structure`"
            )
        elif name == "size":
            return sum(x.size for x in self.fields.values())
        return super().__getattribute__(name)

    @classmethod
    def parse(cls, item: dict) -> "NativeStructureSpec":
        assert item.keys() == {"name", "format"}
        name = item["name"]
        # Format field is typically something like `int start = -1;uint8_t count;Rect2 caret;TextServer::Direction direction`
        fields = {}
        for raw_field in item["format"].split(";"):
            if not raw_field:
                continue
            raw_field, *_ = raw_field.split("=", 1)  # Ignore default value
            # Handle function pointer (yeah detection is pretty fragile, but it is good enough for now)
            if "(*" in raw_field:
                # TODO: better typping support for function pointer ?
                raw_field = "void *foo"
            field_type, field_name = raw_field.split()
            # Handle Enum
            if "::" in field_type:
                field_type = "int"
            elif field_type.endswith("_t"):
                field_type = f"meta:{field_type[:-2]}"
            if field_name[0] == "*":
                field_name = field_name[1:]
                field_type = field_type + "*"
                # TODO: better support of void* ?
                if field_type == "void*":
                    field_type = "Object*"
                if field_type != "Object*":
                    raise RuntimeError(f"Unsupported pointer type `{field_type}` in `{name}`")
                field_type = "Object"
            fields[field_name] = TypeInUse(field_type)
        return cls(
            size=0,  # Never accessed dummy value
            original_name=name,
            fields=fields,
            py_type="",  # Never accessed dummy value
            cy_type="",  # Never accessed dummy value
            # c_type=f"gd_{camel_to_snake(name)}_t",
            c_type=name,
            is_stack_only=True,
            variant_type_name="",  # Never accessed dummy value
        )


@dataclass
class ExtensionApi:
    version_major: int  # e.g. 4
    version_minor: int  # e.g. 0
    version_patch: int  # e.g. 0
    version_status: str  # e.g. "alpha13"
    version_build: str  # e.g. "official"
    version_full_name: str  # e.g. "Godot Engine v4.0.alpha13.official"

    classes: List[ClassTypeSpec]
    builtins: List[BuiltinTypeSpec]
    global_constants: List[GlobalConstantSpec]
    global_enums: List[EnumTypeSpec]
    utility_functions: List[UtilityFunctionSpec]
    singletons: List[SingletonSpec]
    native_structures: List[NativeStructureSpec]

    # Expose scalars, nil and variant

    @property
    def variant_type(self) -> TypeSpec:
        return TYPES_DB["Variant"]

    @property
    def nil_type(self) -> TypeSpec:
        return TYPES_DB["Nil"]

    @property
    def bool_type(self) -> TypeSpec:
        return TYPES_DB["bool"]

    @property
    def int_type(self) -> TypeSpec:
        return TYPES_DB["int"]

    @property
    def float_type(self) -> TypeSpec:
        return TYPES_DB["float"]

    @property
    def packed_array_types(self) -> Iterable[BuiltinTypeSpec]:
        return [
            t for t in TYPES_DB.values() if isinstance(t, BuiltinTypeSpec) and t.is_packed_array
        ]

    def get_class_meth_hash(self, classname: str, methname: str) -> Optional[int]:
        klass = next(c for c in self.classes if c.original_name == classname)
        meth = next(m for m in klass.methods if m.original_name == methname)
        return meth.hash


def merge_builtins_size_info(api_json: dict, build_config: BuildConfig) -> None:
    # Builtins size depend of the build config, hence it is stored separatly from
    # the rest of the built class definition.
    # Here we retreive the correct config and merge it back in the builtins classes
    # definition to simplify the rest of the parsing.

    builtin_class_sizes = next(
        x["sizes"]
        for x in api_json["builtin_class_sizes"]
        if x["build_configuration"] == build_config.value
    )
    builtin_class_sizes = {x["name"]: x["size"] for x in builtin_class_sizes}
    builtin_class_member_offsets = next(
        x["classes"]
        for x in api_json["builtin_class_member_offsets"]
        if x["build_configuration"] == build_config.value
    )
    builtin_class_member_offsets = {x["name"]: x["members"] for x in builtin_class_member_offsets}

    for item in api_json["builtin_classes"]:
        name = item["name"]
        item["size"] = builtin_class_sizes[name]
        for member_offset in builtin_class_member_offsets.get(name, ()):
            for item_member in item.get("members", ()):
                if item_member["name"] == member_offset["member"]:
                    # Add the offset field
                    item_member["offset"] = member_offset["offset"]

                    # Overwrite the type (typically `int` -> `meta:uint32`)
                    # This is needed given the actual size of the type depends on
                    # the structure (e.g. `Color` is always composed of 32bits floats)
                    # and the build config (`float` in a structure can reference either
                    # 32 or 64bits... while the float builtin is always 64bits !)
                    if item_member["type"] in ("float", "int"):
                        item_member["type"] = f"meta:{member_offset['meta']}"

                    # Note it's possible to have more members than offets, the remaining
                    # members being properties (e.g. `Rec2` has `start` and `size`, then
                    # an additional `end` which is computed from the first two)

                    break
            else:
                raise RuntimeError(
                    f"Member `{member_offset}` doesn't seem to be part of `{name}` !"
                )

    # Variant&Object are not present among the `builtin_classes`, only their size is provided.
    # So we have to create our own custom entry for them.
    api_json["variant_size"] = builtin_class_sizes["Variant"]
    api_json["object_size"] = builtin_class_sizes["Object"]


def order_classes(classes: List[ClassTypeSpec]) -> List[ClassTypeSpec]:
    # Order classes by inheritance dependency needs
    ordered_classes: OrderedDict[
        str, ClassTypeSpec
    ] = OrderedDict()  # Makes it explicit we need ordering here !
    ordered_count = 0

    while len(classes) != len(ordered_classes):
        for klass in classes:
            if klass.inherits is None or klass.inherits.type_name in ordered_classes:
                ordered_classes[klass.original_name] = klass

        # Sanity check to avoid infinite loop in case of error in `extension_api.json`
        if ordered_count == len(ordered_classes):
            bad_class = next(
                klass
                for klass in classes
                if klass.inherits is not None and klass.inherits.type_name not in ordered_classes
            )
            raise RuntimeError(
                f"Class `{bad_class.original_name}` inherits of unknown class `{bad_class.inherits.type_name}`"
            )
        ordered_count = len(ordered_classes)

    return list(ordered_classes.values())


def parse_extension_api_json(
    path: Path, build_config: BuildConfig, filter_classes: Union[bool, Set[str]]
) -> ExtensionApi:
    api_json = json.loads(path.read_text(encoding="utf8"))
    assert isinstance(api_json, dict)

    merge_builtins_size_info(api_json, build_config)

    # Not much info about variant
    variant_type = VariantTypeSpec(size=api_json["variant_size"])
    TYPES_DB_REGISTER_TYPE("Variant", variant_type)

    # Unlike int type that is always 8 bytes long, float depends on config
    if build_config in (BuildConfig.DOUBLE_32, BuildConfig.DOUBLE_64):
        real_type = replace(TYPES_DB[f"meta:float"], original_name="float")
    else:
        real_type = replace(TYPES_DB[f"meta:double"], original_name="float")
    TYPES_DB_REGISTER_TYPE("float", real_type)
    TYPES_DB_REGISTER_TYPE("meta:real", real_type)

    def _register_enums(enums, parent_id=None):
        for enum_type in enums:
            classifier = "bitfield" if enum_type.is_bitfield else "enum"
            if parent_id:
                type_id = f"{classifier}::{parent_id}.{enum_type.original_name}"
            else:
                type_id = f"{classifier}::{enum_type.original_name}"
            TYPES_DB_REGISTER_TYPE(type_id, enum_type)

    builtins = parse_builtins_ignore_scalars_and_nil(api_json["builtin_classes"])
    for builtin_type in builtins:
        TYPES_DB_REGISTER_TYPE(builtin_type.original_name, builtin_type)
        _register_enums(builtin_type.enums, parent_id=builtin_type.original_name)

    # Parsing classes takes ~75% of the time while not being needed to render builtins stuff
    if filter_classes is True:
        # Only keep Object root class that is always needed
        filter_classes = {"Object"}
    if filter_classes:
        api_json["classes"] = [k for k in api_json["classes"] if k["name"] in filter_classes]

    classes = order_classes(
        [parse_class(x, object_size=api_json["object_size"]) for x in api_json["classes"]]
    )
    for class_type in classes:
        TYPES_DB_REGISTER_TYPE(class_type.original_name, class_type)
        _register_enums(class_type.enums, parent_id=class_type.original_name)

    global_enums = [parse_global_enum(x) for x in api_json["global_enums"]]
    _register_enums(global_enums)

    native_structures = [NativeStructureSpec.parse(x) for x in api_json["native_structures"]]
    for native_structure_type in native_structures:
        TYPES_DB_REGISTER_TYPE(native_structure_type.original_name, native_structure_type)

    ensure_types_db_consistency()

    api = ExtensionApi(
        version_major=api_json["header"]["version_major"],
        version_minor=api_json["header"]["version_minor"],
        version_patch=api_json["header"]["version_patch"],
        version_status=api_json["header"]["version_status"],
        version_build=api_json["header"]["version_build"],
        version_full_name=api_json["header"]["version_full_name"],
        classes=classes,
        builtins=builtins,
        global_constants=[GlobalConstantSpec.parse(x) for x in api_json["global_constants"]],
        global_enums=global_enums,
        utility_functions=[UtilityFunctionSpec.parse(x) for x in api_json["utility_functions"]],
        singletons=[SingletonSpec.parse(x) for x in api_json["singletons"]],
        native_structures=native_structures,
    )

    return api
