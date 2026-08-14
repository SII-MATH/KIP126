#!/usr/bin/env bash
# Trusted offline build body used by pr-build.yml after only KIP126 sources and
# an independently validated forward-only Lake pin move have been overlaid.
set -euxo pipefail

export TMPDIR="$PWD/.lake/tmp"
test -n "${WATCHDOG_TOOLCHAIN:-}"
test -x "$WATCHDOG_TOOLCHAIN/bin/lean"
export LAKE_OVERRIDE_LEAN=true
export LEAN="$WATCHDOG_TOOLCHAIN/bin/lean"

lake build --iofail
lake exe axioms
python3 scripts/check_source_inventory.py --lean-timeout 900
python3 -m unittest discover -s scripts -p 'test_*.py' -v
PYTHONPATH=. python3 scripts/test_status_projection.py
lake build \
  KIP126.Classical.Adams.Regression \
  KIP126.Classical.ExtensionSS.Regression \
  KIP126.Comparison.ClassicalSynthetic.Regression \
  KIP126.Core.SpectralSequence.ConvergenceRegression \
  KIP126.Core.SpectralSequence.SpectralObjectAdapterRegression \
  KIP126.External.ClaimsRegression \
  KIP126.External.ProvenanceRegression \
  KIP126.External.SourceInventoryRegression
git diff --check
