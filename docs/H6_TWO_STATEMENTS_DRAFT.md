# h₆² 主定理的两个版本：固定对象、无参数陈述

状态：本设计已落实到 Lean。两个无参数目标、具体 Lin 平方、标准 tower 对象和命名对应公理已经编译；计算 Solution 仍保留 `sorry`。PR #110 的原始数据、商代数、计算引擎及 tactic 已迁入；加法基、坐标和内部 Adams 页的引用接口见 [LIN_E2_INTERFACES.md](LIN_E2_INTERFACES.md)。基表认证和计算器正确性仍各有一个独立的待证定理。

本次决定：凡最终可以固定的对象都预先固定。计算版和标准版均不要求调用者传入 C、H、M、计算模型、表、比较映射或呈现包。底层通用构造可以保留参数，但最终声明不能通过外层 section variable、隐式参数或 typeclass 参数把它们重新带回来。

## 1. 在基础层固定一次

| 实现中的名称 | 固定的内容 |
|---|---|
| `standardFoundation` | 选定的稳定同伦环境及所需余纤维结构 |
| `standardFoundation.hf2` | 该环境中的指定 H𝔽₂ 对象及所需结构 |
| `standardMilnorCooperations` | 对这个 H𝔽₂ 的指定 Milnor 坐标 |
| `sphereAdams` | 在上述固定基础上，由球面 Adams tower 构造的标准谱序列 |
| `sphereH6Square` | 用指定 Milnor cocycle 定义的标准 E₂ 类 |
| `sphereAdamsData` | 同一球面 Adams tower 的 SSData 版本，供计算与内部推理使用 |
| `KIP126.LinE2.E2` | PR #110 的固定版本 Lin 数据所定义的计算代数 |
| `KIP126.LinE2.dataH6Sq` | 计算代数中指定的 h₆ 生成元的平方 |
| `linToSphereE2` | 覆盖范围内，从计算分量到 SSData 谱序列 E₂ 的选定比较同构 |
| `computedH6Square` | `linToSphereE2` 将 `dataH6Sq` 送入 SSData 谱序列得到的元素 |

标准对象的定义思路保持现有构造：

```lean
-- 接口示意：底层类型、实例在固定基础模块中提供。
noncomputable def sphereAdams :=
  mod2SphereAdams standardFoundation.hf2

noncomputable def sphereH6Square :=
  Sphere.h6Square standardFoundation.hf2 standardMilnorCooperations
```

`sphereAdams` 暂时保留现有 tower 的 Mathlib 表述，用作标准结论的目标；内部计算仍使用 `sphereAdamsData`，不借用 Mathlib 谱序列支持下游推理。两者描述同一个指定的 tower，差别是形式化接口。

“固定”不等于“已构造”。目前固定基础、Milnor 坐标仍通过命名公理提供；但 `sphereAdamsModel` 已由 `adamsTowerInternalSpectralSequence standardFoundation.hf2.unit SphereSpectrum` 构造，不再是独立公理。内部循环、边界、微分及其核像条件来自同一 tower，有限页同构保持实际代表元。逐页同构、微分和后继页相容性现已证明，并构造出 `sphereAdams_towerComparison`，不再公理化。存活谓词的比较 `survival_comparison` 也已证明。Lin 指定平方与 Milnor 指定类的比较现已由非零性和该次唯一性证明；选定的抽象基础仍不等于已经实现了具体谱范畴。

底层余乘法比较现有明确接口 `Mod2MilnorCoproductCompatible`：把实际单位插入
所得余乘法变成两槽多项式后，在每个约化加法基向量上等于已有 `splitSlot`。
单位的公式由 Künneth 单位相容性推出；从基向量推广到所有实际合作代数元素的
线性延拓已经证明。该接口没有固定见证，不把 Adams 微分或最终存活当作输入，
也还没有代替完整的 Milnor cobar 微分比较。

现已证明单槽及双槽多项式坐标都不丢失信息（单射），所以在上述相容条件下，
多项式中的余乘法计算可以反推实际张量等式。具体地，`ξ₁^64` 有唯一的实际
合作代数代表元，其实际余乘法为 `1 ⊗ a + a ⊗ 1`；代表元存在性来自已有基，
不是新增公理。这一步仍未提供固定基础上的比较见证，也未证明最终存活。

这个 primitive 计算现已接到实际 tower：连接映射 `q` 满足
`ρ q = (id ⊗ q)(Δ ⊗ id)` 和 `q(1 ⊗ x) = D₁ x`，因此 primitive 因子与
第一循环系数构造出的下一层元素仍是第一循环。特化 `ξ₁^64` 和球面系数，
已证明所得实际 `E₁^(1,64)` 类的 `d₁` 为零，不借用固定 Milnor 页比较公理。
现已证明：非零球面系数给出非零的上述第一循环；由于过滤度零的入射
`d₁` 为零，同一代表元给出非零的实际 `E₂^(1,64)` 类。这个构造保留了
`ξ₁^64` 的来源，不调用固定 Milnor 页比较或 Lin 表。低层结构与相容性
仍是显式前提；与固定标准 `h₆` 的比较、乘法比较和更高页存活仍未证明。

这个非零 `E₂^(1,64)` 类现已进入既有内部 `SSData` 页面，并保留同一实际
tower 代表元。通用接口 `adamsTowerE2OfFirstCycle` 已证明选择无关性和精确
边界判据。两次使用 `ξ₁^64` 合作代数元素的实际张量边界，还给出非零
`E₁^(2,128)` 循环，并定义了内部类 `sphereH6DoubleInternalE2`。
后一类在规范化球面单位系数下的 `E₂` 非零性现已通过排除入射 `d₁` 证明，
见下述纯代数检测。现已在选定基础和显式低层输入下，将它与固定计算平方
证明为同一类，但尚未得到永久存活。它不替换现有两个最终声明。

现在已核对到指定 cochain：把球面系数规范化为坐标 1 后，实际单／双张量
边界在从 tower 推导出的 `sphereFirstPageMilnorEquiv` 下，分别严格等于
`h6Cochain`、`h6SquareCochain`。内部双张量类的实际 `Z₂` 代表元也已保留
这个多项式坐标等式。此处的派生坐标尚未证明等于公理提供的固定 Milnor
坐标，故这一坐标计算本身不消去 Lin 呈现。指定类比较
`h6Square_comparison` 现已由另一条完整论证消去：标准类非零，加上
Lin 生成元次数表推出该次只有一个非零元素；无需先证明两套坐标相同。

进入目标位置的第一微分也有了精确张量像判据：实际边界的满射性确保覆盖
所有源元素，任意张量的第一微分按“第一因子的修正余乘法＋剩余因子的
微分”递推（代码保留显式减号，特征二下等于加号）。球面剩余项为零，
单因子修正余乘法的多项式公式已证明等于单槽 cobar 微分。其入射像条件
现已通过下述两因子坐标接到纯代数非边界计算，从而证明规范化双张量类在 `E₂` 非零。

这个方程现已直接关联到内部类：`sphereH6DoubleInternalE2_eq_zero_iff_cobar`
证明内部双张量类为零，当且仅当 `∃ w, L_q(C(w)) = a ⊗ q_S(a ⊗ x)`。
这由一般内部第一循环的入射像判据和实际 tower 计算推出，不引入新的
微分或比较公理。该方程对规范化球面系数无解现已证明；固定 Lin 类的条件
比较已通过该次唯一性完成，固定低层见证与高页存活仍须完成。

候选源现已进一步约化：从球面系数的 Eilenberg--Mac Lane 性质推出
`(A ⊗ H_*S)_n ≃ A_n`，每个张量唯一为 `b ⊗ 1`。新的等价判据
`sphereH6DoubleInternalE2_eq_zero_iff_cooperation_cobar` 只量化次数 128
的实际合作代数元素 `b`，并把第一步微分明确写成其单位修正余乘法。
剩余张量边界映射现已有下述可逆两因子坐标；规范化系数的方程无解由下述检测证明。

实际连接映射现已在约化输入上接实：所有 tower 层的约化张量边界都有
明确的词／第一页多项式坐标；特别是任意约化合作代数元素 `a`，其
`q_S(a ⊗ 1)` 的多项式坐标已证明等于现有的 `P(a)`，旧 `h₆` 坐标计算
已改为该一般结论的特例。词多项式实现与原有 cochains 的坐标逆一致。
两因子约化现已完成：多项式正规化通过实际张量基系数转成唯一的双约化
张量提升，并构造成 `cooperationReducedCobarDiagonal`。它包含后就是原来的
`c(b)`，没有新增约化性公理；任意非零次合作代数元素都适用。该映射已接入
实际 tower 第一微分的代表元公式。

分次张量组合现在进一步接实：从实际边界构造
`e₁ : ker ε_n ≃ H_(n-1)(T₁S)` 和
`e₂ : (ker ε ⊗ ker ε)_n ≃ H_(n-2)(T₂S)`，证明其张量表达式恰为原来的
`L_q assoc(- ⊗ 1)`。在显式低层相容条件下已证明 `d₁ e₁ = e₂ c̄`，因此
第一层到第二层的实际入射微分满足 `Q ι e₂⁻¹ d₁ e₁(a) = d P(a)`。
其像条件与多项式方程等价，反向由张量坐标单射保证。
指定平方现已特化到此坐标：使用规范化球面单位系数，实际双边界代表元
在 `Q ι e₂⁻¹` 下恰为 `h6SquareCochain.val`。同时 `ker ε_n` 的坐标已证明
覆盖全部 `cochains 1 n`。因此新定理
`sphereH6DoubleInternalE2_ne_zero_iff_cobar_nonboundary` 把该内部类非零
严格等价为纯代数命题
`∀ b : cochains 1 128, differential 1 128 b ≠ h6SquareCochain`。
这个非边界命题现已证明：纯代数的七系数检测在平方上为 `1`，在每个边界上
为 `0`。边界部分先证明只需检查 `ξ₁^a ξ₂^b`、`a+3b=128`，再以 Lucas
定理和内核检查的 43 个二进制案例验证系数相消，最后按正规化单项式基推广。
不依赖 Lin 数据或 Adams 公理。`sphereH6DoubleInternalE2_ne_zero` 已据此
证明实际内部双张量类在 `E₂` 非零，仍显式保留低层结构与相容条件。
全层词微分比较、固定低层见证和永久存活未完成。
没有新增项目公理，最终主定理的 `sorry` 未改动。

`ComputationalTower/` 已把这一实际类接到 `computedH6Square`，无需固定
Milnor 页比较公理：给出明确的低层输入后，真实双张量类非零，而该次只
有一个非零元素。其实际 `Z₂` 代表元及指定多项式坐标都保留下来。
后续可以对任意这样的代表元 `u` 证明具体的 tower 性质：
每个 `n ≥ 0` 都有 `yₙ ∈ π₁₂₅(T_(n+4)S)`，映到 `k(u) ∈ π₁₂₅(T₃S)`。
这与计算主定理等价的证明已完成；提升本身和固定低层输入的实现仍开放。

## 2. 固定计算模型与范围

`KIP126.LinE2.E2` 采用 PR #110 的固定数据版本 v126.3.cw49，保留原文件摘要。它是截断到内部次数 `t ≤ 261` 的商代数。

`dataH6Sq` 沿用该 PR 的具体定义：CSV 指定的 h₆ 生成元的平方，次数为 (2,128)。它不作为任意元素输入。

`linToSphereE2` 的接口提供：

- 当 `t ≤ 261` 时，计算分量与 `sphereAdamsData.Page 2 (s,t)` 的整数线性同构，沿用现有加法群；F₂ 结构可以经同构传递，不另作假设；
- 当结果次数仍在范围内时，乘法的兼容性。

CSV 的基单项式数据已完整保留。`basisTable_correct` 断言这些指定的单项式构成各分量的基，目前证明为 `sorry`；`dataBasis` 从这条待证定理取得对应的 `Module.Basis`，提供坐标、重构及维数接口。它不是已完成的基表正确性证明，也不属于 `linE2Presentation` 的内容。

计算元素由固定映射定义：

```lean
noncomputable def computedH6Square :
    sphereAdamsData.Page 2 (2, 128) :=
  linToSphereE2 2 128 (by decide) dataH6Sq
```

这里的 `by decide` 证明的是范围条件 `128 ≤ 261`。表的完整性、对应正确性和乘法兼容性须记录来源；计算器执行成功不自动证明它们。截断产生的范围外零不能传到真实 E₂。

## 3. 固定存活含义及对应关系

计算版本的 `NonzeroSurvival A p x` 使用 SSData 的共同代表元：

```text
存在同一个 z ∈ Z∞：
  z 经 Z∞ ↪ Z₀ → E₂ 的像是 x；
  z 经 Z∞ → Z∞/B∞ 的像非零。
```

这里内部阶段 0 对应 Adams 第 2 页。一般定义应根据 A 的起始页计算阶段；固定对象的起始页为 2。

标准版本继续使用当前 `IsPermanent`：指定元素具有各页相容、始终非零的后继。两种表述的对应现已证明：相邻代表元只差边界，而边界属于所有后续循环；因此逐页相容的类可用同一个代表元表示。`Z∞` 取交、`B∞` 取递增并，再把“每页非零”转为“无限商页非零”。这不需要先证明 h₆² 永久存活。

在比较层固定下列接口。指定类比较现已由次数唯一性和标准类非零性证明，
不再是独立公理；其证明仍依赖基础选择、Milnor 坐标及 Lin 呈现三个固定输入。
以下都是类型示意：

```lean
-- 已构造：包含各页同构、微分相容，以及同调到下一页的相容。
-- sphereAdams_towerComparison : SphereTowerComparison

-- 取上述同一个比较在 E₂ 上的映射。
noncomputable def toStandardE2 (p : ℤ × ℤ) :=
  (sphereAdams_towerComparison.pageIso 2 (by decide) p).hom

-- 已证明：此次数只有一个非零元素，标准 Milnor 类非零。
theorem h6Square_comparison :
  toStandardE2 (2, 128) computedH6Square = sphereH6Square

-- 已证明的一般存活表述转换，不断言任何指定元素已永久存活。
theorem survival_comparison (p : ℤ × ℤ) (x : sphereAdamsData.Page 2 p) :
    NonzeroSurvival sphereAdamsData p x ↔
      IsPermanent sphereAdams 2 (by decide) p (toStandardE2 p x) := by
  exact adamsTower_survival_comparison standardFoundation.hf2.unit
    KIP126.StableHomotopy.SphereSpectrum p x
```

这些关系须使用同一个 tower 比较。它们不得含有“h₆² 永久存活”、已排除所有微分等目标性假设。仅有 E₂ 同构不足以代替整个 tower 比较。

## 4. 两条最终 Solution 定理

以下是待实现接口下的完整目标形状。两个声明都没有自由的基础参数、外部输入参数或计算呈现参数。

```lean
-- 计算版本：真正需要攻克的证明。
theorem h6_sq_permanent_computational :
    NonzeroSurvival sphereAdamsData (2, 128) computedH6Square := by
  sorry

-- 标准版本：只出现固定的标准数学对象。
theorem h6_sq_permanent :
    IsPermanent sphereAdams 2 (by decide)
      (2, 128) sphereH6Square := by
  have hcomp := h6_sq_permanent_computational
  have htower :=
    (survival_comparison (2, 128) computedH6Square).mp hcomp
  simpa only [h6Square_comparison] using htower
```

标准陈述中的 `by decide` 只证明起始页条件 `2 ≤ 2`。它不证明永久存活。

这里保留明确的页码和双次数，方便读者看到目标是 E₂^(2,128) 上的类；没有为了缩短代码再把完整主定理藏进一个新的 Prop 名称。

以后实现底层构造、证明对应关系时，两条最终陈述应保持不变。

## 5. 命名公理与证明债务

按本次要求，固定对象和对应事实不作为最终定理参数。但它们仍属于定理的可审计依赖，不能因为参数消失而算作已证明。

分别记录：

1. 标准基础与指定 H𝔽₂ 的存在及所需结构；
2. 指定 Milnor 坐标及其正确性；
3. tower 的 SSData 装配：已构造，含无限阶交/并、代表元比较及微分的核像条件；原独立模型公理已移除；
4. 固定 Lin 数据对实际 E₂ 的描述及计算算法正确性；
5. 两种谱序列表述的逐页/微分/后继对应及存活谓词对应：已证明；指定元素的对应仍是公理；
6. 计算主定理本身的 `sorry`。

关于第 1、2 项，已有进一步的构造性连接：`TowerLayer` 证明 tower 的
非负过滤层确实同构于 `H ⊗ T_s`，包含单位映射和带正确符号的连接映射
比较，且实际第一商页同构于这些层的系数同调。`TowerResolution` 还证明
实际第一页微分对应单位三角形的连接同态后接下一层单位，并核对它正是
`sphereFirstDifferential` 使用的微分；这里不假设 Milnor 坐标。给定乘法和 tensor 保零
结构后，还证明 tower 的正长度转移诱导零模二同调映射。这些是从低层
结构推出来的定理，不是新的比较公理；固定基础的相应结构、Milnor 坐标
的推导及其经典含义仍待接实。

进一步，`TowerHomology/Normalized` 已从显式乘法、张量悬移相容性和张量
正合性，构造相邻 tower 层系数同调的商／核描述，并证明连接同态的代表元公式。
球面处得到实际 `E₁^(1,t)` 与合作代数余单位核的同构，不预设 Milnor 坐标。
这些结构参数尚未在固定基础上实现；全部过滤层的条件坐标构造见下文，
但完整 Milnor 微分比较仍开放。没有把这一层比较当作整个经典 Adams 对象已经识别。

`Cohomology/Coefficients` 和 `ClassicalAdams/Coefficients` 还从乘法与张量
加法性推出二挠性，构造同调、上同调、实际 tower 有限页与内部有限页上的
规范 F₂ 标量，并把原微分及上述比较升级为 F₂ 线性映射。底层加法群、
代表元和微分不变；固定基础仍缺少这些结构的实现，没有新增固定 Künneth 公理。

`Cohomology/Coaction` 已从同一个单位映射证明合作用的自然性、相邻单位
插入的恒等式和左右余单位律。`TowerHomology/Splitting` 进一步证明
正规化 `P = id - U ∘ A` 是自然投影，其像为乘法核、核为单位像，并构造
实际的 `(A,b)` 分解：`H_n(H ⊗ X) ≃ H_n(X) × H_(n-1)(fiber η_X)`。
该分解有 F₂ 线性版本，适用于每个 `X = T_s`；这里 `H_n` 均指模二同调。
这些是后续分次 Künneth／Milnor 比较的前置定理，不是新的坐标或存活公理。

现在还明确了低于 Adams 页的 `Mod2CooperationKunneth` 参数：它提供全部
谱的同调 Künneth 同构、自然性及乘法相容性，而不提供任何 Adams 页坐标。
从这个显式参数，结合已证明的分次张量核比较和实际 fiber 同调序列，
`TowerHomology/Kunneth/Iterated` 已构造所有非负过滤层的真实合作代数坐标：
`E₁^(s,t) ≃ N_s(t-s)`，`N_(s+1)(n)=⊕ᵢ ker(ε_i) ⊗ N_s(n+1-i)`。
边界代表元的坐标公式也已证明。

进一步，在显式给定单位自然变换的悬移相容性时，实际第一页微分已证明
对应独立构造的约化映射 `mod2CobarStep`：其未约化代表元为
`κ(外侧单位插入(x) - 内侧单位插入(x))`。该映射定义不依赖 Adams 页面或
微分；与实际 `d₁` 的一致性由连接同态自然性和已证边界坐标公式推导，
不是新的输入字段。**固定基础上的环、张量正合性、单位悬移相容性与
Künneth 实现仍未提供**，且还需合作代数的 Milnor 多项式识别及对角／
合作用比较，把这个约化映射展开为 Milnor cobar 公式。
因此这不等于 `standardMilnor` 已消去，也不解决最终的存活 `sorry`。

页面坐标的代数构造现已进一步完成：从真实约化合作代数 `ker ε_i` 上的
单槽 Milnor 单项式基（显式参数），结合 Künneth 和实际 tower 递推，得到
`sphereFirstPageMilnorEquiv`，对所有 `s,t : ℕ` 给出实际 `E₁^(s,t)` 到现有
多项式 `cochains s t` 的同构。所需 cochains 单项式基、词系数同构和逐槽
张量分解均已证明，不是凭维数相同选取坐标，也不引用旧 `MilnorCooperations`。
实际 `d₁` 在这些新坐标中的约化合作用表达式已证明；**该基的固定实现及
其 Milnor 余乘法公式仍未证明**，所以尚不能由此构造完整的固定
`MilnorCooperations`，最终两个命题的签名与存活缺口不变。

完整合作代数的坐标也已由同一个约化基补出：`cooperationMilnorEquiv`
把真实单位映到常数单项式，非零次保持原约化基的坐标，零次系数则等于
真实余单位后的 `π₀H = F₂` 坐标。这不需要新的完整基假设或 Künneth 输入。
但保持单位、余单位的线性同构还不是代数／合作代数同构，Milnor 余乘法
公式仍须证明；不能据此直接填掉旧 `MilnorCooperations` 或最终 `sorry`。

合作用与边界的联系也已接实为条件定理：从低层的 Künneth 悬移相容性和
自然性，推导任意三角形的边界相容性；再用单位的悬移相容性，得到
`ρ ∂ = (id ⊗ ∂) ρ`，其中 `ρ = κ U`。对实际下一层类 `y`，使用已构造的
唯一正规化提升 `z`，得到 `ρ(y) = (id ⊗ b) ρ(z)`。这一递推是证明结果，
不是输入字段。新增谓词只涉及谱的悬移，不包含 Adams 边界或微分。
**该谓词的固定见证和自由系数对象上的余乘法比较仍缺失**，因此仍不能
把条件推导误写成标准球面对象的无条件构造，也没有消去最终存活 `sorry`。

余乘法比较现已明确为不涉及 Adams 页的条件：实际 `Δ = ρ_H` 与 Künneth
满足 `(id ⊗ κ_X) ρ_(H⊗X) = (Δ ⊗ id) κ_X`。这给出实际合作用的余结合律。
再令 `q_X = b_X κ_X⁻¹`，已推导其正规化公式以及下一层递推
`ρ_(fiber η_X)(y) = (id ⊗ q_X)(Δ ⊗ id) ι e_X(y)`。这里 `b_X`、`e_X`
和 `ι` 均是先前从真实 tower 构造的映射，不是指定的页面微分。
仍需在固定基础上实现上述低层相容性，并把单位、余乘法同 Milnor 词坐标
比较；这才可以得到现有多项式 cobar 微分，不能省略这些剩余步骤。

单位项已进一步明确：`1_A` 直接由 `H` 的单位构造，不从表格选取。
低层条件 `Mod2KunnethUnitCompatible` 要求 Künneth 把实际外侧单位插入
变成 `1_A ⊗ x`。在此条件下已证明实际 `d₁` 的张量代表元为
`1_A ⊗ x - ρ_X(x)`，并得到实际第一页上的
`d₁(x) = 0 ↔ ρ_(T_s)(y) = 1_A ⊗ y`，其中 `y` 是第一页同调坐标。
这是已证明的条件判据，不是新增微分公理；不要求 Künneth 余乘法／悬移
相容性，但仍需已列明的张量正合性和单位自然变换悬移相容性。
该单位条件尚无固定实现，且这个判据只涉及 `d₁`，不解决最终存活 `sorry`。

球面初始合作用也不再作为递推的额外输入：从实际单位在球面系数同调上的
满射性，证明两种单位插入相等，再由已有 Künneth 单位相容条件得到
`ρ_(S⁰)(x) = 1_A ⊗ x`。更直接地，不使用环或任何 Künneth 参数，实际
长正合列就给出初始边界为零；由此球面过滤度零的所有出射微分为零，
内部 SSData 的全部阶段满足 `Z = ⊤`、`B = ⊥`，且已证明
`NonzeroSurvival x ↔ x ≠ 0`。这接实了起始列，并不替代过滤度二的
`h₆²` 存活论证，最终主命题与其 `sorry` 均未改动。

现已证明所有进入 `(2,128)` 的微分为零，且该处实际边界从 `B₂` 起不再
增加。内部接口 `sphereAdamsData_h6_nonzeroSurvival_iff` 将计算目标等价化为
初始非零性与同一个 tower 代表元的所有阶循环条件。这些定理现在仅使用已有基础，
通过 `Q₀ ≅ H ⊗ S ≅ H` 及 Eilenberg--Mac Lane 性质证明过滤度零的消失，
不再需要 Milnor 坐标，也不使用 Lin 表，不预设或证明 h₆² 的所有出射微分消失。
因此第 6 项仍开放，不能把这一步记作永久存活的完成。

初始非零性现已证明：`LinSquareDetection` 把生成元 69 送入
`𝔽₂[u]/(u³)`，证明该检测器杀死全部定义关系和截断理想，而不杀死平方。
`Certificate/Archive/` 的八批内核证书覆盖原始 227 块及前三条单列关系，
证明 `allRelationsCheck_eq_true` 和 `dataH6Sq_ne_zero`，不再保留有限检查前提。
证书使用已证明的解析器比较和字符列表拼接规则；原始数据完全未改动。
生成器不使用基表的 `sorry`、原生求值公理或新的数学公理。

`computedH6Square_ne_zero` 经已有 Lin 比较将非零性转移到内部 E₂。
它仍依赖已披露的固定基础和 Lin 比较，并不消除这两项输入。
`computedH6Square_nonzeroSurvival_iff` 再结合无入射微分的已证事实，
把指定计算类的永久存活等价化为同一个实际 tower 代表元的所有阶提升。
该等价现在只额外依赖固定基础和 Lin 比较，不再依赖 `standardMilnorCooperations`。
该提升条件和最终计算 Solution 仍未证明，不能把初始非零性记作永久存活。

其中已经构造或证明的部分直接复用，不重新公理化。PR #110 的 `multiply_mem`、`coordinateCheck_sound` 等现有未完成证明仍单列，不能伪装成新的已证结果。

标准 Solution 的证明正文没有 `sorry`，但其依赖审计仍应显示计算 Solution 的 `sorryAx` 和实际使用的临时公理。未来若 Lin 正确性仍作为未证明的外部事实保留，也必须保留相应信任记录，不能声称得到无外部依赖的证明。

本次选择让“固定标准对象符合固定数据”通过全局命名假设进入证明，而非最终定理参数。正式实现时须同步记录这一经用户指定的开发期信任边界，并保持公理来源与依赖审计。

## 6. 正式实现时的安排

- 本稿对应的两个 Challenge/Solution 已落实，且检查了完整签名无参数、配对签名一致和依赖审计。
- 通用带参数构造保留在底层；固定标准对象单独定义，避免污染通用实例搜索。
- 计算侧使用 KIP126 的 SSData 模型；规范库不直接导入历史 KIPBase。
- Mathlib 比较放在适配层，内部通用推理不反向导入它。内部固定对象也不能通过从适配层抽取字段来造成反向依赖。
- 公理按照组件归档于 Axiom.lean；基础存在性、Lin 数据正确性和结构性比较分开记录。
- Challenge/Solution 各自保留两条签名一致的声明；Challenge 始终使用 `sorry`。标准 Solution 调用计算 Solution，不调用 Challenge。
- 编译后检查完整声明类型，确认没有意外泛化的 C、H、M、I、typeclass 或 universe 参数；所有相关对象在基础层选定一次。
