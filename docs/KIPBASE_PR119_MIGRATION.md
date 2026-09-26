# KIPBase → PR #119：本轮迁移记录

本轮来源是旧 checkout 的 `639057b`（`KIPBase/`），目标是 PR #119
分支 `feat/axiom-audit-migration`，迁移前 HEAD 为 `663493d`。
实际工作目录现在是 `/inspire/hdd/global_user/baokangjie-CZXS25250151/KIP126`。
原目录完整备份为同级 `KIP126-backup-before-pr119-20260926`；旧 checkout
位于备份中的 `KIP126-latest`。不应再以旧 IDE 工作目录作为当前项目根目录。
本地依赖只复用该备份中的 `.lake/packages`，未改动依赖版本或共享缓存。

## 采用的接口和实际迁移

以下路径均以 `KIP126/` 为根；没有新增 `import KIPBase`。

| 旧实现 | #119 已有接口 | 本轮处理 |
| --- | --- | --- |
| `E2pageData`、`E2page`、`E2pageCompute`、`E2pageTactic` | `External/Computation/LinE2`、`Def/AdamsE2/LinModel`、`LinCompute`、`LinAutomation` | 已经存在，复用；不重复导入 23 万条关系，不新增乘法表，也不把未证明的 `coordinateCheck_sound` 当作证明 |
| `E2pageBasis.Expression`、严格解码和带次数坐标 | `LinModel.E2At`、`LinBasisTable.BasisIndex`、现有 reducer | 新增 `Def/AdamsE2/LinExpression/{Data,Proofs}`、`LinExpressionValue/Data`；证明解释齐次，解码失败和越界仍报错 |
| `AdamsE2Comparison.evaluate`、`SphereAdamsElements` | `sphereAdamsData`、`linToSphereE2`、`computedH6`、`computedH6Square` | 新增 `Def/ClassicalAdams/ComputationalExpressions/{Data,Predicates,Proofs}`；证明加法、乘法兼容及 h₆、h₆² 与现有类一致 |
| `SphereAdamsDifferentials` | `Def/SpectralSequence/Computation` 的 `RepresentsOnPage` 和 `HasNonzeroDifferential` | 补入普通 `HasDifferential`、第二页代表相等、零代表、零微分、目标次数以及非零微分到普通等式的引理；使用原 `E.d` |
| 六条 `SphereAdamsProofs` 日志输入 | `External/Computation/LinProofs.sphereTable_sound` 和已生成的 86 个分片 | 新增 `LinProofs/Selected/Proofs`，由实际 lookup 证明六条 `DifferentialStatement`；不新增六个公理 |
| `SphereAdamsProofs.generate.py` 的跨文件校验 | #119 的批量导入表及 `Near126.SphereDifferentialFacts` | 新增 `scripts/import-lin-selected.py`：核对五个文件的 SHA-256、schema、生成元/关系/逐次数基、d₂ 列、最终 SS 表双向记录，再匹配现有分片；保存完整 `Selected/records.json` |
| 第七条 basis.d₂ 结果、非零性和论文标签 | `Near126.SphereDifferentialFacts` | 保留来源和现有显式输入；不冒充 `proofs.db` 独立日志，不把非空 E₂ 坐标当成 Eᵣ 非零 |

新增 `DifferentialStatement.hasDifferential` 将数据库结论直接交给上述通用微分
接口。它保留逐次数坐标见证，名称本身不构成与论文表达式的 Lean 等式证明。

## 六条日志与一条独立数据表记录

下表的坐标是 `(s,t): [局部基编号]`，不是 `(stem,s)`；分片及 offset 均从
现有批量表机械定位，Lean 用 `rfl` 检查 lookup。

| Selected 声明 | log.id | r | 源 → 目标 | shard,offset | 最终 SS 行：out / in |
| --- | ---: | ---: | --- | --- | --- |
| `d2_x125_8` | 5990 | 2 | `(8,133):[1] → (10,134):[2,4]` | 3,39 | 2630 / 2690 |
| `d2_h6` | 5541 | 2 | `(1,64):[0] → (3,65):[0]` | 0,69 | 401 / 416 |
| `d3_h4_x109_12` | 153768 | 3 | `(13,137):[2] → (16,139):[0]` | 28,43 | 2917 / 3074 |
| `d3_h0Sq_x123_13_2` | 462481 | 3 | `(15,138):[2] → (18,140):[2]` | 57,55 | 3002 / 3138 |
| `d3_x126_4` | 929469 | 3 | `(4,130):[0] → (7,132):[0]` | 60,80 | 2437 / 2572 |
| `d7_x123_11_combination` | 2671068 | 7 | `(11,134):[0,1,3] → (18,140):[1]` | 85,2 | 2687 / 3139 |

第七条来自 `S0_AdamsSS_t261.db/S0_AdamsE2_basis.id=513`：
`d₂ : (7,70):[2] → (9,71):[0]`，SS 行 513 / 528；没有对应的独立
log 行或 Selected 定理。论文的 `h₀B` 与 CSV 正规形的识别及该条非零微分，
仍由已有 `SphereDifferentialFacts.d2_h0Six_h6` 显式提供。
`d₃(x₁₂₆,₆)` 的两候选约束没有被选成一个精确等式。

论文对应位置重新查看了本仓库 `aimpaper/main.tex` 的 Fact `fact:x1239`
及 Lemma `lem:x1239`、`lem:toda2ext` 的证明（约 2377–2544 行）。其中部分
公式在合成谱序列中带 λ 幂；这里只导出经 S0 数据库核实的经典微分，未据此
证明经典与合成谱序列的比较。`summary.md` 不是导入依据。

## 未照搬的内容及原因

- `StableHomotopy/{Basic,TensorTriangulatedCategory,Cohomology,Adams}` 和
  `Synthetic/*` 的全局公理、旧 `transfer`、旧最终目标没有迁入。
  其中 `HF2_pin_zero : IsEmpty (HomotopyGroup ...)` 与零元素冲突；将这些
  声明改名搬入会污染 #119 的基础。采用 #119 已有的固定模型和基础假设。
- `SpectralSequence/{Basic,FilteredComplex,Convergence,Crossing,Truncation,
  Completion,BoundedExtension,UnboundedExtension,Commutativity}` 的兼容部分
  在 canonical `Def/SpectralSequence` 已有迁移；没有重新导入旧 SSData、
  收敛类型或剩余 `sorry`。
- `multiplicativeSS/{Basic,ModuleCat,Monoidal,Adams,AdamsEnriched,
  AdamsDetection,AdamsMasseyProduct,Moss,MossCrossing,adamsdata/*}` 依赖旧
  乘法谱序列/收敛/Adams 对象，不能作为 #119 固定球谱的实例直接接入。
- `multiplicativeSS/{DGA,MasseyProduct,TodaBracket,CategoricalTodaBracket,
  TriangulatedTodaBracket}` 中仍有有价值的代数证明；未将其称为无用或删除。
  当前 canonical Toda 的锥模型尚未提供它们所需的完整 DGA/Massey/Moss
  比较接口，Blueprint 三个节点仍为 `notready`。完整接入需要新的数学
  桥接，而非本轮重命名复制。此前 `docs/KIPBASE_GAP_INVENTORY.md` 中的
  历史快照计数不代表本轮来源或 #119 当前状态。
- 旧 `all_basis_rows_decode` 的 `native_decide` 全局证书没有复制。本轮
  运行检查覆盖所有 23,822 个基行；`decodeBasisExpression` 显式返回错误，
  没有把运行检查提升成 Lean 基定理，也没有新增默认的基正确性实例。
- 旧兼容包装 `Basic`、`Mathlib`、`Compatibility`、`chanllege` 不作为新入口。
  现有 Challenge/Solution 及最终定理的陈述、完成状态保持不变。

这是对应接口下的有效片段迁移，并不宣称旧目录所有数学工作已完成迁移。

## 信任与验证

新证明没有 `sorry`、`native_decide` 或新公理。表达式齐次性仅使用 Lean
通常的逻辑公理；球谱解释继承 #119 的 `standardFoundation` 和
`linE2Presentation`；六条记录还依赖既有 `sphereTable_sound`。
编译环境检查按这份白名单拒绝 `sorryAx`、额外公理和旧目录导入。
不声称完成整个第一个箭头、数据库证明重放或最后 Kervaire 定理。

定向检查入口：

```sh
lake build KIP126.Checks.AdamsE2.LinExpression KIP126.Checks.ClassicalAdams.LinSelected
python3 scripts/test-import-lin-selected.py
python3 scripts/import-lin-selected.py --proofs-db /path/to/proofs.db \
  --sphere-db /path/to/S0_AdamsSS_t261.db --csv-dir /path/to/kervaire_csv --check
git diff --check
```

第一个 Lean 检查实际执行全部基行的解码/次数/局部编号检查，计算 h₆² 坐标，
拒绝非法表达式和超范围输入，并检查解释定理的公理依赖。第二个核对六条
定理的公理依赖、第二页代表相等、零微分和错误目标次数。
Python 回归拒绝未知值、试探/逆向/非球谱记录、错误校验和以及分片不匹配。

迁移前 #119 的 CI 在 `663493d` 已有失败：严格 `--iofail` 构建包含许多
既有 warning/sorry，scope 也要求人工审核。这些历史状态不能作为新提交
构建通过的证据；本轮局部验证也不替代新 HEAD 的 CI 或主分支合并审核。

本轮实际结果：上述两个 Lean 检查目标通过（含编译环境公理检查及全基行
运行检查）；5 项 Python 回归通过；真实数据库 `--check` 重生成一致；
`git diff --check` 通过。定向构建仅重放了 `StableHomotopy/Context/Data`
的三条既有实例标记警告，新增模块没有 warning。未做无必要的全量构建。
