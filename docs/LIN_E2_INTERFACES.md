# Lin E₂ 加法基与乘法接口

固定来源：PR #110，提交 `ff39e95147712fc00cd3f700e0dd1f490d16b863`；
Zenodo 14875701，`v126.3.cw49`。原始 CSV 哈希保存在 `RawData.lean`。
这里只接 E₂ 代数，不从表中定义后续微分，不证明 h₆² 永久存活。

实际使用只需 KIP126 下的模块，数据重生成也不依赖 KIPBase。
PR 原件和 KIP126 接口的对应见
[PR110_INTEGRATION.md](PR110_INTEGRATION.md)。

## 引用加法生成元

```lean
import KIP126.Def.AdamsE2.Lin

open KIP126.LinE2

-- 次数使用 (s,t)，不是 (stem,s)。t = stem + s。
#eval basisRowsAt 2 128
#eval findBasisIndex? 2 128 0
```

表中 `(2,128,0)` 是单项式 `"69,2"`，即 h₆²。69 是**代数生成元编号**，
0 是该双次数内的**加法基编号**，二者不能混用。

| 接口 | 用途 |
|---|---|
| `basisRowsAt s t` | 列出该双次数所有基表行，保持 CSV 顺序 |
| `findBasisIndex? s t k` | 将 CSV 编号转换成合法的 `BasisIndex s t`；不存在时返回 `none` |
| `dataBasis s t ht i` | 计算分量 `E2At s t` 中第 i 个加法基向量 |
| `basisByCSV? s t ht k` | 按原始 `(s,t,k)` 查询基向量；不存在时返回 `none` |
| `dataBasis_val` | 基向量的值确实是表中指定的单项式，而不是任意选择的向量 |
| `dataCoordinates s t ht` | 该分量与有限支撑 F₂ 坐标的线性同构 |
| `dataCoordinates_reconstruct` | 从坐标恢复原元素 |
| `data_finrank` | 分量维数等于该次数的表行数 |

这里 `ht : t ≤ 261`。`BasisIndex` 是表内位置的有限类型，查找函数负责将
CSV 编号转成它，不应假设位置与编号在所有数据版本中相同。

上述 `Module.Basis` 和坐标接口依赖待证的 `basisTable_correct`。
原始查询、严格解析与计算器运行本身不依赖这个定理。

## 直接用于内部 Adams 页

`KIP126.Classical.Adams` 中提供：

- `sphereE2Basis`、`sphereE2BasisByCSV?`：内部 `sphereAdamsData.Page 2 (s,t)` 上的基向量引用。
- `sphereE2Coordinates`：内部页与有限支撑 F₂ 坐标的整数线性同构。
- `sphereE2Coordinates_basis`、`sphereE2Coordinates_reconstruct`、`sphereE2Basis_ne_zero`。
- `linToSphere_mul`、`linToSphere_product_eq`：把计算分量的乘法结论送到内部页。
- `linToSphere_exists_preimage`、`linToSphere_eq_iff`、`linToSphere_ne_zero_iff`：
  原像、相等判定和非零判定。
- `linToSphere_product_eq_zero`：零乘积的便捷版本。
- `computedH6_mul_self`：计算 h₆ 的平方就是固定的 `computedH6Square`。

这些接口通过已有 `linE2Presentation` 连接，不导入 KIPBase，也不导入
Mathlib 谱序列适配层。坐标使用整数线性同构，避免对现有页强行加入一套
可能冲突的 F₂ 标量作用；坐标系数本身仍是 F₂。

## 乘法计算

```lean
import KIP126.Def.AdamsE2.Lin
import KIP126.Tactic.LinE2

open KIP126.LinE2

example : h0 * h1 = 0 := by e2_mul
example : h1 * h2 = 0 := by e2_mul
example : h1 ^ 3 = h0 ^ 2 * h2 := by e2_mul
example : (h0 + h1) * h1 = h1 ^ 2 := by e2_mul
```

`e2_mul` 支持具体生成元、可展开常量、自然数系数、加法、乘法和自然数幂。
它处理商代数 `E2` 的等式，不直接处理谱序列页上的抽象等式。
要用于内部页，先在数据模型证明等式，再使用 `linToSphere_product_eq`。
双分次乘法是 `mulAt`，其闭合性 `multiply_mem` 已证明，不依赖这两个新待证定理。

也可直接执行计算器，重复查询时只初始化一次：

```lean
#eval show IO Unit from do
  let e ← match KIP126.LinE2.Compute.loadEngine with
    | .ok e => pure e
    | .error msg => throw (IO.userError msg)
  -- (s,t,k) 基坐标输入：h₁² × h₁。
  match e.multiplyBasis #[(2,4,0)] #[(1,2,0)] with
  | .ok result => IO.println (KIP126.LinE2.Compute.displayResult result)
  | .error msg => throw (IO.userError msg)
```

结果为 `(3,6,0)`，对应 h₀²h₂。`multiplyStrings` 则接受生成元编码，
例如 `"1,2"` 表示 h₁²。空单项式字符串表示 1，整个字符串 `"0"` 表示零。
重复基向量按 F₂ 加法相消。

严格接口拒绝非法输入、未知基坐标、超出 `t ≤ 261` 的输入/乘积，以及燃料耗尽。
`e2_mul 2000000` 可显式增加归约步数。只有显式调用 `multiplyTruncated`
才使用范围外截断为零的语义；这样的零不能解释为真实 Ext 中的零。

## 三条独立的信任边界

1. `basisTable_correct`（`LinBasisTable/Proofs.lean`，`sorry`）：
   表中指定的单项式具有正确次数，且线性无关、张成指定分量。
   运行时检查了次数、无重复与不可约性，但这些不等于基定理。
2. `coordinateCheck_sound`（`LinAutomation/Proofs.lean`，`sorry`）：
   实际归约并比较坐标成功，能够推出商代数等式。每次 `e2_mul` 成功都会警告此项证明债。
   `native_decide` 检查布尔计算结果，不代替归约算法正确性的数学证明。
   **Lean 4.32 的 `native_decide` 会为每次成功求值生成新的求值公理**
   （名字含 `_native.native_decide.ax`），并不是纯内核检查的证书。
   这些公理会被现有严格审计报告为不符合公理位置规则；本次没有修改白名单
   或隐藏它们。后续还需用内核可检查的归约证书替代这一步。
3. `linE2Presentation`（原有命名公理）：该具体商代数在覆盖次数内描述内部球面 Adams E₂，且乘法相容。

第一、二条的数学证明没有被改名或转成公理；各自保留为独立待证定理。
计算 tactic 的原生求值公理是上述额外的执行信任，不进入最终主定理当前的证明依赖。
两个最终主定理的陈述未改变，也没有因此获得 h₆² 永久存活的证明。

## 回归检查

独立生成器位于 `KIP126/External/Computation/LinE2/generate.py`。
用原始 CSV 核对全部数据（默认不写文件）：

```bash
python3 scripts/generate-lin-e2.py /path/to/kervaire_csv
```

通过项目缓存包装器构建：

```bash
bash scripts/shared-main-cache.sh run lake build \
  KIP126.Checks.AdamsE2.LinBasis \
  KIP126.Checks.AdamsE2.LinCompute \
  KIP126.Checks.AdamsE2.LinTactic
```

覆盖全量加载、基表索引、乘法正例、非法输入/不等式/超范围/未知变量等反例，
并检查内部接口没有反向导入谱序列适配层。

本次验证记录（2026-09-24）：上述三个目标通过；原有 `FixedFinal` 和
`ComputationalBoundary` 检查通过，两个最终命题签名及原有依赖不变。
`multiply_mem` 的依赖只有 Lean 基础公理；`checked_h0_mul_h1` 的依赖明确
列出 `sorryAx` 和本次 native 求值生成的公理。Blueprint 网页生成通过。
全库构建在本次未修改的 `Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean:97`
遇到默认 200000 heartbeats 超时；缺少该模块产物，因此全库声明链接检查和
完整公理审计尚未完成。未修改该模块或放宽审计来消除此问题。
