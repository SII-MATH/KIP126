# PR #110 完整整合记录

## KIP126 下游入口

实际使用全部从 `KIP126/` 进入：`import KIP126.Def.AdamsE2.Lin`，
需要乘法自动化时再 `import KIP126.Tactic.LinE2`。
数据、生成器、商代数、加法基接口、计算器及内部 Adams 比较接口都已迁入
KIP126；不需要导入或运行 KIPBase 文件。旧目录只是历史来源，不是下游入口。

2026-09-24：已将 PR [#110](https://github.com/SII-MATH/KIP126/pull/110)
的头提交 `ff39e95147712fc00cd3f700e0dd1f490d16b863` 真正合入本地开发分支
`feat/axiom-audit-migration`，合并提交为 `dbfa092`。
11 个新增文件保留原路径、原内容；此前未提交的 KIP126 改动没有被覆盖。
没有推送分支、修改远端 main、关闭 PR 或放宽 CI 检查。

核对时 PR 仍为 draft，GitHub `build` 成功，`scope` 与 `warnings` 失败。
本地开发整合不表示满足 main 合并条件。

## 11 个文件的去向

原文件均完整保存在 `KIPBase/`。下表为 KIP126 下游应使用的接口；
KIP126 不直接导入这些旧文件。

| PR 原件（相对 KIPBase/） | KIP126 对应实现 / 处理 |
|---|---|
| `E2pageData.lean` | `External/Computation/LinE2/RawData.lean`，仅替换命名空间 |
| `E2pageData.generate.py` | `External/Computation/LinE2/generate.py`，独立生成 KIP126 数据；`scripts/generate-lin-e2.py` 为检查入口 |
| `E2page.lean` | `Def/AdamsE2/` 下的 `LinModel`、`LinProduct`、`LinClasses`、`LinBasisTable`、`LinComputedPolynomial`；三个关系的计算示例在 `Checks/AdamsE2/LinTactic.lean` |
| `E2pageCompute.lean` | `Def/AdamsE2/LinCompute/Data.lean` |
| `E2pageExamples.lean` | `Checks/AdamsE2/LinCompute.lean` |
| `E2pageTactic.lean` | `LinAutomation/{Data,Proofs}.lean` 与 `Tactic/LinE2.lean`，分离算法、待证定理和元程序 |
| `E2pageTacticExamples.lean` | `Checks/AdamsE2/LinTactic.lean`，保留正反例和信任警告 |
| `E2pageUsage.md` | 原文保留；当前说明为 `docs/LIN_E2_INTERFACES.md` |
| `StableHomotopy/AdamsE2Comparison.lean` | `LinPresentation/{Data,Axiom,Proofs}.lean`，连接固定内部 SSData 页 |
| `StableHomotopy/AdamsE2ComparisonExamples.lean` | `Checks/AdamsE2/LinComparison.lean`，包括范围拒绝测试 |
| `chanllege.lean` | 保留旧拼写和旧命题；canonical 沿用两个无参数最终命题，不再添加第三个目标 |

## 本轮补齐的接口

- `linToSphere_exists_preimage`：范围内每个内部页元素有数据原像。
- `linToSphere_eq_iff`、`linToSphere_ne_zero_iff`：把相等 / 非零问题送回数据商环。
- `linToSphere_product_eq_zero`：零乘积的专用搬运定理。
- `computedH6`、`computedH6_mul_self`：计算目标确实是计算 h₆ 的平方。
- `generatorName`、`multiply`、`generator_mem`、`dataH0`、`dataH1`：PR 的便利接口。
- `interpretComputedPolynomial`：把归约器输出解释为商代数元素。

三个具体关系在 KIP126 中由 `checked_h0_mul_h1`、`checked_h1_mul_h2`、
`checked_h1_cube` 覆盖。这里使用 `e2_mul`，依赖已有计算器正确性占位证明
和原生求值公理；不是将原件的直接 CSV 证明改成了无公理证明。

本轮这些 canonical 数学接口没有增加新的 `axiom` 或 `sorry`。
原有基认证、计算器正确性和主定理的证明债仍在；`e2_mul` 的原生求值公理
也没有因本轮整合被隐藏。

## 两个保留的区别

1. PR 旧版以四个公理提供 F₂ 模结构、乘法、比较及相容性。KIP126 使用已经
   确定的 `linE2Presentation`，以整数线性同构沿用 `ModuleCat ℤ` 页的加法结构，
   不再叠加另一套全局 F₂ 实例。
2. PR 的旧主定理以 `AdamsSS 𝒮 SphereSpectrum` 为对象并带参数。canonical
   版本继续使用固定的 `sphereAdamsData` / `sphereAdams` 及其 h₆²。
   保留旧文件不意味着两个对象已被证明相同，也不替代 tower 比较公理。

## 从原始 CSV 复现

KIP126 的独立生成器验证三份 UTF-16 CSV 的固定 SHA-256、次数、编号及
单项式编码，直接输出 KIP126 命名空间。包装器只调用这个生成器，
默认只检查、不覆盖数据，整个流程无需 KIPBase：

```bash
python3 scripts/generate-lin-e2.py /path/to/kervaire_csv
```

显式指定输出时可以生成新文件用于对比：

```bash
python3 scripts/generate-lin-e2.py /path/to/kervaire_csv --output /tmp/RawData.lean
```

本轮用哈希匹配的三份原始 CSV 完成重生成，结果与 canonical RawData 逐字一致。

## 验证与审计范围

定向检查 `KIP126.Checks.AdamsE2.LinComparison`、`FixedFinal` 和
`ComputationalBoundary`：通用比较引理及 h₆ 平方关系只使用已有的内部对象
及比较公理，不依赖基认证或计算器的 `sorry`；具体的 h₀h₁=0 示例使用
`e2_mul`，仍依赖既有正确性占位证明和原生求值公理。

PR 原始提交的 GitHub `build` 已成功；这不替代 canonical 改写的本地检查，
也不表示 `scope` / `warnings` 通过。此前全库检查在未修改的
`FilteredComplex/Adapter/Proofs.lean:97` 超时，本轮不修改该模块或审计白名单。

历史迁移的 94 个公理 / 12 个 sorry 是原始快照的账目，不包含本 PR 后续新增内容。
本 PR 另带 4 个旧侧显式比较公理、3 个 sorry 声明以及 native 求值生成的公理。
旧迁移检查仍可能据此拒绝新增证明债；本记录披露来源，不将其加入历史允许清单。

本轮实际验证结果：

- 补齐 KIP126 独立生成器后，重生成与现有 `RawData.lean` 的 4,338,751 字节完全一致。
- 补齐三个命名关系示例后，`LinTactic`、`LinComparison`、`ComputationalBoundary`、
  `FixedFinal` 联合定向构建通过；示例仍显式报告既有 sorry 和原生求值信任。
- `LinComparison`、`FixedFinal`、`ComputationalBoundary` 定向编译通过。
- `KIPBase.chanllege` 与 `KIPBase.StableHomotopy.AdamsE2ComparisonExamples` 编译通过。
- CSV 哈希、重生成逐字一致、PR 原件逐字一致检查通过。
- Blueprint 网页生成和 `git diff --check` 通过。
- 全库 `checkdecls` 仍因缺少此前超时的
  `KIP126.Mathlib.SpectralSequence.FilteredComplex.Adapter.Proofs.olean` 而未完成。
- `scripts/kipbase-migration.py` 未通过：它首先报告
  `KIPBase/SpectralSequence/BoundedExtension.lean` 与原始快照的证明债不一致。
  该文件不在 #110 的改动列表，本轮未修改；未更新旧允许清单来绕过它。
- 工作区的收敛模块有并行改动；本轮未将其纳入合并或编辑。
