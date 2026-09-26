#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C

root=${1:-.}

# This digest versions the trusted machinery behind the `build` status. It is intentionally
# independent of the candidate sources, whose committed tree is covered by ci-build-cache-key.sh.
# Keep the output at 128 bits so input + contract fit in a GitHub status description.
files=(
  .github/workflows/pr-build.yml
  scripts/ci-build-cache-key.sh
  scripts/ci-build-contract.sh
  scripts/sandbox-build.sh
  scripts/Axioms.lean
)

for file in "${files[@]}"; do
  test -f "$root/$file"
done

{
  printf '%s\n' 'kip126-pr-build-contract-v1'
  for file in "${files[@]}"; do
    printf '%s\0' "$file"
    sha256sum "$root/$file" | cut -d' ' -f1
  done
  while IFS= read -r -d '' file; do
    relative=${file#"$root/"}
    printf '%s\0' "$relative"
    sha256sum "$file" | cut -d' ' -f1
  done < <(find "$root/scripts/perf" -type f -print0 | sort -z)
  if [[ -f "$root/scripts/euler-project-gates.sh" ]]; then
    printf '%s\0' 'scripts/euler-project-gates.sh'
    sha256sum "$root/scripts/euler-project-gates.sh" | cut -d' ' -f1
  fi
} | sha256sum | cut -c1-32
