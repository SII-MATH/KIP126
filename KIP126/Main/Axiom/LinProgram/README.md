# LinProgram：计算交付的消费接口

这里从 Main 选定的同一个 `Challenge2` 见证投影 `ComputationInterface`，并保留 presentation、坐标、微分与路线需求的消费适配。C(M) 只指该计算 structure；文献结果由独立的 `LiteratureInterface` 承载，共享模型绑定保证两部分使用同一个 Challenge1 模型。

原始数据、确定性转换、生成表、参数化解释和局部证书已移至独立 [KIP126/LinProgram](../../../LinProgram/README.md)。这些工件不属于 Main 的假设层。计算结论的生产证明位于 [Interface/Solution/LinProgram](../../../Interface/Solution/LinProgram/README.md)。

| 位置 | 当前职责 |
| --- | --- |
| [Presentation.lean](../../Solution/Computation/LinProgram/Presentation.lean) | 从同一计算见证提供 Lin presentation 及兼容名称 |
| [Interpretation](Interpretation/README.md) | 固定模型上的坐标、类和表真实性投影；条件推论归 Main/Solution |
| [Route/Data.lean](Route/Data.lean) | §7 所选路线在指定 Model、球谱和 tmf 标签上的 C(M) 需求 |
| [Route/Records.lean](../../Solution/Computation/LinProgram/Route/Records.lean) | 带具名条件的路线投影 |
| [E2.lean](../../Solution/Computation/LinProgram/E2.lean)、[Differentials.lean](../../Solution/Computation/LinProgram/Differentials.lean) | 兼容导入入口 |
| [Examples](../../Examples/LinProgram/README.md) | 使用实际消费适配和显式来源证据的最小表及接口示例；不是数据真实性的完整认证 |

路线的机械来源清单位于 [LinProgram/Route/selected.json](../../../LinProgram/Route/selected.json)，选择依据见 [C_INPUT_FREEZE.md](../../../../docs/C_INPUT_FREEZE.md)。路线清单、bulk 表解释和完整阶段见证是不同层次，不据此声称全部程序语义已经验证。

Main 的开发期假设仍只有 `Nonempty Challenge2` 这一道阶段输入，没有为每类计算或文献另立独立公理。完整生产 theorem、固定基、乘法和 staircase 认证仍待完成；生成文件、hash 校验和编译通过不证明数学真实性。后续须以 Interface 的完整生产证明替换该同型阶段假设。
