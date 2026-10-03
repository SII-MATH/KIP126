# Def：共同数学背景 M

本目录拥有三个阶段共用的对象、操作、结构条件、代表关系、检测与永久存活谓词，以及具体实现和比较接口。Def 不直接或间接导入 Interface 或 Main；定义不接受固定计算结论，也不把本文的新定理装成背景字段。

- `StableHomotopy/Implementation/` 给出点集源、完成背景与所选实现的识别接口；实际构造的证明责任在 `Solution/Implementation.lean`。
- `StageInput/` 从 Def 的唯一实现固定同一个基础、Milnor 坐标、球谱 Adams 塔与标准类。标准 h₆² 来自 Milnor cocycle，独立于 CSV。
- `Comparison/StageInterfaces/` 保存通用比较语言和迁移后仍有用途的证明。
- `Kervaire/Route/` 定义论文路线所需的对象和命题；本文新规则的成立性证明属于 Main/Solution。
- `References/` 保存来源、引用和显式证据的通用类型。原始文献工件在仓库的 `references/literature/`。

`Challenge1.lean` 规定交付同一个已固定实现的绑定，以及其标准球的 HF₂ nilpotent completeness 和实际 Adams 塔强收敛。`Challenge/Challenge1.lean` 是目标占位，`Solution/Challenge1.lean` 是生产端；两者类型相同。构造定理中的 `sorry` 是公开的证明债务，不等于实现已经构造完成。

第 0 步验收接口的语义、范围和责任，不以文件数、`sorry` 数量或主观百分比衡量。当前规范见 [STAGE0_INTERFACES](../../docs/STAGE0_INTERFACES.md)，结构检查见 [test_stage_boundary_layout.py](../../scripts/test_stage_boundary_layout.py)。
