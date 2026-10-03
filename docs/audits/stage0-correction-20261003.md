# 第 0 步修正与重新验收（2026-10-03）

本报告针对当前 `KIP126-develop` 工作区，以主论文 `MainPaper/main.tex` 的主定理论证及[163 项计算依赖对照](main-paper-computation-inventory-20261003.md)为依据。介绍性应用与教学示例不作为本轮需求。此前“第 0 步已完成”的判断已在[旧报告](stage0-refactor-20261003.md)中撤回，不能用旧构建结果覆盖本轮修改。

**当前状态：完整第 0 步尚未完成。** 下文保存此前针对 S⁰/Cν 主证明直接消费接口的修正和验证记录。随后已确认 C₂、Cη 出现在主定理所需计算结果的程序认证路径中；在包含这些认证依赖的完整验收范围内，对象、映射、模作用和源数据解释接口尚未接入。因此撤回将该局部验收推广为整体完成的结论。已有 `sorry` 仍是证明债务，但这些缺项也包含接口债务，不能仅记为待补证明。合并工作本身不解决这些数学缺口。

## 实质修正与迭代

1. 删除错误的经典 `E₅` 高过滤消失声明。AF15 的非零 `d₅` 源和 AF18 的非零 `d₅` 靶仍在 `E₅` 上；两者均补为独立准确目标。实际消费改由 [High125.lean](../../KIP126/Main/Solution/Computation/High125.lean) 表达 `π_(125,130)` 中 `F¹⁵=F²⁵`、`F²⁶=0`、λ¹⁰ 可除性，以及非零 λ²⁰G 的两元素穷尽。G 的永久性仍由 Main 从 tmf 来源、C、乘法比较、消失线及分离性生产，不放入 M、A 或 C。
2. 补充 BHS `cor:synth-ctau-ASS` (1)/(3) 的有限商全页零区：q>0、r≥2 时，w>t 或 t−w≥q 的整分量为零。原来的 E∞ 公式不能替代 E₃/E₇ 的零区。来源字段、消费字段、实际投影与来源台账一致更新。
3. 补齐同一 synthetic tmf 在 `(62,64)` 的 λ 全幂单射、realization 单射、θ₅ 与 ηθ₅² 的实际单位像为零，以及 weight130 的 F15 detector 单射。没有挪用球谱的单射结论，也没有把 `(125,130)` 偷换为全部 λ 幂单射。
4. 在 [AlphaOne.lean](../../KIP126/Main/Solution/Route/AlphaOne.lean) 明确 stem124 的低过滤 E∞ 消失、AF10/AF13 的整组穷尽、θ₅² 三分支，以及 Q11 中一个 α₁ 与它的实际 Q9 限制。α₂ 的权重为137；权重131的 λ⁶E 检测对应 λ⁶α₂。量词保留“对每个 U 代表，存在相应 α₂、α₃”。Q9 的 F16 消失由权重窗口与分离性负责，没有假设 λ⁹ 在整个商对象上为零。
5. 另列 Q9 的非零 d₃、Q11 的非零 d₇/d₃、Q9 中两个靶所在整分量的全页消失和实际 ρ 映射的零像。每条非零微分保留共同页代表和该页靶非零；不以 λ 指数小于 q 代替非零性证明。
6. 在 [Section7.lean](../../KIP126/Main/Solution/Route/Section7.lean) 补充 Massey 值与不定性、Moss 两窗口、乘后的 Toda 不定性、主要括号的非空及所有成员的检测、Q3→Q5→Q9 推导需交付的 Q5/Q9 ν 扩张、对任意 Y 代表的 h₀ 扩张，以及真正未截断球中的 λh₂ 整除。`Cν` 的 no-crossing 实例为 `(r,page,p)=(3,3,(8,134))`；唯一候选是 `d₂:(9,135)→(11,136)`，使用完整源空间排除。
7. 再次独立审查发现最初新增的 module Toda 定义虽然次数可编译，箭头顺序却会引入 `End(Q9)` 型额外不定性。已修为球 η、球 h₀、最后 α₁ 到 Q9 的实际箭头链，保留正确的两项不定性 `π_(124,130)(Q9)·η` 与 `(λ³α₁)·π_(2,3)(S)`，删除无用途的 action-map 包装。
8. 最终 `C₃→¬C₅` 已用同一 decoded Cν 靶与页2…5的 incoming 排除写出末步证明，并接入唯一的 `proposition_7_9` 消费入口。上游提升和整除仍待证明；删除因此不再使用的整体占位包装，避免两份同职责声明。

## 七项验收依据

- **语义：** T 仍为同一完成球谱实际 Adams 塔中标准 `(s,t)=(2,128)` 的 h₆² 非零永久存活；要求共同 Z∞ 代表及非零 E∞ 像。实际谱实现、HF₂ 单位、Milnor 坐标、ν、tmf 单位和比较继续使用相关的同一见证。本轮没有把主论文结论塞进结构字段。
- **计算覆盖：** 固定版本的实际 `BasisCorrect`、`ProductCorrect`、`BottomCorrect`、`TopCorrect` 与全部 `Statement` 仍是 C 的合同。完整基覆盖所有线性组合并保留空基。具体穷尽、非零、永久性、过滤和提升属于 Main，不能从原始日志存在或 level9000 名称直接得到。
- **外部结果：** 新增 BHS 全页零区有明确原文；tmf 低过滤源、IWX 指数二、Moss、May、消失线与收敛仍保留出处、适用条件及同模型运输。本文新规则、比较适配和新的加强不改列为前人定理。
- **职责：** [定义语言](../../KIP126/Def/Kervaire/Route/Section7/Predicates.lean)只定义对象与谓词；新增局部结论均留在 Main/Solution。`target_nu_divisible` 要求存在实际 T 检测代表与实际 λh₂ 原像，未退化成 Ext 整除，也未增加 η 消去假设。
- **依赖：** T 的类型及全部传递性定义依赖仍只来自 Def 和基础库；认证不消费其输出的 Main 公理或最终目标。独立新工具不接完整 Challenge2/C 包。声明检查同时拒绝使用 Challenge 的占位证明。
- **架构：** Interface、Main 各只有 Axiom、Challenge、Solution 三个直接子目录；两条传递公理交付同一 Challenge1/Challenge2 合同。新文件导入图无环，定义层没有反向导入。
- **验证：** 下列结果均来自本轮实际运行。编译验证类型与依赖一致性；数学语义还经过原文、坐标范围和独立复审，不能以编译代替。

## 本轮验证记录

- 首轮完整 `LEAN_NUM_THREADS=12 lake --no-cache --log-level=error build KIP126` 成功，4292 jobs；日志 `/tmp/kip126-stage0-correction-build.log`。随后因 Toda 方向和具体微分接口继续修改，最终状态以后一次构建为准。
- 最终全库构建：同一命令成功，4292 jobs，exit0；日志 `/tmp/kip126-stage0-correction-final-build.log`。包含最后修正的 Toda 定义、具体有限商微分、Cν 无 crossing、RouteGoals 和最终 Challenge/Solution 类型一致性检查。
- `python3 -B -m unittest scripts.test_stage_boundary_layout -v`：最终修改后16项通过。
- `check_route_literature.py`：42个来源组、111项声明、27个文件哈希、3组原始 CSV 选择通过；所生成的 `/tmp/KIP126RouteSourcesCorrection.lean` 已经 `lake env lean` 检查，exit0。
- `check_source_inventory.py --skip-lean-projection`：18来源、91制品通过；`scripts.test_source_inventory_projection` 三项通过。
- `select-route.py --check --raw-dir ../KIP126/KIP126/Main/Axiom/LinProgram/Raw`：648次数、963基向量、671记录、651 core rows、73乘积次数对、4 bottom maps、8反证；固定 SHA 与重建结果一致。相邻仓库只读。
- 普通沙箱中的来源投影初次因 Lake 无法定位安装而失败；正常执行环境下三项重新通过，没有更换工具链或修改测试预期。
- 追加具体有限商微分后曾遇到 CSV 理想的类型展开超时、局部 `Subsingleton` 解析及 Cν cofiber 实例解析错误。分别通过沿用已有局部不展开约定、显式使用已得消失证明、指定 D 所属固定基础的实际实例修复；没有删除声明或放宽其条件。最后一个 Section7 定向构建已通过（3441 jobs）。
- `git diff --check` 通过；四列表163个唯一事实编号、严格四列，以及本轮四份文档的本地链接检查通过。

## 冻结范围与后续责任

本轮没有要求把每个中间等式都做成独立 lemma；但关键权重穷尽、代表绑定、Massey/Toda、有限商提升和最终 Cν 矛盾已分别有准确目标，不能用一个总主定理 `sorry` 代替它们。对照表仍如实保留未单列的中间式，不把较大结论反推为所有中间事实都已得到。例如 L24 的实际 q 零长度 extension 从 E₂ 到 Mahowald 所需 E₃ 的比较、L27 的 E₄ extension 形式及 L28b 的 Q3→Q5 correction 仍是该内部证明的细化责任；它们不新增未经来源支持的 A/C 前提。

Z07–Z24 所列程序内部叶子和未取得的外部矩阵不等于本版 C 已认证：C 已直接规定同一实际模型上的最终有限等式和反证，`CertifiedRealization` 的责任是证明这些命题。若采用原日志重放策略，其外部谱、映射矩阵、非边界叶子和本文规则必须另行实现、认证且无循环；不能把未核实叶子新增为假设。本轮不宣称这条重放路径已经闭合。

N01–N26 中未完整绑定的字符串乘法名仍不能宣称为已认证命名公式。主证明穷尽实际消费的是完整 Cν 坐标空间、所有组合及已绑定的 T[0]、barX、top/bottom 像；不需要为所有备用基向量增加无用途的命名乘法接口。

模型构造、文献运输、完整 C 认证及多数 Main 推导仍含 `sorry`。这批责任不得据本报告关闭；第0步只验收其准确的含义、范围、对象绑定、条件和归属。

## 持续目标的最终完成审计

收到继续完成目标后，再以当前工作区逐项核对，而非直接沿用上面的结论。上一轮属于实际进展：修改了错误类型、补充了接口、修正 Toda 方向并完成编译；本轮又澄清 `PROJECT_BOUNDARY.md` 中将构造证明完成与第0步混称为“this stage”的旧措辞。

- 用户要求1、3：检查 `SourceComparison`、`TensorComparison`、固定实现、标准球塔/标准类和 `NonzeroSurvival` 的实际定义。最终 Challenge 的299个本项目传递模块均在 Def；当前970个 Def 模块没有向 Interface/Main 的导入。`Checks/ClassicalAdams/StandardFinalBoundary.lean` 还在编译环境中遍历目标类型的定义常量闭包，不能只以目录名称充当证据。
- 用户要求2、4：检查两个阶段的直接子目录与两条 `Nonempty ChallengeN` 公理；`Checks/ClassicalAdams/StageInputDeclarations.lean` 比较 Challenge、Solution、Axiom 的实际类型，验证固定实现相等、相关见证投影、route/presentation 一致，并拒绝循环借用生产目标的占位证明。
- 用户要求5：实际七项 C 合同保留完整基、全部组合、空次数、乘积、有限结果和实际 ν 胞腔映射；BHS、tmf 的来源、完成比较、单位、乘法及标签在同一相关存在见证中绑定。G 的非零 E∞、synthetic 检测与本文工具继续属于 Main；上同调使用源悬移 −n、UCT 保持同一下标 n，相关 Lean 检查通过。
- 用户要求7的语义、计算和外部结果覆盖：再次逐组检查对照表的必要消费，以及 High125、AlphaOne、Section7 和来源生产者的准确类型。未单列内部细节不被记成已有单项推导；Z 类可选程序重放路径、备用基名与实际 C 合同的差别仍按上文保留，没有以编译或无错误搜索替代数学核对。
- 用户要求7的职责、依赖、架构和实际验证：本轮重新运行全库构建，4292 jobs、exit0，日志 `/tmp/kip126-goal-completion-build.log`；16项架构测试、111项来源声明/27个哈希检查和固定 Raw 的648/963/671数据检查通过。`FixedFinal` 对最终 Challenge/Solution 类型和真实证明依赖的检查也属于这次全库构建。

以上为此前局部验收记录；不再作为完整第0步完成的结论。当前范围和未完成项以上方更正及主定理计算依赖对照为准。
