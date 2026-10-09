# Step 4 certificate implementation

本轮继续实现了真实 F2 线性代数语义、Milnor 对偶乘法窗口、正合复形、同调候选和条件性传播检查器。详细交付与限制见 [delivery.md](delivery.md)，全部依赖状态见 [coverage.md](coverage.md)。**目前仍未证明全部 Kervaire 论文结论。**

## 本次继续实现

最新构建26514与全声明审计16266均实际退出0：3784个构建任务、1576个注册模块、70972个声明，覆盖3078个外部输入/137个库。当前源文件/对象指纹复核8183也实际退出0。见 `tests/lake-e6-e18-closure-checkpoint.json`、`tests/kernel-axioms-3784-checkpoint.json`。新增48模块已统一构建和审计；步骤四仍未全部完成，数学缺口见 `ClaimCoverage.json`。

覆盖审查补出 Fact7.13(1)、7.15、7.19 的全页“不被微分击中”子结论。`ActualFiniteNoHit` 已直接证明过滤度9下非零 E10 端点推出原始 E2 类不属于累积边界，并通过独立审查；这不等于 E12 存活或出射永久性。所有原始拓扑解释与人工微分来源仍单独列为义务。

当前全部 180 个直接映射已覆盖 t≤12 的有限代数证书检查：135 个模到模、43 个模到 S0、一个 S0 到 tmf、一个显式系数代换的半线性模到 tmf 映射。该范围不表示派生映射、全部次数或拓扑识别完成。Milnor 部分现有任意次数固定秩及稳定秩检查器、余乘法结合性、对偶卷积环与有限支撑子环。实际 S0 的有限支撑自由模微分、平方零和 t≤8 增广齐次正合性已证明；尚未识别为完整 Steenrod 分解或拓扑 Ext。

新增派生映射模块 `DerivedMapCertificates` 保留 115 条配置记录与全部 36 个交换声明的检查范围。部分交换声明在 E₂ 层有已验证非零反例，必须另行建立后续页语义；证书生成与内核批量通过状态分别记录于该目录审计文件。

`CofiberE2Certificates` 覆盖全部 61 个配置的 4440 个低次数非空中间位置：4411 个有限正合性结果、29 个非复形结果及其 8021 份映射依赖已通过 156 批内核检查。57 个配置与另外四个的循环次数位移不同；这些有限矩阵结论不自动建立拓扑余纤维长正合序列。

通用自由复形的 C++ JSONL 导出、严格 Lean 导入与 tactic 示例见 `GenericFreeComplexProducer/README.md` 和 `ExtComplexCertificates/GENERIC_FREE_COMPLEX.md`。实际 S0 八生成元示例包含非零路径相消，已由 Lean 证明真实微分平方零；一般齐次坐标完备性也已证明，分量矩阵与实际模正合性端到端桥接已通过，24 个实际齐次分量获证；普通未增广单位分量的正合性请求被拒绝。

## 已验证的扩展

`AllClaimLeibnizConditionalCertificates` 将 31 个零目标候选推进到 18 个条件下完整、13 个待解；row2693 的 Leibniz 条件保留在定理前提中。`AggregateTargetInventory` 已核对全部 105 个 stem 125 基生成元，并直接编译 45 个完整换基及任意向量逆变换证明；38/63/4 的记录分类不构成 101 项排除证明。

聚合事件进一步具备 261 条原始 E₂/基列坐标连接、78 个前页循环与非边界检查，以及 174 条端点轨迹。经 d4 映射、三个乘积检测及显式 staircase 语义下的高次数 d2 重建，现有 95 条有限事件（59 条出射、36 条入射）、102 个前序循环与非边界步骤、190 条端点路径。6 个事件尚未进入该共享快照，仍未得到 101 项拓扑排除。早期 87 条事件的统计保留为独立快照。

通用增广端新增 C++ 批量导出、严格导入和实际模正合性/H₀ 商证明，见 `GenericFreeComplexProducer/AUGMENTED_FORMAT.md`。9 个实际 T8 增广分量已直接通过内核，主 T8 全部 81 个分量及依赖审计已通过，统一构建已通过 2498 个任务。

原有 87 条已有完整比较的事件可通过 `FiniteEventProducer` 批量打包为 JSONL，并由 `AggregateTargetInventory.EventAudit.ExecutableAll` 严格导入、执行检查和证明可靠性；9 个直接编译批次通过。检查器表述有限坐标路径；带页数/双次数的包装及全部 87 条实际证书也已直接编译通过，统一构建已通过。

新增 event3254 的实际 C++ 有限证书和带页数证书见 `FiniteEventProducer/D4/` 与 `AggregateD4Conditional/Executable3254.lean`；两者已经通过内核，并与此前 87 条构成 88 条已验证流水线。

## 统一数据表绑定

`IndexedFamilyCertificates` 现把每个事件及其全部前页比较绑定到 `(谱对象, 页数, s, t)` 的共同数据表；336 块包含 39 个负过滤次数辅助位置。90 条事件共用同一个表，不能通过整体重标次数、换谱对象或替换完整矩阵冒充原结果。`Coherence` 另行检查全部已提供块、共享微分和连续页维数；缺失邻居仍需显式范围条件。

`Results.lean` 支持对给定输入、输出的 `DifferentialAt` 目标使用 `indexed_family_cert using certificate`，具体可编译示例见 `IndexedFamilyCertificates/ResultExamples.lean`。C++ 批量格式、失败位置和条件来源见 `IndexedFamilyProducer/README.md`。完整构建状态仍以进展文件和实际成功日志为准。

`Step4ContractAudit` 修复空证书列表绕过输入数据校验的问题，并证明了有限记录通过不能推出任意真实微分的反例；数学解释必须给出全部源向量的交换关系与目标坐标单射证明。

归档导出器 `lin-cert-export/1.1.0` 现支持真实 proof CSV 的引号内多行字段，并保留物理起始行号。全部三份发布 CSV 的 2,672,275 条记录已逐项对照验证，其中 2,094,337 条为多行记录；结果见 `tests/actual-proof-stream-audit.json`。这属于数据忠实性验证，不是全部传播规则的形式化重放。

高次数扩展见 `HighFiltrationD2Audit/README.md`、`HighFiltrationD2Certificates/` 与 `AggregateHighD2Conditional/README.md`。25 个完整基重建保留 15 个原始 NULL 单元；14 个矩阵语义链接需要显式 `StaircaseMeaning`。351 块 / 94 事件的新共享数据表在 `IndexedFamilyProducer/HighD2/` 独立保存，29 个生成模块及固定输入 tactic 示例已通过统一构建和当前文件审计；旧 336 块快照保持独立。双分支共有事件 2697 见 `AffineRemainingSearch/Pipeline/README.md`，不能把两个分支算作两条事件。

## 358 块共享族与语义请求

`IndexedD5Certificates` 已通过统一构建：358 个完整比较、95 条事件、102 个前页阶段。它在旧351块上扩展7块，复用旧证明并检查全部跨族相容性；旧直接编译记录与新的 Lake 文件指纹分别保存。运行 `python3 tests/assert_snapshot_lake.py IndexedFamilyProducer/D5` 可检查当前文件。

`SemanticTrajectoryCertificates/Request.lean` 将调用者提供的对象、页数、双次数、输入、输出绑定到同一语义端点。可靠性结论包括第2至r-1页的完整路径；真实对象、微分、商映射与矩阵的全元素比较仍必须由调用者证明。单项与批量 `lin_cert` 示例在 `RequestExample.lean`。新增 `D5All.lean` 为全部95条已有证明提供统一的条件性语义运输，无须重复归约整个族。

```sh
python3 IndexedFamilyProducer/D5/prepare_requests.py
lake env lean --run IndexedFamilyCertificates/RequestCheckFile.lean \
  IndexedFamilyProducer/D5/family-extension.json \
  IndexedFamilyProducer/D5/requests95.jsonl
```

该 CLI 逐行报告 `result.key`、`result.source`、`result.target` 与解析错误，错误后继续定位其他行，任意失败导致非零退出。CLI 运行结果是诊断；证明仍由 tactic 的内核归约及可靠性定理产生。

`AggregateEliminationCertificates` 将95条事件与105个原始基列逐一匹配；原快照有23条入射事件的同页目标完整比较；新增 `AggregateIncomingTargetCompletion` 用399块相容扩展族补齐其余13条，覆盖全部36条入射目标。3391使用 `Row3743Successor` 的显式已知后继条件，原358块快照未改。命名元素有非零微分不等于其全部线性组合被排除，反例和缺项清单均保留。分支事件2697、3151、3992分别处理未知列，不能作为同一固定数据表中的三个无条件拓扑结论。

`PermanentCycleCertificates` 新增有限前缀加全页消失定理的永久循环检查器及 `permanent_cert`。它要求真正的同调商定律和所有后续入射/出射空间为零的证明；负过滤次数只给入射页界，不能限制出射微分。四个论文永久性命题仍未实例化。完整解释下的晚期微分反例见 `Counterexamples.lean`。

`Stem125HomologyCertificates` 给出全部45个记录的stem125中心的完整有限d2同调商等价 `WholeHomology ≃ Vec 44`，保持加法，覆盖所有循环的边界陪集；输入的105维与既有换基逐项绑定。7个原始NULL列仍需显式staircase语义。d3仅28个中心37→23，另7维未覆盖；d4仅9维→2，不能据此声称全页E4/E5维数。

`UniqueHomologyCertificates` 的 `unique_homology_cert` 检查整个同调商的唯一非零类，附C++批量导出、严格导入与行级诊断。独立枚举260个复形、1159个具名向量，Lean接受159、拒绝1000。两种Fact7.6(4)有限边界选择均通过；实际Adams边界来源仍未证明。

## 过滤商上的扩张微分

`FilteredMapExtension` 从实际下降子群和过滤同态构造两项复形的源、目标商及诱导微分，证明下一源页为核、下一目标页为余核；`Crossing` 用该商微分方程定义 crossing 并推导所有代表元稳定性。`FilteredExtensionSquare` 从三条商扩张方程、交换方块及无 crossing 推出长度 `m+l-n` 的第四条方程，允许先修正原始代表元。该代数构造尚未识别为论文的合成拓扑对象。

`FilteredExtensionCertificates` 与 `FilteredExtensionProducer` 将固定完整有限过滤、矩阵、输入和输出接入 C++ 见证、严格 JSON 导入、可执行检查器及实际商微分可靠性证明。C++ 的2555个独立商关系案例得到604份规范证书；604条已在16批通过内核；独立审查还证明112条损坏证书被拒绝及真实非零商类。64维样例目前仅完成导入测试，未宣称内核有效性。

`FilteredCrossingCertificates` 进一步检查整个高过滤源子群的像，证明实际商微分的无 crossing 条件；596条批量证书已直接通过内核，8条具有 crossing 的有效扩张被拒绝。`FiniteFilteredSquareCertificates` 将四个完整过滤对象与三个扩张接入可执行检查器，直接得到第四条实际商扩张，允许修正原始非 cycle 代表元。对应 C++ 生成器在 `FiniteFilteredSquareProducer/`；863条实际输出已在23个直接编译模块获得内核证明。

`lin_cert_diagnose` 现调用对应诊断实例，报告实际失败层级、矩阵行列与原因；诊断求值不生成证明，最终仍使用可靠性定理和内核归约。

## 两项页系统与事件3152

`FilteredTwoTermSequence` 构造实际两项页微分及其核/像同调，并证明下一页与该同调加法同构，覆盖第零页、源过滤次数零和无负过滤入射的情况。`FilteredMapKernelGraded` / `FilteredMapCokernelGraded` 将源、目标比较到实际核及限制余核的诱导分次。`FilteredTwoTermLimit` 在明确 `G_q = 0` 条件下给出稳定页界 `n = q+t+1`；未从有限输入推断 Adams 滤过有界。

`Row2925EtaD4` 用完整实际 Leibniz 公式排除未知 d4 的第二坐标，无需假设 eta 为 d4 cycle。`Row3152BranchCertificates` 检查其余两分支的完整前序路径，提供固定输入/输出的 `row3152_cert using path` 和逐字段诊断。实际 d5 解释、下一页比较与更早路径仍为明确数学前提；入射群维数未指定，入射像为零由注入微分及平方零推出。两分支属于同一个事件，不改变共享95条快照。

## 完备证书与更完整的分支

`FilteredExtensionCertificateCompleteness` 证明现有精确有限语义等价于存在通过检查的证书，并提供显式有限搜索。小输入可用 `filtered_extension_search` 直接证明结果；搜索按证书位数指数增长，较大输入仍使用 C++ 导出的证书。此完备性不表示 C++ 实现本身已形式化。

`FilteredExtensionPageBridge` 将604条扩张、596条无 crossing 证书连接到真正构造的两项页微分，提供 `filtered_page_cert using c` 和固定输入诊断。`FilteredFiniteSourceLimit` 进一步证明有限源与分离目标滤过足以获得稳定页比较，允许整个目标滤过无界；序列群反例说明这一点。

`Row3151FullNeighborhood` 保留 row2708 导致的一维/二维入射源差异，纳入非零入射列，检查六个九键相容族，并证明明确局部条件下的矩阵穷尽。它补齐旧四分支仅一维入射源的范围限制，不把六种选择算成六条论文事件。

## 命名元素的实际商路径

`Fact713ConstructedE8` 从唯一一份初始 E2 加法坐标，沿实际同调商递归构造 E3-E8 坐标和同一个具名元素的非零 E8 端点。`Fact713D4Branches` 保留 row2994 的两种候选，分别证明1283/1284项有限族相容；两族共享该元素的 d2-d7 路径。Row2773 的 d4零值由完整乘法的实际商传递和 Leibniz 推出，仍显式要求实际模型解释。剩余140/139项依赖尚未覆盖，未得到实际 E12 定理。

`Fact719ConstructedActual` 同样构造给定具名 E2 输入到非零实际 E6 端点，提供 `fact719_cert using certificate named bindingProof`。`Fact713ConstructedE8.Request` 提供 `fact713_e8_cert using P`，同时检查输入向量、输出向量和长度，并支持批量请求及字段诊断。这些参数包含必须证明的完整数学解释；JSON 文件本身只能提供有限证书，不能补出真实球谱识别。

以上新增模块已直接编译并独立核验；是否纳入统一构建及公理审计，以当前检查点为准。

## 新模块

| 模块 | 语义 | 证书生成与导入 |
|---|---|---|
| LinearCertificates | 任意线性组合的像/非像、核、复形、链映射 | C++ 高斯消元；JSONL、文件导入、生成 Lean 定理 |
| MilnorCertificates | 明确 rank/degree 窗口内的 Milnor 对偶乘法 | C++ 余乘法展开；严格JSON；milnor_cert |
| ResolutionCertificates | 收缩同伦推出正合性，链同伦推出循环的边界差 | C++ 求解收缩矩阵；严格JSON；lin_cert |
| PageCertificates | 循环且非边界、全候选检查、唯一候选 | C++ 分离泛函经 Python 封装；page_cert |
| PropagationCertificates | 显式模型与前提下的普通线性性/Leibniz/自然性 | C++ 规范DAG；JSONL；propagation_cert |
| PageTransitionCertificates | 循环模边界商等价、诱导映射及坐标相容 | C++高斯消元与双交换方块；严格JSON、lin_cert |
| StaircaseCertificates | 可逆基变换、所选子空间、有限过滤一致性 | SQLite批量导出、严格JSON、lin_cert |
| NamedElementCertificates | 环/模关系见证的任意求值语义 | 命名数据导入、module_bundle%、module_cert |
| AdvancedRuleCertificates | 连接同态、所有仿射候选非零同调 | 显式结构前提、向量证书、connecting_cert/lin_cert |
| KervaireProgram | 旧有限记录模型，保留兼容性 | lin-cert-export finite；kervaire_cert |

```lean
import MilnorCertificates.Examples
open MilnorCertificates
example : IsMilnorProduct smallWindow [[2,0]] [[1,0]] [[3,0],[0,1]] := by
  milnor_cert using generate smallWindow
```

```lean
import LinearCertificates.Import
open LinearCertificates LinProgramCertificates
def c : WireCertificate := linear_certificate% "LinearCertificates/sample_image.json"
example : WireValid c := by lin_cert using ()
```

## 固定发布数据

`upstream/` 保存 Zenodo 14272279 发布包、校验和、实际49谱配置、规范UTF8数据和全部证明日志审计。
`release-certificates/` 包含全部49谱258345个d2次数块、9740个附录范围真实矩阵查询、其全部通过内核的逐条Lean定理，以及2512个相邻d2平方为零命题。未知块不自动变零；SQL NULL与计算出的空TEXT按固定源码区别处理。这些命题关于发布矩阵，尚未建立矩阵与真实Adams页的比较。

## 本轮新增验证

```sh
python3 StaircaseCertificates/export_all.py
python3 StaircaseCertificates/test_export.py
python3 PageTransitionCertificates/export_release.py
python3 tests/continuation_clis.py
bash tests/check_transition_kernel.sh
bash tests/check_staircase_kernel.sh
python3 tests/assert_continuation.py
```

实际命名表达式见NamedElementCertificates/name_audit.json；早期延伸日志为tests/continuation-build.log及tests/continuation-sequential.log。当前构建范围以 tests/CONTINUATION_CHECKPOINT.md 为准。

## 验证

```sh
make -C program clean all test
cd program
bash tests/build_all.sh
bash tests/lean-sequential.sh
python3 tests/check_families.py
python3 tests/test_import.py
python3 tests/test_d2_export.py
python3 tests/test_page.py
# 实际发布数据的批量内核证明，严格串行：
bash tests/check_release_kernel.sh
bash tests/check_complex_kernel.sh
python3 tests/assert_completed.py
```

C++ 导出器、JSON、SHA256均不是信任根；内核检查可靠性证明和每次布尔归约。无 sorry、自定义公理、native_decide。标准公理依赖由日志中 #print axioms 明示。注册库的外部证书路径由 `tests/track_certificate_inputs.py` 生成逐库二进制依赖；任何字节改变都会使相关 Lake 模块重编。新增路径或库后须重新生成并运行 `--check`；计算路径需显式登记。详见 `tests/CERTIFICATE_INPUT_TRACKING.md`。

## 构建和验证

```sh
cd program
export ELAN_HOME=/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan
export PATH="$ELAN_HOME/bin:$PATH"
make clean all test
lake build
python3 tests/test_import.py
python3 tests/test_d2_export.py
python3 tests/test_page.py
# 本机器的工具链定位兼容方案及严格串行模块编译：
bash tests/lean-sequential.sh
```

`lake build` 包含 lakefile 中登记的全部默认库；基础证书层使用 Lean 标准库，环、模与连接同态部分使用 Mathlib。lakefile 保留用户指定的本地 mathlib 依赖。日志保存在 `tests/`，回归产物保存在 `tests/output/`。

## 导出和导入

```sh
./lin-cert-export claims ../doc_data/kervaire_claims.csv tests/output/claims.jsonl
./lin-cert-export manifest tests/output/manifest.jsonl
./lin-cert-export adams examples/adams_sample.csv tests/output/adams.jsonl
./lin-cert-export proofs examples/proof_sample.csv tests/output/proofs.jsonl
./lin-cert-export finite examples/finite_sample.csv examples/finite_sample.json
lake env lean --run CheckFile.lean examples/finite_sample.json
```

前四种导出是归档，不能交给 tactic 证明论文结论。`finite` 要求明确输入类、次数、微分和查询，六种有限结果均支持一表批量生成。C++ 不判断证书真假，错误证书由 Lean 拒绝。大型 proofs/adams CSV 按逻辑记录流式读取；有限 bundle 在内存中读取，不能用于无界数据。

```lean
import LinProgramCertificates.KervaireTactic
open KervaireProgram

def dataBundle : Bundle := kervaire_bundle% "examples/finite_sample.json"

example : ResultValid dataBundle.data (.permanent 9) := by
  kervaire_cert using Evidence.permanent []
```

`kervaire_bundle%` 将外部文件解码为显式 Lean 数据；`kervaire_cert` 再调用可靠性定理及内核 `decide`。导入器不是可信证明生成器。编译时文件路径相对当前目录；注册库通过生成的 `needs` 依赖跟踪证书字节；未注册实验文件仍须直接重编。

## 检查边界

检查类 ID 唯一、连通范围 `t-s >= 0`、微分页数至少 2、源目标存在，以及 Adams 微分次数 `(s,t) -> (s+r,t+r-1)`。查询必须指向存在的类。存活/永久查询检查出射与入射；入射证据必须与有限表过滤结果完全相等。计数查询重算指定 stem 的候选总数与被击中数。

有限记录只是导入表，不是已证明的真实 Adams 页。`permanent` 仅指整个有限表没有相关入射/出射；`uniqueSurvivor` 仅指显式候选集合中的唯一有限存活者。该旧有限记录接口自身没有页商空间或线性组合；新增模块另行实现有限商空间与线性代数。无限页完备性和拓扑实现仍未证明。删除输入表中的真实微分会改变待证明的命题，当前检查器不能证明该表涵盖真实谱序列。

SHA-256 仅作归档一致性检查；Lean 语义 bundle 不依赖哈希。`unknown`、`external_input`、`inventory_only` 被语义导入器拒绝。没有添加自定义公理、`sorry` 或信任 C++ 的步骤；可靠性定理仅依赖标准 Lean 公理 `propext`、`Quot.sound`（导入可靠性定理另外使用标准 `Classical.choice`）。

早期验收记录：1097项全库构建、当时模块集的严格串行编译及C++回归通过。20767条有限数据内核定理通过236批检查（9740像/非像、2512复形、2512同调比较、6003基变换）。全部计数由tests/assert_completed.py和tests/assert_continuation.py核验；不代表完整论文结论已证明。

## 出射循环与实际唯一性

`OutgoingCycleCertificates` 区分论文Fact7.6(2)允许入射击中的永久循环与`System.Permanent`要求非边界的强存活；提供完整比较/出射检查、C++导出、严格JSON导入和`outgoing_cycle_cert`。反例证明AlwaysCycle不推出非零E∞存活。`Fact762AssemblyCertificates`用具体完整源条件拼接第4/7页排除，仍要求实际解释以及查询页目标非零，未假设全页目标永久非零。两者已通过2532完整构建及完整回归。

`Stem125E4Search`已证明两允许分支的整个有限E4商均为24坐标，45个过滤位置全部覆盖。`Stem125HomologyCertificates/Meaning.lean`从完整实际坐标与微分方程推出实际商/下一页等价，而不是把等价本身作为输入。完整779模块/49337声明公理审计保存在`tests/kernel-axioms-2521-checkpoint.json`；后续2532新增8模块另行审计，不隐式并入旧检查点。
