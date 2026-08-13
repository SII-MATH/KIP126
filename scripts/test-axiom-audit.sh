#!/usr/bin/env bash
set -uo pipefail

readonly CASES=(
  positive
  regression_independence
  orphan_axiom
  sorry
  native_decide
  zero_declarations
)

usage() {
  cat <<'EOF'
Usage: bash test-axiom-audit.sh --source-root PATH --module-root NAME [options]

Run the trusted compiled-axiom audit acceptance suite in independent detached
worktrees. Run this only after a clean exact-head `lake build --iofail` and
`lake exe axioms`. The runner reuses the already validated task-local exact-key
package cache and reflinks or copies the validated root build separately into each fixture.

Required:
  --source-root PATH       Project source root relative to the repository
  --module-root NAME       Lean module root audited by scripts/Axioms.lean

Options:
  --audit-source PATH      Trusted audit source (default: scripts/Axioms.lean)
  --audit-exe NAME         Lake audit executable (default: axioms)
  --artifact-root PATH     Empty/nonexistent directory outside the repository
  --timeout-seconds N      Hard timeout for each compile/audit phase (default: 180)
  --max-parallel N         Maximum simultaneous fixtures (default: 2)
EOF
}

utc_now() {
  date -u +%Y-%m-%dT%H:%M:%SZ
}

milliseconds_now() {
  date +%s%3N
}

log_event() {
  local case_name=$1 phase=$2 event=$3 details=${4:-}
  local artifact_root=${EULER_ARTIFACT_ROOT:-${ARTIFACT_ROOT:-}}
  if [[ -z $artifact_root ]]; then
    printf 'artifact root is unavailable while recording an event\n' >&2
    return 1
  fi
  printf '%s\tfixture=%s\tphase=%s\tevent=%s\t%s\n' \
    "$(utc_now)" "$case_name" "$phase" "$event" "$details" \
    >> "$artifact_root/events.log"
}

counter_change() {
  local delta=$1 active maximum
  exec 9>"$EULER_ARTIFACT_ROOT/concurrency.lock"
  flock 9
  active=$(<"$EULER_ARTIFACT_ROOT/concurrency.active")
  maximum=$(<"$EULER_ARTIFACT_ROOT/concurrency.max")
  active=$((active + delta))
  if (( active < 0 )); then
    active=0
  fi
  if (( active > maximum )); then
    maximum=$active
  fi
  printf '%s\n' "$active" > "$EULER_ARTIFACT_ROOT/concurrency.active"
  printf '%s\n' "$maximum" > "$EULER_ARTIFACT_ROOT/concurrency.max"
  flock -u 9
  exec 9>&-
}

write_result() {
  local case_name=$1 case_dir=$2
  {
    printf 'fixture=%s\n' "$case_name"
    printf 'head=%s\n' "$EULER_HEAD"
    printf 'started_at=%s\n' "$CASE_STARTED_AT"
    printf 'ended_at=%s\n' "$(utc_now)"
    printf 'elapsed_ms=%s\n' "$(( $(milliseconds_now) - CASE_STARTED_MS ))"
    printf 'compile_elapsed_ms=%s\n' "$COMPILE_ELAPSED_MS"
    printf 'compile_exit=%s\n' "$COMPILE_EXIT"
    printf 'audit_elapsed_ms=%s\n' "$AUDIT_ELAPSED_MS"
    printf 'audit_exit=%s\n' "$AUDIT_EXIT"
    printf 'audited_count=%s\n' "$AUDITED_COUNT"
    printf 'regression_prints_removed=%s\n' "$REGRESSION_PRINTS_REMOVED"
    printf 'outcome=%s\n' "$OUTCOME"
    printf 'failure_kind=%s\n' "$FAILURE_KIND"
  } > "$case_dir/result.env"
}

case_exit() {
  local rc=$? case_dir="$EULER_ARTIFACT_ROOT/cases/$CASE_NAME"
  counter_change -1
  if [[ $OUTCOME != passed && $FAILURE_KIND == none ]]; then
    FAILURE_KIND="unexpected_exit_$rc"
  fi
  write_result "$CASE_NAME" "$case_dir"
  log_event "$CASE_NAME" fixture end "outcome=$OUTCOME exit=$rc failure=$FAILURE_KIND"
}

run_with_timeout() {
  local log_path=$1
  shift
  timeout --signal=TERM --kill-after=10s "${EULER_TIMEOUT_SECONDS}s" "$@" \
    > "$log_path" 2>&1
}

compile_fixture_module() {
  local worktree=$1 source_path=$2 module_name=$3 output_path
  output_path="$worktree/.lake/build/lib/lean/${module_name//./\/}.olean"
  mkdir -p "$(dirname "$output_path")"
  (
    cd "$worktree" || exit 70
    run_with_timeout "$4" lake env lean -o "$output_path" "$source_path"
  )
}

prepare_case() {
  local case_name=$1 worktree=$2 case_dir=$3 fixture_target count file
  case "$case_name" in
    positive)
      ;;
    regression_independence)
      REGRESSION_PRINTS_REMOVED=0
      mapfile -d '' regression_files < <(
        find "$worktree/$EULER_SOURCE_ROOT" -type f -name '*Regression*.lean' -print0
      )
      for file in "${regression_files[@]}"; do
        count=$(grep -c '#print[[:space:]]\+axioms' "$file" || true)
        REGRESSION_PRINTS_REMOVED=$((REGRESSION_PRINTS_REMOVED + count))
        sed -i '/#print[[:space:]]\+axioms/d' "$file"
      done
      printf 'regression_prints_removed=%s\n' "$REGRESSION_PRINTS_REMOVED" \
        > "$case_dir/preparation.env"
      ;;
    orphan_axiom|sorry|native_decide)
      fixture_target="$worktree/$EULER_SOURCE_ROOT/EulerAuditFixture.lean"
      cp "$EULER_FIXTURE_DIR/$case_name.lean" "$fixture_target"
      ;;
    zero_declarations)
      mkdir -p "$worktree/EulerAuditEmptyRoot"
      cp "$EULER_FIXTURE_DIR/empty_root.lean" "$worktree/EulerAuditEmptyRoot.lean"
      count=$(grep -c '^def auditedRoot : Name :=' "$worktree/$EULER_AUDIT_SOURCE" || true)
      if [[ $count != 1 ]]; then
        printf 'expected exactly one auditedRoot definition, found %s\n' "$count" \
          > "$case_dir/preparation-error.log"
        return 1
      fi
      awk '
        /^def auditedRoot : Name :=/ { print "def auditedRoot : Name := `EulerAuditEmptyRoot"; next }
        { print }
      ' "$worktree/$EULER_AUDIT_SOURCE" > "$case_dir/Axioms.lean"
      cp "$case_dir/Axioms.lean" "$worktree/$EULER_AUDIT_SOURCE"
      ;;
    *)
      printf 'unknown fixture: %s\n' "$case_name" > "$case_dir/preparation-error.log"
      return 1
      ;;
  esac
}

compile_case() {
  local case_name=$1 worktree=$2 case_dir=$3 compile_log="$case_dir/compile.log"
  case "$case_name" in
    positive|regression_independence)
      (
        cd "$worktree" || exit 70
        run_with_timeout "$compile_log" lake build --iofail
      )
      ;;
    orphan_axiom|sorry|native_decide)
      compile_fixture_module "$worktree" \
        "$EULER_SOURCE_ROOT/EulerAuditFixture.lean" \
        "$EULER_MODULE_ROOT.EulerAuditFixture" "$compile_log"
      ;;
    zero_declarations)
      local empty_log="$case_dir/compile-empty-root.log" audit_build_log="$case_dir/compile-audit.log"
      compile_fixture_module "$worktree" EulerAuditEmptyRoot.lean EulerAuditEmptyRoot "$empty_log"
      local first_exit=$?
      if [[ $first_exit != 0 ]]; then
        cp "$empty_log" "$compile_log"
        return "$first_exit"
      fi
      (
        cd "$worktree" || exit 70
        run_with_timeout "$audit_build_log" lake build "$EULER_AUDIT_EXE"
      )
      local second_exit=$?
      {
        printf '%s\n' '== empty root compile =='
        sed -n '1,200p' "$empty_log"
        printf '%s\n' '== audit executable rebuild =='
        sed -n '1,200p' "$audit_build_log"
      } > "$compile_log"
      return "$second_exit"
      ;;
  esac
}

audit_case() {
  local worktree=$1 audit_log=$2
  (
    cd "$worktree" || exit 70
    run_with_timeout "$audit_log" lake exe "$EULER_AUDIT_EXE"
  )
}

extract_evidence() {
  local case_name=$1 audit_log=$2 evidence_path=$3
  case "$case_name" in
    positive|regression_independence)
      grep -E 'axioms: audited [1-9][0-9]* .*declaration.*all within the allowlist' \
        "$audit_log" > "$evidence_path"
      ;;
    orphan_axiom)
      {
        grep -F 'AIM112Orphan.auditBypass' "$audit_log" &&
          grep -F 'AIM112Orphan.reachesAuditBypass' "$audit_log"
      } | sort -u > "$evidence_path"
      ;;
    sorry)
      {
        grep -F 'AIM112Sorry.unsound' "$audit_log" &&
          grep -F 'sorryAx' "$audit_log"
      } | sort -u > "$evidence_path"
      ;;
    native_decide)
      {
        grep -F 'AIM112NativeDecide.unsound' "$audit_log" &&
          grep -E 'native_decide\.[A-Za-z0-9_]+|Lean\.ofReduceBool' "$audit_log"
      } | sort -u > "$evidence_path"
      ;;
    zero_declarations)
      grep -F 'axioms: audited 0 declarations' "$audit_log" > "$evidence_path"
      ;;
  esac
}

run_internal_case() {
  CASE_NAME=$1
  local case_dir="$EULER_ARTIFACT_ROOT/cases/$CASE_NAME"
  local worktree="$EULER_ARTIFACT_ROOT/worktrees/$CASE_NAME"
  local compile_start audit_start evidence_exit expected_audit_exit
  CASE_STARTED_AT=$(utc_now)
  CASE_STARTED_MS=$(milliseconds_now)
  COMPILE_ELAPSED_MS=-1
  COMPILE_EXIT=-1
  AUDIT_ELAPSED_MS=-1
  AUDIT_EXIT=-1
  AUDITED_COUNT=0
  REGRESSION_PRINTS_REMOVED=0
  OUTCOME=failed
  FAILURE_KIND=none
  mkdir -p "$case_dir"
  counter_change 1
  trap case_exit EXIT
  trap 'FAILURE_KIND=terminated_by_signal; exit 130' HUP INT TERM
  log_event "$CASE_NAME" fixture start "head=$EULER_HEAD"

  if [[ $(git -C "$worktree" rev-parse HEAD 2>/dev/null) != "$EULER_HEAD" ]]; then
    FAILURE_KIND=head_mismatch
    return 1
  fi
  if [[ -n $(git -C "$worktree" status --porcelain 2>/dev/null) ]]; then
    FAILURE_KIND=unclean_fixture_before_prepare
    return 1
  fi

  log_event "$CASE_NAME" prepare start
  if ! prepare_case "$CASE_NAME" "$worktree" "$case_dir"; then
    FAILURE_KIND=prepare_failed
    return 1
  fi
  log_event "$CASE_NAME" prepare end "exit=0"

  log_event "$CASE_NAME" compile start "timeout_seconds=$EULER_TIMEOUT_SECONDS"
  compile_start=$(milliseconds_now)
  compile_case "$CASE_NAME" "$worktree" "$case_dir"
  COMPILE_EXIT=$?
  COMPILE_ELAPSED_MS=$(( $(milliseconds_now) - compile_start ))
  log_event "$CASE_NAME" compile end "exit=$COMPILE_EXIT elapsed_ms=$COMPILE_ELAPSED_MS"
  if [[ $COMPILE_EXIT == 124 || $COMPILE_EXIT == 137 ]]; then
    FAILURE_KIND=compile_timeout
    return 1
  fi
  if [[ $COMPILE_EXIT != 0 ]]; then
    FAILURE_KIND=compile_failed_or_crashed
    return 1
  fi

  log_event "$CASE_NAME" audit start "timeout_seconds=$EULER_TIMEOUT_SECONDS"
  audit_start=$(milliseconds_now)
  audit_case "$worktree" "$case_dir/audit.log"
  AUDIT_EXIT=$?
  AUDIT_ELAPSED_MS=$(( $(milliseconds_now) - audit_start ))
  log_event "$CASE_NAME" audit end "exit=$AUDIT_EXIT elapsed_ms=$AUDIT_ELAPSED_MS"
  if [[ $AUDIT_EXIT == 124 || $AUDIT_EXIT == 137 ]]; then
    FAILURE_KIND=audit_timeout
    return 1
  fi

  expected_audit_exit=1
  if [[ $CASE_NAME == positive || $CASE_NAME == regression_independence ]]; then
    expected_audit_exit=0
  fi
  if [[ $AUDIT_EXIT != "$expected_audit_exit" ]]; then
    FAILURE_KIND=unexpected_audit_exit
    return 1
  fi

  extract_evidence "$CASE_NAME" "$case_dir/audit.log" "$case_dir/evidence.log"
  evidence_exit=$?
  if [[ $evidence_exit != 0 || ! -s "$case_dir/evidence.log" ]]; then
    FAILURE_KIND=missing_expected_diagnostic
    return 1
  fi
  if [[ $CASE_NAME == positive || $CASE_NAME == regression_independence ]]; then
    AUDITED_COUNT=$(sed -nE 's/.*audited ([1-9][0-9]*) .*/\1/p' "$case_dir/evidence.log" | head -n 1)
    if [[ -z $AUDITED_COUNT || $AUDITED_COUNT == 0 ]]; then
      FAILURE_KIND=invalid_audited_count
      return 1
    fi
  fi

  OUTCOME=passed
  return 0
}

if [[ ${1:-} == --internal-case ]]; then
  : "${EULER_ARTIFACT_ROOT:?missing internal artifact root}"
  : "${EULER_HEAD:?missing internal head}"
  : "${EULER_REPO:?missing internal repository}"
  : "${EULER_SOURCE_ROOT:?missing internal source root}"
  : "${EULER_MODULE_ROOT:?missing internal module root}"
  : "${EULER_AUDIT_SOURCE:?missing internal audit source}"
  : "${EULER_AUDIT_EXE:?missing internal audit executable}"
  : "${EULER_TIMEOUT_SECONDS:?missing internal timeout}"
  : "${EULER_FIXTURE_DIR:?missing internal fixture directory}"
  run_internal_case "${2:?missing fixture name}"
  exit $?
fi

SOURCE_ROOT=
MODULE_ROOT=
AUDIT_SOURCE=scripts/Axioms.lean
AUDIT_EXE=axioms
ARTIFACT_ROOT=
TIMEOUT_SECONDS=180
MAX_PARALLEL=2

while (( $# > 0 )); do
  case "$1" in
    --source-root) SOURCE_ROOT=${2:-}; shift 2 ;;
    --module-root) MODULE_ROOT=${2:-}; shift 2 ;;
    --audit-source) AUDIT_SOURCE=${2:-}; shift 2 ;;
    --audit-exe) AUDIT_EXE=${2:-}; shift 2 ;;
    --artifact-root) ARTIFACT_ROOT=${2:-}; shift 2 ;;
    --timeout-seconds) TIMEOUT_SECONDS=${2:-}; shift 2 ;;
    --max-parallel) MAX_PARALLEL=${2:-}; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) printf 'unknown argument: %s\n' "$1" >&2; usage >&2; exit 2 ;;
  esac
done

if [[ -z $SOURCE_ROOT || -z $MODULE_ROOT ]]; then
  usage >&2
  exit 2
fi
if [[ $SOURCE_ROOT == /* || $SOURCE_ROOT == *..* || $AUDIT_SOURCE == /* || $AUDIT_SOURCE == *..* ]]; then
  printf 'source and audit paths must be safe repository-relative paths\n' >&2
  exit 2
fi
if [[ ! $MODULE_ROOT =~ ^[A-Za-z_][A-Za-z0-9_]*(\.[A-Za-z_][A-Za-z0-9_]*)*$ ]]; then
  printf 'invalid Lean module root: %s\n' "$MODULE_ROOT" >&2
  exit 2
fi
if [[ ! $TIMEOUT_SECONDS =~ ^[1-9][0-9]*$ || ! $MAX_PARALLEL =~ ^[1-9][0-9]*$ ]]; then
  printf 'timeout and max-parallel must be positive integers\n' >&2
  exit 2
fi

for command_name in git lake timeout flock cp awk grep sed find date xargs realpath mktemp wc head sha256sum cut ln touch sort; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf 'required command not found: %s\n' "$command_name" >&2
    exit 2
  fi
done

REPO=$(git rev-parse --show-toplevel 2>/dev/null) || {
  printf 'run from inside the target git repository\n' >&2
  exit 2
}
REPO=$(realpath "$REPO")
HEAD_SHA=$(git -C "$REPO" rev-parse HEAD)
if [[ -n $(git -C "$REPO" status --porcelain) ]]; then
  printf 'source worktree must be clean before freezing exact head\n' >&2
  exit 2
fi
if [[ ! -d "$REPO/$SOURCE_ROOT" || ! -f "$REPO/$AUDIT_SOURCE" ]]; then
  printf 'source root or audit source is missing\n' >&2
  exit 2
fi
if [[ ! -f "$REPO/lean-toolchain" || ! -f "$REPO/lake-manifest.json" ]]; then
  printf 'lean-toolchain and lake-manifest.json are required for an exact cache key\n' >&2
  exit 2
fi
if [[ ! -d "$REPO/.lake" || ! -x "$REPO/.lake/build/bin/$AUDIT_EXE" ]]; then
  printf 'run exact-head lake build --iofail and lake exe %s before this suite\n' "$AUDIT_EXE" >&2
  exit 2
fi

if [[ -z $ARTIFACT_ROOT ]]; then
  ARTIFACT_ROOT=$(mktemp -d "${RUNNER_TEMP:-${TMPDIR:-/tmp}}/euler-axiom-fixtures.XXXXXXXX")
else
  ARTIFACT_ROOT=$(realpath -m "$ARTIFACT_ROOT")
  if [[ $ARTIFACT_ROOT == "$REPO" || $ARTIFACT_ROOT == "$REPO/"* ]]; then
    printf 'artifact root must be outside the source repository\n' >&2
    exit 2
  fi
  if [[ -e $ARTIFACT_ROOT && -n $(find "$ARTIFACT_ROOT" -mindepth 1 -maxdepth 1 -print -quit) ]]; then
    printf 'artifact root must be empty or nonexistent: %s\n' "$ARTIFACT_ROOT" >&2
    exit 2
  fi
  mkdir -p "$ARTIFACT_ROOT"
fi

SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
FIXTURE_DIR=$(realpath "$(dirname "$SCRIPT_PATH")/../axiom-fixtures")
if [[ ! -d $FIXTURE_DIR ]]; then
  printf 'fixture templates not found beside runner: %s\n' "$FIXTURE_DIR" >&2
  exit 2
fi

mkdir -p "$ARTIFACT_ROOT/cases" "$ARTIFACT_ROOT/worktrees"
printf '0\n' > "$ARTIFACT_ROOT/concurrency.active"
printf '0\n' > "$ARTIFACT_ROOT/concurrency.max"
SUITE_STARTED_AT=$(utc_now)
SUITE_STARTED_MS=$(milliseconds_now)
CACHE_KEY=$(
  (cd "$REPO" && sha256sum lean-toolchain lake-manifest.json) |
    sha256sum | cut -d' ' -f1
)
{
  printf 'started_at=%s\n' "$SUITE_STARTED_AT"
  printf 'repository=%s\n' "$REPO"
  printf 'head=%s\n' "$HEAD_SHA"
  printf 'cache_key=%s\n' "$CACHE_KEY"
  printf 'source_root=%s\n' "$SOURCE_ROOT"
  printf 'module_root=%s\n' "$MODULE_ROOT"
  printf 'audit_source=%s\n' "$AUDIT_SOURCE"
  printf 'audit_exe=%s\n' "$AUDIT_EXE"
  printf 'timeout_seconds=%s\n' "$TIMEOUT_SECONDS"
  printf 'configured_max_parallel=%s\n' "$MAX_PARALLEL"
} > "$ARTIFACT_ROOT/suite.env"
log_event suite setup start "head=$HEAD_SHA cache_key=$CACHE_KEY"

SETUP_FAILED=0
touch "$ARTIFACT_ROOT/cache-use.marker"
for case_name in "${CASES[@]}"; do
  worktree="$ARTIFACT_ROOT/worktrees/$case_name"
  case_dir="$ARTIFACT_ROOT/cases/$case_name"
  mkdir -p "$case_dir"
  if ! git -C "$REPO" worktree add --detach "$worktree" "$HEAD_SHA" \
      > "$case_dir/worktree.log" 2>&1; then
    printf 'fixture=%s\noutcome=failed\nfailure_kind=worktree_setup_failed\n' "$case_name" \
      > "$case_dir/result.env"
    SETUP_FAILED=1
    break
  fi
  mkdir -p "$worktree/.lake"
  if ! cp -a --reflink=auto "$REPO/.lake/build" "$worktree/.lake/build" \
      > "$case_dir/cache-copy.log" 2>&1 ||
      ! cp -a --reflink=auto "$REPO/.lake/config" "$worktree/.lake/config" \
      >> "$case_dir/cache-copy.log" 2>&1 ||
      ! ln -s "$REPO/.lake/packages" "$worktree/.lake/packages"; then
    printf 'fixture=%s\noutcome=failed\nfailure_kind=isolated_build_copy_failed\n' "$case_name" \
      > "$case_dir/result.env"
    SETUP_FAILED=1
    break
  fi
done

if [[ $SETUP_FAILED != 0 ]]; then
  log_event suite setup end "exit=1"
  printf 'suite failed during isolated-worktree setup; artifacts retained at %s\n' "$ARTIFACT_ROOT" >&2
  exit 1
fi
log_event suite setup end "exit=0"

export EULER_ARTIFACT_ROOT="$ARTIFACT_ROOT"
export EULER_HEAD="$HEAD_SHA"
export EULER_REPO="$REPO"
export EULER_SOURCE_ROOT="$SOURCE_ROOT"
export EULER_MODULE_ROOT="$MODULE_ROOT"
export EULER_AUDIT_SOURCE="$AUDIT_SOURCE"
export EULER_AUDIT_EXE="$AUDIT_EXE"
export EULER_TIMEOUT_SECONDS="$TIMEOUT_SECONDS"
export EULER_FIXTURE_DIR="$FIXTURE_DIR"

printf '%s\n' "${CASES[@]}" > "$ARTIFACT_ROOT/cases.list"
printf '%s\n' "${CASES[@]:1}" > "$ARTIFACT_ROOT/parallel-cases.list"
log_event suite fixtures start "positive_first=true configured_max_parallel=$MAX_PARALLEL"
bash "$SCRIPT_PATH" --internal-case positive
POSITIVE_EXIT=$?
xargs -r -n 1 -P "$MAX_PARALLEL" bash "$SCRIPT_PATH" --internal-case \
  < "$ARTIFACT_ROOT/parallel-cases.list"
PARALLEL_EXIT=$?
POOL_EXIT=$PARALLEL_EXIT
if [[ $POSITIVE_EXIT != 0 ]]; then
  POOL_EXIT=1
fi
log_event suite fixtures end "exit=$POOL_EXIT"

SUITE_FAILED=$POOL_EXIT
POSITIVE_COUNT=
REGRESSION_COUNT=
{
  printf 'fixture\toutcome\tcompile_ms\tcompile_exit\taudit_ms\taudit_exit\taudited_count\tfailure_kind\n'
  for case_name in "${CASES[@]}"; do
    result="$ARTIFACT_ROOT/cases/$case_name/result.env"
    if [[ ! -f $result ]]; then
      printf '%s\tmissing\t-1\t-1\t-1\t-1\t0\tmissing_result\n' "$case_name"
      SUITE_FAILED=1
      continue
    fi
    outcome=$(sed -n 's/^outcome=//p' "$result")
    compile_ms=$(sed -n 's/^compile_elapsed_ms=//p' "$result")
    compile_exit=$(sed -n 's/^compile_exit=//p' "$result")
    audit_ms=$(sed -n 's/^audit_elapsed_ms=//p' "$result")
    audit_exit=$(sed -n 's/^audit_exit=//p' "$result")
    audited_count=$(sed -n 's/^audited_count=//p' "$result")
    failure_kind=$(sed -n 's/^failure_kind=//p' "$result")
    printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
      "$case_name" "$outcome" "$compile_ms" "$compile_exit" \
      "$audit_ms" "$audit_exit" "$audited_count" "$failure_kind"
    if [[ $outcome != passed ]]; then
      SUITE_FAILED=1
    fi
    if [[ $case_name == positive ]]; then POSITIVE_COUNT=$audited_count; fi
    if [[ $case_name == regression_independence ]]; then REGRESSION_COUNT=$audited_count; fi
  done
} > "$ARTIFACT_ROOT/summary.tsv"

if [[ -z $POSITIVE_COUNT || $POSITIVE_COUNT != "$REGRESSION_COUNT" ]]; then
  SUITE_FAILED=1
  printf 'positive_count=%s regression_count=%s\n' "$POSITIVE_COUNT" "$REGRESSION_COUNT" \
    > "$ARTIFACT_ROOT/count-mismatch.log"
fi
if [[ $(git -C "$REPO" rev-parse HEAD) != "$HEAD_SHA" || -n $(git -C "$REPO" status --porcelain) ]]; then
  SUITE_FAILED=1
  git -C "$REPO" status --short --branch > "$ARTIFACT_ROOT/source-drift.log"
fi
if find "$REPO/.lake/packages" -newer "$ARTIFACT_ROOT/cache-use.marker" \
    -print -quit | grep -q .; then
  SUITE_FAILED=1
  find "$REPO/.lake/packages" -newer "$ARTIFACT_ROOT/cache-use.marker" \
    -print > "$ARTIFACT_ROOT/cache-mutation.log"
fi

SUITE_ENDED_AT=$(utc_now)
SUITE_ELAPSED_MS=$(( $(milliseconds_now) - SUITE_STARTED_MS ))
OBSERVED_MAX=$(<"$ARTIFACT_ROOT/concurrency.max")
TOTAL_LOG_LINES=$(find "$ARTIFACT_ROOT/cases" -type f -name '*.log' -print0 \
  | xargs -0 -r wc -l | awk 'END { print $1 + 0 }')
{
  printf 'ended_at=%s\n' "$SUITE_ENDED_AT"
  printf 'elapsed_ms=%s\n' "$SUITE_ELAPSED_MS"
  printf 'observed_max_parallel=%s\n' "$OBSERVED_MAX"
  printf 'total_log_lines=%s\n' "$TOTAL_LOG_LINES"
  printf 'positive_audited_count=%s\n' "$POSITIVE_COUNT"
  printf 'regression_audited_count=%s\n' "$REGRESSION_COUNT"
  printf 'exit=%s\n' "$([[ $SUITE_FAILED == 0 ]] && printf 0 || printf 1)"
} >> "$ARTIFACT_ROOT/suite.env"

if [[ $SUITE_FAILED != 0 ]]; then
  printf 'axiom fixture suite failed; artifacts and worktrees retained at %s\n' "$ARTIFACT_ROOT" >&2
  exit 1
fi

for case_name in "${CASES[@]}"; do
  git -C "$REPO" worktree remove --force "$ARTIFACT_ROOT/worktrees/$case_name" \
    >> "$ARTIFACT_ROOT/cleanup.log" 2>&1 || SUITE_FAILED=1
done
git -C "$REPO" worktree prune >> "$ARTIFACT_ROOT/cleanup.log" 2>&1 || SUITE_FAILED=1
if [[ $SUITE_FAILED != 0 ]]; then
  printf 'fixtures passed but cleanup failed; artifacts retained at %s\n' "$ARTIFACT_ROOT" >&2
  exit 1
fi

printf 'axiom fixture suite passed: head=%s elapsed_ms=%s peak_parallel=%s log_lines=%s artifacts=%s\n' \
  "$HEAD_SHA" "$SUITE_ELAPSED_MS" "$OBSERVED_MAX" "$TOTAL_LOG_LINES" "$ARTIFACT_ROOT"
