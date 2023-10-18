#! /usr/bin/env python

import os
import re
import sys
import platform
import importlib.util
from typing import List, Sequence, Optional
from contextlib import contextmanager
import argparse
from pathlib import Path
import shutil
import subprocess
from tempfile import TemporaryDirectory
from difflib import SequenceMatcher


BASEDIR = Path(__file__).resolve().parent
RED = "\033[0;31m"
GREEN = "\033[0;32m"
YELLOW = "\033[0;33m"
NO_COLOR = "\033[0m"


def fetch_godot_binary_if_needed(build_dir: Path, godot_version_hint: str) -> Path:
    # Is the hint a valid path ?
    try:
        godot_binary_path = Path(godot_version_hint).resolve()
        if godot_binary_path.is_file():
            return godot_binary_path
    except OSError:
        pass

    # Alternative path: must use `fetch_godot.py` script to fetch Godot

    # 1) Import `fetch_godot.py` as a module
    spec = importlib.util.spec_from_file_location(
        "download_python", BASEDIR / "../scripts/fetch_godot.py"
    )
    assert spec is not None and spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    # 2) Actually fetch Godot
    godot_build_platform, godot_version = module.parse_godot_binary_hint(godot_version_hint)
    godot_binary_path = module.fetch_godot_binary(build_dir, godot_build_platform, godot_version)

    return godot_binary_path


def collect_tests() -> List[Path]:
    return [item for item in BASEDIR.iterdir() if (item / "project.godot").exists()]


def install_distrib(build_dir: Path, distrib_subdir: str) -> Path:
    distrib_workdir = build_dir / distrib_subdir
    print(f"{YELLOW}Generate distrib for tests {distrib_workdir}{NO_COLOR}", flush=True)
    cmd = [
        "meson",
        "install",
        "-C",
        str(build_dir),
        "--only-changed",  # Prevent from copying Python distrib over and over
        "--destdir",
        distrib_subdir,
    ]
    print(" ".join(cmd), flush=True)
    subprocess.check_call(cmd)

    for platform_dir in (distrib_workdir / "addons/pythonscript").iterdir():
        if "windows" in platform_dir.name.lower():
            python_path = platform_dir / "python.exe"
            break
        elif "linux" in platform_dir.name.lower():
            python_path = platform_dir / "bin/python3"
            break
        elif "macos" in platform_dir.name.lower():
            python_path = platform_dir / "bin/python3"
            break

    # We also have to install Cython to compile the projects
    if (
        subprocess.run(
            [str(python_path), "-m", "cython", "--version"], capture_output=True
        ).returncode
        != 0
    ):
        cmd = [str(python_path), "-m", "ensurepip"]
        print(" ".join(cmd), flush=True)
        subprocess.check_call(cmd)
        cmd = [str(python_path), "-m", "pip", "install", "cython"]
        print(" ".join(cmd), flush=True)
        subprocess.check_call(cmd)

    return distrib_workdir


def symlink(src: Path, dst: Path) -> None:
    # Python's `os.symlink` doesn't work on Windows...
    # Well it kind of work: you must use Python>=3.8 and have administrator privilege
    # or have "Developer Mode" enabled (wtf is that, I guess you have to do a Konami
    # code in 3D Pinball Space Cadet to enable it).
    # The funny thing is Windows also has a concept of "junction point" that are
    # basically symlink for folder (though not what Python uses in `os.symlink`,
    # even if this function contains a `target_is_directory` param only for Windows
    # that could have totally let you think junction point is used...).
    # But there is more ! Python actually has a junction point creation function,
    # though it is in a private module so we are not supposed to use it, but yolo ;-)
    if platform.system() == "Windows":
        import _winapi

        _winapi.CreateJunction(str(src.resolve()), str(dst.resolve()))  # type: ignore[attr-defined]

    else:
        os.symlink(str(src.resolve()), str(dst.resolve()))


def create_test_workdir(
    test_dir: Path,
    distrib_workdir: Path,
    test_workdir: Path,
    custom_gdextension_api: Optional[Path],
) -> None:
    print(
        f"{YELLOW}{test_dir.name}: Create&populate test workdir in {test_workdir}{NO_COLOR}",
        flush=True,
    )
    shutil.copytree(test_dir, test_workdir, dirs_exist_ok=True)
    symlink(distrib_workdir / "addons", test_workdir / "addons")
    shutil.copy(distrib_workdir / "pythonscript.gdextension", test_workdir)
    # GDExtension headers are needed to compile Cython modules
    if custom_gdextension_api:
        shutil.copytree(custom_gdextension_api, test_workdir / "gdextension_api")
    else:
        symlink(build_dir / "gdextension_api", test_workdir / "gdextension_api")

    build_script = test_workdir / "build.py"
    if build_script.exists():
        print(
            f"{YELLOW}{test_dir.name}: Running build script {build_script}{NO_COLOR}",
            flush=True,
        )
        cmd = [sys.executable, str(build_script)]
        print(" ".join(cmd), flush=True)
        subprocess.check_call(cmd)


def run_test(
    test_name: str, test_workdir: Path, godot_binary: Path, extra_args: Sequence[str]
) -> None:
    print(
        f"{YELLOW}{test_name}: Running test in workdir {test_workdir}{NO_COLOR}",
        flush=True,
    )
    cmd = [
        str(godot_binary.resolve()),
        "--path",
        str(test_workdir.resolve()),
        *extra_args,
    ]
    print(" ".join(cmd), flush=True)
    res = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    total_output = b""
    subprocess_done = False
    while True:
        buff: bytes = res.stdout.read1()  # type: ignore
        total_output += buff
        os.write(sys.stdout.fileno(), buff)
        if subprocess_done:
            break
        try:
            res.wait(timeout=0.1)
            # Subprocess is done, but we still have one more stdin/stderr pump to do
            subprocess_done = True
        except subprocess.TimeoutExpired:
            # Subprocess is still running
            pass
    if res.returncode != 0:
        raise SystemExit(f"{RED}{test_name}: Non-zero return code: {res.returncode}{NO_COLOR}")

    try:
        expected_output = (test_workdir / "expected.output").read_text()

    except FileNotFoundError:
        for line in total_output.splitlines():
            lower_line = line.lower()
            if b"error" in lower_line or b"warning" in lower_line:
                raise SystemExit(
                    f"{RED}{test_name}: stdout/stderr contains logs with error and/or warning ({line!r}){NO_COLOR}"
                )

    else:
        expected_lines = list(reversed(expected_output.splitlines()))
        actual_lines = list(reversed([l.decode() for l in total_output.splitlines()]))
        msg = []
        mismatch = False
        while expected_lines or actual_lines:
            try:
                expected_line = expected_lines.pop()
            except IndexError:
                expected_line = None
            try:
                actual_line = actual_lines.pop()
            except IndexError:
                actual_line = None

            assert expected_line is not None or actual_line is not None
            if expected_line is not None and actual_line is None:
                msg.append(f"{RED}- {expected_line}{NO_COLOR}")
                mismatch = True
            elif expected_line is None and actual_line is not None:
                msg.append(f"{GREEN}+ {actual_line}{NO_COLOR}")
                mismatch = True
            else:
                assert expected_line is not None
                assert actual_line is not None
                if not re.match(f"^{expected_line}$", actual_line):
                    # Try to detect if the mismatch is due to an additional/missing line,
                    # or because of a small change in the expected line
                    if (
                        len(expected_lines) != len(actual_lines)
                        and SequenceMatcher(None, expected_line, actual_line).ratio() < 0.7
                    ):
                        if len(expected_lines) > len(actual_lines):
                            msg.append(f"{RED}- {expected_line}{NO_COLOR}")
                            actual_lines.append(actual_line)
                        else:
                            msg.append(f"{GREEN}+ {actual_line}{NO_COLOR}")
                            expected_lines.append(expected_line)
                    else:
                        msg.append(f"{RED}- {expected_line}{NO_COLOR}")
                        msg.append(f"{GREEN}+ {actual_line}{NO_COLOR}")
                    mismatch = True
                else:
                    msg.append(f"~ {actual_line}")

        if mismatch:
            raise SystemExit(
                f"{RED}{test_name}: unexpected stdout/stderr:{NO_COLOR}\n\n  " + "\n  ".join(msg)
            )

    print(f"{GREEN}{test_name}: All good \\o/{NO_COLOR}", flush=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("tests", nargs="*", help="Filter the tests to run")
    parser.add_argument(
        "--build-dir",
        type=Path,
        required=True,
        help="Build directory as configured in meson",
    )
    parser.add_argument(
        "--test-dir",
        type=Path,
        help="Use an existing test dir instead of creating a temporary one",
    )
    parser.add_argument(
        "--godot-binary",
        default="",
        help="Path to Godot binary to use, or version of Godot to download and use",
    )
    parser.add_argument(
        "--keep-test-dir",
        action="store_true",
        help="Don't remove the temporary directory used for the test",
    )
    parser.add_argument(
        "--only-refresh-common",
        action="store_true",
        help="Only update the addons build symlinked into all test projects",
    )
    parser.add_argument(
        "--custom-gdextension-api",
        type=Path,
        help="Copy GDExtension API folder from there instead of symlink the build one (useful if you have issues on Windows)",
    )

    try:
        options_separator = sys.argv.index("--")
    except ValueError:
        options_separator = len(sys.argv)

    args = parser.parse_args(sys.argv[1:options_separator])
    godot_extra_args = sys.argv[options_separator + 1 :]

    if args.tests:
        tests_dirs = [x for x in collect_tests() if any((x.name.startswith(t) for t in args.tests))]
        if not tests_dirs:
            raise SystemExit(
                f"No test selected, available tests: {[x.name for x in collect_tests()]}"
            )
    else:
        tests_dirs = collect_tests()

    build_dir = args.build_dir.resolve()

    godot_binary_path = fetch_godot_binary_if_needed(build_dir, args.godot_binary)

    # Install the distrib, it is common to each test and kept between run to save time
    distrib_workdir = install_distrib(build_dir, "common_tests_install_distrib")
    if args.only_refresh_common:
        raise SystemExit(0)

    @contextmanager
    def test_workdir_factory():
        if args.test_dir:
            yield args.test_dir
        else:
            temp_dir = TemporaryDirectory(prefix="godot-python-test-")
            try:
                yield Path(temp_dir.name)
            finally:
                if not args.keep_test_dir:
                    temp_dir.cleanup()
                else:
                    temp_dir._finalizer.detach()  # Avoid cleanup when temp_dir is garbage collected

    # On the other hand we use a temporary directory for the test code (given there
    # is not much data, and Godot may write in this directory during the test) with
    # symlinks on the distrib
    for test_dir in tests_dirs:
        with test_workdir_factory() as test_workdir:
            create_test_workdir(
                test_dir=test_dir,
                distrib_workdir=distrib_workdir,
                test_workdir=test_workdir,
                custom_gdextension_api=args.custom_gdextension_api,
            )
            run_test(test_dir.name, test_workdir, godot_binary_path, godot_extra_args)
