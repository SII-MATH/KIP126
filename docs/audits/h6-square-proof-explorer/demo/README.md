# h₆² 证明阅读器：短引理 demo

本样例截取 `MainPaper/main.tex` 的 `lem:equistate4`（第 2221–2241 行）：
若某个 synthetic θ₅ 的平方具有指定的 Adams 过滤 10 非零首项，则每个 θ₅ 的平方均具有该首项。
这是主定理证明中的局部引理，不是 h₆² 永久存活的完整证明。
本目录是当前提交的审阅快照；不替代项目的 `docs/external-inputs.json` 来源清单或 Lean 数学声明。

## 打开

直接用浏览器打开 [`web/index.html`](web/index.html)。正文数据、KaTeX 和字体均已包含，可离线阅读。

也可从本目录运行：

```bash
python3 serve.py --port 8765
```

浏览器访问 <http://127.0.0.1:8765/web/>。远程 IDE 可将 8765 端口转发到本机。
服务只监听回环地址；本任务没有外网部署。

## 材料

- `proof.zh.md`：由审核后的结构化数据生成的中文证明。
- `data/math-reviewed.json`：Judger 审定的数学正文与固定版本外部命题。
- `data/formal-reviewed.json`：Checker 的独立对应核查。
- `data/explorer.json`：两条流程合并后的唯一展示数据。
- `reviews/`：数学审查、检索与对应核查记录。
- `records/`：版本、执行日志、浏览器验证与截图。

`assemble.py` 仅把形式化核查字段合并到已审定命题中，不改写数学正文或命题。
`web/data.js` 是同一展示数据的脚本副本，用于支持浏览器直接打开本地文件。
重新生成数据与文本运行 `python3 assemble.py`；浏览器回归运行 `python3 verify_browser.py`（先启动本地服务）。

数学侧的上游边界与 Lean 对应问题分开呈现。标签颜色仅表示语义对应，不能解释为论文正确率或形式化完成率。
实际验收及限制见 `VALIDATION.md`。
