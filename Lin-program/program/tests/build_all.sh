#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
python3 tests/track_certificate_inputs.py --check
export ELAN_HOME=/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan
export LEAN_SYSROOT="$ELAN_HOME/toolchains/leanprover--lean4---v4.32.2"
export LAKE_HOME="$LEAN_SYSROOT"
export LD_PRELOAD=/tmp/lean_proc_shim.so
"$ELAN_HOME/bin/lake" build
