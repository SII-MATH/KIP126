#!/usr/bin/env bash
set -euo pipefail

readonly SHARED_REPO=/inspire/hdd/global_user/czxs25250150/KIP126
readonly CACHE_ROOT="$SHARED_REPO/.lake/shared-main-cache"
readonly DAEMON_ROOT="$SHARED_REPO/.lake/shared-main-cache-daemon"
readonly DAEMON_SCRIPT="$DAEMON_ROOT/shared-main-cache.sh"
readonly PID_FILE="$DAEMON_ROOT/daemon.pid"
readonly LOG_FILE="$DAEMON_ROOT/daemon.log"
readonly LOCK_FILE="$DAEMON_ROOT/refresh.lock"
readonly DEFAULT_INTERVAL=300

usage() {
  cat <<'EOF'
Usage:
  shared-main-cache.sh run <command> [args...]
  shared-main-cache.sh refresh
  shared-main-cache.sh start [poll-seconds]
  shared-main-cache.sh stop
  shared-main-cache.sh status

`run` is the Agent entry point. It restores Mathlib from the official cache,
then runs the command against an immutable, read-only KIP126 main cache.

The remaining commands manage the single-daemon cache publisher. Only the
publisher writes below /inspire/hdd/global_user/czxs25250150/KIP126/.lake.
EOF
}

fail() {
  echo "shared-main-cache: $*" >&2
  exit 1
}

require_workspace() {
  [[ -f lakefile.lean && -f lean-toolchain && -f lake-manifest.json ]] ||
    fail "run this command from a KIP126 checkout"
}

sanitize_component() {
  printf '%s' "$1" | tr -c 'A-Za-z0-9._-' '_'
}

platform_key() {
  local os arch
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  arch=$(uname -m)
  printf '%s-%s\n' "$(sanitize_component "$os")" "$(sanitize_component "$arch")"
}

toolchain_key() {
  local repo=$1 toolchain
  toolchain=$(tr -d '\r\n' < "$repo/lean-toolchain")
  [[ -n "$toolchain" ]] || fail "$repo/lean-toolchain is empty"
  sanitize_component "$toolchain"
}

cache_family() {
  local repo=$1
  printf '%s/%s/%s\n' "$CACHE_ROOT" "$(platform_key)" "$(toolchain_key "$repo")"
}

metadata_value() {
  local file=$1 key=$2
  sed -n "s/^${key}=//p" "$file" | head -n 1
}

resolve_current_cache() {
  local repo=$1 family current resolved metadata expected_platform expected_toolchain
  family=$(cache_family "$repo")
  current="$family/current"
  [[ -L "$current" ]] ||
    fail "no published KIP126 main cache for $(platform_key) / $(toolchain_key "$repo"); ask the cache daemon owner to run '$0 refresh'"
  resolved=$(readlink -f -- "$current")
  [[ "$resolved" == "$family/generations/"* && -d "$resolved" ]] ||
    fail "published cache pointer escapes its generation directory: $current"
  metadata="$resolved/metadata"
  [[ -r "$metadata" ]] || fail "published cache metadata is missing: $metadata"
  [[ "$(metadata_value "$metadata" schema)" == kip126-shared-main-cache-v1 ]] ||
    fail "unsupported cache metadata in $metadata"
  expected_platform=$(platform_key)
  expected_toolchain=$(tr -d '\r\n' < "$repo/lean-toolchain")
  [[ "$(metadata_value "$metadata" platform)" == "$expected_platform" ]] ||
    fail "published cache platform does not match this host"
  [[ "$(metadata_value "$metadata" toolchain)" == "$expected_toolchain" ]] ||
    fail "published cache toolchain does not match this checkout"
  printf '%s\n' "$resolved"
}

restore_mathlib_cache() {
  local attempt package quarantine
  for attempt in 1 2 3; do
    if env \
      -u LAKE_ARTIFACT_CACHE \
      -u LAKE_CACHE_ARTIFACT_ENDPOINT \
      -u LAKE_CACHE_DIR \
      -u LAKE_CACHE_KEY \
      -u LAKE_CACHE_REVISION_ENDPOINT \
      -u LAKE_CACHE_SERVICE \
      -u LAKE_CONFIG \
      -u LAKE_NO_CACHE \
      -u LAKE_RESTORE_ARTIFACTS \
      lake exe cache get
    then
      return 0
    fi
    [[ "$attempt" != 3 ]] || break

    mkdir -p .lake/incomplete-packages
    for package in .lake/packages/*; do
      [[ -d "$package/.git" ]] || continue
      git -C "$package" rev-parse --verify HEAD >/dev/null 2>&1 && continue
      quarantine=".lake/incomplete-packages/$(basename "$package").$(date -u +%Y%m%dT%H%M%SZ).$$.$attempt"
      echo "shared-main-cache: quarantining incomplete dependency checkout $package" >&2
      mv "$package" "$quarantine"
    done
    echo "shared-main-cache: Mathlib cache attempt $attempt failed; retrying in 5s" >&2
    sleep 5
  done
  fail "could not restore Mathlib's official cache after 3 attempts"
}

run_with_cache() {
  [[ $# -gt 0 ]] || fail "run requires a command"
  require_workspace

  local cache
  cache=$(resolve_current_cache "$PWD")
  restore_mathlib_cache
  echo "shared-main-cache: using $cache" >&2

  exec env \
    -u LAKE_ARTIFACT_CACHE \
    -u LAKE_CACHE_ARTIFACT_ENDPOINT \
    -u LAKE_CACHE_KEY \
    -u LAKE_CACHE_REVISION_ENDPOINT \
    -u LAKE_CACHE_SERVICE \
    -u LAKE_CONFIG \
    -u LAKE_NO_CACHE \
    LAKE_CACHE_DIR="$cache" \
    LAKE_RESTORE_ARTIFACTS=true \
    "$@"
}

require_clean_main() {
  local branch
  branch=$(git symbolic-ref --quiet --short HEAD) ||
    fail "$SHARED_REPO must be on the main branch"
  [[ "$branch" == main ]] || fail "$SHARED_REPO is on '$branch', not main"
  git diff --quiet && git diff --cached --quiet ||
    fail "$SHARED_REPO has tracked changes; refusing to update it"
  [[ -z "$(git status --porcelain --untracked-files=normal)" ]] ||
    fail "$SHARED_REPO has untracked files; refusing to update it"
}

fetch_main() {
  local attempt
  for attempt in 1 2 3; do
    if git fetch --prune origin main; then
      return 0
    fi
    if [[ "$attempt" != 3 ]]; then
      echo "shared-main-cache: fetch attempt $attempt failed; retrying in 5s" >&2
      sleep 5
    fi
  done
  fail "could not fetch origin/main after 3 attempts"
}

publish_generation() {
  local family=$1 digest=$2 revision=$3 toolchain=$4 temporary=$5
  local generation="$family/generations/$digest"
  local staged="$temporary/staged"
  local built_cache="$temporary/build-cache"
  local published_cache="$temporary/published-cache"
  local outputs="$temporary/outputs.jsonl"

  mkdir -p "$built_cache" "$published_cache" "$family/generations"
  env \
    -u LAKE_CACHE_ARTIFACT_ENDPOINT \
    -u LAKE_CACHE_KEY \
    -u LAKE_CACHE_REVISION_ENDPOINT \
    -u LAKE_CACHE_SERVICE \
    -u LAKE_CONFIG \
    -u LAKE_NO_CACHE \
    LAKE_ARTIFACT_CACHE=true \
    LAKE_CACHE_DIR="$built_cache" \
    LAKE_RESTORE_ARTIFACTS=true \
    lake build -o "$outputs"
  [[ -s "$outputs" ]] || fail "Lake produced no root-package cache mappings"
  env LAKE_CACHE_DIR="$built_cache" lake cache stage "$outputs" "$staged"
  env LAKE_CACHE_DIR="$published_cache" lake cache unstage "$staged"

  cat > "$published_cache/metadata" <<EOF
schema=kip126-shared-main-cache-v1
digest=$digest
revision=$revision
toolchain=$toolchain
platform=$(platform_key)
published_at=$(date -u +%Y-%m-%dT%H:%M:%SZ)
EOF
  chmod -R a-w "$published_cache"

  if [[ -e "$generation" ]]; then
    [[ -r "$generation/metadata" ]] || fail "existing generation is incomplete: $generation"
    [[ "$(metadata_value "$generation/metadata" digest)" == "$digest" ]] ||
      fail "existing generation has unexpected metadata: $generation"
  else
    mv "$published_cache" "$generation"
  fi

  ln -s "generations/$digest" "$family/current.new.$$"
  mv -Tf "$family/current.new.$$" "$family/current"
  echo "shared-main-cache: published $revision ($digest) at $generation"
}

sync_daemon_script() {
  local source="$SHARED_REPO/scripts/shared-main-cache.sh"
  [[ -r "$source" ]] || return 0
  cmp -s "$source" "$DAEMON_SCRIPT" && return 0
  bash -n "$source" || fail "refusing to install an invalid daemon script from main"
  install -m 0755 "$source" "$DAEMON_SCRIPT.new.$$"
  mv -f "$DAEMON_SCRIPT.new.$$" "$DAEMON_SCRIPT"
}

refresh_cache() (
  mkdir -p "$DAEMON_ROOT"
  exec 9> "$LOCK_FILE"
  flock 9

  cd "$SHARED_REPO"
  require_workspace
  require_clean_main
  fetch_main
  git merge --ff-only origin/main
  require_clean_main
  sync_daemon_script

  local digest revision toolchain family current metadata temporary
  digest=$(bash scripts/ci-build-cache-key.sh . HEAD)
  revision=$(git rev-parse HEAD)
  toolchain=$(tr -d '\r\n' < lean-toolchain)
  family=$(cache_family "$SHARED_REPO")
  current="$family/current"
  if [[ -L "$current" ]]; then
    metadata="$(readlink -f -- "$current")/metadata"
    if [[ -r "$metadata" && "$(metadata_value "$metadata" digest)" == "$digest" ]]; then
      echo "shared-main-cache: current Lean inputs already published ($digest)"
      return 0
    fi
  fi

  temporary=$(mktemp -d "$DAEMON_ROOT/refresh.XXXXXX")
  trap 'chmod -R u+w "$temporary" 2>/dev/null || true; rm -rf "$temporary"' EXIT
  restore_mathlib_cache
  publish_generation "$family" "$digest" "$revision" "$toolchain" "$temporary"
)

daemon_pid() {
  [[ -r "$PID_FILE" ]] || return 1
  local pid command_line
  pid=$(cat "$PID_FILE")
  [[ "$pid" =~ ^[0-9]+$ ]] || return 1
  kill -0 "$pid" 2>/dev/null || return 1
  command_line=$(tr '\0' ' ' < "/proc/$pid/cmdline" 2>/dev/null) || return 1
  [[ "$command_line" == *"$DAEMON_SCRIPT"* && "$command_line" == *"watch-loop"* ]] || return 1
  printf '%s\n' "$pid"
}

daemon_status() {
  local pid family current metadata
  if pid=$(daemon_pid); then
    echo "shared-main-cache daemon is running (pid $pid)"
  else
    echo "shared-main-cache daemon is stopped"
  fi

  if [[ -f "$SHARED_REPO/lean-toolchain" ]]; then
    family=$(cache_family "$SHARED_REPO")
    current="$family/current"
    if [[ -L "$current" ]]; then
      metadata="$(readlink -f -- "$current")/metadata"
      if [[ -r "$metadata" ]]; then
        cat "$metadata"
      fi
    fi
  fi
  echo "log=$LOG_FILE"
}

watch_loop() {
  local interval=$1
  trap 'exit 0' INT TERM
  while true; do
    if ! "$DAEMON_SCRIPT" refresh; then
      echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) refresh failed; retrying in ${interval}s" >&2
    fi
    sleep "$interval" &
    wait $! || exit 0
  done
}

start_daemon() {
  local interval=${1:-$DEFAULT_INTERVAL} source pid
  [[ "$interval" =~ ^[1-9][0-9]*$ ]] || fail "poll interval must be a positive integer"
  if pid=$(daemon_pid); then
    echo "shared-main-cache daemon is already running (pid $pid)"
    return 0
  fi

  refresh_cache
  mkdir -p "$DAEMON_ROOT"
  source=$(readlink -f -- "$0")
  if [[ "$source" != "$DAEMON_SCRIPT" ]]; then
    install -m 0755 "$source" "$DAEMON_SCRIPT.new.$$"
    mv -f "$DAEMON_SCRIPT.new.$$" "$DAEMON_SCRIPT"
  fi
  nohup setsid "$DAEMON_SCRIPT" watch-loop "$interval" >> "$LOG_FILE" 2>&1 < /dev/null &
  pid=$!
  printf '%s\n' "$pid" > "$PID_FILE"
  sleep 1
  kill -0 "$pid" 2>/dev/null || fail "daemon exited during startup; see $LOG_FILE"
  daemon_status
}

stop_daemon() {
  local pid
  if ! pid=$(daemon_pid); then
    rm -f "$PID_FILE"
    echo "shared-main-cache daemon is already stopped"
    return 0
  fi
  kill -- "-$pid"
  for _ in $(seq 1 50); do
    kill -0 "$pid" 2>/dev/null || break
    sleep 0.1
  done
  kill -0 "$pid" 2>/dev/null && fail "daemon $pid did not stop"
  rm -f "$PID_FILE"
  echo "shared-main-cache daemon stopped"
}

command=${1:-}
case "$command" in
  run)
    shift
    run_with_cache "$@"
    ;;
  refresh)
    [[ $# -eq 1 ]] || fail "refresh takes no arguments"
    refresh_cache
    ;;
  start)
    [[ $# -le 2 ]] || fail "start accepts at most one poll interval"
    start_daemon "${2:-$DEFAULT_INTERVAL}"
    ;;
  stop)
    [[ $# -eq 1 ]] || fail "stop takes no arguments"
    stop_daemon
    ;;
  status)
    [[ $# -eq 1 ]] || fail "status takes no arguments"
    daemon_status
    ;;
  watch-loop)
    [[ $# -eq 2 ]] || fail "watch-loop requires a poll interval"
    watch_loop "$2"
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac
