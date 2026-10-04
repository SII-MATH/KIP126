# Def：共同数学背景

本目录拥有数学对象、操作、结构条件、代表关系、检测与永久存活谓词，以及具体实现和比较语言。Def 不直接或间接导入 Interface 或 Main，不接受固定计算结论，不把本文新定理装成背景字段。

- `StableHomotopy/Implementation/` 给出点集源、完成背景及实现识别；实际构造责任在 `Solution/Implementation.lean`。
- `StageInput/` 从唯一固定实现构造基础、Milnor 坐标、球谱 Adams 塔和标准类。标准 h₆² 独立于 CSV。
- `Comparison/StageInterfaces/` 保存通用比较语言。
- `Kervaire/Route/` 定义路线对象和命题；本文新规则的证明属于 Main。
- `References/` 保留数学陈述和论文表格转录；来源 metadata 统一在仓库的 `docs/external-inputs.json` 中。

公共基础语言使用 `KIP126.Foundation` 命名空间。独立 Challenge1 及其相等运输已删除；其球塔完成/收敛义务由 `Challenge2.FoundationInputs.sphereApplicability` 保留。固定实现本身的构造与比较仍由 Def 负责，现有 `sorry` 仍是证明债务。

当前责任见 [STAGE0_INTERFACES](../../docs/STAGE0_INTERFACES.md)。
