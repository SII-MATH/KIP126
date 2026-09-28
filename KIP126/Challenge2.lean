import KIP126.Main.Axiom.LinProgram.Generated.Differentials.Table
import KIP126.Main.Axiom.LinProgram.Generated.Staircase.Table
import KIP126.Main.Axiom.LinProgram.Interpretation.State.Data
import KIP126.Def.SpectralSequence.Computation.State.Predicates
import KIP126.Main.Axiom.LinProgram.Interpretation.Sphere
import KIP126.Def.AdamsE2.LinClasses.Data
import KIP126.Def.AdamsE2.LinBasisTable.Data
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data
import KIP126.Interface.Axiom.StandardMilnor
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
import KIP126.Main.Axiom.LinProgram.Interpretation.Branch.Predicates

/-!
# Challenge 2：Interface → Main 的接口定义与数学进度清单

范围依据：[接口审核 #138](https://github.com/SII-MATH/KIP126/issues/138)，
2026-09-28 修订正文优先于历史清单；保留 `am1`–`am16`、`cm1`–`cm6`
编号追踪数学工作，不要求各项都成为总包字段或外部 A(M)。
当前 Lean 总包包括 `cm1` 的有界 presentation 与实际 E₂ 基坐标、`cm2` 的表真实性陈述、
`am12` 的一线／May 陈述、同一基础上 `am8/am15` 的球面 Moss 交付组、
`am14` 的 tmf 微分/单位/乘法切片，以及 `cm5` 的固定球面 staircase 状态。
`cm1/am4` 的 `SphereMultiplicativeInterface` 另将有界球面 product 与单位
绑定到实际 Adams 层乘法和同一 presentation。
`am9` 的 `CobarDerivedExtComparison` 固定实际分次右余模的导出 Ext 端、
规范 cofree 分解公式及每个 cocycle 的 `extMk` 比较。
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
  已有精确类型，见 `Main/Axiom/LinProgram/Interpretation/Differential/Predicates.lean`；
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

- `am7` 内部版 generalized Leibniz、Mahowald 与 page stretch。
  角色：本文中间结论，已移出外部 A(M)；本轮不决定最终证明目录或两阶段去重。
  陈述：本文件 `GeneralizedLeibnizLaw`、`GeneralizedMahowaldLaw` 已按论文
  Theorem 6.1、6.12 写成实际内部微分、同一 normalized page extension、
  crossing、三角与目标同余关系；修正了 Leibniz 的靶次数和 Mahowald 的第二
  crossing 分支。两个 law 的证明与同一模型上的见证仍未构造。
  `Def/ClassicalAdams/Suspension/` 将 Mahowald 的 h 靶连接到真实塔／层悬移
  及 raw cycle 的商代表元；其比较图的存在、规范性和悬移实例尚待构造。
  旧 `Interface/{Challenge,Solution}/Tools/` 的六个自由 Operations 声明已因
  #133／#134 所指问题同步撤下，并移除入口导出及 Blueprint 的旧 Lean 引用；
  Main 未消费它们。新 law 是准确的本文中间命题，尚无对应规则证明；
  两阶段可按需使用，但不因共同需要而新增边界假设。
  尚缺：δ 与同一 ν、ρ、λ 的 ESS 比较及 crossing 比较；任意 topweight
  等价不足以推出这些 law。Stretching 的真实代表元解族及限制已定义；
  `Solutions/Obstruction/` 已证明实际余核类为零当且仅当指定的早期解可以提升。
  这个判据不等同于论文的较短 extension 障碍：论文的有限 stretching 只给出
  后页 relation 存在，不能据此断言每个指定的早期严格解都可提升。
  `FinitePageExtensionNonliftableCrossing` 与 `FinitePageExtensionStretchingLaw`
  明列同一家族、两个有限页面、较短 essential extension、较大边界排除及后页
  cycle 条件；允许 b=0 是比论文印出的 corollary 更强的排除前提。
  该 law 的模型证明仍待完成。无限版本另需 Blueprint 明列的实际限制满射／
  coherent tower 与 limit 比较，不能从各有限解非空直接推得相容无限解。

- `am8` Moss：Toda/Massey 到内部页面检测。
  角色：外部 Moss 定理与项目内部配对、检测比较须分开记录。
  陈述：`../KIPBase/multiplicativeSS/Moss.lean` 已有 `MappingAdamsTower`、
  `Moss.Statement` 和 `Moss.SphereStatement`，精确联系历史内部页面的 Massey、
  永久性、检测与 Toda；这是待证命题，不是 Moss 的证明。
  实现：同一历史目录的 `AdamsMasseyProduct.lean`、`AdamsDetection.lean`、
  `MossCrossing.lean` 已分别定义 `Relation`、`DetectsAbutment`、`ForProducts`；
  当前 Toda 关系在 `Def/StableHomotopy/Toda/`，来源在 `Main/Axiom/Literature/Claims.lean`。
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
  A.11 的 q≥2 与 q=1 special fiber 分开交付；来源 wrapper 位于
  `Main/Axiom/Literature/SyntheticEInfty.lean`，仍需显式提供比较数据。
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
  前置定义缺口：现有 λ residual tower 的完整 E₁-based Bockstein SSData
  与 exact-couple comparison，以及 rigidity 有限页微分公式的 weight 重分次。
  有限提升接口与现有 E∞ shift 均不替代上述完整构造；未新增总包字段。
  历史 `lambda_bockstein_start_page` 仅断言 r₀=2，不能代替 comparison；
  `KIPBase/Synthetic/Rigidity.lean` 的所有负 weight 消失与反向 weight 商映射
  不沿用。a10/a11 的已有 cofiber／triangle lift 还需接到同一内部页面。

- `am12` Adams one-line 与低维永久性输入。
  角色：外部 Adams／May 结果及低维永久性的内部推论须分开。
  陈述：`AdamsOneLineInterface` 已入总包，明确全部一线次数、唯一非零 hⱼ、
  j≤3 的非零永久存活与 j≥4 的非零 d₂(hⱼ)=h₀hⱼ₋₁²。
  May 的 h₀h₂、h₀h₃、h₂h₄ 及 j≤3 的 hⱼ² 非零永久性也分别列出。
  所有类由同一 Milnor cocycle、实际 cup 与实际内部 E₂ 比较构造。
  `Interface/{Challenge,Solution}/AdamsOneLine.lean` 七个交付签名同步，
  新增证明均暂留 `sorry`；MainPaper:146 的方向笔误修正为 j≤3。
  `LowDimensionalSquarePermanence` 另使用内部 h₄²／h₅²；
  `Interface/Solution/LowDimensionalPermanence` 已从显式 a14 与 Browder 输入推出它。
  May 原始全文尚未取得，目前范围定位为 MainPaper:157–159；实际同伦检测仍需接入。

- `am13` BJM/BX、θ₅ 与总微分输入。
  角色：外部 BJM／BX 结果与项目 quadratic-cell／检测绑定须分开。
  陈述／实现：`Def/Kervaire/Theta5/` 已有 `Theta5ChoiceContext`、
  `Theta5OrderData`、`BJM_BXCriterion`、`SourceTotalDifferentialIdentity` 的
  精确参数化类型及 choice transport 证明；`Main/Axiom/Literature/Kervaire.lean`
  已有对应 provenance wrappers。
  接入：保留这些已有类型，将 context 的检测、存活、有限商零关系和 δ₁ 运算
  绑定实际内部对象，补 quadratic-cell calculus；不能把自由语义参数视为绑定已完成，
  也不把 Main 的 choice/near-126 推论提前变为输入。

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
  `Main/Axiom/Literature/Claims.lean` 的 `tmfDetection`、
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
  陈述／实现：`Main/Axiom/Literature/Near126/HopfCofiber/Fixed/Data.lean` 的
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
  实现：`Main/Axiom/Literature/InternalGeometry` 保留来源锁定和显式证明输入。
  几何对象及 Kervaire 谓词仍为参数；固定其真实解释并提供适用的文献见证待完成。

## C(M)：Lin 直接输出的确定性解释

- `cm1` 固定 Lin E₂ presentation。
  陈述：下面 `LinE2Presentation` 的三个字段精确保留；同一总见证另以
  `sphereMultiplicative` 将有界 product 与单位绑定实际球面塔／层代表元。
  `SphereBasisInterface` 交付全部 s,t : ℕ、t ≤ 261 的实际 E₂ 坐标等价，
  逆像的单位向量经同一 presentation 拉回后等于固定 CSV 单项式。
  这精确陈述完整加法基、坐标与穷尽性；固定认证证明及全部直接乘法输出仍未闭合。
  实现：`Main/Axiom/LinProgram/Generated/E2.lean`、`Def/AdamsE2/LinModel/`
  保留 v126.3.cw49 数据；本包的 existence Solution 尚为 `sorry`。
  a05 已迁出 Challenge1；固定 CSV 认证在
  `Interface/{Challenge,Solution}/LinProgram/BasisTable.lean`，Solution 仍为 `sorry`。
  `Interface/Solution/LinProgram/SphereBasis.lean` 从该辅助认证及显式 P 构造
  实际交付；Main 从同一个 Challenge2 见证取得坐标，恢复兼容的 Lin 基与维数。
  没有新增独立 axiom，也不直接消费 Interface 的认证证明。`computedH6`、
  `computedH6Square` 在 `Main/Axiom/LinProgram/Interpretation/Classes/Data.lean`
  由比较机械定义，不新增任意同名元素。

- `cm2` 闭合球面有限页微分表。
  陈述：`HasCoordinates`、`DifferentialStatement` 与 `sphereTable_sound` 已精确入包；
  覆盖固定 `proofs.db` 的 10,907 条 `depth=0, name=S0` 闭合等式，不附加非零或存活。
  实现：`Main/Axiom/LinProgram/Generated/Differentials/` 与 `Main/Axiom/LinProgram/Translate/` 已接通
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
  陈述：确定性内部 M 解释尚未冻结、未入包。
  实现：`Main/Axiom/Literature/Near126/HopfCofiber/` 是手写消费需求，
  不能算作 Lin 输出。前置解释缺口：现有 `Translate/import-proofs.py` 明确排除
  非 S0／extension 行；须扩展 `Main/Axiom/LinProgram/Translate/`，将每条直接输出
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
  `Interface/{Challenge,Solution}/LinProgram/Staircase` 陈述同步，证明暂为 `sorry`。
  `LinProgram/Raw/Data.lean` 另无损保留全部 log 11 列和 NULL，
  reason 解析保留 D/DI 的多来源，999/1000/1001 分开；
  `Computation/State/Predicates.lean` 明确永久循环、最终边界与有界窗口状态。
  固定源码 `cofseq.cpp:885–914` 对 boundary 或 zero 也返回 999/空向量，
  因而不能从此编码推出非零存活。其他谱/extension 的状态、log sentinel 的
  上下文解释，以及确有来源的非零/no-hit 陈述仍须逐项接入；不虚构这些输出。

- `cm6` 带范围的消失、维数与候选穷尽。
  陈述：程序直接输出的完整解释未冻结、未入包。
  实现：`Interface/Solution/LinProgram/SquareDimension/`、`Interface/Solution/LinProgram/SquareDetection/`
  已有局部实质证明，但它们是数据模型上的派生结果，不因此成为新程序输入；
  `Main/Axiom/Literature/Near126/Sphere/Data.lean` 的事实包也是消费需求。
  语义绑定缺口：`CandidateWindow` 及覆盖／排除／穷尽谓词已定义，仍须绑定
  实际搜索时的基、first/count 窗口及全线性组合、谱、页、次数和搜索上界；
  有限窗口不外推到全局，缺失记录不解释为零。

## 已知依赖债务与检查口径

- 共享类型目前隐式绑定 `Interface/Axiom/Challenge1.lean` 选出的同一见证：
  `Interpretation/Sphere → Literature/FixedSSData → Interface/Axiom/StandardFoundation`。
  因而 import 本文件仍会引入 Challenge1 开发 axiom。未来显式参数化必须连同 sphere、
  presentation、微分谓词一起设计；本次不把固定见证命题加强为任意 `c1` 上的命题。
- a05 的 basis 消费链已移除 Main → Interface/Solution 导入，纯 CSV 认证留在
  Interface，Main 的实际坐标及兼容基 API 使用同一 Challenge2 见证。
  `Main/Solution/Computation/{Dimension,Nonvanishing}.lean` 仍直接消费已证明的
  Interface square dimension/detection 工具；本次不调整这些中间证明的复用位置，
  也不据 a05 迁移声称所有跨层依赖都已隔离。
- 文献仍由 `Main/Axiom/Literature/` 的 `ExternalResult`、`ExternalEvidence` 及
  catalogued wrappers 显式携带；清单不是把它们变成无条件字段的授权。
- Blueprint 依据：`h6_statement.tex` 的 `thm:lin-e2-basis-certification`、
  `def:lin-e2-coordinates` 为 `notready`，`thm:lin-square-certified` 有 `leanok`；
  `comparison_and_rules.tex` 的 generalized Leibniz/Mahowald 节点为 `notready`。
  精确陈述、证明状态与 #133/#134 的语义缺口必须分别检查，不从目录名或编译成功推断完成。
- 两端继续直接陈述同一个 `Nonempty Challenge2`。生产证明位于
  `Interface/Solution/Challenge2.lean`；消费 axiom 和唯一 `Classical.choice` 位于
  `Main/Axiom/Challenge2.lean`。本文件只定义交付类型和谓词，不填生产证明。
-/

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

/-- am8/am15：同一映射 Adams 塔上的配对、检测、不定性和 Moss 交付。
`objects` 指定应用范围；不要求任意谱的 Adams SS 收敛到未完备同伦群。
配对的每个值由实际长层代表元约束，收敛端使用实际塔像滤过。
Massey 关系使用 E_(r−1) 的 defining system，因此范围是 r ≥ 3。
来源：MainPaper:2537–2545；Moss Theorem 1.2。现代 crossing/weak-convergence
表述另见 Belmont–Kong, arXiv:2112.08689v2, Definitions 2.3–2.4。
此类型提出模型交付义务，不是对任意背景都已有该结构的证明。 -/
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

end Moss

/-- am8/am15 的固定球面交付；基础、HF₂、ring 与所有 tensor 选择
均来自同一个 Challenge1 见证，没有增加另一个可独立选择的模型。
这里的球面映射谱仍需通过实际 ihom(unit,unit) 同构与 sphereAdamsData 比较。 -/
def StandardSphereMossInterface : Type 1 :=
  let c := KIP126.Interface.Axiom.challenge1Witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossInterface c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

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

/-- am14 的单位与乘法比较义务，约束已选的同一个 target/coordinates。
乘法使用实际 Adams 层配对及 target.mul；不再容许独立选择一个页面乘法。
所有张量、HF₂ ring 和相容结构来自同一个 Challenge1 见证。 -/
def StandardTmfMultiplicativeInterface
    (T : TmfDifferentialInterface standardFoundation.hf2) : Prop :=
  let c := KIP126.Interface.Axiom.challenge1Witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  T.coordinates.RespectsUnit ∧
    Tmf.E2Presentation.RespectsMultiplication c.cooperationInput.ring T.coordinates

/-- cm1/am4：同一 Lin presentation 的有界实际球面乘法与单位。
输出 second cycle 的底层严格等于已构造的 first-layer product；存在量词
只表达该实际乘积闭合于 cycles，不选择另一个运算。对所有输入代表元的
商类等式同时要求其值与 presentation.product 相符。范围是 t+t′≤261，
不由此宣称高页 Leibniz、全局乘法或与 cobar cup 的比较已经完成。 -/
def SphereMultiplicativeInterface (P : LinE2Presentation) : Prop :=
  let c := KIP126.Interface.Axiom.challenge1Witness
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
任意 a 的版本还需实际 shift 与 λ 商的比较。这个参数化交付使用已定义的
两端，不声称已构造模型见证，也不由 E∞ 的 specialFiber 字段直接推出。 -/
abbrev FirstQuotientHomotopyComparison (X : C) := ∀ (a s t : ℤ),
  BiHom (t - s) (t + a)
    (XModLambdaN ((SyntheticCategory.biShift (0, a)).obj (N.functor.obj X)) 1) ≃+
      Ambient H X (s, t)

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

/-- BHS A.9 的准确内部公式类型；存在性及文献输入另行处理。 -/
abbrev NuEInftyFormula := ∀ (X : C) (p : ℤ × ℤ) (w : ℤ),
  ((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
    nuEInftyModel H X p w

/-- BHS A.11 的准确指数范围，不包含 q=1。 -/
abbrev FiniteEInftyFormula := ∀ (X : C) (q : ℕ), 2 ≤ q → ∀ (p : ℤ × ℤ) (w : ℤ),
  ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
    finiteEInftyModel H X q p w

/-- am11：同一模型的全 weight E∞ 公式。`nu` 对应 BHS Corollary A.9，
`quotient` 只在 A.11 的 q≥2 范围使用；q=1 的 special-fiber 结论独立交付。
比较靶由实际 classical E₂ 子模定义，范围外严格为零。该数据不自动满足
λ、ρ 相容性；下面的独立谓词固定这些数学义务。 -/
structure SyntheticEInftyPresentation where
  nu : NuEInftyFormula H N F
  quotient : FiniteEInftyFormula H N F
  specialFiber : ∀ (X : C) (p : ℤ × ℤ) (w : ℤ),
    ((F.nuQuotient N X 1).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      finiteEInftyModel H X 1 p w

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

/-- am11 的实际映射相容性，明确比较同一 F 的 λ 与 ρ 映射和保持 E₂
代表元标签的规范商映射／包含映射。这里只在相应非零窗口写公式；窗口外
的零性由全 weight presentation 本身决定，不用错误的“负 weight 全消失”。
它没有声称由任意一族线性等价就能推出这些公式。 -/
structure SyntheticEInftyMapCompatibility
    (P : SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F)
    (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X)) : Prop where
  shift_natural : S.Natural
  lambda_nu : ∀ (X : C) (k : ℕ) (p : ℤ × ℤ) (w : ℤ) (hw : w ≤ p.2)
    (x : ((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty),
    P.nuWindow X p (w - k) (by omega) (S.lambdaMap (N.functor.obj X) k p w x) =
      permanentQuotientMap H X (by omega) p (P.nuWindow X p w hw x)
  lambda_finite : ∀ (X : C) (q k : ℕ) (hkq : k < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < (q - k : ℕ))
    (x : ((F.nuQuotient N X (q - k)).sequence.ssData (p.1, p.2, w)).eInfty),
    P.finiteWindow X q (by omega) p (w - k) (by constructor <;> omega)
        (S.finiteLambdaMap (T X) q k hkq p w x) =
      quotientMap H X (by omega) (by omega) p
        (P.finiteWindow X (q - k) (by omega) p w hw x)
  rho_finite : ∀ (X : C) (i j : ℕ) (hi : 0 < i) (hij : i ≤ j)
    (p : ℤ × ℤ) (w : ℤ) (hw : 0 ≤ p.2 - w ∧ p.2 - w < i)
    (x : ((F.nuQuotient N X j).sequence.ssData (p.1, p.2, w)).eInfty),
    P.finiteWindow X i hi p w hw
        (((F.functor.map ((T X).rho i j hij)).eInftyMap (p.1, p.2, w)).hom x) =
      quotientMap H X (by omega) (le_refl (1 + p.2 - w)) p
        (P.finiteWindow X j (by omega) p w (by constructor <;> omega) x)
  rho_nu : ∀ (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < q)
    (x : ((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty),
    P.finiteWindow X q hq p w hw
        (((F.quotientProjection (N.functor.obj X) q).eInftyMap (p.1, p.2, w)).hom x) =
      permanentToFinite H X (q - p.2 + w) (1 + p.2 - w) p
        (P.nuWindow X p w (by omega) x)

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

section PageExtensionRules

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am7：有限 stretching 的较短 extension 障碍候选。
所有标签、essential 性及较大的普通 Adams 边界来自同一个 P。
额外要求较短源不能存活到后页所需的 cycle 层；这不是给定严格代表元
无法提升的充要条件。这里 b 允许为零，故排除这些候选比论文
Corollary `cor:dfc6043e` 印出的 b>0 条件更强。 -/
def FinitePageExtensionNonliftableCrossing (P : NormalizedPageFamily H N F f)
    (rEarlier rLater : ℕ) (n s t : ℤ) : Prop :=
  ∃ a b : ℕ, 0 < a ∧ a ≤ rEarlier - 2 ∧
    (b : ℤ) ≤ n - a - normalizedExponent H f ∧
    ∃ (x' : Ambient H X (s + a, t + a))
      (y' : Ambient H Y (s + a + (n - a - b), t + a + (n - a - b))),
      x' ∉ cycles H X ((rLater : ℤ) - 1 - a) (s + a, t + a) ∧
      ∃ W' : FiniteExtensionWitness P (rEarlier - a) (n - a - b)
          (s + a) (t + a) x' y',
        W'.Essential ∧ y' ∉ boundaries H Y
          (1 + n - b - normalizedExponent H f)
          (s + a + (n - a - b), t + a + (n - a - b))

/-- am7：有限页 relation 的 stretching 交付命题。
参考 MainPaper Proposition `prop:dec738d3` 及 Corollary `cor:dfc6043e`。
本项目要求源、靶都已属于后页所需的 cycle 层，并排除上述含 b=0 的
障碍候选；这是明确的充分条件版本，尚待模型比较及证明。
结论只给出后页 extension 的存在，不声称任意指定的早期严格解可提升，
也不蕴含相容解塔或未截断 extension 的存在。 -/
def FinitePageExtensionStretchingLaw (P : NormalizedPageFamily H N F f) : Prop :=
  ∀ (rEarlier rLater : ℕ) (n s t : ℤ)
    (x : Ambient H X (s, t)) (y : Ambient H Y (s + n, t + n)),
    2 ≤ rEarlier → rEarlier ≤ rLater →
    (normalizedExponent H f : ℤ) ≤ n →
    n ≤ (rEarlier : ℤ) - 2 + normalizedExponent H f →
    IsCycle H X ((rLater : ℤ) - 1) (s, t) x →
    IsCycle H Y ((rLater : ℤ) - 1 - n + normalizedExponent H f) (s + n, t + n) y →
    FinitePageExtension P rEarlier n s t x y →
    ¬ FinitePageExtensionNonliftableCrossing P rEarlier rLater n s t →
    FinitePageExtension P rLater n s t x y

/-- am7：MainPaper Theorem 6.1 (`thm:e73f481e`) 的准确交付命题。
所有页面、微分、有限／无限 extension 和 crossing 均来自同一 H、P。
末端次数是 (s+r+l,t+r+l-1)，l-extension 不额外减一次 t。
本定义不是任意 NormalizedPageFamily 满足此 law 的定理；仍需模型比较及
论文证明中的 δ／λ／ρ 相容性。不要求微分或 extension 非零。 -/
def GeneralizedLeibnizLaw (P : NormalizedPageFamily H N F f) : Prop :=
  ∀ (page : ℕ) (r m l s t : ℤ)
    (x : Ambient H X (s, t)) (y : Ambient H Y (s + m, t + m))
    (xInfinity : Ambient H X (s + r, t + r - 1))
    (yInfinity : Ambient H Y (s + r + l, t + r - 1 + l)),
    2 ≤ page → (page : ℤ) ≤ r →
    (normalizedExponent H f : ℤ) ≤ m →
    m ≤ (page : ℤ) - 2 + normalizedExponent H f →
    (normalizedExponent H f : ℤ) ≤ l →
    IsCycle H X (r - 1) (s, t) x →
    IsCycle H Y (r - 1 - m + normalizedExponent H f) (s + m, t + m) y →
    IsPermanent H X (s + r, t + r - 1) xInfinity →
    IsPermanent H Y (s + r + l, t + r - 1 + l) yInfinity →
    DifferentialAt H X r (s, t) (s + r, t + r - 1) x xInfinity →
    FinitePageExtension P page m s t x y →
    InfinitePageExtension P l (s + r) (t + r - 1) xInfinity yInfinity →
    (NoCrossingOn H X r page (s, t) ∨
      FinitePageExtension.NoCrossing P page m s t) →
    InfinitePageExtension.NoCrossing P l (s + r) (t + r - 1) →
    DifferentialAt H Y (r + l - m) (s + m, t + m)
      (s + r + l, t + r - 1 + l) y yInfinity

/-- am7：MainPaper Theorem 6.12 (`thm:158d451a`) 的实际三角版本。
第二个 no-crossing 分支属于 Z 上的 d_r，在 E_r′ 页检查；不属于 g。
h 的 target 位于 ΣX，其标签通过 S 的实际 tower/layer 图和 raw-cycle
商代表元与 x 关联。S 的存在／规范性尚未构造，不能以任意 E₂ 等价代替。
结论是存在同余于 y 的真实 f-extension target，模实际 B_r′；不是自由
选取的 fTarget 操作。r′ 及结论页的正性由指数和与三个长度界保证。 -/
def GeneralizedMahowaldLaw (T : HoCofiberSequence (C := C))
    (Pf : NormalizedPageFamily H N F T.f)
    (Pg : NormalizedPageFamily H N F T.g)
    (Ph : NormalizedPageFamily H N F T.h)
    (S : Classical.Adams.Suspension.TowerComparison H T.X) : Prop :=
  (normalizedExponent H T.f : ℤ) + normalizedExponent H T.g +
      normalizedExponent H T.h = 1 →
  ∀ (n m l s t : ℤ),
    let r := n + m + l
    let n₁ := n - normalizedExponent H T.f
    let m₁ := m - normalizedExponent H T.g
    let l₁ := l - normalizedExponent H T.h
    let r' := r - m₁
    ∀ (x : Ambient H T.X (s + l, t + l - 1))
      (y : Ambient H T.Y (s + l + n, t + l - 1 + n))
      (xBar : Ambient H T.Z (s, t))
      (yBar : Ambient H T.Z (s + l + n + m, t + l - 1 + n + m))
      (suspendedX : Ambient H (T.X⟦(1 : ℤ)⟧) (s + l, t + l)),
      1 ≤ n₁ → 0 ≤ m₁ → 0 ≤ l₁ →
      IsCycle H T.X n₁ (s + l, t + l - 1) x →
      IsCycle H T.Y (m₁ + 1) (s + l + n, t + l - 1 + n) y →
      IsCycle H T.Z (r - 1) (s, t) xBar →
      IsPermanent H T.Z (s + l + n + m, t + l - 1 + n + m) yBar →
      S.DesuspendsClass (s + l) (t + l) suspendedX x →
      FinitePageExtension Ph r'.toNat l s t xBar suspendedX →
      DifferentialAt H T.Z r (s, t)
        (s + l + n + m, t + l - 1 + n + m) xBar yBar →
      (FinitePageExtension.NoCrossing Ph r'.toNat l s t ∨
        NoCrossingOn H T.Z r r' (s, t)) →
      FinitePageExtension Pg (m₁ + 2).toNat m (s + l + n) (t + l - 1 + n) y yBar →
      IsCycle H T.X (n + m + normalizedExponent H T.h) (s + l, t + l - 1) x ∧
        ∃ y' : Ambient H T.Y (s + l + n, t + l - 1 + n),
          FinitePageExtension Pf (n + m + 1 + normalizedExponent H T.h).toNat
            n (s + l) (t + l - 1) x y' ∧
          Congruent H T.Y r' (s + l + n, t + l - 1 + n) y' y

end PageExtensionRules

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

end Challenge2

/-- The interpreted outputs required by Main.  The table soundness field is
about the exact presentation stored in the same witness. -/
structure Challenge2 where
  presentation : Classical.Adams.LinE2Presentation
  sphereBasis : Challenge2.SphereBasisInterface presentation
  sphereMultiplicative : Challenge2.SphereMultiplicativeInterface presentation
  cobarDerivedExt : Challenge2.CobarDerivedExtComparison
    Classical.Adams.standardFoundation.hf2 Classical.Adams.standardMilnorCooperations
  adamsOneLine : Challenge2.AdamsOneLineInterface
  moss : Challenge2.StandardSphereMossInterface
  tmfDifferential : Challenge2.TmfDifferentialInterface Classical.Adams.standardFoundation.hf2
  tmfMultiplicative : Challenge2.StandardTmfMultiplicativeInterface tmfDifferential
  sphereStaircase : Challenge2.SphereStaircaseInterface presentation
  sphereTable_sound : ∀ (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      Challenge2.DifferentialStatement presentation row

end KIP126
