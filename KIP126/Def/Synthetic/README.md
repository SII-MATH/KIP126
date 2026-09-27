# Def / Synthetic

## 1. 预期

定义 H𝔽₂-synthetic category 的项目接口、ν、λ、synthetic spheres、`X/λⁿ` 与 ρ/δ、内部三分次 synthetic Adams 谱序列及其 λ action。具体 Pstrągowski/BHS/rigidity/λ-adic 结果属于 A₀/A(M) Interface 或显式文献输入；Def 只保存共同对象和由结构直接推出的性质。

## 2. 现有

目前只有四个文件。`Context` 定义 synthetic category、λ powers、λ-cofiber quotients、ν functor data 及少量 shift/cofiber triangle 推论；`Sphere` 定义双分次球面和 λ action；`AdamsSequence` 定义 tridegree、页位移、λ page action、固定 weight 页面和若干次数公式。

关键架构缺口已经在 issue #138 决定：当前 `SyntheticAdamsSpectralSequence` 仍是 Mathlib `CategoryTheory.SpectralSequence`，必须直接改写为内部 M；项目不通过新增一个 Mathlib↔内部比较义务来绕过。现有 record 还把 sequence、λ action、标准类和 weight-preserving 性质作为给定数据，未从 synthetic 基础构造。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **对象/次数语言：约 30%–45%。** ν、λ、quotient、tridegree 等词汇已有可用骨架。
- **论文所需 synthetic Adams、rigidity 与 extension 体系：约 10%–25%。** 内部 M 尚未建立，λ-Bockstein、收敛、rigidity、normalized lift、synthetic ESS 和 classical crossing comparison 基本开放。

## 4. 待做

- 用内部 `SSData/PreSS/SpectralSequence` 重建 synthetic Adams 对象和三分次页面。
- 精确区分结构数据、由结构可证的定理和文献输入；不要把 ν-cofiber、rigidity 等全部塞进 context 字段。
- 实现 λⁿ quotient 之间的映射、ρ/δ triangles、有限商到未截断对象的完备传递。
- 为 Comparison、ESS 和 Main near-126 提供同一个对象上的 maps、multiplication、detection 和 crossing。

## 5. 建议步骤

1. 先冻结内部 synthetic M 的索引、diff degree 和 page convention。
2. 把现有 tridegree/λ 算术迁到该对象；旧 Mathlib 实现只作隔离的历史兼容记录，不为它新增比较或维护义务。
3. 构造 νX、νX/λⁿ、Cν 的具体内部谱序列和诱导映射。
4. 依次接入 rigidity/Bockstein/convergence，再重建 ClassicalSynthetic comparison。
