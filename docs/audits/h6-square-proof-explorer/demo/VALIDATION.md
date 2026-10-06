# Demo 验收记录

本次执行遵循用户追加的“小部分 demo”范围，只展开 `MainPaper/main.tex:2221–2241`、`lem:equistate4`。原始全篇证明任务未在此宣称完成。

## 数学侧

Reasoner 与 Judger 实际完成原文和所需原始资料阅读、修订与复核。3 章共 7 步、约 4000 字正文；2 步为 `approved`，5 步为 `approved_with_limitations`。5 项外部输入的识别和表述均通过数学审核。记录见 [Judger](reviews/judger.md) 与 [中文证明](proof.zh.md)。

局部推理明确补入经典检测到 synthetic 提升的比较、指数 2 与交换符号消去交叉项、λ⁸ 可除性给出的过滤 12，以及新的 λ⁶ 见证。它证明选择无关性的等价，不证明命题 (4) 自身成立，也不证明 h₆² 永久存活。

**INT-001 是明确的范围边界：π₆₂,₆₄ 无 λ-幂挠元的上游内部微分分析未在 demo 重算。** 该边界在正文和问题入口均显示，不混入外部依赖红标签。

## 形式化对应

| 统计 | 数量 |
| --- | ---: |
| 去重外部依赖 | 5 |
| Checker 通过 | 0 |
| Searcher 未找到 | 0 |
| Checker 不通过 | 5 |
| 待核查／核查未完成 | 0 |
| 正文引用出现次数 | 11 |
| 实际检索核查轮次 | 15 |
| 首轮提交候选 | 8 |

每项均保存三轮真实交接。后两轮针对反馈扩展检索，没有找到补齐完整命题的新候选；它们保留首轮拒绝历史，不改为“Searcher 未找到”。见 [Searcher](reviews/searcher.md)、[Checker](reviews/checker.md) 和 `data/*round*.json`。

这些“不通过”表示**未覆盖固定版本完整命题**，不是已证明候选与论文矛盾。尤其 EXT-003/004 的 HF₂ 特化、EXT-005 的球谱特化已找到相应表达；一般 E 或一般交换代数 A 的范围没有补齐。EXT-001/002 尚缺完整群结构或完整四层分次。详情同时展示已对应部分，不能据红标签断言这些实际特例没有 Lean 表达。

接口字段、命题定义、上游 `sorry`、Main 的 Challenge2 临时公理与未完成依赖审计分别记录。未修改正文或数学命题以适应候选，数学审定数据与合并数据已逐字段核对。

## 实际验证

- Chromium 完成 **82 项断言**：三章翻页、7 个步骤锚点、5 项随文批注与返回正文、15 轮展开、候选完整类型展开、搜索、类别/状态筛选、数学与形式化问题分区、公式、统计、手机抽屉及无横向溢出。
- 桌面 1512×1050、手机 390×844；禁网后实际使用 `file://` 打开成功。零脚本异常、零控制台错误、零失败资源响应、零外部网络请求。详见 [浏览器记录](records/browser-validation.json)。
- 合并检查确认所有正文引用、前置步骤、命题版本及双向使用位置一致，红标签每项三轮；生成的 `web/data.js` 与 `data/explorer.json` 完全一致。
- 21 处本地数学来源定位、8 个 Lean 候选文件/行号有效。文献外链未逐个联网访问；原始来源核查使用本地文件。
- 1914 个受保护文件哈希不变，覆盖原论文、Lean 源码及用户已有两处文档改动。源码未修改。[完整性记录](records/final-integrity.json)

## Lean 执行结果（2026-10-04 更新）

初次检查因缺少 `Implementation/Data.olean` 在导入阶段失败，原始记录保留于 [历史执行记录](records/lean-inspection.json)。`lake env lean` 设置运行环境，但不会自动构建缺少的项目依赖。

后续按用户要求复用版本匹配的 mathlib 缓存；`lake exe cache get` 成功，报告无需下载、8639 个缓存文件已解压。`lake --rehash build` 成功完成 5008 个任务，耗时 130.51 秒，覆盖默认 `KIP126` 与 `KIPBase` 目标。原 `LeanInspect.lean` 和新增的 [PostBuildInspect.lean](../../local-build-20261004/PostBuildInspect.lean) 均以退出码 0 完成，8 个候选声明的 `#check` 成功。

最终 `h6_sq_permanent` 的 `#print axioms` 返回 `propext`、`sorryAx`、`Classical.choice`、`Quot.sound`、`KIP126.Main.Axiom.challenge2`。因此构建和所选检查已通过，但证明仍有 `sorry` 与临时项目公理依赖。5 项完整命题的语义对应结论不因编译成功而改变；历轮检索记录保留当时的执行限制。见 [编译日志](../../local-build-20261004/lake-build.log) 和 [检查输出](../../local-build-20261004/post-build-inspect.log)。本次仅更新执行证据并重新验证数据合并，未重跑上文的浏览器测试。

## 打开与产物

浏览器直接打开 [网页](web/index.html)，无需网络；或在本目录运行 `python3 serve.py --port 8765`，访问 <http://127.0.0.1:8765/web/>。远程 IDE 可转发端口。

[桌面预览](records/preview-desktop.png) · [批注预览](records/preview-annotation.png) · [手机预览](records/preview-mobile.png)

版本：`e4b916b1ae0889a8f6c053aa27eba52f078a4b22`。开始时已有的 `docs/STAGE0_INTERFACES.md` 和 `docs/audits/stage0-correction-20261003.md` 改动保持原样。角色、写入边界和交接方式见 [协作记录](records/orchestration.json)。
