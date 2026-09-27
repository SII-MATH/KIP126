# Def：共享数学基础

> 评估口径：这里的百分比只是根据当前路线图和已知缺口给出的主观规划估算，不是可验证的完成度统计，也不按文件数或 `sorry` 数量计算。此次工作只迁移目录，不修复数学陈述；issue #132–#135 均保持为公开缺口。

**一级数学领域导航**

- [Algebra](./Algebra/README.md)：系数、分次张量、过滤、截断与完备化。
- [AdamsE2](./AdamsE2/README.md)：Adams E₂/Lin 商代数与确定性检查工具。
- [ClassicalAdams](./ClassicalAdams/README.md)：Adams 塔、页面、微分、配对与标准类。
- [ClassicalESS](./ClassicalESS/README.md)：classical extension spectral sequence 的领域特化。
- [Comparison](./Comparison/README.md)：内部 classical–synthetic 重分次与相容性。
- [Kervaire](./Kervaire/README.md)：near-126 与几何终点所需对象和谓词。
- [SpectralSequence](./SpectralSequence/README.md)：项目内部谱序列 M 的核心。
- [StableHomotopy](./StableHomotopy/README.md)：稳定同伦、H𝔽₂、合作运算与 Toda。
- [Steenrod](./Steenrod/README.md)：Milnor cobar 与 `h₆²` 非边界。
- [Synthetic](./Synthetic/README.md)：ν、λ、synthetic spheres 与三分次 Adams 对象。

## 1. 预期

`KIP126/Def/` 应保存三个阶段共同使用的数学对象 M，以及可以跨项目复用、无需借用 Main 假设的定义、构造和一般定理。它还作为第一个生产阶段，在 `Challenge/Challenge1.lean` 冻结 `Nonempty Challenge1`，并在 `Solution/Challenge1.lean` 构造该见证。Def 不拥有项目 `axiom`，原则上也不应反向依赖 `Interface/` 或 `Main/`。Mathlib 的普通范畴与代数 API 可以直接使用；历史 Mathlib 谱序列适配层可以保留，但不产生“内部谱序列等于 Mathlib 谱序列”的新证明义务。

## 2. 现有

当前 Def 有十个一级数学组件。内部谱序列、过滤复形有限页、Adams 塔与第一微分、Milnor 合作运算和 cobar、Lin 商代数工具、稳定同伦抽象上下文等已有大量可编译实现。基础结构如 `StandardAdamsFoundation`、`MilnorCooperations`、`AdamsSSData` 留在 Def；新增的 Challenge/Solution 共享同一个 `Nonempty KIP126.Challenge1` 陈述，Solution 正文尚未完成。

Def 根入口当前不递归依赖项目 axiom，但 import 方向尚未完全闭合：六条 `Def → Main` 直接边只读取生成数据、provenance、claim catalogue 或要求调用者显式提供证明的 wrapper，并没有把文献命题安装成全局事实；它们仍是需要下沉纯 schema 后消除的结构债务。`ClassicalAdams/Permanence` 还反向使用历史 Mathlib adapter。`LinAutomation/Proofs` 仍有一个可见 `sorry`。这些都必须登记，不能因换目录而宣称数学边界已经完成。

## 3. 粗略完成度

> 本节比例均为主观规划估算，用于表达路线成熟度，不是可验证统计或验收结果。

- **布局与对象覆盖：约 75%–85%。** 十个基础领域已有明确归属，内部谱序列主对象和大量通用构造已经存在，项目公理也已从 Def 移出。
- **达到论文所需的数学闭包：约 45%–60%。** 有限页和 Adams 塔方向进展较深，但内部态射、收敛、乘法与 Leibniz、synthetic 内部化、经典—synthetic coherence 等仍缺关键环节。
- 这个区间的依据是已存在的构造链及明确缺口，不是“Def 只有一个 `sorry`”之类的语法统计。迁出的 axiom 依赖仍是最终验收债务。

## 4. 待做

1. 消除 Def 对 `Main/Axiom` 的六条结构性反向 import：把纯 schema、生成数据类型与 provenance 基础类型下沉到中性层；保留 wrapper 的显式证明参数语义，不把它误记为项目 axiom。
2. 按 issue #138 为每个 M、A₀、A(M)、C(M) 条目建立唯一权威声明和 owner；避免同一概念在 Def、Mathlib adapter 和 Main 各有一套。
3. 单独修复四项已知陈述问题：#132 谱序列态射页映射未绑定底层态射；#133 Leibniz 次数矛盾；#134 Mahowald 缺结构假设；#135 模 2 上同调次数符号不一致。本次迁移不包含这些修复。
4. 继续清理 `Data` 中的命名证明和 `Proofs` 中的对象构造，但以依赖方向和数学归属为准，不为形式整齐制造平行定义。
5. 给 Def 根入口和十个一级组件建立稳定的 import 审计，确保 Def 不经聚合入口重新吸入 Main 或 Interface。

## 5. 建议步骤

1. 先让当前机械迁移在干净检出中全量编译，并生成一次真实 import graph。
2. 添加结构检查：禁止 Def 新增项目 `axiom`，并列出而非掩盖现有 `Def → Main`、`Def → KIP126.Mathlib` 反向边。
3. 先把纯 schema 与固定实例分开，逐条消除上述反向 import；保持公开 declaration namespace 不变。
4. 按 `SpectralSequence → StableHomotopy → ClassicalAdams → Synthetic/Comparison` 的依赖顺序修复 statement 和补基础能力。
5. 完成 `Nonempty Challenge1` 后，用该 theorem 替换 Interface 的同型 axiom，并按依赖锥确认假设已经消除。
