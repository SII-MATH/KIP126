#!/usr/bin/env python3
"""Overlay render inputs onto trusted tooling, independently of PR review scope."""

import argparse
from pathlib import Path
import shutil


def regular_tree(path: Path) -> None:
    if path.is_symlink():
        raise ValueError(f"symlink is not a source input: {path}")
    if path.is_dir():
        for child in path.iterdir():
            regular_tree(child)
    elif not path.is_file():
        raise ValueError(f"missing or non-regular source input: {path}")


def source_path(root: Path, name: str) -> Path:
    path = root
    for part in Path(name).parts:
        path = path / part
        if path.is_symlink():
            raise ValueError(f"symlink is not a source input: {path}")
    regular_tree(path)
    return path


def stage(trusted: Path, candidate: Path) -> None:
    # Render TeX even when a PR changes scripts, docs, or provenance metadata.
    # Candidate executable configuration is never copied or installed.
    source = source_path(candidate, "blueprint/src")
    shutil.rmtree(trusted / "blueprint/src")
    shutil.copytree(source, trusted / "blueprint/src")


def stage_lean(trusted: Path, candidate: Path) -> None:
    # The existing producer builds these same trusted Lake inputs. A config
    # change needs its own validated producer, never candidate Lake execution.
    for name in ("lakefile.lean", "lake-manifest.json", "lean-toolchain"):
        source_path(candidate, name)
        if (trusted / name).read_bytes() != (candidate / name).read_bytes():
            raise ValueError(f"candidate {name} differs from trusted producer configuration")
    for name in ("KIP126", "KIP126.lean", "KIPBase", "KIPBase.lean"):
        source = source_path(candidate, name)
        destination = trusted / name
        if name.startswith("KIPBase"):
            # pr-build deliberately retains trusted KIPBase. Reject a different
            # candidate rather than label the base's outputs as candidate outputs.
            if source.is_dir():
                left = {p.relative_to(source): p.read_bytes() for p in source.rglob("*") if p.is_file()}
                right = {p.relative_to(destination): p.read_bytes() for p in destination.rglob("*") if p.is_file()}
                if left != right:
                    raise ValueError("candidate KIPBase differs from trusted producer inputs")
            elif source.read_bytes() != destination.read_bytes():
                raise ValueError("candidate KIPBase.lean differs from trusted producer inputs")
            continue
        if destination.is_dir():
            shutil.rmtree(destination)
            shutil.copytree(source, destination)
        else:
            shutil.copyfile(source, destination)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("trusted", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--lean", action="store_true")
    args = parser.parse_args()
    (stage_lean if args.lean else stage)(args.trusted, args.candidate)
