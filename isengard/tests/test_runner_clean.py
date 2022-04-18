import pytest
from pathlib import Path

from .._exceptions import IsengardConsistencyError
from .._runner import Runner

from .conftest import configurify


def test_clean_single_output(tmp_path: Path, runner_factory, rule_factory):
    target_path = tmp_path / "target.txt"
    configured_target = configurify(target_path)
    runner: Runner = runner_factory(
        rules=[
            rule_factory(
                configured_outputs=[configured_target],
            ),
        ],
    )

    # Nothing to clean
    runner.clean(configured_target)

    # Something to clean
    target_path.touch()
    runner.clean(configured_target)
    assert not target_path.exists()


def test_clean_multiple_output(tmp_path: Path, runner_factory, rule_factory):
    one_path = tmp_path / "one.txt"
    two_path = tmp_path / "two.txt"
    three_path = tmp_path / "sub/three.txt"
    runner: Runner = runner_factory(
        rules=[
            rule_factory(
                fn=lambda outputs: None,
                configured_outputs=[
                    configurify(one_path),
                    configurify(two_path),
                    configurify(three_path),
                ],
            ),
        ],
    )

    # Nothing to clean
    runner.clean(configurify(three_path))

    # Something to clean
    one_path.touch()
    two_path.touch()
    three_path.parent.mkdir()
    three_path.touch()
    runner.clean(configurify(three_path))
    # Cleaning a target actually clean all target generated by the rule
    assert not one_path.exists()
    assert not two_path.exists()
    assert not three_path.exists()


def test_clean_cascade(tmp_path: Path, runner_factory, rule_factory):
    src_path = tmp_path / "foo.pyx"
    gen_path = tmp_path / "foo.c"
    obj_path = tmp_path / "foo.o"
    bin_path = tmp_path / "foo.exe"
    runner: Runner = runner_factory(
        rules=[
            rule_factory(
                configured_outputs=[configurify(gen_path)],
                configured_inputs=[configurify(src_path)],
            ),
            rule_factory(
                configured_outputs=[configurify(obj_path)],
                configured_inputs=[configurify(gen_path)],
            ),
            rule_factory(
                configured_outputs=[configurify(bin_path)],
                configured_inputs=[configurify(obj_path)],
            ),
        ],
        config={"flags": "--foo"},
    )

    src_path.touch()

    # Nothing to clean
    runner.clean(configurify(bin_path))
    assert src_path.exists()
    assert not gen_path.exists()
    assert not obj_path.exists()
    assert not bin_path.exists()

    gen_path.touch()
    obj_path.touch()
    bin_path.touch()

    # Cleaning a rule doesn't clean the rule depending on it...
    runner.clean(configurify(gen_path))
    assert src_path.exists()
    assert not gen_path.exists()
    assert obj_path.exists()
    assert bin_path.exists()

    gen_path.touch()

    # On the other hand, cleaning a rule also clean the rule it depends on
    runner.clean(configurify(bin_path))
    assert src_path.exists()
    assert not gen_path.exists()
    assert not obj_path.exists()
    assert not bin_path.exists()


def test_clean_detect_recursion(tmp_path: Path, runner_factory, rule_factory):
    a_path = tmp_path / "a.txt"
    b_path = tmp_path / "b.txt"
    c_path = tmp_path / "c.txt"
    runner: Runner = runner_factory(
        rules=[
            rule_factory(
                configured_outputs=[configurify(a_path)],
                configured_inputs=[configurify(b_path)],
            ),
            rule_factory(
                configured_outputs=[configurify(b_path)],
                configured_inputs=[configurify(c_path)],
            ),
            rule_factory(
                configured_outputs=[configurify(c_path)],
                configured_inputs=[configurify(a_path)],
            ),
        ],
    )

    expected_err = "Recursion detection in rules rule-a.txt# -> rule-b.txt# -> rule-c.txt#"
    with pytest.raises(IsengardConsistencyError, match=expected_err):
        runner.clean(configurify(a_path))
