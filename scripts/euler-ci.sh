#!/usr/bin/env bash
set -euo pipefail

# Ordinary development compilation: warnings and unfinished proofs are not gates.
# scripts/Axioms.lean remains available for an explicitly requested completion check.
lake build KIP126

# Verify the historical source archive and compile compatibility code.
# Proof-dependency audits remain explicitly invoked completion tools.
lake build KIPBase
python3 scripts/kipbase-migration.py --archive-only
python3 -m unittest scripts.test_kipbase_migration scripts.test_workflow_routing

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

PYTHONPATH=. python3 scripts/perf/test_perf.py -v
PYTHONPATH=scripts python3 -m unittest scripts.pr_status.test_pr_status -v
python3 -m py_compile scripts/perf/*.py scripts/profile/*.py scripts/pr_status/*.py
git diff --check
