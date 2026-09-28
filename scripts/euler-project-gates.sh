#!/usr/bin/env bash
set -euo pipefail

# 项目自有 gate：主分支 CI 和 PR 离线沙箱构建都会执行。
bash scripts/check-no-heartbeat-overrides.sh

