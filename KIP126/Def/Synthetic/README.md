# Def / Synthetic

## 1. 预期

定义 H𝔽₂-synthetic category 的项目接口、ν、λ、synthetic spheres、`X/λⁿ` 与 ρ/δ、内部三分次 synthetic Adams 谱序列及其 λ action。具体 Pstrągowski/BHS/rigidity/λ-adic 结果属于 A₀/A(M) Interface 或显式文献输入；Def 只保存共同对象和由结构直接推出的性质。

## 2. 现有

`Context` 定义 synthetic category、λ powers、λ-cofiber quotients、ν functor data 及少量 shift/cofiber triangle 推论；`Sphere` 定义双分次球面和 λ action；`AdamsSequence` 定义 tridegree、页位移、λ page action、固定 weight 页面和若干次数公式。

[Challenge1](../../Challenge1.lean) 已定义参数化的 ν-cofiber 双向判据、BHS full lift 和三角提升接口：短正合包含单射、正合与满射；filtration 绑定实际 Adams 塔；三角提升绑定 ν 的映射，并只在模 λ-torsion 意义下比较任意 full lift。`Context` 提供连接映射落点同构和降低 lift 次数的通用构造。[文献输入](../../Main/Axiom/Literature/Synthetic.lean) 将调用者提供的证明绑定到来源；当前尚未选定 synthetic 模型或将此组加入 `Nonempty Challenge1`。

关键架构缺口已经在 issue #138 决定：当前 `SyntheticAdamsSpectralSequence` 仍是 Mathlib `CategoryTheory.SpectralSequence`，必须直接改写为内部 M；项目不通过新增一个 Mathlib↔内部比较义务来绕过。现有 record 还把 sequence、λ action、标准类和 weight-preserving 性质作为给定数据，未从 synthetic 基础构造。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **对象/次数语言：约 30%–45%。** ν、λ、quotient、tridegree 等词汇已有可用骨架。
- **论文所需 synthetic Adams、rigidity 与 extension 体系：约 10%–25%。** 内部 M 尚未建立；normalized lift 的具体命题已定义，固定模型与证明仍待接入；λ-Bockstein、收敛、rigidity、synthetic ESS 和 classical crossing comparison 尚待完成。

## 4. 待做

- 用内部 `SSData/PreSS/SpectralSequence` 重建 synthetic Adams 对象和三分次页面。
- 精确区分结构数据、由结构可证的定理和文献输入；不要把 ν-cofiber、rigidity 等全部塞进 context 字段。
- 将已定义的 ν-cofiber/lift 接口接到同一个固定模型及其来源证明；KIPBase 的历史声明可供迁移审核，不作为已完成证明。
- 实现 λⁿ quotient 之间的映射、ρ/δ triangles、有限商到未截断对象的完备传递。
- 为 Comparison、ESS 和 Main near-126 提供同一个对象上的 maps、multiplication、detection 和 crossing。

## 5. 建议步骤

1. 先冻结内部 synthetic M 的索引、diff degree 和 page convention。
2. 把现有 tridegree/λ 算术迁到该对象；旧 Mathlib 实现只作隔离的历史兼容记录，不为它新增比较或维护义务。
3. 构造 νX、νX/λⁿ、Cν 的具体内部谱序列和诱导映射。
4. 依次接入 rigidity/Bockstein/convergence，再重建 ClassicalSynthetic comparison。
