# Synthetic 来源接口与验收状态

此文件保留原路径供历史链接使用；内容已按当前实际源码更新。此前缺少的源语言已补入 `Def/Synthetic/Source/`，最终冻结判断以[本轮自审](audits/stage0-57647d2-iteration-2.md)为准。这里记录精确的构造及比较目标，不声称模型存在性或比较证明已经完成。

## 当前对象实现和绑定

| 对象/操作 | 实际定义 | 与路线连接 |
|---|---|---|
| ordinary finite HF₂-projective site | `Site`：同一 ordinary realization 下的 finite orthogonal spectra，覆盖由实际 HF₂-homology 满射定义 | 同一 `standardRealization`，不是只在普通 Ho 的 Hom 集定义虚拟高阶对象 |
| 谱值 spherical presheaf 与 hypercompletion | `Presheaves`：整个严格谱图范畴按 objectwise stable equivalences 局部化，再按实际 homotopy sheaf 等价局部化 | 保留 derived natural transformations；strict diagram rectification 与 descent 是具名模型证明责任 |
| ν | `Nu`：`P ↦ τ≥0 RHom(P,X)` 及 hypercompletion | `Binding.nuIso`、unit、actual ν suspension；一般不 exact |
| Day tensor 与对称结构 | `Day/DayCoherence`：actual derived smash 的 left Kan/Day 普遍性及 whole-diagram pairings | `Binding.monoidal/braided` 与 `biShift_tensor`，结合/单位/对称 maps 都固定 |
| 双移位、λ | `Operations/ShiftCoherence`：`Σ^(t-w)F(Σ^-wP)`；λ 来自 double-cone/path-pullback comparison | `Binding.biShiftIso/lambda_eq/nuSuspension_eq`；不是按度数猜映射 |
| preferred sphere product | `SpherePairing`：原文 raw pairing 后乘实际 `(-1)^(w*t′)`，再定义完整 preferred shift addition | `PreferredShiftBinding` 接到路线 `biShift_comp`，不额外要求与 raw 相加相等 |
| exact shift | `ShiftExactness`：actual cone/suspension coordinate swap | `SourceShiftExactBinding` 绑定 D 的每个 selected CommShift，保留 boundary 符号 |
| realization | `Recovery`：actual spectral Yoneda 的左伴随；ν→Yoneda 为 connective counit | `Binding.realizationIso/nuRecovery_eq`；不是任意 ν 左伴随 |
| realization tensor/shift | `RecoveryMonoidal/RecoveryShift`：actual function-spectrum tensor pairing 的 mate；λ 与 ν suspension 恢复 +1 sphere | `RecoveryMonoidalBinding`、`RecoveryShiftBinding`，不由裸对象同构代替 |
| ν 的 lax multiplication | `NuMonoidal`：connective counit 下的唯一 factorization | `implementationNuLax` 经同一 Binding 运输到 D；tmf algebra 使用它 |
| actual Adams tower 与 E₂ | `RealizationTower/Data,Route`：base、steps、全部cofiber箭头、实际E₁代表和商映射 | `SourceModel.e2`，选定 `D.nuE2` 标签不能任意线性改名 |
| 第一 λ 商 | `RealizationTower/FirstQuotient`：quotient inclusion、actual J、共同 E∞ class 与 actual lift | `SourceModel.firstQuotient`，严格选择唯一性另外要求下一过滤层零 |
| 同一 ordinary/η/ν/tmf 与适用范围 | `Route/Source/Data`；`ClassicalSourceBinding`、几何 Hopf map 等式、`TmfBinding`、`BHSAdamsApplicability` | 完成/强收敛、bounded-below/finite mod-2 type 保留；不量化所有无界对象 |

`Route/Source/Construction.sourceRealization` 的构造目标给定 CS、TS、几何 Hopf 识别及 TS 的 bounded-below/finite-mod-2-type 条件，返回一个同时保留 CS/TS 的来源模型。它没有程序结果、指定微分或本文结论。其证明仍为模型构造债；目标准确不等于已构造出了 witness。

`Main/Axiom/Literature/Synthetic` 逐项接受 Pst/BHS/BX/BHSmot/May 的原结果，要求同一个 `SourceModel`。`Main/Solution/Literature/SourceAdapters` 负责坐标、ν兼容三角、低维选择无关性、detector algebra 与乘法比较。不能把整个 `Inputs` 或模型绑定 record 作为外部公理。

## 本次重新读取的原文

使用仓库保存的 Pstrągowski arXiv:1803.01804v3，`Main/Axiom/Literature/Sources/Pst/source/synthetic_spectra.tex` 及其 `paper.txt`；BHS arXiv:1910.14116v3 的 `SynRevBigraded.tex`、`SynRevHom.tex`；以及主论文当前 `main.tex`。下面的行号对应本轮未改动的原始文件。TeX label 优先于可能随排版改变的页码。

| 原始结果 | 本次直接核对的内容与定位 | 需要冻结的同对象关系 |
|---|---|---|
| Pst Definition 4.1，`defin:synthetic_spectrum_based_on_e` | TeX 1887–1889；synthetic 谱为有限 E-projective 谱的 **∞-site** 上的 spherical sheaf of spectra。site 的覆盖由 E-homology 满射决定，见 §3.3、`prop:homology_surjections_make_fpspectra_into_an_excellent_inftysite`。 | 明确 E=HF₂、源谱、有限对象、homology 与覆盖，及实际 sheaf/等价构造；不能仅用普通同伦范畴的 Hom 集做普通集合值 sheaf。 |
| Pst Proposition 4.2，`prop:synthetic_spectra_is_a_stable_presentable_infty_category` | TeX 1894–1901；稳定、presentable、Day convolution 张量。 | 所用 homotopy category、exact triangle 与 tensor 是这套构造的像，并包括所用相容关系。 |
| Pst Definition 4.3、Lemma 4.4 | TeX 1902–1926；`νX` 是 `P↦map(P,X)` 的唯一 connective spectrum-valued sheaf lift，等价写作 `F(P,X)≥0` 的 sheafification；ν lax symmetric monoidal，保 filtered colimit，**一般不 exact**。 | 选定 `D.nu.functor` 与此 ν 的具名自然比较；同一 source classical spectrum 的对象、映射、unit、tensor comparison。 |
| Pst Definition 4.6、Remark 4.10 | TeX 1935–1938、1958–1980；`S^(t,w)=Σ^(t−w)νS^w`；preferred sphere tensor comparison 为原始比较乘 `(-1)^(w t')`，其交换律只用 topological degree `(-1)^(t t')`。 | `Smn`、`biShift`、`smashSphere` 与实际 sphere/tensor 比较和符号。仅 matching degree 或一个同构不够。 |
| Pst Lemma 4.23，`lemma:fibre_sequences_that_are_short_exaft_sequences_on_homology_preserved_by_synthetic_analogue_construction` | TeX 2114–2123；ν 保给定 fiber sequence 当且仅当整个 E-homology sequence 短正合。 | 普通 ν 不可被误设为 exact；Cν 的 normalized lifts 采用 BHS 独立构造，必须保留对应输入前提。 |
| Pst Definition 4.27、Proposition 4.28 | TeX 2172–2188，`prop:transfer_map_can_be_identified_with_tau`；τ 来自 `νS⁻¹→ΩνS⁰` 的 canonical comparison，对任意 synthetic X 对应 `X(ΣP)→ΩX(P)`。 | 当前 `lam` 必须与这一自然变换比较；本项目记为 λ，degree `(0,−1)`；随后商、ρ、δ 来自同一 λ 的实际 cofiber tower。 |
| Pst Theorem 4.37、Proposition 4.40 | TeX 2357–2381、2403–2410；`thm:tau_invertible_synthetic_spectra_are_just_spectra`、`prop:tau_inversion_cocontinuous_symmetric_monoidal_left_inverse_to_synthetic_analogue`；τ-inversion 和 spectral Yoneda 给出所述等价与左逆。 | `D.recovery.realization` 及 `nuRealizationIso` 须来自这个 localization；若采用 hypercomplete/HF₂-local 版本，需明确相应范围与 source classical localization 的比较。 |
| BHS Theorem A.1 / Theorem 9.19 | `SynRevHom.tex` 4–33；`SynRevBigraded.tex` 123–150。前提为 E-nilpotent complete 且 E-Adams strongly convergent；strong convergence 含 complete/Hausdorff filtration。 | 实際球谱、Cν、所需 shifts 必须有这些具体范围条件；一个 associated-graded 同构不能单独代替全部前提。 |
| BHS normalized lift / triangle | `SynRevBigraded.tex` 86–134 的 `lemm:adams-fil1` 及后续 lifting 约定；主论文 §4–6 使用 normalized maps。 | `NuCofiberSourceData` 的三个 maps 与源构造相符，再用 `NuCofiberLiftBinding` 的实际 map 等式运输至 `D.normalizedMap`；不能声称任意预选 lifts 自动给 distinguished triangle。 |
| 主论文约定与 §3 | `main.tex` 254、755–820；所有 classical X 是 2-completed connective finite type；ν、λ、λ 商与 actual Adams family 固定。 | 冻结 completed/hypercomplete 版本与全文同一对象，不把 unrestricted Pst SynE 与 completed 子范畴静默混用。 |


## 后续证明责任

尚待证明的具体工作包括：模型呈示/rectification、Q/R 和 connective replacement 的存在及普遍性、actual source map 的稳定等价、Day/Yoneda/Fubini 普遍性、hypercompletion 与 monoidal compatibility、来源等价及其所有比较、选定完备对象的 BHS 适用性、同一 tower/first quotient/finite quotient 箭头和乘法适配。

它们的准确陈述允许保留 `sorry`。本文新工具、指定计算、λ-torsion 局部结论、C₃/C₄/C₅ 与 Proposition7.8/7.9 均不属于此源结构；其证明另在认证或论文阶段承担。当前最后验收是否关闭全部接口事项，必须查看本轮报告的实际最终检查，不能从本目录文件存在推断。
