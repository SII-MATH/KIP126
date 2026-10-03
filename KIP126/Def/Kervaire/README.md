# Kervaire 路线的共同语言

这里定义 near-126 路线的对象、标准类、代表与检测谓词、C₃/C₄/C₅、θ₅ 选择、BX 判据，以及 Browder/HHR 语句类型。定义一个谓词不交付它的成立性。

[Route](Route/) 的实际对象与操作供 Interface 和 Main 共用。`Route/SourceLanguage.lean` 保存同一对象上的 ν、λ、Toda、tmf 单位与来源比较语言；接受的来源结论及计算交付组合位于 Interface/Challenge。

本文的选择无关性、广义规则、Propositions 7.8/7.9 和最终 h₆² 永久存活均由 Main/Solution 证明。关键结论不得作为 M 的字段或无来源输入。当前源识别和模型选择的限制见 [阶段规范](../../../docs/STAGE0_INTERFACES.md)。
