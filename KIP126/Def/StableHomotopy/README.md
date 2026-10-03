# 稳定同伦背景

本目录定义稳定加性对称幺半背景、球谱与悬移、余纤维和连接映射、smash、mapping spectrum、同伦群，以及 H𝔽₂、同调、上同调、Milnor 合作运算和 Toda 关系。

[Implementation](Implementation/) 给出点集谱的源构造、HF₂-local 反射及球谱的 2-完成识别及所选实现的具体识别责任；[Def/StageInput](../StageInput.lean) 固定同一基础。源比较必须绑定球谱、悬移、余纤维及其映射、smash、同伦群和 H𝔽₂ 单位。构造及性质证明允许保留明确的 `sorry`，不能由一个无定义的真实性标签替代。

上同调约定是 `H^n(X) = [Σ^(−n) X, HF₂] = [X, Σ^n HF₂]`，UCT 对应同次数 `H_n(X)` 的对偶。Steenrod 的次数 n 运算对应 mapping spectrum 的 `π_(−n)`；这一次数已在数据接口和相容性声明中修正，并有最小 Lean 检查。

通用定义不接受文献或程序的目标结论。来源定理的条件、同一模型上的比较及其证明由 Interface 的合同区分；本文新工具仍由 Main/Solution 证明。
