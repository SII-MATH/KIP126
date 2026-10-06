Checker 独立审查记录（Lemma `lem:equistate4` 小 demo）

固定数学版：`data/math-reviewed.json`，5 项依赖均为 v1；SHA256 `150f62389ec2a7407a53412d7cf0a96015227524010615186f80ef1a30081fbf`。未修改数学命题、7 个步骤或 INT-001。

已完成每项最多三轮的 Searcher → Checker 实际往返。第一轮共提交 8 个当前源码候选；第二、三轮按具体反馈扩大检索并留下空新候选的负结果。第三轮 `rejected` 表示在新检索之后，按当前源码复核并维持第一轮候选对完整目标的拒绝，不表示本轮伪造了新候选。五项最终均为 `failed`；没有将有过候选拒绝的项改成 `not_found`。

这里的失败是完整命题尚未覆盖，而不是证明已匹配的局部子句与数学命题矛盾。HF₂ 专化与球谱专化的对应内容明确保留；一般 E 或一般 A 的全称范围不能因 demo 只用特例而从固定 statement 删除。

| 依赖 | 已对应的部分及未覆盖范围 |
| --- | --- |
| EXT-001 | 已匹配所有62-stem元素指数2的输入字段；尚未覆盖π62 ≅ (ℤ/2)^4的完整群结构。三轮后完整命题未通过。 |
| EXT-002 | 已匹配h5²非零永久性、经典θ5见证及两检测选择之差在F6；完整四层分次、维数与其余检测标签尚未覆盖。 |
| EXT-003 | HF₂特化的任意提升检测保持与指定经典类提升对应，完备性、强收敛和次数均保留；固定命题的一般E范围尚未覆盖。 |
| EXT-004 | HF₂特化的过滤等于λ幂像对应，三组实例的指数4、8、2正确；固定命题的一般E范围尚未覆盖。 |
| EXT-005 | 球谱实际乘法的stem交换符号对应，包括两个stem62元素及stem0特例；任意交换代数A的双分次环与交换律尚未覆盖。 |

检查实际读了声明所属宇宙、类型类、隐/显式模型参数、record receiver、全部字段目标及展开定义。第一轮每个 path:line 与当前文件均已逐行复核。`NonzeroSurvival` 要求同一无限循环代表的 E∞ 像非零；`Detects` 通过同一塔的关联分次定义，没有把非零 E₂ 直接视为非零 E∞。

EXT-003 取 `t=k+s`，`BiHom (t-s) t` 正好是 π_(k,k+s)。`detection` 量化任意 a；`prescribed_lift` 对指定 α 产出同时满足商像与实现等式的同一个 a。`BHSObjectApplicability` 同时保留 nilpotent completeness 和 strong convergence。

EXT-004 的 Lean weight 是绝对 weight W，数学公式中的 w 是 W−k；`m+s−W=s−w`。三组实例 `(m,W,s)=(62,64,6),(124,128,12),(124,134,12)` 的指数为 4、8、2。过滤比较不包含无 λ-torsion 结论。

EXT-005 的 `(-1)^natAbs(m*k)` 与整数 stem 乘积的奇偶一致；stem 62×62 和 stem 0 的特例符号为正。球谱的一条交换律不是任意交换代数的双分次环构造；未假设整个 synthetic 同伦环特征为 2。

同一见证核查：`Challenge2`（Interface/Challenge/Challenge2.lean:1318）关联 `routeInput`、`modelBindings`、`literature`、`computation` 与 `applications`。`StandardRouteInput` 使用固定 Def implementation；`ClassicalSourceBinding.convergence` 和 `Bindings.realization` 将经典检测、ν 与 realization 固定在同一 D 上。Main/StageInput 从一个 `witness := Main.Axiom.challenge2` 投影，没有为每条输入选择新模型。该类型关联不等于来源模型已经构造或文献已经证明。

形式化证明状态单独记录：`source_background_exists`（SourceExistence.lean:37–41）、`Interface.Solution.challenge2`（Challenge2.lean:6–15）、`implementation_exists`（Def/Solution/Implementation.lean:8–9）均仍含 sorry。球谱 BHS 适用性（Interface/Solution/Foundation.lean:9–14）、源2-完备识别（Implementation/Completion.lean:153–160）及 BHS completion transport 也有直接 sorry。Main/Axiom/Challenge2.lean:13 的项目公理仍是消费端输入。未把可投影的字段、已有条件适配器、CSV行或来源元数据称作完成证明。

本次 `lake env lean records/LeanInspect.lean` 的实际执行记录在 `records/lean-inspection.json`：导入阶段缺少 `KIP126/Def/StableHomotopy/Implementation/Data.olean`，故 #check / #print axioms 未成功执行。核查基于当前源码完整类型；没有完成编译、kernel 验证或传递性公理审计，也没有为此触发全库重编译。

INT-001 是数学 demo 明示的内部未展开边界，未计为任何 EXT 的红色语义标签原因。本审查未向 Reasoner/Judger 回传形式化差异，未修改 Lean 源码。

交付文件：`data/check-round1.json`、`data/check-round2.json`、`data/check-round3.json`、`data/formal-reviewed.json`。所有轮次保留 search、candidates、checker；后两轮没有复制首轮大段类型来伪装新证据。
