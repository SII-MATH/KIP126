# 球谱局部微分结果输入：v126.3.cw49

本批范围经用户确认：`Lin-program/summary.md` 的 8 个等式中，6 个球谱等式
有 `proofs.db` 正式日志；第 7 个球谱等式单独采用 E₂/SS 数据表输入；第 8 个
属于 Cν，不在本批范围。Remark 7.7 的两候选约束暂留待办。本清单不宣称
覆盖第 7 节所需的全部存活性、候选穷尽、无交叉或辅助谱结论。

数学来源：[Lin–Wang–Xu v2，第 7 节](https://arxiv.org/html/2412.10879v2#S7)。
原始数据：[Zenodo 14875701，v126.3.cw49](https://zenodo.org/records/14875701)。

## 声明与记录的逐条对应

导入 `KIPBase.StableHomotopy.SphereAdamsProofs`。
以下名称均位于 `KIPBase.StableHomotopy.SphereAdamsProofs`；每条公理同时有
`_source`、`_target`、`_provenance`。此前要求调用方传入 `_Input` 的实现已撤销。
当前导入即接受这些命名公理，可直接调用 `d2_h6 𝒮` 等结论。

具体位置：

- `StableHomotopy/SphereAdamsProofsData.lean`：生成的带次数表达式、来源元数据；
- `StableHomotopy/SphereAdamsProofs/Axiom.lean`：7 条带中文数学与来源注释的公理；
- `StableHomotopy/SphereAdamsProofs.lean`：导入上述公理的公共入口；
- `StableHomotopy/SphereAdamsProofsLabels.lean`：已有 h₆ 名称及论文目标写法；
- `StableHomotopy/SphereAdamsProofsExamples.lean`：无需微分输入的用法、原微分等式、命名公理审计。

设 `V = x_{123,9} + h₀x_{123,8}`、`U = h₀²x_{124,8}`、
`B = Δe₁ + C₀ + h₀⁶h₅²`。`B` 是 CSV 生成元 **82 的完整名称**，
这里没有给其三个部分另造生成元或擅自识别它们。

| 声明 | 论文等式 | 直接来源 | 论文位置 |
|---|---|---|---|
| `d2_x125_8` | d₂(x₁₂₅,₈) = h₁V + U | `proofs.db/log.id=5990`，reason=`d2` | Fact 7.13(2) |
| `d2_h6` | d₂(h₆) = h₀h₅² | `proofs.db/log.id=5541`，reason=`d2` | Lemma 7.16 |
| `d3_h4_x109_12` | d₃(h₄x₁₀₉,₁₂) = h₁x₁₂₂,₁₅,₂ | `proofs.db/log.id=153768`，reason=`D` | Lemma 7.14(1) |
| `d3_h0Sq_x123_13_2` | d₃(h₀²x₁₂₃,₁₃,₂) = h₀²x₁₂₂,₁₆ | `proofs.db/log.id=462481`，reason=`N`，info=`Ceta__S0` | Lemma 7.14(2) |
| `d3_x126_4` | d₃(x₁₂₆,₄) = h₀²x₁₂₅,₅ | `proofs.db/log.id=929469`，reason=`N`，info=`CW_2_V_eta__S1` | Lemma 7.16 |
| `d7_x123_11_combination` | d₇(x₁₂₃,₁₁,₂ + x₁₂₃,₁₁ + h₀h₆[B₄]) = h₁x₁₂₁,₁₇ | `proofs.db/log.id=2671068`，reason=`D` | Lemma 7.14(2) |
| `d2_h0Pow6_h6` | d₂(h₀⁶h₆) = h₀B | **`S0_AdamsSS_t261.db/S0_AdamsE2_basis.id=513`，`d2` 列** | Lemma 7.16 |

这些论文等式对应的结果都以 **目标在 E_r 非零** 的外部输入陈述。
规范基表达式先由数据库生成；前后两种论文目标写法的识别放在
`SphereAdamsProofsLabels.lean`，分别是 `d2_x125_8_paper` 和
`d2_h0Pow6_h6_paper`。`d2_h6_named` 直接引用已有 `SphereAdamsE2.h6`。

| 声明 | r | 源 (s,t) : 局部基坐标 | 目标 (s,t) : 局部基坐标 | 最终 SS 源行 / 目标行 id |
|---|---:|---|---|---|
| `d2_x125_8` | 2 | (8,133) : [1] | (10,134) : [2,4] | 2630 / 2690 |
| `d2_h6` | 2 | (1,64) : [0] | (3,65) : [0] | 401 / 416 |
| `d3_h4_x109_12` | 3 | (13,137) : [2] | (16,139) : [0] | 2917 / 3074 |
| `d3_h0Sq_x123_13_2` | 3 | (15,138) : [2] | (18,140) : [2] | 3002 / 3138 |
| `d3_x126_4` | 3 | (4,130) : [0] | (7,132) : [0] | 2437 / 2572 |
| `d7_x123_11_combination` | 7 | (11,134) : [0,1,3] | (18,140) : [1] | 2687 / 3139 |
| `d2_h0Pow6_h6` | 2 | (7,70) : [2] | (9,71) : [0] | 513 / 528 |

最后一列属于 `S0_AdamsE2_ss`；**不是 `proofs.db` 行号，也不是基表行号**。
每个局部基编号的单项式、生成元编号、原基表全局 id，以及完整的正式日志，
均保存在机械生成的 `StableHomotopy/SphereAdamsProofs.records.json`。

## 实际接口与信任边界

```lean
import KIPBase.StableHomotopy.SphereAdamsProofsLabels

open KIPBase.StableHomotopy
open SphereAdamsDifferentials SphereAdamsProofs

example (𝒮 : Type u) [StableHomotopyCategory.{u,v} 𝒮] :
    HasNonzeroDifferential 𝒮 2 (SphereAdamsE2.h6 𝒮)
      (SphereAdamsE2.evaluate 𝒮 d2_h6_target) :=
  d2_h6_named 𝒮
```

`Axiom.lean` 直接使用 Lean 的 `axiom` 声明 `HasNonzeroDifferential` 成立。
不存在需要调用方补交的 `_Input` 或 `ExternalEvidence` 包装。
每条公理断言存在具体 E_r 代表、它与指定 E₂ 表达式的共同循环代表、原微分上的
等式及 E_r 非零性，均在既有 `sphereAdamsConvergingSS` 上。
因此可以直接用公理的 `.choose.equation` 获取原微分映射上的等式。
对 d₂，`DifferentialWitness.equation_on_page_two` 还能消去代表关系，得到
该映射直接作用于指定 E₂ 元素的等式。对 r>2 则保留必要的代表关系。

数据库解析、坐标解码、来源核验均为可执行 Python 程序，无 `sorry`。
全部乘法仍由现有生成关系约化器 `CSV.coordinates` 执行，不保存乘法表。
两处论文标签识别在 Lean 中通过 `native_decide` 检查计算输出；实际 E₂ 等式
额外依赖显式 `[SphereAdamsE2.BasisData 𝒮] [SphereAdamsE2.CoordinateData 𝒮]`。
这仍信任 Lean 原生计算和既有坐标输入，不是已认证的逐步 `rw` 证明生成器。

按用户明确要求，本批引入 **7 条命名计算公理**，没有新增 `sorry`。
这些公理的目的就是为原来的抽象微分添加论文所用性质，而不是证明计算结果。
全部公理名称同时列在 `records.json` 的 `axioms` 字段中。
已有 `pageModule`、`pageGenerator` 等输入及
`transfer`/收敛等基础设施的信任边界仍然存在；不声称完成数据库证明重放、
Adams 塔构造或 h₆² 存活的主定理。

第 7 条的规范目标是 `h₀⁷h₅²`，与论文的 `h₀B` 经过实际关系计算得到相同
坐标。`proofs.db` 的 5541 可以作为以后用乘法传播推导此式的相关输入，
**本批未重放该推导，也没有把 5541 当成第 7 条的直接记录**。
上游 `ss/loadsave.cpp` 仅在 `IsNewDiff` 时记录 `d2`，所以完整 `d2` 表的每一行
不必都有单独日志。这里只说明程序的记录规则，不断言已重建该行的产生历史。

## 格式核验与拒绝规则

`proofs.db` 只有 `log` 表，其 schema 在伴随 JSON 中完整记录；并无独立的
数据库版本表。发行版本来自固定 Zenodo 记录，文件身份由 SHA-256 固定。
`S0_AdamsSS_t261.db` 的 `version` 表是程序数据库格式版本，另行原样记录。

- 日志已含 (s,t)，`stem=t-s`；CSV 的 (stem,s) 转为 (s,t)。目标为 (s+r,t+r−1)。
- `x`、`dx` 为对应次数内的零起始基编号。SQL `NULL` 是未知；空串是零向量；
  字符串 `"0"` 是 **第 0 个基向量**，不是零。
- 仅接受 `name=S0`、`depth=0`、reason 属于所选正向 `d2/D/N`、已知非空目标的记录。
  `T/TI` 试探、无 reason 的提示、逆向记录及不支持的 reason 一律拒绝。
- `S0_AdamsE2_ss` 的已知源行须满足 `level=10000−r`，目标行须满足 `level=r`，
  且 `base/diff` 互换后完全匹配。这是发行结果的交叉核验，不是非零性的 Lean 证明。
- 数据库与固定的三份 CSV 的全部生成元、关系、基单项式及局部编号逐项一致；
  对本批 d₂ 另核对基表 `d2` 列。上游 CSV 导出代码为 `ss/utility.cpp`，
  局部基编号公式为 `id − min(id at (s,t))`。

未导入的 `d₃(x₁₂₆,₆)`：`log.id=2047477,2047478` 是 `depth=1,reason=T`
的失败试探；`2421936,2603892` 的 `dx=NULL`，不是正式确定目标。
这些原始记录保留在 JSON 的 `deferred` 内，既不导为零，也不选定某个候选。

## 再生成与验证

本次实际只读输入路径：

```text
/inspire/hdd/global_user/baokangjie-CZXS25250151/KIP126-110/KIPBase/.external-count-14875701/proofs/proofs.db
/inspire/hdd/global_user/baokangjie-CZXS25250151/Lin-program/program/upstream/kervaire-49/S0_AdamsSS_t261.db
/inspire/hdd/global_user/baokangjie-CZXS25250151/Lin-program/program/upstream/kervaire_csv/
```

旧目录仅提供原始数据文件，不导入其中的 Lean 实现，也不修改其数据库。
`proofs.db` 的 SHA-256 为
`3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248`；
球谱数据库为 `518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed`。
本地 `proofs.db.rar` 的 MD5 已核对为 Zenodo 公布的
`f4c5a97a96a822092ce1ceb57c0a9d43`。全部 CSV 的 SHA-256 也固定在转换程序和 JSON 中。

在当前 checkout 中运行（参数可指向相同哈希的其他本地副本）：

```bash
python3 KIPBase/SphereAdamsProofs.generate.py \
  --proofs-db /path/to/proofs.db \
  --sphere-db /path/to/S0_AdamsSS_t261.db \
  --csv-dir /path/to/kervaire_csv \
  --include-table-result

# 加 --check：逐字检查全部生成文件，不改写文件。
python3 KIPBase/SphereAdamsProofs.test.py
lake build KIPBase.StableHomotopy.SphereAdamsProofsExamples \
  KIPBase.StableHomotopy.SphereAdamsDifferentialsExamples
git diff --check
```

无需联网、更新依赖或全量构建。若沙箱无法让 Lean 定位其自身安装，使用已授权的
本地工具链执行同一个定向构建。代码与产物只写当前 checkout，未推送或更新 PR。
