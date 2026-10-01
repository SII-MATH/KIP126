> 本文的扫描数量和历史临时文件定位属于先前导入记录；本次重构没有重放全量证明。当前范围以路线清单和本次自审报告为准。

# Lin proofs.db：批量导入与统一可靠性假设

## 当前实现

当前数学编码、解释与条件查表证明位于 `LinProgram/`。
原始记录、版本清单和转换脚本仍位于 `LinProgram/`。
旧的总包消费公理和选择投影已删除。历史全表查表引理显式要求
`LinE2Presentation` 与 `SphereTableCertificate` 参数，没有全局实例。
它们是可复用的条件引理，不作为路线已认证的事实。

路线真正接受的 C 命题是 `Certification D G`，逐字段要求一个共同实现的基、
CSV、乘积、标签、有限记录及同一 Cν 胞腔映射正确。
对应目标与显式消费公理见 [当前边界](C_ROUTE_CERTIFICATION_BOUNDARY.md)。
未完成数学认证时，有限查表等式仍只证明固定表中有这条记录。

这里 `[0]` 表示该双次数的第 0 个**加法基坐标**，不是代数生成元 0。
次数分别是源 `(s,t)=(1,64)`、目标 `(3,65)`。把它改写成
`d₂(h₆)=h₀h₅²` 还需证明对应的 E₂ 坐标等式，不能仅凭名字匹配。

`DifferentialStatement` 使用现有 `linToSphereE2`，最终陈述的是
**固定 `sphereAdamsData` 的实际微分**。它要求源、目标 E₂ 坐标有共同循环代表元
延续到 Eᵣ，且实际 `dᵣ` 把源代表元映到目标代表元。
不会把一个抽象 `d` 字段当成实际微分；也不经过 Mathlib 谱序列适配器。

注意：这里只断言等式，不因为 E₂ 坐标列表非空就断言 Eᵣ 上非零。
非零、永久存活、候选穷尽性仍需要正确解释对应的另外类型的数据。

## 来源与全量读取

- 官方发布：<https://zenodo.org/records/14875701>，`v126.3.cw49`。
- 下载：<https://zenodo.org/records/14875701/files/proofs.db.rar?download=1>。
- 发布压缩包 MD5：`f4c5a97a96a822092ce1ceb57c0a9d43`；已与本地缓存核对一致。
- 解压后的数据库 SHA-256：
  `3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248`。
- 表：`log(id,depth,reason,name,stem,s,t,r,x,dx,info)`，其中 `stem=t-s`。
- 全部 **2,672,275 行**均流式扫描；行号从 5432 到 2677718，不能假设连续。
- 解释依据：`KIP126/Main/Axiom/Literature/Sources/LWXMachine/source/ms.tex` 的 Proofs 节（493–620 行）。
  该文描述的一般表格式适用；其中旧版 2100 万行统计不是本次 cw49 的行数。

导入器 `KIP126/LinProgram/Translate/import-proofs.py` 支持 `--raw-output` 输出全部原始字段，
包括 SQL NULL、多行 `info`、反证分支和其他谱。这份大型 JSONL 与数据库保留在
本地缓存，不作为数百万行 Lean 声明提交。Git 中保留可复现导入器、哈希、覆盖清单
和已解释片段的 Lean 分片。**全量读取/原始导出，不等于全部记录的数学语义已接入。**

## 当前覆盖与明确未覆盖

`Generated/Differentials/manifest.json` 记录每类数量；当前分类互斥且总数等于数据库总行数：

| 分类 | 行数 | 处理 |
|---|---:|---|
| 闭合球面有限页微分 | 10,907 | 86 个 Lean 分片，共享见证字段覆盖 |
| 非零 depth 的分支 | 2,098,419 | 不作为无条件结论 |
| 其他谱或扩张 | 560,504 | 原始保留，尚未解释 |
| 不支持的 reason | 1,902 | 明确保留，不猜测含义 |
| 哨兵页等 | 525 | 不当作普通有限页微分 |
| 超出固定 E₂ 比较范围 | 18 | 不截断后当零 |

当前接入规则：`depth=0`、`name=S0`、
`reason ∈ {d2,D,N,G,XX,XY,Syn,DI,GI}`、`2≤r<999`、源目标内次数在范围内、
两端坐标均已知。`DI/GI` 的记录次数属于目标，导入时统一还原为源次数。
空字符串代表零，SQL NULL / `[NULL]` 代表未知，不可混同。
每个引用的坐标都检查其存在于与现有 `LinE2.RawData` 哈希一致的球面 basis CSV。

仍需工作：Cν 等其他谱的固定对象及坐标解释；扩张记录；永久循环/被打中等哨兵；
带条件的分支逻辑；从这些记录整理非零、候选限制和穷尽性。
现有 `Near126` 手工事实包尚未全部改成这个统一输入的派生视图。
这些缺口不能用“已经导入数据库”代替。

## 复现

下面路径是本次实际核验的缓存，可换成自行下载解压的同版本文件。

```bash
python3 KIP126/LinProgram/Translate/import-proofs.py --self-test \
  /tmp/kip126-proofs-import.SSDXBe/proofs.db \
  --e2-archive /tmp/kervaire_csv_v3.rar --check
```

去掉 `--check` 可重新生成；默认扫描全库，不按主定理需要的八条/十条筛选。
`--check` 重新生成预期内容并逐字比较现有分片和 manifest；不修改它们。
加 `--query-id 5541` 可以由原始数据库行号查到分片、偏移和解码后的内容。
如需原始全量 JSONL，加 `--raw-output <尚不存在的路径>`。
本次完整导出位于 `/tmp/kip126-proofs-import.SSDXBe/all-rows.jsonl`。
未知 schema、哈希不符、畸形坐标、不存在的 basis 地址都会失败，不静默生成零。

## 信任边界与消公理范围

查表的 `by rfl`（或 `by decide`）只证明**固定表中确有该条记录**，不是验证机器证明。
路线 `Main/Axiom/Computation/Route.lean` 明确接受同型的有限数学认证目标；
认证 Solution 尚未完成，不能用该消费 axiom 自证。未来的证书验证必须给出同一
数学解释上的可靠性定理，不能仅验证文件哈希。
`Checks/ClassicalAdams/RouteCertification.lean` 核对完整类型一致与生产/消费隔离。
源构造、比较和本文推导的 `sorry` 另列为证明债；这些检查不要求零 sorry。
`scripts/Axioms.lean` 的严格最终证明审计仍拒绝未消除的计算公理和 sorry。

## 固定球面 staircase 与条件分支

`Generated/Staircase/` 无损保留已固定 `S0_AdamsSS_t261.db` 的全部 23,822 行，
包括 SQL NULL。`Interpretation/State` 的 Lean 解码器区分 7,893 条明确出射、
7,893 条明确入射、6,279 个未知出射、136 个累计边界，以及 1,621 个 level=9000。
根 `SphereStaircaseInterface` 要求每行同时成功解码并满足同一 Lin comparison 下的
实际内部命题。未知出射只给到 Eᵣ 的提升，未知入射只给 Bᵣ₊₁ 的累计边界；
level=9000 保留 E₁₀₀₀ 的明确界限，均不自行追加非零永久存活。

```sh
python3 KIP126/LinProgram/Translate/import-staircase.py --check
bash scripts/shared-main-cache.sh run lake build KIP126.Checks.ClassicalAdams.LinStaircase
```

上述检查覆盖源哈希、schema、完整生成内容、全部坐标与范围，以及实际 Lean
解码器对全部记录的执行。它们不证明 `SphereStaircaseInterface.rows_sound`。

`Interpretation/Branch` 按 id/depth 保留完整 trial 上下文，TI 的存储度数按靶度数
归一化；条件性 D/DI 不展开为无条件结论。实际候选窗口包括所有二元线性组合，
coverage、refutation 和 contradiction 各有独立数学谓词。全日志到固定对象/坐标
字典的接入和候选窗口绑定仍未完成；retained trial 数量和诊断文本不是证明。

## 原有限微分导入的验证记录

- 导入器 6 项测试通过；全库再次扫描的 `--check` 逐字复现通过。
- 全量 JSONL 行数核对为 2,672,275；行号查询 5541 定位到 `(shard,offset)=(0,69)`。
- 原有限微分导入的 `LinProofs` 检查通过；共享包扩充后的当前依赖债务见上文。
- 库入口 `lake build +KIP126 axioms` 通过（编译审计程序，不声称严格无公理审计通过）。
- `leanblueprint web`、`lake exe checkdecls blueprint/lean_decls`、`git diff --check` 通过。

Blueprint 明确把可靠性输入标为 `notready`，没有把编译成功标成数学上已消公理。
