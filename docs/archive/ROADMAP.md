# KIP126 Roadmap

> 归档于 2026-10-04：本文件保留整理时的方案与状态，不再作为当前规范或进度入口。当前职责见 [AGENTS.md](../../AGENTS.md)、[项目边界](../../PROJECT_BOUNDARY.md) 和 [接口说明](../STAGE0_INTERFACES.md)。

本文件只记录长期阶段和数学依赖顺序。当前目标是标准 h₆² 的非零永久存活；
范围、信任边界和最终验收以 [PROJECT_BOUNDARY.md](../../PROJECT_BOUNDARY.md) 为准，
目录职责见 [STAGE_LAYOUT.md](STAGE_LAYOUT.md)，接口责任见
[STAGE0_INTERFACES.md](../STAGE0_INTERFACES.md)。逐节点状态以
[Blueprint](../../blueprint/src/content.tex) 与 Lean 源码为准。

## 三个阶段

| 阶段 | 工作 | 出口 |
| --- | --- | --- |
| 建立代码基线 | 对照 MainPaper，选取旧仓库中语义、分次、页约定和定理强度正确的实现，迁入统一接口 | 自足、可编译的 KIP126；每个概念有一个权威实现，构建不依赖旧仓库的本机路径 |
| 继续形式化 | 在基线上按数学依赖补完定义、外部输入的适用性与比较、计算认证和论文内部证明 | 当前范围内应由项目完成的节点均有真实证明；外部或政策边界按 PROJECT_BOUNDARY 分类 |
| 最终审计 | 从干净检出重新核对论文、完整依赖锥、来源和可复现构建 | 满足 PROJECT_BOUNDARY 的全部最终验收条件 |

旧仓库只作只读参考。参考实现较弱或与 MainPaper 不一致时，应重写相应部分；
代码量、占位数量和历史构建成功均不决定数学完成度。迁入后作为已完成成果的证明
及其依赖不得含 `sorry`、`admit` 或项目公理；开发占位和 Challenge 不计作证明完成。

## 数学依赖顺序

1. 定义：代数基础 → 谱序列 → 稳定同伦对象 → 经典 Adams → extension SS →
   synthetic 对象与 ESS → page extensions → 计算语言 → Kervaire 路线。
2. 外部输入：所用对象先定义，再陈述带完整条件的文献结果及固定计算输入。
   来源身份和定位统一维护在 [external-inputs.json](../external-inputs.json)，
   metadata 不作为数学 DAG 的前提。
3. 内部证明：模型比较和一般工具 → near-126 推导 → 标准 h₆² 非零永久存活。
   Interface 构造同一个 Challenge2，Main 从该见证消费相关数据。

内部谱序列语言使用 `SSData`/`PreSS`；Mathlib 的谱序列比较归可选适配层。
章节按数学概念和依赖拆分，不要求一章对应一个 Lean 文件。

## 检查口径

变更时检查受影响的 Lean 模块、Blueprint 声明引用、依赖和状态，以及相关来源与
生成物的一致性。生成物由工具重建，编译通过不提升证明状态。

最终审计重新核对 MainPaper 的陈述、分次、页约定与强度，检查主定理完整依赖锥的
公理和占位，核验外部输入的来源、适用性与模型绑定，并在仓库锁定的工具链下完成
干净构建、回归、Blueprint PDF/web 与声明检查。模块检查或历史 CI 记录不能代替它。
