#!/usr/bin/env bash
set -euo pipefail

workflow=$1
artifact=$2
destination=$3
shift 3

mapfile -t run_ids < <(
  gh api --method GET "repos/${GITHUB_REPOSITORY}/actions/workflows/${workflow}/runs" \
    -f branch=main -f status=success -f per_page=20 \
    --jq '.workflow_runs[] | select(.event == "push" or .event == "schedule" or .event == "workflow_dispatch") | .id'
)

for run_id in "${run_ids[@]}"; do
  rm -rf "$destination"
  mkdir -p "$destination"
  if gh run download "$run_id" --repo "$GITHUB_REPOSITORY" --name "$artifact" --dir "$destination"; then
    valid=true
    for required_path in "$@"; do
      if [[ ! -e "$destination/$required_path" ]]; then
        valid=false
        break
      fi
    done
    if [[ $valid == true ]]; then
      echo "Reused $artifact from successful main run $run_id"
      exit 0
    fi
  fi
done

rm -rf "$destination"
echo "No reusable $artifact artifact is available; rebuilding"
exit 1
