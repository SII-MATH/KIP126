# 当前阶段与目录规范

本规范采用本次用户明确指定的架构，替代旧的两道总包传递架构。第 0 步只冻结数学接口，不要求完成计算认证或论文证明。当前剩余问题及验证结果见[本次重构报告](audits/stage0-57647d2-iteration-2.md)；历史审计按其快照理解。

| 位置 | 职责 |
| --- | --- |
| `KIP126/Def/` | 全部数学对象、操作、谓词、结构条件、对象来源与比较接口；可含一般证明。不得导入 Interface/Main，不声明计算或文献公理。 |
| `KIP126/LinProgram/` | 独立固定数据管线：原始 DB/CSV、hash/manifest、确定性转换器、生成的 Lean 数据、参数化解释和数据内部证书。不声明阶段公理，也不自动将表格识别为实际模型。 |
| `KIP126/Interface/Challenge/` | 精确 C(M) 认证目标，每个目标 theorem 使用 `by sorry`。 |
| `KIP126/Interface/Solution/` | 实际计算认证及其有效支撑证明；不得消费 Challenge 占位或 Main 计算公理。 |
| `KIP126/Main/Axiom/` | 只显式声明 Main 阶段接受的准确 A(M)、C(M) statement 及其来源、范围和阶段性说明。 |
| `KIP126/Main/Challenge/` | 唯一标准 T(M)，仅导入定义层；证明为 `by sorry`。 |
| `KIP126/Main/Solution/` | 从相同对象的 A/C 推导本文工具、命题及 T；复杂证明尚可 `sorry`，不得把它们重新列作输入。 |

Interface 仅有 Challenge、Solution 两个直接子目录；Main 仅有 Axiom、Challenge、Solution 三个直接子目录。入口 `.lean` 仅导出模块。旧 `Challenge1.lean`、`Challenge2.lean`、总包存在公理及其 `Classical.choice` 投影链已删除。

## 数学对象与目标

固定背景、sphere Adams tower、标准 Milnor/cobar 类和共同代表的非零永久存活均在 Def。最终目标为：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

它表示 stem 126 上指定标准类的非零 E∞ 存活。上同调使用 `H^n(X) = [X,Σ^n HF₂]`，实现为 `[Σ^(-n)X,HF₂]`；HF₂ 的 π_n 模结构单独定义。实际同伦群按 ℤ 模处理，E₂ 的 F₂ 结构不外推到全部同伦群。

Def 中定义本文结论的 Prop 语言，不等于把结论成立作为 M 字段。源模型构造、比较定理的准确声明与其 `sorry` 证明必须分别记录。

## C 边界

`LinProgram/Route/Certification.lean` 的 `Certification D G` 是存在同一 R、L，使基、CSV、乘积、标签、有限记录、底胞和顶胞七项成立的数学命题。
`Interface/Challenge/LinProgram/Route.lean` 和 `Main/Axiom/Computation/Route.lean` 的完整声明同型，保持固定标准基础、实际 ν 的检测条件与 G 的标准标签身份。主证明局部拆解存在式后，全部消费者继续使用同一个 R、L；没有全局选择见证。

这类程序解释存在命题只包装同一计算的相关数学证书，不承担模型或外部文献的交付。`BasisTable` 是保留的独立基础证书目标，其 theorem/axiom 同型。

原始 DB/CSV、来源清单、`selected.json`、生成 Lean 数据及其参数化解释统一放在 `LinProgram/`。有限到无限、全候选排除、λ 注入等是带精确条件的内部推导，不是新增程序原始输出。空基必须保留；未知、候选和特殊状态码不得解释成非零永久存活。

## A 与内部推导

`SourceApplicationData` 明确是来源结果与内部适配共同使用的消费语言，不是整体接受公理。`ExternalLeaves` 只列实际前人成果；`Main/Axiom/Literature/{Source,Synthetic,Range,Moss}.lean` 分别显式接受它们。Synthetic 叶子带同一个 `SourceModel D η G`，实际 ν/λ、Day tensor、Adams 塔、E₂ 和第一商、realization 与其悬移/乘法均按具体源映射绑定。`ModelBindings` 以及完整 `Inputs` 由内部适配器组装；不能公理化整个模型比较包。preferred pairing、真实悬移与有限商边界各有独立绑定，最终验收及证明债见本轮报告。

May 的带符号 TC3 源结果与项目特化分开；Toda 的低维输入与 η²/Toda 推导分开；BX 原始有限判据与 λ 规范化、任意选择版本分开。

`Main/Solution/Tools/Route.lean` 的三种本文工具只取 A 及其明确模型比较，无 C 依赖。若认证重放使用这些工具，必须独立补完工具证明。`Main/Solution/Route/Conditional.lean` 明确陈述相同 A/C、一般消失线及经典过滤分离性到 Proposition 7.8/7.9，再到标准 T 的条件路径。内部命题尚用 sorry 时，这条路径只表示责任已声明。

## 检查与验收

- `python3 scripts/check_stage0_architecture.py`：目录、导入闭包、占位消费、旧传递链检查。
- `lake build KIP126.Checks.ClassicalAdams.StageInputDeclarations KIP126.Checks.ClassicalAdams.RouteCertification`：Lean 完整声明类型一致性。
- `lake build KIP126.Checks.ClassicalAdams.StandardFinalBoundary`：标准 T 的定义边界。
- `select-route.py --check` 与来源清单检查只证明生成一致和文件身份，不证明数学认证。

第 0 步允许准确的模型实现、比较、认证和论文证明暂未证明。定义、量词、次数、范围、来源适用条件或同一对象绑定的缺失仍是接口阻塞。编译通过及无导入环不替代数学语义审查。
