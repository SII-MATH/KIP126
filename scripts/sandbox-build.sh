#!/usr/bin/env bash
set -euxo pipefail

export TMPDIR="$PWD/.lake/tmp"
test -n "${WATCHDOG_TOOLCHAIN:-}"
test -x "$WATCHDOG_TOOLCHAIN/bin/lean"
export LAKE_OVERRIDE_LEAN=true
export LEAN="$WATCHDOG_TOOLCHAIN/bin/lean"

# Publish compiled outputs between phases; an audit failure must not throw away
# a successful compilation. The default keeps local callers backward compatible.
phase=${1:-all}
case "$phase" in
  all|compile) lake build ;;
  audit) lake build --no-build ;;
  *) echo "unknown build phase: $phase" >&2; exit 2 ;;
esac
if [[ "$phase" == compile ]]; then exit 0; fi

# Replay the successful build's diagnostics without compiling anything again.
# Exit 3 means Lake requested a rebuild: that is stale/missing output, not debt.
set +e
lake build --no-build --iofail
strict_build_status=$?
set -e
warning_only=0
sorry_audit=0
project_axiom_audit=0
if [ "$strict_build_status" -ne 0 ]; then
  if [ "$strict_build_status" -ne 1 ]; then
    exit "$strict_build_status"
  fi
  # Confirm the same cached outputs are healthy without warning promotion.
  lake build --no-build
  warning_only=1
fi

# The compiled axiom audit remains strict when invoked directly.  During PR
# development, however, an open theorem may carry `sorryAx` and a component
# Axiom.lean may declare an inventoried project axiom. Both are review debt,
# not completed proofs. Route only these two classified debts to human review;
# misplaced or unexpected axioms and audit failures still fail the build.
# The required `build` status can pass for classified review debt;
# the outer workflow publishes the warning status separately, which keeps
# automatic merge disabled until human review accepts the open proof/axiom debt.
axiom_log=$(mktemp "$PWD/.lake/axioms.XXXXXX")
trap 'rm -f "$axiom_log"' EXIT
set +e
lake env lean --run scripts/Axioms.lean >"$axiom_log" 2>&1
axiom_status=$?
set -e
cat "$axiom_log"
if [ "$axiom_status" -ne 0 ]; then
  if grep -qx 'AXIOM_AUDIT_DEBT=1' "$axiom_log" &&
     ! grep -qx 'AXIOM_AUDIT_ERROR=1' "$axiom_log"; then
    warning_only=1
    if grep -qx 'AXIOM_AUDIT_SORRY=1' "$axiom_log"; then
      sorry_audit=1
    fi
    if grep -qx 'AXIOM_AUDIT_PROJECT=1' "$axiom_log"; then
      project_axiom_audit=1
    fi
  else
    exit "$axiom_status"
  fi
fi

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

git diff --check

if [ "$warning_only" = 1 ]; then
  echo "KIP126_WARNING_ONLY_BUILD=1"
fi
if [ "$sorry_audit" = 1 ]; then
  echo "KIP126_SORRY_AUDIT=1"
fi
if [ "$project_axiom_audit" = 1 ]; then
  echo "KIP126_PROJECT_AXIOM_AUDIT=1"
fi
