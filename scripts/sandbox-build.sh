#!/usr/bin/env bash
set -euxo pipefail

export TMPDIR="$PWD/.lake/tmp"
test -n "${WATCHDOG_TOOLCHAIN:-}"
test -x "$WATCHDOG_TOOLCHAIN/bin/lean"
export LAKE_OVERRIDE_LEAN=true
export LEAN="$WATCHDOG_TOOLCHAIN/bin/lean"

lake build --iofail
lake env lean --run scripts/Axioms.lean

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

git diff --check
