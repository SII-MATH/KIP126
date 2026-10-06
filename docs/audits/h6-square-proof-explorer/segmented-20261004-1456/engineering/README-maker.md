# 本地阅读器工程说明

本生成器只装配 manifest 指向且绑定正文版本、SHA-256 和三项 `pass` 的正文。哈希一致不构成数学验收。未完成状态来自 Master 的 manifest；空清单生成空阅读框架。

在项目根目录运行：

```bash
python3 docs/audits/h6-square-proof-explorer/segmented-20261004-1456/scripts/build.py
python3 docs/audits/h6-square-proof-explorer/segmented-20261004-1456/scripts/build.py --check
python3 docs/audits/h6-square-proof-explorer/segmented-20261004-1456/scripts/serve.py --port 8765
```

浏览器打开 `http://127.0.0.1:8765/`。也可以直接打开 `web/index.html`，数据和公式资源均从本地文件载入。服务仅绑定 loopback，不进行部署。生成器依赖本环境已有的 `markdown-it-py 4.2.0`；浏览器端不需要安装包。

## Master 数据接口

所有路径相对本运行目录。生成器拒绝跳出目录的路径。`parts` 数组顺序就是正文顺序；相同 `chapter_id` 的相邻段落连续排在同一数学章节。标题来自源文首个 Markdown 标题；不另造正文标题。

```json
{
  "schema_version": 1,
  "status": "in_progress",
  "title_source": "T00",
  "parts": [{
    "id": "T00", "version": 1,
    "source": "math/T00.v1.md", "sha256": "<64位正文哈希>",
    "review": "reviews/T00.v1.json",
    "dependencies_source": "math/T00.dependencies.v1.json",
    "dependencies_sha256": "<64位数学依赖文件哈希>",
    "title": "<原文首个标题>", "chapter_id": "opening",
    "upstream": []
  }],
  "external_dependencies": ["math/T00.dependencies.v1.json"],
  "formal_checks": [],
  "global_reviews": []
}
```

每条 review 需要 `version`、`source_sha256`、`dependencies_sha256`、`correctness: "pass"`、`faithfulness: "pass"`、`detail: "pass"`、`approved_title`，以及与 part 完全一致的 `upstream`。上游绑定采用 `{id, version, sha256}` 数组，并要求在装配清单中先于当前段落。需要另一章名时，part 的 `chapter_title` 必须等于 review 的 `approved_chapter_title`；默认采用第一段的审定标题。

依赖输入支持路径、`{source, sha256}`、内联依赖对象，以及文件内的数组、`{dependencies:[...]}`、`{external_dependencies:[...]}`。每个依赖有 `id`、`version`、`name`、`used_statement`；允许结构化 `sources`、`specialization`、`use_sites`。引用采用 `[[EXT-001]]`。网页转换为轻量 `[1]` 按钮，Markdown 正文转换为 `[1]`，其他源文字节不变。内部编号保留于数据和审查详情。

独立形式化记录可以列在 `formal_checks`，按 `dependency_id` 连接，使用 `dependency_version` 加 `used_statement_sha256` 或 `dependency_source_sha256` 绑定命题。核查结果仅合并状态和证据，不覆盖数学命题、名称或实例化。版本不匹配的旧核查显示未完成。

支持语义状态 `passed/not_found/not_passed/incomplete`，或对应的中文状态名；支持 `short_reason`、`full_reason`、`formal_status`、`candidates`、`rounds`。`sources` 与 `rounds` 的完整对象在默认关闭的证据详情显示。短理由不会从长理由截取。未核查的命题使用明确的未完成提示。

## 确定性输出与边界

- `web/proof.zh.md`：源文依序连接，仅把内部引用标记转换为数字。
- `web/source.zh.md`：源文逐字连接，保留内部引用标记；供工程一致性核对。
- `web/assembly-map.json`：每段的源文哈希、转换后哈希、字节范围与 HTML 哈希。
- `web/data.js`：完整源文、渲染 HTML、独立批注及审查数据。
- `engineering/maker-build.json`：实际构建结果。

使用 Markdown 解析器处理标题、段落、列表和表格。数学定界符支持 `$…$`、`$$…$$`、`\(…\)`、`\[…\]`；公式仅调用本地 KaTeX。原始 HTML 不执行。遇到不能渲染的公式保留可见错误并记录；不能把这种情况报告为全部公式通过。

正文视图只渲染 `parts` 的全文，数学审查与工程字段在次级入口显示。引用结果、关键原因在批注首屏；来源、声明与所有轮次默认折叠。窄屏批注关闭后恢复纵向位置与触发按钮焦点。

复用范围仅为旧目录的 KaTeX JavaScript、CSS、字体及许可证。检查了 `tools/proof_workflow` 的生成与约束实现；没有沿用旧工作流的数学通过标记、旧正文、旧依赖或旧核查结论。旧渲染器会增加目标与结论标题并按任务分页，本生成器改为读取审定标题且按自然章节分组。

## 实际验证

`engineering/maker-validation.json` 保存程序和浏览器实际检查记录。门禁测试在内存中改变审定记录副本，临时目录仅含空清单；从未读取旧数学内容作为测试或证明。当前已实际验证 T00 审定正文；这不代表最终证明的网页验收，后续新增审定正文须再次构建和验证。

全局 `complete` 另需 `completion.scope_complete: true`、`completion.final_part_id` 指向清单最后的审定收束段，以及 `completion.required_nodes` 穷尽每段的 `{id, status: "complete", version, sha256}`。`global_reviews` 中每个路径须指向三项 pass 且 `target_covered`、`compatible_choices`、`no_circularity` 都为 true 的独立审查；其 `source_hashes` 映射合计绑定全部正文。软件只核对这些记录，不能替代衔接审查。

实际浏览器检查命令：

```bash
python3 docs/audits/h6-square-proof-explorer/segmented-20261004-1456/scripts/validate.py --browser --screenshots
```

本环境的受限沙箱会阻止 Chromium 启动；首次实际运行通过本地工具的 sandbox 外执行审批后成功。页面本身不会发出网络请求。截图位于 `web/maker-*.png`；这些是工程观察证据，不属于数学正文。
