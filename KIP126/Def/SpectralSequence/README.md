# Def / SpectralSequence

## 1. 预期

这是内部数学对象 M 的核心：`SSData`、`PreSS`、内部 `SpectralSequence`、Page/dᵣ/E∞、代表元与存活谓词、谱序列态射、filtered-complex 构造、收敛/截断/完备化、extension SS、page extension 与 crossing。项目只采用这套内部对象；Mathlib 谱序列 adapter 保持历史用途，不要求证明两套对象全局相同。

## 2. 现有

约 97 个文件已经覆盖上述大部分名词。`FilteredComplex` 可构造 cycles/boundaries、`SSData`、`PreSS` 和内部 `toSpectralSequence`；有限页有 quotient、page differential、square-zero、kernel/image 与相邻页关系。另有 convergence/filtration/completion、bounded/unbounded extension 骨架、crossing predicates、`NonzeroSurvival`、代表元及若干自然性结果。

主要已知陈述问题是 issue #132：`PreSSMorphism.comm_d` 与 `SpectralSequenceMorphism.comm_d` 允许选择与底层 `φ` 无关的任意页映射，零映射总能满足条件，因此当前字段没有表达“诱导页映射与微分交换”。此次目录迁移不修它。代表元 crossing、态射函子性、E∞/abutment coherence 和完整 ESS 仍未完成。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **内部对象与有限页 calculus：约 65%–80%。** SSData/PreSS/Page/dᵣ 和 filtered-complex 主构造已有实质实现。
- **论文所需的完整 A(M) 谱序列工具：约 35%–50%。** #132 阻断可靠态射语义，收敛、representative crossing、unbounded ESS 和 page-extension 完整性质仍缺。

## 4. 待做

- 修 #132：从 `preserves_Z/preserves_B` 构造规范商页映射，并让 `comm_d` 引用该映射；同步修 identity/composition/category。
- 完成代表元级 page relation 与 crossing/no-crossing，而不只是在 quotient page 上证明唯一性。
- 统一 convergence、E∞、truncation、completion 和 abutment 的 coherence。
- 完成 bounded/unbounded extension SS、完整 target coset、coherent solution tower 及自然性。
- 清理与 `KIP126/Mathlib` adapter 的边界，保留已有局部适配结论但不扩张成全局比较项目。

## 5. 建议步骤

1. 先修态射语义并增加“零页映射不能为任意非零底层态射作证”的回归。
2. 固定 internal page-map API 后实现 filtered-complex morphism 的函子性。
3. 先完成有限页 representative/crossing，再推进 E∞ 和 convergence。
4. 在这一稳定底座上重述 Interface 的 generalized Leibniz/Mahowald/page stretch。
