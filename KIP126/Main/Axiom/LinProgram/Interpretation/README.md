# Interpretation：从记录到内部数学命题

## 1. 原先期望包含什么

本目录说明一条生成记录对 KIP126 的固定内部对象究竟声称什么。解释必须保留谱名、页面、次数、坐标、条件和搜索范围，不能把记录缺失、空坐标或 E₂ 非零擅自加强为永久存活。

## 2. 现在包含什么

| 组件 | 当前职责 |
| --- | --- |
| [BasisTable.lean](BasisTable.lean)、[Basis/Algebra](Basis/Algebra/README.md) | 从同一个 Challenge2 见证取得 CSV 基认证，构造指定基与坐标；认证生产者在 Interface |
| `Presentation/` | `LinE2Presentation` 的数据和消费定理；对应开发 axiom 在上层 `Presentation.lean` |
| `Basis/`、`Classes/`、`Expressions/`、`Tower/`、`Sphere.lean` | 把 Lin E₂ 数据连接到固定球谱 Adams 对象的现有解释层 |
| `Differential/` | 基于 presentation 的一般计算差分与长层推导 |
| `Differentials/` | `DifferentialRow`、`HasCoordinates`、`DifferentialStatement`、统一见证投影 `sphereTable_sound` 和 lookup API |
| [Selected](Selected/README.md) | 六条 bulk lookup theorem，以及 `records.json` 中六条 bulk 记录和一条独立 `basis.d2` 元数据 |

`DifferentialStatement` 要求 E₂ 坐标在 Eᵣ 有共同代表元，并陈述固定 `sphereAdamsData` 上的实际 `dᵣ` 等式；它不会因为坐标列表非空就附送 Eᵣ 非零性。

## 3. 大概完成度

**陈述覆盖：当前六类计划计算接口中有 2/6 可用。** 固定 E₂ presentation 和闭合球面有限页差分已有明确类型。条件分支、其他谱、extension、sentinel，以及维数/消失/候选穷尽没有同等精确的解释。

**实现状态：消费路径已接通，可靠性仍是假设。** 固定 lookup 能产生 `DifferentialStatement`，六条 selected 差分已由真实 bulk lookup 复现；但 `linE2Presentation`、`basisTable_correct` 与 `sphereTable_sound` 均来自 `challenge2` 开发期存在性 axiom，没有验证 `info` 推理链或复演机器证明。

完成度与 `sorry` 数量无关。本次基认证改由 Challenge2 交付，基础 Challenge1 不再携带该计算事实；没有填补认证证明。

## 4. 接下来还需要完成什么

- 为完整原始 schema 建立解释，而不是只消费有损 `DifferentialRow`。
- 分别定义分支、反证、状态、map/extension 和其他谱对象的语义。
- 审核 basis completeness、E₂ presentation 与差分表可靠性之间的依赖边界。
- 建立 checker soundness theorem，逐类替换统一 axiom。
- 保证 Main axiom 与 Interface desired theorem 的完整类型一致。
- #132–#135 解决后重新审查相关谱序列基础；当前不把这些受影响陈述标成可靠冻结。

## 5. 后续应该一步一步如何做

1. 冻结每种 record 对应的精确 proposition 及禁止推出的额外结论。
2. 用真实小范围记录建立正例、反例和条件保持测试。
3. 让 selected theorem 始终只是 generated lookup 的机械消费。
4. 实现 proof-trace checker，并证明 checker 成功蕴含相应内部命题。
5. 对已验证类别替换 axiom；未验证类别继续显式登记为假设。
