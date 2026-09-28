# Def / Kervaire

## 1. 预期

保存 Kervaire 论文专用但仍可共享的对象、谓词和输入结构：near-126 类、C3/C4/C5 条件、θ₅ 选择及阶二性质、BJM/BX criterion 的准确 proposition、Browder/HHR statement 类型。具体文献事实属于 Main/Axiom，near-126 推导与最终结论属于 Main。

## 2. 现有

已有 `StableHomotopyData`、`SyntheticHomotopyContext`、`Near126Input/Conditions`、`SphereAdamsCoherence`、θ₅ choice context、order/torsion/total-differential/Browder/HHR/BJM statement，以及 choice-independence 和 criterion transport 的若干证明。`SphereAdams.lean` 还提供旧式 `Near126Adams`/permanence 包装。`Theta5/Proofs` 已改用普通数学前提，不再反向导入 Main。

[Theta5/Synthetic](Theta5/Synthetic/README.md) 另提供实际多次数对象上的 θ₅/η 检测、平方、λ 作用、总边界及原始/规范化 BX 条件。它们使用同一内部标准类，不使用 CSV；canonical 比较及文献见证尚待完成。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **statement 与数据结构：约 45%–60%。** 主要角色和逻辑条件已有 Lean 类型。
- **论文 near-126 数学链：约 15%–30%。** 真正的谱序列、synthetic、extension 和计算条件连接仍在 Main/Interface；现有 choice transport 不能替代 Theorem 7.3、7.8、7.9 和最终永久性。

## 4. 待做

- 构造实际第一 λ 商比较，审核悬移、乘法与边界相容性，并把已有 choice transport 接入多次数对象。
- 去除/整合与最终内部 `NonzeroSurvival` 重复的旧 `Near126Adams` 包装。
- 确定每个 C3/C4/C5 字段的来源：C(M)、A(M)、文献输入或 Main 内部推论。
- 补 Browder/HHR 的条件性几何终点，但不把外部结果变为无条件全局 theorem。

## 5. 建议步骤

1. 先做 Kervaire statement inventory，给每个字段标 owner 和来源。
2. 把纯 predicate 留 Def，把 fixed literature witness 留 Main/Axiom。
3. 让 Main/Solution 的中间推导引用实际对象上的 predicate；Main/Challenge 只保留 Final。
4. 最终目标只保留内部 `NonzeroSurvival`，几何结论作为后续显式条件定理。

当前 §7 路线的共同模型、条件和依赖语言位于 `Route/`。旧 `Near126Adams`/`ChoiceConditions` 已删除；`SphereAdams.lean` 现在只重导出实际模型接口。详见 [M 冻结清单](../../../docs/M_INPUT_FREEZE.md)。
