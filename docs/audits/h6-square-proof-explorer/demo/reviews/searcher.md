# Searcher 检索记录

固定目标为 Judger 审定的 `data/math-reviewed.json` 五项 v1；已完整读取其 statement，未改动数学命题、Lean 或主论文。

首轮写入 `data/search-round1.json`，仅提供候选，Checker 状态全部 pending。EXT-001、EXT-002、EXT-005 当前只有部分语义候选，分别缺完整四阶直和群同构、四层 associated-graded 结构、任意交换代数 A 的双分次环与交换律；不将消费者需要的弱后果替换完整固定命题。EXT-003 两个检测/指定提升字段与 EXT-004 过滤输入须连同源适用假设、模型绑定和未完成生产状态核查。

查阅对象包含结构/class 字段、Prop 定义、source/application/consumer 分层、同一 Challenge2 witness、实际 BiHom/product/λ-action/filtration/detection 定义。文献字段由 source_background_exists 与 Challenge2 producer 构造的任务仍含 sorry；Main 的唯一见证是 stage axiom。Master 的真实 LeanInspect 调用导入失败，不能将源码检索包装成已通过内核或传递依赖检查。

仅当收到 Checker 的真实拒绝理由时启动下一轮；每依赖最多三轮，通过即停。未预写任何下一轮记录，也未向数学 Reasoner/Judger 发送形式化结论。

第二轮在读取真实 `check-round1.json`（五项均 rejected）后启动。按反馈查全群同构/群阶、四层关联分次与标签、一般 E 的 Nu/BHS 范围以及一般交换代数的 Koszul定理。新增检查 generic StageInterfaces、completion、local mathlib GradedObject/Braiding/GradedMonoid；未找到填补已知缺口的新候选，写入 `search-round2.json`，每项候选为空且 Checker pending。负检索不撤销第一轮拒绝、不宣称全库不存在，也未预造第三轮。

第三轮在读取 `check-round2.json` 的逐项 next_search 后实际执行：追IWX manifest→Lean/CSV检查链，核读一般有限abelian群分类及缺失的π62维数前提，检查Mathlib适配与一般RealizationTower桥接，读完整algebraProduct和其全部引用。未找到完整新候选，写 `search-round3.json`（五项空候选、Checker pending）。各依赖均已达到三轮上限，等待Checker封存，不再开启额外检索。所有15条round记录使用同一Judger v1 statement哈希；仅写授权search JSON与此review，未改数学/Lean/论文。
