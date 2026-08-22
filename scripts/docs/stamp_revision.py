#!/usr/bin/env python3
import argparse
import html
import json
import re
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=Path)
    parser.add_argument("component")
    parser.add_argument("sha")
    parser.add_argument("repository")
    args = parser.parse_args()

    if re.fullmatch(r"[0-9a-f]{40}", args.sha) is None:
        raise SystemExit(f"invalid commit SHA: {args.sha}")

    commit_url = f"https://github.com/{args.repository}/commit/{args.sha}"
    banner = (
        '<aside class="kip126-revision" style="padding:.55rem 1rem;background:#fff4ce;'
        'color:#24292f;border-bottom:1px solid #d4a72c;font:14px system-ui">'
        f'{html.escape(args.component)} revision: <a href="{html.escape(commit_url)}">'
        f'<code>{args.sha}</code></a></aside>'
    )
    body_pattern = re.compile(r"(<body(?:\s[^>]*)?>)", re.IGNORECASE)
    html_files = list(args.directory.rglob("*.html"))
    if not html_files:
        raise SystemExit(f"no HTML files found under {args.directory}")

    for html_file in html_files:
        source = html_file.read_text(encoding="utf-8")
        stamped, replacements = body_pattern.subn(r"\1" + banner, source, count=1)
        if replacements == 0:
            raise SystemExit(f"no body element found in {html_file}")
        html_file.write_text(stamped, encoding="utf-8")

    revision = {
        "component": args.component,
        "commit": args.sha,
        "commit_url": commit_url,
    }
    (args.directory / "revision.json").write_text(
        json.dumps(revision, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )


if __name__ == "__main__":
    main()
