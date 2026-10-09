# 步骤三：Kervaire–Lin Program Reference 的 Lean 形式化

本目录现在采用与路线图一致的全新 Lean 形式化骨架。原有实现已被覆盖，
不再沿用旧的占位模块。

## 模块顺序

- Foundations.lean：U/L 层的双次数、有限枚举、F₂、稀疏向量、线性组合、有限基、线性无关、张成、解析状态和证书容器。
- AlgebraTopology.lean：C/W 基础层的链复形、同调、过滤、点空间、映射锥和余纤维接口。
- TopologyConstructions.lean：用等价闭包、商类型和商拓扑实际构造约化悬挂、映射锥及其余纤维序列。
- SpectrumModels.lean：逐级点空间、悬挂结构映射、谱映射和两点离散空间的悬挂谱模型；不把它误称为已完成的稳定同伦商。
- CWConstructions.lean：欧氏单位球面、闭圆盘、边界包含、实际映射锥附着步骤和有限附着数据。
- ConcreteHopf.lean：ℝ⁴/ℝ³ 中的单位三球面、单位二球面和经典 Hopf 多项式映射；证明球面方程、连续性与基点保持。
- StableNuModels.lean：两点离散球谱的逐级悬挂、ν 的稳定谱映射、Cν 第 0 级映射锥及其悬挂谱、稳定茎映射族与同伦商载体。
- StableHomotopy.lean：基点同伦、稳定映射复合、余纤维三角和 Toda 括号的数据结构。
- KervaireMathematics.lean：K01–K13 的有类型 Adams 类、平方、击中通道、存活、永久循环和唯一性数据。
- CohomologySteenrod.lean：A01–A19 的分次 F₂ 代数、上同调杯积诱导乘法、Sq 运算的单位/不稳定/Cartan 公理、明确的 Adem 有限和，以及严格的分次 A-模映射。
- SteenrodAdams.lean：A/R/E 层的 Steenrod 词、A-模、自由分辨率、Hom、Ext、Adams 页、微分、击中、存活和永久循环。
- AdamsHomology.lean：把 Adams 下一页定义为当前微分的循环模边界商，并给出双向逆识别结构。
- AdamsRules.lean：带双次数搬运的页乘法、代数公理和广义 Leibniz 规则。
- FilteredExtensions.lean：过滤交换群、关联分次、essential/inessential 与首项消去意义下的 crossing/no-crossing。
- LinProgram.lean：X/G/P/K 层的过滤扩张、essential/inessential、crossing/no-crossing、广义规则、证明树、程序输入输出、检查器可靠性接口和 Kervaire 局部事实。
- LinProgramReference.lean：总入口。
- Smoke.lean：基础内核可检查例子。
- SEMANTIC_AUDIT.md：逐层语义审查、已修正问题和仍待具体化的接口清单。
- MATHEMATICAL_COVERAGE_AUDIT.md：只针对 Kervaire 局部数学概念的覆盖率和语义审计。

## 语义边界

每个定义前都有中文自然语言注释。程序名称、字符串和数据库行只作为有限引用；
只有在对应的次数条件、链复形条件、Steenrod/Ext/Adams 条件或证书可靠性命题
成立后，才能把记录解释成数学事实。

本阶段证明的是基础结构性质和证书接口的可靠性，例如：

- F₂ 中 x+x=0；
- 边界是循环、上边界是上循环；
- Adams 存活的单调性和永久循环的页级性质；
- 规则应用在显式前提下推出其结论；
- Kervaire 局部证书推出 h₆² 的存活命题。

这里没有声称已经导入 Kervaire 论文的真实数据库，也没有把 105 个候选排除
或 h₆² 存活作为无证据的定理；这些结论必须在后续步骤由真实程序输出和证书证明。
路线图的节点数多于 Lean 声明数，是因为多个细粒度节点共享同一个参数化数学
结构；两者的对应关系和尚未具体化的接口见 `SEMANTIC_AUDIT.md`。
需要特别注意：本阶段并未完成路线图中所有数学概念；真实球面、Hopf ν、Cν 第 0 级
和稳定茎商载体已补入，但 Cν 全谱相容结构、稳定茎的 pinch 加法、Adams 收敛和具体
Kervaire Ext 类仍是后续工作。缺口和语义不一致之处见
`MATHEMATICAL_COVERAGE_AUDIT.md`，程序层文件不是数学完成度的证明。

## 构建

本目录的 Lake 包使用固定的 ELAN_HOME：

/inspire/hdd/global_user/baokangjie-CZXS25250151/.elan

在环境恢复后，从本目录执行：

lake build

总入口是 LinProgramReference；Lean 文件中的注释和路线图节点可逐项对照
roadmap.md。
