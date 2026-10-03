# Lin 原始制品与版本锁定

本目录保存转换器实际读取的上游制品。数据库和 CSV 保持原字节，通过 Git LFS 规则管理。
`manifest.json` 登记下面五个既有制品；新的局部 C(M) 清单在
[`../Route/selected.json`](../Route/selected.json) 中同时固定这五个和三个 Cν 配套制品。
把文件放入仓库只固定了输入，并不验证其中的数学结论。

新增的 `Cnu_AdamsSS_t200.db`、`map_AdamsSS_Cnu_to_S0_t200.db` 和 `ss.json`
供 `select-route.py` 使用；来源是本地 `Lin-program/program/upstream/kervaire-49`。
它们仅在本地加入，未上传。精确摘要、用途及分发来源的信任边界见
[C(M) 文档](../../../docs/STAGE0_INTERFACES.md)。下文关于已上传五个 LFS 对象的描述仅针对既有文件。

## 1. 原先期望包含什么

- 明确回答接受了 Lin program 的哪个发布版本和哪些文件。
- 固定解压文件及实际使用成员的摘要和 schema。
- 让转换脚本只读输入，并在版本、hash 或 schema 不符时失败。
- 不把缺失记录、空串和 SQL `NULL` 混为同一种数学含义。

## 2. 现在包含什么

固定来源是 Zenodo 14875701、`v126.3.cw49`。本目录包含以下五个转换输入：

| 文件 | 格式与用途 | 字节数 | SHA-256 |
| --- | --- | ---: | --- |
| `proofs.db` | SQLite 3；唯一 `log` 表，供 bulk differential 导入 | 623,042,560 | `3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248` |
| `S0_AdamsSS_t261.db` | SQLite 3；供 selected reciprocal SS 与 `basis.d2` 核验 | 7,913,472 | `518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed` |
| `S0_AdamsE2_generators.csv` | UTF-16 CSV；E₂ 生成元 | 149,568 | `3c4e45a1e28837e651e729bee14e7c62a99f797bc650d69e8a79aec13a762c72` |
| `S0_AdamsE2_relations.csv` | UTF-16 CSV；E₂ 关系 | 11,634,438 | `8b4b67d6fb3c9a3a264813ea780340e73b1a66290c8616d3308ae1fc19f3add5` |
| `S0_AdamsE2_basis.csv` | UTF-16 CSV；E₂ 加法 basis 与坐标 | 1,408,908 | `6a337964ad3ac02b729a46fd839dced7cb6764d14d4cea413163987eba8de871` |

`proofs.db` 的 `log` 表字段为 `id, depth, reason, name, stem, s, t, r, x, dx, info`；共有 2,672,275 行，ID 为 5432–2677718。全量 JSONL 是它的派生调试输出，不是另一份原始事实源，因此不放入 Raw。LWX machine 的论文和 Zenodo metadata 位于 [Sources/LWXMachine](../../../Source/LWXMachine)。

五个大文件由 `.gitattributes` 中的 Git LFS 规则覆盖，五个对象均已上传到远端 LFS 存储。协作者 checkout 后需要取得 LFS 内容，pointer 文本本身不是计算输入。

## 3. 大概完成度

**陈述状态：本层不声明数学 theorem。** 数据库版本、schema、五个实际输入、大小和摘要已经明确。

**实现状态：原始输入已归入 Raw 并上传五个 Git LFS 对象，当前支持切片已从本目录完成本地重生成检查。** E₂ 逐字重生成、2,672,275 行 bulk 扫描与 10,907 条输出核对、六条 selected bulk 结果及一条 `basis.d2` 核验均已通过。CI 尚未自动执行这组 LFS 下载、hash 和重生成检查。

文件摘要只证明读取了指定字节，不证明其中的数学结论正确。该层没有可用 `sorry` 比率衡量的证明进度。

## 4. 接下来还需要完成什么

- 让 CI checkout Git LFS 后核对 `manifest.json`、schema 和生成结果。
- 将五个实际计算制品接入共用 source inventory，并区分 Zenodo archive 摘要和成员摘要。
- 解释并记录历史 `kervaire_csv_v3.rar` 的 archive 包装差异；实际读取成员的摘要已经固定，archive 文件名本身不作为版本依据。

## 5. 后续应该一步一步如何做

1. checkout 后从仓库根目录取得五个 LFS 输入，再按 `manifest.json` 核对大小和 SHA-256：

   ```bash
   git lfs pull \
     --include="KIP126/LinProgram/Raw/*.db,KIP126/LinProgram/Raw/*.csv"
   ```

2. 核对 E₂ 生成结果：

   ```bash
   python3 KIP126/LinProgram/Translate/check-e2.py \
     KIP126/LinProgram/Raw
   ```

3. 从同一 Raw 目录核对 bulk differential 输出：

   ```bash
   python3 KIP126/LinProgram/Translate/import-proofs.py \
     KIP126/LinProgram/Raw/proofs.db \
     --e2-basis-csv KIP126/LinProgram/Raw/S0_AdamsE2_basis.csv \
     --check
   ```

4. 从同一 Raw 目录核对 selected 输出：

   ```bash
   python3 KIP126/LinProgram/Translate/import-selected.py \
     --proofs-db KIP126/LinProgram/Raw/proofs.db \
     --sphere-db KIP126/LinProgram/Raw/S0_AdamsSS_t261.db \
     --csv-dir KIP126/LinProgram/Raw \
     --check
   ```

5. 将上述 hash、schema、E₂、bulk 和 selected 检查接入具备 Git LFS checkout 的 CI；只有实际运行通过后才记录为 CI 重生成检查已通过。
