#!/usr/bin/env bash
set -euxo pipefail

export TMPDIR="$PWD/.lake/tmp"
test -n "${WATCHDOG_TOOLCHAIN:-}"
test -x "$WATCHDOG_TOOLCHAIN/bin/lean"
export LAKE_OVERRIDE_LEAN=true
export LEAN="$WATCHDOG_TOOLCHAIN/bin/lean"

# Development validation checks compilation and repository mechanics only.
# Proof-completion checks are explicitly invoked outside this workflow.
# Older trusted bases embed a standalone Lake configuration inside KIPBase.
# Lake's recursive library glob mistakes that configuration for a source module.
# Compile every actual source explicitly while those bases are still in use;
# the TOML configuration in current checkouts needs no compatibility path.
targets=()
if [[ -f KIPBase/lakefile.lean ]]; then
  shopt -s globstar nullglob
  targets=(+KIP126 +KIPBase)
  for source in KIP126/**/*.lean KIPBase/**/*.lean; do
    [[ "$source" == KIPBase/lakefile.lean ]] && continue
    module=${source%.lean}
    targets+=("+${module//\//.}")
  done
fi
phase=${1:-all}
case "$phase" in
  all|compile) lake build "${targets[@]}" ;;
  checks) lake build --no-build "${targets[@]}" ;;
  *) echo "unknown build phase: $phase" >&2; exit 2 ;;
esac
if [[ "$phase" == compile ]]; then exit 0; fi

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

# LFS clean filters create temporary objects even for a read-only diff. Keep
# those writes inside the existing writable temporary directory, not .git.
git -c lfs.storage="$TMPDIR/git-lfs" diff --check
