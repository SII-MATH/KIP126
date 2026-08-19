#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

required_version="$(sed -n 's/^leanblueprint==//p' requirements-blueprint.txt)"
installed_version="$(leanblueprint --version | sed -n 's/^leanblueprint, version //p')"
if [[ "$installed_version" != "$required_version" ]]; then
  echo "Expected leanblueprint $required_version, found ${installed_version:-unknown}." >&2
  echo "Install the pinned renderer with: python3 -m pip install --user -r requirements-blueprint.txt" >&2
  exit 1
fi

manifest=blueprint/lean_decls

manifest_existed=false
if [[ -f "$manifest" ]]; then
  manifest_hash="$(sha256sum "$manifest" | cut -d ' ' -f 1)"
  manifest_existed=true
fi

leanblueprint web

if [[ "$manifest_existed" != true ]]; then
  echo "$manifest was missing and has been regenerated; add it to the repository." >&2
  exit 1
fi

generated_hash="$(sha256sum "$manifest" | cut -d ' ' -f 1)"
if [[ "$manifest_hash" != "$generated_hash" ]]; then
  git diff -- "$manifest" || true
  echo "$manifest was stale and has been regenerated; review and commit the diff." >&2
  exit 1
fi

leanblueprint checkdecls
