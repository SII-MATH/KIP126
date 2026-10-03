# 最新 develop 整合记录（2026-10-03）

本次先执行 `git fetch origin develop`，以远程 `4d53d89` 的最新改动为依据，在工作分支 `refactor/stage0-interfaces-20261003` 上整合本地 `054e449`。共同基线为 `4072638`。使用正常 merge 保留双方历史，不覆盖远程提交。

## 冲突处理

- 219 组文献重命名冲突：共享原始制品逐个比较 Git blob 相同。采用远程的 `MainPaper/`、`Source/`，不保留 `references/literature/` 平行目录。本地新增的 BR21、May01、Ravenel 和 IWX 材料移入对应 Source 子目录。全部远程来源文件均保留；修改仅限获取状态、说明和总清单，原论文本身没有重写。
- 67 个内容冲突及删除/迁移冲突：保留用户明确要求的 Def/Interface/Main 职责与目标定义依赖隔离；根 Challenge1/Challenge2 只导出各自唯一见证。同步 AGENTS.md，明确这一用户要求取代旧的根目录定义约定。
- 保留远程将几何文献集中到同一个 Challenge2 见证的改动。`GeometryModel` 的数据语言移到 Def，来源合同在 Interface，Main 仅投影同一见证；低维、HHR、Browder 的根来源分别保留。该参数记录不等于实际 framed-manifold 实现，未把几何来源适配宣称为已证明。
- 沿用远程对旧文献包装的删除；条件性 `HopfCofiberFacts` 保留在 Main/Solution，删除重复的 Interface 定义。来源台账、Blueprint 引用和声明检查同步更新，保留远程的单见证检查以及本地的占位证明依赖排除。
- 原始数值 payload 不变。`selected.json` 仅更新主论文定位路径；用同一 Raw 数据重建检查通过，主论文 TeX/PDF 的摘要与远程完全相同。

## 当前数学状态

此次整合不证明主定理，也不完成 C₂/Cη 接入。已更正此前整体完成的表述：S⁰/Cν 的直接消费接口不能代替源谱、模作用、映射及程序认证路径的完整接口。完整第0步尚未完成；细目见 [计算依赖对照](main-paper-computation-inventory-20261003.md) 与 [接口说明](../STAGE0_INTERFACES.md)。

## 验证

- 101 项 Python 测试通过，1 项因环境没有 Git LFS 而跳过；包含16项架构检查、来源清单及工作流/开发门禁。普通沙箱首次有一项因无法定位 Lean 失败；正常执行环境重跑同组测试通过。
- 第一轮 Lean 构建发现 InputBoundaryAdapters 仍列举一个新依赖闭包不再导入的旧 Challenge1 公理名称；已移除该过时允许项，保持只允许 Main 的 Challenge2 传递公理及已披露的基础/占位依赖。
- 来源文件检查：18来源、91制品；逐字段台账：42来源组、115声明、31文件摘要、3组 CSV 选择。
- 固定数据重建：648次数、963基向量、671记录、651 core rows、73乘积次数对、4 bottom maps、8反证。
- 项目改动 `git diff --check` 通过；原始文献的既有格式不作格式化处理。合并后的当前文档链接已检查。
- 最终 `LEAN_NUM_THREADS=12 lake --no-cache --log-level=error build KIP126` 成功，4286 jobs，exit 0；日志 `/tmp/kip126-integration-final-build.log`。包含几何见证/来源根、最终 Challenge/Solution 类型及证明依赖检查。
- `lake env lean /tmp/KIP126IntegrationSources.lean` 成功：115个来源声明及归属模块检查。
- `python3 -B -m unittest scripts.test_source_inventory_projection -v` 的3项 Lean/JSON 投影测试全部通过。
- 项目固定的 `lake exe checkdecls /tmp/kip126-integration-blueprint-decls` 对1530个 Blueprint 声明检查通过。初始仅导入 KIP126 的临时检查误报3个 KIPBase 历史声明；完整库检查确认它们存在。另一个实际过时的 `Route.A` 引用已移除。
- 提交前再次 fetch，`origin/develop` 仍为 `4d53d89`，与本次 merge 的第二父提交一致。
