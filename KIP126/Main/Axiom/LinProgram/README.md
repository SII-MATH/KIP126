# LinProgram 消费边界的迁出位置

本目录已无 Lean 实现。唯一 Main 阶段假设见 [Challenge2](../Challenge2.lean)，见证和投影见 [StageInput](../../Solution/StageInput.lean)。

- [通用表格输入](../../../LinProgram/Interpretation/AdamsE2.lean)是显式参数化接口，不是固定 C(M) 的新假设。
- 路线的 [解码与解释数据](../../../LinProgram/Interpretation/Route/Data.lean)、[局部认证条件](../../../LinProgram/Interpretation/Route/Predicates.lean)位于独立管线。
- [路线交付规格](../../../Challenge2/Route/Data.lean)保留原 Inputs/CInput 及标签条件。与根 Challenge2 的同一见证绑定仍待单独处理。
- 已交付数据的消费适配与 Main 推论位于 [Main/Solution/Computation](../../Solution/Computation/README.md)。
