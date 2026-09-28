# 统一路线接口与阶段冻结复核（整合 PR #139 后）

本记录针对本地路线改动与远程 `dcd38bd` 整合后的代码。冻结指类型、数学含义、
范围、对象绑定和证明责任确定，不代表证明已完成。所有阶段必须使用同一个 M。

## 本次修改

- 为所选 LWX v2 §7 路线定义 `Kervaire.Route.Model`，把实际 classical/synthetic
  谱序列、比较、同伦检测、乘法、商映射、normalized maps 与三角条件绑定起来。
- `Literature.Route.Inputs D η L` 集中明确的文献输入与模型适用性义务，附来源清单；
  没有为这个路线包安装全局公理或默认实例。
- 将 Near126 的中间命题归入 `Main/Solution` 的选择无关性、微分归约和扩张障碍主题；
  广义 Leibniz、Mahowald、有限 stretching 保持为本文推导责任。
- Final 只保留标准 `h₆²` 的一个数学目标，Challenge/Solution 各有对应声明。
  CSV 与标准元素的识别保留为比较引理，不再另设计算版 Final。
- CSV 基认证离开 Challenge1。整合远程实现后，采用同一 Challenge2 presentation
  上的 `SphereBasisInterface` / `sphereBasis`，由实际 E₂ 坐标与指定 CSV 值恢复
  原有基 API；不重复添加 `linBasis` 假设。
- 保留远程新增的 Ext、λ 塔、有限 Bockstein、乘法、分支及 staircase 接口。
  原有工作区对 `AGENTS.md` 和 `.agents/skills` 的删除一并保留。

## 冻结检查结论

| 部分 | 结论 | 待办或信任边界 |
| --- | --- | --- |
| M | 所选路线已形成可冻结的定义和绑定基线 | 实际模型见证未完成；还需与最终计算消费清单联合核对覆盖范围 |
| C(M) | 未完整冻结 | 精确计算清单、标签识别、乘法比较、跨谱字典、条件及穷尽性仍未闭合 |
| A(M) | 已有显式路线输入总包，主体分类符合方案 | 文献原命题、来源运输、模型适用性分别验收；不能仅因建包就宣称全部准确或有见证 |
| T(M) | 单一标准目标已定型 | `NonzeroSurvival sphereAdamsData (2,128) standardH6Square`；证明未完成 |

### 合并远程后必须更新的检查口径

合并前本地 HEAD 为 `54dca41`，远程 #139 已到 `dcd38bd`，包含 12 个额外提交。
因此不能把合并前的缺口描述原封不动套到当前代码：

1. 实际 E₂ 基坐标已有 `SphereBasisInterface`；固定 CSV 认证仍是 Interface 的
   待证辅助义务，Main 通过同一个 Challenge2 见证消费。
2. `SphereMultiplicativeInterface` 已约束 presentation.product 与实际球面 Adams
   层乘积。仍需与路线使用的 `Sphere.Internal.product`（Milnor cobar cup 经比较
   得到）建立相容；不能再说 presentation.product 完全没有实际乘法约束。
3. 固定球面 staircase 已有逐行解码成功和数学真实性的交付类型；条件日志也已有
   参数化字典及反驳/条件结论语言。仍未完成论文所需跨谱字典、所有状态和范围
   的绑定及认证，不能把缺失记录视作零或永久存活。
4. 当前 Challenge2 还包含 one-line、Moss、tmf 和 cobar/Ext 比较等字段。
   因而它仍是混合的历史阶段包，不能整体称为纯 C(M)。本次为保留远程工作，
   没有擅自删除这些字段；后续应按来源、消费点和证明责任拆分/连接到路线 A/C。

### 仍须明确的连接

- `Route.Labels` 四个非标准元素及 `TmfLabels.g/deltaH1g` 与固定 CSV 坐标的识别。
- A 中所选 detector/unit、normalized Hopf maps、Moss 条件与实际模型的适用性。
  文献存在性结果不自动证明任意预选比较或提升满足这些条件。
- 普通微分等式、非零微分、候选约束、存活和穷尽性各自的数据库来源及强度。
- 每个论文引理的非推理前提应落到 A、C、通用基础证明或另一条本文推导；
  计算认证若使用本文新规则，规则证明不得依赖正在认证的结果。

建议先补标准乘法与标签比较，再从 Proposition 7.8/7.9 及其引理反向确定最小 C
清单，最后联合验收 M/A/C/T。无需预先导入全部 49 个谱，也无需在冻结前完成所有证明。

## 验证说明

`scripts/check_route_literature.py` 检查 10 个输入字段、28 个来源组、41 个声明和
17 个本地源文件哈希。它验证清单覆盖和文件身份，不证明文献真值、模型存在性
或计算认证。具体编译和 Blueprint 验证结果在本次 PR 说明中记录。

既有 `sorry`、Challenge1/Challenge2 开发公理、尚未完成的计算认证和最终证明
仍是显式债务。M/A 的历史冻结文档记录各自批次；本记录补充合并后的联合验收范围，
不把历史构建结果冒充本次整合代码的验证结果。

整合回归发现：远程 Challenge2 类型中的结构比较已引入 `sorryAx`，因此
CSV/标准类比较的传递依赖也包含该既有证明债。FixedFinal 回归改为与实际阶段
边界的公理依赖闭包比较，并继续拒绝比较定理本身直接使用 `sorry`；这不是
消除了 `sorryAx`，也不是数学认证已经通过。标准 Final 的类型隔离检查保持不变。

### 本次最终整合验证

- 当前 `KIP126` 入口与所选回归的定向构建通过（3986 jobs）：LiteratureBoundary、RouteBoundary、RouteFixedFinal、ChoiceBoundary、FoundationAndPaperTools、FixedFinal、StandardFinalBoundary、ComputationalBoundary、StageInputDeclarations、LinBasis。
- 来源检查通过：10 个总包字段、28 个来源组、41 个声明引用、17 个文件哈希；生成的 Lean 声明存在性检查也通过。这些不是已证明定理数量。
- `leanblueprint web` 通过；1517 个 Blueprint 声明引用在当前 `import KIP126` 环境中全部存在，只导出一个 Final 的 Challenge/Solution 对。采用直接环境核对，没有为通用 checkdecls 构建历史 KIPBase。
- 当前环境缺少 pdflatex/dvisvgm 等渲染工具，因此不声称 PDF 或矢量图验证通过。
- 相对目标分支的 `git diff --check` 通过。未更新项目依赖版本或共享缓存。
- 以上是本次最终整合代码的本地检查，远程 CI 状态需以新 PR 实际 head 为准。
