# M / C(M) / A(M) / T(M)：分类与交付历史

合并 PR #139 远程更新后的联合审查见 [STAGED_INTERFACE_REVIEW.md](STAGED_INTERFACE_REVIEW.md)。本文件保留各自批次的范围和验证记录，不能据此宣称 M/A/C/T 已全部冻结。

2026-09-28 更新：下文保留此前审查轨迹，其中关于 Near126 自由谓词和 M 缺口的描述已由后续改动取代。当前所选路线的 M 接口以 [M_INPUT_FREEZE.md](M_INPUT_FREEZE.md) 为准；A(M) 的完整输入陈述和来源见 [A_INPUT_FREEZE.md](A_INPUT_FREEZE.md)。A(M) 已有统一显式输入类型，未证明或构造见证；C(M) 完整清单和认证仍未冻结。

2026-09-29 布局更新：固定程序工件与局部证书独立放在 `KIP126/LinProgram/`。
根 `Challenge2` 将 `LiteratureInterface` 与 `ComputationInterface` 分开，只有后者称为
C(M)；两者共享同一 Challenge1 模型，通用比较保留为显式模型绑定。Interface 生产这些
交付，Main 从同一 `Nonempty Challenge2` 阶段假设消费；没有因拆分新增独立公理。
平方检测和维数的局部证书由 Interface 运输到计算交付，`Main/Solution/Computation`
的依赖链不再导入 Interface/Solution；其他 Main 历史消费链仍有待整理。
这次调整不完成基认证、乘法、staircase 或完整 Challenge2 的待证义务。

本表是本地代码的分类审查记录，不是全部输入已经冻结或证明完成的声明。

## 口径

- **M**：`KIP126/Def` 定义的数学对象、操作、结构条件、代表/检测/存活等谓词。Def 中定义一个性质，不等于已经证明该性质，也不决定它属于 A 还是 C。
- **Challenge**：阶段交付或目标接口。`Challenge1`/`Challenge2` 不等于 M，也不能按目录自动等同于 A(M)/C(M)。固定实例别名使用同一基础见证特化 Def 的构造。
- **C(M)**：固定程序输出在同一个 M 上的准确解释及认证义务。原始文件、校验和、未知项及论文推导不自动成为数学结论。
- **A(M)**：论文实际使用的前人结果，保留原条件、次数、范围与来源；本文实质变换另行证明。
- **论文推导**：从上述输入推出的新工具、中间命题、最终结论，位于 Main/Solution。一般条件性基础引理可在 Def。
- **T(M)**：唯一最终目标，在内部球谱序列上对标准 h₆² 陈述非零永久存活。

## 已定位的接口与缺口

| 角色 | 当前定位 | 来源/含义 | 冻结与证明状态 |
| --- | --- | --- | --- |
| M：内部页面与标准类 | `Def/ClassicalAdams/TowerSSData`、`SphereClasses/Hi/Internal`、`Def/SpectralSequence/Computation` | 实际塔导出的 SSData、Milnor 标准类、非零存活 | T 所用构造已有；固定基础见证仍依赖 Challenge1 开发公理，不表示整个 M 已冻结 |
| M：synthetic 对象 | `Def/Synthetic/Sphere`、`Context/LambdaPowers`、`Def/Comparison` | BiHom、λ、商对象、classical/synthetic 比较 | 实际 BiHom 上的 θ₅/η 候选、次数、乘积、商映射及 cofiber δ₁ 已定义；canonical 比较与几何识别仍待证明 |
| C：cm1 | `Challenge2.ComputationInterface` 中的 `sphereBasis` 与有界 `LinE2Presentation` | v126.3.cw49 的明确基与 presentation，内部次数 t ≤ 261 | 类型已列入当前交付包，认证证明待完成；不能外推范围或自动补乘法比较 |
| C：cm2 | `Challenge2.ComputationInterface` 的闭合球谱微分表真实性 | proofs.db 中 10,907 条 depth=0、S0 闭合等式 | 机械解释已有，数学真实性待证；等式本身不额外保证非零/存活 |
| C：cm3–cm6 | `Challenge2` 清单及 LinProgram Raw/Translate | 条件分支、辅助谱、页面状态、穷尽性 | 未全部绑定/冻结；未知不当零，条件记录不升级为无条件等式 |
| A：原始 BX 判据 | ledger `.bjmBxCriterion` | Burklund–Xu Proposition 7.19：ηθ₅² 在 S/λ^r 中为零 | 原始文本已核对；`Def/Kervaire/Theta5/Synthetic/Predicates` 已定义该声明；`Def/References/Literature/BJMOriginal` 接受显式 proof，未提供见证或公理 |
| A：总微分公式 | `SourceTotalDifferentialIdentity` 的 provenance wrapper | 同一 Proposition 的证明中 δ₁(h₆²)=ληΘ₅² | 旧原型保留；新的 `BJMSourceTotalBoundaryIdentity` 已用实际 first-quotient 逆比较和 cofiber boundary 定义，等式待证 |
| A：经典 θ₅ order | Xu/IWX 来源清单 | LWX Remark 7.5 引用的经典 order-two 结果 | 精确原文定位、实际经典对象的输入与 synthetic 比较须继续审查 |
| 本文推导：规范化 BX | `Def/.../Theta5/Predicates.BJM_BXCriterion` 定义条件；Main 负责证明 | LWX Remark 7.4 从 η / λ^r 转为 λη / λ^(r+1)，用无 λ-torsion | 已撤销直接文献包装；新增实际对象上的 `BJMNormalizedFiniteCriterion`，转换证明未完成 |
| 本文推导：synthetic order/choice | `Theta5OrderData`；ledger `.projectDerivation` | LWX Remark 7.5 使用经典结果及微分/无 torsion 分析 | 已撤销直接 A 包装；当前抽象条件不等于实际模型定理 |
| 本文推导：混合 order/torsion 包 | `Theta5OrderTorsionEvidence`；ledger `.projectDerivation` | 同时含中间推导和 torsion 条件 | 已撤销原始 C 包装；还需拆出真实计算输入及各步推论 |
| 本文推导：choice transport | `Main/Solution/ChoiceIndependence`，一般引理在 `Def/.../Theta5/Proofs` | 普通条件下的表达式相等与判据传输 | 条件证明已实现；绑定实际 M 以及提供中间前提未完成 |
| 本文新工具 | `Main/Solution/Tools` | 广义 Leibniz、Mahowald、有限 stretching | 已归 Main；结构相容性与证明仍待完成，不可作为前人结果假设 |
| T | `Main/Challenge/Final/h6_sq_permanent` | `NonzeroSurvival sphereAdamsData (2,128) standardH6Square` | 单一标准目标；定义不导入 C，Solution 仍为 sorry |

## 本轮来源核对

- `Main/Axiom/Literature/Sources/BurklundXu/source/kervairev2.tex:587–600`：有限 η / λ^r 判据及证明中的总微分公式。
- `Main/Axiom/Literature/MainPaper/main.tex:2127–2139`：Remark 7.4 的 λ 变换和 Remark 7.5 的 synthetic order/选择讨论。
- 以上均为本仓库保存的论文源文，不从 `summary.md` 或命名猜测结论。

## 后续顺序

1. 实际对象上的次数、检测和操作定义已接入；下一步构造/接入 canonical 第一商比较及其乘法、边界相容性，证明 η 与几何 Hopf 类的识别。仅有任意 AddEquiv 不能替代这些语义条件。
2. 准确重述原始 BX 及经典 Xu/IWX 输入，再把无 λ-torsion 所需的具体计算/状态/穷尽性需求反向列入 C 清单。只冻结真实需要的范围，不预设要先导入全部 49 个谱。
3. 在 Main 证明规范化判据、synthetic order、选择传输以及其他论文推导。检查 C 认证使用新工具时不存在循环依赖。
4. 输入签名、来源、模型绑定与消费点核对后分别冻结；“未证明”与“尚未确定准确陈述”分开记录。继续保持一个 T，不以第二个计算版目标代替。

本轮没有增加公理、数据结果或未证明的 theorem。移除的包装函数原本也需要调用者提供证明；删除它们纠正的是归类和依赖方向，并不代表先前已经证明的数学结论被推翻。


## 第二批：实际对象上的 θ₅/BX 接口

- `Def/Synthetic/Sphere/Homotopy` 定义现有悬移下的球面类乘积、实际商映射、第一 cofiber 边界，以及 λ 作用单射的局部谓词。`vanishesModLambda_iff_factors` 已从三角正合性证明，未使用 sorry。
- `Def/Comparison/ClassicalSynthetic/FirstQuotient/Data` 接管原 Challenge2 中的一般比较类型；Challenge2 只保留同类型别名。`sphereFirstQuotientComparison` 从既有比较经 ν 的 unit iso 与实际 cofiber functor 构造球面特化。
- `Def/Kervaire/Theta5/Synthetic` 的四个表达式次数依次为 (62,64)、(124,128)、(125,130)、(125,129)。检测通过第一 λ 商的实际像与内部标准 h₅²/h₁ 相等定义，h₆² 使用同一 H、Milnor 坐标和内部塔。
- BX 来源包装强制使用同一 ν/第一商比较经 cofiber functor 得到的球面比较。BX 原始有限条件、论文规范化有限条件、实际总边界等式、无截断条件分开定义；没有从定义声称任何条件成立。无截断条件特化到标准基础后，其左边按定义就是当前唯一 T(M)。
- 原来的单 Carrier 原型及 choice transport 仍保留；未伪造它到实际多次数对象的无条件适配。
- **尚未冻结**：canonical 比较的构造及自然性/乘法/边界相容性，synthetic suspension 的完整几何解释，η 的唯一性/几何识别，原始 BX 输入的实际见证，无 λ-torsion 计算及论文 λ 变换。没有扩大 Challenge1/2 的存在性公理字段。
