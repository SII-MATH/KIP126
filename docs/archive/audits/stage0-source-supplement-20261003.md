# 第 0 步修订后的来源补证（2026-10-03）

本记录补充本轮实际取得的原始材料，并区分原文、数据解释和项目比较证明。本记录的接口路径与状态对应 2026-10-03 快照；其中 Challenge1 接线等历史架构已被后续修订取代，当前责任见 [STAGE0_INTERFACES.md](../../STAGE0_INTERFACES.md)。本记录不宣称 `sorry` 已消除，也不把脚本通过等同于数学证明完成。

## IWX 作者数据：已直接核验

来源为 Isaksen–Wang–Xu 的 [Zenodo 2022 v1 作者数据](https://zenodo.org/records/6987157)。本轮直接下载两份经典 Adams CSV 和配套 `README-Adams.pdf`；网页公布的两个 CSV MD5 与下载内容一致。文件原样存入 [IWX/data](../../../Source/IWX/data)，SHA256 固定在 [来源台账](../../external-inputs.json)。以下行号包括表头。

| 材料 | 本轮直接读取的位置 | 支持的内容 |
| --- | --- | --- |
| `Adams-classical-E2.csv` | 第 59 行：`g`，stem 20，AF 4；筛选该双次数后只有此行 | `g` 所在 E₂ 的唯一非零标签；仍需同一 cobar/实际塔比较 |
| 同上 | 第 275 行：`D h1 g`，stem 45，AF 9；筛选后只有此行 | `Δh₁g` 的标签和一维性；不是任意非零元素的命名 |
| `Adams-classical-Einfty.csv` | 第 204–207 行；stem 62 的全部四行 | `h5^2`、`h5 n`、`E1 + C0`、`R`，过滤分别为 2、6、8、10 |
| 同上与 README 第 3 页 | 这四行的 `h0info`、`h0target` 全空；README 解释空目标及隐藏乘 2 扩张标记 | 数据指定没有乘 2 扩张；配合收敛，支持整个 2-complete 62 茎指数为 2，以及过滤 3–5 无新分次 |
| README 第 2–3 页 | E₂/E∞ 列格式 | `shift` 是同双次数多个点的显示偏移；它不是谱序列过滤 |

三份文件的 SHA256：

- E₂：`0b103227bf84d8c335b3e65c91219e1e2a7913bc95bac03f2ba52011abfaaa4c`
- E∞：`1e3b79c97472241543f1c58e713cf4c96447f553d99a94a7fc6ce3eeaac8393b`
- README：`954227755b91ece8284acca2c1942d2d2fb97a6e811b3de255e79ce407e4e0bf`

这关闭了原先没有实读 IWX 表行的证据缺口。它没有自动给出本项目模型的检测、乘法比较或计算原始证明的 Lean 认证。尤其 tmf 中同伦乘积非零仍不能替代高次 E₂ 标签的 `NonzeroSurvival`。

## Ravenel：本轮直接读取作者公开书稿

已下载并固定 [作者公开 PDF](https://www.sas.rochester.edu/mth/sites/doug-ravenel/mybooks/ravenel.pdf)，保存为 [Ravenel/ravenel.pdf](../../../Source/Ravenel/ravenel.pdf)，SHA256 为 `880c053ba8f2d1695e2d8bae5ef28f9b7f737324ea43d420173c7219409528ab`。这是直接读取书中陈述和证明，不表示读过其引用的全部 Adams 原论文。

- Theorem 3.4.5(a)，印刷页 87 / PDF 第 107 页：正茎消失界为 `t-s < 2s-ε`，其中 `ε≤3`，故项目采用的严格较窄界 `0<t-s<2s-3` 正确；证明见印刷页 89。
- Lemma 2.1.12，印刷页 46 / PDF 第 66 页：Adams 塔同伦逆极限消失给出实际过滤的交为零；不是仅给出任意分次同构。
- Theorem 2.1.1(b)、Lemmas 2.1.15–16 及其证明，印刷页 41–47；Theorem 2.2.13，印刷页 52：保留普通 connective finite-type 源与完成后的目标之间的比较。将其用于本项目 derived 2-complete 标准球及固定实际 Adams 塔仍是 Interface 证明责任。

`Range.standard_sphere_vanishing` 与 `Range.standard_sphere_separated` 已成为独立生产目标。后者按主论文 `main.tex:135–141` 的 2-completed 球约定书写，不再对全整系数未局部化球声称分离。

## BHS：条件原文与内部应用已分开

直接核过的本地 BHS 原文仍是 `SynRevBigraded.tex` 的 A.1 和 `SynRevAdams.tex` 的有限商证明、`cor:tau-surj`。

- 有限商 lift / Bockstein 保持较一般的适用范围。`lemm:comp1` 证明有限 `Cτ^pνX` 完备；不能把无限版本的 X 完备条件机械加到有限结论。
- 无限 permanent lift、filtration/λ、realization/detection 的来源字段均保留 `BHSObjectApplicability`，即实际 E-nilpotent completeness 与 strong convergence。
- `BHSCompletionData` 给出实际 q；`BHSCompletionApplicability`、`BHSCompletionComparison` 交付源适用性及 q/νq 的页面、提升像、过滤和有限整除比较。
- `BHSRealizationSourceResults` 是带条件源结果；`BHSRealizationComparison` 明示 realization 自然性、实际检测及指定提升/有限扭提升反射。`RealizationDetection` 是内部应用结论。
- `BHS.bhs_completed_sources` 是独立构造目标，涉及标准球、同一 ν 的余纤维、同一 connective finite-type tmf 及其移位。tmf 只提供适用性所需的范围事实；构造不以 `high125`、C 总包或 T 为前提。

标准源范畴改为 derived 2-complete 本身，并不代替有界下有限型对象的 Moore-2/HF₂ 完成比较和实际 Adams 塔收敛证明。这些责任必须由上述 producer 交付。

## 尚未直接取得的原始材料

| 项目 | 本轮证据等级与限制 |
| --- | --- |
| Moss 1970 原扫描 | 未直接读取；不得标为原文已核验 |
| Belmont–Kong v1 | 已直接读 [2021 原始预印本](https://arxiv.org/pdf/2112.08689v1) 的 Theorem 1.1/4.11、Definition 2.10、Proposition 4.10 范围说明。可作为球的乘法塔版本来源，但需要实际配对/复合比较；第 2 页明确 Proposition 4.10 的乘法限制，不能据此验证任意对象的复合版本 |
| Toda 1962 Theorem 3.6 | 官方书籍预览未给出完整所需正文。本地 IWX `thm:Toda-symmetric` / Corollary 6.2 是 C-motivic；到本项目 synthetic Toda 的转移仍是 `TodaSecondaryComparison` 内部证明目标 |
| BR21 精确 d₃ | 本次后续已取得作者公开原书并直接核验 Thm.5.18/Table5.4，详见下方新增核查节；原书 βg⁴ 到当前 β⁵g 的商环等式已实际证明，真实 tmf/坐标比较仍保留证明债 |
| Adams/May 全一线 | 台账已覆盖根 `adamsOneLine` 全族，但本轮未实读全部原论文；不把旧单点包装当作全族证明 |
| image-J 手工种子 | 仍为原文来源/认证证明债。已有固定 claim 的独立认证目标可承担证明；未证明某一额外 seed 为最窄 T 必需，故不单凭缺单独 seed lemma 判接口阻塞 |

## 本轮检查

`python3 scripts/check_route_literature.py` 核对路线 10 个输入字段、根 Literature 6 个字段、来源角色、声明清单、文件哈希、BHS/V/S 独立 producer 覆盖和三组 IWX CSV 精确选择。`--lean-check` 另生成真实导入模块与声明归属检查，须由当前集成构建执行；普通 Python 检查不声称 Lean 编译或数学证明通过。

工具 README 已按本地论文修正：Example 6.19 是 Mahowald 应用；跨页结果为 Proposition 6.20 / Corollary 6.23，6.21 是公式号。三个工具的 Law 位于 Def，独立待证 theorem 位于 Main/Solution/Tools。


## 本轮相关存在接口与实际源复核补充

- 实际经典源现按全部整数 HF₂ cohomology equivalences 的右正交定义 HF₂-local category；仅对同一 completed sphere 单独比较 Moore-2 完成。实际源 HF₂ 以稳定 π 的真实 zero/addition 和其他度消失刻画。此前全局 Moore/HF₂ 范围意见已解决。
- 全谱 smash 已给 even-index prespectrum、实际 maps、同一 tensor 的全范围自然比较。按本次直接核读 [MMSS §11 Def.11.6 / Prop.11.7 / Prop.11.9](https://math.uchicago.edu/~may/PAPERS/mmssLMSDec30.pdf)（印刷 p.35 / PDF p.35），范围进一步统一到实际 CW homotopy type；`BasedSpace.HasCWType` 使用 Mathlib CW complex 与固定基点双向同伦，`diagonalSmash_stable_left/right` 单列保稳定等价义务。先前 generator-only 意见和本轮 CW 范围意见均已解决为准确接口。
- Def 只固定目标 T 所用的实际经典背景；辅助完整路线由 Challenge2 和来源一起存在性交付。新增 `Interface/Solution/Literature/Route/SourceExistence.lean` 的 `source_background_exists` 精确给出 ∃route, ∃bindings, Nonempty LiteratureInterface。它不含 C、route Application、high125 NonzeroSurvival、新论文工具或 T。
- 这属于 Pstr hypercomplete 构造及其他已列前人成果的受限相关存在后果，连同内部源组装的证明目标；并不宣称 Def 已经构造或唯一刻画 Pstr 的 ∞-site/ν。其原文构造和内部比较证明仍保留为允许的 sorry 债。A、C 与后续 application 必须消费同一个 route。
- BHS.lean 的三个 source adapter 现在显式消费同一路线上的 SyntheticSourceInputs / BHSRealizationSourceResults；它们以投影证明，继续保留 nilpotent completeness 与 strong convergence 前提。同一球特化消费 Challenge1 的 `standardSphereApplicability`。

此处不提升此前 Moss 原始扫描、Toda 原书的证据等级；BR21 的后续直接补证见下节。


## BR21 作者原书的新增直接核验

本次补证已取得并逐项阅读 [作者公开的 AMS 获准预出版原书](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/rognes-bruner-tmf-book.pdf)，未改动 PDF 保存于 `Source/BR21/paper.pdf`，708 页，SHA256 `cad4df7d4f6057408e7ec90d8b7003f5658cdd46ee5eb3972d66eaef86f6e1b1`。带 PDF 页码的本地抽取文本另存 paper.txt。这里明确采用作者预出版版本，未声称已逐页核对最终出版版。

| 原文位置 | 本次直接核实内容 | 当前坐标适配 |
| --- | --- | --- |
| Table 3.3，PDF 165 / 印刷 148 | β、g、γ、w₂ 的 (stem,s) 为 (15,3)、(20,4)、(25,5)、(48,8) | 固定 CSV 的 gen7、gen9、gen10、gen12；实际源至 tmf 页的比较仍须生产 |
| Tables 3.4/3.5，PDF 166/168 / 印刷 149/151 | βγ=g²、β³=γg | 固定 relationPowers 中恰有这两条关系 |
| Remark 5.9，PDF 207 / 印刷 190 | d₃(w₂²)=βg⁴ 的推导 | 原书目标先独立记录为 Br21BookStatement |
| Table 5.4 / Theorem 5.18，PDF 213 / 印刷 196 | 正式微分表列出 d₃(w₂²)=βg⁴ | 源 (s,t)=(16,112)，靶 (19,114) |

在固定 F₂ 多项式商中，两条关系给出 g³=β⁴，从而 βg⁴=β⁵g。`CsvE2.g_square_eq_beta_gamma`、`g_gamma_eq_beta_cube`、`g_cube_eq_beta_four`、`betaGFourValue_eq_betaFiveGValue` 现在给出真实 Lean 商环证明，不增加 sorry。等式再经同一个 E₂ comparison 运输；`br21Statement_of_book` 据此将原书目标改写为既有接口目标。

`tmfBookDifferentialInterface` 仍承担真实 tmf 谱、单位、坐标与 Adams 塔的来源识别，其复杂证明保留 sorry；不能用同名或同次数代替该识别。此前本文将 BR21 原书标为未直接核验的结论已被本次补证取代，Moss/Toda 的证据等级不因此升级。

另按责任边界修正：high125 的非零 associated grade 属 Main 的 A+C+vanishing+separation 推论。Challenge2.Application 已删除 tmf 字段；Statements.toInputs 接受显式 Main TmfInputs；旧 Nonempty Inputs 的 A 别名已删除。BMQ 的实际同伦乘积像非零仍保留为来源结果。
