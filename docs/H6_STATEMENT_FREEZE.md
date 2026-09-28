# h₆² 最终陈述与基础假设冻结 v1

2026-09-28，按用户确认，冻结源码基线
`38554617a4465bbce021b88977af660b90d83697` 上的以下接口。
允许目标定义依赖明确接受的 Challenge1 基础存在性公理；移除此公理、构造具体
谱模型、完成 C(M) 或证明最终目标，均不作为此次陈述冻结的前置条件。

## 冻结的目标与对象

唯一最终目标保持为：

```lean
theorem h6_sq_permanent :
    NonzeroSurvival sphereAdamsData (2, 128) standardH6Square := by
  sorry
```

其 [Challenge](../KIP126/Main/Challenge/Final/h6_sq_permanent.lean) 和
[Solution](../KIP126/Main/Solution/Final/h6_sq_permanent.lean) 保持同一类型。
Challenge 保留占位证明；Solution 是后续独立证明的入口。

- `sphereAdamsData` 是同一基础上，由 HF₂ unit 和球对象实际构造的 Adams 塔
  所给出的内部谱序列；起始页为 2，dᵣ 次数为 `(r, r−1)`。
- `standardH6Square` 是同一 Milnor 比较下 `[ξ₁⁶⁴ | ξ₁⁶⁴]` 的类，
  位于 `(s,t) = (2,128)`，stem 为 126。
- `NonzeroSurvival` 要求存在共同的 Z∞ 代表，投影为该 E₂ 类，且 E∞ 像非零。
  有限页存活或仅 E₂ 非零不能替代这个结论。
- 上述对象和目标类型不依赖 CSV、C(M) 或 Challenge2。

通用构造仍在 Def；固定版本仍由
`Interface/Axiom/StandardSphere` 特化，不为此次冻结改写目标或另选数据。

## 明确接受的基础假设

```lean
axiom KIP126.Interface.Axiom.challenge1 : Nonempty KIP126.Challenge1
```

冻结的是 [Challenge1](../KIP126/Challenge1.lean) 实际总包的四组字段及其条件：

| 字段 | 固定的数学含义 |
| --- | --- |
| `foundationInput` | 基础范畴、cofiber、HF₂ 对象及其同伦群条件 |
| `milnorInput` | 同一 Adams E₁ 的 Milnor cobar 坐标及 d₁ 相容性 |
| `tensorInput` | 同一基础上的三角、对称闭张量、悬移和精确性条件 |
| `cooperationInput` | 同一 HF₂ 的乘法、Künneth、Milnor 基、余乘法等相容性，以及与上述坐标一致 |

`challenge1Witness := Classical.choice challenge1` 是唯一的基础选择；
`standardFoundation` 和 `standardMilnorCooperations` 均投影自这个见证。
生产端仍负责同一个 `Nonempty Challenge1`，不得依赖消费端的存在性公理完成生产证明。

审查这四组字段及其直接类型，未发现包含最终永久存活、指定高页微分或固定计算
结果，也未发现直接循环或明显矛盾。这不构成公理一致性、模型存在性或经典谱
实现的证明。Challenge1 见证的构造仍由
[Def/Solution/Challenge1](../KIP126/Def/Solution/Challenge1.lean) 承担；预期经典模型的
解释属于后续基础验收责任，`Nonempty Challenge1` 的类型本身不包含该识别。
接受此公理用于陈述冻结，不撤销项目最终验收时消除阶段公理的要求。

同文件中没有进入这四字段总包的 synthetic、Toda、几何等接口不在此次冻结范围。
整个路线 M、A(M)、C(M) 与旧 Challenge2 的接线继续按各自任务推进。

## 后续修改规则与检查

可以继续补证明、增加独立辅助定义并优化实现。修改已冻结字段的条件、增加字段、
改变固定对象来源或目标含义时，必须在 PR 中明确说明接口版本变化并同步消费者；
不得以“补证明”为名悄悄改变 v1 的陈述。模块重排须保持公开声明与依赖语义。

已有检查分别覆盖目标的类型隔离、固定路线与 Final 的定义性一致，以及阶段生产／
消费边界：

- `Checks/ClassicalAdams/StandardFinalBoundary.lean`：检查目标类型的公理依赖仅为
  Lean 常用基础公理和 `Interface.Axiom.challenge1`，并排除计算输入。
- `Checks/Kervaire/RouteFixedFinal.lean`：通用目标的固定特化与 Final 按定义一致。
- `Checks/ClassicalAdams/StageInputDeclarations.lean`：共享阶段包和兼容投影。

此次仅记录接受范围与修改约定，没有修改 Lean 声明、填入证明或重新运行构建。
平台上传属于另一项发布验证；本地冻结本身不表示第三方平台接受自定义公理。
