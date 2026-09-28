# Def / Algebra

## 1. 预期

为全部后续模块提供与论文无关的代数底座：`F₂` 系数、分次对象与分次张量、过滤及关联分次、截断、商塔与完备化。它应只依赖 Mathlib 的普通代数/范畴基础，并给 SpectralSequence、Steenrod 和 Adams 模块提供稳定 API。

## 2. 现有

已有 `F2`/`F2ModuleCat`、过滤的 inclusion/transport/associated graded、filtered morphism、bounded/exhaustive/Mittag–Leffler 谓词、quotient filtration、quotient tower 与 completion witness，以及分次张量、lowering、associator 和相应等价。现有 18 个文件约 81 个声明，没有项目 axiom 或可见 `sorry`。其中一些 `Data` 文件仍含命名证明，是文件分层债务，不等于数学错误。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

**约 70%–85%。** 论文当前使用的过滤、商、分次张量骨架基本具备，并已有自然性和复合律。保守扣分来自完整性/完备化接口仍偏定制、后续乘法谱序列可能需要更多分次代数 API，以及尚未用真实下游压力测试全部泛化边界。

## 4. 待做

- 核对 Completion 与 SpectralSequence 中另一套 filtration/completion 结构是否有重复或可证明的桥。
- 补足后续 page pairing、cobar homology、Massey/Toda 所需的分次代数定理，而不是先扩张无消费者的通用库。
- 把 `Filtration/Data` 中纯证明逐步移到 Proofs，保持公开名字和依赖方向。
- 为关键 quotient/graded tensor 等价增加下游型回归，防止重构改变次数约定。

## 5. 建议步骤

1. 从 SpectralSequence、Steenrod、ClassicalAdams 的真实 imports 反推最小公共 API。
2. 对重复 filtration 类型做声明级对照，选择一个权威对象或写明确 adapter。
3. 先补乘法与自然性实际缺口，再处理文件 Data/Proofs 归位。
4. 用无 Main/Interface import 的独立构建目标守住基础层。
