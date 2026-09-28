# Interface 的 Challenge 1 输入

本目录保存第一阶段开发时暂时接受的第 0 阶段产出。唯一的项目输入是
`challenge1 : Nonempty KIP126.Challenge1`；它与
`Def/Challenge/Challenge1.lean`、`Def/Solution/Challenge1.lean` 中 theorem
直接使用同一个共享类型，不维护另一份长陈述。

## 1. 原先期望包含什么

让 Interface 在第 0 阶段尚未完成时使用冻结的稳定同伦基础和 Milnor
坐标，同时保证所有数据和性质来自同一个见证。Def 负责最终构造这个见证，
本目录不把它误记为已经完成。

## 2. 现在包含什么

| 文件 | 内容 |
| --- | --- |
| [根 Challenge1](../../Challenge1.lean) | 同文件定义 `FoundationInput`、`MilnorInput`，列出 `a01`–`a14` 清单；`foundation`、`milnor` 是旧通用记录的适配定义 |
| [Challenge1.lean](Challenge1.lean) | 唯一存在性 axiom，并以 `Classical.choice` 选出一个见证 |
| [StandardFoundation.lean](StandardFoundation.lean) | 从该见证投影旧公开名称 `standardFoundation` |
| [StandardMilnor.lean](StandardMilnor.lean) | 从同一个见证投影旧公开名称 `standardMilnorCooperations` |
| [StandardSphere](StandardSphere/README.md) | 同一基础生成的内部球谱、标准 `h₆` 与 `h₆²`；不依赖 C(M) |

基础选择、H𝔽₂ 的同伦群条件、Milnor 坐标和微分相容性的交付字段集中在根
`Challenge1.lean`。Def 中的 `StandardAdamsFoundation`、`MilnorCooperations`
保留为通用数学记录，由同一个见证的字段组装；这里不把它们拆成能够各自选择
不同对象的独立 axiom。清单另行标明尚未冻结的规划项和可从前项导出的结果。

## 3. 大概完成度

**跨阶段陈述和消费端已固定；实际构造仍未完成。** 当前只有一条项目 axiom。
Def 的 Challenge/Solution 已有完全相同的 `Nonempty Challenge1` theorem，正文仍为
`sorry`，因此数学完成度不能由编译成功推断。

## 4. 接下来还需要完成什么

- 在 `Def/Solution/Challenge1.lean` 构造一个真实的 `Challenge1` 见证。
- 确认 foundation 与 Milnor 坐标所需的精确 Mathlib／文献来源。
- 完成后把消费端 axiom 改为引用 Def 的 theorem，并确认下游不再依赖该项目 axiom。

## 5. 后续应该一步一步如何做

1. 分别构造稳定范畴、函子性余纤维和 H𝔽₂。
2. 构造同一个 H𝔽₂ 的 Milnor 坐标并证明第一微分相容性。
3. 将两部分装入一个 `Challenge1` 值，完成 Solution theorem。
4. 用该 theorem 替换本目录的开发期 axiom，再运行下游公理审计。

固定 CSV 基正确性不再属于本目录的基础输入。其认证由 Interface 生产，Main 从 `Challenge2.linBasis` 消费；旧 `LinBasisTable.lean` 已迁走。
