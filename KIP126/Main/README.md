# Main：论文推导与最终目标

Main 使用同一数学模型上的文献结果 A(M) 和计算结果 C(M)，承担论文自身的推导与最终目标 T(M)。项目通用对象与谓词由 Def 定义。本文中间结论不能因为尚未证明就列为外部事实。

## 目录职责

- [Axiom](Axiom/README.md)：直接提供唯一 Challenge2 witness；固定程序工件见独立 [LinProgram](../LinProgram/README.md)。
- [Challenge](Challenge/README.md)：只保留 `h6_sq_permanent.lean` 的唯一最终目标。
- [Solution](Solution/README.md)：中间结果的陈述、消费构造与证明，以及最终证明；中间推导按 Tools、ChoiceIndependence、DifferentialReduction、ExtensionObstruction、Computation、Literature、Route 组织，最终证明直接位于 [h6_sq_permanent.lean](Solution/h6_sq_permanent.lean)。

只有最终目标保留 Challenge/Solution 配对。计算推论、文献输入的提取和论文路线中的中间义务都只在 Main/Solution 维护，未完成的证明明确保留 `sorry`，不再建立中间 Challenge 镜像。Interface 直接构造 Challenge2，Def 维护固定数学实现；不再增设阶段占位 theorem。

## 当前实现与限制

标准最终目标为 `NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`，要求共同 Z∞ 代表及非零 E∞ 像。标准元素来自同一内部塔上的 Milnor cocycle，定义和目标类型不使用 C(M)。最终 Solution 已通过 `permanent_of_propositions` 串接同一阶段见证上的 Proposition 7.8/7.9；这两条命题在 [Route/Selected.lean](Solution/Route/Selected.lean) 中仍为 `sorry`，所以完整存活证明尚未完成。计算标签比较是辅助引理，不另设计算版最终定理。

Main 的唯一直接输入为 `challenge2 : KIP126.Challenge2`。`LiteratureInterface` 与 `ComputationInterface` 分开，只有后者称为 C(M)；`Main/Solution/StageInput.lean` 从同一直接见证投影共享模型、文献与计算输入。消费构造和投影不放在 Axiom 中。Def/Interface 的整包生产证明及具体数学认证仍有待完成。

程序解释已有固定 E₂ 数据和 10,907 条闭合有限页球谱微分等式；等式不自动提供后续页非零。条件树、其他谱、extension、sentinel 和候选穷尽仍须逐项核验。手写 D/S/P/V 需求接口不自动成为程序认证结果。

所选路线的 C₃/C₄/C₅、选择无关性和 Proposition 7.8/7.9 已重述到同一 `Route.Model` 的实际对象上，旧自由谓词中间接口已删除。准确目标、同一见证接线和数学证明是不同状态：前两者已有接口，相关代数、比较、尾部和过滤论证仍需完成。详见 [STAGE0_INTERFACES.md](../../docs/STAGE0_INTERFACES.md) 。

## 剩余工作

1. 证明所选路线的中间义务，保留精确对象、次数、选择和适用前提。
2. 完成固定计算认证、模型比较及统一输入的生产证明。
3. 分别验收 Proposition 7.8/7.9、上游构造和阶段公理的证明债务；最终串接不等于这些证明已经完成。
