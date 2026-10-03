# 实际 synthetic 对象上的 θ₅ 与 BX 条件

这部分属于 M 的定义语言。它使用 `SyntheticCategory` 的实际同伦类、悬移和 cofiber，以及同一 `H`、Milnor 数据构造的内部 Adams 塔。它不导入 C(M)，也没有选择全局 synthetic 模型。

| 表达式 | 双次数 (stem, weight) | 定义来源 |
| --- | --- | --- |
| `Theta` | (62,64) | `BiHom 62 64 S_0_0` |
| `thetaSquare θ` | (124,128) | 实际悬移与态射复合 |
| `etaThetaSquare η θ` | (125,130) | `Eta` 为 (1,2) 的候选类 |
| `lambdaEtaThetaSquare η θ` | (125,129) | 现有 `lambdaAction` |
| `deltaH6Square H M comparison` | (125,129) | 标准 h₆² 经第一商逆比较、实际 cofiber boundary 和反悬移 |

`DetectsTheta`、`DetectsEta` 分别要求第一 λ 商中的实际像对应同一内部 E₂ 的标准 h₅²、h₁。比较类型和球面特化构造在 `Def/Comparison/ClassicalSynthetic/FirstQuotient`：后者由已有 ν 比较通过同一 unit iso 和实际 quotient functor 得到，不另选比较。

`Predicates.lean` 分开定义：

- `BJMOriginalCriterion`：指定 η、θ₅ 的检测和 θ₅ 的 order-two 条件，以及原始 η / λ^r 有限页判据。
- `BJMNormalizedFiniteCriterion`：论文改写后的 λη / λ^(r+1) 条件。没有把它作为前人定理自动引入。
- `BJMSourceTotalBoundaryIdentity`：实际 cofiber 总边界等式。
- `BJMUntruncatedCriterion`：标准内部 `NonzeroSurvival` 与实际 ληθ₅² 为零的等价；不是新的 Final 目标。

全部是条件的**定义**，不是成立性证明。原始判据的来源包装位于 `Def/References/Literature/BJMOriginal.lean`，必须显式给出 proof；Challenge2 的路线陈述固定使用从同一 ν、cofiber coherence 和第一商比较构造的球面比较。canonical 比较及其乘法/边界相容性、η 的几何识别、原始 BX 的见证、论文 λ 变换和任意 θ₅ 选择传输尚待完成。旧 `Theta5ChoiceContext` 仍只是单 Carrier 的代数原型，没有宣称它已经等同于这里的多次数对象。

一般 λ 商工具在 `Def/Synthetic/Sphere/Homotopy`。其中 `LambdaInjectiveAt` 只要求**一次** λ 作用的单射性，不自动断言所有较低 weight 或任意 λ 幂的无挠性。`vanishesModLambda_iff_factors` 已从指定三角的正合性证明。
