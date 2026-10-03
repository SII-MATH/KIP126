# 第 7 节固定记录与认证责任

`selected.json` 记录筛选范围、来源与摘要，`Raw.lean` 定义记录格式，
`Selected.lean` 保存固定的 648 个次数、963 个基向量和 671 条结论记录。
明确的空基次数仍属交付；没有记录的次数不自动是零。

671 条记录的完整来源各不相同。忽略 `origin` 和 `record`，按谱、种类、页数、
源靶次数及坐标去重，得到 474 个相同的数学 payload：286 个出现一次，179 个出现
两次，9 个出现三次，共 197 个额外副本。两端 staircase 和 log/ss 可以记录同一
方程；所有 671 条 provenance 均保留。`Statement` 忽略来源标记，已证明的
`statement_with_provenance` 明确这一点；它不证明任何 payload 为真。

认证仍需 `CertifiedRealization` 的基、CSV、乘法、标签、结论、底胞腔和顶胞腔
七类精确目标。`results` 同时包括手工来源的结论：例如 ss7370/7947 对应 log71643
的 image-J 微分。记录存在不是数学证明；可独立证明该精确命题，或在重放原程序
推导时先证明相应手工种子，不能把它伪装成程序自动产生的基础事实。

log2411720 的原始推导调用本文广义 Leibniz 规则，所选 ss2791/3011 保留同一方程。
选择重放该路径时，认证要先使用独立的规则证明，并证明实例中的所有循环、
extension 和 no-crossing 条件。规则命题在 `Def/Kervaire/Route/Tools`，独立证明
目标在 `Main/Solution/Tools`，Interface 的 `LinProgram/Rules` 提供复用入口。
这些证明目标尚含 `sorry`，不依赖完整 C(M)、Main 的阶段公理或最终定理。
也可直接证明固定输出，接口不强制采用原程序的证明算法。

筛选检查、摘要一致、坐标合法、来源相同和数值去重均不代替这些数学认证。
