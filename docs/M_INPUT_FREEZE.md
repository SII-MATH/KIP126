# M / T 对象接口与来源比较

当前目录规则见 [STAGE_LAYOUT.md](STAGE_LAYOUT.md)。本次把固定标准基础、Adams 塔和标准类移入 Def，并加入基点拓扑空间、prespectrum、实际稳定同伦弱等价及 HF₂ 局部化的源实现接口。`standardFoundation` 与其源识别同属一个 `standardRealization`。构造证明仍使用 sorry，源对象和箭头的定义并非自由 Prop。

本轮已经补充全 ordinary derived smash 与源拓扑映射比较、synthetic 谱值图表/Day tensor/ν/λ/realization 的来源语言，以及同一实际塔的 E₂ 标签与第一 λ 商比较。准确声明的模型构造证明仍可 `sorry`，不能据此声称已构造完毕。源悬移及 Pst preferred sphere pairing 的最后自审状态、共同模型构造与验收结论见[本轮报告](audits/stage0-57647d2-iteration-2.md)。详细类型见[普通源接口](SOURCE_REALIZATION_INTERFACE.md)、[synthetic 来源接口](SYNTHETIC_SOURCE_GAP.md)；`StandardRouteModel` 别名本身不代替这些绑定。

入口：`KIP126/Def/Kervaire/Route/Model/Coherent/Data.lean` 的
`Kervaire.Route.Model H M Syn`。这里参数 `M : MilnorCooperations H` 是旧 API
中 Milnor 数据的局部变量名；本文的大写 M 指整套数学背景，不应混淆。
`ModelData` 是对象选择；`Model` 再要求指定映射的结构相容条件。
四个非标准命名元素放在 `Labels H`；其计算标签识别属于 C(M)。

固定实例类型 `Classical.Adams.StandardRouteModel Syn` 从唯一 Final 所用的
同一个 `standardFoundation`、`standardMilnorCooperations` 特化。它没有新增
存在性公理、默认 synthetic 实例或第二个球谱序列。今后构造这个类型的见证
是基础工作的证明任务；该构造尚未交付。

## 冻结的数据、对象来源与条件

下表路径相对于 `KIP126/`。通用部件仍可用于别的路线；这里的最小性指
不为所选证明额外要求完整乘法表、全部 49 个谱或任意元素的微分算法，
不声称已经证明一种范畴意义的绝对最小表示。

| 项 | Lean 类型/位置 | 对象来源和必须保持的解释 |
| --- | --- | --- |
| classical 基础 | `StableHomotopyCategory`、`HasFunctorialCofiber`、`Mod2EilenbergMacLane`、`MilnorCooperations` | Mathlib 范畴/模/商/三角语言上的项目结构；same H 与 Milnor comparison，非 CSV |
| 实际 classical Adams 序列 | `adamsTowerInternalSpectralSequence H.unit X` | HF₂ unit 的实际 Adams 塔；起始页 2，dᵣ 次数 `(r,r−1)` |
| 标准类和乘法 | `Sphere.Internal.hi`、`hiSquare`、`product` | Milnor 标准 cohomology 类与 cup product 经同一比较进入实际 E₂；没有任意乘法字段 |
| synthetic 背景 | `ModelData.nu/family/recovery` | 同一 ν、三分次内部序列族、λ-localization 与该 classical 范畴的恢复 |
| 三角和移位 | `classicalTriangulated`、`syntheticTriangulated`、`shiftAdditive/shiftCommShift/shiftExact`、`realizationShift/realizationExact`、`shiftCoherence` | 实际移位、λ 的中央性、结合/单位条件和所选正合结构；用于旋转、Toda、octahedron |
| synthetic 序列的塔实现 | `TowerPresentation` | 每个固定 weight 的 family 与 **synthetic νHF₂ 塔**相连；页映射由同一 ambient map 诱导，并要求其与实际 d 相容。不是 classical→synthetic 全页同构 |
| 实际同伦群和过滤 | `BiHom`、`towerFiltration`、`TowerDetection.filtration` | Hom 群及实际塔投影像；π 群按 ℤ 模处理，不误设为 F₂ 向量空间 |
| 收敛与检测 | `TowerConvergence`、classical `Convergence`、`Detects`、`DetectsNonzero`、`HomotopySeparated` | E∞ 对应实际过滤的 associated graded；检测须有共同 Z∞ 代表；精确非零用 E∞ 非零。所选完备对象的过滤要求分离，不要求 π₀ 过滤有全局有限长度 |
| 比较及自然性 | `nuE2/sphereE2/firstQuotient`、`ComparisonCompatible` | λᵏx 在 `(s,t,t+a−k)`；第一商、ν-sphere unit iso、实际 νf、λ、E∞ 与同伦映射相容 |
| 乘法与作用 | `sphereProduct`、`sphereAction`、`lambdaMultiply`、`MultiplicationCompatible`、`SphereProductCommutative` | 实际球面映射的移位复合；可作用于商谱同伦群；标准 cup 与检测相容，符号由 topological degree 决定 |
| λ 商及商映射 | `XModLambdaN`、`quotientTower`、`LambdaQuotientFunctoriality` | 同一 λ-power cofiber；ρ 固定为规范 restriction；λ/ρ/δ distinguished triangle 与实际 quotient inclusion 相容，且三种映射均自然。只要求 λ 商的函子性，不要求任意 cone 严格函子化 |
| Hopf/辅助谱 | `AuxiliaryData.etaMap/nuMap/detector/detectorUnit` | 真正的球面映射、其 ν-cofiber 和有单位的检测谱；Hopf 检测及 tmf 识别在 A(M)，不能凭名称推断 |
| 所选对象闭包 | `ClassicalObject`、`SyntheticObject` | classical 球、Cν、检测谱及悬移；synthetic 球、这些 ν 对象、双悬移、λ 商。收敛仅要求在该闭包上 |
| 实际 Cν 三角 | `AuxiliaryData.nuRouteTriangle` | 由 νMap 的实际 cofiber 构造 f、底胞腔映射和顶胞腔映射；未另选自由 cell maps |
| 标准悬移比较 | `ModelData.classicalSuspension` | 实际塔/layer 和 raw-cycle 商代表关系；不能以任意 E₂ 等价替代 |
| 提升三角的对应条件 | `Route.Triangles.normalizedTriangle/NormalizedTriangleCompatible` | 三条箭头均由同一 D 的 selected normalized maps 按实际移位构造；Mahowald 显式要求这个三角 distinguished。仅有 νf 的 λ 分解不足以自动取得该条件；其推导不属于 M 的已知结论 |
| normalized maps | `normalizedMap`、`normalizedExponent` | 指数由实际 Adams 塔 filtration 定义；所选 map 满足与同一 νf 的 λ 分解。它与文献 lifting triangle 的关系是明确的内部模型适配证明，非自动成立 |
| 有限/无限扩张 | `Route.Extensions`、`Synthetic.ExtensionRelation` | 实际 normalized map 作用的两项过滤复形；`Finite/InfiniteExtensionWitness` 含页数、长度界、经典 cycle、synthetic E∞ 代表和真实解纤维 |
| 不定性与 crossing | `ExtensionTargetCoset`、`EssentialExtension`、`Route.Extensions.Crossing/Stretching` | 原过滤复形的较短边界、真正的 shorter witnesses，非任意子群/候选列表；有限与无限情形分开 |
| Massey/Toda/Moss | `Route.Massey`、`Route.Toda`、`StableHomotopy.Toda.Relation` | E₃ 的 `<h₅²,h₀,B>` 用实际 d₂ 定义系统的完整集合；Toda 用真实 distinguished cofiber 和全部 extensions；不定性不选点消除；Moss crossing 与 extension crossing 分开 |
| C(M) 命名语言 | `E2 H X s t`、`Labels H`、`HasDifferential/HasNonzeroDifferential/SurvivesTo/NeverHit` | 所有标签落在同一实际页；未知/候选集/普通等式/非零等式/穷尽性须分别陈述。四个主标签之外的有限个辅助标签可直接使用 E₂ 类型，不需新增数学对象 |

没有把某条指定微分、某个局部乘积值、θ₅ 的阶、C₃/C₄/C₅、Proposition 7.8/7.9
或标准 h₆² 的生存塞进 `Model` 字段。结构性收敛和比较条件有具体方程；
它们的构造证明与所选实际范畴的实现仍需完成。

## 全部选定路线的消费清单

来源优先使用仓库中的 `Main/Axiom/Literature/MainPaper/main.tex` 稳定 label，
已与 https://arxiv.org/html/2412.10879v2 核对，不以 summary.md 为依据。

| 消费点/来源 | 需要的语言 | 事实和证明归属 |
| --- | --- | --- |
| Theorem 7.1；`thm:126survives` | 标准 h₆²、同一内部 NonzeroSurvival | T 不变；最终证明未完成 |
| Proposition 7.8；`prop:possibleh62` | C₃、C₄、C₅、d₁₂ 非零、永久存活 | 已在同一 D 上重述为待证 Prop；Main 推导 |
| Proposition 7.9；`prop:state5false` | 同一 C₃→¬C₅ | 已重述；Main 推导 |
| `lem:equistate4/5` | θ₅ 与 [U] 的不同同伦群、leading term 与更高过滤不定性 | 选择无关性待证；未用空的 ∀ 代替存在性 |
| BX Prop. 7.19、LWX `thm:bjmbx/rem:theta5choice` | 标准检测、实际 ηθ²、λ 商、cofiber total boundary、实际 2-torsion | 原始 BX/经典阶为 A；λ 规范化、任意选择和 synthetic 阶为 Main 推导，所需无 torsion/表格分析由 C/A 提供 |
| BHS A.1/A.8/A.9/A.11、LWX §3 | first quotient、三分次微分、永久/有限 cycle quotient、λ/ρ/δ、检测 | `DependencyTypes` 给出 DifferentialLiftInput、EInftyFormulaInput、EInftyCompatibilityInput、EInftyLabelAgreement；存在性/公式是 A，不能只给未关联同构 |
| Pstrągowski/BHS 提升三角 | 实际 ν、同调短正合、full lift、λ-torsion 比较、distinguished triangle | `SyntheticLiftInput D` 复用精确原输入；文献结果/几何实现为 A；不把任意 normalized lift 当指定三角分量 |
| Theorem 6.1 | 同一 f 的 finite/infinite extension、两类 crossing、普通 d 的次数 | `GeneralizedLeibnizLaw D`，Main 新工具 |
| Theorem 6.12 | 同一实际三角、normalized maps、tower suspension、模 Bᵣ 的结论 | `GeneralizedMahowaldLaw D`，Main 新工具；显式前提 `NormalizedTriangleCompatible` 绑定所选三个提升；该前提须由文献/比较证明提供 |
| Proposition 6.20 / Corollary 6.21 | 后页 cycles、shorter extension/nonliftable crossing | 明确的有限充分条件版本，Main；不能称为无限相容解存在 |
| `fact:theta5sqAF` 与 Prop. 7.8 证明 | 局部差分、全体潜在 target、过滤范围、λ-torsion、球→νtmf | 表格/穷尽性为 C；tmf Hurewicz 来源为 A；`detectorMap/DetectorInjectiveAt` 已用实际映射表达 |
| `fact:x1239`、`lem:x1239` | S/λ¹¹→S/λ⁹、V、α₁/α₂/α₃、实际 λ/η 作用和差值 | 已有对象/标签/检测/商映射足够表达；具体计算 C，构造和关系 Main |
| `fact:h02x1259`、`lem:toda2ext`、`cor:2ext125` | 三重 Toda 集合、sphere actions、过滤检测与所有不定性；S/λ⁹ 中 2-extension | 表格 C、Toda 通用法则基础引理、局部推导 Main。未知 d₅(Y) 没有设为零 |
| Lemma 7.16 的 Moss 步骤 | B∈E₂^(8,70)、完整 d₂ defining systems、E₃ 集合、π₆₂ 阶、π₁₂₅ Toda、两产品的 crossing、塔 residual injectivity | `ThetaBMossInput D` 表达原文需要的局部含义，非证明；指定 Massey 值/零不定性/no crossing 须另证；不保证任意括号成员都永久 |
| `fact:h1x1217`、`lem:nuext125` | actual Cν triangle、顶/底胞腔 E₂ map、悬移、Cν d₃、Mahowald/stretching | Cν 计算和标签对应为 C，ν-extension 为 Main |
| `fact:stem122`、Table `Table:Cnu126`、Prop. 7.9 最后反证 | same Cν Eᵣ 中的 nonzero target 与全部潜在 incoming sources/页数 | C 的有限穷尽性义务；未知不能当零，未导入 49 个辅助谱也不宣称已经认证 |

`Main/Axiom/Literature/Route/DependencyTypes.lean` 是这些输入的**类型绑定样例/入口**，
不是新增的全部 A/C 假设包。其每个谓词都有具体定义，无自由 `Prop` 字段。
`HopfBindings` 还明确地把经典 η、ν 的 h₁/h₂ 检测与工具所用的 normalized η
连接到 C₅ 中的同一个 synthetic η；名称相同不构成识别。

## 关键 statement 的准确内容

`Conditions/Predicates.lean` 中：

- `C3` 是 d₆(W)=0，W∈E₂^(8,134)，目标 (14,139)，要求实际 E₆ 代表。
- `C4` 是存在 θ∈π_(62,64)，标准 h₅² 检测 θ，θ² 被 λ⁶U 非零检测；
  U∈E₂^(10,134)，synthetic 次数 (10,134,128)。
- `C5` 是存在被 U 非零检测的 u∈π_(124,134)，λ³ηu 被 λ⁶T 检测；
  T=h₁h₄x₁₀₉,₁₂∈E₂^(14,139)，synthetic 次数 (14,139,133)。
  按 Remark 7.12，C₅ 单独不强加目标非零。
- Proposition 7.8 的两个排他分支与 `D12 ↔ C3 ∧ C4 ∧ C5`、
  Proposition 7.9 的 `C3 → ¬ C5` 均为 Main 中的待证命题定义。
- `permanent_of_propositions` 已证明二者蕴含 `PermanentH6Square`。
  此条件结论特化后与唯一 T(M) 按定义相同；没有新增另一版 Final。

## 冻结验收与未完成事项

冻结不覆盖整个仓库的历史原型或所有阶段包；旧 `NormalizedPageFamily`、
单 Carrier 的 choice 原型可以继续服务其他已有引理，本路线不使用它们来
解释 C₃/C₄/C₅ 或新工具。已删除旧 `Near126Adams`、`ChoiceConditions`、
`AnyChoiceCriterion` 的自由谓词中间接口。

当前验收分别检查精确命题、对象来源、数据解释、来源适用条件、类型接线与证明责任。历史的 3227 jobs、1321 个 Blueprint 声明和旧总包边界检查不适用于本次重构。当前已经删除旧总包公理和对应最终占位 Solution；新标准 Final Challenge 仅导入 Def，条件 Solution 明列同一 A/C 与范围前提。实际 Final Solution 已通过 sourceRealization 和 acceptedInputs 接合这些前提，外层组装没有新增 sorry，但模型与内部引理仍有证明债。

本次新增模型、比较和内部论文引理有明确的 `sorry` 证明债；不再沿用“新增路线无 sorry”的历史结论。当前固定工具链的全库编译、声明一致性和数据检查结果见本次重构报告。编译不证明模型来源完整，也不认证计算输出。

上轮的两项来源阻塞已补具体声明：ordinary derived smash 与张量/悬移/内 Hom 的混合方块绑定到 standardRealization；synthetic 来源与同一 D/ν/BHS/tmf、preferred sphere pairing、真实悬移和有限商边界绑定到 SourceModel。sourceRealization 给出同一 CS/TS 上的构造目标。模型构造、计算认证和 §3–7 证明债单独记录，不作为本阶段必须消除的 sorry 清单；最终审查结论见本轮报告。

## 本次语义修正与责任

- `Mod2Cohomology H n X` 使用负悬移 `Σ⁻ⁿX → HF₂`，和通常 Hⁿ(X)、UCT 同一约定。πₙHF₂ 的 F₂ 模结构另由 `mod2HF2HomotopyModule` 提供，避免把同伦下标一起反转。
- `Def/Kervaire/Route/Multiplication/Operations.lean` 与 `Comparison.lean` 明确同一 λ 商 MonObj 乘法、球谱作用、cobar 乘法、检测和 associated-graded 的比较。它们没有指定局部乘积值；应用输入在 `AlgebraBinding`，不能作为源事实整体公理化。
- `Main/Solution/Route/Conditional.lean` 陈述 A/C 到关键命题和同一个标准 T 的责任；一般消失线及经典 Adams 过滤分离性保留为具名范围/结构前提。
- `(125,130)` 仅需要 λ 的单步注入，不能把未排除的 d₁₂ 分支对应的高幂 λ-torsion预先消掉。其他所需次数的全幂注入单独陈述。
