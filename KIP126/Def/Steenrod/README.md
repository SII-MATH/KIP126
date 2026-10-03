# Def / Steenrod

## 1. 预期

实现主链实际需要的纯 Milnor cobar 代数：cochains、微分、cup、分次与正规化、`d²=0`/Leibniz、标准 `h₆` 与 `h₆²` 闭合，以及 `h₆²` 不是边界。它应不依赖内部谱序列 M；与 Adams E₂ 的识别由 ClassicalAdams/Interface 完成。

## 2. 现有

约 40 个文件形成了相当完整的多项式模型：tensor-power cochains、Milnor word/monomial/basis 等价、coproduct/split slot、differential 和 cup、正规化、reindex、分次证明，以及针对 `h₆²` 的投影、二项式奇偶 detector。已有 `differential_cup`、`h6Cochain_isCycle`、`h6SquareCochain_isCycle` 和 `h6SquareCochain_not_boundary` 等关键 theorem，且当前组件没有项目 axiom 或可见 `sorry`。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **issue #138 中 A₀/a04 的核心目标：约 80%–95%。** `h₆²` 非边界及所需检测链已经出现。
- **更广义 Steenrod/Ext 与乘法同调基础：约 45%–60%。** 完整 DGA/Massey、一般 Ext 计算和与 Adams E₂ 的全比较不在现有闭包中。

## 4. 待做

- 对 a04 的准确 statement 与现有 theorem 做逐类型核对，确认次数、正规化和 coefficient 模型完全一致。
- 补明确的 `d²=0` 与一般 Leibniz 对外接口，避免只由特例链间接使用。
- 迁入真正需要的 DGA/Massey 核心，为 Moss 接口准备；不机械复制 KIPBase 的历史 axioms。
- 在 Interface 中把纯 cobar 结果连接到同一个内部 Adams E₂，而不是在本组件引入谱序列假设。

## 5. 建议步骤

1. 先将 a04 作为独立 A₀ 验收目标运行 `#print axioms`。
2. 补最小公共 DGA/cobar API 和乘法同调定理。
3. 再构造 Adams E₂ comparison；保持 Steenrod 本身不依赖固定 sphere/Lin 数据。
4. 最后按 Moss 的实际需要扩展 Massey，而不先追求全库覆盖。
