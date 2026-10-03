# 本文工具的证明义务

三个工具共用 `Kervaire.Route.Model H M Syn`。命题语言 `GeneralizedLeibnizLaw`、`GeneralizedMahowaldLaw` 和 `FinitePageExtensionStretchingLaw` 位于 `Def/Kervaire/Route/Tools`；本目录提供独立的待证定理，目前证明为 `sorry`。定理只接收同一模型上已应用的文献比较，以及各 Law 明示的条件；没有接收总包 `Challenge2`、计算交付 C、选定 stage witness 或本文结论。

| 文件 | 来源与准确含义 | 尚未完成 |
| --- | --- | --- |
| GeneralizedLeibniz.lean | Theorem 6.1；Adams 微分次数 `(r,r-1)`、扩张次数 `(n,n)`；代表和 crossing 属于同一 D | 从 `SyntheticInputs D` 完成本文证明 |
| GeneralizedMahowald.lean | Theorem 6.12；May Lemma 6.11 的几何步骤；实际 distinguished triangle、同一实际塔的 suspension 比较及 `NormalizedTriangleCompatible` 前提；结论模指定普通边界 | 从 `SyntheticInputs D` 和 `MayInput Syn` 完成本文证明；Example 6.19 是应用实例 |
| PageExtensionStretching.lean | Proposition 6.20 / Corollary 6.23 的有限充分条件版本；包含 `b=0` 的障碍也须排除 | 完成证明，并在应用处检验较强前提；不提供无限提升 |

基础语言见 `Def/Kervaire/Route/Extensions`：有限与无限关系是实际同伦映射的两项过滤复形中的解，目标不定性是该复形的较短边界。无限关系没有要求整个 π₀ 有有限过滤，也没有断言任意指定的早期严格解均可提升。

`Def/Kervaire/Route/Model` 固定同一 H、ν、family、实际塔过滤、λ 商及 λ/ρ/δ 相容性。`Interface/Challenge/Challenge2.lean` 分别记录原文结果、完成源的适用性和实际 q/νq 比较；其中 BHS 无限提升及 realization/detection 的适用前提须由独立 producer 交付。三个工具定理没有进入文献来源输入。

编号已与本地 `MainPaper/main.tex`、`paper.txt` 对读：`exam:Mahowald` 是 Example 6.19，`prop:dec738d3` 是 Proposition 6.20，`cor:dfc6043e` 是 Corollary 6.23；6.21 是公式编号。接口责任见 [STAGE0_INTERFACES.md](../../../../docs/STAGE0_INTERFACES.md)。

旧 PageExtension 通用原型保留供兼容性和已有引理使用；本路线不消费其独立选择的有界 family。
