#!/usr/bin/env python3
import argparse
import html
import json
import re
import shutil
from pathlib import Path


def load_revision(component: Path) -> dict[str, str]:
    revision_path = component / "revision.json"
    revision = json.loads(revision_path.read_text(encoding="utf-8"))
    if re.fullmatch(r"[0-9a-f]{40}", revision.get("commit", "")) is None:
        raise SystemExit(f"invalid revision in {revision_path}")
    return revision


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--blueprint", required=True, type=Path)
    parser.add_argument("--docs", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--sha", required=True)
    parser.add_argument("--repository", required=True)
    args = parser.parse_args()

    if re.fullmatch(r"[0-9a-f]{40}", args.sha) is None:
        raise SystemExit(f"invalid deployment SHA: {args.sha}")

    blueprint_revision = load_revision(args.blueprint)
    docs_revision = load_revision(args.docs)
    if args.output.exists():
        shutil.rmtree(args.output)
    shutil.copytree(args.blueprint, args.output / "blueprint")
    shutil.copytree(args.docs, args.output / "docs")

    commit_url = f"https://github.com/{args.repository}/commit/{args.sha}"
    page = f"""<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>KIP126 formalization</title>
  <style>
    body {{ margin: 4rem auto; max-width: 52rem; padding: 0 1.25rem; font: 18px/1.55 system-ui; color: #24292f; }}
    li {{ margin: 1rem 0; }} code {{ overflow-wrap: anywhere; }}
  </style>
</head>
<body>
  <h1>KIP126 formalization</h1>
  <p>Deployment commit: <a href="{html.escape(commit_url)}"><code>{args.sha}</code></a></p>
  <ul>
    <li><a href="blueprint/">Lean Blueprint</a> — <code>{blueprint_revision['commit']}</code></li>
    <li><a href="docs/">Lean API documentation</a> — <code>{docs_revision['commit']}</code></li>
  </ul>
</body>
</html>
"""
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "index.html").write_text(page, encoding="utf-8")
    (args.output / ".nojekyll").write_text("", encoding="utf-8")


if __name__ == "__main__":
    main()
