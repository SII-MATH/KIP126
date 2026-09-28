#!/usr/bin/env bash
set -euo pipefail

# 项目的 Lean 源码必须在工具链默认 heartbeat 上限内编译。
# 这里只禁止覆盖上限；性能脚本仍可以读取和报告 heartbeat 计数。
root=${1:-.}
declare -a sources=()
declare -a control_files=()

for directory in KIP126 KIPBase; do
  if [[ -d "$root/$directory" ]]; then
    while IFS= read -r -d '' source; do
      sources+=("$source")
    done < <(find "$root/$directory" -type f -name '*.lean' -print0)
  fi
done

for source in KIP126.lean KIPBase.lean lakefile.lean lakefile.toml; do
  if [[ -f "$root/$source" ]]; then
    sources+=("$root/$source")
  fi
done

if [[ ${#sources[@]} -eq 0 ]]; then
  echo "heartbeat 检查失败：没有找到项目 Lean 源码" >&2
  exit 1
fi

if grep -nH 'maxHeartbeats' "${sources[@]}"; then
  echo "heartbeat 检查失败：禁止在项目源码或 Lake 配置中修改 heartbeat 上限" >&2
  echo "请拆分证明、限定化简规则或先固定依赖分支。" >&2
  exit 1
fi

while IFS= read -r -d '' control_file; do
  control_files+=("$control_file")
done < <(find "$root" \
  \( -path "$root/.git" -o -path "$root/.lake" -o -path "$root/migration" \) -prune -o \
  -type f \( -name '*.sh' -o -name '*.py' -o -name '*.yml' -o -name '*.yaml' \) -print0)

heartbeat_name='maxHeartbeats'
command_pattern="-D(${heartbeat_name}|synthInstance\\.${heartbeat_name})(=|[[:space:]])"
if [[ ${#control_files[@]} -gt 0 ]] &&
    grep -nHE -- "$command_pattern" "${control_files[@]}"; then
  echo "heartbeat 检查失败：禁止通过脚本或工作流参数修改 heartbeat 上限" >&2
  exit 1
fi
