#!/usr/bin/env bash
# Called from the repository workspace, using only trusted workflow-pinned code.
set -euo pipefail
work="$PWD/work"
venv="$RUNNER_TEMP/blueprint-venv"
export TMPDIR="$RUNNER_TEMP/blueprint-sandbox-tmp"
export PYTHONDONTWRITEBYTECODE=1
export LAKE_NO_CACHE=true
mkdir -p "$TMPDIR" "$work/blueprint/web"
export PATH="$HOME/.local/bin:$HOME/.elan/bin:$venv/bin:$PATH"

common=(--rox /usr --rox /etc --rw /dev/null --rox /dev/zero
  --rox /dev/urandom --rox /dev/random --rox "$work" --rox "$venv"
  --rw "$TMPDIR" --env PATH --env HOME --env TMPDIR --env PYTHONDONTWRITEBYTECODE)
case "${1:-}" in
  render)
    # No .lake write access while rendering: TeX must not be able to poison the
    # configuration later used by the network-enabled trusted cache fetch.
    landrun "${common[@]}" --rw "$work/blueprint" -- \
      bash -euo pipefail -c 'cd work; leanblueprint web; test -s blueprint/web/index.html; test -s blueprint/lean_decls'
    ;;
  declarations)
    landrun "${common[@]}" --rox "$HOME/.elan" --rw "$work/.lake" --env LAKE_NO_CACHE -- \
      bash -euo pipefail -c 'cd work; lake build --no-build; lake exe checkdecls blueprint/lean_decls'
    ;;
  *) echo 'usage: blueprint-sandbox.sh render|declarations' >&2; exit 2 ;;
esac
