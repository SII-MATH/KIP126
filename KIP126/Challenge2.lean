import KIP126.Interface.Solution.StageInput.StandardSphere.Route.Data
import KIP126.Def.Synthetic.EInfty.Presentation.Predicates
import KIP126.LinProgram.Generated.Differentials.Table
import KIP126.LinProgram.Generated.Staircase.Table
import KIP126.LinProgram.Interpretation.State.Data
import KIP126.Def.SpectralSequence.Computation.State.Predicates
import KIP126.Interface.Solution.StageInput.StandardSphere.Sequence.Data
import KIP126.Interface.Solution.StageInput.StandardSphere.Classes.Data
import KIP126.Def.AdamsE2.LinClasses.Data
import KIP126.Def.AdamsE2.LinBasisTable.Predicates
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.Data
import KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data
import KIP126.Interface.Solution.StageInput.Milnor
import KIP126.Def.Kervaire.Theta5.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data
import KIP126.Def.Synthetic.EInfty.Shift.Predicates
import KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data
import KIP126.Def.ClassicalAdams.Suspension.Predicates
import KIP126.Def.Synthetic.PageExtension.Crossing.Predicates
import KIP126.Def.Synthetic.PageExtension.Solutions.Data
import KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data
import KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data
import KIP126.Def.ClassicalAdams.Moss.Statement.Predicates
import KIP126.Def.ClassicalAdams.Tmf.Model.Data
import KIP126.Def.ClassicalAdams.Tmf.Model.Predicates
import KIP126.Def.ClassicalAdams.SphereMultiplication.Data
import KIP126.Def.Steenrod.MilnorExt.Resolution.Data
import KIP126.Def.Synthetic.Bockstein.Hom.Data
import KIP126.Def.Synthetic.QuotientFunctor.Data
import KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates
import KIP126.Def.ClassicalAdams.Completion.Predicates
import KIP126.LinProgram.Interpretation.Branch.Predicates

import KIP126.Def.Kervaire.Route.Extensions.Data
import KIP126.Def.Kervaire.Route.Hopf.Data
import KIP126.Def.Kervaire.Route.Conditions.Predicates
import KIP126.Def.Kervaire.Route.Massey.Predicates
import KIP126.Def.Kervaire.Route.Toda.Predicates
import KIP126.Def.Synthetic.Computation.Predicates
import KIP126.Challenge1
import KIP126.Def.Kervaire.Route.Labels.Tmf.Data
import Mathlib.CategoryTheory.Adjunction.Additive
import KIP126.Def.Kervaire.Route.Multiplication.Comparison
import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data
import KIP126.Def.StableHomotopy.FiniteType.Predicates
import Mathlib.CategoryTheory.Monoidal.Mon
import KIP126.Def.Kervaire.Route.Triangles.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data
import KIP126.LinProgram.Interpretation.Route.Predicates
import KIP126.Def.References.Literature.Claims

/-!
# Challenge 2：Interface → Main 的接口定义与数学进度清单

M 是 Def 中的数学对象，本文件仍绑定同一个 Challenge1 固定见证。
`LiteratureInterface` 汇集文献结论，`ComputationInterface` 才是 C(M)；
`ModelBindings` 单列共同模型上的项目比较，不能把这些比较归为外部 A(M)。
两组由同一个 Challenge2 见证交付，不表示全部数学义务已经证明或冻结。

范围依据：[接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138)，
2026-09-28 修订正文优先于历史清单；保留 `am1`–`am16`、`cm1`–`cm6`
编号追踪数学工作，不要求各项都成为总包字段或外部 A(M)。
当前 Lean 总包包括 `cm1` 的有界 presentation 与实际 E₂ 基坐标、`cm2` 的表真实性陈述、
`am12` 的一线／May 陈述、同一基础上 `am8/am15` 的球面 Moss 交付组、
`am16` 与低／高维 Kervaire 文献共用的几何模型及来源字段、
`am14` 的 tmf 微分/单位/乘法切片，以及 `cm5` 的固定球面 staircase 状态。
`cm1/am4` 的 `SphereMultiplicativeInterface` 另将有界球面 product 与单位
绑定到实际 Adams 层乘法和同一 presentation。
`am9` 的 `CobarDerivedExtComparison` 固定实际分次右余模的导出 Ext 端、
规范 cofree 分解公式及每个 cocycle 的 `extMk` 比较。
路线接线更新：`ModelBindings.route` 保存同一 Challenge1 路线模型的项目比较与
来源适用条件；`LiteratureInterface.route` 与 `ComputationInterface.route` 交付其
A(M)、C(M)，共享 η、路线/tmf 标签。detector/tmf 的对象、单位和乘法比较以及
路线球谱解释/presentation 的有界相等均为显式 Interface 生产义务。
以下历史 am/cm 条目仍保留各子构造的证明状态；“已入包”只表示交付类型已关联，
不表示整包构造、全数据认证、文献适用证明或 Main 论文推导已经完成。
清单中的“未入包”不是额外假设，也不表示相应领域完全没有已有证明。

阅读规则：**陈述状态**与**实现状态**分开记录。已有精确 Lean 类型可以尚未证明；
有局部证明也不等于完整接口已冻结。已有对象足以表达的命题应直接写成准确接口，
不以缺少现成 theorem 为由推迟陈述，也不以任意 `Prop`、`True` 或自由选择的操作
补齐字段。本文路径均相对于 `KIP126/`；`../KIPBase/` 指历史实现，其具体接口
可作为迁移依据，但不能直接导入其中的全局 axioms 作为当前阶段的证明。
TODO 须区分前置定义缺失、已有类型尚缺模型绑定、陈述完整但证明未完成。
条件性接口已经可写不等于固定实例已交付；允许性质证明暂留 sorry，不能以
未约束的对象或操作代替尚缺的实际定义。共同数学对象仍在 `Def/`；本文件集中项目交付结构与谓词，不复制一般数学定义、
生成数据或证明。每个已入包字段都必须使用同一个 presentation。

## 历史 am 索引：通用数学、项目比较、本文中间结论与外部定理

A(M) 仅限其他论文的外部定理，保留来源、前提、范围与证据。下面逐项标注
数学角色；不因使用内部 M 且不是程序输出，就把通用性质或本文工具列为外部
输入。现有总包字段按消费者逐步审核，不能仅按旧编号继续扩包。

- `am1` 内部页面、代表元与永久存活 calculus。
  角色：通用内部页面与代表元性质，不属外部 A(M)。
  陈述：本文件 `PageCalculus`、`RepresentativeCalculus` 明列相邻页同调、d²=0、
  E₂ 共同代表元、boundary⇒cycle 及非零微分两端存活条件。
  实现：`Interface/Solution/InternalPages.lean` 复用 Def 的实际定理完成上述
  派生交付；不用总包新增一份可独立选择的页面或证明假设。
  `PaperCycleCalculus` 另明确论文 Z₁=E₂、B₁=0、Z_(r−1) 与实际 r 页代表元
  的等价及 E₂ 无 crossing；其证明同在 `InternalPages.lean`。
  `Def/ClassicalAdams/PageRepresentatives/` 通过实际初始商映射定义这些子模，
  没有把第一微分 kernel 的 raw ambient 冒充 E₂。
  待补：其余 E∞ 代表与 NonzeroSurvival 的完整交付逐条接入，不能把这一组
  有限页定理误报为全部永久存活 calculus 已完成。

- `am2` Adams 塔页面、微分与存活语义。
  角色：实际 Adams 塔与内部页面的项目比较，不属外部 A(M)。
  陈述／实现：`Def/ClassicalAdams/TowerSSData/` 下已有页面同构
  `Page/Data.lean` 的 `adamsTowerSSDataPageIso`、微分比较
  `Differential/Proofs.lean` 的 `adamsTowerInternalD_comparison`、下一页关系
  `PagePassage/Proofs.lean` 的 `adamsTowerSSData_next_relation`，以及
  `Permanence/Proofs.lean` 的 `adamsTower_nonzeroSurvival_iff` 和
  `adamsTower_nonzeroSurvival_iff_compatible`。这些定理已经使用同一实际塔。
  接入：将这些完整签名列为派生交付；固定球面特化见
  `Main/Solution/Computation/Vanishing.lean`，无需另选一套页面或存活代表元。

- `am3` 内部谱序列映射与 Adams 自然性。
  角色：通用自然性与固定映射绑定，不属外部 A(M)。
  陈述：`MorphismCalculus` 明列由同一环境映射诱导的页面／E∞ 恒等、复合、
  微分相容、共同代表元与微分等式的传递。
  实现：#132 的任意页面映射漏洞已修复，`Interface/Solution/InternalNaturality`
  从 canonical quotient map 的真实定理组装；普通映射不因此保持非零。
  待补：固定 i、q、tmf 与 cofiber 的实际态射、Adams 自然性和各项具体绑定。

- `am4` 内部乘法、配对、作用与 Leibniz。
  角色：通用配对性质及计算坐标与实际乘法的比较，不能统称外部 A(M)。
  已入包切片：`SphereMultiplicativeInterface` 在 t+t′≤261 范围量化全部
  actual second-cycle 代表元，要求 product 等于实际 sphere-layer 配对的商类。
  输出 cycle 的底层由 `adamsSphereE1Product` 固定；存在量词只承载 cycle
  闭合性，不另选运算。坐标单位同时绑定到球面恒等的实际 E₂ 类。
  陈述：同一 presentation 上的 `LinE2Presentation.SecondDifferentialLeibniz`
  已有精确类型，见 `Main/Solution/Computation/LinProgram/Interpretation/Differential/Predicates.lean`；
  本文件的 `comparison_mul` 不提供这个额外条件。
  实现：`Def/ClassicalAdams/TowerLongLayer/Pairing/Leibniz/` 已定义
  `RelativeBoundaryFormula` 并证明 `relativeBoundary_iff_leibniz`；
  `Pairing/Internal/Leibniz/Proofs.lean` 的 `internalD_of_relativeBoundary`
  已把该条件连接到实际内部微分。
  接入：先将这些依赖同一配对／presentation 的准确条件公开，调整定义归属以避免
  Challenge2 自引用；证明所需相容条件，并逐项补各页乘法、作用、结合、单位与自然性。

- `am5` 收敛、E∞ 检测和 λⁿ 截断传递。
  角色：通用收敛语言与模型保证；引用的外部收敛定理须单独标明。
  陈述／实现：`Def/SpectralSequence/Convergence/` 已提供 `Convergence`、`Detects`、
  `ConvergenceMorphism` 的精确内部接口及检测性质；`Completion/`、`Truncation/`
  （同在 `Def/SpectralSequence/` 下）已有完备化与截断基础。
  接入：用这些现有类型表述固定 sphere、Cν 和内部 synthetic 对象所需的实例，
  保持滤过及 E∞ 比较相关；待完成的是实际收敛、完备分离和 λ 商传递的见证与证明。

- `am6` extension SS、page extension 与 crossing calculus。
  角色：通用 ESS／extension 定义与内部 calculus，不属外部 A(M)。
  陈述／实现：`Def/SpectralSequence/BoundedExtension/SpectralSequence/` 已有
  E₀ 同构与 `d0_eq_inducedAssocGradedMap`；内部 crossing 与 square compatibility
  已在 `Def/SpectralSequence/{Crossing,Commutativity}/` 中定义并有局部证明。
  历史接口：`../KIPBase/Synthetic/PageExtension.lean` 已定义
  `FinitePageExtension`、`InfinitePageExtension`、完整 target coset 与 crossing，
  并证明 `essential_iff_zero_not_mem_classicalTargetCoset`；`SolutionTower.lean`
  （同一历史目录）已有 `ESSSolutionWitness` 和 `FiniteESSSolutionSystem.CoherentTower`。
  接入：迁移这些具体接口并绑定当前内部对象、λ 商及同一收敛见证；核查其前提，
  补实际实例与 coherent limit 的存在性，不能把已定义的塔误作塔已有成员。
  已核出的历史缺陷：λ 改变 weight，不能作为固定 weight 的 ESS ambient 自映射；
  paper Z_(r−1) 对应 raw stage r−2 再取初始边界商，不能直接使用 raw Z_(r−1)。
  `Def/Synthetic/{NormalizedMap,ExtensionSS,PageExtension}/` 已定义实际
  normalized lift、同一映射的 ESS、固定比较家族及有限／无限 page extension。
  λ-scaled target 通过真实较小商到较大商的 λ 映射定义；target coset 为实际
  ESS boundary coset 的逆像。`PageExtension/Crossing/` 已定义同一家族的有限／
  未截断 crossing，同时要求较短扩张 essential 且不属于指定经典边界。
  `PageExtension/Ambiguity/` 从实际较短扩张目标生成 shorterImages，并在精确
  kernel 与 image 等式下证明 boundary 加 shorter-image 的完整陪集公式及
  essential 判据；这些范围集中于 `PageExtensionAmbiguityInterface`。
  现在已用实际 top-class 双射与同一 E∞/shift 比较构造规范目标比较，并证明其
  kernel 恰为经典 boundaries；`PageExtensionTargetComparison` 精确记录原比较
  与这些代表元的关系。规范目标版本的陪集公式只剩 shorter-image 比较输入。
  全 weight presentation、实际映射相容与 shorter-image 见证仍待构造，
  不能把条件性公式写成无条件完成。
  `FilteredComplex/Solutions/` 已定义固定两端标签的严格代表元解纤维、真实差群、
  仿射坐标及实际滤过链映射诱导的限制；在投射测试对象上，解纤维非空与原
  differential relation 双向等价。`PageExtension/Solutions/` 已将该等价绑定
  同一家族的有限商及未截断 ESS，因而解空间不再是自由指定的数据。
  `Solutions/Coset/` 进一步证明完整 target coset 中的标签，恰是同一源标签
  下解纤维非空的那些目标；固定标签解纤维与全部目标标签仍是不同对象。
  `PageExtensionRestrictionFiltration`、`PageExtensionRestrictionLabels` 明列
  实际 ρ 保滤过及经典标签的比较图，并由此构造 `restrictFiniteSolution`。
  `CoherentPageExtensionSolutions` 固定同一永久标签在各有限商上的实际解和
  相邻限制相容性。`Interface/Solution/CoherentPageExtension` 已从指定初解及
  相邻实际限制的满射性构造保留初值的相容塔。`Solutions/AffineRestriction/`
  已证明：给定后期基点，严格解限制满射等价于实际齐次差群映射满射。
  `Interface/Solution/FiniteCoherentPageExtension` 另从各层真实解纤维有限且非空
  构造某个相容塔；这一分支无需限制满射，但不保留任意指定的初解。
  `Solutions/Finiteness/` 证明严格解由源代表元决定，从而实际源同伦群有限
  已足够保证纤维有限；滤过有界不能替代该基数有限性。
  实际 λ–ρ–δ 三角进一步将有限商同伦的有限性归约到一阶商的有限个 weight。
  给定 `FirstQuotientHomotopyComparison`、经典 E₂ 对角线有限及各层有解，
  可由此构造相容塔；该比较、E₂ 有限性的模型证明与未截断恢复仍须提供。
  两个比较条件的模型见证、所需满射性和 coherent limit 比较仍未交付。
  当前 ESS 构造要求逐次数滤过有界；“无限”只指未取有限 λ 商，不表示已处理
  任意无界 Adams 滤过。一般情形还须接入 `UnboundedExtension/` 及其收敛条件。

- `am8` Moss：Toda/Massey 到内部页面检测。
  角色：外部 Moss 定理与项目内部配对、检测比较须分开记录。
  陈述：`../KIPBase/multiplicativeSS/Moss.lean` 已有 `MappingAdamsTower`、
  `Moss.Statement` 和 `Moss.SphereStatement`，精确联系历史内部页面的 Massey、
  永久性、检测与 Toda；这是待证命题，不是 Moss 的证明。
  实现：同一历史目录的 `AdamsMasseyProduct.lean`、`AdamsDetection.lean`、
  `MossCrossing.lean` 已分别定义 `Relation`、`DetectsAbutment`、`ForProducts`；
  当前 Toda 关系在 `Def/StableHomotopy/Toda/`，来源在 `Def/References/Literature/Claims.lean`。
  接入：以当前实际 Adams 对象及收敛数据替换历史全局选择，迁移这组签名并验证
  Moss crossing 方向、次数与文献条件；near-126 的具体推论仍留给 Main。
  已补前置：`Def/ClassicalAdams/Moss/{Mapping,Convergence,Detection,Crossing}/`
  绑定实际 ihom(X,Y) 的 Adams 塔、塔像滤过、共同 Z∞ 代表元及稳定映射检测；
  检测给出实际塔提升的定理已证明，无历史全局 axiom。
  `Moss/Composition/` 已用实际内部复合构造各层及 first-layer 复合，证明零层、
  层投影与两侧塔过渡公式；右过渡显式需要 `UnitFiberInclusionCommutes`。
  `TowerLongLayer/Pairing/Mixed/` 已提供三个不同谱的循环／页面配对下降及唯一性，
  长度一的实际复合配对已构造；它是第一商页，不能冒充内部 E₂。
  `LongLayer/Boundary/` 已从实际 tensor triangle 的正合性证明两侧边界分解；
  `LongLayer/Two/` 给出长度二提升的具体障碍，并证明提升存在当且仅当该障碍为零。
  `CoefficientCycles/` 用实际单位三角和环的单位分裂证明：第一层边界的核
  恰是两个单位插入的等化子，且指定系数乘法保持该核。这对任意测试对象成立。
  `LongLayer/Two/Vanishing/` 据此证明长度二障碍全局为零并构造实际提升；
  显式保留 tensorLeft H 的 exact／shift 结构及单位自然变换的 shift 相容。
  `LongLayer/Two/Pairing/` 将提升接到指定 firstComposition，并证明长度二
  cycle 闭合；`Two/Cycles/` 给出这些循环上的实际双线性复合。
  `Layer/Boundary/` 已证明右输入来自 tower 时的实际左 δ 公式；
  一般 cycle 不必来自 tower，不能据此断言已经下降到 E₂ 的边界商。
  长度一般时仍只有精确的提升充要条件；所需提升及完整两侧边界相容尚未构造。
  `MossInterface` 现已列出受实际长层代表元约束的配对、Leibniz、
  相邻页和结合律、同一塔像滤过的收敛与检测、完整 Massey 不定性 coset，
  以及两个 product 谱上的 weak convergence／Moss no-crossing 判据。
  `PageMassey.Relation` 使用 E_(r−1) 的 defining system，范围 r≥3；
  不冒充 E₂ cobar Massey。`StandardSphereMossInterface` 的存在性已在
  Interface 两条轨道陈述，基础和 ring 固定为同一 Challenge1。
  Leibniz、收敛复合相容与配对见证的构造仍是独立证明义务。
  右过渡的现有路线需上述条件或对应 connectivity 证明；
  braided successor 与 ordered successor 的边界也不能默认相同。
  ihom(X,Y) 的塔与对 Y 的塔取映射需比较，
  不能默认为相同。原始 Moss 全文仍缺；weak convergence 与 crossing 范围
  已对照 Belmont–Kong arXiv:2112.08689v2 Definitions 2.3–2.4。
  映射球面与既有 sphereAdamsData 的实际比较及整组构造／证明仍需完成。

- `am9` Adams E₂＝cobar/Ext 及标准 hᵢ。
  角色：cobar／Ext／内部 E₂ 的项目比较和通用代数，不属外部 A(M)。
  陈述／实现：`MilnorCohomology` 已定义真正的 F₂ ker(d)/im(d)，包括 s=0
  的零入射边界、代表元零与相等的充要条件及 h₆² 的非零证明。
  本文件 `standardHi`、`standardHiSquare` 由同一 Milnor cocycle 和实际塔商
  构造完整内部标准族，不是任意命名元素；i=6 与原指定类相容。
  `CobarE2Comparison` 要求比较逐一保留实际 cocycle 的内部类。
  `CobarCupCalculus` 明列实际下降 cup 的代表元公式与标准平方等式；
  cup 的双线性构造和这两条公式已由 Leibniz 与商的泛性质证明。
  实际 E₂ 比较及规范 cocycle 公式已证明，包含 s=0；派生交付位于
  `Interface/Solution/Cobar.lean`。
  一般 cobar d²=0 当前使用 a03 的坐标相容性派生，Lin 比较留在 cm1。
  Ext 端前置已补：固定 Milnor 多项式余代数、真实整数分次右余模范畴、
  Cauchy 张量平移、平凡对象及 Mathlib 导出局部化的 `Ext^s(k[t],k)`。
  Abelian／线性结构由实际余模和 (co)limit 构造组装，必要性质证明可暂留 sorry。
  已入包 `CobarDerivedExtComparison`：同一个 cofree 分解的项、微分、增广
  都有实际多项式公式，每个 cocycle 的像必须等于其固定代表的 `extMk` 类。
  `internalEquiv` 只复合既有 cobar/E₂ 比较，不另选页面等价；生产证明未完成。
  实际 Yoneda 乘法现已在 `GradedComodule/Ext/Multiplication/` 构造，固定
  Milnor 特化位于 `MilnorExt/Multiplication/`；它由平移后 Ext 类的实际复合
  定义，所依赖的平移性质仍待证明。`GradedDual/` 已定义同次数对偶的卷积代数。
  左模端现已在 `MilnorModule/` 固定：同一卷积代数、coaugmentation 上求值
  的增广、实际平凡左模及 `Ext^s(k,k[t])`。`Antipode/` 递归构造 Milnor
  共轭；右余模的同次数对偶先给右作用，再由该共轭转为左作用，构成实际
  反变函子。系数识别在相同 t 次数上求值，不把 t 改成 −t。
  `MilnorModule/Resolution` 对既定 cofree 分解逐项对偶；
  `Comparison` 要求比较保留全部 cocycle 的实际 `extMk` 代表，存在性待证。
  这些通用陈述留在 Def，不按历史 am9 编号新增 A(M) 或总包字段。
  余下包括实际内部页面乘法相容性及左模 Yoneda 相容；加法比较不替代它们。
  一般谱的 unit-insertion coaction、参数化 Künneth 及其条件性余结合已有；
  缺的是到固定 MilnorCoalgebra/Cauchy 右余模的桥及同一模型上的见证，
  不能把这些已有定义再次记作完全缺失。

- `am10` 内部 classical–synthetic catalogue coherence。
  角色：项目 classical–synthetic 比较，不属外部 A(M)。
  陈述／实现：`Def/Synthetic/AdamsSequence` 与 `Def/Comparison/ClassicalSynthetic`
  已改为内部 M。`SyntheticAdamsFamily` 的 νX、λⁿ 商和商投影是同一家族在实际
  对象／映射上的取值；ν 的 unitIso 给出相同家族中的球面同构。
  本文件 `NuComparison` 将 comparison 的 classical 端锁定为实际 Adams 塔。
  有限页与 E∞ 比较图都由同一循环／边界环境映射诱导。
  待补：构造该 family 及比较、λ 的重分次识别、乘法、检测和截断相容。
  尚无这些见证的存在性证明；不新增内部 M 与 Mathlib 谱序列比较义务。

- `am11` synthetic rigidity、E∞ 公式与 λ-Bockstein。
  角色：外部 BHS 公式与项目模型比较须分开，本文加强不冒充外部结果。
  陈述：本文件 `SyntheticEInftyPresentation` 使用同一内部 F，明确 νX 的
  Z∞/B_(1+t−w) 与有限商的 Z_(q−t+w)/B_(1+t−w)，范围外为零。
  A.11 的 q≥2 与 q=1 special fiber 分开交付；固定模型的来源陈述位于
  `LiteratureInterface.route.synthetic`，仍需显式提供比较数据。
  `SyntheticEInftyMapCompatibility` 固定真实 λ、ρ、商投影与规范子商映射的
  交换等式，λ 降低 weight、增加 boundary cutoff，ρ 保持 weight、包含 cycles。
  规范子商映射的单满射已证明；由模型相容性推出实际映射的单满射属派生交付。
  `FirstQuotientHomotopyComparison` 另明确实际一阶 λ 商的全部双分次同伦
  与同一经典 E₂ 的比较，保留 normalized source 所需 weight shift。
  两端对象均已定义；缺口是该同构的模型见证及其与 λ、shift、商映射的相容证明，
  不能把已有 `specialFiber` 的 E∞ 比较当作此同伦群比较。
  绑定／证明缺口：presentation、shift comparison 及其相容性见证。
  有限部分已有实际 β_q、ρ 和同伦映射：`FiniteLambdaBocksteinInterface`
  以同一一阶商比较陈述 Z_q 的 λ^q 商提升及 β_q 对应 d_(q+1)，
  保留 BHS A.1 的 E-nilpotent completeness、实际 Adams 塔强收敛、
  负号及合适提升的存在量词；来源 wrapper 为 `SyntheticBockstein.lean`。
  强收敛使用实际 πX 上塔映射像的完备、Hausdorff 过滤及其 associated graded，
  不以 eventual-page stabilization 加强原文前提；这些性质仍待证。
  实际 λ residual tower 已经由通用 `TowerSpectralSequence.sequence` 构造
  E₁-based SSData、核像商页面及 J(lift K) 微分，再由
  `Synthetic.Bockstein.normalizedAdamsSS` 重标为 E₂ 起始、微分次数 (r,r−1,0)。
  所用三重次数关系为 (k,n,w)↔(w+k−n,w+k,w)，保留第一个微分与负次数常值尾。
  定义性质仍待证；没有把现有 classical Z₂ ambient 构造直接改标签使用。
  前置／绑定缺口：实际 tower layer 与移位一阶 λ 商的相容识别、同一 Q 的
  初页代表图、与既定 synthetic family 的逐页及后继同调比较，及 finite rigidity。
  有限提升接口与现有 E∞ shift 均不替代这些比较；未新增总包字段。
  历史 `lambda_bockstein_start_page` 仅断言 r₀=2，不能代替 comparison；
  `KIPBase/Synthetic/Rigidity.lean` 的所有负 weight 消失与反向 weight 商映射
  不沿用。a10/a11 的已有 cofiber／triangle lift 还需接到同一内部页面。

- `am12` Adams one-line 与低维永久性输入。
  角色：外部 Adams／May 结果及低维永久性的内部推论须分开。
  陈述：`AdamsOneLineInterface` 已入总包，明确全部一线次数、唯一非零 hⱼ、
  j≤3 的非零永久存活与 j≥4 的非零 d₂(hⱼ)=h₀hⱼ₋₁²。
  May 的 h₀h₂、h₀h₃、h₂h₄ 及 j≤3 的 hⱼ² 非零永久性也分别列出。
  所有类由同一 Milnor cocycle、实际 cup 与实际内部 E₂ 比较构造。
  `Interface/Solution/AdamsOneLine.lean` 已陈述七个交付，
  新增证明均暂留 `sorry`；MainPaper:146 的方向笔误修正为 j≤3。
  `LowDimensionalSquarePermanence` 另使用内部 h₄²／h₅²；
  `Interface/Solution/LowDimensionalPermanence` 已从显式 a14 与 Browder 输入推出它。
  May 原始全文尚未取得，目前范围定位为 MainPaper:157–159；实际同伦检测仍需接入。

- `am13` 原始 BJM/BX 与 θ₅ 输入；本文变换单列。
  `Def/Kervaire/Theta5/Synthetic` 已按实际 BiHom、cofiber 商和同一内部塔的标准
  h₅²/h₁/h₆² 定义检测、乘积、δ₁ 与精确有限页条件。`BJMOriginalCriterion`
  使用 ηθ₅² 在 S/λ^r 中为零；`BJMNormalizedFiniteCriterion` 使用 λη 与 r+1。
  第一商比较由 Def 的 `FirstQuotientHomotopyComparison` 提供；球面特化通过
  同一 ν unit iso 和 cofiber functor 传输，不另外选择第二份比较。
  `Def/References/Literature/BJMOriginal` 只给显式 proof 添加 BX Proposition 7.19 来源。
  尚未构造 canonical 比较及 η 的几何识别，也未证明 λ 变换、原始 BX 或任意选择版。
  `Theta5ChoiceContext` 和旧 `BJM_BXCriterion` 保留为代数传输原型，不能冒充上述实际模型。
  synthetic order/choice 与混合 order/torsion 包仍为 `projectDerivation`，不是 A/C 原始输入。

- `am14` tmf 检测与 BR21 微分。
  角色：外部 BR21 等结果及 tmf 模型、坐标与单位的项目比较。
  陈述：`TmfDifferentialInterface` 已入总包，BR21 的等式精确使用同一代数
  对象实际 Adams 塔的 (16,112)→(19,114) 微分；两个类由固定 CSV 商定义。
  `Tmf/Model/` 的 classical/E₂/synthetic Hurewicz 均由同一实际单位诱导。
  实现：固定 13 个生成元和 72 条关系已定义；w₂² 表示 v₂¹⁶，β⁵g 是
  固定商内的实际乘积，没有另设 v₂。目标对象与坐标比较仍需构造，
  `StandardTmfMultiplicativeInterface` 已将单位与乘法比较加入同一总见证：
  单位为 target.one 的实际 E₂ 类，乘法为 target.mul 诱导的实际层配对，
  条件量化全部 second-cycle 代表元。该比较的证明、θ₅ 的 tmf 像以及
  125-stem 检测仍未完成。
  `Def/References/Literature/Claims.lean` 的 `tmfDetection`、
  `br21TmfDifferential` 是来源条目，不是已构造的内部 theorem。
  TODO：把 Hurewicz 检测、θ₅ 的 tmf 像和 d₃(v₂¹⁶)=β⁵g 连接到同一内部对象与映射。
  后续模型义务：上述输入是参数化坐标实现，并非 tmf 的几何构造；不能把
  任意代数对象称作 tmf，来源的实际对象及其比较必须由生产端提供。
  固定档案中的 tmf basis.csv 为空，此定义不声明已有完整基认证。
  MainPaper 明指普通 Adams SS；不能由名字猜作 Adams–Novikov，也不能仅由
  符号 v₂¹⁶ 假设 E₂ 中存在一个 v₂ 元素并作第十六次幂。历史 KIPBase 未提供
  可迁入的 tmf 构造；只添加同名元素不能固定含义。

- `am15` Moss convergence 与 normalized Hopf detection。
  角色：外部 Moss／Hopf 检测结果与项目 normalization 比较须分开。
  陈述／实现：`Main/Solution/Literature/Near126/HopfCofiber/Fixed/Data.lean` 的
  `SphereHopfInput` 已将实际球面映射与 h₂ 的 filtration-one 表示条件一起打包，
  表示条件带 `ExternalEvidence`；历史 `../KIPBase/multiplicativeSS/Moss.lean`
  的 `SphereStatement` 是迁移的历史参考。当前 `MossInterface` 和
  `StandardSphereMossInterface` 已将相应陈述约束到实际内部塔、配对和滤过。
  接入：保留现有 Hopf 选择及证据关联，迁移 am8 的检测/crossing 签名并绑定同一
  球面、ν 与 cofiber；待提供的是实际输入、top-cell 等必要比较和 Moss 证明。

- `am16` Browder 的 Kervaire 判据。
  角色：外部 Browder 定理及实际几何／内部页面的项目绑定。
  陈述：本文件 `BrowderInterface` 将几何存在性对应到同一内部球谱标准 hⱼ²
  的 `NonzeroSurvival`，不再将永久性端留作任意谓词。
  实现：`GeometryModel` 固定几何对象、维数和 Kervaire 谓词；
  `GeometryLiteratureInterface` 在总见证内保留三个来源锁定的显式输入。
  固定其真实解释并提供适用的文献见证仍是 Interface 的生产义务。

## 原 am7 已移出：本文新工具的证明责任

广义 Leibniz、广义 Mahowald 和有限 page-extension stretching 的命题定义
位于 `Main/Solution/Tools/`，不属于前人 A(M)，也不加入 Challenge2 的见证字段。
所需页面、extension 和 crossing 的对象／谓词仍在 Def；尤其较短 extension
障碍谓词位于 `Def/Synthetic/PageExtension/Stretching/Predicates.lean`。
三个工具仍待模型相容性与论文证明，不能从任意 NormalizedPageFamily 推出。
程序验证若使用这些规则，应依赖独立证明的工具，不能与待认证的 C(M) 循环依赖。

## C(M)：Lin 直接输出的确定性解释

- `cm1` 固定 Lin E₂ presentation。
  陈述：下面 `LinE2Presentation` 的三个字段精确保留；同一总见证另以
  `sphereMultiplicative` 将有界 product 与单位绑定实际球面塔／层代表元。
  `SphereBasisInterface` 交付全部 s,t : ℕ、t ≤ 261 的实际 E₂ 坐标等价，
  逆像的单位向量经同一 presentation 拉回后等于固定 CSV 单项式。
  这精确陈述完整加法基、坐标与穷尽性；固定认证证明及全部直接乘法输出仍未闭合。
  实现：`LinProgram/Generated/E2.lean`、`Def/AdamsE2/LinModel/`
  保留 v126.3.cw49 数据；本包的 existence Solution 尚为 `sorry`。
  a05 已迁出 Challenge1；固定 CSV 认证在
  `Interface/Solution/LinProgram/BasisTable.lean`，证明仍为 `sorry`。
  `Interface/Solution/LinProgram/SphereBasis.lean` 从该辅助认证及显式 P 构造
  实际交付；Main 从同一个 Challenge2 见证取得坐标，恢复兼容的 Lin 基与维数。
  没有新增独立 axiom，也不直接消费 Interface 的认证证明。`computedH6`、
  `computedH6Square` 在 `Main/Solution/Computation/LinProgram/Interpretation/Classes/Data.lean`
  由比较机械定义，不新增任意同名元素。

- `cm2` 闭合球面有限页微分表。
  陈述：`HasCoordinates`、`DifferentialStatement` 与 `sphereTable_sound` 已精确入包；
  覆盖固定 `proofs.db` 的 10,907 条 `depth=0, name=S0` 闭合等式，不附加非零或存活。
  实现：`LinProgram/Generated/Differentials/` 与 `LinProgram/Translate/` 已接通
  记录到陈述；Interface 的数学真实性证明仍为 `sorry`。TODO：复演或验证全部已解释行，
  保持源、靶及微分始终使用同一 presentation。

- `cm3` 条件、分支与反证记录。
  陈述：参数化 `LinBranchInterface` 明确保留 T/TI 的条件反驳与 D/DI 的条件事实；
  实际等式使用内部微分，全部祖先假设必须一起解释。
  实现：`Interpretation/Branch` 按 id/depth 恢复 retained trial stack，保留完整
  raw/info；TI 的数据库度数是靶度数，缺祖先、未知坐标和 sentinel 不会静默转零。
  `CandidateCoverage/Elimination/Exhaustion` 精确量化窗口内所有二元线性组合，
  包括零；父 info 为空也可以通过对子候选的条件反驳表达推理。
  语义绑定缺口：固定对象/坐标字典、全部日志导入与 candidate snapshot/search-window。
  祖先条件、微分等式、候选覆盖与排除的参数化谓词已经定义。
  这些参数化陈述尚未冒充固定数据库的总包交付；原始程序删除不矛盾的试探，
  因而 retained rows 的计数不能证明候选覆盖，也不由非空 info 推出矛盾。

- `cm4` Cν、tmf、λ 商及 map/extension 输出。
  陈述：所选路线的 Cν 解释已由 `ComputationInterface.route` 关联；
  tmf 对象比较在 ModelBindings。全量 λ 商/map/extension 输出仍未统一交付。
  实现：`Main/Solution/Literature/Near126/HopfCofiber/` 是手写消费需求，
  不能算作 Lin 输出。前置解释缺口：现有 `Translate/import-proofs.py` 明确排除
  非 S0／extension 行；须扩展 `LinProgram/Translate/`，将每条直接输出
  连接到同一固定谱与映射，包括 D8、Cν 短入射排除的确切记录。

- `cm5` 程序 sentinel 与状态结论。
  陈述：`SphereStaircaseInterface` 已进入总包，使用同一 presentation 解释
  固定 `S0_AdamsE2_ss` 的全部 23,822 行；同时要求成功解码与数学真实性，
  不是只对成功解码者条件化。明确出射与入射各 7,893 条解释为实际微分等式；
  6,279 个未定出射记录解释为页提升，136 个未定入射记录解释为累计边界；
  1,621 个 level=9000 记录保留到 E₁₀₀₀ 的提升界限。
  这些状态本身不追加非零、精确 hit 或 E∞ 存活。后续若从页界限推全局永久性，
  必须另用实际谱序列的次数消失与收敛性质，不能仅用程序常数。
  实现：`Raw/Staircase`、`Generated/Staircase`、`Interpretation/State` 和
  `Translate/import-staircase.py` 已连通全部固定球面 snapshot；原始 NULL 保留，
  哈希、schema、全部坐标和范围检查不等于数学真实性证明。
  `Interface/Solution/LinProgram/Staircase.lean` 已陈述交付，证明暂为 `sorry`。
  `LinProgram/Raw/Data.lean` 另无损保留全部 log 11 列和 NULL，
  reason 解析保留 D/DI 的多来源，999/1000/1001 分开；
  `Computation/State/Predicates.lean` 明确永久循环、最终边界与有界窗口状态。
  固定源码 `cofseq.cpp:885–914` 对 boundary 或 zero 也返回 999/空向量，
  因而不能从此编码推出非零存活。其他谱/extension 的状态、log sentinel 的
  上下文解释，以及确有来源的非零/no-hit 陈述仍须逐项接入；不虚构这些输出。

- `cm6` 带范围的消失、维数与候选穷尽。
  陈述：程序直接输出的完整解释未冻结、未入包。
  实现：`LinProgram/Certificates/SquareDimension/`、`LinProgram/Certificates/SquareDetection/`
  已有局部实质证明，但它们是数据模型上的派生结果，不因此成为新程序输入；
  `Main/Solution/Literature/Near126/Sphere/Data.lean` 的事实包也是消费需求。
  语义绑定缺口：`CandidateWindow` 及覆盖／排除／穷尽谓词已定义，仍须绑定
  实际搜索时的基、first/count 窗口及全线性组合、谱、页、次数和搜索上界；
  有限窗口不外推到全局，缺失记录不解释为零。

## 已知依赖债务与检查口径

- 共享类型目前隐式绑定由 `Interface/Solution/StageInput.lean` 从
  `Interface/Axiom/Challenge1.lean` 唯一选出的同一见证：
  `Interpretation/Sphere → Literature/FixedSSData → Interface/Solution/StageInput/Foundation`。
  因而 import 本文件仍会引入 Challenge1 开发 axiom。未来显式参数化必须连同 sphere、
  presentation、微分谓词一起设计；本次不把固定见证命题加强为任意 `c1` 上的命题。
- a05 的 basis 消费链已移除 Main → Interface/Solution 导入，纯 CSV 认证留在
  Interface，Main 的实际坐标及兼容基 API 使用同一 Challenge2 见证。
  `Main/Solution/Computation/{Dimension,Nonvanishing}.lean` 仍直接消费已证明的
  Interface square dimension/detection 工具；本次不调整这些中间证明的复用位置，
  也不据 a05 迁移声称所有跨层依赖都已隔离。
- 文献由 `LiteratureInterface` 中绑定同一模型的字段携带；适用的
  `ExternalResult`、`ExternalEvidence` 及 catalogued wrappers 仍保留来源，
  清单不是新增无条件字段的授权。
- Blueprint 依据：`h6_statement.tex` 的 `thm:lin-e2-basis-certification`、
  `def:lin-e2-coordinates` 为 `notready`，`thm:lin-square-certified` 有 `leanok`；
  `comparison_and_rules.tex` 的 generalized Leibniz/Mahowald 节点为 `notready`。
  精确陈述、证明状态与 #133/#134 的语义缺口必须分别检查，不从目录名或编译成功推断完成。
- 两端继续直接陈述同一个 `Nonempty Challenge2`。生产证明位于
  `Interface/Solution/Challenge2.lean`；消费 axiom 位于
  `Main/Axiom/Challenge2.lean`，唯一 `Classical.choice` 位于
  `Main/Solution/StageInput.lean`。本文件只定义交付类型和谓词，不填生产证明。
-/

/-!
# Flat Challenge 2 statement support

The declarations below are the project-specific type language needed to state the
single `Challenge2` delivery package. They choose no stage witness and contain no
producer proof. General mathematics lives in `Def`; production and consumption
live in the adjacent stage trees.
-/

/-! Typed input language for the selected Section 7 route.
These definitions assert nothing and are not a frozen A(M)/C(M) checklist.
They show where the original source results and their precise local
specializations can be stated on the same model. In particular the paper's
new theorems remain in Main/Solution, not fields of Model. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Pstrągowski/BHS lifting and triangle conditions use this very ν.
This is the existing precise source interface, not a new assumed theorem. -/
abbrev SyntheticLiftInput := KIP126.Synthetic.SyntheticInterface H D.nu

/-- BHS A.9/A.11 formula data, with actual classical cycle/boundary quotients.
Their λ/ρ compatibility must accompany any supplied presentation. -/
abbrev EInftyFormulaInput := KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation H D.nu D.family
abbrev EInftyCompatibilityInput (P : EInftyFormulaInput D)
    (S : EInftyWeightShift D.family) :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyMapCompatibility H D.nu D.family P S
    (fun X => D.quotientTower (D.nu.functor.obj X))

/-- An E∞ formula must preserve the actual E₂ labels, in addition to
commuting with λ/ρ. This prevents supplying unrelated quotient isomorphisms.
Both finite and infinite formulas retain all classical boundary ambiguity. -/
def EInftyLabelAgreement (P : EInftyFormulaInput D) : Prop :=
  (∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ)
      (k : ℕ) (hk : k < q)
      (x : PageRepresentatives.cycles H (X.obj D.auxiliary)
        ((q : ℤ) - p.2 + (p.2 - k)) p)
      (e : ((D.family.nuQuotient D.nu (X.obj D.auxiliary) q).sequence.ssData
        (p.1,p.2,p.2-k)).eInfty),
    HasInfinityRepresentative _ 2 _ (finiteTargetLabel D X q p.1 p.2 k x.val) e ↔
      P.finiteWindow (X.obj D.auxiliary) q hq p (p.2-k) (by constructor <;> omega) e =
        KIP126.Algebra.NestedQuotient.projection _ _ x) ∧
  (∀ (X : ClassicalObject) (p : ℤ × ℤ) (k : ℕ)
      (x : PageRepresentatives.permanentCycles H (X.obj D.auxiliary) p)
      (e : ((D.family.nu D.nu (X.obj D.auxiliary)).sequence.ssData
        (p.1,p.2,p.2-k)).eInfty),
    HasInfinityRepresentative _ 2 _ (targetNuLabel D X p.1 p.2 k x.val) e ↔
      P.nuWindow (X.obj D.auxiliary) p (p.2-k) (by omega) e =
        KIP126.Algebra.NestedQuotient.projection _ _ x)

/-- BHS A.8 / LWX Theorem 3.6: the source λᵏx and target
λ^(k+r-1)y have the same weight. This is a law to supply from A(M), not a
map from the entire classical sequence to every synthetic weight. -/
def DifferentialLiftInput : Prop :=
  ∀ (X : ClassicalObject) (a s t : ℤ) (r k : ℕ), 2 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t)
      (y : E2 H (X.obj D.auxiliary) (s + r) (t + r - 1)),
    KIP126.Core.SpectralSequence.HasDifferential
      (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r
      (s,t) (s+r,t+r-1) x y →
    KIP126.Synthetic.SpectralSequence.HasDifferential
      (D.family.obj ((SyntheticCategory.biShift (0,a)).obj
        (D.nu.functor.obj (X.obj D.auxiliary)))) r
      (s,t,t+a-k) (s+r,t+r-1,(t+r-1)+a-(k+(r-1) : ℕ))
      (D.nuE2 X a s t k x) (D.nuE2 X a (s+r) (t+r-1) (k+(r-1)) y)

/-- Bind the geometric Hopf maps used by the tools to standard classes
and to the actual synthetic η used in C₅. These are explicit literature
identifications, not consequences inferred merely from the maps' names. -/
def HopfBindings (η : BiHom 1 2 (S_0_0 : Syn)) : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,2)
    (Sphere.Internal.hi H M 1) D.auxiliary.etaMap ∧
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,4)
    (Sphere.Internal.hi H M 2) D.auxiliary.nuMap ∧
  ∃ he : normalizedExponent H D.auxiliary.etaMap = 1,
    η = (etaSourceIso D he).hom ≫
      (D.normalizedMap (.shift 1 .sphere) .sphere D.auxiliary.etaMap).map ≫ D.nu.unitIso.hom

/-- The original distinguished-choice BX condition, before the LWX
normalization and arbitrary-choice deductions. BX Proposition 7.19. -/
abbrev BXInput (η : BiHom 1 2 (S_0_0 : Syn)) (θ : BiHom 62 64 (S_0_0 : Syn)) :=
  BJMOriginalCriterion H M D.sphereFirstQuotient η θ

/-- The actual Hurewicz map for the selected detector. In the chosen route
A(M) identifies its object/unit with tmf and supplies the required results. -/
noncomputable def detectorMap : (S_0_0 : Syn) ⟶ D.nu.functor.obj D.auxiliary.detector :=
  D.nu.unitIso.inv ≫ D.nu.functor.map D.auxiliary.detectorUnit

/-- Actual order-two statement used before Moss; no presentation of π₆₂
as an unrelated abstract group is substituted. Xu/IWX, cited by LWX 7.16. -/
def OrderTwo62 : Prop :=
  ∀ α : HomotopyGroup (C := C) 62 SphereSpectrum, α + α = 0

/-- The local sphere form of the Moss implication needed in LWX Lemma 7.16.
Source: Moss Theorem 1.2; crossing convention also IWX Definition 2.15 and
Theorem 2.16. No claim of zero indeterminacy is hidden in the conclusion:
there exists a permanent defining-system value detecting a bracket member.
The three detection and two null-composition hypotheses are explicit. -/
def ThetaBMossInput : Prop :=
  ∀ (B : E2 H SphereSpectrum 8 70)
    (θ β : HomotopyGroup (C := C) 62 SphereSpectrum)
    (two : HomotopyGroup (C := C) 0 SphereSpectrum),
    two = (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _) →
    TowerDetection.Detects (D.classicalConvergence .sphere) (2,64)
      (Sphere.Internal.hiSquare H M 5) θ →
    TowerDetection.Detects (D.classicalConvergence .sphere) (1,1)
      (Sphere.Internal.hi H M 0) two →
    TowerDetection.Detects (D.classicalConvergence .sphere) (8,70) B β →
    θ + θ = 0 → β + β = 0 →
    (ThetaBMassey M B).Nonempty →
    ¬ SphereMossCrossing (H := H) 3 (3,65) →
    ¬ SphereMossCrossing (H := H) 3 (9,71) →
    TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C)) →
    ∃ (z : E2 H SphereSpectrum 9 134)
      (ξ : HomotopyGroup (C := C) 125 SphereSpectrum),
      ThetaBMasseyDefiningSystem M B z ∧
      TowerDetection.Detects (D.classicalConvergence .sphere) (9,134) z ξ ∧
      ThetaBToda θ β ξ
end KIP126.Literature.Route


/-! Classical literature inputs on the frozen route's actual Adams tower.
These are explicit hypotheses, not instances or proved theorems. See
`docs/A_INPUT_FREEZE.md` for source locators and the scope of this package. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- A classical θ₅ means detection by the standard Milnor square, on D's
classical convergence. It is not identified with a CSV coordinate. -/
def ClassicalTheta (θ : HomotopyGroup (C := C) 62 SphereSpectrum) : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (2,64)
    (Sphere.Internal.hiSquare H M 5) θ

/-- BJM (1984), or Xu Corollary 1.3: an order-two θ₅ exists.
The nonzero-survival clause prevents a zero representative from fulfilling
existence merely because `Detects` permits a zero associated-graded class. -/
def Theta5Existence : Prop :=
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (2,64) (Sphere.Internal.hiSquare H M 5) ∧
  ∃ θ, ClassicalTheta D θ ∧ θ + θ = 0

/-- IWX's classical 62-stem computation: every element has exponent two.
Xu's existence of ONE order-two θ₅ alone does not imply this assertion. -/
abbrev Stem62ExponentTwo := KIP126.Literature.Route.OrderTwo62 (C := C)

/-- The exact part of IWX's Adams filtration calculation used in LWX
Lemma 7.10: two classical h₅²-detected choices differ in filtration ≥ 6.
This is a consequence of the PREVIOUSLY published 62-stem computation,
not the synthetic choice-independence lemma proved in the present paper. -/
def Theta5FiltrationGap : Prop :=
  ∀ θ θ' : HomotopyGroup (C := C) 62 SphereSpectrum,
    ClassicalTheta D θ → ClassicalTheta D θ' →
    θ - θ' ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 6 62

/-- Detection of the actual degree-zero multiplication-by-two map. Source:
the classical Adams 0-stem, with h₀ the standard Milnor generator. -/
def TwoDetection : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,1)
    (Sphere.Internal.hi H M 0)
    ((shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _))

/-- Adams' Hopf classes, including identification of the selected synthetic
η with the SAME normalized geometric η map. The equality is a model/source
comparison obligation; the name of `etaMap` alone proves nothing. -/
def HopfInput (η : BiHom 1 2 (S_0_0 : Syn)) : Prop :=
  EtaChoice M D.toModelData η ∧ KIP126.Literature.Route.HopfBindings D η ∧
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (1,2) (Sphere.Internal.hi H M 1) ∧
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (1,4) (Sphere.Internal.hi H M 2)

/-- The finite set of classical inputs consumed by the selected §7 route.
No h₆² differential or survival conclusion is a field. -/
structure ClassicalInputs (η : BiHom 1 2 (S_0_0 : Syn)) : Prop where
  theta5_exists : Theta5Existence D
  stem62_exponent_two : Stem62ExponentTwo (C := C)
  theta5_filtration_gap : Theta5FiltrationGap D
  two_detection : TwoDetection D
  hopf : HopfInput D η
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- BX Proposition 7.19 and its proof, at ONE common source choice.
All three clauses use that same θ₅ and the η fixed in `ClassicalInputs`.
The original finite formula uses ηθ₅² modulo λ^r. The total-boundary formula
and the untruncated iff are explicitly in the proof of BX Proposition 7.19.
The LWX normalization to ληθ₅² modulo λ^(r+1), and extension to arbitrary
choices, remain paper deductions; they are deliberately absent here. -/
def BXDistinguishedInput (η : BiHom 1 2 (S_0_0 : Syn)) : Prop :=
  ∃ θ : BiHom 62 64 (S_0_0 : Syn),
    BJMOriginalCriterion H M D.sphereFirstQuotient η θ ∧
    BJMSourceTotalBoundaryIdentity H M D.sphereFirstQuotient η θ ∧
    BJMUntruncatedCriterion H M η θ
end KIP126.Literature.Route


/-! BHS/Pstrągowski source statements specialized to the frozen ν and
sequence family. The statements are assumed explicitly for the selected
complete objects; no theorem about arbitrary abstract models is asserted. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

abbrev nuZero (X : ClassicalObject) :=
  (SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj (X.obj D.auxiliary))

/-- The fixed first-quotient label, only rewriting t+0=t. -/
def firstLabel (X : ClassicalObject) (s t : ℤ) (x : E2 H (X.obj D.auxiliary) s t) :
    BiHom (t-s) t (XModLambdaN (nuZero D X) 1) := by
  simpa using (D.firstQuotient (X.obj D.auxiliary) 0 s t).symm x

/-- Reindex the ACTUAL δ_(q,q+1) from D's quotient tower. -/
def bocksteinArrow (X : ClassicalObject) (q : ℕ) (hq : 0 < q) :
    XModLambdaN (nuZero D X) q ⟶
      (SyntheticCategory.biShift (1,-(q : ℤ))).obj (XModLambdaN (nuZero D X) 1) :=
  ((D.quotientTower (nuZero D X)).triangle hq (Nat.lt_succ_self q)).delta ≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).inv.app _ ≫
    (SyntheticCategory.biShift_comp (0,-(q : ℤ)) (1,0)).hom.app _ ≫
    eqToHom (by congr 1 <;> simp)

/-- Bockstein target in classical E₂. Its bidegree is (s+q+1,t+q),
so this represents d_(q+1), not an extension differential of stem zero. -/
def bocksteinLabel (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (a : BiHom (t-s) t (XModLambdaN (nuZero D X) q)) :
    E2 H (X.obj D.auxiliary) (s+q+1) (t+q) := by
  let b : BiHom (t-s-1) (t+q) (XModLambdaN (nuZero D X) 1) :=
    (susp_invariance (t-s-1) (t+q) 1 (-(q : ℤ)) _).symm
      (homotopyRegrade (by omega) (by omega) (a ≫ bocksteinArrow D X q hq))
  exact D.firstQuotient (X.obj D.auxiliary) 0 (s+q+1) (t+q)
    (homotopyRegrade (by omega) (by omega) b)

/-- BHS Theorem A.1(1): vanishing through d_q iff a lift to νX/λ^q
exists. Membership in Z_q permits a boundary or zero label; `SurvivesTo`
would incorrectly demand nonzero. All restrictions are D's actual ρ. -/
def FiniteLiftCriterion : Prop :=
  ∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t),
    (x ∈ PageRepresentatives.cycles H (X.obj D.auxiliary) q (s,t) ↔
      ∃ a : BiHom (t-s) t (XModLambdaN (nuZero D X) q),
        a ≫ (D.quotientTower (nuZero D X)).rho 1 q hq = firstLabel D X s t x)

/-- BHS A.1(1c): choose a lift whose boundary represents the differential.
The target is stated modulo the ACTUAL classical page boundaries by
`HasDifferential`; an arbitrary lift need not have this property. The sign
in BHS disappears in the mod-2 E₂ group, not in integral homotopy groups. -/
def BocksteinDifferential : Prop :=
  ∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t),
    x ∈ PageRepresentatives.cycles H (X.obj D.auxiliary) q (s,t) →
    ∃ a : BiHom (t-s) t (XModLambdaN (nuZero D X) q),
      a ≫ (D.quotientTower (nuZero D X)).rho 1 q hq = firstLabel D X s t x ∧
      KIP126.Core.SpectralSequence.HasDifferential
        (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
        (q+1) (s,t) (s+q+1,t+q) x (bocksteinLabel D X q hq s t a)

/-- BHS A.1(2): lift a permanent cycle through the untruncated νX.
This is not an assertion that every E₂ label is a permanent cycle. -/
def PermanentLiftCriterion : Prop :=
  ∀ (X : ClassicalObject) (s t : ℤ) (x : E2 H (X.obj D.auxiliary) s t),
    (x ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) ↔
      ∃ a : BiHom (t-s) t (nuZero D X),
        quotientClass 1 a = firstLabel D X s t x)

/-- BHS A.8, including the converse on labeled representatives.
These are the existing differentials on the same family, not a newly
postulated differential function. Multiplication by λ changes weight only. -/
def DifferentialRigidity : Prop :=
  ∀ (X : ClassicalObject) (a s t : ℤ) (r k : ℕ), 2 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t)
      (y : E2 H (X.obj D.auxiliary) (s+r) (t+r-1)),
    (KIP126.Core.SpectralSequence.HasDifferential
      (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r
      (s,t) (s+r,t+r-1) x y ↔
    KIP126.Synthetic.SpectralSequence.HasDifferential
      (D.family.obj ((SyntheticCategory.biShift (0,a)).obj
        (D.nu.functor.obj (X.obj D.auxiliary)))) r
      (s,t,t+a-k) (s+r,t+r-1,(t+r-1)+a-(k+(r-1) : ℕ))
      (D.nuE2 X a s t k x) (D.nuE2 X a (s+r) (t+r-1) (k+(r-1)) y))

/-- Selected-model consequence of λ-localization: only the objects in
`SyntheticObject` and their displayed bidegrees are quantified. Compactness
belongs to the FULL source category; no hypercomplete sphere is asserted
compact. The adjunction/λ/realization comparison is a separate Interface
obligation, specified in `RealizationKernel.lean`. -/
def RealizationKernel : Prop :=
  ∀ (X : SyntheticObject) (m w : ℤ) (a : BiHom m w (X.obj D.nu D.auxiliary)),
    (D.recovery.realization.map a = 0 ↔ ∃ k : ℕ, lambdaMultiply k a = 0)

/-- BHS `cor:tau-surj`: Adams filtration equals λ-Bockstein filtration.
The inequality makes the exponent nonnegative. It says nothing about
the filtration of a particular θ₅² or the value of a particular product. -/
def FiltrationLambda : Prop :=
  ∀ (X : ClassicalObject) (m w s : ℤ) (h : w - m ≤ s),
    ∀ a : BiHom m w (D.nu.functor.obj (X.obj D.auxiliary)),
    (FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) s a ↔
      ∃ b : BiHom m (m+s) (D.nu.functor.obj (X.obj D.auxiliary)),
        homotopyRegrade rfl (by rw [Int.toNat_of_nonneg (by omega)]; omega)
          (lambdaMultiply (m+s-w).toNat b) = a)

/-- The remaining zero region in BHS A.8's E₂ formula. M already fixes
the nonzero-weight comparison D.nuE2; this rules out extra classes above
that region instead of silently ignoring them. -/
def E2WeightVanishing : Prop :=
  ∀ (X : ClassicalObject) (a s t w : ℤ), t+a < w →
    Subsingleton ((D.family.obj ((SyntheticCategory.biShift (0,a)).obj
      (D.nu.functor.obj (X.obj D.auxiliary)))).E₂ (s,t,w))

/-- BHS A.9/A.11 with the compatible E∞ formulas on the SAME family.
All label, λ and ρ compatibility is part of the supplied source application.
No unrelated E∞ equivalences may be inserted as substitutes. -/
structure EInftyInput where
  presentation : KIP126.Literature.Route.EInftyFormulaInput D
  weightShift : EInftyWeightShift D.family
  maps : KIP126.Literature.Route.EInftyCompatibilityInput D presentation weightShift
  labels : KIP126.Literature.Route.EInftyLabelAgreement D presentation

/-- External BHS inputs excluding the internal full-to-selected-model kernel transport. -/
structure SyntheticSourceInputs where
  lifts : KIP126.Literature.Route.SyntheticLiftInput D
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  permanent_lift : PermanentLiftCriterion D
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  filtration_lambda : FiltrationLambda D
  e2_weight_vanishing : E2WeightVanishing D

structure SyntheticInputs where
  lifts : KIP126.Literature.Route.SyntheticLiftInput D
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  permanent_lift : PermanentLiftCriterion D
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  realization_kernel : RealizationKernel D
  filtration_lambda : FiltrationLambda D
  e2_weight_vanishing : E2WeightVanishing D

/-- Pure assembly; source-to-model localization is supplied separately. -/
def SyntheticSourceInputs.toInputs (S : SyntheticSourceInputs D)
    (kernel : RealizationKernel D) : SyntheticInputs D where
  lifts := S.lifts
  finite_lift := S.finite_lift
  bockstein := S.bockstein
  permanent_lift := S.permanent_lift
  differentials := S.differentials
  eInfty := S.eInfty
  realization_kernel := kernel
  filtration_lambda := S.filtration_lambda
  e2_weight_vanishing := S.e2_weight_vanishing
end
end KIP126.Literature.Route


/-! Exact classical source existence on one actual sphere background.
No arbitrary route, synthetic category, normalized lift or detector occurs
in the accepted source theorem. Identification with selected route maps is
an independently supplied model comparison. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

structure ClassicalSourceData (H : Mod2EilenbergMacLane (C := C)) where
  convergence : TowerDetection.Convergence H.unit SphereSpectrum
  eta : HomotopyGroup (C := C) 1 SphereSpectrum
  nu : HomotopyGroup (C := C) 3 SphereSpectrum
  theta5 : HomotopyGroup (C := C) 62 SphereSpectrum

/-- Xu Cor.1.3, the IWX 62-stem computation and the ordinary low-stem
Hopf detections, with one actual convergence and concrete homotopy maps.
No synthetic or arbitrary-choice strengthening is included. -/
structure ClassicalSourceResults (M : MilnorCooperations H) (S : ClassicalSourceData H) : Prop where
  h5Square_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (2,64)
      (Sphere.Internal.hiSquare H M 5)
  theta5_detection : TowerDetection.Detects S.convergence (2,64)
    (Sphere.Internal.hiSquare H M 5) S.theta5
  theta5_order_two : S.theta5 + S.theta5 = 0
  stem62_exponent_two : ∀ a : HomotopyGroup (C := C) 62 SphereSpectrum, a+a=0
  theta5_filtration_gap : ∀ a b : HomotopyGroup (C := C) 62 SphereSpectrum,
    TowerDetection.Detects S.convergence (2,64) (Sphere.Internal.hiSquare H M 5) a →
    TowerDetection.Detects S.convergence (2,64) (Sphere.Internal.hiSquare H M 5) b →
    a-b ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 6 62
  two_detection : TowerDetection.Detects S.convergence (1,1) (Sphere.Internal.hi H M 0)
    ((shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _))
  eta_detection : TowerDetection.Detects S.convergence (1,2) (Sphere.Internal.hi H M 1) S.eta
  nu_detection : TowerDetection.Detects S.convergence (1,4) (Sphere.Internal.hi H M 2) S.nu
  eta_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (1,2) (Sphere.Internal.hi H M 1)
  nu_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (1,4) (Sphere.Internal.hi H M 2)

def ClassicalSourceExistence (H : Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop :=
  ∃ S : ClassicalSourceData H, ClassicalSourceResults M S

variable {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]

/-- Identity with source classical objects and with the actual selected
normalized eta. These are construction/comparison obligations, not source
facts valid for arbitrary selections in D. -/
structure ClassicalSourceBinding (D : Model H M Syn)
    (η : BiHom 1 2 (S_0_0 : Syn)) (S : ClassicalSourceData H) : Prop where
  convergence : D.classicalConvergence .sphere = S.convergence
  eta : D.auxiliary.etaMap = S.eta
  nu : D.auxiliary.nuMap = S.nu
  normalized_eta : ∃ he : normalizedExponent H D.auxiliary.etaMap = 1,
    η = (etaSourceIso D he).hom ≫
      (D.normalizedMap (.shift 1 .sphere) .sphere D.auxiliary.etaMap).map ≫ D.nu.unitIso.hom
/-- Ordinary transport along the displayed source equalities. The sole
synthetic premise is supplied separately, so the classical source theorem
does not assert it or normalized-map compatibility. -/
def classicalInputsOfSource (D : Model H M Syn) (η : BiHom 1 2 (S_0_0 : Syn))
    (S : ClassicalSourceData H) (hS : ClassicalSourceResults M S)
    (B : ClassicalSourceBinding D η S) (hη : EtaChoice M D.toModelData η) :
    ClassicalInputs D η where
  theta5_exists := ⟨hS.h5Square_permanent, S.theta5,
    by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using hS.theta5_detection,
    hS.theta5_order_two⟩
  stem62_exponent_two := hS.stem62_exponent_two
  theta5_filtration_gap := by
    intro a b ha hb
    exact hS.theta5_filtration_gap a b
      (by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using ha)
      (by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using hb)
  two_detection := by simpa [TwoDetection, B.convergence, ClassicalObject.obj] using hS.two_detection
  hopf := by
    refine ⟨hη, ?_, hS.eta_permanent, hS.nu_permanent⟩
    refine ⟨?_, ?_, B.normalized_eta⟩
    · simpa [B.convergence, B.eta, ClassicalObject.obj] using hS.eta_detection
    · simpa [B.convergence, B.nu, ClassicalObject.obj] using hS.nu_detection
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context
universe u v
variable (Syn : Type u) [SyntheticCategory.{u, v} Syn]

/-- Tensor suspension conventions and exactness on the existing synthetic
category. To apply May's TC3, the source model must realize THESE choices;
independent exact tensor functors do not by themselves supply TC3. -/
structure MayContext where
  leftShift : ∀ X : Syn, (tensorLeft X).CommShift ℤ
  rightShift : ∀ X : Syn, (tensorRight X).CommShift ℤ
  leftExact : ∀ X : Syn, letI := leftShift X; (tensorLeft X).IsTriangulated
  rightExact : ∀ X : Syn, letI := rightShift X; (tensorRight X).IsTriangulated

/-- The source square and boundary relation selected from May (2001), TC3
(author PDF pp.12–13). The lifting field is the homotopy-group consequence
of the `(j₁,j₂)` pushpull square in Lemma 4.6 (p.14). This is precisely the
part of that source data used here, not a definition of the full TC3 axiom.

The negative sign is essential: TC3 identifies the two paths through
`−id ∧ h′` and `h ∧ id`. The fixed CommShift witnesses above identify their
common suspension target. No unsigned boundary formula is asserted. -/
structure MayPushpullData (B : MayContext Syn)
    (T U : HoCofiberSequence (C := Syn)) where
  vertex : Syn
  j1 : vertex ⟶ T.X ⊗ U.Z
  j2 : vertex ⟶ T.Y ⊗ U.Y
  j3 : vertex ⟶ T.Z ⊗ U.X
  square : j1 ≫ (T.f ▷ U.Z) = j2 ≫ (T.Y ◁ U.g)
  other_square : j2 ≫ (T.g ▷ U.Y) = j3 ≫ (T.Z ◁ U.f)
  boundary : letI := B.leftShift; letI := B.rightShift
    letI := B.leftExact; letI := B.rightExact
    j1 ≫ (U.map (tensorLeft T.X)).h = -(j3 ≫ (T.map (tensorRight U.X)).h)
  lift : ∀ (n : ℤ) (a : HomotopyGroup n (T.X ⊗ U.Z))
      (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    a ≫ (T.f ▷ U.Z) = b ≫ (T.Y ◁ U.g) →
    ∃ v : HomotopyGroup n vertex, v ≫ j1 = a ∧ v ≫ j2 = b

/-- May's source result, on specified tensor suspension conventions. The
existence of this source input on the selected synthetic model remains a
production obligation; no fresh model or global witness is selected here. -/
def MaySourceResults (B : MayContext Syn) : Prop :=
  ∀ T U : HoCofiberSequence (C := Syn), Nonempty (MayPushpullData Syn B T U)

/-- The signed elementwise consequence of TC3 and Lemma 4.6. Both boundary
classes lie in the same actual homotopy group. -/
def MayContext.SignedBoundary (B : MayContext Syn) : Prop :=
  letI := B.leftShift; letI := B.rightShift
  letI := B.leftExact; letI := B.rightExact
  ∀ (T U : HoCofiberSequence (C := Syn)) (n : ℤ)
    (a : HomotopyGroup n (T.X ⊗ U.Z))
    (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b →
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      connectingHomomorphism (U.map (tensorLeft T.X)) n a =
        -(connectingHomomorphism (T.map (tensorRight U.X)) n c)

/-- Historical unsigned target. This is NOT May's source theorem: sign
removal needs an additional premise on the actual boundary or on its image.
It is retained as a named compatibility target, not an external input. -/
def MayContext.Boundary (B : MayContext Syn) : Prop :=
  letI := B.leftShift; letI := B.rightShift
  letI := B.leftExact; letI := B.rightExact
  KIP126.Stable.MaySmashBoundary (C := Syn)

/-- Applied May input, retaining the source sign and the fixed conventions.
Consumers may remove the sign only after proving the required exponent-two
condition. Mod-two E₂ coordinates alone do not prove such a condition on
homotopy groups. -/
structure MayInput extends MayContext Syn where
  boundary : toMayContext.SignedBoundary
end KIP126.Literature.Route


/-! Low-dimensional and symmetric Toda inputs. The synthetic versions
are source-transport obligations, not verbatim classical formulas: λ²η,
rather than η, has bidegree (1,0). See the source/application distinction
in `docs/A_INPUT_FREEZE.md`. No high-stem indeterminacy is discarded. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Regrading for the genuine Toda construction; no source iso is chosen
as an extra input. Suspension for a Toda bracket adds (1,0). -/
def tripleTodaSource (a aw b bw c cw : ℤ) :
    Smn (Syn := Syn) (a+(b+c)+1) (aw+(bw+cw)) ≅
      ((SyntheticCategory.biShift (b+c,bw+cw)).obj (Smn a aw))⟦(1 : ℤ)⟧ := by
  simpa only [Prod.mk_add_mk, add_zero, Smn, Functor.comp_obj] using
    ((SyntheticCategory.biShift_comp (a+(b+c),aw+(bw+cw)) (1,0)).app
      (S_0_0 : Syn)).symm ≪≫
    (SyntheticCategory.biShift (1,0)).mapIso
      ((SyntheticCategory.biShift_comp (a,aw) (b+c,bw+cw)).app S_0_0).symm ≪≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).app _

/-- Complete Toda membership, including the actual distinguished triangle
and all choices of extensions. This is a defined relation, not a free Prop. -/
def TripleToda {a aw b bw c cw : ℤ}
    (x : BiHom a aw (S_0_0 : Syn)) (y : BiHom b bw (S_0_0 : Syn))
    (z : BiHom c cw (S_0_0 : Syn))
    (value : BiHom (a+(b+c)+1) (aw+(bw+cw)) (S_0_0 : Syn)) : Prop :=
  Toda.Relation ((tripleTodaSource a aw b bw c cw).inv ≫ value)
    ((SyntheticCategory.biShift (b+c,bw+cw)).map x)
    ((SyntheticCategory.biShift_comp (b,bw) (c,cw)).inv.app S_0_0 ≫
      (SyntheticCategory.biShift (c,cw)).map y) z

/-- Actual multiplication by two, with the zero suspension removed. -/
def syntheticTwo : BiHom 0 0 (S_0_0 : Syn) :=
  SyntheticCategory.biShift_zero.hom.app S_0_0 ≫ (2 • 𝟙 _)

/-- Applied consumer package. Its BHS low-ring fields and INTERNAL secondary
operation comparison are delivered separately by `TodaSourceResults` and
`TodaApplication`. Toda 1962, Theorem 3.6 and IWX §6 motivate the latter;
IWX `cor:2-symmetric` is C-motivic and is NOT directly a synthetic theorem. The final field asserts only membership;
LWX's high-degree ZERO INDETERMINACY check remains a paper/C(M) task. -/
structure TodaInputs (η : BiHom 1 2 (S_0_0 : Syn)) where
  h0 : BiHom 0 1 (S_0_0 : Syn)
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 h0 = syntheticTwo
  h0_eta : sphereProduct h0 η = 0
  /-- η² belongs to <[h₀],η,[h₀]>. We do not replace a Toda set by
  a selected value; the low indeterminacy vanishing is a separate field. -/
  eta_squared : TripleToda h0 η h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  /-- Consequence of the BHS low-stem ring: [h₀]·π_(2,3)=0.
  Together with graded commutativity it kills both indeterminacy summands
  of the preceding LOW bracket, not those of <2,θ₅,2>. -/
  low_indeterminacy : ∀ a : BiHom 2 3 (S_0_0 : Syn), sphereProduct h0 a = 0
  /-- Symmetric Toda identity at the only other degree used by this route.
  No claim that the bracket is a singleton or that θ is order two is made. -/
  symmetric_two : ∀ θ : BiHom 62 64 (S_0_0 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- The one low-dimensional source choice. The label equation belongs to the
source result below; no second η or h₀ is selected during consumption. -/
structure TodaSourceData where
  h0 : BiHom 0 1 (S_0_0 : Syn)

/-- BHS `prop:syn-toda-range`, low-ring/label consequences on the selected
sphere. These equations do not prove a secondary Toda membership. -/
structure TodaSourceResults (η : BiHom 1 2 (S_0_0 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 S.h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 S.h0 = syntheticTwo
  h0_eta : sphereProduct S.h0 η = 0
  low_indeterminacy : ∀ a : BiHom 2 3 (S_0_0 : Syn), sphereProduct S.h0 a = 0

/-- Internal source-to-model application: actual secondary Toda relations on
the same sphere and chosen h₀,η. No high-degree indeterminacy is removed. -/
structure TodaApplication (η : BiHom 1 2 (S_0_0 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  eta_squared : TripleToda S.h0 η S.h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  symmetric_two : ∀ θ : BiHom 62 64 (S_0_0 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- Exact secondary-operation evidence required before transporting the
symmetric theorem. `twoStar` is the degree-(1,0) star of multiplication by two.
Its product identification must be proved in this synthetic model; the
C-motivic value τη in IWX cannot simply be renamed λ²η. The low bracket also
requires an actual Massey/Moss or Toda calculation, beyond the ring equations.
This record is an INTERNAL construction/comparison obligation, not A(M). -/
structure TodaSecondaryComparison (η : BiHom 1 2 (S_0_0 : Syn))
    (S : TodaSourceData (Syn := Syn)) where
  low_bracket : TripleToda S.h0 η S.h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  twoStar : BiHom 1 0 (S_0_0 : Syn)
  symmetric : ∀ θ : BiHom 62 64 (S_0_0 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (sphereProduct (m := 1) (n := 0) (k := 62) (l := 64) twoStar θ)
  star_product : ∀ θ : BiHom 62 64 (S_0_0 : Syn),
    sphereProduct (m := 1) (n := 0) (k := 62) (l := 64) twoStar θ = lambdaMultiply 2 (sphereProduct η θ)

/-- Assemble the unchanged consumer API from source ring facts and separately
certified secondary operations. This introduces no choice or axiom. -/
def todaInputsOfSource (η : BiHom 1 2 (S_0_0 : Syn)) (S : TodaSourceData (Syn := Syn))
    (A : TodaSourceResults D η S) (P : TodaApplication η S) : TodaInputs D η where
  h0 := S.h0
  h0_label := A.h0_label
  lambda_h0 := A.lambda_h0
  h0_eta := A.h0_eta
  eta_squared := P.eta_squared
  low_indeterminacy := A.low_indeterminacy
  symmetric_two := P.symmetric_two

end
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

variable (D : Model H M Syn) (L : TmfLabels H)

/-- The classical θ₅ Hurewicz vanishing used in LWX Prop. 7.8.
The map is the unit of D's selected detector, interpreted as 2-completed
connective tmf. Source: BMQ Figure 1.1 and Theorem 1.2 in degree 62.
This does NOT assert synthetic θ₅ vanishing: that still needs the
synthetic/classical comparison and the relevant λ-torsion analysis. -/
def TmfTheta5Vanishing : Prop :=
  ∀ θ : HomotopyGroup (C := C) 62 SphereSpectrum,
    ClassicalTheta D θ → θ ≫ D.auxiliary.detectorUnit = 0

/-- The local classical Adams detection consequence of BMQ §7: κ̄⁴w
is nonzero, and its sphere detection is g⁴Δh₁g. The existential clause supplies ONE detected class with nonzero image.
Independence of the detected representative is a Main deduction, requiring
higher-filtration vanishing; it is not a further external input.
Identification of the selected detector/unit and these two labels with
the source is part of supplying this explicit external input. -/
def TmfHigh125Detection : Prop :=
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (25,150) (L.high125 M) ∧
  ∃ α : HomotopyGroup (C := C) 125 SphereSpectrum,
    TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (L.high125 M) α ∧ α ≫ D.auxiliary.detectorUnit ≠ 0

/-- The small part of the classical tmf E₂ calculation needed to transport
the 62-stem vanishing through λ-localization. Source: BMQ §2,
H_*tmf = (A//A(2))_* and its change-of-rings E₂. There is no nonpositive-AF
class in positive stem 63. This is prior tmf input, not a Lin sphere CSV row. -/
def TmfLowFiltration63 : Prop :=
  ∀ s : ℤ, s ≤ 0 → Subsingleton (E2 H D.auxiliary.detector s (63+s))

/-- These are the primitive tmf inputs on classical homotopy.
`DetectorInjectiveAt D 125 130 15` is intentionally NOT a field: LWX
derives that useful local conclusion using its own tables and BHS. -/
structure TmfInputs : Prop where
  theta5_vanishes : TmfTheta5Vanishing D
  high125_detected : TmfHigh125Detection D L
  low_filtration_63 : TmfLowFiltration63 D
end
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Pstrągowski's realization comparison on bigraded spheres, using the
existing functor, ν-unit and λ powers. These are comparison witnesses for
an external existence result, not a second realization or arbitrary maps
on homotopy groups. The base unit and weight changes are pinned down. -/
structure RealizationCoordinates where
  sphere : ∀ m w : ℤ, Sphere (C := C) m ≅ D.recovery.realization.obj (Smn (Syn := Syn) m w)
  unit : (sphere 0 0).hom ≫ D.recovery.realization.map
      (SyntheticCategory.biShift_zero.hom.app (S_0_0 : Syn)) =
    (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫
      D.recovery.nuRealizationIso.inv.app SphereSpectrum ≫
      D.recovery.realization.map D.nu.unitIso.hom
  lambda : ∀ (m w : ℤ) (k : ℕ),
    (sphere m (w-k)).hom ≫
      D.recovery.realization.map (lambdaMultiply k (𝟙 (Smn (Syn := Syn) m w))) =
        (sphere m w).hom

def realizeNu (R : RealizationCoordinates D) (X : ClassicalObject) {m w : ℤ}
    (a : BiHom m w (D.nu.functor.obj (X.obj D.auxiliary))) :
    HomotopyGroup m (X.obj D.auxiliary) :=
  (R.sphere m w).hom ≫ D.recovery.realization.map a ≫
    D.recovery.nuRealizationIso.hom.app (X.obj D.auxiliary)

def realizeNuZero (R : RealizationCoordinates D) (X : ClassicalObject) {m w : ℤ}
    (a : BiHom m w (nuZero D X)) : HomotopyGroup m (X.obj D.auxiliary) :=
  realizeNu D R X (a ≫ SyntheticCategory.biShift_zero.hom.app _)

/-- BHS A.1(2b),(3b). The same standard E₂ label detects the realized
class, and every specified detected class has an appropriate lift.
Neither clause replaces an arbitrary E₂ class by a later-page element. -/
structure RealizationDetection (R : RealizationCoordinates D) : Prop where
  /-- BHS A.1(2a): nonzero survival to E_(r+1) controls the lifetime
  of EVERY lift of a permanent cycle. The exponent is r-1, not r. -/
  lifetime : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 1 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    x ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    SurvivesTo (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (r+1) (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    lambdaMultiply (r-1) a ≠ 0
  detection : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    TowerDetection.Detects (D.classicalConvergence X) (s,t) x (realizeNuZero D R X a)
  prescribed_lift : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (α : HomotopyGroup (t-s) (X.obj D.auxiliary)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → TowerDetection.Detects (D.classicalConvergence X) (s,t) x α →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t x ∧ realizeNuZero D R X a = α
  /-- BHS A.1(3a): only SOME lift of a permanent boundary is torsion.
  It would be wrong to demand this of every lift. -/
  boundary_lift : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 2 ≤ r →
    ∀ (y : E2 H (X.obj D.auxiliary) s t),
    y ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    HitOnPage (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r (s,t) y →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t y ∧ lambdaMultiply (r-1) a = 0

/-- The comparison data and laws travel together in A(M). -/
structure RealizationInput where
  coordinates : RealizationCoordinates D
  detection : RealizationDetection D coordinates
end
end KIP126.Literature.Route


/-! Full-category localization and its scoped application to the route.

Pstrągowski's `prop:tau_inversion_functor_exists` constructs localization as
an actual telescope in full synthetic spectra. Its compact spheres (the remark
`rem:synthetic_spectra_compactly_generated_by_suspensions_of_synthetic_analogues_of_finite_projectives`)
give the finite-power kernel criterion. The source reflection is kept in its
full category; it is not assumed to recover the same classical category as
the selected complete model. Hypercompletion is a different step:
§4.5 identifies the complete objects and their inclusion. The data below must
come from that construction (or an equivalent comparison); an abstract
`SyntheticCategory` alone does not establish any of these facts.
-/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable (Syn : Type w) [SyntheticCategory.{w, v} Syn]

/-- The FULL source, its actual λ-localization, and the completion/inclusion
adjunction. Spheres are compared AFTER the left adjoint; this does not identify
an uncompleted source sphere with an included completed sphere. No compactness
of the latter is asserted. -/
structure RealizationKernelSourceData where
  Full : Type w
  [fullCategory : SyntheticCategory.{w, v} Full]
  localization : LambdaLocalization Full
  completion : Full ⥤ Syn
  inclusion : Syn ⥤ Full
  fullyFaithful : inclusion.FullyFaithful
  adjunction : completion ⊣ inclusion
  [completionAdditive : completion.Additive]
  sphere : ∀ m w : ℤ, completion.obj (Smn (Syn := Full) m w) ≅ Smn (Syn := Syn) m w

attribute [instance] RealizationKernelSourceData.fullCategory
attribute [instance] RealizationKernelSourceData.completionAdditive

variable {Syn}

/-- The map on representatives is the ACTUAL adjunction map, precomposed with
the specified completed-sphere comparison. It is not an arbitrary bijection. -/
def RealizationKernelSourceData.representatives (S : RealizationKernelSourceData Syn)
    (X : Syn) (m w : ℤ) :
    BiHom m w X ≃+ BiHom m w (S.inclusion.obj X) where
  toFun a := S.adjunction.homAddEquiv _ _ ((S.sphere m w).hom ≫ a)
  invFun a := (S.sphere m w).inv ≫ (S.adjunction.homAddEquiv _ _).symm a
  left_inv a := by simp
  right_inv a := by simp
  map_add' a b := by simp [Preadditive.comp_add]

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Consequence of full-category telescope localization and compact source
spheres, restricted to the INCLUDED route objects. It is supplied as a source
result, never inferred from compactness of the completed sphere. -/
def RealizationKernelSourceResults (S : RealizationKernelSourceData Syn) : Prop :=
  ∀ (X : SyntheticObject) (m w : ℤ)
    (a : BiHom m w (S.inclusion.obj (X.obj D.nu D.auxiliary))),
    (S.localization.endofunctor.map a = 0 ↔ ∃ k : ℕ, lambdaMultiply k a = 0)

/-- Exact local comparison needed to use the source kernel criterion. The
realization condition must be proved for the displayed included objects; it
is not a claim that full and hypercomplete localization commute on every object.
The λ condition compares all powers and records their changed weights. -/
structure RealizationKernelBinding (S : RealizationKernelSourceData Syn) : Prop where
  realization_zero : ∀ (X : SyntheticObject) (m w : ℤ)
      (a : BiHom m w (X.obj D.nu D.auxiliary)),
    D.recovery.realization.map a = 0 ↔
      S.localization.endofunctor.map (S.representatives _ m w a) = 0
  lambda : ∀ (X : SyntheticObject) (m w : ℤ) (k : ℕ)
      (a : BiHom m w (X.obj D.nu D.auxiliary)),
    S.representatives _ m (w-k) (lambdaMultiply k a) =
      lambdaMultiply k (S.representatives _ m w a)

end
end KIP126.Literature.Route


/-! The ordinary homotopy-category consequences of the external symmetric
monoidal and λ-quotient algebra theorems. A commutative monoid object here
is NOT advertised as a construction of an E∞ algebra. These explicit
consequences are exactly the algebraic operations the selected route uses. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Multiplication of homotopy classes induced by an ACTUAL monoid object.
The order y ⊗ x matches the existing `sphereAction x y` convention. -/
noncomputable abbrev algebraProduct {A : Syn} (Q : MonObj A) {m n k l : ℤ}
    (x : BiHom m n A) (y : BiHom k l A) : BiHom (m+k) (n+l) A :=
  KIP126.Kervaire.Route.algebraProduct Q x y

/-- The source existence consequence of BHSmot Appendices B/C and
BX `cnstr:bock-maps`, transported along cofiber-object isomorphisms.
Each positive finite quotient has a commutative algebra whose unit is its
specified inclusion. No assertion about a preselected cofiber filler or
the route sphere action is accepted in this raw source statement. -/
structure QuotientAlgebraStructures (D : Model H M Syn) [BraidedCategory Syn] where
  algebra : ∀ q : ℕ, 0 < q → MonObj (XModLambdaN (S_0_0 : Syn) q)
  commutative : ∀ (q : ℕ) (hq : 0 < q),
    letI := algebra q hq; IsCommMonObj (XModLambdaN (S_0_0 : Syn) q)
  unit : ∀ (q : ℕ) (hq : 0 < q), (algebra q hq).one = XModLambdaN.incl S_0_0 q

/-- The route-ready quotient algebras. The two additional comparisons are
INTERNAL source-to-model obligations: a TR3 cofiber filler is not identified
with a source algebra restriction merely by having the same name or square.
Producing these fields for the selected source algebras remains an
Interface comparison obligation; source algebra existence alone is insufficient. -/
structure QuotientAlgebras [BraidedCategory Syn] extends QuotientAlgebraStructures D where
  /-- The algebra product extends the already fixed sphere action. -/
  sphere_action : ∀ (q : ℕ) (hq : 0 < q) (m n k l : ℤ)
      (x : BiHom m n (S_0_0 : Syn)) (y : BiHom k l (XModLambdaN S_0_0 q)),
    algebraProduct (algebra q hq) (quotientClass q x) y = sphereAction x y
  restriction : ∀ (i j : ℕ) (hi : 0 < i) (hij : i ≤ j),
    ((D.quotientTower (S_0_0 : Syn)).rho i j hij ⊗ₘ
        (D.quotientTower (S_0_0 : Syn)).rho i j hij) ≫ (algebra i hi).mul =
      (algebra j (hi.trans_le hij)).mul ≫ (D.quotientTower (S_0_0 : Syn)).rho i j hij

/-- The ring structure of the SAME detector and its synthetic analogue.
The units are fixed to D's actual Hurewicz maps. This is the ordinary
homotopy-category consequence of tmf being a commutative ring spectrum
and the synthetic analogue being lax monoidal. -/
structure DetectorAlgebra [BraidedCategory C] [BraidedCategory Syn] where
  classical : MonObj D.auxiliary.detector
  classical_commutative : letI := classical; IsCommMonObj D.auxiliary.detector
  classical_unit : classical.one = D.auxiliary.detectorUnit
  synthetic : MonObj (D.nu.functor.obj D.auxiliary.detector)
  synthetic_commutative : letI := synthetic
    IsCommMonObj (D.nu.functor.obj D.auxiliary.detector)
  synthetic_unit : synthetic.one = KIP126.Literature.Route.detectorMap D
  sphere_action : ∀ (m n k l : ℤ) (x : BiHom m n (S_0_0 : Syn))
      (y : BiHom k l (D.nu.functor.obj D.auxiliary.detector)),
    algebraProduct synthetic (x ≫ KIP126.Literature.Route.detectorMap D) y =
      sphereAction x y

/-- Existence witnesses for source algebra consequences, on the same
tensor products and realization. Providing these fields is an explicit
application of the external source to this model; no instance is installed.
Pstrągowski's λ-inversion is symmetric monoidal. -/
structure AlgebraData where
  classicalSymmetric : SymmetricCategory C
  syntheticSymmetric : SymmetricCategory Syn
  realizationMonoidal : letI := classicalSymmetric; letI := syntheticSymmetric
    D.recovery.SymmetricMonoidal
  quotients : letI := syntheticSymmetric; QuotientAlgebraStructures D
  detector : letI := classicalSymmetric; letI := syntheticSymmetric; DetectorAlgebra D

/-- Existence witnesses for source algebra consequences, on the same
tensor products and realization. Providing these fields is an explicit
application of the external source to this model; no instance is installed.
Pstrągowski's λ-inversion is symmetric monoidal. -/
structure AlgebraInput where
  classicalSymmetric : SymmetricCategory C
  syntheticSymmetric : SymmetricCategory Syn
  realizationMonoidal : letI := classicalSymmetric; letI := syntheticSymmetric
    D.recovery.SymmetricMonoidal
  quotients : letI := syntheticSymmetric; QuotientAlgebras D
  detector : letI := classicalSymmetric; letI := syntheticSymmetric; DetectorAlgebra D


/-- Compatibility of the source quotient structures with the actual route
sphere action and restriction maps. This is produced internally, separately
from the source existence result. -/
structure QuotientAlgebraBinding (I : AlgebraData D) : Prop where
  sphere_action : letI := I.syntheticSymmetric; ∀ (q : ℕ) (hq : 0 < q) (m n k l : ℤ)
      (x : BiHom m n (S_0_0 : Syn)) (y : BiHom k l (XModLambdaN S_0_0 q)),
    algebraProduct (I.quotients.algebra q hq) (quotientClass q x) y = sphereAction x y
  restriction : letI := I.syntheticSymmetric; ∀ (i j : ℕ) (hi : 0 < i) (hij : i ≤ j),
    ((D.quotientTower (S_0_0 : Syn)).rho i j hij ⊗ₘ
        (D.quotientTower (S_0_0 : Syn)).rho i j hij) ≫ (I.quotients.algebra i hi).mul =
      (I.quotients.algebra j (hi.trans_le hij)).mul ≫ (D.quotientTower (S_0_0 : Syn)).rho i j hij

/-- Assemble the consumer record on exactly the supplied source algebra. -/
def AlgebraData.withBinding (I : AlgebraData D) (B : QuotientAlgebraBinding D I) :
    AlgebraInput D where
  classicalSymmetric := I.classicalSymmetric
  syntheticSymmetric := I.syntheticSymmetric
  realizationMonoidal := I.realizationMonoidal
  quotients := by
    letI := I.syntheticSymmetric
    exact { I.quotients with sphere_action := B.sphere_action, restriction := B.restriction }
  detector := I.detector

end KIP126.Literature.Route


/-! Source data are chosen once. They contain actual spectra, unit maps,
classes and convergence data, not an uninterpreted `isTmf` predicate.
The BMQ results on these data and their identification with the route model
are separate records. No local route conclusion is assumed here. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- The ordinary sphere product is the actual shifted composite. -/
def classicalSphereProduct {m n : ℤ}
    (x : HomotopyGroup (C := C) m SphereSpectrum)
    (y : HomotopyGroup (C := C) n SphereSpectrum) :
    HomotopyGroup (C := C) (m+n) SphereSpectrum :=
  (shiftFunctorAdd C m n).hom.app SphereSpectrum ≫ (shiftFunctor C n).map x ≫ y

/-- The portion of the completed BMQ source model used by the proof. The
source existence theorem supplies these actual objects and maps together;
its interpretation is 2-completed connective tmf and its ring unit. The
completion/source identification is a separate model-construction theorem,
not an untyped `isTmf` field and not an arbitrary local-result assumption. -/
structure TmfSourceData (H : Mod2EilenbergMacLane (C := C)) where
  spectrum : C
  algebra : MonObj spectrum
  labels : TmfLabels H
  sphereConvergence : TowerDetection.Convergence H.unit SphereSpectrum
  convergence : TowerDetection.Convergence H.unit spectrum
  kappaBar : HomotopyGroup (C := C) 20 SphereSpectrum
  wClass : HomotopyGroup (C := C) 45 SphereSpectrum

def TmfSourceData.unit (S : TmfSourceData H) : SphereSpectrum ⟶ S.spectrum :=
  S.algebra.one

def TmfSourceData.high125 (S : TmfSourceData H) :
    HomotopyGroup (C := C) 125 SphereSpectrum :=
  classicalSphereProduct
    (classicalSphereProduct (classicalSphereProduct S.kappaBar S.kappaBar)
      (classicalSphereProduct S.kappaBar S.kappaBar)) S.wClass

/-- Explicit identities with the ONE route detector, its unit, its G labels
and its convergence. The page map is the map of the actual Adams tower,
so no unrelated linear equivalence is introduced. -/
structure TmfBinding (D : Model H M Syn) (G : TmfLabels H) (S : TmfSourceData H) where
  detectorIso : D.auxiliary.detector ≅ S.spectrum
  unit : D.auxiliary.detectorUnit ≫ detectorIso.hom = S.unit
  g : G.g = S.labels.g
  delta_h_1_mul_g : G.delta_h_1_mul_g = S.labels.delta_h_1_mul_g
  sphereConvergence : D.classicalConvergence .sphere = S.sphereConvergence

/-- Intrinsic identities of the two source labels, without choosing an
arbitrary nonzero class or relying on its name. The classical E2 groups
(4,24) and (9,54) each have exactly one nonzero element. Source: IWX v3,
`cor:main-Adams`, and the cited 2022 Zenodo v1 classical E2 chart CSV,
rows 59 (`g`, stem 20, AF 4) and 275 (`D h1 g`, stem 45, AF 9).
The chart's `D` denotes Delta. These finite prior calculations make the
source labels unique even when the source result is supplied existentially. -/
def TmfLabels.Standard (G : TmfLabels H) : Prop :=
  G.g ≠ 0 ∧ (∀ x : E2 H SphereSpectrum 4 24, x ≠ 0 → x = G.g) ∧
  G.delta_h_1_mul_g ≠ 0 ∧
    (∀ x : E2 H SphereSpectrum 9 54, x ≠ 0 → x = G.delta_h_1_mul_g)

/-- BMQ v4 (2021), Figure 1.1, §2 and §7, after the explicitly separate
2-local-to-2-complete transport. In §7 the nonzero class is the image of
the actual product kappaBar^4*w. The stronger universal statement about
ALL classes detected by g^4 Delta h1 g is deliberately absent. -/
structure TmfSourceResults (S : TmfSourceData H) : Prop where
  /-- The source is connective tmf with degreewise finite mod-2 homology.
  These are the scope facts needed for BHS completion/convergence after
  transport; local values in stems 62/125 alone would not imply them. -/
  connective : ∀ n : ℤ, n < 0 → Subsingleton (HomotopyGroup n S.spectrum)
  finiteMod2Type : FiniteMod2Type H S.spectrum
  standard_labels : S.labels.Standard
  vanishing62 : ∀ x : HomotopyGroup (C := C) 62 S.spectrum, x = 0
  low_filtration63 : ∀ s : ℤ, s ≤ 0 → Subsingleton (E2 H S.spectrum s (63+s))
  kappaBar_detection : TowerDetection.Detects S.sphereConvergence (4,24)
    S.labels.g S.kappaBar
  w_detection : TowerDetection.Detects S.sphereConvergence (9,54)
    S.labels.delta_h_1_mul_g S.wClass
  high125_nonzero : S.high125 ≫ S.unit ≠ 0

/-- Exact existence form of the accepted local BMQ/IWX source result in
an identified completed classical sphere model. It does not assert the
results for every detector, every label or every preselected route D.
A consumer supplies `TmfBinding` before applying the source result to D.
The standard-model source/2-completion adapter must construct this witness
from BMQ v4 and the finite IWX label computations; no global choice is
performed in this definition. -/
def TmfSourceExistence (H : Mod2EilenbergMacLane (C := C)) : Prop :=
  ∃ S : TmfSourceData H, TmfSourceResults S

/-- The classical multiplicative comparison required by the tmf adapter.
It relates the actual shifted homotopy product to the fixed cobar product;
it is a general comparison theorem to prove, not a BMQ result. -/
def ClassicalProductDetection (D : Model H M Syn) : Prop :=
  ∀ (s t s' t' : ℕ) (x : E2 H SphereSpectrum s t) (y : E2 H SphereSpectrum s' t')
    (a : HomotopyGroup (C := C) ((t : ℤ)-s) SphereSpectrum)
    (b : HomotopyGroup (C := C) ((t' : ℤ)-s') SphereSpectrum),
    TowerDetection.Detects (D.classicalConvergence .sphere) (s,t) x a →
    TowerDetection.Detects (D.classicalConvergence .sphere) (s',t') y b →
    TowerDetection.Detects (D.classicalConvergence .sphere) ((s+s' : ℕ),(t+t' : ℕ))
      (Sphere.Internal.product H M x y)
      (eqToHom (congrArg (fun n : ℤ => Sphere (C := C) n)
        (by simp only [Nat.cast_add]; omega : ((t+t' : ℕ) : ℤ)-(s+s') = ((t : ℤ)-s)+((t' : ℤ)-s'))) ≫ classicalSphereProduct a b)

/-- This is the CLASSICAL tail obligation used to remove the ambiguity of a
125-stem representative. It is a consequence of the C(M) E5-exhaustion,
Ravenel's vanishing line and the same tower's separated filtration. It is
not a tmf source theorem and says nothing about synthetic lambda torsion. -/
def ClassicalHigh125Tail (D : Model H M Syn) : Prop :=
  ∀ a : HomotopyGroup (C := C) 125 SphereSpectrum,
    a ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 26 125 → a = 0
end
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The local Moss source statement on the CLASSICAL sphere resolution.
It has no synthetic-model parameter. A source acceptance must identify the
displayed convergence with the comparison from that actual multiplicative
Adams resolution; an arbitrary associated-graded isomorphism does not
establish applicability. All defining-system, crossing and residual
hypotheses are retained. This definition does not assert the statement. -/
def MossSourceInput (M : MilnorCooperations H)
    (convergence : TowerDetection.Convergence H.unit SphereSpectrum) : Prop :=
  ∀ (B : E2 H SphereSpectrum 8 70)
    (θ β : HomotopyGroup (C := C) 62 SphereSpectrum)
    (two : HomotopyGroup (C := C) 0 SphereSpectrum),
    two = (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _) →
    TowerDetection.Detects convergence (2,64) (Sphere.Internal.hiSquare H M 5) θ →
    TowerDetection.Detects convergence (1,1) (Sphere.Internal.hi H M 0) two →
    TowerDetection.Detects convergence (8,70) B β →
    θ + θ = 0 → β + β = 0 →
    (ThetaBMassey M B).Nonempty →
    ¬ SphereMossCrossing (H := H) 3 (3,65) →
    ¬ SphereMossCrossing (H := H) 3 (9,71) →
    TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C)) →
    ∃ (z : E2 H SphereSpectrum 9 134)
      (ξ : HomotopyGroup (C := C) 125 SphereSpectrum),
      ThetaBMasseyDefiningSystem M B z ∧
      TowerDetection.Detects convergence (9,134) z ξ ∧ ThetaBToda θ β ξ

/-- Moss (1970), Theorem 1.2, in the precise local specialization used by
LWX Lemma 7.16. The defining systems, two null products, two no-crossing
conditions and residual-tower condition remain explicit hypotheses.
It asserts existence of a detected bracket member, not that every member
is permanent or that the bracket has zero indeterminacy. The statement and
crossing convention were also checked against Belmont--Kong (2021),
Theorem 1.1 / 4.11 and Definition 2.10. Moss's original scan was unavailable;
the source inventory does not advertise it as independently read. -/
abbrev MossInput := KIP126.Literature.Route.ThetaBMossInput D

/-- The residual-tower hypothesis for the selected complete classical
sphere. This is an applicability obligation for the Moss source theorem,
not a computational no-crossing or Massey-value assertion. -/
abbrev MossTowerApplicability :=
  TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C))
end KIP126.Literature.Route


/-! Model multiplication comparisons. These are structural realization
obligations, kept separate from the statement that the source quotient
algebras exist. No specified local multiplication value is a field. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (I : AlgebraData D)

structure AlgebraBinding : Prop where
  classical_detection : ClassicalProductDetection D
  first_quotient : letI := I.syntheticSymmetric
    FirstQuotientMultiplicationCompatible D (I.quotients.algebra 1 (by decide))
  finite_detection : letI := I.syntheticSymmetric
    ∀ (q : ℕ) (hq : 0 < q),
      FiniteQuotientMultiplicationCompatible D q hq (I.quotients.algebra q hq)
  finite_action : FiniteQuotientSphereActionCompatible D
  action_filtration : SphereActionFiltrationCompatible D
  finite_filtration : letI := I.syntheticSymmetric
    ∀ (q : ℕ) (hq : 0 < q),
      FiniteQuotientFiltrationCompatible D q (I.quotients.algebra q hq)
end KIP126.Literature.Route


/-! Explicit source-to-model binding obligations. Existence of a good
geometric lift does not imply that an arbitrary previously selected lift
has that property. These conditions accompany A(M) instead of being
silently added to the frozen M, or asserted for every abstract model. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.Pretriangulated KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The first three sphere comparisons are CONSTRUCTED from the frozen ν
unit/suspension comparisons, rather than freely postulated isomorphisms. -/
def nuSphereOne : D.nu.functor.obj (Sphere (C := C) 1) ≅ Smn (Syn := Syn) 1 1 :=
  D.nu.suspensionIso SphereSpectrum ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso D.nu.unitIso

def nuSphereTwo : D.nu.functor.obj (Sphere (C := C) 2) ≅ Smn (Syn := Syn) 2 2 :=
  D.nu.functor.mapIso ((shiftFunctorAdd' C 1 1 2 (by norm_num)).app SphereSpectrum) ≪≫
    D.nu.suspensionIso (Sphere (C := C) 1) ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso (nuSphereOne D) ≪≫
    (SyntheticCategory.biShift_comp (1,1) (1,1)).app S_0_0

def nuSphereThree : D.nu.functor.obj (Sphere (C := C) 3) ≅ Smn (Syn := Syn) 3 3 :=
  D.nu.functor.mapIso ((shiftFunctorAdd' C 2 1 3 (by norm_num)).app SphereSpectrum) ≪≫
    D.nu.suspensionIso (Sphere (C := C) 2) ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso (nuSphereTwo D) ≪≫
    (SyntheticCategory.biShift_comp (2,2) (1,1)).app S_0_0

/-- The normalized Hopf ν is the map already selected by D. -/
def normalizedNu (he : normalizedExponent H D.auxiliary.nuMap = 1) :
    BiHom 3 4 (S_0_0 : Syn) := by
  let e : (SyntheticCategory.biShift (0, (normalizedExponent H D.auxiliary.nuMap : ℤ))).obj
      (D.nu.functor.obj (Sphere (C := C) 3)) ≅ Smn (Syn := Syn) 3 4 := by
    rw [he]
    exact (SyntheticCategory.biShift (0,1)).mapIso (nuSphereThree D) ≪≫
      (SyntheticCategory.biShift_comp (3,3) (0,1)).app S_0_0
  exact e.inv ≫ (D.normalizedMap (.shift 3 .sphere) .sphere D.auxiliary.nuMap).map ≫
    D.nu.unitIso.hom

/-- Required binding to the actual Cν triangle. The source is the BHS
geometric triangle construction, with rotations, applied to the SAME maps.
Only this triangle is required; no assertion about all chosen lifts is made.
The distinguished condition is an explicit realization obligation, not a
new theorem of LWX or a consequence of the lift factorization alone. -/
structure NuCofiberApplicability : Prop where
  nu_exponent : normalizedExponent H D.auxiliary.nuMap = 1
  bottom_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.g = 0
  top_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.h = 0
  normalized_label :
    D.sphereFirstQuotient 1 4 (quotientClass 1 (normalizedNu D nu_exponent)) =
      Sphere.Internal.hi H M 2
  triangle : ∀ he :
      (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
        normalizedExponent H D.auxiliary.nuRouteTriangle.g +
        normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1,
    NormalizedTriangleCompatible D.toModelData D.auxiliary.nuRouteTriangle he

/-- These are model applicability obligations, recorded separately from
the source statements. They neither assert no-crossing computations nor
the ν-extension constructed in LWX Lemma 7.19. -/
structure Applicability : Prop where
  moss : MossTowerApplicability (H := H)
  nuCofiber : NuCofiberApplicability D
/-- The three lifts supplied by the Pstragowski/BHS geometric construction
for the actual nu cofiber. They are independent of D's later selected
normalized maps. Existence of this source data does not validate arbitrary
choices in D. -/
structure NuCofiberSourceData where
  nuLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuMap
  bottomLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuRouteTriangle.g
  topLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuRouteTriangle.h

/-- The source top lift has exactly the same landing convention as the
route's normalized connecting arrow. -/
def sourceNormalizedConnecting (S : NuCofiberSourceData D)
    (he : (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1) :=
  let T := D.auxiliary.nuRouteTriangle
  let eg : ℤ := normalizedExponent H T.g
  let eh : ℤ := normalizedExponent H T.h
  let X := D.nu.functor.obj (T.X.obj D.auxiliary)
  (SyntheticCategory.biShift (0,-eg)).map
      (negativeLift (normalizedExponent H T.h) S.topLift.map) ≫
    (SyntheticCategory.biShift (0,-eg)).map
      ((SyntheticCategory.biShift (0,-eh)).map (D.nu.suspensionIso (T.X.obj D.auxiliary)).hom) ≫
    (SyntheticCategory.biShift (0,-eg)).map
      ((SyntheticCategory.biShift_comp (1,1) (0,-eh)).hom.app X) ≫
    (SyntheticCategory.biShift_comp ((1,1)+(0,-eh)) (0,-eg)).hom.app X ≫
    eqToHom (congrArg (fun p => (SyntheticCategory.biShift p).obj X)
      (show ((1,1)+(0,-eh))+(0,-eg) = (0,(normalizedExponent H T.f : ℤ))+(1,0) from by
        dsimp [eg, eh, T]; ext <;> simp only [Prod.fst_add, Prod.snd_add, Prod.fst, Prod.snd] <;> omega)) ≫
    (SyntheticCategory.biShift_comp (0,(normalizedExponent H T.f : ℤ)) (1,0)).inv.app X ≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).hom.app _

def sourceNormalizedTriangle (S : NuCofiberSourceData D)
    (he : (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1) : Triangle Syn :=
  Triangle.mk S.nuLift.map
    (negativeLift (normalizedExponent H D.auxiliary.nuRouteTriangle.g) S.bottomLift.map)
    (sourceNormalizedConnecting D S he)

def sourceNormalizedNu (S : NuCofiberSourceData D)
    (he : normalizedExponent H D.auxiliary.nuMap = 1) : BiHom 3 4 (S_0_0 : Syn) := by
  let e : (SyntheticCategory.biShift (0, (normalizedExponent H D.auxiliary.nuMap : ℤ))).obj
      (D.nu.functor.obj (Sphere (C := C) 3)) ≅ Smn (Syn := Syn) 3 4 := by
    rw [he]
    exact (SyntheticCategory.biShift (0,1)).mapIso (nuSphereThree D) ≪≫
      (SyntheticCategory.biShift_comp (3,3) (0,1)).app S_0_0
  exact e.inv ≫ S.nuLift.map ≫ D.nu.unitIso.hom

/-- Internal construction target for a compatible triple, with cofiber
maps and the h2 label. Pstragowski Lemma 4.23 and BHS Lemma 9.15 supply
the separate exactness and divisibility leaves; neither is quoted as
the full compatible-three-lifts-and-label statement below. The assembly
must also use actual Hopf detection and the first-quotient comparison.
This asserts nothing about arbitrary selected lifts. -/
structure NuCofiberSourceResults (S : NuCofiberSourceData D) : Prop where
  nu_exponent : normalizedExponent H D.auxiliary.nuMap = 1
  bottom_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.g = 0
  top_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.h = 0
  normalized_label :
    D.sphereFirstQuotient 1 4 (quotientClass 1 (sourceNormalizedNu D S nu_exponent)) =
      Sphere.Internal.hi H M 2
  triangle : ∀ he, sourceNormalizedTriangle D S he ∈ distTriang Syn

/-- Internal model-adaptation target for the identified nu background.
It is not a permissible replacement for the separate Pstragowski/BHS
source leaves in Main/Axiom. Its construction and the subsequent binding
of D's normalized maps remain separate proof responsibilities. -/
def NuCofiberSourceExistence : Prop :=
  ∃ S : NuCofiberSourceData D, NuCofiberSourceResults D S

/-- Binding the three actually selected route arrows to one compatible
source triple. This is model realization data, not the source theorem and
not a consequence of normalized-lift factorization alone. -/
structure NuCofiberLiftBinding (S : NuCofiberSourceData D) : Prop where
  nu : S.nuLift.map =
    (D.normalizedMap (.shift 3 .sphere) .sphere D.auxiliary.nuMap).map
  bottom : S.bottomLift.map =
    (D.normalizedMap D.auxiliary.nuRouteTriangle.Y D.auxiliary.nuRouteTriangle.Z
      D.auxiliary.nuRouteTriangle.g).map
  top : S.topLift.map =
    (D.normalizedMap D.auxiliary.nuRouteTriangle.Z (.shift 1 D.auxiliary.nuRouteTriangle.X)
      D.auxiliary.nuRouteTriangle.h).map


end
end KIP126.Literature.Route


/-!
# A(M) for the frozen Section 7 route

All fields constrain the SAME `D : Kervaire.Route.Model H M Syn`.
They are explicit external assumptions / source-transport witnesses.
Declaring their types neither proves them nor constructs a witness.

Here the parameter `M : MilnorCooperations H` is an older API name;
the mathematical M of the project is the entire context together with D.
No field supplies C(M), C₃/C₄/C₅, either Proposition 7.8/7.9, generalized
Leibniz/Mahowald, or T(M). No default instance or global axiom is installed.

The closed statement inventory and exact source/application qualifications
are in `docs/A_INPUT_FREEZE.md` and the adjacent `sources.json`.
-/
namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S_0_0 : Syn)) (L : TmfLabels H)

/-- Explicit literature inputs, specialized to one frozen model and η.
The same tmf labels are used for the high class and its C(M) comparison.
`applicability` records source-to-model obligations separately so that a
source existence theorem cannot validate unrelated chosen lifts. -/
structure Inputs where
  classical : ClassicalInputs D η
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationInput D
  algebra : AlgebraInput D
  may : MayInput Syn
  toda : TodaInputs D η
  tmf : TmfInputs D L
  moss : MossInput D
  applicability : Applicability D

/-- Source choices and model comparisons for ONE delivered route. These
are internal construction obligations, separate from the source results. -/
structure Bindings where
  realization : RealizationCoordinates D
  algebra : AlgebraData D
  quotientBinding : QuotientAlgebraBinding D algebra
  algebraBinding : AlgebraBinding D algebra
  may : MayContext Syn
  todaSource : TodaSourceData (Syn := Syn)
  kernelSource : RealizationKernelSourceData Syn
  kernelBinding : RealizationKernelBinding D kernelSource
  classicalSource : ClassicalSourceData H
  classicalBinding : ClassicalSourceBinding D η classicalSource
  synthetic_eta : EtaChoice M D.toModelData η
  tmfSource : TmfSourceData H
  tmfBinding : TmfBinding D L tmfSource
  nuSource : NuCofiberSourceData D
  nuBinding : NuCofiberLiftBinding D nuSource
  moss : MossTowerApplicability (H := H)
  realizationAdditive : D.recovery.realization.Additive
  weights : KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison D.nu D.recovery
  nuE2 :
    letI := algebra.classicalSymmetric
    letI := algebra.syntheticSymmetric
    letI := algebra.realizationMonoidal.realization
    letI := realizationAdditive
    KIP126.Comparison.ClassicalSynthetic.RealizationTower.NuE2Binding D
      (fun X a w => KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison.doubleShift
        D.nu D.recovery weights (X.obj D.auxiliary) a (-w))

/-- External results on the source objects fixed in B. Classical and tmf
results are not asserted for arbitrary preselected route objects or lifts. -/
structure Statements (B : Bindings D η L) where
  classical : ClassicalSourceResults M B.classicalSource
  bx : BXDistinguishedInput D η
  synthetic : SyntheticSourceInputs D
  realizationKernel : RealizationKernelSourceResults D B.kernelSource
  realization : RealizationDetection D B.realization
  may : MaySourceResults Syn B.may
  toda : TodaSourceResults D η B.todaSource
  tmf : TmfSourceResults B.tmfSource
  moss : MossSourceInput M B.classicalSource.convergence

/-- Interface's INTERNAL source-application delivery, separate from A(M).
May retains its sign; Toda uses actual secondary-operation evidence; the
kernel and Moss statements use the fixed source/model comparisons. The
compatible normalized triple and local tmf conclusions likewise require
internal construction and multiplicative comparison. These fields are not
new independent external theorems or separately chosen stage witnesses. -/
structure Application (B : Bindings D η L) : Prop where
  may : B.may.SignedBoundary
  toda : TodaApplication η B.todaSource
  realizationKernel : RealizationKernel D
  moss : MossInput D
  nuSource : NuCofiberSourceResults D B.nuSource
  nuCofiber : NuCofiberApplicability D
  tmf : TmfInputs D L

/-- Assemble the consumer API from the SAME sources and certified application.
This chooses no new model, labels, algebra, or convergence comparison. -/
def Statements.toInputs {B : Bindings D η L} (A : Statements D η L B)
    (P : Application D η L B) : Inputs D η L where
  classical := classicalInputsOfSource D η B.classicalSource A.classical
    B.classicalBinding B.synthetic_eta
  bx := A.bx
  synthetic := A.synthetic.toInputs D P.realizationKernel
  realization := ⟨B.realization, A.realization⟩
  algebra := B.algebra.withBinding D B.quotientBinding
  may := { B.may with boundary := P.may }
  toda := todaInputsOfSource D η B.todaSource A.toda P.toda
  tmf := P.tmf
  moss := P.moss
  applicability := ⟨B.moss, P.nuCofiber⟩

/-- Historical compatibility spelling for the applied consumer package.
The current external A(M) is `Statements` on explicit `Bindings`; this alias
also includes internal application evidence through `Inputs`. -/
def A : Prop := Nonempty (Inputs D η L)

end KIP126.Literature.Route


/-! Parameterized route delivery specifications. No witness is chosen here.
The root Challenge2 binds these specifications to its shared witness and requires
agreement with the original sphere presentation. Producing that witness remains
an Interface obligation; this parameterized module chooses no model. -/

namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.LinE2
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Standard Milnor classes and all public route/literature names refer to the
same comparison. These are E₂ identifications, never permanence assumptions. -/
structure LabelsCorrect {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  h0 : R.sphere 1 1 dataH0 = Sphere.Internal.hi H M 0
  h1 : R.sphere 1 2 dataH1 = Sphere.Internal.hi H M 1
  h2 : R.sphere 1 4 (Near126.atom .h2) = Sphere.Internal.hi H M 2
  h4 : R.sphere 1 16 (Near126.atom .h4) = Sphere.Internal.hi H M 4
  h5 : R.sphere 1 32 (Near126.atom .h5) = Sphere.Internal.hi H M 5
  h6 : R.sphere 1 64 dataH6 = Sphere.Internal.hi H M 6
  h0_square : R.sphere 2 2 Near126.h0Sq = Sphere.Internal.hiSquare H M 0
  h5_square : R.sphere 2 64 Near126.h5Sq = Sphere.Internal.hiSquare H M 5
  h6_square : R.sphere 2 128 dataH6Sq = Sphere.Internal.hiSquare H M 6
  x_126_8_4 : R.sphere 8 134 (Near126.atom .x_126_8_4) = L.x_126_8_4
  x_126_8 : R.sphere 8 134 (Near126.atom .x_126_8) = L.x_126_8
  x_124_8 : R.sphere 8 132 (Near126.atom .x_124_8) = L.x_124_8
  x_109_12 : R.sphere 12 121 (Near126.atom .x_109_12) = L.x_109_12
  g : R.sphere 4 24 (Near126.atom .g) = G.g
  delta_h_1_mul_g : R.sphere 9 54 (Near126.atom .delta_h_1_mul_g) = G.delta_h_1_mul_g

/-- Stage-1 delivery type. Supplying a value requires proving the selected
computation claims and their interpretation on D. Stage 2 can instead accept
this type as an explicit hypothesis, without invoking bulk/global axioms. -/
structure Inputs (D : Model H M Syn) (L : Labels H)
    (G : KIP126.Literature.Route.TmfLabels H) where
  realization : Realization D
  basis : ∀ d ∈ Raw.degrees, BasisCorrect realization d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue realization d
  products : ∀ p ∈ Raw.products, ProductCorrect realization p
  labels : LabelsCorrect realization L G
  results : ∀ c ∈ Raw.claims, Statement realization c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect realization p
  top : TopCorrect realization

/-- Seven atomic certification obligations on ONE interpretation. These are
Interface proof targets; there is no extra stage axiom or fresh choice. -/
structure CertifiedRealization {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  basis : ∀ d ∈ Raw.degrees, BasisCorrect R d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue R d
  products : ∀ p ∈ Raw.products, ProductCorrect R p
  labels : LabelsCorrect R L G
  results : ∀ c ∈ Raw.claims, Statement R c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect R p
  top : TopCorrect R

/-- Joint existence, not correctness for an arbitrary interpretation/label. -/
def Certification (D : Model H M Syn) (G : KIP126.Literature.Route.TmfLabels H) : Prop :=
  ∃ (R : Realization D) (L : Labels H), CertifiedRealization R L G

/-- Assemble exactly the certified realization. -/
def CertifiedRealization.toInputs {D : Model H M Syn} {R : Realization D}
    {L : Labels H} {G : KIP126.Literature.Route.TmfLabels H}
    (h : CertifiedRealization R L G) : Inputs D L G where
  realization := R
  basis := h.basis
  csv := h.csv
  products := h.products
  labels := h.labels
  results := h.results
  bottom := h.bottom
  top := h.top

/-- Recover the same seven conditions without reinterpreting the data. -/
def Inputs.toCertifiedRealization {D : Model H M Syn} {L : Labels H}
    {G : KIP126.Literature.Route.TmfLabels H} (I : Inputs D L G) :
    CertifiedRealization I.realization L G where
  basis := I.basis
  csv := I.csv
  products := I.products
  labels := I.labels
  results := I.results
  bottom := I.bottom
  top := I.top

/-- C(M), explicitly retaining the same route and tmf labels as A(M) and T(M). -/
def CInput (D : Model H M Syn) (L : Labels H)
    (G : KIP126.Literature.Route.TmfLabels H) : Prop := Nonempty (Inputs D L G)
end
end KIP126.Computation.Route



namespace KIP126.Classical.Adams

/-- Range-limited presentation of the fixed internal sphere E₂. Integer-linear
equivalences preserve the existing additive groups; the source F₂ structure
can be transported without changing them. No higher differential is supplied.
The separate `LinBasisTable` certification, not this structure, asserts that
the imported monomials form a Lean `Module.Basis`. -/
structure LinE2Presentation where
  comparison : ∀ s t : ℕ, t ≤ 261 →
    KIP126.LinE2.E2At s t ≃ₗ[ℤ] sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))
  product : ∀ s t s' t' : ℕ,
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) →ₗ[ℤ]
    sphereAdamsData.Page 2 ((s' : ℤ), (t' : ℤ)) →ₗ[ℤ]
      sphereAdamsData.Page 2 (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ))
  comparison_mul : ∀ (s t s' t' : ℕ) (h : t + t' ≤ 261)
    (x : KIP126.LinE2.E2At s t) (y : KIP126.LinE2.E2At s' t')
    (z : KIP126.LinE2.E2At (s + s') (t + t')),
    x.val * y.val = z.val →
      comparison (s + s') (t + t') h z =
        product s t s' t' (comparison s t (by omega) x)
          (comparison s' t' (by omega) y)

end KIP126.Classical.Adams

namespace KIP126

namespace Challenge2

open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams LinE2
open Core.SpectralSequence

universe u v w

/-- cm1：同一实际球面 E₂ 的完整 CSV 坐标，范围为 t ≤ 261。
坐标逆像的每个单位向量，经同一 presentation 拉回后必须是指定 CSV 单项式。
等价同时保证线性无关与生成性，不将固定 CSV 认证放回 Challenge1，
也不为内部页面另选一个 F₂ 作用。 -/
structure SphereBasisInterface (P : LinE2Presentation) where
  coordinates : ∀ (s t : ℕ), t ≤ 261 →
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ]
      (BasisIndex s t →₀ Core.Algebra.F2)
  csv_values : ∀ (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t),
    ((P.comparison s t ht).symm
      ((coordinates s t ht).symm (Finsupp.single i 1))).val =
        basisValue (basisRowAt s t i)

section Moss

open StableHomotopy StableHomotopy.Cohomology Classical.Adams.Moss

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [MonoidalClosed C] [BraidedCategory C]
  (H : Mod2EilenbergMacLane (C := C)) (R : Mod2RingStructure H)
  [∀ A : C, (tensorRight A).CommShift ℤ]
  [∀ A : C, (tensorRight A).IsTriangulated] [MonoidalPreadditive C]
  [∀ A : C, (tensorLeft A).CommShift ℤ]

/-- am8/am15：同一映射 Adams 塔上的配对、检测、收敛和不定性上下文。
这些项目构造与性质不归为外部 Moss 定理；定理结论由 LiteratureInterface 单列。
`objects` 指定应用范围；不要求任意谱的 Adams SS 收敛到未完备同伦群。
配对的每个值由实际长层代表元约束，收敛端使用实际塔像滤过。
Massey 关系使用 E_(r−1) 的 defining system，因此范围是 r ≥ 3。
来源：MainPaper:2537–2545；Moss Theorem 1.2。现代 crossing/weak-convergence
表述另见 Belmont–Kong, arXiv:2112.08689v2, Definitions 2.3–2.4。
此类型提出模型交付义务，不是对任意背景都已有该结构的证明。 -/
structure MossContext {ι : Type w} (objects : ι → C) where
  composition : CompositionPairing H R
  coherent : composition.Coherent H R
  convergence : ∀ X Y : ι, MappingAdamsConvergence H.unit (objects X) (objects Y)
  weak_convergence : ∀ X Y : ι, MappingAdamsTower H.unit (objects X) (objects Y)
  detection : ∀ X Y Z : ι,
    composition.DetectionCompatible H R (objects X) (objects Y) (objects Z)
      (convergence X Y) (convergence Y Z) (convergence X Z)
  indeterminacy : ∀ (r : ℤ) (hr : 3 ≤ r) (W X Y Z : ι) (i j k : ℤ × ℤ)
    (a : (mappingSequence H.unit (objects W) (objects X)).Page r i)
    (b : (mappingSequence H.unit (objects X) (objects Y)).Page r j)
    (c : (mappingSequence H.unit (objects Y) (objects Z)).Page r k)
    (x₀ x : (mappingSequence H.unit (objects W) (objects Z)).Page r
      (PageMassey.degree r i j k)),
    PageMassey.Relation H R composition r hr x₀ a b c →
      (PageMassey.Relation H R composition r hr x a b c ↔
        PageMassey.Indeterminacy H R composition r (j := j) a c (x - x₀))

/-- Compatibility package retaining its original fields and constructor.
The source-bearing Moss conclusion is separated from this context in Challenge2. -/
structure MossInterface {ι : Type w} (objects : ι → C) where
  composition : CompositionPairing H R
  coherent : composition.Coherent H R
  convergence : ∀ X Y : ι, MappingAdamsConvergence H.unit (objects X) (objects Y)
  weak_convergence : ∀ X Y : ι, MappingAdamsTower H.unit (objects X) (objects Y)
  detection : ∀ X Y Z : ι,
    composition.DetectionCompatible H R (objects X) (objects Y) (objects Z)
      (convergence X Y) (convergence Y Z) (convergence X Z)
  indeterminacy : ∀ (r : ℤ) (hr : 3 ≤ r) (W X Y Z : ι) (i j k : ℤ × ℤ)
    (a : (mappingSequence H.unit (objects W) (objects X)).Page r i)
    (b : (mappingSequence H.unit (objects X) (objects Y)).Page r j)
    (c : (mappingSequence H.unit (objects Y) (objects Z)).Page r k)
    (x₀ x : (mappingSequence H.unit (objects W) (objects Z)).Page r
      (PageMassey.degree r i j k)),
    PageMassey.Relation H R composition r hr x₀ a b c →
      (PageMassey.Relation H R composition r hr x a b c ↔
        PageMassey.Indeterminacy H R composition r (j := j) a c (x - x₀))
  moss : Classical.Adams.Moss.Statement H R composition objects convergence


/-- Forget only the external Moss conclusion, retaining every actual choice. -/
def MossInterface.toContext {ι : Type w} {objects : ι → C}
    (input : MossInterface H R objects) : MossContext H R objects where
  composition := input.composition
  coherent := input.coherent
  convergence := input.convergence
  weak_convergence := input.weak_convergence
  detection := input.detection
  indeterminacy := input.indeterminacy

/-- Reassemble the old interface on exactly the supplied context. -/
def MossContext.withStatement {ι : Type w} {objects : ι → C}
    (context : MossContext H R objects)
    (proof : Classical.Adams.Moss.Statement H R context.composition objects
      context.convergence) : MossInterface H R objects where
  composition := context.composition
  coherent := context.coherent
  convergence := context.convergence
  weak_convergence := context.weak_convergence
  detection := context.detection
  indeterminacy := context.indeterminacy
  moss := proof

end Moss

/-- am8/am15 的固定球面交付；基础、HF₂、ring 与所有 tensor 选择
均来自同一个 Challenge1 见证，没有增加另一个可独立选择的模型。
这里的球面映射谱仍需通过实际 ihom(unit,unit) 同构与 sphereAdamsData 比较。
保留原兼容接口；总包分别存放 context 与文献结论。 -/
def StandardSphereMossInterface : Type 1 :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossInterface c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

/-- The same fixed sphere context, without assuming the external Moss statement. -/
def StandardSphereMossContext : Type 1 :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossContext c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

/-- Moss's conclusion on the selected composition and convergence data. -/
def StandardSphereMossStatement (context : StandardSphereMossContext) : Prop :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  Classical.Adams.Moss.Statement c.foundationInput.hf2 c.cooperationInput.ring
    context.composition
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))
    context.convergence

/-- Compatibility assembly never chooses a second sphere context. -/
noncomputable def StandardSphereMossContext.withStatement (context : StandardSphereMossContext)
    (proof : StandardSphereMossStatement context) : StandardSphereMossInterface :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossContext.withStatement c.foundationInput.hf2 c.cooperationInput.ring context proof

/-- The chosen algebra object and fixed tmf coordinates, before the BR21 claim. -/
structure TmfModel {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) where
  target : Mon C
  coordinates : Tmf.E2Presentation H target

/-- am14 的 BR21 微分切片。同一代数对象的单位定义实际 Hurewicz，
固定 CSV 商中的 w₂² 与 β⁵g 经同一个坐标比较进入该对象的实际 Adams 塔。
这项只交付微分等式，不从它增加非零或存活。
来源：MainPaper:2791 对 BR21 的明确引用；固定坐标源为 v126.3.cw49。
本组尚不包含 tmf 的几何构造、乘法比较、θ₅ 像零或 125-stem 检测。 -/
structure TmfDifferentialInterface {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) where
  target : Mon C
  coordinates : Tmf.E2Presentation H target
  br21 : HasDifferential (adamsTowerInternalSpectralSequence H.unit target.X) 3
    (16, 112) (19, 114) coordinates.v2Sixteen coordinates.betaFiveG

/-- Project the same target and coordinates from the compatibility interface. -/
def TmfDifferentialInterface.toModel {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (input : TmfDifferentialInterface H) : TmfModel H where
  target := input.target
  coordinates := input.coordinates

/-- BR21's differential on this exact algebra object and coordinate comparison. -/
def TmfModel.Br21Statement {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) : Prop :=
  HasDifferential (adamsTowerInternalSpectralSequence H.unit model.target.X) 3
    (16, 112) (19, 114) model.coordinates.v2Sixteen model.coordinates.betaFiveG

/-- Reassemble the original tmf interface without a fresh choice. -/
def TmfModel.withDifferential {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) (proof : model.Br21Statement) : TmfDifferentialInterface H where
  target := model.target
  coordinates := model.coordinates
  br21 := proof

/-- am14 的单位与乘法比较义务，约束已选的同一个 target/coordinates。
乘法使用实际 Adams 层配对及 target.mul；不再容许独立选择一个页面乘法。
所有张量、HF₂ ring 和相容结构来自同一个 Challenge1 见证。 -/
def StandardTmfModelMultiplicativeInterface
    (T : TmfModel standardFoundation.hf2) : Prop :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  T.coordinates.RespectsUnit ∧
    Tmf.E2Presentation.RespectsMultiplication c.cooperationInput.ring T.coordinates

/-- Original comparison API, definitionally the property of the same tmf model. -/
def StandardTmfMultiplicativeInterface
    (T : TmfDifferentialInterface standardFoundation.hf2) : Prop :=
  StandardTmfModelMultiplicativeInterface T.toModel

/-- cm1/am4：同一 Lin presentation 的有界实际球面乘法与单位。
输出 second cycle 的底层严格等于已构造的 first-layer product；存在量词
只表达该实际乘积闭合于 cycles，不选择另一个运算。对所有输入代表元的
商类等式同时要求其值与 presentation.product 相符。范围是 t+t′≤261，
不由此宣称高页 Leibniz、全局乘法或与 cobar cup 的比较已经完成。 -/
def SphereMultiplicativeInterface (P : LinE2Presentation) : Prop :=
  let c := KIP126.Interface.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  (∃ x : LinE2.E2At 0 0, x.val = 1 ∧
    P.comparison 0 0 (by decide) x =
      Suspension.classOfSecondCycle c.foundationInput.hf2
        StableHomotopy.SphereSpectrum 0 0
        (Sphere.Multiplication.unitSecondCycle c.foundationInput.hf2)) ∧
  ∀ (s t s' t' : ℕ), t + t' ≤ 261 →
    ∀ (a : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) s t)
      (b : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) s' t'),
      ∃ z : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) ((s + s' : ℕ) : ℤ) ((t + t' : ℕ) : ℤ),
        z.val = Sphere.Multiplication.firstProduct c.foundationInput.hf2
          c.cooperationInput.ring s t s' t' a.val b.val ∧
        P.product s t s' t'
          (Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum s t a)
          (Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum s' t' b) =
          Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum
            ((s + s' : ℕ) : ℤ) ((t + t' : ℕ) : ℤ) z

/-- am1：一般内部页面 calculus 的派生交付。页面与微分均来自同一个 E；
同调同构来自 nested Z/B 模型，不另选一套谱序列。 -/
structure PageCalculus {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (E : Core.SpectralSequence C ι) : Prop where
  homology : ∀ (r : ℤ) (k : ι), E.r₀ ≤ r →
    Nonempty (E.Page (r + 1) k ≅ (E.pageShortComplex r (k - E.diffDeg r)).homology)
  square_zero : ∀ (r : ℤ) (k : ι), E.d r k ≫ E.d r (k + E.diffDeg r) = 0

/-- am1：模页面的代表元、边界及非零微分条件。普通微分等式不能提供
非零存活；后两个字段明确保留 `HasNonzeroDifferential` 的非零前提。 -/
structure RepresentativeCalculus {R : Type u} [Ring R]
    (E : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ)) : Prop where
  page_two : ∀ p (a b : E.Page 2 p), RepresentsOnPage E 2 p a b → a = b
  boundary_cycle : ∀ r p (a : E.Page r (p + E.diffDeg r)),
    IsPageBoundary E r p a → IsPageCycle E r (p + E.diffDeg r) a
  differential_source : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r p x
  differential_target : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r q y

/-- am1/am2/am7：论文的 Z_c、B_c 是实际 E₂ 内的子模，不能与尚未除去
第一微分边界的 raw ambient 混同。这里集中列出页码、商映射和 crossing
约定的派生交付；不新增可自由选择的 cycles、boundaries 或 differential。 -/
structure PaperCycleCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) (X : C) : Prop where
  first_cycles : ∀ p, PageRepresentatives.cycles H X 1 p = ⊤
  first_boundaries : ∀ p, PageRepresentatives.boundaries H X 1 p = ⊥
  represents : ∀ r, 2 ≤ r → ∀ p (x : PageRepresentatives.Ambient H X p),
    PageRepresentatives.IsCycle H X (r - 1) p x ↔
      ∃ xr : (adamsTowerInternalSpectralSequence H.unit X).Page r p,
        RepresentsOnPage (adamsTowerInternalSpectralSequence H.unit X) r p x xr
  degree : ∀ r p q (x : PageRepresentatives.Ambient H X p)
    (y : PageRepresentatives.Ambient H X q),
    PageRepresentatives.DifferentialAt H X r p q x y → p + (r, r - 1) = q
  no_crossing_two : ∀ r, 2 ≤ r → ∀ p, PageRepresentatives.NoCrossingOn H X r 2 p

/-- am3：同一内部谱序列态射的派生自然性。所有页面映射由 f 的环境映射
诱导；不另选页面映射，也不把微分等式加强为非零结论。 -/
structure MorphismCalculus {R : Type u} [Ring R]
    (E E' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (f : SpectralSequenceMorphism E E') : Prop where
  differential_comm : ∀ (r : ℤ) (p : ℤ × ℤ),
    f.pageMap r p ≫ E'.d r p =
      E.d r p ≫ f.pageMap r (p + E.diffDeg r) ≫
        eqToHom (by rw [f.diffDeg_eq])
  page_identity : ∀ (r : ℤ) (p : ℤ × ℤ),
    (𝟙 E : E ⟶ E).pageMap r p = 𝟙 _
  page_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (r : ℤ) (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).pageMap r p = f.pageMap r p ≫ g.pageMap r p
  infinity_identity : ∀ (p : ℤ × ℤ), (𝟙 E : E ⟶ E).eInftyMap p = 𝟙 _
  infinity_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).eInftyMap p = f.eInftyMap p ≫ g.eInftyMap p
  representatives : ∀ (r : ℤ) (p : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page r p),
    RepresentsOnPage E r p x y →
      RepresentsOnPage E' r p (f.pageMap 2 p x) (f.pageMap r p y)
  differential : ∀ (r : ℤ) (p q : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page 2 q),
    HasDifferential E r p q x y →
      HasDifferential E' r p q (f.pageMap 2 p x) (f.pageMap 2 q y)

/-- am10 的对象绑定：classic 页面是实际 unit 塔的内部构造，synthetic
页面是同一 family 在 νX 的取值。该类型不声称比较已经构造或为同构。 -/
abbrev NuComparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {Syn : Type w} [Synthetic.Context.SyntheticCategory.{w, v} Syn]
    {H : C} (unit : 𝟙_ C ⟶ H) (N : Synthetic.Context.NuFunctorData C Syn)
    (F : Synthetic.SpectralSequence.SyntheticAdamsFamily Syn) (X : C) :=
  Comparison.ClassicalSynthetic.ReindexedSpectralSequenceMap
    (adamsTowerInternalSpectralSequence unit X) (F.nu N X)

section SyntheticEInfty

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)
  (F : SyntheticAdamsFamily Syn)

/-- am11：指定 X 的一阶 λ 商实际同伦群与经典 E₂ 的比较。
`a = 0` 对应 MainPaper `thm:17e90ac0`(1) / BHS `lemm:ctauE2`；
任意 a 的版本还需实际 shift 与 λ 商的比较。通用比较类型现归 Def；此处只保留交付接口的兼容别名。
不声称已构造模型见证，也不由 E∞ 的 specialFiber 字段直接推出。 -/
abbrev FirstQuotientHomotopyComparison (X : C) :=
  Comparison.ClassicalSynthetic.FirstQuotientHomotopyComparison H N X

/-- 只用同一比较的 a=0 分量及实际商函子的零移位同构，恢复 νX 本身的
一阶商比较；不选择另一份边缘同构。 -/
noncomputable def FirstQuotientHomotopyComparison.unshifted {X : C}
    (Q : FirstQuotientHomotopyComparison H N X)
    (cofib : FunctorialCofiberCoherence Syn) (s t : ℤ) :
    BiHom (t - s) t (XModLambdaN (N.functor.obj X) 1) ≃+ Ambient H X (s, t) := by
  let e := (XModLambdaN.functor cofib 1).mapIso
    (SyntheticCategory.biShift_zero.app (N.functor.obj X))
  let transport : BiHom (t - s) t (XModLambdaN (N.functor.obj X) 1) ≃+
      BiHom (t - s) t
        (XModLambdaN ((SyntheticCategory.biShift (0, 0)).obj (N.functor.obj X)) 1) :=
    { toFun := fun f => f ≫ e.inv
      invFun := fun f => f ≫ e.hom
      left_inv := by intro f; simp
      right_inv := by intro f; simp
      map_add' := by intro f g; simp only [Preadditive.add_comp] }
  exact transport.trans
    (Eq.mp (congrArg (fun weight : ℤ =>
      BiHom (t - s) weight
        (XModLambdaN ((SyntheticCategory.biShift (0, 0)).obj (N.functor.obj X)) 1) ≃+
          Ambient H X (s, t)) (Int.add_zero t)) (Q 0 s t))

/-- 把实际 β_q 的像放进同一经典 E₂ 的目标次数。β_q 降低 stem 一次、
增加 weight q，因此对应 d_(q+1) 的 (s+q+1,t+q)，不是 d_q。 -/
noncomputable def FirstQuotientHomotopyComparison.bocksteinTargetClass {X : C}
    (Q : FirstQuotientHomotopyComparison H N X)
    (cofib : FunctorialCofiberCoherence Syn) (q : ℕ) (s t : ℤ)
    (z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q)) :
    Ambient H X (s + (q : ℤ) + 1, t + (q : ℤ)) :=
  FirstQuotientHomotopyComparison.unshifted H N Q cofib
    (s + (q : ℤ) + 1) (t + (q : ℤ))
    (Eq.mp (congrArg (fun n => BiHom n (t + (q : ℤ))
      (XModLambdaN (N.functor.obj X) 1))
      (by omega : t - s - 1 = (t + (q : ℤ)) - (s + (q : ℤ) + 1)))
      (Synthetic.Bockstein.betaHom (N.functor.obj X) q (t - s) t z))

section FiniteBockstein
variable [CategoryTheory.Limits.HasProductsOfShape ℕ C]

/-- BHS A.1 的有限提升／微分部分，绑定同一一阶商比较及实际 λ 商映射。
同时保留原文的 E-nilpotent completeness 和同一实际 Adams 塔的强收敛。
q=1 对应无先行微分，q=2 对应 d₂=0；β_q 对应 d_(q+1)。
负号来自原文，消去它只需已比较 E₂ 的模二性质，不对所有 synthetic
同伦群假设 2=0。这里只断言存在合适的 lift，并按实际页上的关系比较像，
不把它加强成任意 lift 在 E₂ 上有唯一相同代表。该参数化文献接口不扩充总包。 -/
structure FiniteLambdaBocksteinInterface (coh : BiShiftCoherence Syn)
    (cofib : FunctorialCofiberCoherence Syn) (X : C)
    (Q : FirstQuotientHomotopyComparison H N X) : Prop where
  lifting : IsENilpotentComplete H.unit X → IsAdamsTowerStronglyConvergent H.unit X →
    ∀ (q : ℕ) (hq : 1 ≤ q) (s t : ℤ) (x : Ambient H X (s, t)),
      IsCycle H X (q : ℤ) (s, t) x ↔
        ∃ z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q),
          Synthetic.Bockstein.firstRestrictionHom coh (N.functor.obj X) q hq (t - s) t z =
            (FirstQuotientHomotopyComparison.unshifted H N Q cofib s t).symm x
  differential : IsENilpotentComplete H.unit X → IsAdamsTowerStronglyConvergent H.unit X →
    ∀ (q : ℕ) (hq : 1 ≤ q) (s t : ℤ) (x : Ambient H X (s, t)),
      IsCycle H X (q : ℤ) (s, t) x →
        ∃ z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q),
          Synthetic.Bockstein.firstRestrictionHom coh (N.functor.obj X) q hq (t - s) t z =
            (FirstQuotientHomotopyComparison.unshifted H N Q cofib s t).symm x ∧
          DifferentialAt H X ((q : ℤ) + 1) (s, t) (s + (q : ℤ) + 1, t + (q : ℤ)) x
            (-(FirstQuotientHomotopyComparison.bocksteinTargetClass H N Q cofib q s t z))

end FiniteBockstein


/-- Compatibility names for the generic Def comparison language. No fixed
CSV or stage input is needed to define these mathematical types. -/
abbrev NuEInftyFormula := KIP126.Synthetic.SpectralSequence.NuEInftyFormula H N F
abbrev FiniteEInftyFormula := KIP126.Synthetic.SpectralSequence.FiniteEInftyFormula H N F
abbrev SyntheticEInftyPresentation :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation H N F
abbrev SyntheticEInftyMapCompatibility :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyMapCompatibility H N F
namespace SyntheticEInftyPresentation
variable {H N F}

/-- 仅使用已有两个指数范围的比较；不在每次使用时重新选择同构。 -/
noncomputable def finite (P : SyntheticEInftyPresentation H N F)
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ) :
    ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      finiteEInftyModel H X q p w := by
  by_cases hq1 : q = 1
  · subst q
    exact P.specialFiber X p w
  · exact P.quotient X q (by omega) p w

noncomputable def nuWindow (P : SyntheticEInftyPresentation H N F)
    (X : C) (p : ℤ × ℤ) (w : ℤ) (hw : w ≤ p.2) :
    ((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      PermanentQuotient H X (1 + p.2 - w) p :=
  (P.nu X p w).trans (nuEInftyWindow H X p w hw)

noncomputable def finiteWindow (P : SyntheticEInftyPresentation H N F)
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < q) :
    ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      CycleQuotient H X (q - p.2 + w) (1 + p.2 - w) p :=
  (P.finite X q hq p w).trans (finiteEInftyWindow H X q p w hw)

end SyntheticEInftyPresentation

end SyntheticEInfty

section PageExtensionAmbiguity

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6 的剩余模型绑定义务，逐一量化同一比较家族中的实际 extension。
kernel 是经典 Adams boundaries；shorterImages 是同一映射实际较短扩张目标
的 span。两条等式足以派生经典 target coset 与 essential 判据，但尚未由
任意 NormalizedPageFamily 自动构造。infinite 仍保留该家族的有界收敛前提。 -/
structure PageExtensionAmbiguityInterface (P : NormalizedPageFamily H N F f) : Prop where
  finite_kernel : ∀ {r : ℕ} {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : FiniteExtensionWitness P r n s t x y),
    W.ClassicalBoundaryKernel
  finite_shorter : ∀ {r : ℕ} {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : FiniteExtensionWitness P r n s t x y),
    W.ShorterImagesCompatible
  infinite_kernel : ∀ {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : InfiniteExtensionWitness P n s t x y),
    W.ClassicalBoundaryKernel
  infinite_shorter : ∀ {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : InfiniteExtensionWitness P n s t x y),
    W.ShorterImagesCompatible

end PageExtensionAmbiguity

section PageExtensionTargetComparison

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6/am11：把同一 page-extension 家族已有的 top-weight 目标比较，
绑定到全 weight E∞ presentation 的规范代表元。它只要求比较图交换，
没有把待推出的 boundary kernel 等式放进输入。源比较、δ 和 shorter-image
相容性仍是另行交付的义务。 -/
structure PageExtensionTargetComparison
    (P : NormalizedPageFamily H N F f) (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F)
    (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X)) : Prop where
  target_tower : P.targetTower = T Y
  finite : ∀ (q k : ℕ) (hkq : k < q) (s t : ℤ)
    (z : cycles H Y (q - k : ℕ) (s, t)),
    R.finiteWindow Y (q - k) (by omega) (s, t) t (by constructor <;> simp <;> omega)
        (S.lowerIso (XModLambdaN (N.functor.obj Y) (q - k)) k (s, t) t
          (P.finiteTarget q k hkq s t z)) =
      finiteTopClass H Y (q - k) (s, t) z
  infinite : ∀ (k : ℕ) (s t : ℤ) (z : permanentCycles H Y (s, t)),
    R.nuWindow Y (s, t) t le_rfl
        (S.lowerIso (N.functor.obj Y) k (s, t) t (P.infiniteTarget k s t z)) =
      permanentTopClass H Y (s, t) z

namespace SyntheticEInftyPresentation

/-- 用已给定的全 weight 比较、规范 top class 和 weight shift 直接构造
有限目标比较；不选择新的 E₂ 标签或线性等价。 -/
noncomputable def finiteCanonicalTarget (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F) (Y : C) (q k : ℕ) (hkq : k < q) (p : ℤ × ℤ) :
    cycles H Y (q - k : ℕ) p ≃ₗ[ℤ]
      ((F.obj ((SyntheticCategory.biShift (0, -(k : ℤ))).obj
        (XModLambdaN (N.functor.obj Y) (q - k)))).sequence.ssData
          (p.1, p.2, p.2 - k)).eInfty :=
  ((finiteTopEquiv H Y (q - k) p).trans
    (R.finiteWindow Y (q - k) (by omega) p p.2
      (by constructor <;> simp <;> omega)).symm).trans
        (S.lowerIso (XModLambdaN (N.functor.obj Y) (q - k)) k p p.2).symm

/-- 未截断目标比较使用同一个永久代表元的 top class。 -/
noncomputable def infiniteCanonicalTarget (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F) (Y : C) (k : ℕ) (p : ℤ × ℤ) :
    permanentCycles H Y p ≃ₗ[ℤ]
      ((F.obj ((SyntheticCategory.biShift (0, -(k : ℤ))).obj
        (N.functor.obj Y))).sequence.ssData (p.1, p.2, p.2 - k)).eInfty :=
  ((permanentTopEquiv H Y p).trans (R.nuWindow Y p p.2 le_rfl).symm).trans
    (S.lowerIso (N.functor.obj Y) k p p.2).symm

end SyntheticEInftyPresentation

/-- 保留原 normalized map、ESS、源比较和实际商塔，只将目标比较装配为
R 与 S 指定的规范比较。后续 witness 必须针对返回的同一家族重新使用，
不能把旧家族中的 extension 关系默认为不变。 -/
noncomputable def canonicalPageExtensionTargets (P : NormalizedPageFamily H N F f)
    (R : SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F) :
    NormalizedPageFamily H N F f :=
  { P with
    finiteTarget := fun q k hkq s t => R.finiteCanonicalTarget S Y q k hkq (s, t)
    infiniteTarget := fun k s t => R.infiniteCanonicalTarget S Y k (s, t) }

end PageExtensionTargetComparison


section PageExtensionSolutions

set_option backward.isDefEq.respectTransparency false

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives Core.SpectralSequence

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6/am7：同一有限商塔的实际 ρ 同伦映射保持指定收敛滤过。
交换方块由 P.towerMap 导出，不另假设，也不选择独立的 ESS 映射。 -/
structure PageExtensionRestrictionFiltration (P : NormalizedPageFamily H N F f) : Prop where
  source_preserves : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) s p,
    ∃ φ : Subobject.underlying.obj ((P.finite j hj).source.filtration.F s p) ⟶
        Subobject.underlying.obj ((P.finite i hi).source.filtration.F s p),
      φ ≫ ((P.finite i hi).source.filtration.F s p).arrow =
        ((P.finite j hj).source.filtration.F s p).arrow ≫
          syntheticHomotopyMap (P.sourceTower.rho i j hij) p
  target_preserves : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) s p,
    ∃ φ : Subobject.underlying.obj ((P.finite j hj).target.filtration.F s p) ⟶
        Subobject.underlying.obj ((P.finite i hi).target.filtration.F s p),
      φ ≫ ((P.finite i hi).target.filtration.F s p).arrow =
        ((P.finite j hj).target.filtration.F s p).arrow ≫
          syntheticHomotopyMap (P.targetTower.rho i j hij) p

set_option linter.defProp false in
/-- 固定 normalized map 的实际商方块；comm 来自既有塔态射。 -/
def PageExtensionRestrictionFiltration.square {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (i j : ℕ)
    (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) :
    SyntheticExtensionData.FilteredSquare (P.finite j hj) (P.finite i hi)
      (P.sourceTower.rho i j hij) (P.targetTower.rho i j hij) where
  comm := P.towerMap.rho_naturality hij
  source_preserves := I.source_preserves i j hi hj hij
  target_preserves := I.target_preserves i j hi hj hij

/-- 限制链映射由实际 ρ 方块构造，不由自由的页面操作指定。 -/
noncomputable def PageExtensionRestrictionFiltration.complexMap
    {P : NormalizedPageFamily H N F f} (I : PageExtensionRestrictionFiltration P)
    (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (p : ℤ × ℤ) :
    FilteredComplex.Morphism ((P.finite j hj).complex p) ((P.finite i hi).complex p) :=
  (I.square i j hi hj hij).complexMap p

/-- am6/am7：实际 ρ 限制保留同一个经典 E₂ 标签。只列出源／靶的比较图；
解集、差群与限制函数随后由真实代表元方程构造。 -/
structure PageExtensionRestrictionLabels (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) : Prop where
  source : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (s t : ℤ)
    (xi : cycles H X i (s, t)) (xj : cycles H X j (s, t)), xi.val = xj.val →
      elementMap (P.finiteSourceMap j hj s t xj) ≫
          (I.complexMap i j hi hj hij (P.degree s t)).associatedGradedMap s 1 =
        elementMap (P.finiteSourceMap i hi s t xi)
  target : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (yi : cycles H Y (i - P.lambdaExponent n : ℕ) (s + n, t + n))
    (yj : cycles H Y (j - P.lambdaExponent n : ℕ) (s + n, t + n)), yi.val = yj.val →
      P.finiteTargetClass j hj n s t hn hkj yj ≫
          (I.complexMap i j hi hj hij (P.degree s t)).associatedGradedMap (s + n) 0 =
        P.finiteTargetClass i hi n s t hn hki yi

/-- 两个实际比较图给出经典标签固定后的解纤维限制。此定义不声称满射。 -/
noncomputable def restrictFiniteSolution {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (xi : cycles H X i (s, t)) (xj : cycles H X j (s, t)) (hx : xi.val = xj.val)
    (yi : cycles H Y (i - P.lambdaExponent n : ℕ) (s + n, t + n))
    (yj : cycles H Y (j - P.lambdaExponent n : ℕ) (s + n, t + n)) (hy : yi.val = yj.val)
    (a : P.FiniteSolutions j hj n s t hn hkj xj yj) :
    P.FiniteSolutions i hi n s t hn hki xi yi := by
  dsimp only [NormalizedPageFamily.FiniteSolutions] at a ⊢
  have b := FilteredComplex.Solutions.restrict (I.complexMap i j hi hj hij (P.degree s t)) a
  erw [J.source i j hi hj hij s t xi xj hx] at b
  erw [J.target i j hi hj hij n s t hn hki hkj yi yj hy] at b
  exact b

set_option backward.isDefEq.respectTransparency true

/-- 在同一永久标签上特化实际限制；只使用永久 cycle 的规范包含。 -/
noncomputable def restrictPermanentFiniteSolution {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a : P.PermanentFiniteSolutions j n s t hn hkj x y) :
    P.PermanentFiniteSolutions i n s t hn hki x y :=
  restrictFiniteSolution (P := P) I J i j
    (lt_of_le_of_lt (Nat.zero_le _) hki) (lt_of_le_of_lt (Nat.zero_le _) hkj)
    hij n s t hn hki hkj
    (Submodule.inclusion (permanentCycles_le_cycles H X (s, t) i) x)
    (Submodule.inclusion (permanentCycles_le_cycles H X (s, t) j) x) rfl
    (Submodule.inclusion (permanentCycles_le_cycles H Y (s + n, t + n)
      (i - P.lambdaExponent n : ℕ)) y)
    (Submodule.inclusion (permanentCycles_le_cycles H Y (s + n, t + n)
      (j - P.lambdaExponent n : ℕ)) y) rfl a

/-- am7：固定永久标签在所有允许的有限商上的实际相容解。
每层必须提供真实方程的一个解，相邻层用同一实际 ρ 限制相容。
此类型不选择成员，也不声称各层非空就足以得到相容塔或无穷解。 -/
structure CoherentPageExtensionSolutions (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n)) : Type v where
  solution : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
    P.PermanentFiniteSolutions q n s t hn hkq x y
  compatible : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
    restrictPermanentFiniteSolution I J q (q + 1) (Nat.le_succ q)
      n s t hn hkq (lt_trans hkq (Nat.lt_succ_self q)) x y
      (solution (q + 1) (lt_trans hkq (Nat.lt_succ_self q))) = solution q hkq

end PageExtensionSolutions



/-- am9 的规范 E₂ 比较义务：每个 cocycle 都必须映到同一 Adams 塔中的
实际类。这个公式排除只给出任意线性等价的接口；不声称已定义导出 Ext。 -/
def CobarE2Comparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop :=
  ∀ s t : ℕ, ∃ e : MilnorCohomology.Cohomology H M s t ≃ₗ[ℤ]
      (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2
        ((s : ℤ), (t : ℤ)),
    ∀ (x : Steenrod.Milnor.cochains s t) (hx : Steenrod.Milnor.differential s t x = 0),
      e (MilnorCohomology.ofCocycle H M x hx) =
        MilnorCohomology.internalClassOfCocycle H M x hx

/-- am9 的独立导出 Ext 比较。分解的逐项 comodule、微分和增广都由实际
Milnor 多项式公式固定；每个 cocycle 的像必须是该分解中的 `extMk` 类。
因此不能用另一份任意线性等价替代。左 Steenrod-module 约定及 Yoneda
乘法相容性仍是单独义务，本组不从加法比较自动推出它们。 -/
structure CobarDerivedExtComparison {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) where
  cobarResolution : Steenrod.Milnor.Ext.CobarResolution
  comparison : ∀ (s t : ℕ), MilnorCohomology.Cohomology H M s t ≃ₗ[Core.Algebra.F2]
    Steenrod.Milnor.Ext.SphereExt s (t : ℤ)
  representatives : ∀ (s t : ℕ) (x : Steenrod.Milnor.cochains s t)
      (hx : Steenrod.Milnor.differential s t x = 0),
    ∃ (f : Steenrod.Milnor.Ext.trivialAt (t : ℤ) ⟶
        cobarResolution.resolution.cocomplex.X s)
      (hf : f ≫ cobarResolution.resolution.cocomplex.d s (s + 1) = 0),
      cobarResolution.representativePolynomial f = Steenrod.Milnor.insertRight s x.val ∧
        comparison s t (MilnorCohomology.ofCocycle H M x hx) =
          cobarResolution.resolution.extMk f (s + 1) rfl hf

/-- 同一比较在内部 Adams E₂ 上的形式：只复合已固定的 cobar/E₂ 比较，
不重新选择页面坐标或另一份 Ext 等价。 -/
noncomputable def CobarDerivedExtComparison.internalEquiv {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    {M : MilnorCooperations H} (E : CobarDerivedExtComparison H M) (s t : ℕ) :
    (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2
      ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] Steenrod.Milnor.Ext.SphereExt s (t : ℤ) :=
  (MilnorCohomology.comparison H M s t).symm.trans
    ((E.comparison s t).restrictScalars ℤ)

/-- am9 的 cobar 乘法切片；使用从 cochain concatenation 真正下降的 cup，
不另选乘法。与内部 Adams 高页配对的相容性是另一个义务。 -/
structure CobarCupCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop where
  representatives : ∀ {s t s' t' : ℕ} (x : Steenrod.Milnor.cochains s t)
    (y : Steenrod.Milnor.cochains s' t')
    (hx : Steenrod.Milnor.IsCycle x) (hy : Steenrod.Milnor.IsCycle y),
    MilnorCohomology.cup H M (MilnorCohomology.ofCocycle H M x hx)
      (MilnorCohomology.ofCocycle H M y hy) =
        MilnorCohomology.ofCocycle H M (Steenrod.Milnor.cup x y)
          (Steenrod.Milnor.cup_isCycle x y hx hy)
  standard_squares : ∀ i : ℕ, MilnorCohomology.hiSquare H M i =
    MilnorCohomology.cohomologyReindex H M rfl (Steenrod.Milnor.hiSquare_internalDegree i)
      (MilnorCohomology.cup H M (MilnorCohomology.hi H M i) (MilnorCohomology.hi H M i))

/-- am9：由同一固定塔及 Milnor cocycle 构造的标准族；没有新的类选择。 -/
noncomputable def standardHi (i : ℕ) :
    sphereAdamsData.Page 2 (1, ((2 ^ i : ℕ) : ℤ)) :=
  Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations i

/-- 标准平方是同一 Milnor cocycle 的 concatenation square 的内部 E₂ 类。
与固定 Lin 计算类的识别仍是另一个比较义务。 -/
noncomputable def standardHiSquare (i : ℕ) :
    sphereAdamsData.Page 2 (2, ((2 ^ (i + 1) : ℕ) : ℤ)) :=
  Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations i

/-- am12：Adams 一线、非零 d₂ 及 May 低维永久存活的完整交付。
所有类来自固定 Milnor cocycle 的实际 cup 与同一内部 E₂ 比较。
MainPaper 一线存活范围的 `j ≥ 3` 与下一行 d₂ 相矛盾，这里采用 j ≤ 3。
本组只陈述文献结论；证明可以暂留 sorry，不把已有 h₄ 单点包装当作全族。 -/
structure AdamsOneLineInterface : Prop where
  adamsOneLine_at_power (j : ℕ) :
      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧
        ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),
          x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j
  adamsOneLine_other_degree (t : ℤ)
      (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :
      ∀ x : sphereAdamsData.Page 2 (1, t), x = 0
  adamsHi_nonzeroSurvival_iff (j : ℕ) :
      NonzeroSurvival sphereAdamsData (1, ((2 ^ j : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j) ↔ j ≤ 3
  adamsOneLine_d2 (j : ℕ) (hj : 4 ≤ j) :
      HasNonzeroDifferential sphereAdamsData 2
        (1, ((2 ^ j : ℕ) : ℤ)) (3, ((1 + 2 ^ (j - 1 + 1) : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j)
        (Sphere.Internal.h0HiSquare standardFoundation.hf2 standardMilnorCooperations (j - 1))
  may_lowDimensionalProducts_permanent :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 2 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 2) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 3 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 3) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 2 + 2 ^ 4 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 2 4)
  may_lowDimensionalSquares_permanent (j : ℕ) (hj : j ≤ 3) :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ (j + 1) : ℕ) : ℤ))
        (Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations j)

/-- am12 的低维永久性切片，使用实际标准类和非零永久存活。
不把结论降为自由 permanence 谓词或零类的循环性。 -/
def LowDimensionalSquarePermanence : Prop :=
  NonzeroSurvival sphereAdamsData (2, 32) (standardHiSquare 4) ∧
    NonzeroSurvival sphereAdamsData (2, 64) (standardHiSquare 5)

/-- am16：Browder 的准确内部页面端。几何解释仍由显式参数指定并需要
相应文献证明，永久性端则固定为本项目同一内部球谱上的标准 hⱼ²。 -/
def BrowderInterface {Manifold : Type} (dimension : Manifold → ℕ)
    (kervaireOne : Manifold → Prop) : Prop :=
  Kervaire.BrowderCriterionStatement dimension kervaireOne
    (fun j => NonzeroSurvival sphereAdamsData
      (2, ((2 ^ (j + 1) : ℕ) : ℤ)) (standardHiSquare j))

/-- The geometric objects referred to by the external Kervaire results.
The data are selected once in the shared model bindings; the literature part
states results about these exact choices. -/
structure GeometryModel where
  Manifold : Type
  dimension : Manifold → ℕ
  kervaireOne : Manifold → Prop

/-- The source-bearing geometric part of A(M).  Low-dimensional existence,
HHR nonexistence, and Browder's criterion all use the same geometric model.
The catalogue roots keep the three logically distinct literature sources
auditable inside the single Challenge2 witness. -/
structure GeometryLiteratureInterface (G : GeometryModel) where
  low_dimensions : External.CataloguedExternalResult
    (∀ j : ℕ, 1 ≤ j → j ≤ 5 →
      ∃ M, G.dimension M = 2 ^ (j + 1) - 2 ∧ G.kervaireOne M)
  low_dimensions_root : low_dimensions.root = .lowKervaireExistence
  high_nonexistence : External.CataloguedExternalResult
    (∀ j : ℕ, 7 ≤ j →
      ¬ ∃ M, G.dimension M = 2 ^ (j + 1) - 2 ∧ G.kervaireOne M)
  high_nonexistence_root : high_nonexistence.root = .hhrNonexistence
  browder : External.CataloguedExternalResult
    (BrowderInterface G.dimension G.kervaireOne)
  browder_root : browder.root = .browderCriterion

set_option linter.defProp false in
/-- Forget only the provenance wrapper while retaining the shared geometric
model selected by Challenge2. -/
def GeometryLiteratureInterface.geometry
    {G : GeometryModel} (A : GeometryLiteratureInterface G) :
    KIP126.Challenge1.GeometryInterface G.dimension G.kervaireOne where
  low_dimensions := A.low_dimensions.value.proof
  high_nonexistence := A.high_nonexistence.value.proof

set_option linter.defProp false in
/-- Browder's result on the same geometric model and the standard internal
Adams squares used by the rest of Challenge2. -/
def GeometryLiteratureInterface.browderCriterion
    {G : GeometryModel} (A : GeometryLiteratureInterface G) :
    BrowderInterface G.dimension G.kervaireOne :=
  A.browder.value.proof

/-- Literal CSV coordinates, independent of any choice of comparison map. -/
def HasCoordinates {s t : Nat} (x : E2At s t) (indices : List Nat) : Prop :=
  ∃ rows : List BasisRow,
    rows.map BasisRow.index = indices ∧
    (∀ row ∈ rows, row ∈ basisRows ∧ row.s = s ∧ row.t = t) ∧
    x.val = (rows.map basisValue).sum

/-- Mathematical meaning of one exported differential row for one fixed Lin
presentation.  The same `presentation` is used for both source and target. -/
def DifferentialStatement (presentation : Classical.Adams.LinE2Presentation)
    (row : Computation.LinProofs.DifferentialRow) : Prop :=
  ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261),
    ∃ (x : E2At row.s row.t) (y : E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      ∃ (h : ((row.s : ℤ), (row.t : ℤ)) + Classical.Adams.sphereAdamsData.diffDeg row.r =
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ)))
        (xr : Classical.Adams.sphereAdamsData.Page row.r ((row.s : ℤ), (row.t : ℤ)))
        (yr : Classical.Adams.sphereAdamsData.Page row.r
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))),
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison row.s row.t hx x) xr ∧
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison (row.s + row.r) (row.t + row.r - 1) hy y) yr ∧
        (Classical.Adams.sphereAdamsData.d row.r _ ≫
          eqToHom (congrArg (Classical.Adams.sphereAdamsData.Page row.r) h)) xr = yr

/-- cm5：固定 staircase 解码所得结论。全部坐标经同一实际球面 E₂
比较解释；unknown incoming 仅给累计边界，unknown outgoing 仅给提升。
9000 层仅记录到 E₁₀₀₀ 的提升，不能仅凭程序阈值追加非零 E∞ 存活。 -/
def StaircaseClaimStatement (presentation : Classical.Adams.LinE2Presentation) :
    Computation.LinProofs.State.Claim → Prop
  | .equation r s t indices target =>
      ∃ (hx : t ≤ 261) (hy : t + r - 1 ≤ 261)
        (x : E2At s t) (y : E2At (s + r) (t + r - 1)),
        HasCoordinates x indices ∧ HasCoordinates y target ∧
          HasDifferential sphereAdamsData r
            ((s : ℤ), (t : ℤ)) (((s + r : ℕ) : ℤ), ((t + r - 1 : ℕ) : ℤ))
            (presentation.comparison s t hx x)
            (presentation.comparison (s + r) (t + r - 1) hy y)
  | .reaches r s t indices =>
      ∃ (ht : t ≤ 261) (x : E2At s t), HasCoordinates x indices ∧
        ReachesPage sphereAdamsData r ((s : ℤ), (t : ℤ))
          (presentation.comparison s t ht x)
  | .boundaryBy r s t indices =>
      ∃ (ht : t ≤ 261) (x : E2At s t), HasCoordinates x indices ∧
        IsBoundaryBy sphereAdamsData r ((s : ℤ), (t : ℤ))
          (presentation.comparison s t ht x)

/-- cm5 固定球面 snapshot 的逐行交付，同时要求解码成功和数学真实性。
记录缺失不会推出命题；解码失败也不能使这一义务空泛成立。
不是任意同名表，更不是从数据库哈希推出内部谱序列事实。 -/
structure SphereStaircaseInterface (presentation : Classical.Adams.LinE2Presentation) : Prop where
  rows_sound : ∀ (shard offset : Nat) (row : Computation.LinProofs.Raw.StaircaseRow),
    Computation.LinProofs.StaircaseData.lookup shard offset = some row →
      ∃ claim, Computation.LinProofs.State.decode row = some claim ∧
        StaircaseClaimStatement presentation claim

/-- cm3：实际内部对象、坐标字典与原始条件日志之间的参数化交付。
每条已解释的 trial 是相对于完整祖先上下文的反驳；D/DI 才是条件结论。
这一结构没有选择项目对象或字典，也没有将未解释记录当作已覆盖。
固定全日志与各谱的实际坐标绑定是进入 Challenge2 总见证前的独立义务。 -/
structure LinBranchInterface {R : Type u} [Ring R] {ι : Type w}
    (E : ι → Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (lookup : String → Option ι)
    (coordinates : Computation.LinProofs.Branch.CoordinateDictionary E)
    (rows : List Computation.LinProofs.Raw.LogRow) : Prop where
  trial_refutations :
    Computation.LinProofs.Branch.RetainedTrialRefutations lookup coordinates rows
  conditional_facts :
    Computation.LinProofs.Branch.RetainedConditionalFacts lookup coordinates rows

/-- Shared project comparisons and model data. These are not external literature
claims and not extra program outputs. The underlying model remains the fixed
Challenge1 witness used by all types above; no quantification over a new M is added. -/
structure ModelBindings where
  geometry : GeometryModel
  cobarDerivedExt : CobarDerivedExtComparison
    Classical.Adams.standardFoundation.hf2 Classical.Adams.standardMilnorCooperations
  moss : StandardSphereMossContext
  tmf : TmfModel Classical.Adams.standardFoundation.hf2
  tmfMultiplicative : StandardTmfModelMultiplicativeInterface tmf
  routeLabels : Kervaire.Route.Labels Classical.Adams.standardFoundation.hf2
  tmfLabels : Literature.Route.TmfLabels Classical.Adams.standardFoundation.hf2
  routeEta : Synthetic.Context.BiHom 1 2
    (Synthetic.Context.S_0_0 : Classical.Adams.StandardSynthetic)
  route : Literature.Route.Bindings Classical.Adams.standardRouteModel routeEta tmfLabels
  detectorIso : Classical.Adams.standardRouteModel.auxiliary.detector ≅ tmf.target.X
  detector_unit : Classical.Adams.standardRouteModel.auxiliary.detectorUnit ≫
    detectorIso.hom = Tmf.unit tmf.target
  detector_mul :
    letI := route.algebra.classicalSymmetric
    letI := route.algebra.syntheticSymmetric
    (detectorIso.hom ⊗ₘ detectorIso.hom) ≫ (MonObj.mul (X := tmf.target.X)) =
      route.algebra.detector.classical.mul ≫ detectorIso.hom

/-- Literature conclusions on the same selected model data. Sources and exact
ranges remain those documented by AdamsOneLineInterface (Adams/May),
StandardSphereMossStatement (Moss), and TmfModel.Br21Statement (BR21).
The source-carrying external wrappers remain explicit inputs where used; this
structure does not assert that citing a source constructs any of these proofs. -/
structure LiteratureInterface (modelBindings : ModelBindings) where
  geometry : GeometryLiteratureInterface modelBindings.geometry
  adamsOneLine : AdamsOneLineInterface
  moss : StandardSphereMossStatement modelBindings.moss
  br21 : modelBindings.tmf.Br21Statement
  route : Literature.Route.Statements Classical.Adams.standardRouteModel
    modelBindings.routeEta modelBindings.tmfLabels modelBindings.route

/-- The certified square facts and its standard label on the actual sphere
page, through the specified comparison. Interface proves the identification
using the fixed-data exhaustion certificate and independent cobar nonvanishing;
Main does not reconstruct this certification from its own stage assumption.
This particular equality does not assert a general cobar/product comparison. -/
structure SphereSquareInterface (presentation : Classical.Adams.LinE2Presentation) : Prop where
  nonzero : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq ≠ 0
  exhaustive : ∀ x : Classical.Adams.sphereAdamsData.Page 2 (2, 128),
    x = 0 ∨ x = presentation.comparison 2 128 (by decide) LinE2.dataH6Sq
  standard_class : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq =
    Classical.Adams.standardH6Square

/-- C(M): interpreted computation conclusions, all using one fixed presentation.
The generated data and local certificates are separate from this model-bound
mathematical delivery. -/
structure ComputationInterface (modelBindings : ModelBindings)
    (presentation : Classical.Adams.LinE2Presentation) where
  sphereBasis : SphereBasisInterface presentation
  sphereMultiplicative : SphereMultiplicativeInterface presentation
  sphereStaircase : SphereStaircaseInterface presentation
  sphereSquare : SphereSquareInterface presentation
  sphereTable_sound : ∀ (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      DifferentialStatement presentation row

  route : Computation.Route.Inputs Classical.Adams.standardRouteModel
    modelBindings.routeLabels modelBindings.tmfLabels
  /-- Interface identifies the route's interpretation with the existing bounded
  sphere presentation. Main must not assume or reconstruct this comparison. -/
  route_presentation : ∀ (s t : ℕ) (ht : t ≤ 261) (x : LinE2.E2At s t),
    route.realization.sphere s t x = presentation.comparison s t ht x

end Challenge2

/-- One correlated stage witness: shared project bindings, literature conclusions,
and C(M). Both groups refer to the same fixed Challenge1 model, and every sphere
computation uses the one presentation stored here. -/
structure Challenge2 where
  modelBindings : Challenge2.ModelBindings
  presentation : Classical.Adams.LinE2Presentation
  literature : Challenge2.LiteratureInterface modelBindings
  /-- Internal source-to-model application, produced by Interface. -/
  routeApplication : Literature.Route.Application Classical.Adams.standardRouteModel
    modelBindings.routeEta modelBindings.tmfLabels modelBindings.route
  computation : Challenge2.ComputationInterface modelBindings presentation

namespace Challenge2

/-- Compatibility projection; no new model, coordinates, or evidence is chosen. -/
def sphereBasis (input : KIP126.Challenge2) : SphereBasisInterface input.presentation :=
  input.computation.sphereBasis

set_option linter.defProp false in
def sphereMultiplicative (input : KIP126.Challenge2) :
    SphereMultiplicativeInterface input.presentation :=
  input.computation.sphereMultiplicative

def cobarDerivedExt (input : KIP126.Challenge2) : CobarDerivedExtComparison
    Classical.Adams.standardFoundation.hf2 Classical.Adams.standardMilnorCooperations :=
  input.modelBindings.cobarDerivedExt

set_option linter.defProp false in
def adamsOneLine (input : KIP126.Challenge2) : AdamsOneLineInterface :=
  input.literature.adamsOneLine

/-- The previous mixed Moss interface, assembled from the same bindings and claim. -/
noncomputable def moss (input : KIP126.Challenge2) : StandardSphereMossInterface :=
  input.modelBindings.moss.withStatement input.literature.moss

/-- The previous mixed tmf interface, assembled from the same bindings and claim. -/
noncomputable def tmfDifferential (input : KIP126.Challenge2) :
    TmfDifferentialInterface Classical.Adams.standardFoundation.hf2 :=
  input.modelBindings.tmf.withDifferential input.literature.br21

set_option linter.defProp false in
def tmfMultiplicative (input : KIP126.Challenge2) :
    StandardTmfMultiplicativeInterface input.tmfDifferential :=
  input.modelBindings.tmfMultiplicative

set_option linter.defProp false in
def sphereStaircase (input : KIP126.Challenge2) :
    SphereStaircaseInterface input.presentation :=
  input.computation.sphereStaircase

set_option linter.defProp false in
def sphereTable_sound (input : KIP126.Challenge2) (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow)
    (h : Computation.LinProofs.RawData.lookup shard offset = some row) :
    DifferentialStatement input.presentation row :=
  input.computation.sphereTable_sound shard offset row h

end Challenge2

end KIP126
