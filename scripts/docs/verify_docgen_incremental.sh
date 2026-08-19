#!/usr/bin/env bash
set -euo pipefail

metrics_file=$1
state_dir=docbuild/.lake/build/doc-data
before=$(mktemp)
after=$(mktemp)
trap 'rm -f "$before" "$after"' EXIT

find "$state_dir" -type f -printf '%P\t%T@\n' | sort > "$before"
bash scripts/docs/measure.sh doc-gen4-hot "$metrics_file" \
  bash -c 'cd docbuild && lake build KIP126:docs'
find "$state_dir" -type f -printf '%P\t%T@\n' | sort > "$after"

if ! cmp -s "$before" "$after"; then
  diff -u "$before" "$after" || true
  echo "doc-gen4 rewrote tracked doc-data during an unchanged warm build" >&2
  exit 1
fi
