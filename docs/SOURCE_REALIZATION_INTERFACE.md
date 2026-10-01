# 固定稳定同伦来源与本轮比较接口

本文件说明本轮新增的普通稳定同伦来源接口及其实际范围。它不是第 0 步已完成声明，也不是模型存在性、计算认证或主定理的证明。基线为 `57647d2158891da6cf7bd392f70f0f4158553dcd` 上的本轮工作区；固定 Lean 为 `v4.32.2`。

## 实際载体与操作

`KIP126/Def/StableHomotopy/Source/Prespectra.lean` 定义基点拓扑空间、实际基点连续映射、顺序 prespectrum 及其态射。结构映射采用 `Eₙ → ΩEₙ₊₁`。`CubeIndex n` 有 n 个坐标；`StablePi E p q` 是各阶段 `Ω^(p+n) E_(q+n)` 的代表按基点相对同伦与结构映射稳定化生成的关系取商，次数为 p−q。`stableEquivalences` 要求这些实际诱导映射在所有 p、q 上双射。`StableCategory` 是 Mathlib 对该范畴与该态射类构造的 Localization，不是额外的任意 `Type`。

`Mod2Source` 选一个实际 prespectrum，指定稳定 π₀ 与 F₂ 的保零双射及其余整数稳定同伦群消失。`mod2Equivalences` 是对这个 H 的所有整数移位的可表上同调诱导双射。`CompleteCategory` 再次使用同一 Mathlib Localization。此处选择 HF₂ 局部化；没有对任意无界谱声明其等于 Moore 谱完成。

`Source/Spheres.lean` 把离散基点空间 `Bool`（false 为基点）反复取实际约化悬挂得到源球谱。约化悬挂是 `I × X` 对两端及基点线的拓扑商。固定球是这个悬挂谱经过上述两级局部化的像。`sphereGenerator` 是第零层的非基点 true；`evaluateSphere` 是实际 `stablePiLocalized` 函子作用在该类上。源 HF₂ 单位通过这个明确求值映射的双射性质反解 π₀ 中的 1，再局部化得到，不能被一个任意线性同构替换。

`Source/Cofibers.lean` 给出实际 mapping cone 的商关系、prespectrum bonding、胞腔包含以及到 levelwise suspension 的商投影。载体和函数均有显示定义；尚未证明的连续性、关系保持和自然性仅出现在性质证明中。

这些基本约定对应 May 的基点锥/悬挂/loops、CW 近似、prespectra 和稳定范畴语言，见本轮直接阅读的 [May, A Concise Course in Algebraic Topology，第 8、10、25 章](https://www.math.uchicago.edu/~may/CONCISE/ConciseRevised.pdf)。

## 固定 Foundation 的同源绑定

`Source/Realization.lean` 的 `Binding F H` 包含：

- `CompleteCategory H ≌ F.Spectrum` 的同范畴等价；
- 源球、源 HF₂ 与 F 的 sphere/HF₂ 的等价，以及上述具体单位映射的交换式；
- positive tail / negative levelwise loops 与 F 的全部整数悬移的自然比较；
- 实际源 mapping cone 与 F 已选 cofiber 的同构，连同包含及连接映射的交换式；
- F 的 distinguished triangles 恰为这些源 mapping-cone 三角的同构像；
- 下述实际 derived smash 在全部 source spectra 上到 F 张量的强对称幺半比较；`monoidal_unit_eq` 将幺半单位同构固定为同一个 `sphereIso`，自然性、结合与两条单位 coherence 是 `Functor.Monoidal` 的字段；
- CW 悬挂谱上的实际 pointed smash 比较，并由 `smash_eq_derived` 明确等于上述全域比较的特化。

原始 Top* 的普通积不普遍保持商映射。因此 mapping-cone 和 levelwise suspension 的导出运算比较保留 `CellularPrespectrum` 前提；CW 基点必须是零胞腔，空间须 Hausdorff。`smashAssociator` 另要求三对象紧 Hausdorff；没有用 `sorry` 声称任意拓扑空间的嵌套商结合映射连续。`CellularReplacement E` 明确给出实际 CW prespectrum、到 E 的实际态射及 `stableEquivalences` 条件，其构造待补。

`ShiftComparison.lean` 另给实际 tail/loop 迭代重排等式与逐层 bonding 定义的 `(1,1)` cancellation map。`Binding.shift_zero/shift_add/shift_cancellation` 将不同整数表示的比较锁在这些箭头上。`suspension_eq_shift` 使用正交 J 的 **first-coordinate insertion** 定义真正的 `levelSuspension → tail` 谱映射，保留 cofibrant/cellular 前提；不能把任意 sequential 谱的 adjoint bonding 无条件当成这条谱映射。`cofibrantCellularPresentation` 明确声明该适用范围呈示全部源稳定对象，证明待补。

`standardRealization : RealizedFoundation` 的模型构造暂用 `sorry`。`standardFoundation`、`standardTensor` 与 `standardSourceBinding` 投影同一见证，不再独立选择基础对象。这个返回类型约束了来源与比较；它仍不表示已经构造或证明模型。`standardMilnorCooperations.coordinates` 由同一 HF₂ ring/Künneth/约化 Milnor 基的 `sphereFirstPageMilnorEquiv` 给出，并明确由 F₂ 限制标量到 ℤ。

关于局部化的通用性质，本轮直接阅读了 [Lurie, Chromatic Homotopy Theory, Lecture 20 (2010), Example 4–5](https://people.math.harvard.edu/~lurie/252xnotes/Lecture20.pdf)。该讲义并没有单独核实本项目所有源模型适配；尤其不能把讲义中保存同伦余极限的谱函子结论，直接应用于没有增强结构的任意同伦范畴函子。

## 全源 derived smash 与函数谱（本轮续作）

`Source/Convenient.lean` 明确定义弱 Hausdorff 条件、kification、k-product 和连续 based pairing。`Orthogonal/Index.lean` 的 `J n m` 是实等距矩阵及其正交补向量总空间的一点紧化；复合、直和、交换坐标块、单位和末坐标 suspension loop 都有具体函数。`Orthogonal/Data.lean` 的谱是这些 J 空间的连续作用；`forget` 用该 loop 得到前述同一个 sequential prespectrum，稳定等价仍由实际 `StablePi` 检测。

`Orthogonal/Smash.lean` 以连续双线性 pairing 的**富集**普遍性质定义 Day convolution：映射空间和 pairing 空间均使用 compact-open end 的 k-topology，普遍双射须双向连续。`exists_smashData` 是这个具体普遍对象的存在性证明债，`smashData` 只选择满足完整性质的通用对象；不存在任意乘法载体占位。`Monoidal.lean` 的单位箭头来自 J 作用，交换箭头来自明确坐标交换，结合子由三重 universal pairing 的 regrouping 等式确定。

q-cofibrant 对象和 q-cofibration 由对所有层、所有带基点 `(∂I^k)₊→(I^k)₊` 的提升性质定义，包含 `k=0` 与第零层。`CofibrantResolution` 是同一模型的函子性 Q 与实际 level-trivial-fibration 投影。`Function.lean` 的 `functionSpectrum E F` 第 n 层是所有满足 J 自然性的连续映射族 `E_m→F_(n+m)`；其第一块 J 作用有显示公式。R 由同一 q-cofibration/稳定等价定义的 fibrancy 约束，`derivedMappingSpectrum E F` 就是 `functionSpectrum (Q E) (R F)`。这里保留真正的映射谱，未以 Ho 的 Hom 集替代。

`DerivedSmash.lean` 用 Mathlib 的 `LocalizedMonoidal`，把 q-cofibrant 正交谱的具体 tensor 沿实际 `cofibrantInclusion ⋙ forget ⋙ stabilizeFunctor` 传到既有 `StableCategory`，再沿既有 `completeFunctor H` 传到 `CompleteCategory H`。`derivedSmashIso` 明确其值是 `Q(E) smash Q(F)` 的局部化。单位比较通过 `evaluateSphere` 在 `jId 0` 生成元上的反像固定。因此同一运算覆盖 HF₂、H∧H、Adams tower stages 及其迭代 smash；`Binding.monoidal` 将这些对象、实际箭头与 coherence 统一接到同一个 `standardRealization`。

`Suspension.lean` 的源 CW 特化使用实际公式 `[(a,x),(b,y)]↦[a⊕b,[x,y]]`，再经同一 Day universal pairing 与局部化构造。任意两个 CW 空间的普通积不必已经是 k-space，因此目标明确用 `kify (Source.smash X Y)`，并经实际连续 identity `kify Z→Z` 的有条件稳定比较连接旧源；未宣称 reverse identity 连续，也未宣称任意坏基点空间的 suspension preserves weak equivalences。

这套普通源呈示依据本轮直接阅读的 [Mandell–May, *Equivariant orthogonal spectra and S-modules*](https://math.uchicago.edu/~may/PAPERS/MMMFinal.pdf)：I §2 的 enriched Kan/Day construction，II Definition 4.1 与 Theorem 4.3 的 Thom category J 描述，I Definition 4.6 与 III §4 的稳定模型、III Theorem 4.16 的 prespectrum 比较；这里取非等变且非 positive 模型。项目中的具体矩阵/立方坐标、既有 sequential source 适配和 Lean 局部化比较仍须证明，原文并不自动验证这些 Lean 公式。

## 张量与悬移的混合比较

`Binding.tensor_right_suspension/tensor_left_suspension` 用同一 ordinary 正交谱的实际 suspensionSmashMap 和 Q replacement 锁定 TensorInput 的左右 CommShift；`ihom_unit_shift/ihom_counit_shift` 以闭伴随的实际 unit/counit 固定内 Hom 的 mate。synthetic 恢复悬移所用的 ordinary 源映射是这条源映射的别名。`ordinaryTensorShiftBinding_of_source` 将它运输到恢复比较所用形态，证明仍待补；不再只分别声明 monoidal 和 exact 却遗漏二者的相容。

历史 `ClosedSymmetricTensorTriangulated` 也已修正：exactness 只针对明确选定、相互相容的 smash/左 smash/内 Hom CommShift，不再错误量化所有任意 CommShift 实例。

## η、ν 的几何来源

`Source/Hopf.lean` 的 `eta : roundSphere 3 → roundSphere 2` 和 `nu : roundSphere 7 → roundSphere 4` 是复数与四元数公式 `(a,b)↦(2a conjugate(b), |a|²−|b|²)` 的实坐标多项式。输入坐标次序、右共轭、输出坐标次序与 `(1,0)` 基点都写在定义中。`roundSphereIso` 的正向地图由显示的立方体 proper coordinate 和 stereographic formula 给出；反向地图及连续性待证，没有任意选择一个球同构来决定符号。这个几何定义对应直接核对的 [Dray, *Geometry of the Octonions*, “The Hopf Bundles”](https://sites.science.oregonstate.edu/coursewikis/GO/book/go2/hopfn.html) 的 `vv†` 描述；本项目另外明确列出所用实坐标排列。

`geometricEta B` 和 `geometricNu B` 经同一个 `Binding B` 的源函子、`sphereIso` 与 `shiftIso` 稳定化到实际 π₁、π₃。路线的 η/ν 必须再以等式绑定到这两个类。单独检测 h₂ 只固定 associated-graded leading term，不能替代几何识别；即使使用真实 Adams convergence，ν 的不同奇数倍也可能具有同一 leading term。一般 `TowerDetection.Convergence` 的 canonicality 是另一个比较义务，几何 Hopf 定义本身不会证明任意 associated-graded iso 都是正确 convergence。

## 仍需区别的范围与责任

1. 本源模块仅处理普通稳定同伦范畴，不构造 Pstrągowski 的 finite E-projective ∞-site、球值 sheaves 或 synthetic category。不能将普通同伦范畴的 Hom 集上的 sheaves 称作论文的 synthetic spectra。
2. 上轮 R0-01 所指的全源 stable smash 缺声明，现已由具体正交谱 Day convolution、q-cofibrant 局部化、HF₂ 局部化和 `Binding.monoidal` 补齐。点集构造存在性、模型定理、普遍性质与同一实现比较仍有 `sorry`，不能称为已证明的模型，也不单凭该项宣布全部第 0 步完成。
3. HF₂ 局部化球作为本项目选用的完成模型已经有明确载体。与另外选定的 `holim S/2ⁿ` 模型的比较本轮未定义；不会把它记成已证明的定理，也不会推广成任意无界谱上的完成等价。
4. `evaluateSphere_bijective`、`cellularReplacement`、范畴/函子性质、连续性、模型存在以及源比较仍为后续普通模型/比较证明债。若发现其中的条件不够，则应先修改接口，不能依靠 `sorry` 保留错误命题。

## 同时修正的次数与有限 λ 商比较

`Mod2Cohomology H n X` 现为 `[Σ⁻ⁿX,HF₂]`，可表形式为 `[X,HF₂[n]]`；UCT 两侧均为同一个 n。实际 `πₙHF₂` 的 F₂ 模结构独立命名为 `mod2HF2HomotopyModule`，原来 99 处借同伦次数的 cohomology 名字安装此结构的调用已换用新定义，未改其同伦下标。新结构及其 2-torsion 证明不含 `sorry`，通过已有系数检查的基础公理限制。

`Def/Kervaire/Route/Multiplication/{Operations,Comparison}.lean` 固定一个实际 monoid-induced `algebraProduct`，并声明同一 D、同一实际 S/λ^q 上的第一商 cobar 乘法比较、有限商检测乘法、sphereAction 检测乘法及实际 Adams 塔过滤的乘法。`Literature/AlgebraBinding` 消费这些结构比较，独立于外部文献的原始结论。它们没有指定任何局部乘积值或最终存活。

`Synthetic/Detection/Proofs.lean` 声明共同检测的差落入高一层过滤、零 leading term 的高一层过滤和加法性质。它们不把 associated-graded 检测改成不同所选同伦代表之间的严格等式；一般证明尚待完成。

## 实际类型检查

固定工具链下执行并成功完成了：

- `lake build KIP126.Checks.StableHomotopy.Cohomology KIP126.Checks.ClassicalAdams.Coefficients`；
- `lake build KIP126.Def.Kervaire.Route.Multiplication.Comparison`；
- `lake build KIP126.Def.ClassicalAdams.StandardMilnor`（包含当前新增 Source 四模块）。
- 本轮续作最小检查：`Orthogonal.Index`、`Data`、`Function`、`Smash`、`Monoidal`、`Localization`、`DerivedSmash`、`Suspension`、`Source.Realization` 及 `StandardFoundation`。
- `lake build KIP126.Def.StableHomotopy.Source.Hopf`；两套 Hopf 坐标的平方和恒等式也以 Sympy 直接展开检查，未把这个辅助检查当作连续性或稳定化证明。

这些结果仅说明对应定义、签名、导入与现有证明可通过 Lean 检查。源构造的 `sorry`、文献适配、计算证书和最终论文证明没有由此获得数学认证。
