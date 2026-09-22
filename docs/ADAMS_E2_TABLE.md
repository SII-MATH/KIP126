# 将 E₂ 维数和乘法表接入已有谱序列

先读 `KIP126/Examples/AdamsE2Table.lean`。这是一个真实的 Lean 小样例，
不是实际球谱 Adams 数据，也没有构造或假定一个虚假的球谱实例。

## 小样例输入

样例的 `table` 定义是数值输入入口：

| 次数 `(s,t)` | 维数 | 基的说明性名称 |
| --- | --- | --- |
| `(0,0)` | 1 | `1` |
| `(1,64)` | 1 | `x` |
| `(2,128)` | 1 | `y` |

所有输入与结果次数都在上述区域内的基乘积，其唯一坐标为 `1`。
这给出单位关系和 `x * x = y`。`(3,192)` 不在覆盖范围，所以没有
`x * y = 0` 这条关系。`dim` 函数在覆盖域外的返回值没有数学意义。

`Table.Model` 自动把各格点的基编号当作形式生成元，把覆盖范围内的
乘法等式当作关系，构造多项式环的商。它不是实际的 `E₂`。
样例证明 `x_mul_x`、`y_ne_zero` 和 `x_mul_y_ne_zero`；非零性通过模型到
`F₂[X]` 的实际代数同态验证，不依赖任何外部计算假设。

## 与当前 Lean 接口连接

`myAdams` 的参数直接使用现有的
`KIP126.Classical.Adams.ClassicalAdamsSpectralSequence`。
它展开为 Mathlib 的 `CategoryTheory.SpectralSequence`，系数为
`F2ModuleCat`，微分次数为 `(r,r-1)`，初始页为 2。

`PageAlgebra E` 的各次数空间直接取 `(E.page 2).X p`。
它把这些实际页空间的直和与一个交换 `F₂`-代数线性识别，并使次数相加
的乘法与该代数的乘法一致。没有重新定义页空间；也不要求提供球谱、
Adams resolution 或 Milnor cocycle 的构造。

外部结论是 `Nonempty (Presentation table algebra)`，经
`ExternalEvidence` 携带来源后交给 `myAdams`。其内容包括：

1. 模型代数到实际 `E₂` 总代数的代数同态；
2. 所有次数上的相容线性映射，在覆盖域内是双射；
3. 各覆盖格点的实际页基，且它们是表中模型生成元在同一同态下的像。

这不是由读入文件自动证明的事实。维数是程序输入的数字，外部结论中的
基及同构说明这些数字确实描述实际的 `E₂`。

`Input.h6` 从一维的 `(1,64)` 分量选出非零基元素；`Input.h6Square`
直接调用实际页上的乘法。样例的 `imported_h6_square` 将数值乘法表
转成实际页等式，`imported_h6_square_ne_zero` 得到其非零性。二者的
外部证据都是显式参数，样例没有伪造证据或新增 `axiom`。

## 接入大表时替换什么

先让生成程序输出一个同类型的 `Table`，替换样例中的 `table`：

- `region` 给出完整覆盖的格点；零维格点也应显式属于覆盖域。
- `dim` 给出各格点维数。
- `mulCoeff` 查询基乘积的坐标，只对覆盖域内输入及目标开放。
- `unitCoeff` 给出单位在零次基中的坐标。

当前直接使用 Lean 字面量和函数。以后可在这些字段后接数组或稀疏索引，
不改变 `Table.Model`、`Presentation` 或实际页上的类定义。
省略的记录只有在查询范围保证完整、且约定省略项为零时才能解读为零。
未覆盖与零维、未计算与零乘积必须区分。

然后提供真实谱序列的 `PageAlgebra` 和外部 `Presentation` 证据。
对 `h6_mem`、`h6_dim` 的证明只是检查固定输入中的格点和数字，可由
生成代码中的 `decide`、`rfl` 等完成；不要求重新计算真实 Ext。

本接口尚不限定某个任意 Adams-shaped 序列就是球谱的目标序列，也不包含
证明永久性所需的全部外部输入。因此本次没有添加对任意 `Input` 都声称
`h₆²` 永久存活的定理，也没有替换正在其他分支开发的主定理。

## 验证

```sh
bash scripts/shared-main-cache.sh run lake build KIP126.Examples.AdamsE2Table
```

样例末尾的 `#print axioms` 检查其关键证明是否只使用 Lean 的基础公理。
真实大表的加载性能及完整数据集验证不属于这个小样例的验收范围。
