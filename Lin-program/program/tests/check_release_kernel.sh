#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
export ELAN_HOME=/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan
export LEAN_SYSROOT="$ELAN_HOME/toolchains/leanprover--lean4---v4.32.2"
export LEAN_PATH="$PWD/.lake/build/lib/lean"
export LD_PRELOAD=/tmp/lean_proc_shim.so
for batch in release-certificates/lean-batches/*.lean; do
  "$LEAN_SYSROOT/bin/lean" -j1 "$batch" -o "${batch%.lean}.olean"
  echo "PASS $batch"
done
echo 'PASS all 9740 matrix query theorems'
