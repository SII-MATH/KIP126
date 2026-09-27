# Def / Interface / Main 布局与迁移记录

本次工作只整理已有内容、更新路径和补充模块说明；不补证明、不修数学陈述、不新增阶段公理或目标。接口范围沿用 [审核 issue #138](https://github.com/SII-MATH/KIP126/issues/138)，后续的陈述变更由整合者协调。

## 从哪里开始读

- [Def](../KIP126/Def/README.md)：公共数学对象、谓词、构造器和通用性质。
- [Interface](../KIP126/Interface/README.md)：验证与工具定理的目标／证明。
- [Main](../KIP126/Main/README.md)：输入包和 near-126 至最终目标的推导。

每个已有 Lean 内容的组件目录均有 `README.md`，按“期望内容、现有内容、完成度、待做事项、执行步骤”组织。领域入口解释数学范围；下层文档列现有声明、占位及上游依赖。Challenge 的 `sorry` 是目标陈述的约定，不计作该目录待补的证明。

局部文件／声明盘点不等于数学完成度，不能把无 `sorry` 或编译成功换算成整个数学目标已完成。文档对未冻结的任务总量不提供伪精确百分比。

## 目录及职责

```text
KIP126/
├── Def/                    公共对象、谓词、构造与性质
├── Interface/
│   ├── Challenge/Tools/    广义 Leibniz、Mahowald、page stretch 目标
│   └── Solution/
│       ├── Tools/          上述三个目标对应的现有证明正文
│       └── LinProgram/     基表认证、平方检测与维数的现有验证
├── Main/
│   ├── Axiom/
│   │   ├── Literature/     文献原文、主论文、清单、显式输入及历史基础假设
│   │   └── LinProgram/
│   │       ├── Raw.md      原始输入版本与位置；当前没有提交大 DB/CSV
│   │       ├── Translate/  确定性转换脚本
│   │       ├── Generated/  固定 E₂ 和差分表
│   │       └── Interpretation/  解释、现有假设和条件推论
│   ├── Challenge/          Near126 / Final 目标
│   └── Solution/           Near126 / Final / Computation 现有推导
├── Mathlib/                保留原适配实现
└── Checks/                 保留回归检查
```

没有为尚不存在的证明、axiom 镜像或原始数据建立空目录。旧 `KIP126/External`、顶层 `Challenge/Solution`、`reference` 和 `aimpaper` 已迁走。公共 Lean 声明名保持原样；文件模块路径改变，因此原来的 `namespace KIP126.External` 或 `KIP126.Challenge` 仍可能出现在新位置，它们不是另一份代码。

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
| 固定 foundation、Milnor、Lin presentation 的原 axiom | `Main/Axiom` 对应输入包 |
| 依赖这些 axiom 的固定对象及条件推论 | `Main/Axiom` 解释层；论文所需计算推论归 `Main/Solution/Computation` |
| `reference/`, `aimpaper/` | `Main/Axiom/Literature/{Sources,MainPaper}` |

完整逐文件映射见 [stage-layout-moves.json](stage-layout-moves.json)。源论文与其制品保持原字节及 SHA-256；生成 Lean 分片仅因 import／生成器路径更新而变化，manifest 中的输出摘要相应刷新。

## 本次没有补齐的边界

- `Def` 和 `Interface.Solution` 的 import 闭包均不包含项目 axiom。现有四条项目 axiom 集中于 `Main/Axiom`；它们仍是最终证明完成前须解除的假设。
- `Def` 仍有六条向输入包的 import，引用的是 E₂ 字面数据、provenance 类型、显式输入 wrapper 或条件文献推论，均不导入项目 axiom。纯公共层的最终拆分仍需结合模型接口讨论，不在本次进行语义重写。
- `Main` 的部分输入解释仍使用 Interface 中已有的基表证明；其中的 `basisTable_correct` 尚有 `sorry`。目录归位没有实现所有阶段的证明债务隔离。
- 四条 Main axiom 尚没有完整的 Interface Challenge/Solution 对应清单及完整类型对齐 CI；本次没有用新的 `sorry` 或 axiom 补造这套接口。
- `standardFoundation` 与 `standardMilnorCooperations` 在 Literature 下归档的是历史基础假设；尚未提供逐条精确文献依据，不代表来源审核已完成。
- [#132](https://github.com/SII-MATH/KIP126/issues/132)、[#133](https://github.com/SII-MATH/KIP126/issues/133)、[#134](https://github.com/SII-MATH/KIP126/issues/134)、[#135](https://github.com/SII-MATH/KIP126/issues/135) 的陈述问题原样保留；Synthetic、ESS 等内部对象统一工作尚未开展。
- Mathlib 适配层和 KIPBase 历史组件保留；此次没有新增两种谱序列等价的证明义务，也没有迁移 KIPBase 的新数学内容。

## 后续顺序

1. 团队逐模块审核 README 的预期范围与当前陈述，优先处理已报陈述问题。
2. 整合者确认公共对象以及 Main 实际需要的输入类型。
3. 在单独工作中建立缺失的阶段目标与假设对应，并加入完整 Lean 类型检查。
4. 分配 Interface 验证与 Main 推导任务，逐步消除跨阶段证明依赖。
5. 持续迁入可复用的 KIPBase 结果，并在同一模块说明中记录新增能力和剩余问题。

## 本次迁移验证

- `lake build KIP126 scripts.Axioms` 通过；未执行用于最终证明验收的严格公理审计。
- 157 项既有自动化回归测试、3 项 Lean 来源投影集成测试通过。
- E₂ 的三个固定 CSV 重生成逐字一致；`proofs.db` 全量扫描后的 10,907 条微分及六条 selected 结果重生成检查通过，转换器现有 11 项测试通过。
- 完整来源 checker 通过：18 个来源、88 个制品；所有迁移的论文原文制品保持原字节。
- Blueprint web 构建、Python／shell／workflow 语法和模块文档相对链接检查通过。
- 对迁移前 829 个 canonical Lean 文件逐一核对：除 import、路径文字、注释及空聚合命名空间外，声明和证明正文保持一致；现有 `sorry` 未增减。
- `import KIP126` 原先可达的 724 个本地模块，在新路径下全部仍可达；声明名称保持，调用者使用旧文件路径的 `import` 则须按映射更新。

自动化 CI 此次增加了新路径的来源文件检查和转换器现有测试；完整的 JSON/Lean 来源投影在本地验证通过，尚未接成 CI 作业。Main axiom 与 Interface theorem 的类型对齐同样留待专门工作。
