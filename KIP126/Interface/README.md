# Interface：模型上的阶段交付

本阶段从同一个 Challenge1 基础模型以及明确的上游输入，构造根 [Challenge2](../Challenge2.lean) 的交付见证。`Challenge2` 将文献部分 `LiteratureInterface` 和计算部分 `ComputationInterface` 分开；只有后者称为 C(M)。通用比较和共享模型选择由 `ModelBindings` 记录，不算作文献定理。

- [Axiom](Axiom/README.md) 只暂时接受 `Nonempty Challenge1`；[Solution/StageInput](Solution/StageInput.lean) 唯一选择见证并投影基础、Milnor、球谱与路线对象。
- [Challenge](Challenge/README.md) 只陈述完整的 `Nonempty Challenge2`；[Solution](Solution/README.md) 保留同型的生产 theorem，并单独维护所有内部陈述与证明。内部结果不再建立 Challenge 镜像。
- [LinProgram 证明](Solution/LinProgram/README.md) 将固定数据的认证结论运输到同一个模型，提供基、乘法、平方和 staircase 等计算接口。
- 独立 [LinProgram 管线](../LinProgram/README.md) 保存原始数据、转换脚本、生成数据、参数化解释和局部证书。它不提供阶段公理。

## 当前状态

固定 CSV 的 `basisTable_correct`、乘法相容、staircase 和完整 `Nonempty Challenge2` 构造仍有 `sorry`。`SphereBasisInterface` 的坐标运输已有证明，但依赖尚未完成的基认证。`SphereSquareInterface` 由独立平方检测和维数证书经指定 presentation 构造，交付实际 E₂ 中的非零性及候选穷尽；Main 从计算接口消费，生产证明不再直接进入 Main。

同一 `Challenge2` 见证同时约束文献与计算的模型、范围和相容性。文献仍须保留来源和适用条件；装入 structure 不等于证明。完整交付尚未构造，原始数据库的全部类别也尚未完成数学认证。

广义 Leibniz、广义 Mahowald 和有限 stretching 是本文新工具，其路线陈述位于 [Main/Solution/Tools](../Main/Solution/Tools/README.md)。它们不属于前人 A(M)，也不能因待证而加入输入包。Interface 若使用它们验证计算，须依赖独立证明并检查没有循环。

后续先完成所需固定数据认证和模型比较，再构造完整 Challenge2，以生产 theorem 替换 Main 的同型阶段假设。两道边界的存在性证明和最终数学验收仍是独立的未完成工作。
