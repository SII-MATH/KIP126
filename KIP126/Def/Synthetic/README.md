# Def / Synthetic

## 1. 预期

定义 H𝔽₂-synthetic category 的项目接口、ν、λ、synthetic spheres、`X/λⁿ` 与 ρ/δ、内部三分次 synthetic Adams 谱序列及其 λ action。具体 Pstrągowski/BHS/rigidity/λ-adic 结果属于 A₀/A(M) Interface 或显式文献输入；Def 只保存共同对象和由结构直接推出的性质。

## 2. 现有

`Context` 定义 synthetic category、λ powers、λ-cofiber quotients、ν functor data（含 ν-sphere 到 synthetic unit 的显式同构）及少量 shift/cofiber triangle 推论；`Sphere` 定义双分次球面和 λ action；`AdamsSequence` 定义 tridegree、页位移、λ page action、固定 weight 页面和若干次数公式。

[Challenge1](../../Challenge1.lean) 已定义参数化的 ν-cofiber 双向判据、BHS full lift 和三角提升接口：短正合包含单射、正合与满射；filtration 绑定实际 Adams 塔；三角提升绑定 ν 的映射，并只在模 λ-torsion 意义下比较任意 full lift。`Context` 提供连接映射落点同构和降低 lift 次数的通用构造。固定模型上的文献证明由 [Challenge2](../../Challenge2.lean) 的 `LiteratureInterface.route.synthetic` 交付，不另设 Main 文献公理。

`SyntheticAdamsSpectralSequence` 已直接改为内部 M；`SyntheticAdamsFamily` 在同一个 synthetic category 上取值，νX 与 λⁿ 商通过实际对象定义，商投影和 λ map 来自同一 functor。标准类不再独立选入该通用对象，weight 保持由次数公式推出。家族的构造、λ action 与实际 deformation map 的重分次识别、convergence 和文献性质仍待完成；没有新增 Mathlib 比较义务。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **对象/次数语言：约 30%–45%。** ν、λ、quotient、tridegree 等词汇已有可用骨架。
- **论文所需 synthetic Adams、rigidity 与 extension 体系：约 10%–25%。** 内部家族类型与对象绑定已定义，但家族尚未构造；normalized lift 的具体命题已定义，固定模型与证明仍待接入；λ-Bockstein、收敛、rigidity、synthetic ESS 和 classical crossing comparison 尚待完成。

## 4. 待做

- 构造已定义的内部 `SyntheticAdamsFamily`，并接入实际 synthetic 模型。
- 精确区分结构数据、由结构可证的定理和文献输入；不要把 ν-cofiber、rigidity 等全部塞进 context 字段。
- 将已定义的 ν-cofiber/lift 接口接到同一个固定模型及其来源证明；KIPBase 的历史声明可供迁移审核，不作为已完成证明。
- 实现 λⁿ quotient 之间的映射、ρ/δ triangles、有限商到未截断对象的完备传递。
- 为 Comparison、ESS 和 Main near-126 提供同一个对象上的 maps、multiplication、detection 和 crossing。

## 5. 建议步骤

1. 审核已定义的内部 synthetic M 家族、对象取值与 page convention。
2. 构造该家族并识别 λ action 与实际 deformation map；不引入 Mathlib 比较义务。
3. 构造 νX、νX/λⁿ、Cν 的具体内部谱序列和诱导映射。
4. 依次接入 rigidity/Bockstein/convergence，再重建 ClassicalSynthetic comparison。
