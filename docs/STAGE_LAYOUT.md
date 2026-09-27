# Def / Interface / Main 布局与迁移记录

首轮工作整理已有内容、更新路径和补充模块说明。随后按用户确认，将两道跨阶段边界定义为根目录共享的 `Challenge1`、`Challenge2` 见证结构。上一阶段以 theorem 证明 `Nonempty ChallengeN`，下一阶段开发时以 axiom 暂时接受完全相同的命题；旧公开接口从同一个见证投影。未补数学证明、未修论文陈述、未增删原结构条件。接口范围沿用 [审核 issue #138](https://github.com/SII-MATH/KIP126/issues/138)。

## 从哪里开始读

- [Challenge1](../KIP126/Challenge1.lean)、[Challenge2](../KIP126/Challenge2.lean)：两道边界共享的见证类型。
- [Def](../KIP126/Def/README.md)：公共数学对象、谓词、构造器、通用性质及 Challenge 1 的生产轨。
- [Interface](../KIP126/Interface/README.md)：第 0 阶段产出的消费接口，以及第一阶段验证与工具定理的目标／证明。
- [Main](../KIP126/Main/README.md)：输入包和 near-126 至最终目标的推导。

本次归整的 Def / Interface / Main 组件以 `README.md` 按“期望内容、现有内容、完成度、待做事项、执行步骤”记录。领域入口解释数学范围；下层文档列现有声明、占位及上游依赖。保留的 Mathlib、Tactic 等辅助目录说明尚未完整覆盖。Challenge 的 `sorry` 是目标陈述的约定，不计作该目录待补的证明。

局部文件／声明盘点不等于数学完成度，不能把无 `sorry` 或编译成功换算成整个数学目标已完成。文档对未冻结的任务总量不提供伪精确百分比。

## 目录及职责

```text
KIP126/
├── Challenge1.lean         Def → Interface 的共享见证类型
├── Challenge2.lean         Interface → Main 的共享见证类型
├── Def/                    公共对象、谓词、构造与性质
│   ├── Challenge/          Nonempty Challenge1 的冻结目标
│   └── Solution/           Nonempty Challenge1 的构造／证明轨
├── Interface/
│   ├── Axiom/              同型的 Nonempty Challenge1 开发期输入
│   ├── Challenge/          Challenge2 及工具目标
│   └── Solution/
│       ├── Challenge2.lean 第二道边界的构造／证明轨
│       ├── Tools/          上述三个目标对应的现有证明正文
│       └── LinProgram/     基表认证、平方检测与维数的现有验证
├── Main/
│   ├── Axiom/
│   │   ├── Challenge2.lean 同型的 Nonempty Challenge2 开发期输入
│   │   ├── Literature/     文献原文、主论文、清单与显式输入
│   │   └── LinProgram/
│   │       ├── Raw/        五个固定 DB/CSV 输入及 manifest；大文件由 Git LFS 管理
│   │       ├── Translate/  确定性转换脚本
│   │       ├── Generated/  固定 E₂ 和差分表
│   │       ├── Interpretation/  解释、现有假设和条件推论
│   │       └── Examples/   输入数据表与解释接口的使用示例
│   ├── Challenge/          Near126 / Final 目标
│   └── Solution/           Near126 / Final / Computation 现有推导
├── Mathlib/                保留原适配实现
├── Tactic/                 保留现有 Lin 自动化工具
└── Checks/                 保留回归检查
```

没有为尚不存在的证明或 axiom 镜像建立空目录。Lin program 的五个实际输入已经归入非空的 `Main/Axiom/LinProgram/Raw/`，不再依赖 `/tmp` 路径描述；大型 DB/CSV 使用 Git LFS。旧 `KIP126/External`、顶层 `Challenge/Solution`、`reference` 和 `aimpaper` 已迁走。公共 Lean 声明名保持原样；文件模块路径改变，因此原来的 `namespace KIP126.External` 或 `KIP126.Challenge` 仍可能出现在新位置，它们不是另一份代码。

阶段间有两道消费边界：Def Challenge/Solution 生产 `Nonempty Challenge1`，Interface/Axiom 消费它；Interface Challenge/Solution 生产 `Nonempty Challenge2`，Main/Axiom 消费它。包内的数据由 structure 记录，跨阶段陈述是存在性命题，因此 theorem 与 axiom 类型完全相同。第一阶段可以使用 Challenge 1 axiom，但不能用自己要解除的 Challenge 2 axiom证明其 Solution。Def 不声明项目 axiom。

## 主要迁移对应

| 原位置 | 新位置／处理 |
| --- | --- |
| `Challenge/Tools`, `Solution/Tools` | `Interface/Challenge/Tools`, `Interface/Solution/Tools` |
| `Challenge/{Near126,Final}`, `Solution/{Near126,Final}` | `Main` 下对应轨道 |
| `External/{Provenance,Evidence,Results}` | `Main/Axiom` 共用来源类型及操作 |
| `External/{SourceInventory,Claims}` | `Main/Axiom/Literature` |
| `External/Computation/LinE2/RawData` | `Main/Axiom/LinProgram/Generated/E2` |
| `External/Computation/LinProofs` | LinProgram 的 `Generated`、`Interpretation` 和入口 |
| E₂、DB、selected 转换脚本 | `Main/Axiom/LinProgram/Translate` |
| `External/Computation/{Near126,AppendixTable,EtaRows}` | `Main/Axiom/Literature`：保留论文／手写需求接口来源，不冒称机器直接输出 |
| Lin 基表证明、基构造、平方检测与维数证明 | `Interface/Solution/LinProgram` |
| 固定 foundation、Milnor 的原输入 | `Challenge1` 包；`Interface/Axiom/Challenge1.lean` 暂时承认其存在 |
| 固定 Lin presentation 与微分表输入 | `Challenge2` 包；`Main/Axiom/Challenge2.lean` 暂时承认其存在 |
| `Examples/` | `Main/Axiom/LinProgram/Examples/`，保留原声明名 |
| 依赖这些 axiom 的固定对象及条件推论 | `Main/Axiom` 解释层；论文所需计算推论归 `Main/Solution/Computation` |
| `reference/`, `aimpaper/` | `Main/Axiom/Literature/{Sources,MainPaper}` |

完整逐文件映射见 [stage-layout-moves.json](stage-layout-moves.json)。源论文与其制品保持原字节及 SHA-256；生成 Lean 分片仅因 import／生成器路径更新而变化，manifest 中的输出摘要相应刷新。

## 本次没有补齐的边界

- 原四组项目输入已收束为两道边界：`Challenge1` 关联 foundation 与同一 H𝔽₂ 的 Milnor 坐标，`Challenge2` 关联 Lin presentation 与使用该 presentation 的全部微分表解释。消费端当前各有一条 `Nonempty ChallengeN` axiom；旧公开名称均为见证投影。Def 不声明项目公理。
- `Def` 仍有六条向输入包的 import，引用的是 E₂ 字面数据、provenance 类型、显式输入 wrapper 或条件文献推论，均不导入项目 axiom。纯公共层的最终拆分仍需结合模型接口讨论，不在本次进行语义重写。
- `Main` 的部分输入解释仍使用 Interface 中已有的基表证明；其中的 `basisTable_correct` 尚有 `sorry`。目录归位没有实现所有阶段的证明债务隔离。
- 两道边界的生产端 theorem、消费端 axiom 和共享类型已经建立，无需维护另一个类型对齐表。两个 Solution theorem 的正文仍为 `sorry`，只完成了陈述冻结，没有完成数学构造。部分既有 Lin 基础证明仍需逐项接入 Challenge 2。
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

自动化 CI 此次增加了新路径的来源文件检查和转换器现有测试；完整的 JSON/Lean 来源投影在本地验证通过，尚未接成 CI 作业。边界两侧直接引用同一个 `Nonempty ChallengeN` 类型，不再建立重复签名的对齐 CI。
