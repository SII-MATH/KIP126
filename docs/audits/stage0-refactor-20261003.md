# 第 0 步重构与迭代验收（2026-10-03）

> 修正后的重新验收已完成，当前依据为[新的修正报告](stage0-correction-20261003.md)。本文件原结论仍作为已撤回的历史判断保留。

> **历史结论已撤回。** 后续按主定理实际证明重新逐项核对，发现原 `stem125_e5_high_exhaustion` / `SphereFacts.e5_high125_other` 将 synthetic 权重130中的候选穷尽错误写成经典 E₅ 的全高过滤消失；AF15 的非零 d₅ 源和 AF18 的非零 d₅ 靶直接反驳该类型。另外，有限 λ 商的全页权重零区及若干主证明局部推导规格未被完整列出。因此本文末尾原“第0步验收通过、接口可冻结”的判断不再有效。下文构建和检查结果是当时版本的历史记录，不能作为后续修改的验收证据。本轮修正进展见[主定理计算依赖对照](main-paper-computation-inventory-20261003.md)与[当前接口说明](../STAGE0_INTERFACES.md)；在重新完成语义与实际验证前，第0步保持重新打开状态。

本次以 `KIP126-develop` 开始工作时的实际源码和主论文为起点，直接修改工作区。此前独立审查保留为历史记录，没有据仓库提交历史判定完成度。本文记录当前接口验收，不代表 C 的认证、模型构造或最终数学证明已完成。

## 当前接口

- Def 固定经典背景：明确的基点空间 prespectrum、真实稳定同伦类、稳定等价局部化、HF₂-local 反射，及到所用范畴的球谱、悬移、cofiber 两箭头、同伦群、乘法和 HF₂ 单位比较。全谱 smash 保留实际 CW homotopy type 的适用范围。仅对同一个球谱比较 HF₂ 完成与 Moore-2 完成，没有混同所有无界谱的两种完成。
- Challenge1 交付同一 Def 实现及其实际球塔的 nilpotent completeness / strong convergence。路线模型不再从弱记录中提前任选：Challenge2 一起交付 route、bindings、A、C 与比较，所有字段依赖同一个 route。
- `source_background_exists` 明确列出前人构造与内部来源组装的相关存在责任。它不含 C、Application、high125 非零存活、本文新工具或 T；不宣称已实现或唯一刻画 Pstrągowski 的整个 ∞-site。
- T 保持为 `NonzeroSurvival sphereAdamsData (2,128) standardH6Square`。标准类来自 `[ξ₁^64|ξ₁^64]`；其类型及全部传递性定义依赖只在 Def 和基础库。永久性要求同一个 Z∞ 代表及非零 E∞ 像。
- Interface 和 Main 均恰有 Axiom、Challenge、Solution 三个直接子目录。两条阶段公理分别传递同一 Challenge1/Challenge2 命题。根 Challenge 文件只导出，没有另一套传递体系。

## 修改与自审的迭代

1. **结构与初次集成。** 迁移固定标准球对象至 Def、文献合同至 Interface/Challenge、原文至 references、表格示例至 Checks；保留已有有用途的证明。首次全库构建暴露旧依赖检查、声明名称、来源 locator 及通用定理意外携带固定模型证明债的问题。逐项修复；没有关闭相应依赖检查。
2. **数学来源反方复查。** 修正全局 Moore/HF₂ 范围混淆；补全实际 smash 的自然比较和 CW 范围；将路线改为与来源相关存在交付，避免固定任意 ν/η/detector 后再要求来源成立。BHS 无限结论保留明确完成/收敛条件及同一映射的运输。第二次全库构建通过。
3. **新旧结果职责再复查。** 检出 high125 非零存活仍随 Application 传递的问题，删除该字段。Main 现在从实际来源、乘法比较、C、消失线、分离性独立推出它，再组装消费接口；删除无用途的旧 `A = Nonempty Inputs` 包装。新增独立依赖检查防止回退。
4. **原文与坐标再复查。** 取得 BR21 作者公开原书，核实书中 `d₃(w₂²)=βg⁴` 与论文/CSV 的 `β⁵g`。根据原书与同一 CSV 商环中的 `βγ=g²`、`β³=γg`，实际证明二者相等，再沿同一比较运输。四条商环证明没有 `sorryAx`；原书到实际 tmf 模型的来源构造另列为证明责任。最后一次全库构建通过。
5. **文档和清单复查。** 修正迁移后的链接、来源状态和 Lean/JSON 投影；合并八份过时冻结文档。251 个已删除旧路径均有当前迁移目的地；其余删除是上述八份旧文档。旧审查报告未改写。

6. **持续目标完成审计。** 重新读取当前目标类型、传递结构、完成背景和独立工具，确认既有验收对应当前源码；再次执行完整构建、16项架构检查和来源台账核验。全仓引用检查另外确认 `CInput` 和 `StandardRouteModel` 仅为无消费者的重复别名，已移除；没有删减认证义务或数据。清理后的全库再次通过（4287 jobs），日志为 `completion-audit-cleanup-build.log`。另直接复核 BHS `dfn:strong-conv` 原文与当前 complete/Hausdorff/associated-graded 存在性定义一致；实际检测继续使用另列的 canonical tower comparison，没有把任意同构当作检测。

   最后核对 [Belmont–Kong 原文 Definition 2.10、Theorem 4.11](https://arxiv.org/pdf/2112.08689v1)：本路线的 Massey 定义系统使用 d₂，结果在 E₃。对 Eᵣ 上的 Massey，原文要求 Eᵣ₋₁ 的 crossing 条件；换为当前 `(s,t)` 坐标，禁用源为 `(q,q+(t-s)+1)`，满足 `0≤q<s-(r-1)` 且 `s<q+m` 的 dₘ。这些不等式也蕴含 `r<m`，与当前谓词一致。原文的乘法塔与当前 composition Toda 的比较仍为显式证明责任。BHS 低维环原文提供 λ[h₀]=2、[h₀]η=0；π₂,₃ 由 λη² 生成，故低维不定性消失。它不提供二级 Toda 成员关系；后者继续由 `TodaSecondaryComparison` 和内部适配证明承担。

## 七项验收核对

| 项目 | 当前结果及证据 |
| --- | --- |
| 语义 | 固定实际经典完成球；标准 h₆² 次数 `(2,128)`，stem126；同一 Z∞ 代表、非零 E∞；无指定微分/永久性被塞入实现字段。上同调为 `Hⁿ=π₋ₙF`，Steenrod 操作次数已修为 `π₋ₙ`；UCT 本身保持正确下标。 |
| 计算覆盖 | v126.3.cw49 的 SHA 固定；648 次数、963 向量、671 来源记录、73 乘积次数对、4 bottom maps、8 反证记录。273 个空基保留。缺次数或解码失败不当作零。 |
| 有限至无限 | 9000 只解释为到 E1000。h₆² 的 `2≤r≤62` 靶收录，更晚靶用消失线；相关有限入射源收录，更晚为负过滤。stem125 的 AF26–64 全部39次数及38条 staircase 保留；AF≥65 用 V，实际 F26 归零另需 S。相应推导留在 Main。 |
| 外部结果 | 根6项文献字段及路线10项消费字段有逐项来源/适配台账。IWX 原始 E₂/E∞/说明、Ravenel 消失/收敛、BHS 条件、May 符号、BR21 坐标已重核。tmf、ν、cofiber、单位和标签使用同一绑定。 |
| 职责 | 广义 Leibniz/Mahowald、stretching、选择独立性、Propositions7.8/7.9、high125  leading-grade 非零存活及 T 均为内部证明责任。独立新工具不接整个 Challenge2 或同一待认证 C；认证可使用它们，但无反向依赖。 |
| 依赖与架构 | T 的导入及定义常量闭包仅 Def；Def 不依赖 Interface/Main；合同不导入自身生产者；认证不消费 Main 阶段公理或最终目标。精确三目录、唯一阶段公理、同一目标类型均由检查覆盖。 |
| 实际验证 | 见下方当前运行记录。编译和清单检查确认代码一致性，数学判断另由原文、范围计算与独立复审支持。 |

## 当前验证记录

使用仓库固定 Lean/mathlib 4.32.2，没有更换工具链。环境中普通沙箱不能启动该工具链，构建使用获准的外部执行；自动化测试另在 `/tmp` 放置经官方 SHA256 校验的 jq 1.7.1。未修改系统安装或仓库依赖版本。

| 命令/检查 | 结果 |
| --- | --- |
| `LEAN_NUM_THREADS=12 lake --no-cache --log-level=error build KIP126` | 最后一次成功，4287 jobs；包含最终类型边界、阶段声明、High125Boundary、实际坐标等式及证明依赖检查。 |
| `python3 -B -m unittest scripts.test_stage_boundary_layout -v` | 16 项通过。 |
| 受影响自动化回归（development gates、CI、workflow、merge、docs、migration、source inventory、perf、PR status） | 178 项测试，177通过、1项因环境缺少 Git LFS 跳过（只读 Git/LFS fixture）；初次缺 jq/普通沙箱工具链导致的失败在上述环境修复后消除。测试中的预期负例会打印 FAIL，套件最终为 OK。 |
| `python3 scripts/check_ci_syntax.py` | Python、shell、嵌入 workflow 语法通过。 |
| `python3 scripts/test-import-lin-selected.py` | 6 项通过，包括错误 hash、缺行、未知值及非法解析拒绝。 |
| `python3 KIP126/LinProgram/Translate/import-proofs.py --self-test` | 7 项通过。 |
| `select-route.py --check --raw-dir <本地固定 Raw 实体目录>` | 成功；648/963/671，651 core rows、73 pairs、4 maps、8 refutations。实体来自相邻 KIP126 仓库的缓存，逐项满足目标仓固定 SHA；未修改该仓库。 |
| `check_source_inventory.py --skip-lean-projection` | 18 来源、91 制品通过。 |
| `check_route_literature.py --lean-check /tmp/.../RouteSourcesCheck.lean` | 107 声明、27 来源文件哈希、3 组原始 CSV 选择、字段和角色覆盖通过。 |
| `python3 -m unittest scripts.test_source_inventory_projection -v` | 3 项通过；当前 JSON 与实际 Lean 导出的来源状态、制品、claim 一致，并验证漂移会被拒绝。 |
| `lake env lean /tmp/.../RouteSourcesCheck.lean` | exit0；107 项声明存在且实际模块归属一致。 |
| `git diff --check` 与受影响 Markdown 本地链接 | 通过；旧历史审查内的历史路径保留。 |

完整运行日志位于本机 `/tmp/stage0-refactor-20261003/`；本报告保留可重跑命令和结果。没有运行或宣称通过“整个项目无 sorry/无阶段公理”的后续证明完成验收。

## 明确保留的证明责任和证据边界

- 实际谱模型构造、反射存在、source/tensor/Milnor 比较仍有 `sorry`。当前已给出有数学内容的构造及识别类型，不能将其宣传成已构造完成。
- 来源模型的相关存在、BHS/Toda/Moss/tmf 等模型运输、Lin 七项认证、有限至无限推导、本文新工具及最终 T 的完整证明仍待完成。现有真实证明已迁移复用；从未完成总交付取字段不是认证。
- Moss 1970 原扫描与 Toda 原书的完整对应页本轮未直接读取；没有虚报原文证据。球的乘法塔 Moss 版本已有 Belmont–Kong 原始预印本佐证，保持实际配对、crossing、convergence 等条件；synthetic Toda 的加强仍是明确内部比较目标。原始书目定位与后续核验任务保留。详见[来源补证](stage0-source-supplement-20261003.md)。
- image-J 等手工日志叶子仍须给独立来源特化或数学证明；C 要求的是准确固定 Statement 的认证，不因 reason=M 或日志存在就获得结论。没有声称完整日志 DAG 已认证。

上述未完成项是已明确陈述的证明/来源再核责任，不能算作证明完成。若未来发现类型本身不满足原文条件或覆盖不足，必须重新打开第0步；不能用 `sorry` 掩盖该类错误。

**已撤回的历史结论：** “本轮第0步验收通过：接口可冻结。” 当时“未发现类型、范围或职责阻断”的判断被后续数学反例推翻；相关证明债务仍然存在，成功编译没有验证这些命题的数学正确性。
