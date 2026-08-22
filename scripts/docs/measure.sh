#!/usr/bin/env bash
set -euo pipefail

label=$1
metrics_file=$2
shift 2

mkdir -p "$(dirname "$metrics_file")"
start_ns=$(date +%s%N)
set +e
"$@"
status=$?
set -e
end_ns=$(date +%s%N)
elapsed_ms=$(( (end_ns - start_ns) / 1000000 ))
printf '%s\t%s\t%s\n' "$label" "$elapsed_ms" "$status" >> "$metrics_file"

if [[ -n ${GITHUB_STEP_SUMMARY:-} ]]; then
  printf '| `%s` | %.3f s | %s |\n' "$label" "$(awk "BEGIN { print $elapsed_ms / 1000 }")" "$status" >> "$GITHUB_STEP_SUMMARY"
fi

exit "$status"
