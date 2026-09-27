# Challenge / Tools：旧声明退休记录

旧 `generalized_leibniz.lean`、`generalized_mahowald.lean` 与 `page_extension_stretch.lean` 已与 Solution 配对删除，并从阶段入口撤下。#133 发现 Leibniz 的次数条件使旧 `Input` 为空；#134 指出 Mahowald 的错误 crossing 分支；旧 stretching 只重述了不相关的 Leibniz 结论。删除依据是陈述错误，历史源码保留在 Git 中。

当前准确接口位于[根 Challenge2](../../../Challenge2.lean)：

- `GeneralizedLeibnizLaw` 使用实际 Adams 微分以及同一 normalized page family 的有限／无穷扩张与 crossing。
- `GeneralizedMahowaldLaw` 使用同一实际 distinguished triangle 的三张映射，并通过[实际塔 suspension comparison](../../../Def/ClassicalAdams/Suspension/Data.lean)及其 raw-cycle 商代表元关系处理连接映射的悬移目标。

这些 law 是待交付命题，不是已证明的规则，也没有断言任意比较家族都满足它们。模型比较前置到位后再建立准确的 Challenge/Solution 配对目标。

Stretching 尚需定义同一映射的实际代表元解族、限制映射与无穷相容条件，当前没有可链接的完整 Lean 声明。Blueprint 保留数学正文与 `notready`，不使用自由操作补位。

整体阶段状态见[Interface](../../README.md)。
