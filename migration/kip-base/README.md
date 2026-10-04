# KIPBase 原始迁移档案

本目录记录从 Lean/mathlib 4.28 迁入 KIP126 的原始快照，**不描述当前
`KIPBase/` 的实现状态、证明缺口或开发流程**。活动源码已经继续发展；
原迁移的模块数量、公理和 `sorry` 数量不能作为当前统计。

当前组件入口、构建方式与源码复用范围见 [KIPBase README](../../KIPBase/README.md)。
项目职责和工作规则见根 [README](../../README.md) 与 [AGENTS.md](../../AGENTS.md)。

## 保留的来源材料

原始来源为提交 `bff9a8d1f96a7e450bca3b850020687560449e6d` 及当时未提交的
`Crossing.lean`、`FilteredComplex.lean` 修改，具体文件身份见清单。

| 工件 | 用途 |
| --- | --- |
| `source-manifest.json` | 原始文件、目标位置、字节数与哈希，以及当时的源码状态 |
| `source-4.28.tar.gz` | 当时已跟踪文件的工作树快照，包含上述未提交修改 |
| `original/` | 保存的非 Lean 文献、笔记、Blueprint 与旧配置；不是活动配置 |
| `history.bundle` | 原来源仓库的 Git 历史档案 |
| `trust-ledger.json` | 原始快照的假设与占位清单；不是当前代码的证明状态 |
| `port.patch` | 原迁移适配差异；不是活动源码相对快照的最新差异 |
| [VALIDATION.md](VALIDATION.md) | 2026-09-17 那次迁移的检查记录 |

原迁移还曾记录 Git 忽略的 `local/` 完整备份。该目录不随版本化档案分发，
使用前须确认它实际存在，不能假定每个 checkout 都有。

## 档案完整性检查

在 KIP126 仓库根目录运行：

```bash
python3 scripts/kipbase-migration.py --archive-only
```

此模式核对压缩包与原始清单的文件身份，不要求活动源码保持旧证明状态，
也不证明当前 Lean 声明已完成。当前 `scripts/euler-ci.sh` 使用这一档案检查模式。

脚本默认只检查档案完整性；`--archive-only` 保留为现有 CI 调用的兼容参数。
旧的活动声明/证明债冻结与 `port.patch` 重生成模式已移除。原迁移检查器及
检查记录可从 Git 历史追溯，不要求活动代码保持迁移时的证明状态。

当前源码的构建和必要的编译依赖审计应另行进行。复用 KIPBase 成果时，
核对具体声明的参数、结论及依赖，并遵守 KIP126 的阶段边界；
原始迁移记录不能替代这项核对。
