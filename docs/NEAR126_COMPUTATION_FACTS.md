# Near-126 计算事实包：输入清单与接入状态

## 更新：批量数据库输入取代逐条假设的接入方向

用户已要求从 `proofs.db` 批量导入并使用统一可靠性公理。
现在 `External/Computation/LinProofs` 已扫描固定版本全部 2,672,275 行，
其中 10,907 条球面有限页微分等式由一条 `sphereTable_sound` 覆盖。
见 [数据库导入说明](LIN_PROOFS_IMPORT.md)。这不是所有类型的事实都已接入；
下面的手工事实结构目前仍是消费者需求清单，尚未全部由数据库接口构造。
本文件旧阶段的“没有新增公理”“外部事实都是参数”仅适用于原 `Near126`
接口及其独立审计，不再描述新 `LinProofs` 入口的信任边界。

## 当前工作目标（用户确认）

以论文证明为依据，为固定目标
`NonzeroSurvival sphereAdamsData (2, 128) computedH6Square`
整理并接入所需数学输入。先逐项说明条件的内容、来源、使用位置及与固定
对象的联系，再实现 Lean 接口；允许明确标记的外部假设，不要求本阶段
消除基础公理或完成最终证明，也不预先指定必须采用某种底层构造路线。

“内部”仅指使用 tower-derived `sphereAdamsData` 及 SSData/PreSS 接口，
不表示无公理，也不另造一条由计算表任意决定的谱序列。
验收时，下游应无需另选对象或补充未声明的假设；外部证据和待证内部引理
仍须明确区分。系统 goal 已重新设定为上述目标。

2026-09-26 按论文消费者重新核查的结果见
[最终目标输入审计](H6_INPUT_DEPENDENCY_AUDIT.md)。它记录数学要求及其与
现有实现的差异，不将“补 Hopf 实例”预设为唯一实现路线。

本文件记录主证明当前需要的计算输入，数学来源是 `aimpaper/main.tex`
第 7 节及 Appendix；不是“最终结论已经可证”的报告。
Blueprint 的完整计划仍在 `computation_schema.tex`、`computed_inputs.tex`
和 `near126.tex`。本次实现的是其中可直接落到内部 SSData 的第一部分。

## 已落地的接口

入口：`KIP126/External/Computation/Near126.lean`。

- `Names/Data.lean`：31 个原子表达式的 CSV 地址、归档名称、`(s,t)` 次数。
- `Names/Proofs.lean`：逐个核对地址处的真实名称和次数，使用 Lean 内核证明，
  不使用 `native_decide`，不将字符串相同当成谱序列比较定理。
- `Classes/Data.lean`：从实际 CSV 商代数构造复合元素及其乘法、加法。
  没有另行假设同名元素存在。`B` 是 CSV 第 82 号生成元，归档名称本身就是
  `(\Delta e_1+C_0+h_0^6h_5^2)`；没有假装已经分别定义这三个加项。
- `Sphere/Predicates.lean`：将这些具体元素经已有 `linToSphereE2`
  放进固定的 `sphereAdamsData`，微分使用这个对象原有的 `d`。
- `Sphere/Data.lean`：`SphereFacts` 的每个叶子都是 `ExternalEvidence`，
  分为 differential、survival、product、vanishing 四部分。
- `HopfCofiber/Data.lean`：第八条微分和最后的短入射排除已有语义接口，
  通用版本保留参数；新 `HopfCofiber/Fixed/Data.lean` 已将其限定到固定球面
  上一个指定映射的实际 cofiber，并构造底胞腔类。**尚无 Hopf 输入实例和
  顶胞腔提升的比较，不能称为完全接通。**
- `Sphere/Proofs.lean`：示例下游引理接受事实包，推出实际球面 `d₃` 非零，
  或在任意页调用指定类的入射排除。不是只返回一条字符串记录。
- `Sphere/Conditions/`：将 C3 和非零 d₁₂ 条件直接定义在固定 SSData 上；
  消费 W 的存活/靶穷尽与 T 的入射穷尽，证明 C3 下 T 只能被指定 d₁₂ 打中。
  没有假设 C3 成立，也没有排除 d₁₂。C4/C5 和完整二择一归约仍未接通。
- `Sphere/Boundaries/`：R10 的 P h₂、Q h₂ 属于真实 d₂ 的像的两项输入，
  及由 d₂²=0 推出的条件推论。具体 CSV 微分源与关系证书已找到，见
  [R10 归档复查](NEAR126_R10_CERTIFICATE.md)；尚非 Lean 证据包实例。

这些结构**没有全局实例**，没有新增 `axiom` 或 `sorry`，也没有把最终存活
结论作为字段。调用者仍须提供证据值；定义了字段不等于证明了字段。
固定球面与 Lin 比较仍依赖原有 `standardFoundation`、`linE2Presentation`。
本次既未消除这些假设，也未扩大其内容。

### 新增：从固定球面构造 cofiber 与页面映射

`SphereHopfInput` 不接收一个随意的辅助谱序列，而是接收同一基础范畴中的
`map : S³ → S⁰`，以及其实际过滤一 tower 提升代表指定 Lin `h₂` 的外部证据。
`SphereFiltrationOneRepresents` 要求提升确实复合为该稳定映射，并通过真实
exact-couple 的 `J` 和第二页商映射代表 `h₂`，而不是只记录一个名称。
这尚未给出该输入的实例，也不声称此条件唯一指定几何 Hopf 映射。

以下对象和性质已由构造给出，不再作为外部计算事实假设：

- `sphereMapCofiber`、两个胞腔映射和 distinguished cofiber triangle；
- `sphereMapCofiberAdams`：同一个 `H𝔽₂` unit 对该 cofiber 的 tower 谱序列；
- 稳定映射诱导的 tower 映射、层映射及其与 `I/J/K` 的相容性；
- 诱导映射保持实际 `Z_r/B_r`，因而给出 quotient-page 和 SSData E₂ 映射；
- `sphereMapCofiberBottomE2`、`sphereMapCofiberTopE2` 是构造的映射；
- `N.ybar`、`N.tbar` 固定为实际 bottom E₂ 映射作用于具体 `Y`、`T`；
  `N.xbar topLift` 固定为 `topLift+i(x126,8)+i(x126,8,2)`。

若采用这一实现，需要提供 `N`，并把 top-map 的目标（`ΣS³` 的 tower E₂）
与球面的重分次 E₂ 比较。`X[4]` 不是唯一指定的类：要求同一组选定元素
同时满足 top-map 等式和 D8，而不是给任意提升贴上此名称。
Mahowald 定理的 crossing 条件是两个分支的析取；若使用零长度 q-extension
的自动无 crossing 分支，不必额外假设 D8 无 crossing。另需短入射排除等
证据及 synthetic 比较。当前尚未建立诱导 quotient-page 映射与所有 `d_r` 的
交换定理；需要它的消费者不得从“映射已经定义”自动推断这一性质。

## 页数、次数与非零的约定

`x_{n,s}` 的第一个下标是 stem，不是内部次数；页面坐标是 `(s,n+s)`。
`d_r : E_r^(s,t) → E_r^(s+r,t+r-1)`。

`RepresentsOnPage` 要求 E₂ 类和 Eᵣ 类来自同一个后期循环代表元。
不存在一个把任意 E₂ 元素无条件送到 Eᵣ 的函数。
`Survival r x` 要求相应 Eᵣ 类非零；不声称 `d_r(x)=0`。
`Differential r x y` 要求实际 Eᵣ 上的非零等式，并附带两端的代表元关系。
`NotHit x` 只排除入射，`NoOutgoing x` 只排除出射；两者都没有被冒充为
`NonzeroSurvival`。歧义字段保留完整析取，不提前选一个微分值。

记 `V=x123,9+h0*x123,8`，`U=h0²*x124,8`，
`T=h1*h4*x109,12`，`W=x126,8,4+x126,8`，
`Y=h0²*x125,9,2`，`X=h1*x121,7`，`P=h6*Md0`，`Q=h5*x91,11`。

## D：图中的微分

下表的页次数已经体现在 Lean 命题中。来源标签均在 `aimpaper/main.tex`。

| ID | 谱、微分 | 源 → 靶 `(s,t)` | 来源 / 状态 |
| --- | --- | --- | --- |
| D1 | 球面 `d₂(x125,8)=h1 V+U` | (8,133) → (10,134) | `fact:x1239`；固定对象接口 |
| D2 | 球面 `d₂(h6)=h0 h5²` | (1,64) → (3,65) | `lem:toda2ext` 证明；固定对象接口 |
| D3 | 球面 `d₂(h0⁶h6)=h0 B` | (7,70) → (9,71) | 同上；固定对象接口 |
| D4 | 球面 `d₃(h4 x109,12)=h1 x122,15,2` | (13,137) → (16,139) | `lem:x1239` 证明；固定对象接口 |
| D5 | 球面 `d₃(h0² x123,13,2)=h0² x122,16` | (15,138) → (18,140) | 同上；固定对象接口 |
| D6 | 球面 `d₃(x126,4)=h0² x125,5` | (4,130) → (7,132) | `lem:toda2ext` 证明；固定对象接口 |
| D7 | 球面 `d₇(x123,11,2+x123,11+h0 h6 B4)=h1 x121,17` | (11,134) → (18,140) | `lem:x1239` 证明；固定对象接口 |
| D8 | Cν `d₃(X[4]+x126,8[0]+x126,8,2[0])=Y[0]` | (8,134) → (11,136) | `lem:nuext125`；对象/胞腔映射连接待办 |
| D9 | 球面 `d₃(x126,6)` 是 `h5 x94,8` 或 `h5 x94,8+h6 B`，且非零 | (6,132) → (9,134) | `fact:theta5sqAF` 后的 remark；固定对象接口 |

以上是原文断言的登记和数学命题接口，不是重新运行 Lin 的验证结果。
每个 `ExternalEvidence` 值还应附上真实 archive/query/disproof 的出处。
尤其不能仅凭 E₂ CSV 或已转录的 Appendix 行构造这些证据。

## S/P/V：已写入球面包的其他输入

| 分组 | 已有字段的含义 | 原文来源 |
| --- | --- | --- |
| S1 | W 非零存活到 E₆；T 无出射；T 只可能被 d₆(W) 或 d₁₂(h6²) 打中 | `fact:theta5sqAF` |
| S2 | U 非零永久存活；(25,150) 的 E₅ 只有零与 `g⁴ Δh1g` 这一个非零类 | 同上 |
| S3 | W 的 d₆ 只能是零或 T；`e0 Δh6g` 永久存活 | `prop:possibleh62` 证明 |
| S4 | V 到 E₁₂，Y 到 E₅，X 到 E₆，三者均无入射微分 | `fact:x1239`、`fact:h02x1259`、`fact:h1x1217` |
| S5 | P、Q 非零永久存活 | `fact:stem122` |
| P1 | `h5² B=0`；T 不为 h0 的倍数 | `lem:toda2ext` 证明 |
| P2 | T 不为 h2 的倍数；`X h2=0`；Y 不为 h2 的倍数 | `prop:state5false`、`lem:nuext125` 证明 |
| P3 | `h1(e0 Δh6g)=0` | `lem:x1239`、`prop:possibleh62` 证明 |
| V1 | stem 125 的 E₂，0≤s≤4 全为零 | `Table:S125.19` |
| V2 | stem 124 的 (s=11,E₅)、(s=12,E₄) 分量为零 | `Table:S124.12` |
| V3 | stem 125 的 (s=12,E₄)、(s=13,E₅) 分量为零 | `Table:S125.19` |

V2 特意不是“s=11 的 E₄ 为零”：表中仍有出射 d₄。
S4 特意不包括 `d₅(Y)=0`，那是后续在额外假设下推导的结论。
T 的“无出射”特意不写成非零永久存活，否则会提前排除本来要讨论的 d₁₂。
P 类字段原则上可由现有代数的可检查计算证书消除；没有必要永久作为外部输入。

## 尚未闭合的计算输入（不能说“包已经足够”）

下面是按证明消费点整理的剩余工作，不把 synthetic 结论偷放成 raw Lin 输出。
其中每一个“所有/只有/没有”都要有完整候选空间、线性组合处理及搜索界限。

| ID | 需要的输入或有限证书 | 消费点 / Blueprint 节点 | 接入缺口 |
| --- | --- | --- | --- |
| R1 | 指定权重的 λ-torsion 排除；θ5 选择差异的高过滤项 | `evidence:theta5-order-torsion` | 需要 classical/synthetic 比较；群结构与阶数归文献包 |
| R2 | stem124 低过滤候选及 AF13 循环乘 h1 为零，区分循环与暂存页类 | `evidence:near126-indeterminacy` | V2 不足以代替完整代表元/indeterminacy 分析 |
| R3 | θ5² 过滤至少10；10–13候选；更高过滤只剩 tmf 可检测项所需的完整表和范围界限 | `evidence:theta5-square-tmf` | 有部分消失字段；synthetic 推论及高过滤尾部界限未完成 |
| R4 | `lem:x1239` 中 λ11/λ9 商的其余候选消失与代表元选择 | `lem:near126-alpha-relations` | D4/D5/D7 不能单独替代穷尽性 |
| R5 | Toda 所在截断群 AF≤12 的三个生成项及其线性组合；Massey 的零不定性 | `lem:toda-two-extension` | 需要群、乘法、截断比较；不是简单三选一就能覆盖任意和 |
| R6 | Moss 的 crossing 排除及 synthetic Toda 的零不定性/阶数检查 | `thm:moss-convergence-adapter`、`lem:toda-two-extension` | Moss crossing 与本项目另一种 crossing 不能混用 |
| R7 | 换代表元后的 h0-extension 不定性消失 | `lem:near126-two-extension-indeterminacy` | 需把逐候选乘法/微分与 synthetic 比较接起来 |
| R8 | 同一个 Cν、i/q 和指定元素；D8；Mahowald 页数与 crossing 析取条件 | `lem:near126-nu-extension` | 实际 cofiber/page-map 构造是可用路线之一；尚须同一组选取的比较证据、E₂→E₃ 传输，以及与论文相符的 Mahowald 消费接口，详见输入审计 M1–M9 |
| R9 | 从 mod λ3 升到 mod λ5 的 AF10 纠正项逐个不存在或可消去 | `evidence:nu-extension-obstruction-vanishing` | 需要实际候选、选择/消失证书，而不是仅把“可提升”改名 |
| R10 | stem122 AF≤12 的 P/Q 候选穷尽；P h2、Q h2 被 d₂ 打中；AF13 纠正项的消失 | `evidence:stem122-product-exhaustion` | 两项乘积边界已定型，已从哈希匹配 CSV 找到具体源和关系证书；数据/真实 d₂ 比较、候选穷尽与 synthetic 推导仍待办 |
| R11 | Cν 中 T[0] 不被 2≤r≤5 打中；覆盖源的所有线性组合 | `evidence:cnu126-short-incoming-exclusion` | 新 specialization 已将目标固定为实际 i(T)；Hopf 输入实例与完整证书待办 |

R3 的有限数据区域不能直接排除区域之外的所有 r；必须另有范围定理。
R5/R10 若用“生成元表”来穷尽，也必须覆盖生成元的和，不只检查每一个名字。
原 Blueprint 个别 evidence 节点将有限计算和后续推理合述；本包不因此把
“得到所需 extension / ν 可除性 / h6² 永久存活”直接当输入。

## 独立于计算事实包的数学依赖

仍需 BJM/BX、Xu/IWX 的 θ5 群结构/阶数、tmf Hurewicz 检测等文献输入；
以及 synthetic rigidity、λ-Bockstein/ESS 比较、乘法与检测相容、Toda/Moss、
Generalized Mahowald Trick 和本论文自己的归约证明。
即使上面所有计算证据都提供完毕，也不能略过这些数学连接。

## 校验与后续顺序

聚焦校验入口：`KIP126.Checks.ClassicalAdams.ComputationFacts`。
审计拒绝新增命名公理、`sorryAx`、KIPBase、Mathlib 谱序列适配器或 Challenge
证明依赖。外部事实始终是参数，所以审计通过不等于外部事实已被证明。

本次已通过：上述聚焦编译/审计、`lake build +KIP126`（库入口及其依赖，
不是全仓库所有目标）、`leanblueprint web`、
`lake exe checkdecls blueprint/lean_decls` 和 `git diff --check`。
依赖审计中，坐标与通用引理仅用 Lean 基础公理；两个固定球面条件引理
另依赖既有 `standardFoundation` 与 `linE2Presentation`。入口构建保留了
原有 Challenge 的 `sorry` 警告；本次新代码没有新增这些占位证明。

Hopf/cofiber 接入推进后再次通过：
`KIP126.Checks.ClassicalAdams.HopfCofiber`、原 `ComputationFacts` 回归、
`lake build +KIP126`、Blueprint web 与声明链接检查。
新 tower/page 自然性引理仅使用 Lean 基础公理；固定 cofiber 的构造和
页面映射另依赖既有 `standardFoundation`，没有额外全局公理或 `sorry`。

上述构建记录是此前实现的机械检查，不证明数学接口已经充分。
本次消费者审计发现 Mahowald 占位接口与论文条件不一致，以及 near-126
旧接口尚未绑定固定 SSData 目标；详见输入审计的“现有消费者缺口”。
下一步先按该审计修正/明确消费端的语义要求，再选择实现相应输入，
不继续默认以构造更多 Hopf 底层代码为优先项。
最终目标文件未修改：它的 `sorry` 仍然表示完整证明尚未完成。
