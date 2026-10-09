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

## 真实自然性日志的条件传输

`Raw/Naturality.lean` 保留完整的两条原始行，球面输出以 Lean 定理核对 `RawData.shard51[43]`。`Interface/Solution/LinProgram/Naturality.lean` 使用：

- 同一 `standardRouteModel.auxiliary.etaMap` 的实际余纤维 `Ceta`。
- 实际连接映射 `topCell : Ceta → ΣS1`。
- 已构造的 `adamsInternalE2Induced_hasDifferential`。
- 同一固定 route 的两次 `classicalSuspension`。
- 同一个传入 `LinE2Presentation P` 的源、目标比较。

`row245130_topCell` 给出从实际来源微分到实际 `ΣS1` 像微分的条件定理。`row245131` 的结论正是固定原生输出的 `DifferentialStatement P output245131`，额外前提全部显式：

1. `CetaCoordinates` 必须最终被识别为缺失 Ceta 原生数据库的实际坐标；当前函数参数本身不是该识别的证明。
2. `SourceEquation coordinates`：实际 Ceta 上 `(2,19)[0]` 至 `(5,21)[0]` 的 `d3`。
3. 两次降悬各自对源、目标的四条 `DesuspendsClass` 比较。
4. `DoubleDesuspensionCompatible`：对**所有**页、次数与所有代表元，固定两次降悬保持实际微分。该通用命题仍未证明。单次悬移的连接方块带负号，不能直接假定单次同号律。
5. 固定 Def 模型本身的既有基础待证命题仍保留。

`Ceta_AdamsSS_t200.db` 和 `map_AdamsSS_Ceta_to_S0_t200.db` 当前未归档；相邻日志并不提供完整 trace 或映射矩阵。额外目标 462481 只记录精确缺失来源，不把无 trace 状态当作已重放。

```sh
lake build KIP126.Checks.ClassicalAdams.LinNaturalityReplay
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

## 后续依赖与实际接入边界

| 目标 | 精确剩余义务 | 可复用模块 |
| --- | --- | --- |
| 152097 反驳 | 在同一实际 E4 上构造乘积，证明与两条已闭合 CSV 等式兼容，并从 trial 的微分和 multiplier 的零微分得到诊断的零源微分 | `TowerLongLayer/Pairing`、`ReplayProducts`、`TrialRefuted` |
| E4 Leibniz | 构造实际长层配对的 `ProjectionCompatible`、`BoundaryCompatible` 和 `RelativeBoundaryFormula` 实例；最后一个命题不能重新作为黑箱输入并声称已解决 | `TowerLongLayer/Pairing/Sphere/Stage` 的既有闭合三角比较 |
| 目标非 B3 | 对 `(9,47)` 的 `x0³*x36`，证明同一比较下 `¬ IsBoundaryBy sphereAdamsData 3 (9,47) z`；完整早期差分/边界空间及相关 d2 种子都必须证明 | `State/Proofs` 的实际商页零判据 |
| 来源到达 E4 | 对 `(4,42)[1]` 给出实际 `ReachesPage`；先前 C2h6/Ctheta5 路径的对象、映射和坐标不能由日志存在推出 | 既有实际 tower / top-cell 比较 |
| 候选覆盖 | 对准确 context/window 构造 `CandidateCoverage`，排除全部其他候选；保留 trial 数量不是覆盖证明 | 既有 `CandidateElimination.sound` / `CandidateExhaustion.sound` |
| secondary d2 种子 5487 | 已提取的有限链见证需要 Lean checker；还需分解的正合/极小性和实际 secondary operation 与同一球面 d2 的比较 | `Translate/extract-secondary-witness.py` 与 issue152 原有审计 |
| 245131 实际认证 | 实例化上述来源、四条坐标比较、双降悬通用定理；补来源原始数据和实际比较 | `Naturality` |
| 消费者迁移 | 只有实际已经供给的结果才接到同一 `literature`、`bindings.presentation`、`standardRouteModel`；不读取待构造的 `Interface.Solution.challenge2` 来制造 producer | 现有 `ComputationResults`/Main 消费层 |

本次没有新项目公理、Challenge2 根字段、独立 literature、替代实际模型或总交付读取。较早复用的 `row5434` 是由同一 literature 中 one-line 定理和独立坐标证书得到的条件实际结果，不等于重放原生 secondary 算法。

## 统一校验

```sh
lake build KIP126.Checks.AdamsE2.LinReplayProducts \
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

来源清单（26 sources/114 artifacts）、来源审计18项、外部输入51项、边界布局18项、Blueprint frontier15项和活动依赖解析已通过。原有 E2、staircase、proofs、route 重建检查通过。统一六项 Lean 构建已通过（3504 jobs）；自然性条件封装与导入/公理审计通过；来源声明/module/field 的 Lean 校验通过；Blueprint web 渲染通过（固定 0.0.20 环境，仅原有 `relax` renderer 警告）。原生合同8项测试通过。

本机的固定 renderer 位于 `/tmp/kip126-lean-retry-blueprint/bin`，重放时可将该目录加入 PATH 后运行 `leanblueprint web`。
