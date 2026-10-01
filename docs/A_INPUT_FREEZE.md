# 第 0 步的外部来源、模型识别与内部适配

本文件对应当前重构中的接口，范围为 LWX v2 Theorem 7.1 经 Proposition 7.8、7.9 所用的完整路线及工具前提。声明存在不等于已构造模型或已证明定理。历史验收记录和此前审查保持原文件，不作为本次修改的编译或数学认证证据。

数学类型入口为 `KIP126.Def.Kervaire.Inputs.Literature.Data`。原始 TeX、PDF 和来源清单仍存于 `KIP126/Main/Axiom/Literature/`，数学声明已迁到 Def。清单 [sources.json](../KIP126/Main/Axiom/Literature/Route/sources.json) 分列 `claims`、`model_bindings` 和 `internal_adapters`，不能把后三种责任一并称为接受前人结果。

```lean
KIP126.Literature.Route.SourceApplicationData D η
KIP126.Literature.Route.ModelBindings D η G E
KIP126.Literature.Route.Inputs D η G
KIP126.Literature.Route.Inputs.ofSourceAndBindings D η G E B
```

`SourceApplicationData` 包含前人结果及内部适配，明确不整体作为 A 接受。纯叶子语言是 `ExternalLeaves D η sym mayTensor`，显式公理在 `Main/Axiom/Literature/{Source,Synthetic,Range,Moss}.lean`。Synthetic 叶子均要求同一个 `SourceModel D η G`；May 的 tensor suspension 数据由实际 source Binding 构造；Moss 使用固定球谱映射塔。`ModelBindings` 的经典/η、乘法、tmf、ν选择识别由内部定理提供。`SourceAdapters.acceptedInputs` 将这些工作组装为相同 D/η/G 的消费包，不能以整体公理代替适配。

这里 `D : Kervaire.Route.Model H M Syn` 固定整条路线，局部 `M : MilnorCooperations H` 只是其中的合作运算组件。η 始终为同一个 `BiHom 1 2 S00`。G 与 C(M) 共用；`g⁴Δh₁g` 由同一 `Sphere.Internal.product` 构造，未引入另一种乘法。

## 源结果及其待适配类型

下表逐项区分实际外部叶子及内部适配；声明和接受形式均已拆开，source model 的最终验收状态仍以本轮报告为准。

下表相对 Lean 路径在 `KIP126/Def/Kervaire/Inputs/Literature/`。完整声明均在 `KIP126.Literature.Route` 命名空间；具体原文定位及文件校验值见来源清单。

| 输入 | 精确范围、量词及来源 | 消费点与内部责任 |
| --- | --- | --- |
| `Classical.lean`：`Theta5Existence` | Xu v1 Corollary 1.3：标准 h₅² 非零永久存活，存在一个被检测且二阶的经典 θ | BX/Moss；不从存在性推出所有选择二阶 |
| `Stem62ExponentTwo` | IWX v3 的 2-primary π₆₂=(Z/2)⁴；不包括奇素数分量 | Lemma 7.16；必须是标准 2 完备背景 |
| `Theta5FiltrationGap` | 相同 h₅² leading term 的经典选择相差 AF≥6；IWX 原图表 62 茎 AF=2、6、8、10 | Lemma 7.10；同实际 Adams 过滤适配 |
| `ClassicalSourceResults` 的 `two_detection`/`eta_detection`/`nu_detection` | 标准 h₀/h₁/h₂ 检测源对象的真实 2/η/ν，h₁/h₂ 非零永久存活 | `HopfInput` 是运输后路线类型；normalized η识别及synthetic `EtaChoice` 独立在ModelBindings |
| `BXDistinguishedInput` | BX v3 Prop.7.19 及证明：同一个特定二阶 synthetic θ 上的原始有限判据、δ₁(h₆²)=ληθ²、无限判据 | λ 规范化及任意选择版本归本文推导 |
| `SyntheticInputs.lifts` | Pstrągowski v3 Lem.4.23，BHS v3 Lem.9.15：同调短正合、存在合适提升及连接箭头 | 不能自动验证任意选定 normalized maps |
| `FiniteLiftCriterion` | BHS A.1(1a–b)，q>0；x∈Z_q iff 沿实际ρ提升到νX/λ^q，允许零与边界 | 不冒充非零永久存活 |
| `BocksteinDifferential` | BHS A.1(1c)：存在合适提升，实际δ标签代表d_(q+1)；靶(s+q+1,t+q) | 保留存在量词与页边界 |
| `PermanentLiftCriterion` | BHS A.1(2)，共同Z∞代表的未截断提升 | 源对象须 E-nilpotent complete，且同实际谱序列强收敛 |
| `DifferentialRigidity`、`E2WeightVanishing` | BHS A.8；r≥2，classical dᵣ 与 synthetic λ^(r−1) 修正；w>t+a 的E₂消失 | 必须使用相同 family、ν 和标签比较 |
| `EInftyInput` | BHS A.9/A.11；实际cycles/boundaries商、有限及无限版本、λ/ρ与标签 | 加法比较不自动给有限商乘法比较 |
| `RealizationKernel`、`FiltrationLambda` | Pst full Syn λ反演；选定完备对象的 kernel 运输为内部定理，不能声称 hypercomplete sphere 紧；BHS `cor:tau-surj`，s≥w−m 的λ整除与AF对应 | 不假定指定高茎无λ-torsion |
| `RealizationInput` | 具体球悬移、unit、λ比较；BHS A.1 的所有提升/存在提升分别保留 | `.lifetime` 是每个提升，`.boundary_lift` 是存在一个提升 |
| `AlgebraInput` | Pst、BHSmot v2 Appendices B/C、BX `cnstr:bock-maps`：同一有限λ商的代数塔；真实商unit/ρ/sphereAction | 对指定cobar和Adams检测的乘法比较另归ModelBindings |
| `MayInput` | May 2001 作者稿 pp.12–14 TC3、Lemma4.6：实际vertex、j₁/j₂/j₃、pushpull提升及**带负号**边界关系 | 不接受一般同伦群上的正等式；Leibniz/Mahowald仍为本文定理 |
| `MossInput` | Belmont–Kong v2 Thm1.1/4.10、Def2.3–2.4、§1.2；与实际塔的弱收敛及 crossing 对应 | 保留检测、零复合、Massey非空、两个no-crossing和residual前提；不提供局部值/消失 |
| `TodaInputs` | BHS `prop:syn-toda-range` 的低维环数据：[h₀]标签、λ[h₀]=2、[h₀]η=0、[h₀]·π₂,₃=0 | 两条synthetic Toda membership已经移出A，见内部适配 |
| `TmfSourceResults` | BMQ v4 Fig1.1、§2、§7：源tmf π₆₂=0、stem63非正过滤E₂=0、经典κ̄/w检测、实际κ̄⁴w的unit像非零 | 不假定所有同leading term代表像非零；需C的经典F26尾部 |
| `TmfSourceExistence` | 在已识别标准背景存在上述真实谱、环unit、检测类和源结果 | 不是任意D.detector的结果；2local→2complete运输归标准源模型构造 |
| `TmfLabels.Standard` | IWX 2022原始E₂表：E₂^(4,24)和E₂^(9,54)各有唯一非零元 | 精确固定g/Δh₁g身份；与Lin坐标的等式仍由C证明 |
| `NuCofiberSourceResults`、`NuCofiberSourceExistence` | Pst/BHS 的两个独立叶子经内部构造得到同一ν cofiber上的兼容三lift，e=(1,0,0)、h₂标签及distinguished三角；该构造不是整体A | 与D已选三map相等是独立绑定，不由“存在”自动给出 |

## 模型识别独立交付

`ModelBindings D η G E` 不能通过接受文献而自动获得。

| 字段 / 类型 | 精确识别 | 后续交付 |
| --- | --- | --- |
| `classical : ClassicalSourceBinding D η E.classicalSource`、`synthetic_eta` | 同一经典convergence、η/ν映射、normalized η；单独的synthetic η标签识别 | `classicalInputsOfSource` 已用这些等式证明普通运输，不添加源事实 |
| `algebra : AlgebraBinding D E.algebra` | 同一首λ商/cobar乘法；每个有限λ商的乘法与sphereAction检测；实际过滤乘法；经典球乘法检测 | 通用模型比较证明；不提供任何指定局部乘积值 |
| `tmf : TmfBinding D G E.tmfSource` | detector的实际iso、unit方程、G两标签等式、同一球谱convergence | 源见证与路线模型的构造/比较 |
| `applicability.nuCofiber` | 源ν/bottom/top三个lift分别等于D选择的实际map | 三角相容性由这些等式运输；不得接受任意lift版本 |
| `applicability.moss` | 同一实际Adams塔的residual injectivity | 完备/强收敛适用证明，不是局部no-crossing结论 |

Pst/BHS源结果适用还要求 ν、λ商、Adams塔确实来自所声明构造，选定对象满足原文完备及收敛条件。不能新增无定义的 `Complete : Prop` 或仅用变量同名替代这些条件。源模型存在性、标准构造识别以及上述比较允许留作有准确签名的证明债；未经来源支持的任意模型通用公理不允许。

## 内部适配及其新增明确前提

入口为 `KIP126/Main/Solution/Route/LiteratureAdapters/`，下列声明是内部定理，证明仍待完成处保留 `sorry`；它们不属于 Main/Axiom 接受集合。

- `May.may_signed_boundary` 从源TC3推出相同connecting maps的负等式。`may_boundary_after_exponent_two_projection` 只在显式加法投影的目标满足 x+x=0 后消符号；实际Mahowald应用必须构造相关页/过滤投影。不能令全部稳定同伦群成为F₂向量空间。
- `Toda.synthetic_eta_squared` 负责实际低Massey/Moss与低Toda的运输；`synthetic_symmetric_two` 在θ∈π₆₂,₆₄、2θ=0下给λ²ηθ∈〈2,θ,2〉。其度为(63,64)，只断言membership，不取消高茎不定性。需要从同模型兼容张量三角及低维计算证明合适的对称Toda论证；不把IWX的C-motivic τηβ直接替换为synthetic公式。
- `Tmf.tmf_high125_product_detected` 使用固定cobar/实际球乘法比较。`tmf_high125_detection` 另要求 `ClassicalHigh125Tail D`，即**经典**F26 π₁₂₅S=0。该尾部由C的有限页穷尽、Ravenel消失线、同一经典过滤的分离性导出。由此才得到每个同leading term的代表等于源产品并有非零unit像。该定理不推出synthetic λ-torsion消失或DetectorInjectiveAt。
- `Tmf.tmf_route_inputs` 组合上述内部结果为 `TmfInputs D G`；这个旧名字现为内部路线后果类型。
- `NuCofiber.nu_cofiber_applicability` / `nu_triangle` 用三个准确map等式运输源三角；输出是D的同一ν、cofiber及normalized maps。
- `ComputationPrerequisites.tmf_labels_standard`、`nu_source_identification` 只用源标签绑定和经典Hopf输入，供C认证的适用前提；不依赖C结果，避免认证循环。

## 本次直接原文及数据证据

Pst 1803.01804v3、BHS 1910.14116v3、BX 2302.11869v3、BHSmot 2010.10325v2、Xu 1410.6199v1、IWX 2001.04511v3、BMQ 2011.08956v4 均核对仓库存留原文相应片段。BMQ本地PDF Fig1.1经实际渲染确认62列空，并按图例检查c₄周期族。May作者PDF直接读取TC3符号及Lemma4.6，SHA256为`61f6f38ffc88becad1d482270526477de03c03e64b8871d353e3b3116d655763`。

IWX v3 `cor:main-Adams` 明确其引用图表完整到90茎；引用为2022 *Classical and C-motivic Adams charts*，固定作者[Zenodo v1记录6987157](https://zenodo.org/records/6987157)。本次实际解码完整原始CSV：

| 文件 | 原始物理行与内容 | SHA256 |
| --- | --- | --- |
| `Adams-classical-E2.csv` | 59：g, stem20, AF4；275：D h1 g, stem45, AF9；分别是该分次唯一记录 | `0b103227bf84d8c335b3e65c91219e1e2a7913bc95bac03f2ba52011abfaaa4c` |
| `Adams-classical-Einfty.csv` | 204–207：stem62仅h₅²/AF2、h₅n/AF6、E₁+C₀/AF8、R/AF10 | `1e3b79c97472241543f1c58e713cf4c96447f553d99a94a7fc6ce3eeaac8393b` |

这些是作者先前计算的原始输出与论文完整性陈述，用于核实准确外部事实；哈希本身不证明数学正确性，也未完成Lean数据认证。下载只放隔离临时目录，不改原始数据库。

Moss 1970扫描仍未取得；此前直接核对 Belmont–Kong v1，本轮又直接读取固定 v2 的准确推广定理和§1.2前提，作为独立原始来源。旧版和新版定位分别保留，不能混写。Toda原书未直接读到；IWX §6明确为C-motivic重述。本次没有把这个证据缺口冒充已核验原书，且synthetic加强已归内部证明。

## 范围和证明债

仍由C(M)负责Lin坐标、基、乘积、微分、胞腔映射和穷尽认证；由本文推导负责λ规范化、任意 admissible 选择的 synthetic 二阶性、选择无关性、Massey局部值与零不定性、stretching、广义Leibniz/Mahowald、Prop.7.8/7.9及唯一标准T。BX 证明中一个共同 θ₅ 的 synthetic 二阶性另有原文依据：`kervairev2.tex:624–630`，其坐标 `(62,2)` 对应项目 `(62,64)`；不得将它与任意选择版本合并。Browder/HHR几何推论不属于该T必需A。机器重放若使用其他谱或本文新规则，应按实际依赖单独声明，不能用路线A的范围替代认证需求分析。

既往文档的3240-job build、28组来源及1333个Blueprint声明检查仅为历史记录。本次重构的实际定向编译与检查结果由本轮执行报告单独记录；本文件不把历史结果写成本轮通过，也不将任意编译通过视作来源核验或数学认证。

## 当前显式接受边界

- `classical_source : StandardClassicalSourceExistence`：同一标准球谱，几何 η/ν 与标准来源绑定；Xu/IWX 所需经典结果。
- `tmf_source : StandardTmfSourceExistence`：同一普通背景上 tmf 源对象与局部结果、connective/finite mod-2 type、真实环的交换性。
- `sphere_vanishing_line` / `sphere_separated`：Ravenel 的独立无限范围结论；不是程序快照。
- Synthetic 的 14 个叶子分别为 `nu_cofiber`、`full_lift`、`finite_lift`、`bockstein`、`permanent_lift`、`differentials`、`eInfty`、`filtration_lambda`、`e2_weight_vanishing`、`realization_detection`、`bx`、`low_ring`、`may_tc3`、`quotient_algebras`。全部带明确 `SourceModel D η G`，需要 η 的叶子还显式带 `EtaChoice`。
- `quotient_algebras` 只接受 `Nonempty (QuotientAlgebraStructures D)`：实际正整数 λ 商的普通交换代数及单位。完整 `QuotientAlgebras` 的球作用和所选 ρ 的乘法相容由内部 `source_quotient_algebras` 给出。其负过滤窗口 `w+q−1<m` 来自第一商 E₂ 及有限商三角；映射/乘积适配用 `π_(1,-j) Q_i` 和 `π_(2,-2j) Q_i` 消失，不借用待识别的 BHS E∞ 限制映射或 C。这修正了第二轮把这部分适配仍留在 A18 中的问题。
- `sphere_moss`：实际固定球谱映射 Adams 塔上的原始一般 statement；普通弱收敛、零复合和 crossing 前提保留。`MossSpecialization.moss_specialization` 到路线 `ThetaBMassey` 是内部证明债。

`SourceModel` 本身只含几何/范畴/比较/适用范围，没有指定微分、局部乘积值、C₃/C₄/C₅、Prop.7.8/7.9 或 T。其数据构造、比较和适用范围的证明不由上列公理自动交付。所选 source 采用整个严格谱值图表范畴的导出局部化与 homotopy-sheaf 等价，保留高阶图表信息。

内部 assembler 先接受叶子，构造 realization 坐标、ν兼容三角及其选择识别、实际 ν lax tensor 下 tmf algebra、有限 λ 商的同模型乘法比较，然后逐字段形成 `Inputs`。存在值的原始叶子只在这次组装内取见证；没有重新选择另一个 ordinary/synthetic 模型，也没有恢复原来的阶段总包投影传递体系。

现行 `sources.json` 为 schema v2，检查脚本同时枚举实际 Main/Axiom/Literature 公理名与来源清单。哈希、字段覆盖和 Lean #check 都不等于来源数学真伪认证。最后验收与未核实项见[第三轮报告](audits/stage0-57647d2-iteration-3.md)；第二轮报告保留为历史快照。
