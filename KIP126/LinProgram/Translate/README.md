# Translate：确定性转换程序

## 1. 原先期望包含什么

本目录负责把固定的 Lin program 制品机械转换成可审查的 Lean 数据。相同输入和相同脚本必须得到逐字相同的输出；计算记录不能由 agent 逐条翻译。

## 2. 现在包含什么

| 脚本 | 当前职责 |
| --- | --- |
| `generate-e2.py` | 读取三个 UTF-16 CSV，校验生成元、次数、齐次关系和 basis 地址，生成 `Generated/E2.lean` |
| `check-e2.py` | 在临时目录重生成 E₂ 数据并与 committed 文件逐字比较 |
| `import-proofs.py` | 只读扫描 `proofs.db`，联合 basis CSV 生成 86 个差分分片、`Table.lean` 和 manifest |
| `import-selected.py` | 联合两个 SQLite、三个 CSV 和 bulk shards，生成 `Interpretation/Selected/{Proofs.lean,records.json}` |
| `select-route.py` | 为三阶段路线筛选球谱/Cν 的局部基、状态、正式日志和根层排除，生成 `Route/{Selected.lean,Records.lean,selected.json}`；`--check` 逐字核对 |

新 C(M) 的入口为 `Route/Data.lean`，筛选依据见
[C_INPUT_FREEZE.md](../../../../../docs/C_INPUT_FREEZE.md)。它不消费旧 bulk 正确性公理。
从仓库根目录运行：

```bash
python3 KIP126/LinProgram/Translate/select-route.py --check
lake build KIP126.LinProgram.Route.Records KIP126.Checks.Computation.Route
```

此命令检查固定字节和转换结果，不完成数学认证。

迁移后的 repo root、模块模板和输出路径已经修正。`import-proofs.py` 的 stale-output 检查只允许同目录额外存在 `README.md`，不会宽泛忽略其他文件。

五个固定输入现在位于相邻的 `../Raw/`。从仓库根目录可以直接运行三条检查：

```bash
python3 KIP126/LinProgram/Translate/check-e2.py \
  KIP126/LinProgram/Raw

python3 KIP126/LinProgram/Translate/import-proofs.py \
  KIP126/LinProgram/Raw/proofs.db \
  --e2-basis-csv KIP126/LinProgram/Raw/S0_AdamsE2_basis.csv \
  --check

python3 KIP126/LinProgram/Translate/import-selected.py \
  --proofs-db KIP126/LinProgram/Raw/proofs.db \
  --sphere-db KIP126/LinProgram/Raw/S0_AdamsSS_t261.db \
  --csv-dir KIP126/LinProgram/Raw \
  --check
```

这些命令要求 Git LFS 已取回真实文件；pointer 文本不能作为转换输入。

## 3. 大概完成度

**陈述覆盖：六类计划计算接口中，目前转换规则覆盖 2/6。** E₂ 数据和闭合球面有限页差分的规则明确；其余类别目前只有全库分类统计，尚无完整目标 schema。

**实现状态：当前支持范围已从 Raw 完成真实数据本地复现。** 上述三条命令均已通过：E₂ 输出逐字一致；`proofs.db` 全量扫描保持 2,672,275 个源行、10,907 个导出行和 86 个 shards；row 5541 仍定位在 shard 0、offset 69；selected 导入器核对六条 bulk 结果和一条独立 `basis.d2`。单元测试与 self-test 也已通过；CI 尚未执行这组 LFS 输入检查。

这些检查验证解析和生成规则，不验证生成命题的数学真实性。完成度不是 `sorry` 比率，本次路径修复没有补 proof。

## 4. 接下来还需要完成什么

- 定义无损 `RawRecord`，保留全部 11 列、SQL `NULL`、多行 `info` 和原始 DI/GI 方向。
- 将读取、规范化、选择支持类别和生成 Lean 拆成可分别测试的步骤。
- 为条件树、反证、sentinel、其他谱、map 和 extension 增加显式 decoder。
- 在 CI checkout Git LFS 后持续运行三条 Raw 重生成检查。

## 5. 后续应该一步一步如何做

1. 先建立数据库到无损中间表示，并为异常值加入失败关闭测试。
2. 为每种 reason 和谱名定义独立 decoder，未知值保留为未解释记录。
3. 从中间表示分别生成差分、条件和状态数据。
4. 在临时目录重生成，再逐字比较 Lean 文件与 manifest。
5. 只有 translator 规则经审核后才更新 committed generated diff；禁止直接修补生成文件。
