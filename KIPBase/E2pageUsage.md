# 球谱 E₂ 乘法计算器

数据固定为 Zenodo 14875701 / v126.3.cw49，内部次数 `t ≤ 261`。
`E2pageCompute.lean` 直接使用全部 231848 条导出关系和 23822 个基单项式。

在项目根目录编译并运行示例：

```bash
lake build KIPBase.E2page
lake env lean KIPBase/E2pageExamples.lean
```

第二条命令运行 `#eval demo`，初始化一次全部索引，然后展示结果并运行回归检查。
优化后的初始化加检查耗时约 4.4 秒（不含 Lean 启动和导入时间）；重复查询应复用同一个 `Engine`。

自定义查询（可放在另一个 Lean 文件中）：

```lean
import KIPBase.E2pageCompute
open KIPBase.SphereE2.Compute

#eval do
  let e ← match loadEngine with
    | .ok e => pure e
    | .error msg => throw (IO.userError msg)
  for (a, b) in [("1,2", "1,1"), ("0,1;1,1", "1,1")] do
    match e.multiplyStrings a b with
    | .ok r => IO.println (displayResult r)
    | .error msg => IO.println s!"Error: {msg}"
```

编码沿用 CSV：`"1,2"` 是生成元 1 的平方，`"0,1;1,1"` 是生成元 0 与 1 之和。
`""` 表示单位，整个多项式字符串 `"0"` 表示零。
数字对可以乱序或重复，解析器会合并指数；多项式重复项在 F₂ 上抵消。
这里只接受编号，不接受 `"h_0"` 等名称作为输入。

- `e.multiplyStrings a b`：严格范围接口，超出内部次数 261 报错。
- `e.multiplyTruncated a b`：截断代数接口，丢弃乘积中内部次数大于 261 的项。
- `e.multiplyBasis #[(s,t,index), ...] #[(s',t',index'), ...]`：两组基坐标相乘。
  每个数组表示基向量之和；index 是各自双次数内的编号。
- 所有接口返回 `Except String Result`。`normalForm` 给出单项式和，
  `coordinates` 给出每一项的 `(s,t,index)`，也支持非齐次结果。
- 可选的最后一个参数是约化步数上限，默认 1000000。耗尽时返回错误，
  绝不把部分约化结果当作标准形。

示例结果：

| 输入 | 正规形 | 基坐标 |
|---|---|---|
| `"0,1"` × `"1,1"` | 0 | 空 |
| `"0,1"` × `"0,1"` | h₀² | (2,2,0) |
| `"1,2"` × `"1,1"` | h₀² h₂ | (3,6,0) |
| `"2,2"` × `"2,1"` | h₁² h₃ | (3,12,0) |

实现沿用同版原始 C++ 源码的单项式比较方向和首项约化。
初始化检查关系项序、齐次性、范围、数量、基坐标唯一性，以及所有基单项式的不可约性。
这些检查不是 Buchberger 判据的形式化证明；本实现采用导出的 Gröbner 基数据，
不重新做 S-多项式补全，也不证明它与真实 Ext 的同构。
计算器和回归检查均不使用 `sorry`。`E2page.lean` 的 `multiply_mem` 仍有一个
允许保留的 `sorry`；其三个具体乘法证明的有限字符串解析等式使用 `native_decide`。

若需要将计算结果视为原商代数中的元素，导入 `KIPBase.E2page` 后使用
`KIPBase.SphereE2.interpretComputedPolynomial result.normalForm`。
该解释函数本身不是约化算法正确性的证明。

## 在证明中自动比较 CSV 基坐标

新增 `KIPBase.E2pageTactic`，使用方式：

```lean
import KIPBase.E2pageTactic
open KIPBase.SphereE2

example : (h0 + h1) * h1 = h1 ^ 2 := by
  e2_mul

example : h1 ^ 3 * h0 = 0 := by
  have h : h1 ^ 3 = h0 ^ 2 * h2 := by e2_mul
  rw [h]
  e2_mul
```

它对等式两边分别展开、约化、查 CSV 基坐标，并比较完整的 `(s,t,index)` 列表。
不同双次数中的相同 index 不会混淆。既支持乘积，也支持包含加法、自然数系数和
自然数次幂的具体多项式等式。可展开的命名常量和局部 `let` 也可以使用。
未知变量不会被当作生成元；若 `x : E2` 未给出具体表达式，不能直接查表计算它。

`e2_mul 2000000` 指定约化步数上限。默认 1000000；范围检查是严格的 `t ≤ 261`，
不会利用截断把超范围乘积自动判为零。为控制展开资源，非零非单位多项式的幂指数
上限为 261。首次调用建立全部索引，同一 Lean 进程中的后续调用复用索引。

**当前证明信任状态：** `coordinateCheck_sound` 是暂留 `sorry` 的计算正确性桥接。
因此 `e2_mul` 目前是采用该桥接的自动化原型，生成的证明依赖 `sorryAx`，不能视为
已经完整认证的形式化证明。实际展开、Gröbner 约化和坐标比较均已实现，不使用
`sorry`；成功后还通过 `native_decide` 检查布尔计算结果。坐标不同或计算错误时，
tactic 报错而不关闭目标。每次成功使用都会输出桥接尚未证明的警告。

正反示例位于 `E2pageTacticExamples.lean`。待完成桥接正确性证明后，使用者的
`by e2_mul` 语句不需要改变。

## 实际第二页：逐双次数明确列出加法基

导入 `KIPBase.StableHomotopy.AdamsE2Comparison`，使用命名空间
`KIPBase.StableHomotopy.SphereAdamsE2`。`Page 𝒮 s t` 是既有
`sphereAdamsConvergingSS.E.Page 2` 的分量，即 `multiplicativeSS` 所用的
同一个 ModuleCat 谱序列的第二页。

按照逐位置列基的要求，已删除 `comparison`、`comparison_mul` 两个同构公理，
以及依赖它们的旧搬运接口。原商环 `SphereE2.E2`、CSV、Gröbner 算法与
`e2_mul` 均保留。文件名 `AdamsE2Comparison` 保留以便沿用导入路径，但其
数学接口现在是实际页的明确基元素及坐标公式，不再直接假定 D 与 E₂ 同构。

### 如何明确指定每个基元素

`KIPBase.E2pageBasis` 定义了以下数据接口（命名空间 `SphereE2.CSV`）：

- `rowsAt s t`：该位置所有原始 CSV 基行，保持原顺序。
- `BasisIndex s t`：这些行的有限索引类型；空位置允许零个基元素。
- `basisRow s t i`：包含原始 `index` 和 `monomial` 的具体行。
- `Expression s t`：带双次数的零、单位、生成元、加法和乘法表达式。
- `basisExpression s t i`：严格解码对应的 CSV 单项式得到的表达式。
- `coordinates e fuel`：调用已有计算器，返回系数为 1 的基索引列表。
- `coordinateVector`：将列表转成 F₂ 上的有限支撑坐标；重复项相消。

`all_basis_rows_decode` 使用 `native_decide` 检查全部 23,822 行都能成功解码，
且表达式次数与 CSV 行一致。解码错误不会被解释成零。
`all_basis_indices_valid` 检查每个位置的原始 index 恰按 0,1,… 排列。
计算时还核实原始 CSV index 与有限索引一致；次数不匹配、未知索引、超范围、
燃料耗尽都显式报错。这些是数据和算法检查，不是线性无关或张成性的证明。

在实际第二页中，`pageGenerator i` 指定该编号的生成元，`pageOne` 使用该谱序列原有单位作为空单项式
的值。`evaluate` 用实际的加法和 `pageMul` 递归解释表达式。
`basisValue 𝒮 s t i` 定义为该位置第 i 个 CSV 单项式的实际解释。
因此基元素的数学含义由原始编号、指数和实际乘法明确指定。

### 直接使用 multiplicativeSS 的页与乘法

`Page` 直接使用 `sphereAdamsConvergingSS.E.Page 2`，
`pagePair` 直接调用 `sphereAdamsMultiplication.ssPairing.pair 2`。
`pageMul` 仅将这个张量积配对写成方便解释 CSV 的 F₂ 双线性函数；
`pageMul_eq_pair` 的证明是 `rfl`。`pagePair` 中的 `eqToHom` 只处理
`↑(s+s') = ↑s+↑s'` 的次数算术，不是两个谱序列之间的同构。
`pageOne` 也直接使用 `sphereAdamsUnit.page 2`。

已撤去上一步新增的 `AdamsPageTransport.lean`，所有实际页结论都不再需要
`SphereAdamsPageTransport` 前提。没有先把元素搬到另一页、相乘后再搬回的
过程。CSV 坐标定理直接陈述在既有乘法上，`h6Sq` 直接写成原接口的
`pair 2 (1,64) (1,64)` 作用于 `h6 ⊗ h6`。

微分和 `SSPairing.leibniz` 现在与上述乘法属于同一个谱序列，可以直接引用
`(sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.leibniz 2`。
这不提供具体微分值，也不证明 h₆² 的存活性。

### 外部数学输入与可引用的定理

| 名称 | 内容 |
|---|---|
| `pageModule` | 沿用的实际页 F₂ 模结构 |
| `pageGenerator` | 指定既有第二页中的 CSV 生成元 |
| `BasisData 𝒮` | 既有第二页中的 CSV 单项式族线性无关且张成，要求 t ≤ 261 |
| `CoordinateData 𝒮` | 针对这个乘法和基，成功计算给出实际坐标，要求 t ≤ 261 |

`pageModule`、`pageGenerator` 是保留的两个外部公理。
`BasisData` 和 `CoordinateData` 改为显式的 Prop 类型类输入，没有默认实例。
调用者必须提供关于这个既有乘法的
基和坐标证据。原有名称 `basis_linearIndependent`、`basis_span`、
`coordinates_spec` 现在是读取这些输入的定理，便于原有证明继续调用。
基的数学正确性和实际乘法与计算的一致性没有被伪装成已完成的形式化证明。
`csvBasis` 则用 `Module.Basis.mk` 从线性无关与
张成性构造出来。它的每个向量就是 `basisValue`，不是额外选取的抽象基。

`csvBasis.repr` 是这组明确基自带的坐标线性同构。这里允许从基构造坐标同构，
与直接公理化计算商环到 E₂ 的比较同构有区别。

常用定理：

- `evaluate_eq_coordinates`：将成功的计算结果表示为实际基元素的线性组合。
- `evaluate_eq_of_coordinates`：两个表达式成功算出同一坐标列表，则实际页中相等。
- `evaluate_eq_zero`：成功算出空坐标列表，则实际页中为零。
- `basis_mul_eq_coordinates`：两个指定基元素的乘积等于计算输出的基线性组合。
- `basisValue_ne_zero`：任一指定的基元素非零。
- `exists_unique_coordinates`：每个实际页元素唯一地由有限支撑基坐标表示。

实际页的使用示意见 `AdamsE2ComparisonExamples.lean`：

```lean
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]
  [BasisData 𝒮] [CoordinateData 𝒮]

-- x0 : Expression 1 1，x1 : Expression 1 2 是指定编号的生成元表达式。
example : pageMul 𝒮 1 1 1 2 (evaluate 𝒮 x0) (evaluate 𝒮 x1) = 0 := by
  exact evaluate_eq_zero 𝒮 2 3 (by decide) (.mul x0 x1) 1000000 (by native_decide)
```

这里的 `native_decide` 只执行计算，实际页的数学等式通过 `coordinates_spec`
得到。原来的 `by e2_mul` 仍服务于商环等式，并仍依赖 `coordinateCheck_sound`
中的 `sorry`。新实际页计算定理没有新增 `sorry`。

`StableHomotopy/SphereAdamsElements.lean` 提供公共的 `SphereAdamsE2.h6`、
`h6Sq`、CSV 表达式和基坐标定理。`chanllege.lean` 的旧名称现在只是这些
公共元素的兼容别名；后续数据模块不需要导入含主定理占位的 `chanllege.lean`。
`h6Sq_eq_basisValue` 明确说明 h₆² 是 (2,128) 位置的第 0 个 CSV 基元素
（单项式 `69,2`），因此可以由基性质证明它在 E₂ 中非零。
`h6Sq_eq_pair` 用 `rfl` 确认该平方就是原接口的乘积。
旧的 `h6_eq_hi` 已移除：`AdamsE2Data.hi` 仍位于原始 AddCommGrpCat 页，
在不另建转换接口时不能把它与当前 ModuleCat 页中的元素直接写成等式。
`h6_sq_survives_to_eInfty` 的证明仍按要求保留 `sorry`：E₂ 中非零不代表已经
证明后续存活。`SurvivesToEInfty` 同步改为使用上述 ModuleCat 谱序列的
Z∞ 和 E∞，保留“同一代表元、E∞ 中非零”的含义。

信任边界：CSV 基和坐标依赖上表的显式外部输入，数据检查依赖
`native_decide` 的编译器信任。直接使用的乘法仍依赖原全页乘法公理及其既有
`transfer`/收敛数据占位定义，因此不能沿用旧版“不依赖 sorryAx”的审计结论。
本次没有新增转换公理、转换前提或 `sorry`；存活主定理仍保留
原有 `sorry`。直接使用既有接口不会自动补齐其内部的未完成构造。

### 球谱局部微分统一入口

后续球谱微分输入统一导入：

```lean
import KIPBase.StableHomotopy.SphereAdamsDifferentials
```

该模块仅定义陈述接口，不导入任何 `proofs.db` 结论，也不新增公理或 `sorry`。
所有生成元和基元素继续用 `SphereAdamsE2.pageGenerator`、`basisValue`、
`evaluate` 和公共命名元素表示；所有页和微分均属于
`sphereAdamsConvergingSS`。暂不使用旧 `AdamsE2Data.hi` 的定理。

命名空间 `SphereAdamsDifferentials` 提供：

- `Page 𝒮 r s t`：同一球谱谱序列的第 r 页，第二页按定义就是 `SphereAdamsE2.Page`。
- `Represents 𝒮 r hr x₂ x_r`：两个页上的元素由同一个 Z_r 循环代表。
  它不保证 x_r 非零，也不提供整个 E₂ 到 E_r 的映射。
- `DifferentialWitness`：包含起始页、微分次数、目标次数、源/目标页元素、
  它们与 E₂ 标签的代表关系，以及既有微分上的等式。
- `HasDifferential 𝒮 r x₂ y₂`：存在上述证据。
- `HasNonzeroDifferential`：进一步要求证据中的目标在 E_r 非零。
- `ExpressionDifferential`：先将带次数的 CSV 表达式解释到实际 E₂，再陈述微分。

例如以 `h6SqExpression : Expression 2 128` 作源标签，r = 12 时目标表达式
必须有次数 (14,139)。这个次数说明不是在断言 h₆² 有非零 d₁₂。
`SphereAdamsDifferentialsExamples.lean` 检查错误次数不能满足接口、零微分可由
零代表构造，以及公共名称与主命题原名称按定义一致。

未来从数据库生成结论时，必须同时保留数据库版本、行标识和数学来源，
并机械核对 r、(s,t)、基编号、表达式以及零/非零的语义。
基编号只在所属双次数内有效。不要将 E₂ 中非零替代 E_r 中非零；
也不要把未知微分或带未决项的数据库记录导入为精确等式。
当前已实现首批局部结果的解析与机械声明生成：详见
[SphereAdamsProofs.md](SphereAdamsProofs.md)。经范围确认，导入 6 条
`proofs.db` 正式球谱日志，以及单独标注的 1 条球谱 E₂/SS 数据表结果。
公共入口位于 `StableHomotopy/SphereAdamsProofs.lean`，7 条带注释的命名公理位于
`StableHomotopy/SphereAdamsProofs/Axiom.lean`；表达式与来源数据位于
`StableHomotopy/SphereAdamsProofsData.lean`。逐条原始记录和哈希位于
`StableHomotopy/SphereAdamsProofs.records.json`，论文标签识别位于
`StableHomotopy/SphereAdamsProofsLabels.lean`。
按用户澄清，已撤销此前需要调用方传入 `_Input` 的实现，改为直接接受这些
命名公理。导入后可以直接使用 `SphereAdamsProofs.d2_h6 𝒮` 等性质，
其等式约束原有 `sphereAdamsConvergingSS` 的微分。这里不证明数据库计算结果。
未决候选微分及 Cν 数据不在本批导入范围。
