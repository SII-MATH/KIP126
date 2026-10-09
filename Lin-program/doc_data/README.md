# 步骤一：论文程序边界与计算结果清单

本目录保存 Lin Program 形式化工作的第一阶段资料。当前资料对应两篇论文的
`v2`（2025-02-22）：

1. [Machine Proofs for Adams Differentials and Extension Problems Among CW Spectra](https://arxiv.org/abs/2412.10876)；
2. [On the Last Kervaire Invariant Problem](https://arxiv.org/abs/2412.10879)。

文件说明：

- `step1_inventory.md`：程序边界、论文中所有直接依赖 Lin Program 的位置、输入输出层次和计算性结论；
- `program_boundary.md`：只说明 `Adams` 和 `ss` 的程序边界、接口和规模限制；
- `kervaire_dependency_locations.md`：只说明 Kervaire 论文中依赖 Lin Program 的章节、事实、命题和附录表格位置；
- `kervaire_program_inventory.json`：可供后续脚本读取的结构化清单；
- `kervaire_claims.csv`：Kervaire 论文中需要优先转化为 Lean 规格的计算性结论；
- `sources.md`：论文、源码和数据集的来源及可追溯性说明。

这里的“所有”按论文明确给出的程序接口、数据类别、引用位置和附录表格统计。机器证明数据库本身超过两千万行，仓库中记录其文件级输入输出和查询字段，不把数据库全文复制到本目录。
