# 步骤四交付记录

## 完成程度

本轮修复并验证了有限证书实现，**步骤四的全部论文覆盖目标尚未完成**。当前实现验证的是“外部导入的有限数据集和相应证书是否满足已经形式化的有限检查条件”，而不是从论文的原始拓扑对象重新计算全部 Adams 谱序列和稳定同伦群结果。

本报告不将需求登记、归档行、数量清单或合成样例称为论文结论证明。全部 17 条 CSV 需求及额外依赖的状态见 `coverage.md` / `coverage.json`。

## 当前检查点

最新构建26514与全声明审计16266均实际退出0：3784个构建任务、1576个注册模块、70972个声明，覆盖3078个外部输入/137个库。当前源文件/对象指纹复核8183也实际退出0。见 `tests/lake-e6-e18-closure-checkpoint.json`、`tests/kernel-axioms-3784-checkpoint.json`。新增48模块已统一构建和审计；步骤四仍未全部完成，数学缺口见 `ClaimCoverage.json`。

新成果的独立审查已包括：Fact7.13原始E2类的条件性全页累积边界排除；Fact7.6(4)同一命名E2输入的实际E5唯一非零商类；Fact7.6(2)无需旧Csigmasq指定类d5循环前提的推导；row2907整列候选及全E5零空间。全部实际解释条件仍显式保留。全17项覆盖审查另补出Fact7.15与7.19的全页no-hit缺口，不能把有限存活等同于这些子结论。

此前1127模块的全声明审计 session39821 实际退出0，检查59637个声明，仅依赖标准公理；当时的源/对象指纹核对通过。完整 C++ 及 CLI 回归 session76198 实际退出0，见 `tests/regression-fact713-detectors-checkpoint.json`。新增图解析器、固定输入请求及独立数学模型检查均已通过。准确状态见 `tests/CONTINUATION_CHECKPOINT.md`；较早成功和失败证据均保留，后续直接编译不改写历史 Lake 检查点。

本次统一构建纳入并独立审查的结果包括：row2773 的实际 d4 零值推导及全商坐标命名、row2994 两种候选的独立1283/1284项相容族、共同有限 E8 路径、同一固定 E2 元素的条件性实际 E8 构造，以及 Fact7.19 的条件性实际 E6 构造。`fact713_e8_cert` 绑定输入/输出向量并拒绝错误长度；`fact719_cert` 绑定调用者给定的实际初始元素。完整实际微分、映射和商解释仍必须提供 Lean 证明；这些成果不证明实际 E12、永久性或球谱识别。

现有共同有限基础另包括：358块/95事件/102前页步骤的共享族；399块扩展补齐36条入射事件的有限目标商；45个过滤位置的两种完整有限 E4 商均为24维。105基生成元中有101个记录槽，其中99个有值、2个NULL待定（2696、2852）；95条命名阻碍不等于101个独立排除。

所有计数、结论层级及剩余义务以 `ClaimCoverage.json` 为准。旧3056任务/1003模块、2832任务/873模块等检查点仅代表其当时范围，不是当前全项目通过证据。

## 本轮新增可验证结果

- LinearCertificates：实际F2矩阵像/非像/核、d²=0、链映射；分离泛函排除所有可能线性组合，证明不依赖单行匹配。
- MilnorCertificates：标准Milnor余乘法公式的有限窗口对偶乘法，完整系数检查、独立C++导出、文件导入及milnor_cert。
- ResolutionCertificates：C++求收缩同伦；矩阵恒等式推出任意循环为边界；另有链同伦边界差定理。
- ResolutionCertificates/HomologyBasis：通过秩一分解恒等式证明全部同调由指定非零类张成，量化任意循环而非仅候选列表。
- PropagationCertificates/Branches：作用域隔离的假设引入、解除和穷尽分情况检查器，防止T/TI假设泄漏；尚未翻译真实日志分支。
- PageCertificates：实际非零同调、全候选及唯一候选证书；检查器和导入可靠性定理、page_cert。跨页transport仍显式要求Lean证明。
- PropagationCertificates：普通零/线性性/Leibniz/自然性DAG；模型定律和外部前提必须以Lean证明提供；严格导入、逐步诊断与C++导出。
- 所有49谱数据库已实际获取和导出，替换“没有真实数据”的旧限制。9740个附录范围线性查询已全部通过98批内核证明；2512个d2平方为零命题全部通过26批串行内核检查。共12252条矩阵定理、124批，最终验收脚本通过。
- 固定发布审计修正早期清单：115个派生映射、36个交换关系；证明日志3份2672275行，20种源码标签、17种实际已知标签及NULL；2098356条假设分支不视为已证明。

各模块的独立README给出输入语法、数学定义、证书结构、C++批量命令、tactic和限制。旧接口保留，不能将旧有限记录查询当成新增同调语义。

## 早期继续实现记录

本轮完成的语义桥接及仍未证明的义务见 `continuation_status.md`。
新增StaircaseCertificates（可逆基变换/有限过滤）、PageTransitionCertificates（真实同调商等价）、NamedElementCertificates（14个实际命名表达式及任意特征2交换环中的关系求值）、AdvancedRuleCertificates（连接同态和仿射候选）。各目录README说明证书、导出、导入、检查器、tactic和限制。

已独立校验所有49谱258345个staircase基底及双侧逆；6003个附录基变换和2512个实际d2同调商证书由Lean可执行检查通过，全部通过112个串行内核批次，日志见`tests/staircase-kernel.log`与`tests/transition-kernel.log`。加旧12252条，共20767条有限数据定理、236批，两个验收脚本均通过。

早期全库构建通过1097个任务；新增链映射诱导商映射、模关系求值/Cnu底胞绑定、矩阵自然性、过滤一致性和所有仿射候选非零同调检查。严格JSON导入支持`induced_map%`、`module_bundle%`，模求值使用`module_cert`，所有外部关系仍需显式证明。

新增构建日志`tests/continuation-build.log`、C++回归`tests/continuation-cpp.log`，来源一致性`tests/staircase-source-test.log`。命名标量和实际d2等式不是孤立合成例子，但其与真实Ext/Adams对象的识别仍为未证明义务。

## 文件和接口

可靠性定理索引见 `checker_theorems.md`；当前数学缺口逐项见 `implementation_status.md`。

手写/维护源文件清单见 `source_file_inventory.txt`；完整文件清单见 `file_inventory.txt`（包含生成文件及 `.lake` 产物，清单自身也登记）。主要源文件：

| 文件 | 作用 |
|---|---|
| cert_export.cpp / Makefile | 六种命令与批量导出、C++ 回归入口 |
| certificate_format.md | 归档 JSONL 与有限语义 JSON 格式 |
| KervaireProgram/Model.lean | 双次数、类、微分、有限 Adams 表、次数与存在性检查 |
| KervaireProgram/Certificate.lean | 六种 ResultSpec、五种 Evidence、Certificate、Bundle |
| KervaireProgram/Checker.lean | 可执行检查、有限数学语义、可靠性定理 |
| KervaireProgram/Import.lean | 严格 JSON 解码、诊断、导入可靠性、文件导入 elaborator |
| KervaireProgram/KervaireClaims.lean | 全部 17 条原文需求；数量和 ID 唯一性定理 |
| LinProgramCertificates/CertificateFormat.lean | 通用文本容器解析；不是 JSON 语义导入 |
| LinProgramCertificates/Verifier.lean | CertificateVerifier 可靠性接口 |
| LinProgramCertificates/Tactic.lean | lin_cert / lin_cert_diagnose |
| LinProgramCertificates/KervaireTactic.lean | kervaire_cert |
| LinProgramCertificates/Examples.lean | 六类批量样例、成功证明、失败检查、公理审计 |
| CheckFile.lean | 按行校验证书并报告行号、字段、证书索引 |
| tests/test_export.py / tests/test_import.py | 导出一致性与语义导入破坏性回归 |
| tests/lean-sequential.sh | 本环境严格串行编译入口 |
| input_provenance.json | 用户指定的七份本地资料及 SHA-256 |

## 输入、输出和批量能力

`claims` 读取 CSV 并导出 17 条需求；`manifest` 导出 295 行，含 header、summary、49 个谱、180 个映射占位项、61 个余纤维占位项（旧manifest；真实配置另见upstream/category-inventory.json）、3 条外部输入。旧manifest只有占位序号；本轮已经归档真实配置，但尚未证明其拓扑意义。

`adams` / `proofs` 流式归档 CSV，不执行数学推导。`finite` 读取规范 CSV，导出一个可被 Lean 解析的 Bundle；notHit、survives、permanent、differential、uniqueSurvivor、ruledOut 六类均可在同一输入中批量生成。`self-test` 检查基本哈希与 CSV 功能。实际论文的候选集合、线性组合、E2 和传播证明不能由 finite 自动补齐。

## 可靠性与用法

`checkFiniteResult_sound` 证明核心证据蕴含有限命题；`checkResult_sound` 加入数据与查询合法性；`check_sound` 加入版本和对象匹配；`checkBundle_sound` 逐项推出 Bundle 中所有结果；`importLine_sound` 保证导入成功必然满足 checkBundle。另有 `dataWellFormed_sound`、`differentialWellFormed_sound`，后者明确推出 `(s,t) -> (s+r,t+r-1)`。

```lean
import LinProgramCertificates.KervaireTactic
open KervaireProgram

def b : Bundle := kervaire_bundle% "examples/finite_sample.json"
example : ResultValid b.data (.permanent 9) := by
  kervaire_cert using Evidence.permanent []
example : checkBundle b = true := by decide
```

文件 elaborator 只产生数据。真正证明通过通用 verifier 的 sound 与内核 decide 建立，没有 native_decide。旧文本容器 `ImportedCertificate.decodingCorrect : Prop` 只是元数据，未用于授权证明。

## 错误定位

C++ 报 CSV 行列格式问题并非零退出；streaming 输出可能保留前缀，必须丢弃失败输出。Lean CLI `lake env lean --run CheckFile.lean FILE` 返回非零失败状态，诊断包含路径、行、字段及证书索引；数学错误区分 data、claim、evidence、object、version。tactic 失败由内核 decide 报告；`lin_cert_diagnose` 使用对应诊断实例报告字段、矩阵行列和失败原因；诊断求值不用于生成证明。缺少诊断实例时仍走可靠性定理与内核检查。

## 信任边界

C++、CSV、JSON、哈希、导入 elaborator 均不作为数学证明来源。带类型的外部模型定律和前提均必须提供Lean证明，不能仅用Prop字段占位。早期公理审计包括44组记录，见`axiom_audit.json`及`ProofAudit.lean`。当前已审计声明只依赖明确列出的 Lean 标准公理 `propext`、`Classical.choice`、`Quot.sound`；无自定义公理，无 sorry，无隐式信任 C++。来源为 `external_input` 的三条手工微分明确保留，不能直接通过语义导入。

有限表完备性仅相对于输入列表；不是对真实 Adams 谱序列的完备性证明。微分存在被解释为“出现在输入表且双次数正确”，不是已证明的拓扑微分。即使用户自行将人工微分写入 finite 输入，所得定理也仍仅关于这张有限表。

## 构建及测试

在项目根执行 `make -C program clean all test`；在 program 下执行 `lake build`、`bash tests/lean-sequential.sh`、`python3 tests/test_import.py`。本机 lake 命令使用用户指定 ELAN_HOME，并按需设置 `/tmp/lean_proc_shim.so`、LEAN_SYSROOT、LAKE_HOME。没有同时运行多个 lake build。

新增回归：扩展库构建578 jobs通过；五族导入CLI正例和未知字段拒绝通过；262个矩阵穷举与4个正合/4个拒绝案例通过；全部258345个源SQL块逐坐标独立比对通过。

早期验证结果：`make clean all test` 成功；`lake build` 成功（当时扩展构建578 jobs，后续1097 jobs）；严格串行模块编译成功；CLI 正面及 11 类负面测试通过。

日志：`tests/cpp-test.log`、`tests/full-build.log`（扩展库）、`tests/lake-build.log`（旧轮）、`tests/lean-build.log`、`tests/import-test.log`。C++ 测试检查哈希、可复现性、全部 ID、清单数量、未知值、非法 CSV、六种语义导出。Lean 测试包含六类成功证书及不存在类、无效页数、错误次数、重复类、错误计数、遗漏入射等失败案例；CLI 测试包括未知/外部/清单状态、重复/多余字段、格式/对象/版本错误。

## 尚未完成的数学内容

1. 从 49 个 CW 谱的定义及 Steenrod 模作用构造真实 E2、乘法、映射和选定 d2。
2. 实际配置对象已取得；180个直接映射、115个派生映射和61个余纤维序列的拓扑识别及全部数学证书未完成。
3. 有限矩阵商空间、线性组合、仿射候选与d²=0已有证明；它们与真实Adams页及允许候选的比较、扩张、广义Leibniz/Mahowald完整规则仍未证明。
4. d2数据库到线性证书及2512个有限同调比较已转换；14个标量表达式与Cnu底胞已有绑定；全部后续页面、扩张及其拓扑识别仍未完成。
5. 三条人工微分的来源定理、101/105 排除中的归纳论证，以及到稳定同伦和 Kervaire 结论的拓扑桥接。

这些缺口不能通过给字符串换标签、构造占位编号或检查 101 <= 105 消除；因此本轮不能宣称完整步骤四已完成。


## 新增批量数据文件

- `release-certificates/*-d2.jsonl`：49谱原始d2矩阵及unknown标记；`manifest.json`为数据库SHA256。
- `appendix-d2-linear.jsonl`：9740条完整入射矩阵的基向量查询；`appendix-d2-queries.json`绑定谱和次数，并列未解决块。
- `lean-batches/Batch000..097.lean`：每批最多100条独立内核定理；批内case编号对应JSON批次，namespace标明批号。
- `complex-batches/`：2512条原数据库相邻d2矩阵复合为零定理。
- `AppendixD2.lean`：完整单文件版本，生成可复现，但实际验收使用小批次降低内存；不要同时运行单文件和批次编译。
- `tests/appendix-kernel.log`、`tests/complex-kernel.log`：逐批验收记录。
- `proof_release_audit.json`、`propagation_sources.md`：全部真实日志规则计数、前提范围、数据出处。

这些真实数据内核定理仍关于导入矩阵。它们不自动命名Fact7.x中的乘积，不证明该矩阵为真实Adams微分。
