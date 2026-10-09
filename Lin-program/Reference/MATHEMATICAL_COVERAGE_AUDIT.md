# Kervaire–Lin Program 数学概念覆盖审计

## 审计对象

本报告只审计 Kervaire 论文中实际使用 Lin Program 的数学内容：模 2 上同调、
Steenrod 代数、自由分辨率、Ext、Adams 谱序列、余纤维与扩张、稳定同伦以及
第 7 节的局部类和存活结论。输入表、C++、证书格式、检查器和证明树不是本
报告的形式化目标；它们最多是以后承载这些数学命题的计算层。

## 总结结论

**目前没有把路线图中的全部数学概念严格形式化。** 当前 Lean 文件是一个有
部分正确基础定义的接口骨架，而不是 Kervaire 局部数学的完整形式化。能够
编译不代表语义已经完成。

## 覆盖等级

- **严格**：Lean 类型和字段直接表达了数学定义，并且关键基本性质已有证明。
- **部分**：对象名称和部分公理已出现，但仍有关键结构使用无内容的 `Prop` 接口。
- **不严格/缺失**：当前定义与数学对象不一致，或只有字符串/任意类型占位。

| 路线图范围 | 当前文件 | 等级 | 审计结论 |
|---|---|---|---|
| U01–U16 | `Foundations.lean`、Lean/Mathlib 基础 | 部分至严格 | 集合、有限性、F₂、线性映射、链复形等可用；基、矩阵、秩、张量积没有按路线图逐一建模。 |
| U17–U22 | `AlgebraTopology.lean`、`StableHomotopy.lean`、`TopologyConstructions.lean` | 部分至严格 | 已有连续基点同伦和复合；约化悬挂、映射锥的生成关系、等价闭包、商类型、商拓扑和商映射已实际构造；一般同伦类商仍缺失。 |
| U23–U26 | 多个文件 | 部分 | 过滤和有限性出现；图、终止性和证明归纳没有数学层定义。 |
| L01–L14 | `Foundations.lean` | 部分 | F₂、稀疏向量、双次数和解析状态有定义；正规形、关系理想和矩阵算法缺失。 |
| C01–C06 | `AlgebraTopology.lean` | 严格（基础层） | 链/余链复形、循环、边界、边界为循环、同调等价商已定义。 |
| C07–C21 | `AlgebraTopology.lean` | 部分 | 链映射和过滤有定义；链同伦、短正合诱导长序列、谱序列构造、自然性和有限证书缺失。 |
| W01–W23 | `AlgebraTopology.lean`、`StableHomotopy.lean`、`TopologyConstructions.lean`、`SpectrumModels.lean`、`CWConstructions.lean` | 部分至严格 | 欧氏球面/圆盘、边界包含、映射锥细胞附着步骤、映射锥和规范余纤维序列已有实际模型；序列谱和谱映射模型已定义；有限步骤的目标空间链、三角范畴完整语义仍缺失。 |
| W24–W28 | `SpectrumModels.lean`、`ConcreteHopf.lean`、`StableNuModels.lean` | 部分至严格（分层） | `suspensionSpectrum zeroSphere` 是真实的两点离散 0-球面逐级约化悬挂序列谱；`ConcreteHopf.lean` 以单位球面和多项式公式构造 Hopf 映射并证明球面方程、连续性、基点保持；`StableNuModels.lean` 构造逐级悬挂、稳定映射同伦商、Cν 第 0 级映射锥及由 Cν 生成的悬挂谱、稳定茎商载体。Cν 的稳定范畴余纤维结构映射、pinch 加法、Adams 收敛和旧占位接口的迁移仍缺失。 |
| A01–A09 | `CohomologySteenrod.lean` | 部分 | 已有分次 F₂ 代数、Sq 映射、单位/不稳定/Cartan 公理和 Adem 有限和；尚未把它们具体实例化为某个谱的上同调。 |
| A10–A22 | `CohomologySteenrod.lean`、`SteenrodAdams.lean` | 部分 | 已有带明确量词的 Steenrod 代数作用和分次 A-模映射；自由 A-模、谱上同调 A-模和自然性仍需具体实例。 |
| R01–R18 | `SteenrodAdams.lean` | 部分 | 分辨率箭头方向已修正，Hom 复形现在有 F₂ 载体和循环模边界商；精确性、最小性以及 Hom 与真实 A-模映射空间的识别仍缺失。 |
| E01–E26 | `SteenrodAdams.lean`、`AdamsHomology.lean`、`AdamsRules.lean` | 部分至严格 | Adams 元素和微分是 F₂ 向量空间/线性映射；击中、存活和永久循环有定义；下一页的循环模边界商及双向页识别已构造；页乘法和带双次数搬运的 Leibniz 方程已定义；E₂=Ext、真实收敛和具体谱仍缺失。 |
| X01–X20 | `FilteredExtensions.lean`、`LinProgram.lean` | 部分 | 过滤交换群、关联分次商、essential/inessential 与首项消去意义下的 crossing/no-crossing 已定义；余纤维扩张谱序列本身、连接映射诱导和论文特定扩张仍缺失。 |
| G01–G17 | `StableHomotopy.lean`、`AdamsRules.lean`、`LinProgram.lean` | 部分 | 稳定合成、Toda 输入、页乘法和 Leibniz 方程已有类型化数学结构；Mahowald 规则、适用条件和具体 Kervaire 规则实例仍缺失。 |
| K01–K13 | `LinProgram.lean` | **缺失** | h₆²、x 类、Fact 7.6 和 Remark 7.7 没有绑定到具体 Ext/Adams 元素。 |

## 已发现的具体语义错误

以下对象虽然名称相似，但不能当作论文中的数学对象：

1. `stableSuspension` 复用原对象的 `carrier` 和 `structureLaws`，因此不是悬挂谱；本轮另行完成了普通点空间层面的约化悬挂商构造以及逐级悬挂谱模型，但尚未把旧接口迁移到该模型。
2. 旧 `sphereSpectrum` 的载体仍是 `Unit`，旧 `hopfNu` 仍是常值函数；它们不是论文中的球谱和 Hopf 映射 ν。真实替代模型是 `sphereSequentialSpectrum`、`realSphere3`、`realSphere2`、`hopfMap` 和 `hopfSequentialMap`。
3. 旧 `cNu` 仍只保存名称和 `cofiberOfNu : Prop`；真实的第 0 级 Cν 是 `cNuPointedSpace := mappingCone hopfMap`，并带有 `cNuInclusion` 与 `hopfCofiberSequence`。全谱 Cν 尚未构造。
4. 旧 `StableHomotopyGroup n` 仍只保留语义接口；新的 `StableStemClass n` 是满足悬挂相容性的真实球谱映射族按逐级基点同伦取商所得的载体。交换群运算尚未由 pinch 映射构造，因此 `StableHomotopyGroupModel` 只表示“在该载体上待实例化的群结构”，不能冒充已证明的 π_n^S 定理。
5. `SteenrodAlgebra.ademLaw` 的类型是任意命题族，没有表达 Adem 公式的右端有限和。
6. `SteenrodModule.actionLaws` 是无内容的 `Prop`，不能保证 Sq 的单位、复合、
   Cartan 或不稳定公理。
7. `FreeResolution.exact`、`minimal`、`HomComplex.inducedByResolution` 和
   `ExtClass.quotientClass` 仍是无内容接口，因此尚未定义 Ext。
8. `AdamsSpectralSequence.e2IsExt` 和 `nextPageIsHomology` 只是命题字段，
   没有构造实际的谱序列页。
9. `LinProgram.lean` 中的旧 `IsCrossing` 仍只比较过滤度和代表值是否不同；严格的关联分次首项消去定义已放入 `FilteredExtensions.lean`，后续应让程序层引用该数学定义。

## 后续正确形式化顺序

1. 继续完成一般同伦类和有限 CW 附着；悬挂、映射锥的商拓扑构造以及球面/映射锥具体载体已经完成。
2. 定义杯积上同调环、Sq 映射、不稳定条件、Cartan 公式和 Adem 关系。
3. 用真实 A-模映射定义自由分辨率、Hom 复形、边界等价和 Ext 商。
4. 以“每一页是上一页微分的同调”构造 Adams 谱序列；逐页循环/边界商和双向识别已经完成，但仍需把它接到具体 Adams 分辨率。
5. 把 `StableStemClass` 上的加法由球面的 pinch 映射具体构造，证明其良定义和交换群公理；构造 Cν 的全谱结构映射，并把 Adams 收敛接口绑定到该真实球谱。
6. 在上述对象之上定义余纤维扩张、稳定合成、Toda/Mahowald/Leibniz 数学命题。
7. 最后才把 Kervaire 的 h₆²、x 类、Fact 7.6 和 Remark 7.7 绑定到具体对象。

因此，当前版本可以作为**审计后的基础草稿**，但不能作为“所有数学概念已经
形式化完成”的版本。程序层文件不应被误认为数学语义层已经完成。

## 本轮验证

- `lake build` 在固定工具链和 `ELAN_HOME=/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan` 下通过，共 3081 个任务。
- `LinProgramReference` 总入口已导入新增数学层；`Smoke` 目标也通过。
- `LinProgramReference` 目录中没有 `sorry` 或 `axiom`。
- 路线图已重新生成：`roadmap.html`、`roadmap.svg` 与 `roadmap.md` 同步。
