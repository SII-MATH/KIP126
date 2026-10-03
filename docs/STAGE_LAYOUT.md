# 当前阶段结构

本文件以本次用户指定的三阶段架构为准，取代旧的迁移批次规则。历史审查报告只记录当时的源码，不定义当前架构。

| 位置 | 唯一职责 |
|---|---|
| `KIP126/Def/` | M 的对象、操作、结构、谓词，以及对象实现、来源识别、模型比较接口和基础构造。不得直接或间接导入 Interface 或 Main。 |
| `KIP126/Interface/Axiom/Challenge1.lean` | 传递 Def 的 Challenge1 交付命题。不得在这里另选一套标准球谱。 |
| `KIP126/Interface/Challenge/Challenge2.lean` | 在 Def 的固定背景上声明来源 A、计算 C、比较和内部适配的交付类型；同时记录 Interface 的生产目标。 |
| `KIP126/Interface/Solution/` | 交付的实际认证、比较和组装证明。准确未证性质可用 sorry；不把它们称作已认证。 |
| `KIP126/Main/Axiom/Challenge2.lean` | 传递与 Interface 生产目标完全相同的 Challenge2 命题。 |
| `KIP126/Main/Challenge/h6_sq_permanent.lean` | 唯一最终 T(M) 声明。它的全部项目导入必须在 Def 中，证明按约定为 sorry。 |
| `KIP126/Main/Solution/` | 本文独立工具、内部推导及最终证明。认证若使用本文工具，只能使用不依赖 Main 输入或同一待认证 C 的独立工具证明。 |
| `KIP126/LinProgram/` | 固定数据、解析、参数化数学解释和局部证书，不选择阶段 witness。 |
| `KIP126/Checks/` | 编译、次数、定义依赖和交付一致性检查，以及有限表格示例。 |
| `MainPaper/`、`Source/` | 分别保存主论文与外部文献、固定版本及来源台账；沿用最新 develop 的目录。原始资料不是 Lean 定理。 |

Interface 和 Main 的直接子目录都恰为 `Axiom/`、`Challenge/`、`Solution/`。根 `Challenge1.lean`、`Challenge2.lean` 只保留导出，不拥有第二份类型或证明传递。

固定经典背景及其标准类在 Def 内确定。Interface 的 Challenge1 交付必须与这一实现绑定，并交付实际球塔的完成/收敛背景。Challenge2 一起交付该背景上的路线、来源绑定、文献、计算坐标、tmf 单位映射及比较；其字段显式依赖同一个 `routeInput`。Def 只声明路线的语言，不先从弱结构中任选路线。两次从同类型独立选择对象不能替代这项绑定。

本次主要迁移：

- `KIP126/Challenge1.lean` 的数学内容归 Def；根文件只导出。
- `KIP126/Challenge2.lean` 的阶段交付内容归 `Interface/Challenge/Challenge2.lean`；根文件只导出。
- `Interface/Solution/StageInput/` 的基础、球塔和标准类归 `Def/StageInput/`。
- `Main/Examples/` 归 `Checks/Examples/`，保留已有有用途的有限表格证明。
- 沿用最新 develop 对旧文献包装的删除：文献输入集中于 `Interface/Challenge/Challenge2.lean`，条件性 Cν 事实位于 `Main/Solution/Literature/HopfCofiber/Predicates.lean`；主论文与外部资料分别归 `MainPaper/`、`Source/`。
- 本文工具的 Prop 语言归 `Def/Kervaire/Route/Tools/`；实际证明目标仍在 `Main/Solution/Tools/`，不会作为 M 字段或外部定理接受。

第0步与最终证明完成度的区别、范围及当前证明责任见 [STAGE0_INTERFACES.md](STAGE0_INTERFACES.md)。检查命令与实际结果须记录在本次修改报告中，不能沿用旧批次的通过记录。
