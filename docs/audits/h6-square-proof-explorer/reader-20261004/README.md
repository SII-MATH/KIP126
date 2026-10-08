# η 扩张的代表元选择无关性：阅读示例

浏览器直接打开 `web/index.html`。公式、字体、正文和批注均为本地资源，无需联网。

也可从项目根目录启动：

```bash
python3 -m http.server 8766 --bind 127.0.0.1 --directory docs/audits/h6-square-proof-explorer/reader-20261004
```

访问 `http://127.0.0.1:8766/web/`。远程 IDE 可转发该端口。

本例按用户后续指示，只展开论文 `MainPaper/main.tex` 中 `lem:equistate5` 的完整局部论证，说明改变代表元为何不改变指定的 η 扩张首项，并补足同伦等式中右侧代表元的修正。它不证明该检测条件成立，也不是 h₆² 永久存活的完整证明。

正文共三章：比较代表元、提高误差过滤、保持首项与等式。先独立陈述目标，最后单独收束结论。点击句末上标可查看简明批注，完整命题、Lean 证据和逐轮记录默认折叠。引用总览支持搜索、筛选和返回正文。

## 文件

- `proof.zh.md`：纯数学中文证明。
- `data/math.json`、`dependencies.json`：分离的正文、六个固定外部命题及引用位置。
- `data/checks.json`、`search-round*.json`、`check-round*.json`：语义结论与真实逐轮检索核查。
- `reviews/judger.json`、`math-review.md`：独立数学审查与最终内容哈希。
- `reviews/checker.json`：独立形式化审查。
- `data/proof-graph.json`：步骤和依赖关系。
- `records/lean-candidates.log`：实际 #check 与 #print axioms 输出。
- `records/browser-validation.json`、`preview-*.png`：实际浏览器交互结果及预览图。
- `records/initial-state.json`、`final-integrity.json`：Git 工作区记录和受保护文件校验。

数学命题仅由 Reasoner/Judger 审定；Master 兼任 Searcher，再交独立 Checker，形式化结果不反馈修改数学。Maker 只呈现审定内容。网页和数据均位于新目录，原 demo、论文与 Lean 数学源码保持原样。

## 重建与验证

```bash
python3 docs/audits/h6-square-proof-explorer/reader-20261004/scripts/build_web.py
python3 docs/audits/h6-square-proof-explorer/reader-20261004/scripts/verify_content.py
python3 docs/audits/h6-square-proof-explorer/reader-20261004/scripts/verify_browser.py
```

浏览器脚本需要 Python Playwright 与 Chromium。本环境的受限沙箱会阻止 Chromium 启动；实际检查在获自动审批后于沙箱外运行。Lean 检查只使用现有构建产物，未执行全库 clean build 或完整传递依赖审计。具体最终状态和检查数量见 `VALIDATION.md`。
