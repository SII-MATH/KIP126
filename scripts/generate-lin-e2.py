#!/usr/bin/env python3
"""Reproduce RawData using KIP126's standalone, hash-pinned generator.

Default: check the committed/worktree RawData without writing it.
With --output: generate a canonical-namespace file at the explicit destination.
Neither generation nor checking depends on the historical source tree.
"""

import argparse
from pathlib import Path
import subprocess
import sys
import tempfile


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("csv_directory", type=Path)
    parser.add_argument("--output", type=Path, help="explicit destination; otherwise only verify")
    args = parser.parse_args()
    repo = Path(__file__).resolve().parent.parent
    canonical = repo / "KIP126" / "External" / "Computation" / "LinE2" / "RawData.lean"
    generator = canonical.with_name("generate.py")
    with tempfile.TemporaryDirectory(prefix="kip126-lin-e2-generate-") as tmp:
        result = subprocess.run(
            [sys.executable, "-B", str(generator), str(args.csv_directory.resolve()), tmp],
            check=False,
        )
        if result.returncode:
            return result.returncode
        generated = (Path(tmp) / "RawData.lean").read_bytes()
    if args.output is None:
        if canonical.read_bytes() != generated:
            print("RawData differs from the hash-pinned CSV regeneration", file=sys.stderr)
            return 1
        print("KIP126 RawData is byte-identical to regenerated CSV data.")
    else:
        destination = args.output.resolve()
        if destination in (generator.resolve(), Path(__file__).resolve()):
            parser.error("refusing to overwrite a generator script")
        if destination.is_relative_to(repo / "KIPBase"):
            parser.error("refusing to overwrite the historical source tree")
        args.output.write_bytes(generated)
        print(f"Generated {args.output}: {len(generated)} bytes")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
