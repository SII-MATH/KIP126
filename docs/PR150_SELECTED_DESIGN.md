# PR150：设计择取与最终收尾

本轮基于 develop 的共享阶段接口；不整分支合并，不恢复 PR 的目录或独立阶段公理。
标准 h₆² 定义、最终 Challenge 命题、固定原始数据和既有 Main 推导前提保持不变。

## 三阶段的现行声明布局

按用户确认，Main 仅为唯一最终定理保留 `Challenge/h6_sq_permanent.lean` 与 `Solution/h6_sq_permanent.lean`
配对。32 个中间 Challenge 镜像文件已删除，所有中间陈述、准确前提和已有
证明继续放在 Main/Solution；待证处明确保留 `sorry`，不改为模型字段或公理。
同一规则现已扩展到 Def/Interface：它们分别只保留 `Nonempty Challenge1`、
`Nonempty Challenge2` 的总交付配对。Def 的 4 个和 Interface 的 25 个内部
Challenge 文件已移除；总包中的文献/计算投影也只在 Solution 保留实际证明。
根交付类型与所有 Solution 数学内容不变。

最终 Solution 已串接同一 `Main.StageInput.witness` 上的 Proposition 7.8/7.9，
这两条命题的证明仍为 `sorry`。最终逻辑步骤已连接，完整数学证明尚未完成。
本次布局调整不删除 Solution 证明，不改变最终标准目标或 A(M)/C(M) 的前提。

## 前一批五项（fa54466）

| 项目 | 当前实现 | 责任与限制 |
| --- | --- | --- |
| 上同调次数 | `Def/StableHomotopy/Cohomology/Data.lean` 的 Hⁿ 使用 `[Σ⁻ⁿX,HF₂]`；独立 `mod2HF2HomotopyModule` 保持 πₙ 的次数 | 可表性和系数标量证明有实际证明体；旧名 `cohomologyRepresentable_neg` 保留于负上同调次数 |
| 规范收敛与实际塔比较 | classical `Convergence.canonical`、synthetic `Model.convergence_canonical` 约束实际塔提升；`RealizationTower` 从 F.map、张量、单位、层和边界箭头定义 E₂ map | 代表存在、唯一性、cycle/boundary 保持及部分比较定理仍为显式 `sorry`；数据文件不含待证定理 |
| 来源与模型比较 | 根 `Challenge2.lean` 中 ClassicalSource、TmfSource、NuCofiberSource 及 Binding；原始商代数与 QuotientAlgebraBinding/AlgebraBinding 分开 | `Statements` 提供来源结论；根 `Challenge2.routeApplication` 另交付内部应用结果。来源的存在不能验证任意预选 normalized lifts 或限制映射 |
| 张量、悬移和正合性 | `ClosedSymmetricTensorTriangulated` 针对指定 CommShift；`Challenge1.TensorInput` 关联左右张量及内 Hom 的 unit/counit | 不再量化任意悬移比较；这些相容性属于既有 Challenge1 构造义务 |
| C(M) 分项认证 | 根 `Challenge2.lean` 的 `CertifiedRealization`，以及 `Interface/Solution/LinProgram/Route/Certification.lean` 中的内部认证陈述与证明 | 七项共用 R/L/G；组装和拆包不重新 choice。联合存在仍依赖原 Challenge2 生产目标，尚未证明七项数据的真实性 |

## 同一见证的接线

Challenge1 仍只由原阶段见证选择一次，其 Route.Model 新增 synthetic 规范收敛条件。
Challenge2 的模型绑定包含同一来源数据、η/ν、tmf 标签、商代数及其比较。
realization 的权重比较固定零权值、λ 箭头和自然性，`nuE2` 明确使用它产生的
weight bases 和实际 realization tower map。第一 λ 商的标签比较保留真实共同代表与
E∞ 等式；只有额外高过滤消失前提才推出同伦代表唯一。

`Statements.toInputs` 现在同时接收来源 Statements 与内部 Application，
Main.StageInput 直接使用原见证的两个字段，不导入 Interface 的生产证明。
旧 `Inputs` 和 `A := Nonempty Inputs` 仅保留为已应用结论的兼容 API；
当前外部 A(M) 对应 `Statements`，不包含 `Application`。
`Application.nuSource` 是兼容三条 lift 的内部构造结果，不属于外部 A(M)。
`nuCofiber_of_source` 负责沿三条实际 map 等式运输这个结果；不会从一个存在性声明
自动推断所有预选 maps 的三角都 distinguished。

## tmf 适配的准确前提

TmfSourceResults 在来源对象上记录 κ̄、w 的检测及实际 κ̄⁴w 的非零 Hurewicz 像。
`tmf_of_source` 还显式要求同一模型的乘法检测比较，以及 g⁴Δh₁g 的
`NonzeroSurvival`。非零同伦元素可能在更高过滤中，不能从非零像直接省掉后一个前提。

`application_of_parts` 保留兼容来源 lift 三角和高类非零存活两个前提；最终收尾又显式加入 `TodaSecondaryComparison`。
Interface 构造总包时必须满足它们；本轮没有把它们增加为 Main 的新公理，
也没有虚构一个对所有 Bindings 自动成立的 application 存在定理。
tmf 比较证明仍待完成；对任意同检测代表的推广仍在 Main，保留原消失线与分离性前提。

## 前一批的历史验证范围

当时验证五项所改定义、受影响的系数/Milnor 计算、同一见证关联、生产/消费依赖方向、
当时新增的 Interface 配对声明，以及原标准 Final 目标。内部镜像现已移除。编译与来源哈希检查只说明接口
可核对，不表示构造、计算认证或论文证明已经完成。本轮不处理 CI。

前一批五项新增 17 个生产侧证明占位：classical 规范收敛 2 个、synthetic
提升与检测 5 个、第一商检测 2 个、realization 权重比较 2 个、
实际塔及第一商比较 5 个、Interface tmf 适配 1 个。当时 Challenge 的
配对占位另计，现已移除内部镜像；既有 Solution 证明未改为 sorry。文献边界检查仅登记其中实际页映射
所需的两条 cycle/boundary 保持义务，其余传递依赖仍禁止未登记的 sorry
和非标准公理。

前一批定向验证已通过：上同调/系数与 Milnor 下游、Mapping、StageInputDeclarations、
RouteGoals、RouteFixedFinal、SelectedDesignExtraction 和 LiteratureBoundary。
另有 12 项目录/阶段边界测试通过，来源检查覆盖 28 组、53 个声明和 17 个文件哈希。
这些检查不将已登记的未完成证明算作完成。

## 最终七项收尾（2026-10-03）

| 项目 | 已实现的边界 | 仍须交付的数学证据 |
| --- | --- | --- |
| May | `MayPushpullData`/`MaySourceResults` 保存 TC3 的实际顶点、提升与负号；Interface 的带符号结论、exponent-two 投影定理有证明 | 当前模型满足来源 TC3；具体使用无符号结论时的 exponent-two 前提。未要求所有同伦群为模 2 |
| Toda | `TodaSourceResults` 只含同一 h₀ 的标签/环关系/低维不定性；两条具体 Toda 隶属归 `TodaApplication`，有条件组装有证明 | `TodaSecondaryComparison` 的实际低括号、star 操作及其 λ²η 乘积识别。IWX 的 C-motivic 公式不自动证明 synthetic 版本 |
| λ 核 | 完整来源范畴的 localization 与完成化分开；代表等价由实际 completion adjunction 构造，Interface 证明有限幂核运输 | 来源有限幂核定理、所选对象上的 realization-zero 和 λ 比较。未断言 hypercomplete 球面紧致，未推广为 λ 单步单射 |
| Moss | 来源只涉及同一个 classical convergence，Interface 沿其等式运输 | 来源 Moss 条件命题本身；完整 defining system、null products、no-crossing、residual 前提均保留 |
| 目录 | Main/Axiom 仅有阶段假设、输入结构和来源说明；Hopf 构造/投影移至 Main/Solution，实际 Mathlib 球谱适配及非零性证明在 Mathlib；Selected 元数据移至 LinProgram | 当时保留必要的兼容重导出；后续单导入入口已删除，直接引用实际模块。原证明体、数据字节保持 |
| 来源清单 | schema 2 分列来源、模型比较、内部适配；检查真实模块、声明、角色/证明状态及原文哈希 | 清单核对不证明来源数学；Moss 原扫描和 Toda 原书仍不标为已读 |
| 文档和 Blueprint | 按当前同一见证、接口、依赖和证明状态同步，补齐已存在平方证书及新增适配定理的库导出；历史 `A := Nonempty Inputs` 明确为消费兼容名 | 外部 A(M) 是 `Statements`；`Application` 不因此变成来源定理 |

新增的六个 Interface 适配定理均有实际的条件证明，继续保留在 Solution；
当时建立的内部 Challenge 占位现已删除。没有新增独立 axiom，也没有把原有 Solution 证明退回 sorry。
原来的 tmf 适配及其他基础构造占位继续保留，不能将这次结构接线完成报告成
这些数学构造已完成。最终 h₆²、Main Proposition 7.8/7.9 和计算数据范围未变。
May 的未使用消费字段从无符号式纠正为来源带符号式，是本批次明确的接口修正。
旧 `MayLiteratureInput`、`cataloguedMaySmashBoundary`、`.interface` 曾作为过渡
包装保留；当前已由 `Challenge2.LiteratureInterface.route.may` 取代，不再形成
平行的 Main 文献输入边界。

PR150 采用设计择取结束，不整分支合并。原分支中破坏阶段交付或最终目标
Challenge 边界、重复阶段公理、
把证明退回 sorry、扩大 tmf 代表量词、重复目录体系，以及哈希不匹配的 manifest
均未接纳；已有 develop 实现仍是权威实现。剩余实际数学证明属于已列出的生产
与论文证明义务，不是继续从 PR150 搬运旧实现的待办。本轮不处理 CI。

PR150 收尾时的历史验证已通过：受影响的路线、当时的 Main/Interface 配对声明、阶段依赖、Hopf
cofiber 和最终目标检查；库入口及全部平方证书的编译；Blueprint 网页生成与
1,540 个声明引用核对；来源清单中 68 个声明的真实所属模块和 17 项原文哈希；
14 项目录边界检查；Selected 重生成及 87 项输出哈希。Selected 元数据搬迁
保持原字节，标准 h₆² 和最终命题没有修改。这些检查没有消除上文列出的既有
数学证明占位，也没有执行或调整 CI。上述历史配对检查不再要求任何阶段的中间镜像，
不能据此声称本轮删除已通过验证；现行检查保留三个总目标配对并直接检查 Solution。
