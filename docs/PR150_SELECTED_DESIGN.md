# PR150：剩余五项设计提取

本轮基于 develop 的共享阶段接口；不整分支合并，不恢复 PR 的目录或独立阶段公理。
标准 h₆² 定义、最终 Challenge 命题、固定原始数据和既有 Main 推导前提保持不变。

| 项目 | 当前实现 | 责任与限制 |
| --- | --- | --- |
| 上同调次数 | `Def/StableHomotopy/Cohomology/Data.lean` 的 Hⁿ 使用 `[Σ⁻ⁿX,HF₂]`；独立 `mod2HF2HomotopyModule` 保持 πₙ 的次数 | 可表性和系数标量证明有实际证明体；旧名 `cohomologyRepresentable_neg` 保留于负上同调次数 |
| 规范收敛与实际塔比较 | classical `Convergence.canonical`、synthetic `Model.convergence_canonical` 约束实际塔提升；`RealizationTower` 从 F.map、张量、单位、层和边界箭头定义 E₂ map | 代表存在、唯一性、cycle/boundary 保持及部分比较定理仍为显式 `sorry`；数据文件不含待证定理 |
| 来源与模型比较 | `Challenge2/Route/Literature` 中 ClassicalSource、TmfSource、NuCofiberSource 及 Binding；原始商代数与 QuotientAlgebraBinding/AlgebraBinding 分开 | `Statements` 提供来源结论；根 `Challenge2.routeApplication` 另交付内部应用结果。来源的存在不能验证任意预选 normalized lifts 或限制映射 |
| 张量、悬移和正合性 | `ClosedSymmetricTensorTriangulated` 针对指定 CommShift；`Challenge1.TensorInput` 关联左右张量及内 Hom 的 unit/counit | 不再量化任意悬移比较；这些相容性属于既有 Challenge1 构造义务 |
| C(M) 分项认证 | 根 `Challenge2/Route/Data.lean` 的 `CertifiedRealization`，以及配对 `Interface/{Challenge,Solution}/LinProgram/Route/Certification.lean` | 七项共用 R/L/G；组装和拆包不重新 choice。联合存在仍依赖原 Challenge2 生产目标，尚未证明七项数据的真实性 |

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

`application_of_parts` 因而保留两个明确交付：兼容的来源 lift 三角和高类的非零存活。
Interface 构造总包时必须满足它们；本轮没有把它们增加为 Main 的新公理，
也没有虚构一个对所有 Bindings 自动成立的 application 存在定理。
tmf 比较证明仍待完成；对任意同检测代表的推广仍在 Main，保留原消失线与分离性前提。

## 验证范围

验证五项所改定义、受影响的系数/Milnor 计算、同一见证关联、生产/消费依赖方向、
新增 Interface 配对声明，以及原标准 Final 目标。编译与来源哈希检查只说明接口
可核对，不表示构造、计算认证或论文证明已经完成。本轮不处理 CI。

本轮新增 17 个生产侧证明占位：classical 规范收敛 2 个、synthetic
提升与检测 5 个、第一商检测 2 个、realization 权重比较 2 个、
实际塔及第一商比较 5 个、Interface tmf 适配 1 个。Challenge 中的
配对占位另计；既有证明未改为 sorry。文献边界检查仅登记其中实际页映射
所需的两条 cycle/boundary 保持义务，其余传递依赖仍禁止未登记的 sorry
和非标准公理。

定向验证已通过：上同调/系数与 Milnor 下游、Mapping、StageInputDeclarations、
RouteGoals、RouteFixedFinal、SelectedDesignExtraction 和 LiteratureBoundary。
另有 12 项目录/阶段边界测试通过，来源检查覆盖 28 组、53 个声明和 17 个文件哈希。
这些检查不将已登记的未完成证明算作完成。
