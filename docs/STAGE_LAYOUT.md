# LinProgram / Def / Interface / Main 布局与迁移记录

## PR150 的第二批提取

16 个来源目录与证据模块迁入 `Def/References`，保留原声明、证明和制品路径。剩余的 `Main/Axiom/LinProgram` Lean 模块已迁出：参数化 Adams E₂ 输入归独立管线；消费端微分适配归 Main/Solution；两处纯导入别名直接使用实际定义模块。

路线 `Data.lean` 按职责拆成 `LinProgram/Interpretation/Route/{Data,Predicates}.lean` 与 `Challenge2/Route/Data.lean`。全部 15 个声明保留，tmf 标签单独归入 Def。没有添加新的阶段假设，也没有宣称路线 Inputs 已与根 Challenge2 等同或绑定。


## 从 PR150 提取的消费边界整理

`Main/Axiom/Challenge2.lean` 只声明 `Nonempty Challenge2`。同一见证的选择及文献、计算投影位于 `Main/Solution/StageInput.lean`；依赖这些投影的 15 个适配模块迁入 Main/Solution，声明和证明保持 develop 的实现。

8 条已有比较、存活及微分推论按职责分为 `Computation/Comparisons/Classes.lean`、`Computation/Tower/Survival.lean`、`Computation/Differential/Second.lean`，Challenge/Solution 同步。另 3 条代表元比较暂留原模块。项目的模型接口、最终目标、数据认证和严格检查规则均保持原实现；这一步没有完成 Main/Axiom 全目录的职责清理，也没有完成新模型的构造或绑定。


首轮工作整理已有内容、更新路径和补充模块说明。随后按用户确认，将两道跨阶段边界定义为根目录共享的 `Challenge1`、`Challenge2` 见证结构。上一阶段以 theorem 证明 `Nonempty ChallengeN`，下一阶段开发时以 axiom 暂时接受完全相同的命题；旧公开接口从同一个见证投影。未补数学证明、未修论文陈述、未增删原结构条件。接口范围沿用 [审核 issue #138](https://github.com/SII-MATH/KIP126/issues/138)。

## 2026-09-29：独立工件与分组交付

固定程序工件移入 `KIP126/LinProgram/`：Raw、Translate、Generated、
不依赖消费公理的 Branch/State/Differentials 数据解释，以及 Route 的原始和选取记录。
Examples 使用实际 Main 消费适配和显式来源证据，继续留在
`Main/Examples/LinProgram/`，不属于独立数据管线。
原 `Interface/Solution/LinProgram` 中纯数据的 SquareDetection、SquareDimension
证明移入 `LinProgram/Certificates/`，保留原公开声明与证明。Interface 的基认证、
实际 E₂ 坐标、乘法和 staircase 生产端继续留在原层；新增 Square 生产端将已有局部
证书运输为模型上的 `SphereSquareInterface`。

Lin 专用的 `LinE2`、`LinSquareCertificate` 自动化工具统一位于
`LinProgram/Tactic/`，与其固定数据和证书同属独立管线。原命令与命名空间保留；
`e2_mul` 的正确性证明缺口不因迁移而消除。

根 `Challenge2` 将 `LiteratureInterface` 与 `ComputationInterface` 分开，只有后者
称为 C(M)。`ModelBindings` 保存共享 Moss/tmf 模型与通用比较，两个交付部分共同
使用同一个 Challenge1 模型。Main 仍从单一 `Nonempty Challenge2` 假设选取见证，
平方非零和候选穷尽均从其计算字段消费，`Main/Solution/Computation` 的依赖链
不再导入 Interface/Solution。Main 其他历史消费链的直接导入仍是迁移债务。
没有为文献、计算或平方结果新增独立公理，也没有完成原有 `sorry`。

下文的带日期、提交号和测试数量的验证记录属于相应历史批次；它们不证明本次修改
已经通过同样检查，也不表示完整交付已构造。

## 从哪里开始读

- [Challenge1](../KIP126/Challenge1.lean)、[Challenge2](../KIP126/Challenge2.lean)：两道边界共享的见证类型及逐项交付清单。第一份覆盖 `a01`–`a14`，第二份覆盖 `am1`–`am16`、`cm1`–`cm6`；条目沿用 #138 的编号。
- [LinProgram](../KIP126/LinProgram/README.md)：独立的固定数据管线、参数化解释和局部证书。
- [Def](../KIP126/Def/README.md)：公共数学对象、谓词、构造器、通用性质及 Challenge 1 的生产轨。
- [Interface](../KIP126/Interface/README.md)：第 0 阶段产出的消费接口，以及计算认证和通用接口的目标／证明。
- [Main](../KIP126/Main/README.md)：输入包和 near-126 至最终目标的推导。

本次归整的 Def / Interface / Main 组件以 `README.md` 按“期望内容、现有内容、完成度、待做事项、执行步骤”记录。领域入口解释数学范围；下层文档列现有声明、占位及上游依赖。Lin 专用 tactic 的说明见 `LinProgram/Tactic/README.md`。Challenge 的 `sorry` 是目标陈述的约定，不计作该目录待补的证明。

局部文件／声明盘点不等于数学完成度，不能把无 `sorry` 或编译成功换算成整个数学目标已完成。文档对未冻结的任务总量不提供伪精确百分比。

两个 Challenge 文件在同文件内分组展开项目交付字段、范围及相容性条件，通用数学类型仍由 Def 定义。审核时结合现有 Def、Blueprint、论文来源及 KIPBase 的具体历史接口，分别记录陈述、模型接入、证明与依赖状态。当前目录缺少声明，不等于无法准确陈述；已有对象足以支持的参数化接口应直接写出，剩余迁移、对象绑定或证明义务单独列明。只有确实缺少表达所需类型的部分保留具体 TODO，不以空泛的 `Prop` 或 `True` 充当字段，也不把历史 axiom 当作当前证明。已有构造或可从前项推出的结果列为派生交付，详细清单只维护在这两个文件中。

Challenge 1 通过 `FoundationInput`、`MilnorInput` 展示现有基础条件，再以 `foundation`、`milnor` 适配定义组装原通用记录；消费端仍只选择一次见证。Challenge 2 在同文件中定义 `LinE2Presentation`、坐标和微分解释，并将文献与计算交付拆为独立 structure；共享模型绑定和兼容投影保留原数据关联。旧 presentation 模块作为兼容导入入口。生产／消费端继续直接使用相同的 `Nonempty ChallengeN`。

`a10` 的 ν-cofiber 判据和 `a11` 的 synthetic lift／三角提升已在根 Challenge1 中定义为精确的参数化 `SyntheticInterface`；[Synthetic 文献入口](../KIP126/Main/Axiom/Literature/Synthetic.lean) 通过显式来源输入组装该接口。它尚未加入 `Nonempty Challenge1` 的原见证字段，没有选择固定 synthetic 模型，也没有完成所引文献结果的证明。

这次整理保持现有数学承诺。Challenge 2 仍使用开发期选定的 Challenge 1 模型；Main 的平方消费已改为计算接口投影，消除了对应的 Interface/Solution 直接导入。固定模型构造和完整阶段证明仍是边界债务。完整清单不等于所有条目已经冻结或装入见证包。

## 目录及职责

```text
KIP126/
├── Challenge1.lean         Def → Interface 的共享见证类型
├── Challenge2.lean         Interface → Main 的共享见证类型
├── LinProgram/             独立的固定数据管线
│   ├── Raw/                固定 DB/CSV 与 manifest；大文件由 Git LFS 管理
│   ├── Translate/          确定性转换脚本
│   ├── Generated/          固定 E₂、微分与 staircase 表
│   ├── Interpretation/     不依赖消费公理的参数化行解释
│   ├── Route/              §7 原始/选取记录与来源清单
│   ├── Certificates/       固定数据上的平方检测与维数证明
│   └── Tactic/             Lin 专用计算与证明证书自动化
├── Def/                    公共对象、谓词、构造与性质
│   ├── Challenge/          Nonempty Challenge1 的冻结目标
│   └── Solution/           Nonempty Challenge1 的构造／证明轨
├── Interface/
│   ├── Axiom/              同型的 Nonempty Challenge1 开发期输入
│   ├── Challenge/          Challenge2 及工具目标
│   └── Solution/
│       ├── Challenge2.lean 第二道边界的构造／证明轨
│       ├── Tools/          旧错误工具声明的退休记录；本文工具现归 Main
│       └── LinProgram/     基、乘法、staircase、平方等模型交付的生产证明
├── Main/
│   ├── Axiom/
│   │   ├── Challenge2.lean 同型的 Nonempty Challenge2 开发期输入
│   │   ├── Literature/     文献原文、主论文、清单与显式输入
│   │   └── LinProgram/     计算交付投影、固定模型消费适配和路线需求
│   │       └── Examples/   消费接口及显式来源证据示例
│   ├── Challenge/Final/    最终目标；中间命题不再复制到 Challenge
│   └── Solution/           按数学主题组织现有推导
│       ├── Tools/                本文新工具的待证命题
│       ├── ChoiceIndependence/   选择无关性
│       ├── DifferentialReduction/ 微分候选归约
│       ├── ExtensionObstruction/  扩张矛盾
│       ├── Computation/          输入上的计算推论
│       └── Final/                最终证明轨
├── Mathlib/                保留原适配实现
└── Checks/                 保留回归检查
```

没有为尚不存在的证明或 axiom 镜像建立空目录。Lin program 的五个实际输入已经归入独立的 `LinProgram/Raw/`，不再依赖 `/tmp` 路径描述；大型 DB/CSV 使用 Git LFS。旧 `KIP126/External`、顶层 `Challenge/Solution`、`reference` 和 `aimpaper` 已迁走。公共 Lean 声明名保持原样；文件模块路径改变，因此原来的 `namespace KIP126.External` 或 `KIP126.Challenge` 仍可能出现在新位置，它们不是另一份代码。

阶段间有两道消费边界：Def Challenge/Solution 生产 `Nonempty Challenge1`，Interface/Axiom 消费它；Interface Challenge/Solution 生产 `Nonempty Challenge2`，Main/Axiom 消费它。包内的数据由 structure 记录，跨阶段陈述是存在性命题，因此 theorem 与 axiom 类型完全相同。第一阶段可以使用 Challenge 1 axiom，但不能用自己要解除的 Challenge 2 axiom证明其 Solution。Def 不声明项目 axiom。

## 主要迁移对应

| 原位置 | 新位置／处理 |
| --- | --- |
| `Challenge/Tools`, `Solution/Tools` | 初次迁至 Interface 后退休；新的 law 定义现归 `Main/Solution/Tools` |
| `Challenge/{Near126,Final}`, `Solution/{Near126,Final}` | `Main` 下对应轨道 |
| `External/{Provenance,Evidence,Results}` | `Main/Axiom` 共用来源类型及操作 |
| `External/{SourceInventory,Claims}` | `Main/Axiom/Literature` |
| `External/Computation/LinE2/RawData` | `LinProgram/Generated/E2` |
| `External/Computation/LinProofs` | LinProgram 的 `Generated`、`Interpretation` 和入口 |
| E₂、DB、selected 转换脚本 | `LinProgram/Translate` |
| `External/Computation/{Near126,AppendixTable,EtaRows}` | `Main/Axiom/Literature`：保留论文／手写需求接口来源，不冒称机器直接输出 |
| Lin 基表认证与模型比较 | `Interface/Solution/LinProgram`；固定基和坐标消费构造归 Main 解释层 |
| 纯数据平方检测与维数证明 | `LinProgram/Certificates`；Interface 的 Square 生产端完成模型运输 |
| 固定 foundation、Milnor 的原输入 | `Challenge1` 包；`Interface/Axiom/Challenge1.lean` 暂时承认其存在 |
| 固定 Lin presentation 与微分表输入 | `Challenge2` 包；`Main/Axiom/Challenge2.lean` 暂时承认其存在 |
| `Examples/` | `Main/Examples/LinProgram/`，依赖实际消费适配，保留原声明名 |
| 依赖这些 axiom 的固定对象及条件推论 | `Main/Axiom` 解释层；论文所需计算推论归 `Main/Solution/Computation` |
| `reference/`, `aimpaper/` | `Main/Axiom/Literature/{Sources,MainPaper}` |

初次迁移及后续 Near126 归位的逐文件映射见 [stage-layout-moves.json](stage-layout-moves.json)。源论文与其制品保持原字节及 SHA-256；生成 Lean 分片仅因 import／生成器路径更新而变化，manifest 中的输出摘要相应刷新。

## 后续调整：中间推导不再设 Challenge 镜像

用户确认：Main/Challenge 只保留 Final；原 Near126 中间命题与已有 Solution 合并，按数学主题组织。原 Solution 类型、正文和公开名称保持不变，原 Challenge 的重复占位声明删除。Blueprint 引用改为保留的 Solution 名称，未完成节点不改为已证明。

| 原 Near126 文件 | 现位置（相对 Main/Solution） |
| --- | --- |
| `any_choice_criterion.lean` | `ChoiceIndependence/any_choice_criterion.lean` |
| `c4_c5_choice_equivalence.lean` | `ChoiceIndependence/c4_c5_choice_equivalence.lean` |
| `only_d12_differential_reduction.lean` | `DifferentialReduction/only_d12_differential_reduction.lean` |
| `d12_dichotomy_and_condition_equivalence.lean` | `DifferentialReduction/d12_dichotomy_and_condition_equivalence.lean` |
| `c3_excludes_c5.lean` | `ExtensionObstruction/c3_excludes_c5.lean` |

这五个文件都是论文推导，未迁入 Def 或 Axiom；它们引用的对象定义和外部输入仍在原所属层。两条最终定理的 Challenge/Solution 配对保持。`Near126Adams` 等旧接口的自由谓词问题明确列为待修陈述，本次未补数学证明。以上调整取代初次迁移表中 Main/Near126 的布局。

本次归位验证：五个 Solution 文件除注释外的 Lean 代码保持一致，删除的六条 Challenge 定理类型全部由 Solution 保留；`Main.Solution`、`Main.Challenge`、`Checks.ClassicalAdams.FixedFinal` 和模块入口 `+KIP126` 定向编译通过。Blueprint 网页重新生成成功，全部 1,295 条声明引用在当前 `KIP126` Lean 环境中通过存在性核验，删除的 Challenge 名称不再导出。默认 `lake exe checkdecls` 因本地缺少历史 `KIPBase.olean` 而未完成；上述核验直接检查同一生成清单，没有为此全量构建历史库。编译通过不代表旧陈述已修正或占位证明已完成。

## 后续调整：CSV 认证与本文工具的归属

- `Challenge1` 不再含 `LinBasisInterface` 或 `linBasis`；`ofFoundationMilnor` 也不再接受基认证参数。基础模块的导入闭包不含固定 Lin 数据。
- `Challenge2` 通过依赖同一 presentation 的 `SphereBasisInterface` / `sphereBasis` 交付实际 E₂ 坐标和固定 CSV 基向量值，范围为 v126.3.cw49、所有自然数 s,t 且 t ≤ 261。Main 从这些坐标恢复 CSV 基认证兼容接口；没有保留重复的 `linBasis` 字段。
- 基认证生产目标／证明移至 `Interface/{Challenge,Solution}/LinProgram/BasisTable.lean`。Main 的 `Interpretation/BasisTable.lean` 从同一个 Challenge2 见证投影认证，指定基和坐标移至 `Interpretation/Basis/Algebra/`。生产者不导入自己的消费假设，证明仍为 `sorry`。
- 原 am7 的三条 law 从 Challenge2 移至 `Main/Solution/Tools`；它们属于本文推导，不是前人 A(M)，也没有新增公理字段。工具仍是待证 Prop 定义，所需模型比较与规则证明未完成。
- 较短 extension 障碍谓词移至 `Def/Synthetic/PageExtension/Stretching/Predicates.lean`，保留为 M 的数学语言。通用解纤维与相容塔结果继续复用，计算认证使用规则时必须检查依赖无环。

## 本次没有补齐的边界

- 原四组项目输入已收束为两道边界：`Challenge1` 关联 foundation 与同一 H𝔽₂ 的 Milnor 坐标，`Challenge2` 分开文献和计算部分，并关联共享模型、Lin presentation 与使用该 presentation 的全部解释。消费端当前各有一条 `Nonempty ChallengeN` axiom；旧公开名称均为见证投影。Def 不声明项目公理。
- `Def` 对固定 E₂ 字面数据的引用已改为独立 LinProgram 路径；provenance 类型、显式输入 wrapper 和条件文献推论仍须结合实际模型接口逐项审核。路径整理不自动消除这些分类与复用边界。
- 固定基表的生产证明仍有 `sorry`；消费端已改为从 Challenge2 投影，完整认证尚未完成。
- 两道边界的生产端 theorem、消费端 axiom 和共享类型已经建立，无需维护另一个类型对齐表。两个 Solution theorem 的正文仍为 `sorry`，尚未完成数学构造。平方局部证书已通过计算字段接入，其他 Lin 基础证明仍需逐项审核。
- `standardFoundation` 与 `standardMilnorCooperations` 已按不使用内部谱序列的类型归到 Interface/Axiom；尚未提供完整构造或逐条精确文献依据，不代表第 0 阶段完成。
- [#132](https://github.com/SII-MATH/KIP126/issues/132)、[#133](https://github.com/SII-MATH/KIP126/issues/133)、[#134](https://github.com/SII-MATH/KIP126/issues/134)、[#135](https://github.com/SII-MATH/KIP126/issues/135) 的陈述问题原样保留；Synthetic、ESS 等内部对象统一工作尚未开展。
- Mathlib 适配层和 KIPBase 历史组件保留；此次没有新增两种谱序列等价的证明义务，也没有迁移 KIPBase 的新数学内容。

## 后续顺序

1. 团队逐模块审核 README 的预期范围与当前陈述，优先处理已报陈述问题。
2. 整合者确认公共对象以及 Interface、Main 分别实际需要的输入类型。
3. 完成 Def 的 Challenge 1 构造，再完成 Interface 的 Challenge 2 构造；二者都不得调用对应消费端 axiom。
4. 每个生产 theorem 完成后替换下一阶段同型 axiom，逐步消除跨阶段假设依赖。
5. 持续迁入可复用的 KIPBase 结果，并在同一模块说明中记录新增能力和剩余问题。

## 本次迁移验证

- 初次迁移的 `lake build KIP126 scripts.Axioms` 通过；未执行用于最终证明验收的严格公理审计。
- 157 项既有自动化回归测试、3 项 Lean 来源投影集成测试通过。
- 从 `Main/Axiom/LinProgram/Raw/` 直接运行的三项本地检查通过：E₂ 的三个固定 CSV 重生成逐字一致，`proofs.db` 全量扫描后的 10,907 条微分一致，六条 selected 结果及一条独立 `basis.d2` 核验一致；转换器现有测试通过。五个原始输入的 Git LFS 对象均已上传，CI 重生成检查尚未接入。
- 完整来源 checker 通过：18 个来源、88 个制品；所有迁移的论文原文制品保持原字节。
- Blueprint web 构建、Python／shell／workflow 语法和模块文档相对链接检查通过。
- 在 Examples／基础输入归位提交 `f0c160b` 中，曾逐一核对当时 834 个 Lean 文件：除 import 外正文完全一致，四条项目公理的声明和类型均保留；导入无缺失或循环，文档链接检查通过。
- 对初次迁移前 829 个 canonical Lean 文件逐一核对：除 import、路径文字、注释及空聚合命名空间外，声明和证明正文保持一致；现有 `sorry` 未增减。
- `import KIP126` 原先可达的 724 个本地模块，在新路径下全部仍可达；声明名称保持，调用者使用旧文件路径的 `import` 则须按映射更新。

后续边界整理增加共享 Challenge 包、生产端 theorem 和消费端单一存在性 axiom；严格最终审计仍拒绝所有项目 axiom 和 `sorryAx`。

接口清单整理后，通过共享缓存包装器验证了 8 个定向 Lean 目标：两道边界的 Challenge/Solution、`StageInputDeclarations`、`FixedFinal`、`LinProofs`、`LinComparison`。Challenge 1 新旧记录的三条 kernel 往返等式通过，Challenge 2 原谓词／总包及迁入的 presentation 字段逐字保留。36 个清单编号、Blueprint 定位和修改文档的链接检查通过；845 个本地模块没有缺失导入或循环。此处验证接口重组的兼容性，没有消除原有证明占位。

补充 synthetic 接口后，重新验证两道边界的 Challenge/Solution、`StageInputDeclarations`，并通过新增的 `Synthetic.Interfaces`，合计 6 个受影响目标。新检查覆盖实际塔 filtration、cofiber 判据双向、λ 分解、三角条件和显式来源消费，且相关接口不依赖历史或阶段 axioms。Challenge 2 本次仅修改清单注释；包含根入口的 849 个本地模块没有缺失导入或循环。新接口没有增加 `sorry` 或 `axiom`，这不代表其文献证明或固定模型已完成。

自动化 CI 此次增加了新路径的来源文件检查和转换器现有测试；完整的 JSON/Lean 来源投影在本地验证通过，尚未接成 CI 作业。边界两侧直接引用同一个 `Nonempty ChallengeN` 类型，不再建立重复签名的对齐 CI。

## 标准 T(M) 使用同一内部谱序列

标准 Final 现为 `NonzeroSurvival sphereAdamsData (2,128) standardH6Square`。
`Interface/Axiom/StandardSphere` 特化 Def 中的实际球谱塔及指定 Milnor cocycle，
不消费 Lin 数据或 Challenge2。原固定序列名称不变，旧路径保留兼容导入。
`Interface/Solution/LinProgram/Square.lean` 使用显式 presentation、数据证书及独立
标准非零性生产平方标签识别，并通过 `SphereSquareInterface.standard_class` 交付。
`Main/Solution/Computation/Comparisons/Classes.lean`
只投影这一结论并提供存活谓词的改写，供最终证明使用。
按用户后续要求，Final 只保留 `h6_sq_permanent` 这一条命题及其配对 Solution；
重复的计算版 Challenge/Solution 已删除。原计算版仅为占位，因此唯一 Solution
直接保留待证的 `sorry`，没有删除实际完成的永久存活证明。陈述依赖基础 M，
证明仍可依赖 C(M)；阶段存在性输入与最终证明债务没有消除。
