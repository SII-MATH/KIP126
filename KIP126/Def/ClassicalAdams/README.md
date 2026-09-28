# Def / ClassicalAdams

## 1. 预期

从抽象稳定同伦基础和 H𝔽₂/Milnor 数据构造 classical Adams 塔、页面、微分、乘法、收敛与标准类，并证明论文需要的一般 A(M) 性质。固定标准基础和固定球面实例可以在开发期由 Main axiom 提供，但 Adams 页面及其性质不能作为输入字段直接假设。

## 2. 现有

这是 Def 最大且最成熟的组件：约 222 个文件。已有 Adams tower、tower layer/resolution、page quotient、内部 `SSData`/`PreSS`/`SpectralSequence` 装配、有限页微分、代表元和永久存活语义、smash tower 与层配对、H𝔽₂ coaction/Künneth/Milnor 坐标、第一微分 cobar 公式，以及内部 E₂ 上 `h₆`、`h₆²` 非零的长证明链。固定 `standardFoundation`、`standardMilnorCooperations` 和内部球谱及标准元素由 `Interface/Axiom` 从同一个 Challenge1 见证特化；HopfCofiber、旧页表示下的 StandardSphere 兼容接口及计算解释闭包仍在 Main。

这次迁移没有证明这些固定实例。Def 中保留的是参数化构造与条件定理；许多乘法结果仍要求 `UnitFiberInclusionCommutes`、t-structure/connectivity 或 Künneth 等显式条件。

## 3. 粗略完成度

> 本节比例只是根据当前路线图、已有构造和已知数学缺口给出的主观规划估算，不是由文件数、声明数或 `sorry` 数计算出的可验证统计。

- **参数化 Adams 塔与有限页构造：约 70%–85%。** 塔、页面、微分、第一页/第二页和代表元主链已有实质证明。
- **论文所需固定 classical Adams 接口整体：约 45%–60%。** 固定基础实例、完整 E₂=Ext/cobar 比较、所有页乘法/Leibniz、强收敛和论文所需自然性仍未闭合。

## 4. 待做

- 从 Interface 的稳定基础证明或文献输入构造当前 Main 中固定 standard foundation/Milnor 实例。
- 完成 Adams E₂ 与 cobar/Ext 的统一识别及标准 `h_i` 映射；确保 Lin comparison 接在这一对象上。
- 完成 page pairing、两侧自然性和 `d_r` Leibniz，释放 generalized rules 的真实实例。
- 补固定球面的收敛、E∞ 检测和完备/分离条件。
- 审计 `SphereSequence`、Permanence 等仍与 Mathlib adapter 相连的历史边界，不新增内部/Mathlib 全局比较义务。

## 5. 建议步骤

1. 以 `adamsTowerInternalSpectralSequence` 为唯一内部 Adams 对象冻结下游 API。
2. 先关闭 E₁→cobar→E₂→`h₆²≠0` 的完整无阶段 axiom 路径。
3. 并行推进 tower pairing/Leibniz 与 convergence/detection，但共享对象变更由整合者统一处理。
4. 每取得固定实例能力，就从 Main axiom 依赖锥中删除相应假设并重新审计最终目标。
