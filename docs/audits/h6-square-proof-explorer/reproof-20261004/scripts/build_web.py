#!/usr/bin/env python3
"""Package handed-off JSON for a deterministic, network-free file:// reader.

This script does not compose or modify any mathematical statement.
"""
import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def read_json(data_dir, filename, default):
    path = data_dir / filename
    return json.loads(path.read_text(encoding="utf-8")) if path.exists() else default


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--data-dir", type=Path, default=ROOT / "data")
    parser.add_argument("--output", type=Path, default=ROOT / "web" / "data.js")
    args = parser.parse_args()
    bundle = {
        "math": read_json(args.data_dir, "math.json", {}),
        "dependencies": read_json(args.data_dir, "dependencies.json", []),
        "checks": read_json(args.data_dir, "checks.json", []),
        "review": read_json(args.data_dir, "review.json", {}),
        "metadata": read_json(args.data_dir, "metadata.json", {}),
    }
    for name in ("dependencies", "checks"):
        if not isinstance(bundle[name], list):
            raise ValueError(f"{name}.json must contain an array")
    for name in ("math", "review", "metadata"):
        if not isinstance(bundle[name], dict):
            raise ValueError(f"{name}.json must contain an object")
    payload = json.dumps(bundle, ensure_ascii=False, indent=2)
    payload = payload.replace("<", "\\u003c").replace("\u2028", "\\u2028").replace("\u2029", "\\u2029")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("// Generated from data/*.json; do not edit.\nwindow.EXPLORER = " + payload + ";\n", encoding="utf-8")
    print(f"Wrote {args.output} ({len(bundle['dependencies'])} dependencies, {len(bundle['checks'])} checks)")


if __name__ == "__main__":
    main()
