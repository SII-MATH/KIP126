# Lin Program 输入与解释边界

本目录集中管理 Main 阶段使用的 Lin program 输入：固定版本信息、确定性转换程序、生成的 Lean 数据，以及这些数据在 KIP126 内部数学对象上的解释。目录名描述工程职责；计划中的接口代号不进入源码路径。

## 1. 原先期望包含什么

- 保存能够定位到固定发布版本的计算输入，不依靠 agent 逐条转录。
- 用可重复执行的程序把原始记录转换成 Lean 可读取的数据。
- 严格区分“数据库中有这条记录”和“这条记录在内部谱序列中表达的数学命题”。
- 向 Main 提供稳定、可审计的计算 axiom，并允许以后用证书复演逐步替换它们。

## 2. 现在包含什么

| 位置 | 当前职责 |
| --- | --- |
| [Raw.md](Raw.md) | 上游版本、原始格式、下载位置、schema 与摘要；不提交大型原始包 |
| [Translate](Translate/README.md) | 四个确定性转换与核对脚本 |
| [Generated](Generated/README.md) | 三个 E₂ CSV 生成的 `E2.lean`，以及 10,907 条差分的 86 个分片、查找表和 manifest |
| [Interpretation](Interpretation/README.md) | E₂ presentation、坐标解释、差分命题、统一可靠性 axiom 与 selected theorem |
| [E2.lean](E2.lean) | E₂ 数据和解释层的汇总入口 |
| [Presentation.lean](Presentation.lean) | 固定 Lin 商代数到内部球谱 E₂ 的开发期 axiom `linE2Presentation` |
| [Differentials.lean](Differentials.lean) | 差分解释与 selected theorem 的汇总入口 |

布局迁移已经完成，生成器中的模块路径也已切换到本目录。迁移保持公开数学对象和生成记录不变。

## 3. 大概完成度

**陈述覆盖：当前六类计划计算接口中有 2/6 已形成可用陈述。** 已接通的是固定 E₂ presentation，以及闭合球面有限页差分。条件/反证分支，其他谱与 map/extension，sentinel 状态，以及带范围的维数、消失和候选穷尽仍未形成同等完整的内部陈述。`2/6` 只表示类别覆盖，不表示完成了三分之一的数学工作。

**实现状态：已完成当前支持切片的机械迁移和复现。** 三个 E₂ CSV 可逐字重生成 `E2.lean`；`proofs.db` 的 2,672,275 行已全部扫描并分类，其中 10,907 条生成 86 个差分分片；六条 selected bulk 记录和一条 `basis.d2` 元数据已与真实数据库交叉核验。数学可靠性仍由 `linE2Presentation`、`sphereTable_sound` 等显式假设承担，没有复演 Lin program 的证明证书。

这里不使用 `sorry` 比率推断完成度。生成成功、文件迁移和编译成功都不等于数学证明完成；本次迁移没有补 proof。

## 4. 接下来还需要完成什么

- 为剩余四类程序输出冻结精确且不过强的内部命题。
- 保存或可恢复全字段记录，避免丢失 `depth`、`name`、`stem`、`info` 和原始方向。
- 为条件树、反证、sentinel、其他谱和 extension 建立各自的解释器。
- 在可用原始制品的环境中自动运行重生成检查。
- 设计 proof-trace checker 和 soundness theorem，逐类缩小计算 axiom。
- 等团队解决 [#132](https://github.com/SII-MATH/KIP126/issues/132)、[#133](https://github.com/SII-MATH/KIP126/issues/133)、[#134](https://github.com/SII-MATH/KIP126/issues/134)、[#135](https://github.com/SII-MATH/KIP126/issues/135) 后，重新审查受谱序列态射、Leibniz、Mahowald 和 UCD 次数约定影响的依赖。

## 5. 后续应该一步一步如何做

1. 逐类确定原始 schema、允许推出的结论及明确禁止的加强。
2. 先扩展无损转换和 generated manifest，再增加 Lean interpretation。
3. 为每类真实记录加入正反例和失败关闭测试。
4. 将 Interface desired theorem 与 Main axiom 做完整类型对齐检查。
5. 实现证书复演；只有 soundness theorem 完成后才替换相应 axiom。
6. 每次数据版本更新都重新核对输入摘要、行数、输出摘要和下游依赖。
