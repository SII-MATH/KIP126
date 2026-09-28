# Def / Comparison

## 1. 预期

建立同一个内部 M 上 classical Adams、synthetic Adams 与 λ-quotient 谱序列之间的重分次、页面、微分、乘法、检测和截断相容性。它对应 issue #138 的 AM10；这里不承担内部 M 与 Mathlib `SpectralSequence` 的全局比较义务。

## 2. 现有

当前 `ClassicalSynthetic/{Data,Proofs}` 使用内部 M，定义 fixed-weight 重分次环境映射；所有有限页和 E∞ 映射由同一 cycle/boundary 商构造诱导，并证明微分自然性与次数遗忘公式。`Challenge2.NuComparison` 将 classical 端固定为实际 Adams 塔，synthetic 端为同一家族在 νX 上的取值。这给出了精确的比较类型，比较见证本身仍待构造；h₄ 对应、λ-Bockstein、乘法、检测及收敛相容尚未证明。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

当前已交付内部重分次映射的定义、规范商映射及其微分自然性，尚未交付固定 classical–synthetic 比较的存在性。定义和结构定理的完成不等于 AM10 的 catalogue coherence 已完成。

## 4. 待做

- classical/synthetic 两端已经使用内部 M；不新增与 Mathlib 谱序列等价的证明义务。
- 从底层 ν、λ、quotient 和 tower/map 数据构造 comparison，而不是把关键相容性全部作为字段。
- 补页面传递、乘法、微分、检测、有限 λⁿ 截断和极限相容。
- 核对三分次与 `S^{1,0}` 约定，给关键类和目标次数写可执行回归。

## 5. 建议步骤

1. 先冻结内部 synthetic M 的 tridegree/page convention。
2. 实现纯重分次对象和规范页面映射。
3. 依次证明 `d_r`、page passage、λ action、乘法、检测相容。
4. 最后迁移当前 h₄ 示例和论文 near-126 所需的具体 comparison。
