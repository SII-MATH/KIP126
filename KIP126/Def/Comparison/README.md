# Def / Comparison

## 1. 预期

建立同一个内部 M 上 classical Adams、synthetic Adams 与 λ-quotient 谱序列之间的重分次、页面、微分、乘法、检测和截断相容性。它对应 issue #138 的 AM10；这里不承担内部 M 与 Mathlib `SpectralSequence` 的全局比较义务。

## 2. 现有

当前仅有 `ClassicalSynthetic/{Data,Proofs}` 两个文件。它定义 fixed-weight 重分次映射、若干 h₄ 次数常量，并证明给定 chain map 的微分自然性与次数遗忘公式。现有对象直接建立在 Mathlib 谱序列页面上，而且比较映射本身作为结构字段提供；它尚未连接到项目选定的内部三分次 M，也没有证明 h₄ 对应、λ-Bockstein、检测或收敛相容。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

**约 10%–20%。** 当前代码验证了重分次算术和一个结构性 chain-map 事实，是后续实现线索；距离 AM10 的完整 catalogue coherence 仍很远。两文件无 `sorry` 不能改变这一语义差距。

## 4. 待做

- 将 classical/synthetic 两端改写到内部 M；现有 Mathlib 版本只隔离保留为历史兼容记录，不扩展它，也不新增任何两套谱序列的比较证明义务。
- 从底层 ν、λ、quotient 和 tower/map 数据构造 comparison，而不是把关键相容性全部作为字段。
- 补页面传递、乘法、微分、检测、有限 λⁿ 截断和极限相容。
- 核对三分次与 `S^{1,0}` 约定，给关键类和目标次数写可执行回归。

## 5. 建议步骤

1. 先冻结内部 synthetic M 的 tridegree/page convention。
2. 实现纯重分次对象和规范页面映射。
3. 依次证明 `d_r`、page passage、λ action、乘法、检测相容。
4. 最后迁移当前 h₄ 示例和论文 near-126 所需的具体 comparison。
