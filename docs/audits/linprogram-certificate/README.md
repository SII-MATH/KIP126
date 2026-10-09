# Lin 原生证书执行记录

日期：2026-10-09。工作分支：`codex/linprogram-certificate`。
工作区：`/inspire/hdd/global_user/czxs25250150/linprogram-certificate`。

本记录按用户明确要求的依赖顺序推进。所引用 Page 的 P0–P7 正文尚未能从当前会话读取，已请求正文；以下里程碑不是对未读取的分期验收条款的复述。旧 issue152 工作以现有模块复用，本次新增结果分别核验。

## 固定原生输入与 statement 合同

`KIP126/LinProgram/Raw/manifest.json` 保留原始数据库/CSV 的固定摘要，并纳入 `ss.json` 在既有 `select-route.py` 中已经固定的 SHA256：
`a9a623bf7165e62fcf455e454fdf9195237491bf07bd148902e245aa1dba64d8`。
其来源仍登记在唯一 canonical manifest `docs/external-inputs.json` 的既有 `lwx_machine` 条目下。

确定性 `Translate/native-contract.py` 输出
`Generated/NativeContract/manifest.json`，固定原始行、字段、坐标、辅助多项式见证及缺失依赖。它检查输入哈希与提取结果，不宣称完成 Lean 或实际数学认证。

| 原生目标 | 完整数学坐标 | 当前状态 |
| --- | --- | --- |
| 根结论 152098，`D` | S0，`d4:(4,42)[1] → (8,45)[]` | 实际微分待证 |
| 保留 trial 152097，`T` | 相同源，候选目标 `[0]`；诊断得到 `d4:(5,44)[] → (9,47)[0]` | 乘积部分已闭合；分支整体待证 |
| 来源候选 245130，`D` | Ceta，`d3:(2,19)[0] → (5,21)[0]` | 来源微分及原生坐标绑定待证 |
| 自然性 245131，`N` | S0，`d3:(2,17)[0] → (5,19)[0]`，`info=Ceta__S0` | 条件传输；不是实际认证 |

`stem=t-s`，列表索引从零开始。SQL NULL、`-1`/`[null]` 未知值、空字符串零向量严格区分。有限微分页限于 `2 ≤ r < 999`；阈值及到达某页不自动升级为非零永久存活。论文别名不进入这些原生目标。

重放命令（以下均在本工作区执行）：

```sh
python3 KIP126/LinProgram/Translate/native-contract.py --check
python3 KIP126/LinProgram/Translate/test-native-contract.py
python3 KIP126/LinProgram/Translate/test-pinned-inputs.py
```

## 闭合的固定数据商代数证书

使用现有 `KIP126.LinE2.E2`：变量为 `Fin 2914`，系数为 F2，理想含完整归档关系及原有的 `t > 261` 截断。没有另建小型替代代数。

`KIP126.LinE2.ReplayProducts.native_source_product_zero` 证明：

```text
projection (monomialOfString "0,2,1,1,3,1,18,1") = 0
```

`KIP126.LinE2.ReplayProducts.native_target_product` 证明：

```text
projection (monomialOfString "1,1,9,1,13,1") =
projection (monomialOfString "0,3,36,1")
```

对应原生生成元等式为 `x0²*x1*x3*x18=0` 与 `x1*x9*x13=x0³*x36`，次数分别为 `(5,44)` 与 `(9,47)`。

所用 CSV 关系记录序号（零基，不计 header）为 `0,25,187,189`。新 `lin_relation` 战术仅提出原始字符串的分解；Lean 内核通过 `rfl`、`decide +kernel` 和通用成员定理检查它。随后由 `csv_relation_zero` 和环恒等式得到商中的结果。

```sh
lake build KIP126.Checks.AdamsE2.LinReplayProducts
```

检查包括传递公理审计、禁止 Interface/Main 导入、未知关系与错配关系证书拒绝、错误指数不能复用当前证书。最后一项不是证明错误目标在商中不相等。

结果：两条原生定理已单独编译，传递依赖仅 `propext`、`Classical.choice`、`Quot.sound`，无 `sorryAx` 或项目公理。这是实际固定数据商的闭合认证；尚不证明球面上的 152098 微分。

`ReplayCoordinates` 进一步把这些等式绑定到四条确切归档行：`(4,42)[1]="0,2,3,1,18,1"`、`(1,2)[0]="1,1"`、`(8,45)[0]="9,1,13,1"`、`(9,47)[0]="0,3,36,1"`。每条行的成员性、商值与同质次数均由 Lean 核查，得到 `source_mul_multiplier : mulAt source dataH1 = 0` 和 `multiplier_mul_trialTarget : mulAt dataH1 trialTarget = productTarget`，公理仅为标准逻辑公理。

`Interface.Solution.LinProgram.ReplayProducts` 通过同一个 `P.comparison_mul` 运输两式。其结论针对该 presentation 的 `P.product`；实际高页球面乘积比较仍待证。它继承现有 `LinE2Presentation` 的固定模型基础依赖，不读取待构造的总交付。

```sh
lake build KIP126.Checks.AdamsE2.LinReplayCoordinates \
  KIP126.Interface.Solution.LinProgram.ReplayProducts
```

## 真实自然性日志的条件传输

`Raw/Naturality.lean` 保留完整的两条原始行，球面输出以 Lean 定理核对 `RawData.shard51[43]`。`Interface/Solution/LinProgram/Naturality.lean` 使用：

- 同一 `standardRouteModel.auxiliary.etaMap` 的实际余纤维 `Ceta`。
- 实际连接映射 `topCell : Ceta → ΣS1`。
- 已构造的 `adamsInternalE2Induced_hasDifferential`。
- 同一固定 route 的两次 `classicalSuspension`。
- 同一个传入 `LinE2Presentation P` 的源、目标比较。

`row245130_topCell` 给出从实际来源微分到实际 `ΣS1` 像微分的条件定理。`row245131_native` 固定使用 `(2,17)[0]="0,1,7,1"` 和 `(5,19)[0]="0,1,8,1"` 的已构造商元素；两项 `HasCoordinates` 均已证明且无 `sorryAx`，不再是调用方前提。原 `row245131` 保留通用坐标接口。二者结论都是固定原生输出的 `DifferentialStatement P output245131`，额外前提全部显式：

1. `CetaCoordinates` 必须最终被识别为已固定 Ceta 原生数据库的实际坐标；当前函数参数本身不是该识别的证明。
2. `SourceEquation coordinates`：实际 Ceta 上 `(2,19)[0]` 至 `(5,21)[0]` 的 `d3`。
3. 两次降悬各自对源、目标的四条 `DesuspendsClass` 比较。
4. 固定 Def 模型本身的既有基础待证命题仍保留。

此前的 `DoubleDesuspensionCompatible` 前提已解除：`doubleDesuspensionCompatible` 由泛型 `TowerComparison.hasDifferential_desuspendTwice` 实例化同一固定 route 的两份 tower comparison 得到。该泛型定理保留**所有**整数页、次数与代表元量词，从真实单次反交换律证明两负号抵消；固定模型实例仍继承其原有基础义务。

已从本机保存的**同版本原始归档**补入 `Ceta_AdamsSS_t200.db` 和 `map_AdamsSS_Ceta_to_S0_t200.db`。归档为 `kervaire_database.rar`，82746451 字节，MD5 `91ea5d8ef613828b9ef66f6d9f879166`，与既有 `Source/LWXMachine/zenodo-record.json` 核对一致。两份实体的大小、SHA256、归档成员及提取命令均记在同一 canonical manifest；按仓库原有规则存储为 LFS。

原生基底行 id69 为 `7,1,1`、id80 为 `8,1,1`，模块生成元 1 的像为 S0 的 `0,1`。固定 schema 和映射版本元数据后，两个所需局部矩阵都是 `[[1]]`，将两端 `[0]` 精确送到原生日志的 `[0]`。互反 staircase 行也固定在快照中。这是数据库中存储的模块生成元像的形式线性延拓及直接单项式匹配，仍不是实际谱序列映射比较。

相邻日志及这些原生矩阵不提供来源微分的证明。额外目标 462481 的原生源数据可继续查取；其实际来源微分及比较仍未认证。来源审计在只存在 LFS 指针时明确报告 metadata-only；`native-contract.py` 必须读取并哈希验证实体字节，不能用指针代替数据核验。原生输入加载器还严格核对指针完整格式、登记 OID 和大小，在构造缓存路径前拒绝畸形或错配指针；7 项实体/指针/缓存回归测试通过。

```sh
lake build KIP126.Checks.AdamsE2.LinNaturalityCoordinates \
  KIP126.Checks.ClassicalAdams.LinNaturalityReplay
```

## 分支规则已闭合的部分

新通用定理 `HasDifferential.isBoundaryBy_of_source_zero` 对任意实际内部谱序列证明：

```text
3 ≤ r → HasDifferential E r p q 0 y → IsBoundaryBy E (r-1) q y
```

其否定推论与 `TrialRefuted.of_zero_source` 保留完整祖先上下文。`LinReplayRules` 对 152097 诊断的精确参数 `r=4,p=(5,44),q=(9,47)` 检查。源代表元由唯一性为零，实际线性微分也为零，实际商页零判据给出早期边界。

```sh
lake build KIP126.Checks.ClassicalAdams.LinReplayRules
```

三个新定理的独立 Lean 编译和传递公理审计已通过，仅使用标准逻辑公理。实际目标的 `¬ IsBoundaryBy ... 3 ...` 仍是数学义务，数据库的文字断言不提供其证明。

## 已闭合的悬移与重编号规则

`Suspension.TowerComparison.desuspend_adamsI`、`desuspend_adamsJ`、`desuspend_adamsK` 已从既有 tower/layer 方块证明：前两项交换，K 带负号。所有整数次数及 tower stages 保留，没有加入新的 differential-compatibility 假设。实际有限循环与边界的保持也已经证明；循环见证的负号来自同一个 K 方块。

`SSDataMorphism.representsOnPage_reindexed` 和 `hasDifferential_reindexed` 保持规范商页映射，并支持任意次数重排；微分传输要求重排与微分次数平移相容及真实交换方块。它们不要求重排为加法同态。旧 ordinary 自然性接口的完整类型保持，并从新通用规则推出。

I/J/K、这两条重编号规则以及 `desuspendPage_differential` 均通过独立编译和传递公理审计，只依赖标准逻辑公理。后者对所有自然页 `r ≥ 1` 给出真实商页微分的单次降悬反交换公式，保留目标次数转换。有限及无限循环、边界的保持也已闭合。内部真实 SSDataMorphism、规范页映射比较、单次内部反交换律和两次降悬合成现均已闭合。`desuspendTwiceInternalPage_d` 与 `hasDifferential_desuspendTwice` 的传递公理同样只有标准逻辑公理，`row245131` 已删除额外通用兼容性参数。

```sh
lake build KIP126.Checks.ClassicalAdams.LinSuspensionReplay
```

## 后续依赖与实际接入边界

| 目标 | 精确剩余义务 | 可复用模块 |
| --- | --- | --- |
| 152097 反驳 | 在同一实际 E4 上构造乘积，证明与两条已闭合 CSV 等式兼容，并从 trial 的微分和 multiplier 的零微分得到诊断的零源微分 | `TowerLongLayer/Pairing`、`ReplayProducts`、`TrialRefuted` |
| E4 Leibniz | 构造实际长层配对的 `ProjectionCompatible`、`BoundaryCompatible` 和 `RelativeBoundaryFormula` 实例；最后一个命题不能重新作为黑箱输入并声称已解决 | `TowerLongLayer/Pairing/Sphere/Stage` 的既有闭合三角比较 |
| 目标非 B3 | 对 `(9,47)` 的 `x0³*x36`，证明同一比较下 `¬ IsBoundaryBy sphereAdamsData 3 (9,47) z`；完整早期差分/边界空间及相关 d2 种子都必须证明 | `State/Proofs` 的实际商页零判据 |
| 来源到达 E4 | 对 `(4,42)[1]` 给出实际 `ReachesPage`；先前 C2h6/Ctheta5 路径的对象、映射和坐标不能由日志存在推出 | 既有实际 tower / top-cell 比较 |
| 候选覆盖 | 对准确 context/window 构造 `CandidateCoverage`，排除全部其他候选；保留 trial 数量不是覆盖证明 | 既有 `CandidateElimination.sound` / `CandidateExhaustion.sound` |
| secondary d2 种子 5487 | 已提取的有限链见证需要 Lean checker；还需分解的正合/极小性和实际 secondary operation 与同一球面 d2 的比较 | `Translate/extract-secondary-witness.py` 与 issue152 原有审计 |
| 245131 实际认证 | 实例化上述来源及四条坐标比较；来源原始数据已补，双降悬通用定理已闭合；仍需实际比较 | `Naturality` |
| 消费者迁移 | 只有实际已经供给的结果才接到同一 `literature`、`bindings.presentation`、`standardRouteModel`；不读取待构造的 `Interface.Solution.challenge2` 来制造 producer | 现有 `ComputationResults`/Main 消费层 |

本次没有新项目公理、Challenge2 根字段、独立 literature、替代实际模型或总交付读取。较早复用的 `row5434` 是由同一 literature 中 one-line 定理和独立坐标证书得到的条件实际结果，不等于重放原生 secondary 算法。

## 统一校验

```sh
lake build KIP126.Checks.AdamsE2.LinReplayProducts \
  KIP126.Checks.AdamsE2.LinReplayCoordinates \
  KIP126.Checks.AdamsE2.LinNaturalityCoordinates \
  KIP126.Checks.ClassicalAdams.LinSuspensionReplay \
  KIP126.Interface.Solution.LinProgram.ReplayProducts \
  KIP126.Checks.ClassicalAdams.LinNaturalityReplay \
  KIP126.Checks.ClassicalAdams.LinReplayRules \
  KIP126.Checks.ClassicalAdams.LinLowStemProducer \
  KIP126.Checks.ClassicalAdams.LinOneLineProducer \
  KIP126.Checks.ClassicalAdams.LinReplayStagePairing
python3 scripts/check_source_inventory.py
python3 -m scripts.test_check_source_inventory
python3 -m scripts.test_external_inputs
python3 scripts/check_external_inputs.py --lean-check /tmp/linprogram-certificate-external.lean
lake env lean /tmp/linprogram-certificate-external.lean
python3 scripts/test_stage_boundary_layout.py
python3 scripts/blueprint_frontier.py --output-dir /tmp/linprogram-certificate-frontier
python3 -m scripts.test_blueprint_frontier
leanblueprint web
git diff --check
```

来源清单（26 sources/116 artifacts）、来源审计22项、外部输入51项、边界布局18项、Blueprint frontier15项和活动依赖解析已通过。原有 E2、staircase、proofs、route 重建检查通过。统一六项 Lean 构建已通过（3504 jobs）；自然性条件封装与导入/公理审计通过；来源声明/module/field 的 Lean 校验通过；Blueprint web 渲染通过（固定 0.0.20 环境，仅原有 `relax` renderer 警告）。原生合同12项测试通过。第二批五目标正式构建通过（3498 jobs），包括固定原生坐标、双降悬、固定坐标自然性入口和同一presentation乘法运输。来源/字段静态核验与Blueprint渲染已重放；来源/字段Lean核验本轮重放及整个根库的完整声明检查都仍等待原有大型 `Main/Solution/Computation/Route.lean` 编译完成，尚不报告为通过。

本机的固定 renderer 位于 `/tmp/kip126-lean-retry-blueprint/bin`，重放时可将该目录加入 PATH 后运行 `leanblueprint web`。

## 远程研究资料复用

远程提交 `295adaedc` 的 `Lin-program/` 已原样合并，首批证书与合并提交 `2a3c5c5c7` 已同步远程。该独立研究项目没有到本仓库固定球面模型的比较证明；其有限范围认证不扩展为本次实际目标的认证。已有 `Ceta__S0` 代数块只覆盖源 `t≤12`，不覆盖本目标 `t=19,21`；S0 `(6,44)` 的导入 d2 矩阵也不是原生日志 5487 的 secondary 算法证明。

为后续有限链等式直接复用原有 Milnor 核，根 Lake 注册了九个非默认模块，未复制数学主体或纳入旧项目的全部生成批次。`MilnorCertificates.StableProduct` 已正式构建，打印的乘法/秩稳定性定理只有标准逻辑公理。
