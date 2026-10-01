# Synthetic 源操作的精确定义与证明责任

本文件说明本轮新增的源操作；它不单独宣布整体第 0 步或全部 A 的冻结完成。基础对象采用 `Synthetic.Source.HypercompleteCategory R`，即实际有限 orthogonal 谱 relative site 上的 homotopy-invariant、spherical 谱预层，在全部 homotopy-sheaf 等价处局部化。普通谱背景始终是同一个 `R : StableHomotopy.Source.RealizedFoundation`。

## ν、双移位及 λ

`Source.Nu` 的预层在 P 处取实际 `Orthogonal.derivedMappingSpectrum P X = functionSpectrum (Q P) (R X)` 的 connective cover，再作同一 hypercompletion。`Source.Recovery` 的 spectral Yoneda 使用未截断的同一个 function spectrum。其 realization 是这个已构造的 spectral Yoneda 的左伴随；ν 到 Yoneda 的映射是实际 connective counit。没有另选一个无关联的“恢复”函子。

`Source.Operations.biShiftDiagram (t,w)` 的点集公式是

`P ↦ Σ^(t-w) F(Σ^(-w) P)`。

普通谱的正移使用逐层 reduced suspension 后的 kification，负移使用实际基点 loop space；派生时正移先 Q、负移先 R。`Orthogonal.Shifts` 的 carrier、J-action、sphere-loop unit/counit 都有实际公式。连续性、J 自然性、稳定等价等是明确的证明债。

`Source.Operations.lambda : biShift R (0,-1) ⟶ Id` 因而为 `Σ F(Σ P) → F(P)`。其映射来自 QP 的两个实际 cone：两个 cone 的底边相同，分别映到 suspension 的左右半区；反变应用 F 后，使用实际 path-space derived pullback、constant-path square comparison、零坐标 loop inclusion 和 suspension-loop evaluation counit。只对已明确给出的 Q/R/loop comparison 映射取逆。尤其没有把 `F(ΣP) → ΩF(P)` 一律声明为同构；这会错误地提前使 λ 可逆。

`Source.ShiftCoherence.biShiftAddRaw` 和 `biShiftZero` 从实际 `Orthogonal.ShiftZigzag` 解释而来。该语法只包含 identity、Q-projection、R-inclusion、派生 suspension-loop unit/counit、它们的复合、逆和 shift-word whiskering。其前复合操作在整张谱图上反变，后复合操作协变。构造未降为逐点 Ho(Sp) 中另选同构。

双移位复合的源域次序明确为 `Σ^(-q.w) ⋙ Σ^(-p.w)`，值域次序为 `Σ^(p.t-p.w) ⋙ Σ^(q.t-q.w)`。整数重排只用等式 transport。raw 相加只用于这套点集呈示的 normalization。论文乘法使用另行准确构造的 `Source.SpherePairing.preferredBiShiftAdd`；不能把 raw 中央性或 raw 与 preferred 相等作为未经核实的结论。

## Day 乘法与相干映射

`Source.Day` 使用严格双变量谱图的 objectwise stable-equivalence localization。右函子是实际预复合 `H(P smash^L Q)`；左伴随是对应 derived spherical left Kan extension。外积使用同一个 ordinary source 的 Q-smash。所谓 universal pairing 是这个明确 adjunction 的 unit。此处 Hom 是整个谱图局部化的 morphism，保留 derived natural transformations；不是普通 Ho(Sp)-valued 图的裸自然变换集合。

`Source.DayCoherence` 进一步冻结结构映射：

- 结合映射：在严格三变量谱图的局部化中，依次复合两个 binary universal pairings，得到固定 ternary pairing。`leftTriplePairing_universal` 声明**这个固定函数**的双射性（derived Fubini），而非另选 Hom-set 等价。左右 external/restriction 的比较由 actual orthogonal associator 和指定 Q-projection zigzags 给出。`sphericalDayAssociator` 是 resulting ternary pairing 的唯一逆像。
- 单位：`derivedSphereIdentity` 是 actual sphere left-unitor 经 actual smash/function adjunction 得到的 identity，再通过 Q/R maps。`connectiveSphereIdentity` 是其在 connective counit 下的唯一 lift。`leftUnitEvaluation` 在整个预层局部化中，把 binary Day pairing 评价在这个 identity 上；其双射性是 derived Yoneda。`sphericalDayLeftUnit` 是 identity 的唯一逆像，右单位再由已定义 braid 构成。
- 对称：braid 由 binary pairing 的唯一逆像定义，external 和 restriction 两边均用 actual orthogonal block swap。它与 associator、unit 的 hexagon/pentagon/triangle 方程都是对固定映射的证明义务。
- `sourceMonoidal R`、`sourceSymmetric R` 用 Mathlib `LocalizedMonoidal` 将上述结构沿实际 hypercompletion 下降。单位字面为 `nu R` 作用于同一个 completed ordinary sphere；其与 sphere-diagram presentation 的同构来自 `nuSphereComparison` 和实际 ordinary sphere comparison。
- `sourceDayTensorComparison` 是 strong-monoidal localization 的实际 μ。`sourceDayFunctorComparison` 将这个 localized monoidal tensor 与原先具名 `hypercompletedDay` 函子自然比较；后续 adapter 应使用此桥，不能因为两者同名而假定对象及箭头字面相同。

`Orthogonal.Pairing.functionSmashPairing` 也已给出：它是 actual function evaluation 和实际中间 block swap 的 mate。它没有预设所选 R replacement 自带 lax-monoidal structure；派生应用仍需 Q 输入和整个图类别内的 replacement zigzags。

## 原始来源及仍需区分的责任

主要定义依据 Pstrągowski 保存原文 `Sources/Pst/source/synthetic_spectra.tex`：spherical stabilization、finite E-projective site、ν 的定义、双分次球、`symmetric_monoidal_structure_on_spherical_sheaves_of_spectra`、`day_convolution_compatible_with_different_kinds_of_equivalences`、τ 的 canonical suspension comparison、τ-inversion，以及 §5.1 的 hypercomplete 约定。BHS `SynRevBigraded.tex` 的 `rmk:colimit-compare` 和 `thm:tau-inv` 使用同一比较方向。

本实现准确声明并固定操作，不声称完成以下证明：模型范畴呈示/strict diagram rectification，cofibrant/fibrant/ connective replacement 的存在，实际 point-set 图比较的稳定等价，derived Day/Kan/Yoneda/Fubini 的普遍性，hypercompletion 的 monoidal compatibility，各相干方程。

这些性质的证明可以后续完成；但路线模型必须另外通过准确具名比较绑定这些 source 操作，尤其是 preferred sphere multiplication、biShift-tensor interchange、ν suspension/乘法、actual νHF₂ Adams tower、first quotient/cobar labels 及同一 classical/tmf 对象。存在本文件列出的 source 操作，不能替代这些尚需逐项核查的路线 binding，也不能直接授权对任意 D/η 接受整个 Literature.Inputs。

## 原文 preferred 乘法、正合移位与恢复移位分别绑定

`SpherePairing.pstRawSphereTensorIso` 按原文 `Σ^(t-w)νS^w` 的实际 tensor 组合定义；`pstPreferredSphereTensorIso` 在其后应用实际 loop reversal 的 `(-1)^(w*t′)`。`pstSphereIso` 仅用固定 ν suspension 的整数递推及 raw normalization，把这个呈示接到 source action sphere。没有为每个权重另选一个符号。

`preferredBiShiftAdd` **由这个已定义的 preferred sphere tensor map 构造**整个 shift functor 的相加：把双 shift 写成两个实际球面 tensor，使用结合子与 preferred sphere pair，再回到合次数的 shift。它不猜测旧 raw action 的差异，也不声称二者相等。`PreferredShiftBinding.addition` 绑定路线的 `biShift_comp` 到此映射；`Binding` 不再同时要求 raw 相加方块。组合 `sphereProduct` 的张量输入次序与相加参数反向，已在定义中处理。

`ShiftExactness.SourceShiftExactBinding` 另行绑定 `D.shiftCommShift` 到实际 cone 坐标交换。仅值域 suspension `t-w` 贡献边界符号；它不是 preferred sphere product 的 Koszul 约定。`RecoveryShiftBinding` 固定 realization 的 CommShift，利用同一个 λ、ν suspension/recovery、source 单位与 monoidal mate。普通 tensor/shift 的混合比较也必须是实际 source 箭头。

`NuMonoidal` 的 lax pairing 是实际 function-spectrum/Day pairing 在 connective counit 下的唯一 lift；仅有限 HF₂-projective 对象上的相应比较被声明为同构，未把 ν 误设为普遍 strong monoidal 或 exact。
