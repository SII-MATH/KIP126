# Def / StableHomotopy

## 1. 预期

提供项目选定的抽象稳定同伦上下文：稳定加性对称幺半范畴、球谱与悬移、函子性 cofiber、distinguished triangles、smash、mapping spectrum、同伦群和 exactness；并提供 H𝔽₂、同调/上同调、乘法/合作运算、Künneth、Milnor basis 与纯 Toda 规律所需的参数化结构。

## 2. 现有

约 95 个文件实现了 stable context、cofiber sequence 与 connecting maps、部分长正合列、tensor/suspension compatibility、mapping spectrum、mod-2 homology/cohomology、ring/coaction/cooperations、Künneth 与 Milnor basis 的大块接口，以及 cone-based shifted Toda relation 的 composability、存在和左右不定性等基础定理。固定 `StandardAdamsFoundation` 实例已迁至 Main/Axiom；Def 保留其结构类型和条件性结果。

issue #135 尚未修：当前 `Mod2Cohomology H n X := [ΣⁿX,H]` 按仓库悬移约定表示通常的 `H⁻ⁿ`，但 `UniversalCoefficientData` 却把它与同次数 `H_n` 的对偶配对，次数符号不一致。目录迁移没有改变此 statement。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **抽象 context 和 H𝔽₂ 操作接口：约 55%–70%。** 许多结构与推论已存在，并支撑 ClassicalAdams 的长证明链。
- **可提供标准稳定基础与论文全部法则：约 30%–45%。** 具体模型见证、完整 exactness/sign、#135、May smash-boundary、Toda 全不定性/自然性以及 Adams filtration 分解仍缺。

## 4. 待做

- 修 #135 并统一全仓库同调/上同调次数约定，增加悬移球面的非零/消失测试。
- 补 standard foundation 所需但当前只作为 Main axiom 的具体见证或精确外部边界。
- 完成长正合列剩余位置、tensor exactness、sign 与 braiding compatibility。
- 完成 A₀ 所需 Ravenel filtration factorization、May smash-boundary 和 Toda 的自然性、悬移、乘积、shuffle。
- 继续把 Milnor/Künneth 假设拆成最小结构，避免在一个大 record 中隐藏结论。

## 5. 建议步骤

1. 先修次数约定并做跨 ClassicalAdams 的编译影响审计。
2. 列出 `standardFoundation` 每个字段的消费者，按实际需求提供模型数据或定理。
3. 关闭 exactness/tensor 基础，再证明 May 与完整 Toda A₀。
4. 用 `#print axioms` 审计传入 ClassicalAdams 的关键 theorem 依赖锥。
