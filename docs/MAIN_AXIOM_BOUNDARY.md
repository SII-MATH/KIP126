# Main 输入边界整理

`Main/Axiom/` 只保留阶段输入、显式输入 statement 和来源信息。
同一见证的选择和投影位于 `Main/Solution/StageInput.lean`。目录及其聚合入口
不导入 Main 推导、Interface 生产证明或 Checks，也没有 `Proofs.lean`。

`Main/Axiom/LinProgram` 已清空：参数化解释归 LinProgram，交付规格归根
Challenge2，消费者适配归 Main/Solution。路线文献规格与比较绑定归
根 `Challenge2.lean`。原 `Main/Axiom/Literature/Route.lean` 的单导入
入口及后来的 `Challenge2/Route` 子目录均已删除，现直接导入 `KIP126.Challenge2`。
根 Challenge2 现已把路线 A/C 绑定到 Challenge1 的同一个模型。

Main 只为唯一最终定理保留 Challenge/Solution 配对；所有中间陈述、消费构造和
证明均只放 Main/Solution。Final 的逻辑串接已完成，但所用 Proposition 7.8/7.9
仍为 `sorry`，不表示完整数学证明完成。Def 和 Interface 同样只为完整的 `Nonempty Challenge1`、`Nonempty Challenge2` 保留阶段配对，内部命题只在各自 Solution 维护。

## 2026-10-03：剩余构造与包装迁出

固定 Hopf cofiber、胞腔映射、实际塔及 E₂ 映射位于
`Main/Solution/Literature/HopfCofiber`；Mathlib 球谱对象和非零性证明位于
`Mathlib/ClassicalAdams/StandardSphere`。保留原公开声明名和已有证明，
旧 Main StandardSphere 单导入证明入口已删除，现直接导入
`KIP126.Mathlib.ClassicalAdams.StandardSphere.Proofs`。

Synthetic、Geometry、May 的输入结构保留在 Axiom；catalogue 构造与字段提取
移到 `Main/Solution/Literature`，原真实提取证明保留；中间 Challenge 镜像现已删除。
Bockstein、E∞ 的纯包装也已迁出。Axiom 目录只接受 statement，不能包含
`def`、`abbrev`、`theorem`、`lemma`、`instance` 或 `opaque`。

Selected 的纯来源元数据在 `LinProgram/Generated/Selected/records.json`；
六条条件 lookup 证明仍在 Main。生成器分别检查两个输出位置，元数据字节不变。
本批次的 30 个过时组件 README 已归到实际模块旁，Axiom 下不再维持空的计算目录。

## 前批次的归位结果

| 原内容 | 当前归属 |
| --- | --- |
| 计算输入的基、坐标、微分、长层及 Tower 推论 | `Main/Solution/Computation/LinProgram/` |
| 文献输入的次数推论、near-126 推导和路线适配推论 | `Main/Solution/Literature/` |
| 消费接口示例 | `Main/Examples/LinProgram/` |
| 附录来源表的元数据验证 | `Checks/SourceMetadata/AppendixTable/` |
| 固定 CSV 的 near-126 名称、次数证书与类表达式 | `LinProgram/Interpretation/Near126/` |
| 路线输入使用的类型语言 `DependencyTypes` | `Challenge2.lean` |

该历史批次保留原有公开声明名称，曾为 105 条迁入 Main 的定理补齐同路径
Challenge 声明；其中 104 条 Solution 证明正文不变，平方标签比较改为统一
交付字段的投影。按现行规则，这些重复的中间 Challenge 声明已经移除，
Solution 的陈述和证明保留。只有最终定理继续要求两侧签名一致。

## 平方标签的生产与消费

`Challenge2.SphereSquareInterface.standard_class` 陈述同一 presentation 下
`dataH6Sq` 的像等于独立定义的 `standardH6Square`。

`Interface/Solution/LinProgram/Square.lean` 使用显式传入的 presentation、固定数据的
两元素穷尽性证书和标准 cobar 类的独立非零性，生产该字段。此证明不使用 Main 的
Challenge2 消费公理。Main 的 `computedH6Square_eq_standardH6Square` 只投影该字段，
并继续提供非零存活谓词的改写接口。

这条特定元素等式不替代一般的 cobar cup／表格乘法／实际 Adams 乘法比较。
完整乘法相容性的生产责任仍在 Interface，通用工具在 Def；已有
`Interface/Solution/LinProgram/Multiplication.lean` 和完整 Challenge2 构造中的
`sorry` 保持原状态。没有新增独立公理或 Solution 占位证明。

## 原迁移批次验证（历史记录，不是本轮验证）

- `python -m unittest scripts.test_stage_boundary_layout`：8 项通过，涵盖导入无缺失／无环、
  独立数据管线、输入不依赖证明端、Main 消费不导入 Interface 实现及配对文件存在性。
- `python scripts/test-import-lin-selected.py`：6 项通过。转换器输出已改到 Main/Solution，
  配套 `records.json` 随消费证明迁移，避免再次生成 Main/Axiom 下的证明文件。
- 通过仓库共享缓存包装器编译全部 24 个迁移后的 Main Challenge 模块及其 Solution、
  Main 输入／证明入口、受影响示例和附录验证。
- `Checks.MainAxiomBoundary` 由 Lean 比较全部 105 对声明的完整类型和宇宙参数，
  并确认 Challenge 仍是开放声明；检查通过。
- Interface 的平方 Challenge/Solution、`Checks.ClassicalAdams.StandardFinalBoundary`
  和 `Checks.ClassicalAdams.FixedFinal` 编译通过。
- 最终 Challenge/Solution 的 `h6_sq_permanent.lean` 两个文件正文保持不变。

上述检查是当时的依赖重排与接口验证，不代表原有数学证明债务已消除；当时未运行全仓库构建。中间镜像存在性及成对类型检查现已取消，改为直接检查 Solution，并保留唯一 Final 的类型一致性检查。Selected 元数据后来移至 LinProgram，见上文。

## 前一轮 Main Challenge 清理验证（先于 Def/Interface 同类清理）

- 删除 32 个中间 Challenge 文件、147 条重复声明；只保留最终目标。
  75 个 Main/Solution Lean 文件全部保留，数学陈述和证明正文未变；
  仅 `Route/Selected.lean` 的一行说明同步新规则。Final 两份文件逐字节不变。
- `python -m unittest scripts.test_stage_boundary_layout`：15 项通过，
  包括最终目标唯一入口、导入完整性和 Solution 不依赖 Challenge 占位。
- 经共享缓存包装器定向编译通过：`Main.Challenge`、
  `Checks.ClassicalAdams.StandardFinalBoundary`、`Checks.ClassicalAdams.FixedFinal`、
  `Checks.MainAxiomBoundary`、`Checks.Computation.RouteGoals`、
  `Checks.Interfaces.InputBoundaryAdapters`（模块前缀均为 `KIP126`）。
  最终配对类型一致，保留的中间定理及输入提取检查通过。

现有 Solution 的 `sorry` 和两道阶段存在性假设仍保留；以上是布局与接口验证。
未运行全仓库构建或 CI。
