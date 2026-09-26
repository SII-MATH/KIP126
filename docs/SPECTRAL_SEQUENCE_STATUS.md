# 谱序列模块当前状态

本文件只记录继续开发所需的当前结论，不保存讨论过程或已放弃的架构。
实现事实以 `KIP126/` 下的 Lean 源码为准；本文件在实现变化时直接更新，不创建并行版本。

## 已确定的结构

- 内部代表元、循环、边界及 crossing 的叙述以 `SSData`、`PreSS` 和
  `KIP126.Core.SpectralSequence.SpectralSequence` 为基础；Mathlib 的
  `CategoryTheory.SpectralSequence` 是对接外部谱序列 API 的目标，不替代内部
  `Z/B` 叙述。适配代码归入 `KIP126/Mathlib/`；完整的通用页面、微分及态射
  适配尚未建立（见 issue #105）。
  对同一个有界过滤复形，`KIP126/Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean` 已证明两条
  构造路径的有限页对象和微分相同，并给出关联分次代表元关系与 Mathlib 页
  微分的等价表述；这不是任意 `PreSS` 的通用适配，也尚未覆盖态射。
  因此这条仍是架构目标，不能视为已完成事实。
- KIP126 的具体计算仍从 `FilteredComplex` 的代表元模型出发；`Z_r`、`B_r`、
  `pageObj = Z_r/B_r` 和 `pageDifferential` 不是从任意 Mathlib 谱序列反向恢复的附加数据。
- canonical 页面直接装配成 Mathlib 谱序列，不再经过
  `PageHomologyWitness`、`PageHomologyFactorization` 或另一套 presentation 包装。
  `pageHomologyIso` 的内部证明留在 `Def/FilteredPage/AssemblyProofs.lean`；
  最终 Mathlib 谱序列装配在 `Mathlib/SpectralSequence/FilteredComplex/Assembly/Data.lean`。
- 有限页、`E_∞` 的代数对象以及向 abutment 的收敛比较是三个不同层次，不能混为一体。

## 已完成的有限页主链

### 球面 Adams 对象的内部构造

`Def/ClassicalAdams/TowerSSData/Sequence/Data.lean` 的
`adamsTowerInternalSpectralSequence` 直接从现有 Adams tower 构造内部谱序列：

- 环境模是 tower 的 `Z₂`，内部第 `n` 阶是实际 `Z_(n+2)`、`B_(n+2)`；
- 无限阶循环取交，边界取递增族的上确界；
- 有限商页与原 tower 商页的同构保持代表元；
- 微分来自 tower 的提升公式，平方为零，且核/像等于下一阶循环/边界在当前页的像。

`sphereAdamsModel` 已改为这个构造在 `standardFoundation.hf2.unit` 和
`SphereSpectrum` 上的特化，不再是命名公理。两个最终命题的签名不变。
`Checks/ClassicalAdams/TowerSSData.lean` 单独审计通用构造没有项目公理或
`sorryAx`；`ComputationalBoundary.lean` 审计固定对象仅额外依赖
`standardFoundation`，并拒绝内部推理反向导入 Mathlib 谱序列或 KIPBase。

`Def/ClassicalAdams/TowerLayer/` 现已从现有 distinguished triangles 构造
非负过滤度的层同构 `adamsLayerIso : Q_s ≅ H ⊗ T_s`。它来自三角形同构，
已证明层映射对应 Adams 单位，连接映射也相容（保留正 `fiberι` 约定要求的
负号）。进一步证明 `Z₁ = E₁`、`B₁ = 0`，构造
`adamsPageOneHomologyEquiv`，将实际 tower 的第一商页对应到
`π_(t-s)(H ⊗ T_s)`，并核对代表元和 `adamsJ` 的像。这不使用 Milnor、Lin
或收敛输入，也不把从第二页开始的内部 `Page 1` 当作实际第一页。

`Def/ClassicalAdams/TowerSmash/` 从更底层的张量正合性构造另一个实际比较：
设 `bar H = fiber (S → H)`。当 `tensorRight X` 与悬移相容并保持正合三角形时，
`adamsTensorFiberTriangleIso` 比较整个张量纤维三角形，给出
`fiber (X → H ⊗ X) ≅ bar H ⊗ X`；第二、第三分量分别是 unitor 和恒等。
连接映射相容性保留悬移比较；加上 `MonoidalPreadditive` 后，正 `fiberι`
约定中的符号被明确消去，纤维包含对应 `fiberι(unit) ⊗ id` 后接 unitor。
这里没有假定一个任意的 fiber/tensor 同构，而是由 distinguished triangles 构造。

对所有右张量函子显式给出这些结构后，`adamsTowerSmashIso` 递归比较既有
`adamsTower` 与 `adamsSmashTower`（反复左张量 `bar H`）。已证明逐级下降映射
以及全部有限复合相容；`adamsTowerSmashIso_lift_iff` 进一步证明同伦群上的
有限阶提升问题在两者之间等价。既有内部谱序列没有被替换。
`Checks/ClassicalAdams/TowerSmash.lean` 审计全部新构造仅依赖 Lean 基础公理，
并禁止固定基础、Milnor、Lin 和 Mathlib 谱序列适配层导入。
这为后续 tower 乘法提供张量模型，但未证明比较在 `X` 上自然，也未提供
固定基础的张量正合性见证或证明实际 `d₂` 的 Leibniz 相容性。

`TowerSmash/Pairing/` 进一步只用 associator 和 unitor 拼接球面张量模型的因子，
构造 `P_s S ⊗ P_t S ≅ P_(t+s) S`。已证明零阶公式、递归公式和第一输入方向
的下降相容性。`Pairing/Transport/` 利用既有 tower 比较把这个配对搬回
**现有** `adamsTower`，给出 `adamsTowerSpherePairingIso`，并证明比较交换图
和真实第一输入下降映射的相容性。求和写成 `t+s` 仅为递归索引方便。
同一个 `TowerSmash` 编译审计覆盖新构造，仍无项目公理、无 `sorryAx`。
`Pairing/Right/` 把第二输入方向所需的一个底层条件单独写成
`UnitFiberInclusionCommutes`：设 `B = fiber(unit)`、`b = fiberι(unit)`，要求
`(b ⊗ id_B) ≫ λ_B = (id_B ⊗ b) ≫ ρ_B : B ⊗ B → B`。
这是谓词，不是新公理；尚未从现有环结构或张量正合性证明它，也未提供固定见证。
在此显式条件下，已证明它张量上任意 `X` 后仍给出相应等式，进而得到
`p_(s+1) = B ⊗ p_s` 和所有层的第二输入下降相容性。
`Pairing/Right/Transport/` 再将此条件定理传回既有 `adamsTower`；
`adamsTowerSpherePairingNextRight` 只是原配对的后继索引转换，并非新选的配对。
上述条件定理也受同一编译审计覆盖，无项目公理、无 `sorryAx`。

`TowerLayer/Mapping/` 与 `Pairing/Right/Vanishing/` 已进一步把两因子条件
从映射群消失推出：若 `[Z, Σ⁻¹Y] = 0`，实际纤维包含 `fiber(f) → X`
在以 `Z` 为源的映射上可消去。这来自纤维三角形的正合性，**不是**声称
纤维包含是范畴单态。两个消去因子映射后接 `b : B → S` 总是相等；因此
`[B ⊗ B, Σ⁻¹H] = 0` 蕴含 `UnitFiberInclusionCommutes`，进而给出真实
tower 的右输入相容性。

`Pairing/Right/Connectivity/` 使用 Mathlib 的 **t-结构**（不是谱序列适配层）
证明这个消失条件：在其上同调编号下，`B ⊗ B ∈ C≤0`、`H ∈ C≥0`
就够了；前者又可由 `B ∈ C≤0` 和张量保持 `C≤0` 得到。
标准谱范畴中的解释是连通谱对 smash 封闭，见
[Lurie DAG II，Lemma 4.3.5](https://arxiv.org/pdf/math/0702299)；
纤维的连通性则来自长正合列及 `π₀S = ℤ → π₀HF₂ = F₂` 满射。
这些解释不是固定基础的 Lean 见证：当前 `StandardAdamsFoundation` 还没有
t-结构、其与同伦群的对应或上述连通性数据。新定理保留这些显式条件，
没有把两因子等式或消失结论改写为新公理。

`UnitFiber/Homotopy/` 已把上述纤维连通性的长正合列推导接实：先证明一般
`π_n(f)` 满射蕴含 `π_(n-1)(fiber(f)) → π_(n-1)(X)` 单射；再利用现有
HF₂ 单位像定理证明 `S → HF₂` 在**所有**同伦次数上满射。因此，实际
`B = fiber(H.unit)` 的同伦群逐次单射到球面的同伦群，球面任意消失次数
都会传给 `B`。不需要额外假定环、Künneth 或张量正合性。

`UnitFiber/Connectivity/` 据此消去了上一层定理对 `B ∈ C≤0` 的单独假设：
若给定球面负次同伦群消失，以及由负／正次同伦群消失检测 `C≤0`／`C≥0`
的 t-结构性质，就能分别推出 `B ∈ C≤0`、`HF₂ ∈ C≥0`。结合张量条件，
得到 `mod2SpherePairing_step_right_of_homotopy`，结论使用既有真实 tower 的
配对和下降映射。固定基础仍缺球面连通性、t-结构及其同伦检测等见证；
没有新增公理，不能把此条件定理当成已经完成的固定基础实例。

`TowerSmash/Pairing/Layer/` 已从第一输入交换图补成实际层三角形的同构，
构造 `adamsLayerAt s ⊗ T_t ≅ adamsLayerAt (t+s)`，并证明 tower 到层的映射
和连接映射都相容。`Layer/Right/` 在显式的左张量正合性及两因子条件下
同样构造 `T_s ⊗ adamsLayerAt t ≅ adamsLayerAt (t+s)`，证明另一侧的公式。
这里直接使用已有整数索引的 `adamsLayerAt`，没有另造层对象。
`adamsSphereLayerPairingIso_δ` 与 `adamsSphereTowerLayerPairingIso_δ`
保留右／左张量函子的悬移比较。两种混合配对分别前接 tower 到层的映射后，
都是原 tower 配对后接目标层投影；`adamsSphereMixedLayerPairings_agree`
证明它们在这个共同来源上相等。编译审计通过，无新增项目公理或 `sorryAx`。

这些配对由三角形补全定理选出，不声称选择唯一或彼此相干，也尚未对应到
指定的系数环乘法。它们给出了**单侧**连接映射公式，不是两个层之间的乘法，
更不是完整的双项 Leibniz 公式。

`Cohomology/Multiplication/Pairing/` 另外从显式的 `Mod2RingStructure` 和
braiding 定义系数配对：将 `(H ⊗ X) ⊗ (H ⊗ Y)` 的中间因子交换，再做
`H` 的乘法和给定的 `X ⊗ Y → Z`。已证明两个实际 Adams 单位插入在此配对下
合成一个单位插入。`TowerSmash/Pairing/Layer/Multiplication/` 经已有
`adamsLayerIso` 将它搬到**原有层对象**上，定义
`adamsSphereLayerProduct : L_s ⊗ L_t → L_(t+s)`，并证明比较公式以及
`(q_s ⊗ q_t) ≫ product = towerPairing ≫ q_(t+s)`。
这个乘法来自给定系数环，不来自两次独立的三角形补全；不需要假定 Lin 乘法。
新构造和证明均通过同一编译公理审计。

`Multiplication/Pairing/Restrictions/` 已证明只在一侧插入单位的两个公式：
右侧插入后，系数乘法消去，只剩结合子以及 `H ⊗ towerPairing`；左侧插入后
还保留将另一个 `H` 移过第一输入的 braiding。`Layer/Multiplication/Restrictions/`
通过已有层比较把这两个公式传回实际 `adamsSphereLayerProduct`，得到
`adamsSphereLayerProduct_ι_right_comparison` 和
`adamsSphereLayerProduct_ι_left_comparison`。这是实际乘法的一侧限制公式，
没有假定或证明它等于独立选择的混合三角形补全，也没有把连接映射相容性
藏入新公理。

`Context/TensorSuspension/` 将右张量悬移比较对右变量的自然性、与结合子的
相容性写为 `RightTensorSuspensionCompatibility`。这是只涉及底层范畴的
显式条件，不是关于 Adams 微分的公理；原有逐对象 `CommShift` 实例并不
包含这两个族相容条件，固定基础目前也未提供见证。
`TowerSmash/Pairing/Transport/Successor/` 已证明实际 tower 配对的下一层
由当前配对与单位纤维的张量构造得到。结合已有纤维连接映射比较，
`Step/Suspension/` 与 `Transport/Boundary/` 在上述底层条件下证明系数侧
连接映射公式。`Layer/Multiplication/Boundary/` 随后传回原有层对象：
`adamsSphereLayerProduct_ι_right_δ` 证明右侧输入来自 tower 时，具体层乘法
的边界等于左侧输入的边界后接下一层 tower 配对。证明保留悬移比较，并
核对正纤维层比较中的负号；需要张量双可加性。新增声明通过编译公理审计，
没有新增公理或 `sorryAx`，也没有重新选择一个层乘法来替换指定乘法。

`Context/TensorSuspension/Braiding/` 进一步单独刻画左、右张量悬移比较与
braiding 的相容性。`Step/Suspension/Right/` 证明另一侧边界实际给出一个
带交换映射的纤维提升；`Pairing/Right/Boundary/` 将它特化为既有 tower 上的
`adamsTowerSpherePairingBoundaryRight`。没有把它直接等同于原来按顺序
拼接的 `adamsTowerSpherePairingNextRight`，也没有改变原 tower 或层乘法。
`Layer/Multiplication/Boundary/Right/` 将这个公式传回同一个具体层乘法，
证明 `adamsSphereLayerProduct_ι_left_δ`。随后
`adamsSphereLayerProduct_ι_left_δ_ordered_iff` 精确刻画全局谱映射公式的条件：
两种提升之差在悬移后，前接实际的第二输入边界及悬移比较，所得复合为零。
这比要求两种提升处处相等更弱；目前只证明了等价判据，没有证明该复合为零。
新增条件仍为显式底层结构条件，固定基础未提供见证。

这不是页上乘法的已知必要条件，不能把消去整个谱映射的障碍列为必做步骤。
`Layer/Multiplication/Representatives/` 将边界公式前接两个代表元，并刻画
这两个代表元上有序提升公式成立的精确条件；它只要求前接代表元后的差为零。
进一步取页商后所需的条件仍需单独分析。

`TowerLayer/Connecting/` 将 `adamsK x = 0` 与实际代表元复合连接映射为零
等价起来，并推出每个有限页的 `adamsCycles` 成员条件，以及内部 SSData
采用的实际交 `adamsCycleSubmodule ... ⊤` 的成员条件。
`Layer/Multiplication/Cycles/` 利用正合性和已有双单位乘法公式，直接证明：
两个连接像为零的层代表元的乘积仍有零连接像；前接球面映射后，它属于
每个实际 `Z_r`。这里不需要新增的悬移相容谓词，也不需要整个有序提升
比较障碍为零。此结论不包含非零性，也没有定义规范的分次球面乘法。
上述代表元、连接像和乘积循环元的七个新定理已通过
`Checks/ClassicalAdams/TowerSmash.lean` 的编译公理及导入边界审计；
只依赖 `propext`、`Classical.choice`、`Quot.sound`，无新增项目公理或 `sorryAx`。

当前缺口是一般循环元的双项 Leibniz 公式、页间传递，以及与 Lin 乘法的
对应。两侧单独的公式和两个 tower 像的特殊情形不能替代这些证明；
层乘法的结合律也尚未由此模块证明。

`TowerLongLayer/` 现在补上一般循环元的几何代表元，而不再局限于 `Kx = 0`：
定义实际长层 `Q_s^(r) = cofiber(T_(s+r) → T_s)` 及其到原有一阶层的投影。
`Context/CofiberFactorization/` 由两个长正合列证明投影像恰为连接像可提升的
元素。特化后得到**实际子模相等** `adamsCycles = range adamsLongLayerToE1`。
`TowerLongLayer/Page/` 构造到既有循环元模块和既有商页的满射，并证明长层
连接同态后接目标投影计算的就是现有 `adamsDifferential`。它对所有 `r ≥ 1`
和整数双次数成立，不需要新的乘法假设、八面体假设或 cofiberMap 的复合律。
`TowerLongLayer/Internal/` 再通过已有商页比较给出到内部 SSData 页的满射，
并证明内部 `adamsTowerInternalD` 同样由长层边界计算；没有引入 Mathlib
谱序列适配层，也没有另选一条谱序列或另一套微分。
这为下一步相对乘法提供了覆盖所有页元素的输入；长层之间的相容乘法、
双项边界公式和 Lin 比较仍未构造，不能由代表元满射直接推出 Leibniz。
`Checks/ClassicalAdams/TowerLongLayer.lean` 已对这一组 23 个声明执行编译
公理审计和导入边界检查：仅依赖基础逻辑公理，无 `sorryAx`、固定基础、
Milnor 或 Lin 公理，也没有反向导入 Mathlib 谱序列适配器。

`TowerLongLayer/Pairing/` 将后续商空间步骤与几何见证分开：给定一阶与长层
同伦群上的双线性配对，若它们与长层投影相容，且两种“tower 核中的元素经
`j` 映出的边界 × 长层代表元”的乘积落入目标 `B_r`，则证明一般 `Z_r`
乘法封闭以及两侧边界条件，并构造既有商页上的唯一配对。该构造也已接到
内部 SSData 页，不依赖 Mathlib 谱序列。
这里只构造给定页和双次数的双线性配对，不包含结合律、单位或页间乘法相容。
`Boundary/` 直接由长层连接同态及 `j` 定义 `adamsLongLayerBoundaryToPage`；
`Pairing/Leibniz/` 证明其双项边界公式等价于现有 `d_r` 的相应页公式。
这是**条件性下降和精确归约**，本身没有构造球面上的配对见证，也没有证明
边界公式。球面特化现已由下面的构造固定 `first` 并提供单步见证；更高页
仍须提供长层配对及两类相容性、构造相邻微分次数的配对并核对符号、证明
双项边界公式，最后比较 Lin 乘法。
不能拿任意配对（例如零配对）来替代这一整组指定对象和对应关系。
新增 22 个声明已由 `Checks/ClassicalAdams/TowerLongPairing.lean` 编译审计，
仅依赖基础逻辑公理；审计也拒绝固定基础、Milnor、Lin 和 Mathlib 谱序列
适配层的导入。这里审计通过的是条件性构造和归约，不是这些条件的见证。

`Context/TensorPairing/` 从给定右张量移位比较、单位同构和移位加法同构
指定 `Sphere a ⊗ Sphere b ≅ Sphere (a+b)`，并在张量可加条件下构造实际
谱映射诱导的整数双线性同伦群配对。`Multiplication/Homotopy/` 据此将
`adamsSphereE1Product` 固定为系数乘法诱导的既有层映射；不是自由输入的
双线性映射。`Pairing/Sphere/` 把给定长层谱映射转换为这种固定 `first` 的
代表元配对，并证明谱层面的投影交换式推出代表元投影相容性。

单步情形现已实际构造：`CofiberFactorization/Iso/` 用三角形五引理证明
通过同构的因子分解诱导 cofiber 同构；`TowerLongLayer/One/` 得到指定的
`adamsLongLayerProjection ... 1 ...` 是同构，而不假设 cofiberMap 保持恒等。
`Pairing/Sphere/One/` 通过该同构搬运指定系数乘法，并证明投影相容性；
因为 `B₁ = 0`，边界相容性也已证明。随后构造既有 `adamsPage ... 1 ...`
上的 `adamsSpherePageOneProduct` 并验证长层代表元公式。这是原有 quotient
模型的 E₁，不是起始于 E₂ 的内部 SSData 的越界页。
19 个新增声明由 `Checks/ClassicalAdams/TowerSpherePairing.lean` 编译审计，
只依赖基础逻辑公理，不导入固定基础、Milnor、Lin 或 Mathlib 谱序列适配层。
这些构造仍显式依赖环境的张量、移位、正合性、编织和系数环结构；尚未给出
固定 `standardFoundation` 的对应见证，也没有证明移位比较的分次符号相容、
`d₁` 的 Leibniz 法则、向 E₂ 的乘法下降或更高页配对。

`Pairing/Internal/Leibniz/` 已将长层双项边界公式运送到实际内部微分，
同时比较两个输入微分及乘积微分，不重新选择微分。
`Pairing/Sphere/H6/` 把 (d₂(h₆²)) 所需的几何输入收缩到三处指定乘法：
实际两步层上的 `Q₁ ⊗ Q₁ → Q₂`、`Q₃ ⊗ Q₁ → Q₄`、`Q₁ ⊗ Q₃ → Q₄`，
分别对应 `(1,64)×(1,64)`、`(3,65)×(1,64)`、`(1,64)×(3,65)`。
`Compatible` 要求三条谱层面的投影交换式及各自两侧 tower 核边界条件；
`RelativeBoundary` 的两项使用后两个实际下降乘法，不再是任意给定的 `L/R`。
它取目标页上的特征二加号形式，不声称已确定谱层面的分次符号。

`ComputationalDifferential/LongLayer/` 另列 `LinCompatible`，要求这三处
构造所得的内部页乘法分别等于现有 Lin presentation 的乘法。
`computedH6Square_d_two_eq_zero_of_longLayer` 证明：若上述三张实际谱映射、
下降条件、相对边界公式和三处 Lin 比较均已给出，则现有内部微分满足
`d₂ computedH6Square = 0`。证明先将平方换成 `computedH6Square`，再用两个
交叉乘积的 Lin 比较，将边界和化为特征二中的 `ab + ba = 0`；不需要假设
`d₂ computedH6 = 0`，也不再需要整个次数范围的 `SecondDifferentialLeibniz`。
这是**具体几何条件的充分性证明**，尚未在固定球面上给出两步配对的完整见证，
也没有消去固定基础及 Lin presentation 公理。更高微分和永久存活仍未证明。
纯几何引理 `internalD_square_eq_zero_of_cross_sum` 先从边界公式和交叉项
相消推出平方微分为零；计算侧再单独用 Lin 比较提供相消，避免混淆两类输入。
审计分为 `Checks/ClassicalAdams/H6LongPairing.lean`（11 个纯几何声明，仅基础
逻辑公理，拒绝固定基础和 Lin/Milnor 导入）与 `ComputationalLongPairing.lean`
（4 个计算侧声明，明确允许并检查现有固定基础与 Lin 公理，拒绝新增公理、
`sorryAx`、Milnor 依赖和 Mathlib 谱序列适配层）。

`Context/CofiberFactorization/Lifting/` 已将提升判据推广到任意源谱 `W`：
给定第一层投影 `x` 及其连接映射的指定提升 `y`，正合性构造同时满足
`π z = x` 和 `δ z = y` 的长层映射 `z`。证明先提升 `y`，再用来自三角形
中间对象的映射修正投影，修正不会改变连接映射。
`TowerLongLayer/Pairing/Sphere/Lifting/` 将此用于指定的一阶乘法：长层乘法
存在当且仅当其一阶连接映射能提升到 `Σ T_(s+t+r)`。给定这个提升后，
`adamsSphereLongLayerProductOfBoundaryLift` 构造乘法并保留上述两条等式。
`Differential/` 进一步证明该乘法代表元的**现有微分**等于
`j` 作用在 `y` 的配对值的退悬上，不假设页上 Leibniz 或乘法已下降到商页。

`Sphere/H6/Lifting/` 把三处乘法的输入降为到 `Σ T₄`、`Σ T₆`、`Σ T₆` 的
实际谱映射及 `FitsProducts` 条件。`toLongLayerMaps` 构造三处长层乘法，
证明投影交换式并保留指定的连接映射。
`computedH6Square_d_two_eq_zero_of_boundaryLifts` 据此复用上述充分性证明；
仍须提供三张底层提升、两个交叉 tower 核边界条件、相对双项边界公式和 Lin 比较。
没有把这些见证的存在改写成公理，也没有证明它们在固定球面对象上成立。
`Checks/ClassicalAdams/TowerProductLift.lean` 审计 34 个通用声明仅依赖基础
逻辑公理，并拒绝固定基础、Lin/Milnor、KIPBase 和 Mathlib 谱序列适配层导入。
`ComputationalBoundaryLift.lean` 单独审计固定推论，明确保留且仅允许现有
`standardFoundation`、`linE2Presentation` 两项数学公理，拒绝 `sorryAx`。

`SphereInitial/FiltrationOne/` 已证明实际球面塔的第一过滤度在所有有限页、
所有内部次数都没有边界。证明使用第零过滤度的出射微分为零和负过滤度为零，
不使用 Lin 数据或乘法。`TowerVanishing/` 将边界稳定引理推广为“入射微分
为零”即可，不必要求其整个源空间为零，并保留原有源空间为零的接口。
由此 `SphereH6LongLayerMaps.square_boundary` 自动给出平方的两侧边界条件，
两个交叉乘积中以 `(1,64)` 为边界输入的一侧也自动成立。
`CrossBoundaryCompatible` 只保留以 `(3,65)` 为边界输入的另两侧条件。
固定推论 `computedH6Square_d_two_eq_zero_of_boundaryLifts` 已改用这个较弱前提，
不再要求调用者提交原来的三个完整 `BoundaryCompatible` 证明。
这是消除了四条假设的实际证明，不是新增的数学输入。
`Checks/ClassicalAdams/SphereInitial.lean` 另在不导入固定基础、Lin/Milnor 或
Künneth 层的环境中审计第一过滤度无边界定理。

`TowerLayer/FirstBoundary/` 把实际 `d₁` 与原始层中的 `B₂` 接起来：
每个 `B₂` 元都有一个第一商页上的原像，而且实际第一页面微分的层代表元
属于 `B₂`。`Sphere/H6/Boundary/FirstDifferential/` 因此证明一个更底层的
充分准则：对 `(2,65)` 的任意第一页面输入和 `(1,64)` 的实际二页循环，
若指定的第一页面乘法满足两种次序的局部 `d₁` 乘积公式，则余下两个交叉
边界条件成立，且与长层谱映射的选择无关。
`SphereH6FirstCycleProductRule` 只谈已经定义的 `d₁`、系数诱导的第一页面
乘法和二页循环子模，不含 Lin、二页乘法或指定的 `d₂` 值。
`computedH6Square_d_two_eq_zero_of_firstCycleProductRule` 将这个充分准则接到
已有计算结论，并仍显式要求底层提升、Lin 比较和二阶相对边界公式。
这是对剩余条件的第一页面充分准则，**不是又消掉了两条假设**：局部 `d₁`
公式尚未从 tower 乘法相干性证明，它们也不能代替 `d₂` 的相对边界公式。
通用证明的编译审计只有基础逻辑公理；固定推论仍仅披露原有固定基础和 Lin 公理。

这仍不是完整的乘法 tower：底层条件和固定张量结构的见证、双项边界乘法公式，
及所得页乘法与 Lin 乘法的对应尚未完成，不能据此填入 Leibniz 条件。
尤其不能把同伦范畴中两个方向的交换图当作充分条件：Dugger 的
[Part I，§1、§7](https://arxiv.org/pdf/math/0305173) 说明仅在同伦意义下交换的
tower 配对未必诱导谱序列配对，并给出反例。这里引用的是设计边界；
没有把文献结论加入 Lean 公理。后续仍须构造所需相干数据或证明相应的边界乘法公式。

`Def/ClassicalAdams/TowerResolution/` 进一步直接从单位的 cofiber 三角形
定义连接同态，以及它后接下一层单位所得的同调微分。已证明实际第一页微分
在 `adamsPageOneHomologyEquiv` 下就是这个公式，并证明它平方为零。
`sphereFirstDifferential_homology` 核对该公式正是现有 Milnor 接口使用的
`sphereFirstDifferential`；定理不需要任何 `MilnorCooperations` 值。
`Checks/ClassicalAdams/TowerResolution.lean` 独立审计这些证明仅依赖 Lean
基础公理，并检查固定球面特化和内部导入边界。这接实了第一页微分的几何来源，
但还没有将系数同调识别为 Milnor cobar，也没有证明与 Milnor 余乘法微分相容。

`Def/ClassicalAdams/TowerHomology/` 已在显式的 `Mod2RingStructure`、
`(tensorLeft H).CommShift ℤ` 与 `.IsTriangulated` 参数下，把单位 fiber 三角形
张量上 `H`，由长正合列和乘法收缩构造下一层同调：它既是单位像的商，
也是乘法收缩映射的核。`Normalized/` 的同构保持实际连接同态，逆像的
正规化公式为 `z - U(A(z))`，并可特化到任意实际 tower 阶段。
在球面处，右幺同构将这个核对应到合作代数余单位的核，得到
`sphereFirstPageFiltrationOneEquiv : E₁^(1,t) ≃ₗ[ℤ] ker(ε_t)`。
`Checks/ClassicalAdams/TowerHomology.lean` 审计其仅使用 Lean 基础公理，
且不导入固定基础、Milnor 坐标、Lin 数据或谱序列适配层。
这是从低层结构推导坐标的第一非平凡过滤层；固定基础尚未提供上述结构。
全部过滤层的条件坐标构造见下文；固定 Künneth／Milnor 见证和完整微分
相容性仍未完成。

`Cohomology/Coaction/` 已证明实际单位插入 `δ_X = H ⊗ η_X` 的自然性、
相邻两次插入的 coface 恒等式，以及给定乘法下的左右余单位律；不是另设
一个合作用公理。`TowerHomology/Splitting/` 把原同调单位明确对应到此映射，
构造自然幂等算子 `P = id - U ∘ A`，证明 `range P = ker A`、
`ker P = range U`，且正规化不改变实际边界。在上述张量正合性条件下，
还构造 `(A,b) : H_n(H ⊗ X) ≃ H_n(X) × H_(n-1)(fiber η_X)`；逆映射
使用唯一正规化边界提升，可用于任意实际 `T_s`。这里 `H_n(Y)` 指
`π_n(H ⊗ Y)`。`Checks/ClassicalAdams/CoactionSplitting.lean` 审计无项目
公理或 `sorryAx`，并排除固定基础、Milnor、Lin 和适配层导入。
这些自然性和分解恒等式本身只是 Künneth 比较的前置结果；所有过滤层的
条件 Milnor 坐标还使用下文明确列出的额外低层输入。

`Cohomology/Coefficients/` 已在显式 `MonoidalPreadditive` 和
`Mod2RingStructure` 参数下，从单位的 `2u = 0` 推出 `2 id_H = 0`、
`2 id_(H ⊗ X) = 0`，再构造原有同调／上同调群上的规范 `ZMod 2` 标量。
同调函子、合作代数余单位和对角映射仍是原映射，现在带有 F₂ 线性性。
`ClassicalAdams/Coefficients/` 进一步证明实际 tower 的全部有限商页及
内部 SSData 的全部有限页均为二挠，构造局部 F₂ 模结构。微分、第一页同调
比较、正规化核比较和上述 `(A,b)` 分解升级为 F₂ 线性映射／同构，
并核对底层映射不变。
`Checks/ClassicalAdams/Coefficients.lean` 审计上述构造只用 Lean 基础公理，
不引入固定基础、Milnor、Lin 或谱序列适配层。未改动现有整数模 SSData，
也未给固定基础添加乘法或张量加法性实例；这不是 Künneth 比较本身。

`Algebra/Graded/Tensor/` 已构造有限支撑的分次张量积，并从平坦性与
直和保持核证明逐次张量核同构。`Cohomology/Cooperations/Tensor/` 将它
应用于真实的 `A_i = π_i(H ⊗ H)`、`ε_i : A_i → π_i H`；由 π₀ 坐标及
其余次数消失构造 `(π_*H ⊗ V)_n ≃ V_n`，得到
`(ker ε ⊗ V)_n ≃ ker((A ⊗ V)_n → V_n)`，不依赖 Milnor 坐标。

`Cohomology/Cooperations/Kunneth/Data.lean` 明确剩余的低层结构参数
`Mod2CooperationKunneth`：全部谱的同调 Künneth 同构、自然性和与实际乘法
的相容性；不含任何 Adams 页、微分或存活字段，也没有固定实例或新公理。
在这个**显式前提**及上述张量正合性条件下，`TowerHomology/Kunneth/`
已推导实际下一层同调等于约化合作代数张量上一层同调，并核对边界代表元
对应 `κ(z - U(A(z)))`。`Iterated/` 将此递推到全部非负过滤层，构造
实际 `E₁^(s,t) ≃ N_s(t-s)`，其中 `N_0(n)=H_n(X)`、
`N_(s+1)(n)=⊕ᵢ ker(ε_i) ⊗ N_s(n+1-i)`。
`Checks/ClassicalAdams/KunnethRecurrence.lean` 审计通用构造只用 Lean
基础公理，拒绝 Milnor、固定基础、Lin 与适配层导入，并检查实际球面特化。
这是从低层 Künneth 参数推导所有层坐标，不是 Künneth 参数已在固定基础上实现。

`Cohomology/Cooperations/CobarStep/` 独立定义约化映射，其未约化代表元是
`κ(外侧单位插入(x) - 内侧单位插入(x))`。它不导入 Adams 页面／微分，
也不以页面微分为定义；两种单位插入均被实际乘法收缩，故差落在约化核。
`TowerHomology/FirstDifferential/` 从连接同态的自然性证明实际分辨率微分
等于“外侧单位插入后取 smashed triangle 边界”，再证明实际商页 `d₁`
在已构造坐标下等于上述约化映射。除先前参数外，这一步**显式要求单位自然
变换与悬移相容**，没有从张量函子的悬移相容性中擅自推断这一条件。
`Checks/ClassicalAdams/CobarStep.lean` 和 `FirstDifferential.lean` 审计这些
条件定理只依赖 Lean 基础公理，并排除固定基础、Milnor、Lin 和谱序列适配层；
前者还禁止导入 Adams 页面、分辨率和 tower 同调比较。
固定基础上的环、正合性、单位悬移相容性与 Künneth 实现仍待提供；真正合作
代数到 Milnor 多项式的识别及对角／合作用比较也尚未完成。因此已证的是
真实合作代数坐标中的第一微分，不是完整 Milnor 微分公式，更不是最终存活。
`standardMilnor` 尚未消去。

`MilnorCobar/Polynomial/Monomials/` 已证明现有正规化齐次 cochains 的
规范单项式基：每个非零单项式次数正确，且每个槽至少使用一个变量。
系数同构把它改写为非空槽单项式词上的有限支撑函数；逐槽张量同构将两个
基向量送到拼接词，系数相乘。整数分次保留负次数为空，不使用 `toNat` 截断。
`Cohomology/Cooperations/MilnorBasis/` 的显式输入仅是实际 `ker ε_i`
上按单槽 Milnor 单项式索引的基，没有页面／微分字段，也没有固定存在公理。
结合它与 Künneth、环及张量正合性，`TowerHomology/MilnorCoordinates/`
已构造 **所有非负双次数**上的 `sphereFirstPageMilnorEquiv`：实际
`E₁^(s,t) ≃ₗ[F₂] cochains s t`。长度零由球面系数同调和 H 的同伦群性质
确定，其余层由实际 tower 递推，不再假定各页坐标。单位悬移相容性下，还
证明实际分辨率 `d₁` 在这些词坐标中等于已构造的约化合作用步骤。
`Checks/ClassicalAdams/MilnorBasis.lean` 与 `MilnorCoordinates.lean` 分别
审计低层输入／代数构造和实际 tower 比较，只允许 Lean 基础公理，拒绝旧
页面级 Milnor 输入、固定基础、Lin 与适配层；前者还禁止导入 Adams 页面。
这只是**从低层基推导全部坐标**，不是证明真实合作代数拥有该基，也没有
证明该基下的余乘法公式。因此固定见证、余乘法／合作用相容性及最终存活
仍待完成，未替换 `standardMilnorCooperations`。

`MilnorBasis/Full/` 现已从**同一个约化基参数**补出完整合作代数的分次线性坐标
`cooperationMilnorEquiv : π_n(H ⊗ H) ≃ₗ[F₂] (MilnorMonomial n →₀ F₂)`。
完整单项式允许常数项，保留整数次数。正权重证明零次约化基为空；实际单位
分裂余单位，所以零次余单位为同构，其坐标恰为指定的 `π₀H = F₂` 系数。
非零次余单位为零，直接沿用原约化基。已证明真实单位映到常数单项式、原约化
基向量映到对应非恒定单项式。没有新增完整基存在假设，也不需要 Künneth。
扩充的 `Checks/ClassicalAdams/MilnorBasis.lean` 审计无项目公理或 `sorryAx`，
并额外拒绝 Künneth 导入。**这只是保持单位与余单位的分次线性坐标**；
乘法／余乘法公式、该约化基在固定基础上的实现及最终存活仍未完成。

`MilnorBasis/Coproduct/` 进一步将剩余余乘法要求写成实际可比较的多项式等式：
`cooperationMilnorPolynomial` 将已有完整坐标写为单槽多项式，
`cooperationTensorMilnorPolynomial` 将两因子写入相邻两槽。
`Mod2MilnorCoproductCompatible` 要求实际单位插入加 Künneth 得到的余乘法，
在每个约化基单项式上符合已有 `splitSlot` 公式；没有给固定基础新增见证或公理。
已证明单位情形由 Künneth 单位相容性推出，再以线性延拓证明这个基向量条件
等价于全部实际合作代数元素上的公式。这里的基是加法基，不是只检查代数生成元。
`Checks/ClassicalAdams/MilnorCoproduct.lean` 独立审计这一条件归约没有项目公理、
`sorryAx`、Adams 页微分、Lin 或 Mathlib 谱序列依赖。

`MilnorBasis/Coproduct/Faithful/` 已证明单槽与双槽多项式坐标均为单射。
双槽证明使用由已有完整基导出的张量直和基：两槽指数恢复两个单项式，
第一因子的权重恢复直和次数，因此不同 summand 也不会混淆。
`cooperationTensorDiagonal_eq_iff` 在原有单位与 Milnor 相容条件下，
把实际余乘法取值等式等价转成多项式等式，而不是仅得到必要条件。
`Primitive/` 已证明左右实际单位张量分别对应多项式左右插入，并从原基
构造出多项式 `ξ₁^64` 的唯一实际合作代数代表元。在上述低层相容条件下，
其实际余乘法是 `1 ⊗ a + a ⊗ 1`。这不需要额外的代表元存在假设，
也没有声称该合作代数元素已经是永久 Adams 类。
独立审计已扩展覆盖这些证明。固定余乘法公式本身、到齐次多项式子空间的
满射／同构证明、全词微分比较及最终存活仍待完成。

`TowerHomology/Coaction/Tensor/Boundary/` 已将实际边界的合作用公式扩展到
任意张量：`ρ(q(w)) = (id ⊗ q)(Δ ⊗ id)(w)`，并证明 `q(1 ⊗ x) = D₁(x)`。
`FirstDifferential/Primitive/` 据此证明：若实际合作代数元素 `a` primitive，
而 `x` 的实际第一微分为零，则下一层 `q(a ⊗ x)` 的实际第一微分也为零。
球面系数无需额外的 cycle 假设；经原有第一商页同构，得到实际
`d₁ : E₁^(1,n) → E₁^(2,n)` 的零微分结论。通用证明不使用 Milnor 坐标。
`Primitive/H6/` 将 `ξ₁^64` 的已证 primitive 公式接入这条链，构造相应的
`E₁^(1,64)` cycle；其合作代数代表元的存在唯一性也已证明。
`H6FirstCycle` 审计明确排除固定 Milnor 页比较公理、Lin、Mathlib 谱序列
和项目公理。`Primitive/H6/Nonvanishing/` 已进一步证明：选择非零球面系数后，
所得实际第一页循环非零。证明使用实际边界的正规化公式和域上非零纯张量，
无需额外的非零性输入。`Sphere/PageTwo/` 证明过滤度一的任意非零第一循环
都有非零的第二页类：否则它来自过滤度零的 `d₁`，而该微分已证明为零。
`Primitive/H6/PageTwo/` 保留具体多项式及第一循环来源，给出实际
`E₂^(1,64)` 的非零代表元。所有低层相容条件仍是显式前提；尚未证明
与固定标准 `h₆` 相同、乘法比较，或其平方在更高页存活。

`TowerSSData/FirstCycles/` 现可直接把实际第一循环送入既有内部 `E₂`。
所用 `Z₂` 提升的存在性、选择无关性及“内部类为零 iff 实际代表元属于 `B₂`”
均已证明，不是新的比较假设。`H6/Internal/` 已据此给出有明确多项式来源的
非零内部 `E₂^(1,64)` 类，不需要 Mathlib 谱序列或固定 Milnor 页比较。

`H6/Double/` 进一步构造两次实际张量边界：先得到 `H₆₃(T₁)` 的元素，
再得到 `H₁₂₆(T₂)` 的元素。它在 `E₁^(2,128)` 非零且 `d₁ = 0`，
因此定义出 `sphereH6DoubleInternalE2`，一个既有内部 `E₂^(2,128)` 的类。
这个类在规范化球面单位系数下的 **E₂ 非零性现已证明**，见下述
`Double/Internal/Nonvanishing/`。证明通过排除过滤度一的入射 `d₁`，
没有沿用过滤度零的零微分论证。实际 `Z₂` 来源及其精确 `B₂` 零判据仍保留。
在选定基础上补充这些显式低层输入后，它与 Lin 计算平方的相等性已由下述
`ComputationalTower/` 证明；固定输入的实现和高页存活仍未完成，最终 `sorry` 未改动。

`MilnorCoordinates/H6/` 已进一步完成**具体代表元**的坐标核对。球面系数按
已有 unitor 和 `π₀` 坐标规范化为 1，且已证明非零。约化张量经实际边界再取
下一层坐标后原样返回；因此一次和两次张量边界在已构造的第一页坐标中，
分别严格等于现有 `h6Cochain` 和 `h6SquareCochain`，不只是次数一致。
`sphereH6DoubleInternalE2_polynomial_representative` 保留实际 `Z₂` 代表元，
证明其第一页坐标正是这个指定平方 cochain。坐标计算本身无需余乘法相容性；
内部 `E₂` 类的构造仍用显式的循环相容条件。固定 Milnor 页坐标与这些派生
坐标的比较、一般微分比较仍未完成；Lin 类比较已通过该次唯一性单独完成。
该新类在规范化系数下
的 `E₂` 非零性已由下述纯 cobar 非边界计算推出。

`FirstDifferential/CobarRecurrence/` 将实际第一微分公式扩展为任意张量的
递推公式：分裂第一合作代数因子的单位修正余乘法项，减去剩余因子的
第一微分项；不再要求第一因子 primitive。球面系数的第二项已证明为零。
`Coproduct/Cobar/` 则在显式单位／Milnor 余乘法条件下，证明实际
`1 ⊗ a + a ⊗ 1 - Δa` 的多项式坐标正是既有单槽 cobar 微分。
`CobarRecurrence/Image/` 用实际张量边界的满射性得到精确像判据，覆盖
所有 `d₁ : E₁^(1,128) → E₁^(2,128)` 的源元素。这个像判据本身不排除
该像；下述多项式比较与非边界计算已为规范化双张量代表元完成排除。

`TowerSSData/FirstCycles/Image/` 已把这个像问题接到内部商页：任意实际
下一页循环属于下一页边界，当且仅当其当前页类被微分命中；内部第一循环
所定义的 `E₂` 类为零，也当且仅当其 `E₁` 代表元被入射 `d₁` 命中。
`Double/Internal/Image/` 因而给出指定内部双张量类的精确零判据：
`∃ w, L_q(C(w)) = a ⊗ q_S(a ⊗ x)`（包含相应直和插入）。右端已经用
次数 64 的增广为零化简，不再含下一层坐标同构。这里并未断言方程无解；
没有新增公理，也没有把 Lin 非零证书当作该 tower 类非零的证明。

`MilnorCoordinates/SphereTensor/` 进一步用实际球面系数的零次集中性构造
`(A ⊗ H_*S)_n ≃ A_n`，并证明每个候选张量唯一为 `b ⊗ 1`。单位系数
正是此前固定的 `sphereMilnorUnitCoefficient`，无须 Künneth、Milnor 基或
页面比较假设。`Double/Internal/Image/Cooperation/` 因而把零判据的未知量
从任意张量约化为 `b : A_128`，左端成为 `L_q assoc(c(b) ⊗ 1)`，其中
`c(b) = 1 ⊗ b + b ⊗ 1 - Δb`。`c(b)` 的多项式公式已知，但后续实际
张量边界映射的比较及指定平方的坐标特化现由下述约化边界同构补上；
规范化系数下的方程无解证明也已完成，见下述非边界检测。

`MilnorCoordinates/Boundary/` 已计算任意 tower 层上**约化张量**的实际
边界在词坐标和第一页多项式 cochains 中的值。`Boundary/First/` 进一步
证明：任意约化合作代数元素经 `q_S(a ⊗ 1)` 后，其第一层词系数就是
`B.basis` 系数重标为单槽词；不再只计算 `h₆`，旧 `h₆` 证明已复用该
一般结论。`Boundary/First/Polynomial/` 将其值严格核对为既有的
`cooperationMilnorPolynomial`。词到多项式的线性实现已证明单射，且在自然
次数下等于既有 `cochainsWordEquiv` 的逆再取底层多项式，没有另造 cochain
模型。这些边界坐标结论不需要余乘法相容谓词。两因子约化已由以下独立
证明补上；下述构造进一步给出从第一层到第二层的入射微分的两槽多项式公式。
全层词微分比较及高页存活仍未完成；指定平方的非边界证明见下文。

`Cooperations/Reduced/Square/` 复用既有约化张量构造，定义两个因子都在
`ker ε` 中的张量及其实际包含映射，并证明该映射单射且保持代表元。
`MilnorBasis/Coproduct/Reduced/` 证明实际张量基系数等于对应多项式系数，
两槽正规化强制所有非零基项的两个因子都非恒定；由此得到唯一的实际
双约化张量提升。单个约化合作代数元素的多项式正规化也已从基证明。
`Cobar/Reduced/` 在显式单位／Milnor 余乘法相容条件下，将多项式微分
保持正规化的定理转成实际 `c(a)` 的双约化提升；任意非零次输入（含 128 次）
都适用，无须新增约化性公理。`Cobar/Reduced/Map/` 将此提升构造成线性映射
`cooperationReducedCobarDiagonal`，包含后严格恢复原来的 `c(a)`，多项式值
仍是既有 `d P(a)`。`FirstDifferential/CobarRecurrence/Reduced/` 已把此映射
接入实际球面 tower 的第一微分公式；其两槽比较现如下完成，后续另用
系数检测证明平方非边界。永久存活仍未证明。

`MilnorCoordinates/SphereTensor/Reduced/` 构造实际边界同构
`e₁ : ker ε_n ≃ H_(n-1)(T₁S)`，并证明其值为 `q_S(a ⊗ 1)`。
`Reduced/Square/` 将它张量到右因子，逐个代表元核对为
`F(z) = L_q assoc(z ⊗ 1)`，再通过下一层边界得到
`e₂ : (ker ε ⊗ ker ε)_n ≃ H_(n-2)(T₂S)`。包含进普通张量后依旧单射。
这些同构无须 Milnor 基、余乘法相容性或页面比较输入。
`FirstDifferential/CobarRecurrence/Reduced/Comparison/` 在已有的低层相容
条件下证明 `d₁ e₁ = e₂ c̄`，进而得到
`Q ι e₂⁻¹ d₁ e₁(a) = d P(a)`，以及真正的双向像判据：
`y ∈ im d₁ ↔ ∃ a : ker ε_n, d P(a) = Q ι e₂⁻¹(y)`。
这里的多项式是既有的 Milnor 模型；不是新设微分或假定比较。
指定双张量代表元的坐标已在下述模块特化为平方多项式，并已证明对应方程
无解。固定低层见证和高页存活仍未完成；下述条件比较已将此类接到固定 Lin 类。

`SphereTensor/Reduced/Square/H6/` 证明 `e₂(a ⊗ a)` 正是使用规范化球面
单位系数的旧双边界代表元，且 `Q ι e₂⁻¹` 的值为原有 `h6SquareCochain.val`。
该坐标计算不需要新的微分比较。独立的低层模块
`Cooperations/MilnorBasis/Cochains/` 构造 `ker ε_n ≃ cochains 1 n`，证明
其底层多项式是旧 `P`；因此候选源覆盖全部正规化单槽 cochains。
`Double/Internal/Image/Polynomial/` 将二者接回内部页，得到精确等价：
`sphereH6DoubleInternalE2 ... unit = 0 ↔ ∃ b : cochains 1 128, differential 1 128 b = h6SquareCochain`。
其非零版本等价于该纯代数方程无解。等价右端不再出现真实合作代数、
tower 或类别对象，但定理本身仍显式依赖低层结构与相容条件。
这个等价判据本身不证明非边界；下述独立代数证明将其补齐，未移用 Lin 证书。

`Steenrod/MilnorCobar/Polynomial/Detection/` 现已完成纯代数非边界证明。
只保留各槽 `ξ₁` 的投影后，检测取七个系数之和：
`Σ (i = 0,...,6), coeff (X^(128-2^i) Y^(2^i))`。
它在 `h6SquareCochain` 上取值 `1`，且忽略两端单位插入。投影后的余乘法
将 `ξ₁` 送到 `X+Y`、`ξ₂` 送到 `X²Y`、更高生成元送到零。
次数 128 的剩余单项式因此满足 `a+3b=128`，`0≤b≤42`。
对应七项二项式系数之和已用 Lucas 定理和 **Lean 内核检查的 43 个二进制
案例**证明为零，没有 `native_decide` 公理或外部证书。通过实际正规化
单项式基推广到所有 cochains，得到
`h6SquareCochain_not_boundary : ∀ b : cochains 1 128, differential 1 128 b ≠ h6SquareCochain`。
`Checks/Steenrod/MilnorSquareNonboundary.lean` 同时审计基础公理以及纯代数
导入边界，禁止引入 Adams、稳定同伦、Lin 或其他 External 模块。

`Double/Internal/Nonvanishing/` 将该纯代数定理接回先前的精确等价，证明
`sphereH6DoubleInternalE2 ... unit ≠ 0`，并给出实际内部 `E₂^(2,128)` 的非零
元素存在性。这个 tower 结论仍以显式的低层结构与相容性为前提；没有提供
固定见证，没有与固定 Lin 类认同，也没有消去永久存活主定理的 `sorry`。

`SphereClasses/Proofs.lean` 将同一个纯 cobar 非边界定理接到既有标准类，
而不绕经 Lin：对显式的 `M : MilnorCooperations H`，已证明正 filtration
的 `classOfMilnorCocycle ... x = 0 ↔ ∃ b, differential ... b = x`，
并推出 `Sphere.h6Square H M ≠ 0`。证明使用实际第一页面的 homology
商与 page-passage 同构，不另设标准类或微分。固定特化
`StandardSphere/Proofs.lean` 的 `sphereH6Square_ne_zero` 只依赖既有
`standardFoundation`、`standardMilnorCooperations` 两条项目公理；
`Checks/ClassicalAdams/StandardSquareNonvanishing.lean` 精确审计这两个输入，
禁止 Lin、External、KIPBase 与 `KIP126.Mathlib` 适配层导入。
这不提供固定 Milnor 结构的低层实现。非零性本身不足以比较两个元素；
下面新增的次数唯一性论证补齐了指定类比较。高页存活缺口不变。

`AdamsE2/LinSquareDimension/` 直接核验实际生成元表：可能出现在
`(2,128)` 单项式中的生成元只有编号 `0,1,2,3,7,18,69,324`。
由两个总次数等式证明唯一单项式为 `Finsupp.single h6Generator 2`，
因此实际商代数的 `homogeneousPart 2 128` 是该平方的 F₂ 线性张成，
`E2At_square_eq_zero_or` 给出每个元素为零或 `dataH6Sq`。没有使用
加法基表认证、Gröbner 完备性或新的数据公理；有限检查使用 Lean 内核。
`ComputationalDimension/` 经既有 Lin 比较将此结论传到实际内部 E₂。

`Mathlib/ClassicalAdams/FinalComparison/Proofs.lean` 现已证明
`h6Square_comparison`：将标准非零类沿实际页同构拉回内部页，利用
上述唯一性，它只能是 `computedH6Square`。原 `FinalComparison/Axiom.lean`
已移除，标准最终 Solution 改用新定理。比较定理无 `sorryAx`，项目依赖
恰为基础选择、Milnor 坐标、Lin 呈现三条现有公理；没有增加前提或改动
两个最终 statement。`SquareDimension` 和 `SquareComparison` 检查分别
审计内部导入边界与比较定理的精确依赖。

`Kunneth/Suspension/` 现将 Künneth 与实际降悬移的相容性明确为低层谓词
`Mod2KunnethSuspensionCompatible`：没有三角形、Adams 边界或页面字段，
没有固定见证或新公理。从这个显式前提和 Künneth 自然性，已证明对任意
三角形的 `κ ∂ = (id ⊗ ∂) κ`。`Kunneth/Coaction/` 定义 `ρ = κ U`，
证明其自然性、余单位律、单射性，并在单位悬移相容性下证明
`ρ ∂ = (id ⊗ ∂) ρ`。`TowerHomology/Coaction/` 特化到实际 Adams 边界，
得到每个下一层类 `y` 的公式 `ρ(y) = (id ⊗ b) ρ(z)`，其中 `z` 是已有
边界核同构选出的唯一正规化提升，不是新增的 tower 递推假设。
`Checks/ClassicalAdams/KunnethConnecting.lean` 和 `TowerCoaction.lean`
均通过基础公理与导入边界审计。上述悬移相容性在固定基础上的实现，以及
自由系数对象合作用的张量余乘法公式仍待完成；这不是完整 Milnor 微分比较。

该公式现在进一步拆成明确的低层条件与推导结果。
`Kunneth/Diagonal/` 构造实际 `Δ = ρ_H`，以及保留整数分次的
`Δ ⊗ id`（含张量重括号）；`Mod2KunnethDiagonalCompatible` 只要求
`(id ⊗ κ_X) ρ_(H⊗X) = (Δ ⊗ id) κ_X`。它不含 Adams 页、Milnor 基
或微分字段，尚无固定见证。由此已推导每个实际 `ρ_X` 和 `Δ` 的余结合律。
`TowerHomology/Coaction/Tensor/` 以实际边界定义 `q_X = b_X κ_X⁻¹`，
证明 `ι e_X q_X(w) = w - ρ_X(aug(w))`，并在悬移与余乘法相容性下证明
`ρ_(fiber η_X)(y) = (id ⊗ q_X)(Δ ⊗ id) ι e_X(y)`，其中 `e_X` 是已有
下一层约化张量坐标，`ι` 是实际包含映射。这从下一层递推中消去了未展开的
自由对象合作用，没有假设 tower 递推本身。`KunnethDiagonal.lean` 与扩充的
`TowerCoaction.lean` 审计这些条件构造无项目公理或 `sorryAx`。
固定 Künneth 相容性、单位坐标比较及 Milnor 基下的余乘法公式仍未提供；
`standardMilnorCooperations` 和最终存活缺口未消去。

`Cooperations/Unit/` 从指定的 `π₀H` 单位类及 `η_H` 构造真实
`1_A ∈ π₀(H ⊗ H)`，定义有限支撑的 `1_A ⊗ x`，证明余单位值、
张量增广收缩、单射性和自然性，不使用 Milnor 坐标。
`Kunneth/Unit/` 将外侧单位对应 `1_A ⊗ x` 明确为低层谓词
`Mod2KunnethUnitCompatible`，没有固定见证或新公理。在这个条件下，
已证明 `Δ(1_A) = 1_A ⊗ 1_A`，以及独立约化步骤的代表元为
`1_A ⊗ x - ρ_X(x)`。`FirstDifferential/Unit/` 进一步给出实际商页判据
`d₁(x) = 0 ↔ ρ_(T_s)(y) = 1_A ⊗ y`，其中 `y` 是已有第一页同调坐标。
这不需要 Künneth 余乘法／悬移相容性，也不需要 Milnor 或 Lin；实际
`d₁` 的比较仍显式使用张量正合性和单位自然变换的悬移相容性。
`KunnethUnit.lean` 与扩充的 `FirstDifferential.lean` 已通过基础公理与
导入边界审计。该判据只刻画第一页循环，**不能推出后续微分为零或永久存活**。
固定单位相容性的实现和完整 Milnor 词微分比较仍待完成。

球面递推的初始条件现已推导，而非另加假设。`Cohomology/Sphere/`
证明 `π_n(S⁰) → H_n(S⁰)` 的实际单位映射满射：非零次数由 H 的消失性，
零次由 `π₀H = F₂` 与恒等映射的单位像。故球面系数同调上的两种单位插入
相同，不需要环或 Künneth。`Kunneth/Unit/Sphere/` 据此证明约化步骤为零，
并在已有单位相容条件下得到 `ρ_(S⁰)(x) = 1_A ⊗ x`，给出递推的实际起点。

`FirstDifferential/Sphere/` 再由实际长正合列证明初始分辨率边界和 `d₁` 为零。
`SphereInitial/` 将其加强到所有页：球面过滤度零的 `Z_r = ⊤`、`B_r = ⊥`，
所有出射微分为零；其内部 SSData 在有限与无限阶段同样满足 `Z = ⊤`、
`B = ⊥`。`SphereInitial/Permanence/` 证明该列内部
`NonzeroSurvival x ↔ x ≠ 0`。这部分无需环、张量正合性、Künneth 或 Milnor
参数。`Checks/ClassicalAdams/SphereInitial.lean` 审计无项目公理或 `sorryAx`，
且拒绝 Künneth、固定基础、Milnor、Lin 和谱序列适配层导入；条件张量起点由
扩充的 `KunnethUnit.lean` 审计。这里只解决过滤度零，没有证明 `h₆²` 存活。

`Cohomology/Multiplication/Action/` 从给定的 `Mod2RingStructure` 构造
`H ⊗ adamsUnit` 的显式收缩。若 `tensorLeft H` 保零，则所有正长度 tower
转移被 `H ⊗ -` 杀死，任何经正层实际提升的映射诱导零模二同调映射。
`Checks/ClassicalAdams/TowerLayer.lean` 审计这些通用构造仅依赖 Lean 基础公理，
并检查第一页同构能特化到已有球面基础。固定 `standardFoundation` 尚未提供
这里所需的乘法和 tensor 保零实例；没有为此添加公理，也没有把这些定理
当作 Milnor 坐标、数值 Adams filtration 接口或经典谱范畴识别已经完成。

`Mathlib/ClassicalAdams/TowerComparison/` 进一步证明了同一 tower 的逐页同构、
微分相容和后继页相容；`sphereAdams_towerComparison` 已由这些证明构造，
原比较公理已删除。`Checks/ClassicalAdams/TowerComparison.lean` 独立审计
通用比较只依赖 Lean 基础公理，固定版本仅额外依赖 `standardFoundation`，
不依赖 Lin 呈现、Milnor 坐标或存活比较。内部计算依然不导入该适配层。

`Def/ClassicalAdams/TowerSSData/Permanence/Proofs.lean` 还证明了共同代表元
判据：内部 `NonzeroSurvival` 等价于实际 tower 商页上相容的非零类族。
`Mathlib/ClassicalAdams/SurvivalComparison/Proofs.lean` 由此证明
`survival_comparison`，原同名公理已移除。这一转换不需要收敛到稳定同伦群
或额外的有限性假设，不依赖 Lin 数据和指定 h₆² 类。

`Def/ClassicalAdams/ComputationalVanishing/Proofs.lean` 进一步提供已证明的
`sphereAdamsData_h6_incoming_d_eq_zero`：所有进入 `(2,128)` 的微分为零。
源为 `(2-r,129-r)`；`r>2` 时由 tower 的负过滤层为零，`r=2` 时由
第一层同构 `Q₀ ≅ H ⊗ S ≅ H` 及 Eilenberg--Mac Lane 的非零次数同伦消失。
此处已经去掉原先使用的 Milnor 坐标输入。由此还证明实际边界满足
`B_(n+2) = B_2`，并通过 `sphereAdamsData_h6_nonzeroSurvival_iff` 把目标
化为初始类非零，以及存在同一个实际 `Z₂` 代表元属于所有 `Z_(n+2)`。
此判据不预设后续存活；所有阶的循环/提升条件仍待证明。
`Checks/ClassicalAdams/Vanishing.lean` 审计通用版本无项目公理或 `sorryAx`，
固定版本仅依赖已有 `standardFoundation`，不使用 Lin 表、Milnor 坐标或
类比较公理，并拒绝导入 Milnor 接口、Mathlib 谱序列和 KIPBase。

`Def/AdamsE2/LinSquareDetection/` 已证明一个不依赖完整基表的非零性检测器：
把生成元 69 送到 `𝔽₂[u]/(u³)` 的 `u`，其他生成元送到零；检查每条关系的
每个单项式均被杀死。检测器可靠性、截断理想被杀死以及 `u² ≠ 0` 已证明，
故有限检查等式 `allRelationsCheck = true` 足以推出 `dataH6Sq ≠ 0`。
`Certificate/Archive/` 现已分八批核验全部 227 个原始数据块，结合前三条
关系证明 `allRelationsCheck_eq_true`，进而证明 `dataH6Sq_ne_zero`。
这个有限检查前提已消去，不再只是全表运行得到 `true`。
`ComputationalNonvanishing/Proofs.lean` 的 `computedH6Square_ne_zero` 将结果
转移到内部计算类，仅使用已有 `standardFoundation` 与 `linE2Presentation`。
没有借用 `basisTable_correct`、`coordinateCheck_sound` 或原生求值公理。

`LinSquareDetection/Parsing/Proofs.lean` 与 `Certificate/` 已证明原字符串
检查器和字符列表检查器完全等价：分隔符处理、数字解析（包括下划线规则）
及整个关系/数据块检查均保持不变。还证明了按换行拼接证书和从各块证书
组装全表证书的规则。`Tactic/LinSquareCertificate.lean` 用 `decide +kernel`
核验小型字符列表叶子，以已证拼接规则组合，再通过 `String.toList_ofList`
回到原始字符串，避免直接展开 UTF-8 编解码的高成本。生成器仅提出证明项，
最终类型和全部辅助定理由内核核验；原始 CSV 编码文件完全未改动。
`Checks/AdamsE2/SquareDetection.lean` 审计全表证书只依赖 Lean 基础公理，
拒绝 `sorryAx`、求值公理及其他项目公理，并检查固定版本的依赖清单。

`ComputationalReduction/Proofs.lean` 的 `computedH6Square_nonzeroSurvival_iff`
现将指定计算类的最终目标精确归约为：存在一个实际 tower 的 `Z₂` 代表元，
其初始页像为 `computedH6Square`，且属于所有 `Z_(n+2)`。此归约结合已经
证明的初始非零性与无入射微分性质，不假定也没有证明所有阶提升条件。

`ComputationalTower/Proofs.lean` 进一步把实际双张量类与固定计算类接实：
在选定基础上，显式给出环结构、Künneth、约化 Milnor 基及悬移、对角、
单位、余乘法相容性后，`sphereH6DoubleInternalE2_eq_computedH6Square`
利用实际类非零和该次唯一性证明二者相等。`computedH6Square_double_representative`
同时保留实际 `Z₂` 代表元、其双张量第一页像与派生坐标
`[ξ₁^64 | ξ₁^64]`；不再只有一个抽象同次数的元素。

`TowerSSData/Permanence/Representative/` 证明同一商类的代表元具有完全相同的
各阶循环成员资格；结合无入射微分，任意指定 `Z₂` 代表元都可用于存活测试。
`computedH6Square_nonzeroSurvival_iff_double_connecting_lifts` 因而把主目标
精确归约为：对任意这样的实际双张量代表元 `u`，每个 `n : ℕ` 都存在
`yₙ ∈ π₁₂₅(T_(n+4)S)`，沿真实 tower 映到 `k(u) ∈ π₁₂₅(T₃S)`。
这里是逐个有限阶提升，不额外假定所选提升相容或来自逆极限。
这个等价关系无 `sorry`，但既没有提供固定低层见证，也没有证明这些提升。
`Checks/ClassicalAdams/ComputationalTower.lean` 审计其项目公理仅为
`standardFoundation`、`linE2Presentation`，并禁止固定 Milnor 页比较和
Mathlib 谱序列适配层导入。额外数学输入明确保留为参数，而非隐藏公理。

`TowerSSData/Differential/Second/Proofs.lean` 已把现有内部 `d 2 (2,128)`
与实际 tower 微分直接比较：给定 `Z₂` 代表元 `u`，其定义保证存在
`y ∈ π₁₂₅(T₄X)` 映到 `k(u) ∈ π₁₂₅(T₃X)`；任意这样的 `y` 都给出
`d₂([u]) = [j(y)] ∈ E₂^(4,129)`。该微分为零，当且仅当同一个 `k(u)`
可以提升到 `π₁₂₅(T₅X)`。数值次数转换也包含在证明内。
`ComputationalTower/SecondDifferential/Proofs.lean` 用实际双张量代表元
将这一公式和判据用于固定的 `computedH6Square`，仍显式要求上述低层见证。
同一编译审计检查通用公式仅依赖 Lean 基础公理、固定版本仅新增既有
`standardFoundation` 与 `linE2Presentation`，且均无 `sorryAx`。
这里证明了微分的刻画，不是其消失性：尚未给出 `T₅S` 提升，也没有从
Lin 乘法表推断内部微分满足 Leibniz 法则。

`ComputationalDifferential/` 现定义既有 tower `d₂` 的 Lin 坐标表达，
而非另选微分：`P.secondDifferential = P_target⁻¹ ∘ d₂ ∘ P_source`。
源和目标必须都在数据范围内，因此要求 `t + 1 ≤ 261`。
`P.SecondDifferentialLeibniz` 明确要求该坐标微分对所有范围内的齐次乘积
满足 Leibniz 法则；**这一条件尚无见证，不由 `linE2Presentation` 公理提供**。
已证明条件定理 `computedH6Square_d_two_eq_zero_of_leibniz`：给定该相容性，
真实内部 `d₂(computedH6Square)=0`。证明使用商代数交换性与 `x+x=0`，
不要求 `d₂(computedH6)=0`；没有把主目标作为前提。
结合实际双张量代表元的显式低层见证，
`computedH6Square_double_lift_five_of_leibniz` 给出 `k(u)` 的 `T₅S` 提升。
这两个条件推论无 `sorry`、无新公理，并通过禁止适配层导入的公理审计。
下一项数学义务是建立实际 tower 微分与该乘法的相容性；即使补齐它，
也只排除 `d₂`，不能直接排除所有后续出射微分。

仍未完成的是：抽象基础的具体谱范畴实现/充分识别、固定 Milnor 坐标
与 Lin 呈现公理的消去，以及论文排除 h₆² 出射微分、建立所有阶提升条件的证明。
构造内部对象不等于已证明 h₆² 永久存活；计算 Solution 的 `sorry` 仍保留。

当前标准最终结论的项目公理恰为 `standardFoundation`、
`standardMilnorCooperations`、`linE2Presentation`，
另含计算 Solution 的 `sorryAx`。`FixedFinal` 检查该列表及无参数签名。
`h6Square_comparison` 已是由非零性和该次唯一性推出的定理；它与存活谓词
转换都不能当成 h₆² 已经永久存活的证明。

### 过滤复形构造

当前代码已经实现以下依赖链：

```text
FilteredComplex
  -> cycleSubobject / boundarySubobject
  -> pageObj = Z_r / B_r
  -> pageDifferential
  -> pageComplex（含 d_r² = 0）
  -> 相邻页的 kernel / image 计算
  -> pageHomologyIso : H(E_r) ≅ E_(r+1)
  -> canonicalPageSpectralSequence
  -> PageTrajectory / IsPermanent（元素级逐页存活）
```

关键装配位于：

- `KIP126/Mathlib/SpectralSequence/PageDifferential/`：Mathlib 页微分关系和 crossing 适配；
- `KIP126/Def/SpectralSequence/Permanence/Data.lean`：逐页后继类和永久循环；
- `KIP126/Def/SpectralSequence/FilteredPage/Complex.lean`
- `KIP126/Def/SpectralSequence/FilteredPage/AssemblyProofs.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Assembly/Data.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Relations/Data.lean`
- `KIP126/Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean`

因此 canonical 谱序列的页面和微分仍可通过 KIP126 的 `Z_r/B_r` 模型计算，
同时它本身可以使用只依赖 Mathlib `SpectralSequence` 接口的通用结果。

## 尚未完成的工作

按建议的先后顺序：

1. 完成任意有限页的代表元与 crossing 关系；canonical 商页的三个 lift/微分关系定理已证明，但不能替代代表元级 crossing。
2. 建立 canonical 页面关于 filtered-complex morphism 的函子性，并产生相应的
   Mathlib 谱序列态射。
3. 明确并实现 canonical 页号/双分次与 Adams 常用约定之间的 reindex。
4. 比较两条已有构造路径：直接的 `Z_r/B_r` 页面与 spectral-object 产生的谱序列。
5. 建立有限页稳定、permanent cycle、`pageObj ... ⊤` 与 `E_∞` 的接口。
6. 在上述基础上重做收敛层，使页面比较、稳定性及 abutment coherence 都成为显式数据或定理。
7. 最后补充少量 canonical sequence 的暴露和 `simp` 引理，降低下游使用成本。

架构迁移仍在进行：`Def/SpectralSequence/Permanence/Data.lean` 仍直接使用
Mathlib 谱序列类型；要使内部推理完全回到 `SSData`，需先建立同等强度的
内部逐页/永久性陈述，再将现有 Mathlib 版本改为受检适配。

## 当前明确的证明缺口

谱序列适配层中原有的三个 `sorry` 已去除，均在
`KIP126/Mathlib/SpectralSequence/FilteredComplex/Relations/Proofs.lean`：

- `differentialRelationOfLift`
- `liftOfDifferentialRelation`
- `liftRelOfNotCrossed`

`PageView` 只携带页面对象与 canonical 商页的同构，并不要求该同构与微分
相容；三个定理现在显式要求 `P = PageView.canonical FC`。特别是
`liftRelOfNotCrossed` 在商页上的结论由目标唯一性推出，`not crossed`
前提仅为保留旧接口；这**不是**历史的关联分次代表元级 no-crossing 定理。

原 `strongConvergenceFromComparison` 占位定理
已移除：`PageAbutmentComparisonWitness` 只给逐点、逐页的比较，不能自动推出
后续页面稳定、页面间 coherence 和统一的 `E_∞` 数据。强收敛必须显式提供
`StrongConvergenceWitness`，或在将来先证明满足这些额外条件的构造定理。

原 `differentialRelationCrossedOfTwo` 占位命题不能直接证明：它把同一页上的
`d_r(x)=y₁` 与 `d_r(x)=y₂` 当作两个不同目标，但页上目标由函数性必然相等，
而历史定理比较的是**关联分次代表元**，并且额外假设 `y₁ ≠ y₂`。
目前已分离严格 filtered-lift 形式的 `RepresentativeRelation`；尚不能称其
等价于历史的商集关系。目标差属于页边界、边界首次出现页，以及精确目标
crossing 蕴含普通 crossing 的历史引理已迁入并验证。要恢复完整 crossing
定理，还须证明代表元关系的比较及其与商页微分的兼容。

## 下次继续时

优先在 `SSData` 内部证明有限页代表元关系，再由适配层对接 Mathlib；
当前 `PageView` 仅留作尚未完成的跨构造比较，不作为内部推理前提。
不要重新引入 witness 装配层，
也不要另建一套 `Z_r`、`B_r`、页面或谱序列定义。
