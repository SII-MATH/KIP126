# Lin 原始制品与版本锁定

本文件登记转换器实际读取的上游制品。仓库当前不创建 Raw 数据目录，也不导入大型数据库或压缩包。

## 1. 原先期望包含什么

- 明确回答接受了 Lin program 的哪个发布版本和哪些文件。
- 固定 archive、解压文件及实际使用成员的摘要和 schema。
- 让转换脚本只读输入，并在版本、hash 或 schema 不符时失败。
- 不把缺失记录、空串和 SQL `NULL` 混为同一种数学含义。

## 2. 现在包含什么

固定来源是 Zenodo 14875701、`v126.3.cw49`。仓库保存来源元数据、生成 manifest 和下列摘要，不保存原始大文件本体：

- `proofs.db`：SQLite 3，唯一 `log` 表，字段为 `id, depth, reason, name, stem, s, t, r, x, dx, info`；2,672,275 行，ID 为 5432–2677718。解压数据库 SHA-256 为 `3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248`。
- `S0_AdamsE2_generators.csv`、`relations.csv`、`basis.csv`：三个 UTF-16 CSV，SHA-256 分别为 `3c4e45a1e28837e651e729bee14e7c62a99f797bc650d69e8a79aec13a762c72`、`8b4b67d6fb3c9a3a264813ea780340e73b1a66290c8616d3308ae1fc19f3add5`、`6a337964ad3ac02b729a46fd839dced7cb6764d14d4cea413163987eba8de871`。
- `S0_AdamsSS_t261.db`：selected 记录的 reciprocal SS 与 `basis.d2` 核验输入，SHA-256 为 `518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed`。

全量 JSONL 是 `proofs.db` 的派生调试输出，不是另一份原始事实源。LWX machine 的论文和 Zenodo metadata 位于 [Literature/Sources/LWXMachine](../Literature/Sources/LWXMachine)。

## 3. 大概完成度

**陈述状态：本层不声明数学 theorem。** 数据库版本、schema、实际使用的 CSV 成员和摘要已经明确。

**实现状态：当前支持切片已用真实本机缓存完成 hash、schema 和重生成核对。** 原始包仍在仓库外部；尚无仓库统一的 fetch/cache 命令。曾发现一个本地 `kervaire_csv_v3.rar` 的 archive 摘要与当前 Zenodo archive 不同，但三个实际读取成员的摘要完全匹配；因此目前固定的是使用成员，不能把该本地 archive 名称当成权威版本标识。

文件摘要只证明读取了指定字节，不证明其中的数学结论正确。该层没有可用 `sorry` 比率衡量的证明进度。

## 4. 接下来还需要完成什么

- 建立唯一、机器可读的 source manifest，同时登记 URL、大小、archive 摘要和成员摘要。
- 解释并关闭本地 archive 包装差异，避免同名文件指向不同包。
- 决定使用内容寻址缓存、对象存储或 Git LFS；不要把解压后的 623 MB DB 和约 875 MB 派生 JSONL 放入普通 Git。
- 将实际计算制品或其可复现下载记录接入现有 source inventory。

## 5. 后续应该一步一步如何做

1. 从 Zenodo metadata 取得官方 URL、大小和 archive 摘要。
2. 对可信缓存重新计算 archive、解压文件和使用成员摘要。
3. 人工解决版本差异后提交唯一 source manifest；有歧义时停止生成。
4. 增加只读 fetch/verify 命令，把文件放到仓库外的内容寻址缓存。
5. 在有原始缓存的 CI 或发布检查中运行 hash、schema、重生成和 stale-output 检查。
