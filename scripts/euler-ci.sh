#!/usr/bin/env bash
set -euo pipefail

lake build --iofail
lake env lean --run scripts/Axioms.lean

if [[ -x scripts/euler-project-gates.sh ]]; then
  bash scripts/euler-project-gates.sh
fi

PYTHONPATH=. python3 scripts/perf/test_perf.py -v
PYTHONPATH=scripts python3 -m unittest scripts.pr_status.test_pr_status -v
python3 -m py_compile scripts/perf/*.py scripts/profile/*.py scripts/pr_status/*.py
git diff --check
