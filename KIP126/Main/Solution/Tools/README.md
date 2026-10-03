# 本文工具的证明义务

三个命题现在都使用同一个 `Kervaire.Route.Model H M Syn`，不再另外接收可独立选择的 `NormalizedPageFamily`。它们是待证的 `Prop` 定义，属于本文推导，不是 M 的字段，也不是前人输入 A(M)。

| 文件 | 来源与准确含义 | 尚未完成 |
| --- | --- | --- |
| GeneralizedLeibniz.lean | Theorem 6.1；Adams 微分次数 `(r,r-1)`、扩张次数 `(n,n)`；全部代表和 crossing 来自同一个 D | 提供 D 上的文献比较输入，完成论文证明 |
| GeneralizedMahowald.lean | Theorem 6.12；实际 distinguished triangle、D 的 normalized maps、同一实际塔的 suspension 比较及 `NormalizedTriangleCompatible` 前提；结论只模指定的普通边界 | 文献提升三角输入及本文证明 |
| PageExtensionStretching.lean | Proposition 6.20 / Corollary 6.21 的明确充分条件版本；包含 `b=0` 的障碍也须排除 | 证明，以及在应用处检验较强前提 |

基础语言见 `Def/Kervaire/Route/Extensions`：有限与无限关系都是实际同伦映射的两项过滤复形中的解；目标不定性是该复形的较短边界。无限关系不再要求整个 π₀ 有有限过滤，也不声称任意指定的早期严格解都可提升。

`Def/Kervaire/Route/Model` 固定同一 H、ν、family、实际塔过滤、λ 商及 λ/ρ/δ 相容性。`Challenge2.lean` 明确所需文献输入如何绑定同一个 D；工具定理本身没有进入该输入清单。M 接口冻结记录与完整路线清单见 [M_INPUT_FREEZE.md](../../../../docs/M_INPUT_FREEZE.md)。

旧的 PageExtension 通用原型保留供兼容性和已有引理使用；本证明路线已不消费其独立选择的有界 family。
