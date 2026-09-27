#!/usr/bin/env bash
set -euxo pipefail

export TMPDIR="$PWD/.lake/tmp"
test -n "${WATCHDOG_TOOLCHAIN:-}"
test -x "$WATCHDOG_TOOLCHAIN/bin/lean"
export LAKE_OVERRIDE_LEAN=true
export LEAN="$WATCHDOG_TOOLCHAIN/bin/lean"

# Development validation checks compilation and repository mechanics only.
# Proof-completion checks are explicitly invoked outside this workflow.
phase=${1:-all}
case "$phase" in
  all|compile) lake build ;;
  checks) lake build --no-build ;;
  *) echo "unknown build phase: $phase" >&2; exit 2 ;;
esac
if [[ "$phase" == compile ]]; then exit 0; fi

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

git diff --check
