# `lin-certificate/v1` 格式

本目录中的导出器使用 JSON Lines（JSONL）：每一行是一个独立 JSON 对象，文件第一行总是 `record_type = "header"`。解析器应逐行读取；不能依赖对象的排列顺序，也不能把未知值解释成数值零。

## 通用字段

| 字段 | 类型 | 约定 |
| --- | --- | --- |
| `record_type` | 字符串 | `header`、`claim`、`adams_row`、`proof_event`、`object` 或 `manual_input` |
| `certificate_kind` | 字符串 | 具体证书族；归档记录族；不自动选择数学规则 |
| `status` | 字符串 | `computed`、`unknown`、`inventory_only` 或 `external_input` |
| `unknown_markers` | 字符串数组 | 保留 `?`、`[NULL]`、`possibly`、`unknown` 和 `empty` |
| `sha256` | 64 位十六进制字符串 | 对删除 `sha256` 字段后的规范对象计算 SHA-256 |

Header 另外包含 `schema = "lin-certificate/v1"`、生成器版本、`source_name` 和原始输入文件 `input_sha256`。路径不写入证书，避免同一个文件从不同机器导出时结果不同。

## 记录族

### Kervaire 声明

`certificate_kind = "kervaire_claim"`，字段为 `source_row`、`claim_id`、`section`、`object`、`input_or_condition`、`output_or_conclusion`、`source_tables`、`status_for_formalization`。这是语义声明的索引，不是自动证明；Lean 必须根据对应的 Adams/ss 事件证书重建并证明结论。

### Adams 行

`certificate_kind = "adams_export"`，字段 `source_row`、`fields`（保留原 CSV 的列名和值）、`status` 和 `unknown_markers`。因此不同版本增加列不会破坏旧解析器：旧解析器可以拒绝未知 schema，或保留 `fields` 后报告不支持。

### `ss` 证明事件

`certificate_kind = "ss_proof_row"`，字段 `source_row`、`fields`。标准列为 `id,depth,reason,name,stem,s,t,r,x,dx,info`。固定源码实际支持20种reason：`M,G,GI,D,DI,ToCs,OutCsI,N,Syn,SynCs,SynCsIn,XX,XY,FX,CsCm,Def,T,TI,Mg,d2`。旧doc_data中的SynIn与源码SynCsIn不同，须保留版本区分。`reason = "M"` 始终标为 `external_input`，即使同时含未知标记；标记本身仍完整保留。目前仅归档；每一种 reason 的数学规则检查器尚未实现。

### 清单和外部输入

`certificate_kind = "spectrum_input"`、`"spectrum_map"`、`"cofiber_sequence"` 的 `status = "inventory_only"` 仅表示边界清单，不能直接产生数学结论。三条手工微分使用 `certificate_kind = "external_differential"`、`status = "external_input"`；它们需要单独的引用/定理证书，不能伪装成 Adams 自动计算。

## 规范化规则

1. UTF-8；JSON 不输出空格；键按导出器固定顺序输出。
2. 字符串使用 JSON 转义；CSV 中的引号和逗号已经解析后再编码。
3. 数值索引使用十进制、不带前导零；数学表达式保留原始字符串。
4. 输入行号 `source_row` 从 1 开始，是记录的物理起始行号，header 也计入。归档命令支持引号内换行，将 CRLF 规范化为 LF；有限输入 CSV 仍采用单物理行子集。
5. 同一输入文件、同一导出器版本和同一排序得到逐字相同的 JSONL。
6. 建议上游在导出前按 `(name, stem, s, t, id)` 排序；导出器不会自行重排大型 proof log。

`lin-cert-export/1.1.0` 的归档 CSV 解析器流式读取完整记录，保留引号内空行和双引号转义。单条记录上限为 10 MiB；非法引号、未闭合字段和超限记录报告物理起始行。原来的 `1.0.0` 输出保留为历史版本。

## 错误和信任边界

文件打不开、CSV 引号未闭合、列数不同、未知命令或 SHA-256 自检失败时，导出器返回非零状态；输出可能包含失败前写入的归档行，调用者必须丢弃非零退出的全部输出。哈希只验证传输和版本一致性，不验证数学真理。C++、原始数据库和 JSONL 全部是不可信输入；可信根是 Lean 内核检查器及其已证明的可靠性定理。


## 可执行有限语义格式 `lin-finite-bundle/v1`

此格式独立于归档 JSONL。每行一个 `WireBundle`：

```text
{"bundle":{"certificates":[...],"data":{"classes":[...],"differentials":[...],"object":"S0"},"formatVersion":1},"schema":"lin-finite-bundle/v1","status":"finite_input"}
```

字段使用 Lean `ToJson` / `FromJson` 的结构编码，键按字典序排序，不含额外空格；导入后重新序列化必须与输入相同，因此拒绝未知字段、重复字段及非规范表示。参考完整样例 `examples/finite_sample.json`。该格式没有 SHA 字段：证明依靠数学重检查。

- Class: `degree={filtration:Nat,internal:Int},id:Nat,name:String`。
- Differential: `page:Nat,source:Nat,target:Nat`。
- Certificate: `claim:ResultSpec,evidence:Evidence,object:String,version:Nat`。
- 构造器编码为单键对象，参数编码为字段对象，例如 `{"notHit":{"classId":9,"first":2,"last":5}}` 和 `{"incoming":{"records":[]}}`。
- `finite_input` 表示用户明确给定的有限表，不表示拓扑上已证明。归档中的人工微分保持 `external_input`，没有自动转为语义输入的转换。

### C++ finite CSV

固定表头 `object,kind,a,b,c,d`，各行对象必须一致：

| kind | a | b | c | d |
|---|---|---|---|---|
| class | id | name | filtration | internal |
| diff | page | source | target | unused |
| notHit | classId | first | last | unused |
| survives | classId | page | unused | unused |
| permanent | classId | unused | unused | unused |
| differential | page | source | target | unused |
| uniqueSurvivor | survivor | semicolon-separated candidates | unused | unused |
| ruledOut | stem | count | total | unused |

C++ 数值输入限制为规范自然数，Lean 内部 `internal/stem` 为 Int。输入次序被保留；微分和类无需排在查询之前。否定查询生成空入射见证，Lean 会逐项验证，若输入表存在击中记录则拒绝。差分查询不会自动插入微分，需要单独 `diff` 行。未知 kind/数值返回非零退出。

CSV 采用单物理行子集：支持引号逗号和双引号转义，不支持字段内换行；拒绝重复/空列名和非法引号。有限 CSV 的无关列不进入数学语义；需要保留原文的输入使用归档命令。


## 新增语义证书族

| 族 | 版本/输入 | 可执行检查 | 详细字段 |
|---|---|---|---|
| LinearCertificates | canonical matrix/target/witness/kind | arbitrary F2 image/nonimage | LinearCertificates/README.md |
| MilnorCertificates | version1, rank/degree, polynomial lists, full expansions | all coefficients of Milnor dual coproduct window | MilnorCertificates/README.md |
| ResolutionCertificates | version1, k/m/n, outgoing/incoming/up/down | complex plus contraction identity | ResolutionCertificates/README.md |
| PageCertificates | incoming/outgoing WireMatrix, representative/separator | complex, cycle, full-image exclusion | PageCertificates/README.md |
| PropagationCertificates | lin-propagation/v1, externalFacts/steps/result | conditional DAG, explicitly proved external premises | PropagationCertificates/README.md |

均采用规范JSON，未知/重复字段由重编码拒绝。数学对象来自数值矩阵/多项式/表达式，不由名称字符串充当。C++生成失败输出不可使用。

### 固定目标请求与共享数据表

`IndexedFamilyCertificates.Request` 把目标与证书分开编码：

```text
{"certificate":BOUND_EVENT,"key":{"object":"S0","page":4,"s":52,"t":177},"source":[true],"target":[true]}
```

`RequestImport.parseRequest` 拒绝未知、重复或非规范字段。`Results.checkResult` 将 key、source、target 与证书精确比较，并校验全部前序页、微分及共享表中的完整矩阵。`checkResult_sound` 的结论为给定请求的 `DifferentialAt family key source target`。

`family_request%` 导入单条请求；`RequestCheckFile.lean` 流式检查 JSONL 批次。失败包含物理行号及 `result.key`、`result.source`、`result.target` 或对应前序比较位置，批次任何失败都会返回非零状态。实际 94 条请求见 `IndexedFamilyProducer/HighD2/requests94.jsonl`；扩展的 95 条请求见 `IndexedFamilyProducer/D5/requests95.jsonl`，共享表有 358 个完整比较块。可编译示例见 `IndexedHighD2Certificates/RequestExample.lean`；全部 95 条结果向调用者给定的实际解释的运输见 `SemanticTrajectoryCertificates/D5All.lean`。运行时成功用于诊断，最终定理仍由 tactic 调用可靠性定理并交给内核检查。

### 永久循环的有限前缀

独立格式 `lin.permanent-prefix` 使用以下固定字段；每个 `Stage` 含完整比较 `wire` 和布尔向量 `representative`：

```text
{"firstPage":2,"schema":"lin.permanent-prefix","stages":[STAGE,...],"version":1}
```

`PermanentCycleCertificates/prefix-export STAGES` 将逐行有限比较输入交给既有 C++ 轨迹导出器；`--batch LIST` 按每行一个文件路径批量处理。输出必须规范编码，未知/重复字段、错误版本、空前缀、维数错误、非循环、边界及相邻代表元不相等均由 Lean 拒绝。`permanent_prefix%` 导入；`CheckFile.lean` 仅验证有限前缀，并报告物理行号、前缀下标及页数。

长度 L 的前缀检查 Adams 页 2 至 L+1。`assemble` 还要求调用者提供实际坐标解释 `PrefixMeaning` 和从页 L+2 开始的完整入射/出射空间消失证明 `TailVanishing`，才能构造 `Certificate system element`。`permanent_cert using certificate` 使用 `checkPermanent_sound` 证明全页结论。JSON 不编码、C++ 不生成上述数学证明；单独通过运行时前缀检查不表示永久性成立。

### 允许入射击中的出射永久循环

论文 Fact7.6(2) 的 permanent cycle 允许入射 d6/d12 击中，与非零存活到 E-infinity 不同。`OutgoingCycleCertificates.AlwaysCycle` 仅要求所有实际出射微分为零；已有 `System.Permanent` 仍要求各页非边界。

`lin.outgoing-cycle-prefix` 使用与永久性前缀相同的字段，独立 schema 防止两种语义混用。`outgoing-prefix-export STAGES_FILE` 或 `--batch STAGE_PATHS.txt` 生成完整比较和代表元。Lean 检查循环、维数和相邻投影，允许代表元是边界并在下一页变为零；`outgoing_prefix%` 严格导入。

`outgoing_cycle_cert using certificate` 由有限前缀、实际 `PrefixMeaning` 和从页 L+2 开始的完整出射空间消失 `OutgoingTail` 推出 `AlwaysCycle`，不要求入射空间消失，也不推出非边界。实际论文尾部仍须单独证明。两页样例 `OutgoingCycleCertificates/killed-prefix.json` 被出射检查器接受，但被非边界检查器拒绝。

### 整个同调商的唯一非零类

`UniqueHomologyCertificates` 的独立版本 1 格式为：

```text
{"comparison":WIRE_COMPARISON,"named":[true,false,...],"version":1}
```

完整比较必须证明同调维数恰为 1，命名向量必须是循环且投影非零。`IsUniqueNonzeroClass outgoing incoming named` 量化每个循环，要求其自身或其与命名向量之和是边界，因此覆盖全部线性组合。调用者的两个矩阵和命名向量固定证书的类型。

`unique-export K M N OUT IN NAMED` 使用完整比较求解器生成候选；`--batch REQUESTS.txt` 支持每行六个参数的批量输入，输出规范 JSONL。Lean 重新验证完整比较、维数及命名向量，拒绝非唯一同调商。`unique_homology%` 严格导入，`unique_homology_cert using certificate` 产生定理；`CheckFile.lean` 报告行号与失败字段。两个 Fact7.6(4) 有限边界分支的例子见 `UniqueHomologyCertificates/Examples.lean`，其真实 Adams 边界来源仍须单独证明。

### Representative-square certificates

`RepresentativeSquareCertificates` uses a separate canonical JSON version 1
record for an additive-group representative transfer. It is an algebraic
ingredient, not the paper's generalized Leibniz theorem or a proof of its
synthetic spectral-sequence hypotheses.

The C++ input is `{"data":DATA,"firstBranch":"auto","version":1}`.
`DATA` contains dimensions `a,b,c,d,ha,hb,hc,hd`, matrices
`f,p,q,g,higherA,higherB,higherC,higherD`, and vectors `x,y,z,w`.
Matrices are flattened row-major Boolean arrays. Dimensions are bounded by
64 in the producer; zero dimensions and redundant subgroup generators are
allowed. The first branch can be `auto`, `f`, or `p`.

Each output record contains `version`, `data`, the nine vectors
`firstRep,firstSource,firstTarget,secondRep,secondSource,secondTarget,
thirdRep,thirdSource,thirdTarget`, `firstBranch` equal to `f` or `p`,
and the complete factor matrices `firstFactor,lastFactor`. Keys are sorted
and whitespace omitted. The producer uses deterministic Gaussian pivots
and sets free variables to zero. `RepresentativeSquareProducer/README.md`
specifies all dimensions and witness equations.

`representative-square-export INPUT.jsonl` (or standard input) handles
records independently and preserves successful input order. Invalid records
report physical input line numbers; any rejection makes the exit status
nonzero while subsequent records are still processed. Unknown, duplicate,
missing and mistyped fields, trailing bytes including NUL, and unknown
markers are rejected. A record is bounded at 10 MB and JSON nesting at 32.

Lean `parse` strictly checks canonical encoding, `decode` checks version and
every dimension, and `check` verifies the entire commuting square, all
three representative extensions and both whole-subgroup factor equations.
`check_sound` proves `Transfer data`, a statement about additive maps and
cosets; `checkWire_sound` and `checkBatch_sound` cover imported records.
`representative_square_certificate%` imports a record;
`representative_square_cert using certificate` proves the fixed typed
transfer goal. `lin_cert` also handles `WireValid`. Diagnostics identify
the failed extension, factor, or matrix row and column. Imported semantic
proofs come from kernel reduction and these soundness theorems.

### Database d2 export details

`d2-export DB OBJECT` 只读SQLite，按原id序分组完整双次数基底，输出源(s,t)、page2、目标行数、源列数、列向量及known/unknown状态。SQL NULL被输出为JSON null；无d2列的表全部unknown；已计算空TEXT按固定源码Serialize约定表示零向量。该语义与任意CSV空字段不同，不能通用推断。

真实源文件hash与配置在upstream及release-certificates/manifest.json中。没有目标坐标时拒绝越界，不丢弃非零项。所有输出仍是外部有限矩阵；d2的拓扑正确性不是由导出器保证。

## Generic finite free complex

`GenericFreeComplexProducer/README.md` specifies the separate canonical typed JSON wire: version/rank/n, generator homological/internal degrees, dense n*n polynomial edges and n*n*n products plus all-degree Milnor witnesses. JSONL batch records have no archive header; this schema is not the archival lin-certificate/v1 record schema above. `generic_complex_bundle%` imports typed data and `lin_cert using ()` rechecks it. `GenericFreeComplexImport.checkWire_sound` yields the actual finite-ring differential square-zero and grading statement. Producer resource caps constrain computation, not the Lean mathematical model.

### Filtered extension quotient equations

`FilteredExtensionProducer` accepts one JSON query per physical line with
exact fields `version:1` and `data`. The data fields are dimensions
`a,b,ha,hb,depth`, indices `s,n`, the matrix `f`, lists of generator matrices
`source,target` of length `depth`, and fixed vectors `x,y`. Matrices use
row-major Boolean arrays. All levels after `depth` are explicitly defined
as zero subgroups. This convention is part of the finite input, not a
conversion of unknown Adams data to zero.

The canonical output retains `version,data` and adds `sourceFactors`,
`targetFactors`, `mapFactors`, `sourceMember`, `imageMember`, `targetMember`,
`representative`, `sourceCorrection`, `targetCorrection`. Gaussian
elimination supplies every descending-filtration and filtration-preserving
matrix factor, all three memberships and a representative equation.
Exact dimensions and limits are in `FilteredExtensionProducer/README.md`.

`FilteredExtensionCertificates.check_sound` proves `ResultValid data`: the
input defines genuine decreasing range subgroups and a filtered additive
map, the fixed input and output belong to the indicated page numerators,
and the actual induced quotient differential sends the input class to the
output class. This uses `FilteredMapExtension.differential`, constructed
by `QuotientAddGroup.lift`, with a proved representative characterization.
It is stronger than a string comparison or a statement about a raw row.

`filtered_extension_certificate%` imports exactly one canonical record,
`filtered_extension_batch%` imports strict JSONL, and
`filtered_extension_cert using certificate` proves the fixed typed result.
The batch soundness theorem covers every accepted record. Diagnostics give
the physical line, filtration-factor index, matrix row/column or failed
membership/representative field. Unknown, duplicate, missing or mistyped
fields, blank records, extra records in a single import, CR and trailing
bytes are rejected. The C++ input accepts JSON whitespace; Lean imports its
canonical output. Hashes serve reproducibility only.

This family proves finite filtered additive-group extension equations. It
does not assert that those groups are the paper's homotopy groups, synthetic
objects or actual Adams input, nor prove the missing comparison theorems.

## Filtered quotient no-crossing certificates

`FilteredCrossingCertificates` adds the exact outer fields `version`,
`extension`, and `stability` to the finite filtered-extension protocol. Version
is 1; extension is the complete previous wire certificate; stability is a
row-major Boolean `hb * ha` factor satisfying
`f * source(s+1) = target(s+n+1) * stability`. All higher-source elements
are covered. The soundness result includes the actual quotient differential
equation and absence of every page-defined crossing in `[s+1,s+n+1)`.
The zero tail is explicit input, not missing-data interpretation.

Generation is deterministic and batchable with `filtered-stable-export`.
`filtered_stable_certificate%` and `filtered_stable_batch%` reject malformed
canonical JSON, versions, dimensions and physical blank lines. Use
`filtered_stable_cert using certificate` for an independently fixed input,
or `lin_cert_diagnose using certificate` to report the exact failed factor
row/column. Both proof paths use the kernel checker and soundness theorem.
See `FilteredCrossingCertificates/README.md` for the complete protocol.
