# Def / Kervaire

## 1. 预期

保存 Kervaire 论文专用但仍可共享的对象、谓词和输入结构：near-126 类、C3/C4/C5 条件、θ₅ 选择及阶二性质、BJM/BX criterion 的准确 proposition、Browder/HHR statement 类型。具体文献事实属于 Main/Axiom，near-126 推导与最终结论属于 Main。

## 2. 现有

已有 `StableHomotopyData`、`SyntheticHomotopyContext`、`Near126Input/Conditions`、`SphereAdamsCoherence`、θ₅ choice context、order/torsion/total-differential/Browder/HHR/BJM statement，以及 choice-independence 和 criterion transport 的若干证明。`SphereAdams.lean` 还提供旧式 `Near126Adams`/permanence 包装。`Theta5/Proofs` 当前反向 import `Main/Axiom/Literature/Kervaire` 以取得 catalogue/wrapper 类型；定理仍把 `CataloguedExternalResult` 当作显式参数，并未取得无条件文献公理，但目录依赖方向仍待整理。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **statement 与数据结构：约 45%–60%。** 主要角色和逻辑条件已有 Lean 类型。
- **论文 near-126 数学链：约 15%–30%。** 真正的谱序列、synthetic、extension 和计算条件连接仍在 Main/Interface；现有 choice transport 不能替代 Theorem 7.3、7.8、7.9 和最终永久性。

## 4. 待做

- 将 `Theta5/Proofs` 所需的中性 wrapper 类型下沉，或把来源绑定层移出 Def；保留其现有显式参数定理语义并消除 `Def → Main`。
- 去除/整合与最终内部 `NonzeroSurvival` 重复的旧 `Near126Adams` 包装。
- 确定每个 C3/C4/C5 字段的来源：C(M)、A(M)、文献输入或 Main 内部推论。
- 补 Browder/HHR 的条件性几何终点，但不把外部结果变为无条件全局 theorem。

## 5. 建议步骤

1. 先做 Kervaire statement inventory，给每个字段标 owner 和来源。
2. 把纯 predicate 留 Def，把 fixed literature witness 留 Main/Axiom。
3. 让 Main near-126 Challenge 直接引用这些唯一 predicate。
4. 最终目标只保留内部 `NonzeroSurvival`，几何结论作为后续显式条件定理。
