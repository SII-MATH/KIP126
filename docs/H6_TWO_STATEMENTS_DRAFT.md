# h₆² 主定理的两个版本：固定对象、无参数陈述

状态：本设计已落实到 Lean。两个无参数目标、具体 Lin 平方、标准 tower 对象和命名对应公理已经编译；计算 Solution 仍保留 `sorry`。PR #110 的原始数据、商代数、计算引擎及 tactic 已迁入；加法基、坐标和内部 Adams 页的引用接口见 [LIN_E2_INTERFACES.md](LIN_E2_INTERFACES.md)。基表认证和计算器正确性仍各有一个独立的待证定理。

本次决定：凡最终可以固定的对象都预先固定。计算版和标准版均不要求调用者传入 C、H、M、计算模型、表、比较映射或呈现包。底层通用构造可以保留参数，但最终声明不能通过外层 section variable、隐式参数或 typeclass 参数把它们重新带回来。

## 1. 在基础层固定一次

| 实现中的名称 | 固定的内容 |
|---|---|
| `standardFoundation` | 选定的稳定同伦环境及所需余纤维结构 |
| `standardFoundation.hf2` | 该环境中的指定 H𝔽₂ 对象及所需结构 |
| `standardMilnorCooperations` | 对这个 H𝔽₂ 的指定 Milnor 坐标 |
| `sphereAdams` | 在上述固定基础上，由球面 Adams tower 构造的标准谱序列 |
| `sphereH6Square` | 用指定 Milnor cocycle 定义的标准 E₂ 类 |
| `sphereAdamsData` | 同一球面 Adams tower 的 SSData 版本，供计算与内部推理使用 |
| `KIP126.LinE2.E2` | PR #110 的固定版本 Lin 数据所定义的计算代数 |
| `KIP126.LinE2.dataH6Sq` | 计算代数中指定的 h₆ 生成元的平方 |
| `linToSphereE2` | 覆盖范围内，从计算分量到 SSData 谱序列 E₂ 的选定比较同构 |
| `computedH6Square` | `linToSphereE2` 将 `dataH6Sq` 送入 SSData 谱序列得到的元素 |

标准对象的定义思路保持现有构造：

```lean
-- 接口示意：底层类型、实例在固定基础模块中提供。
noncomputable def sphereAdams :=
  mod2SphereAdams standardFoundation.hf2

noncomputable def sphereH6Square :=
  Sphere.h6Square standardFoundation.hf2 standardMilnorCooperations
```

`sphereAdams` 暂时保留现有 tower 的 Mathlib 表述，用作标准结论的目标；内部计算仍使用 `sphereAdamsData`，不借用 Mathlib 谱序列支持下游推理。两者描述同一个指定的 tower，差别是形式化接口。

“固定”不等于“已构造”。目前固定基础、Milnor 坐标、SSData 模型等通过命名公理提供，标准页面和标准类仍调用现有 tower 构造。选定的抽象基础不等于已经实现了具体谱范畴。

## 2. 固定计算模型与范围

`KIP126.LinE2.E2` 采用 PR #110 的固定数据版本 v126.3.cw49，保留原文件摘要。它是截断到内部次数 `t ≤ 261` 的商代数。

`dataH6Sq` 沿用该 PR 的具体定义：CSV 指定的 h₆ 生成元的平方，次数为 (2,128)。它不作为任意元素输入。

`linToSphereE2` 的接口提供：

- 当 `t ≤ 261` 时，计算分量与 `sphereAdamsData.Page 2 (s,t)` 的整数线性同构，沿用现有加法群；F₂ 结构可以经同构传递，不另作假设；
- 当结果次数仍在范围内时，乘法的兼容性。

CSV 的基单项式数据已完整保留。`basisTable_correct` 断言这些指定的单项式构成各分量的基，目前证明为 `sorry`；`dataBasis` 从这条待证定理取得对应的 `Module.Basis`，提供坐标、重构及维数接口。它不是已完成的基表正确性证明，也不属于 `linE2Presentation` 的内容。

计算元素由固定映射定义：

```lean
noncomputable def computedH6Square :
    sphereAdamsData.Page 2 (2, 128) :=
  linToSphereE2 2 128 (by decide) dataH6Sq
```

这里的 `by decide` 证明的是范围条件 `128 ≤ 261`。表的完整性、对应正确性和乘法兼容性须记录来源；计算器执行成功不自动证明它们。截断产生的范围外零不能传到真实 E₂。

## 3. 固定存活含义及对应关系

计算版本的 `NonzeroSurvival A p x` 使用 SSData 的共同代表元：

```text
存在同一个 z ∈ Z∞：
  z 经 Z∞ ↪ Z₀ → E₂ 的像是 x；
  z 经 Z∞ → Z∞/B∞ 的像非零。
```

这里内部阶段 0 对应 Adams 第 2 页。一般定义应根据 A 的起始页计算阶段；固定对象的起始页为 2。

标准版本继续使用当前 `IsPermanent`：指定元素具有各页相容、始终非零的后继。两种表述之间的对应另列证明义务，不因名称相似而默认等同。

在比较层固定下列接口；暂未完成的对应按本次要求先作为命名公理。以下都是类型示意：

```lean
-- 需要提供各页同构、微分相容，以及同调到下一页的相容。
axiom sphereAdams_towerComparison :
  TowerComparison sphereAdamsData sphereAdams

-- 取上述同一个比较在 E₂ 上的映射。
noncomputable def toStandardE2 (p : ℤ × ℤ) :=
  sphereAdams_towerComparison.page2 p

-- 计算中指定的类对应标准 Milnor 类。
axiom h6Square_comparison :
  toStandardE2 (2, 128) computedH6Square = sphereH6Square

-- 一般的存活表述转换，不断言任何指定元素已永久存活。
axiom survival_comparison :
  ∀ p (x : sphereAdamsData.Page 2 p),
    NonzeroSurvival sphereAdamsData p x ↔
      IsPermanent sphereAdams 2 (by decide) p (toStandardE2 p x)
```

这些关系须使用同一个 tower 比较。它们不得含有“h₆² 永久存活”、已排除所有微分等目标性假设。仅有 E₂ 同构不足以代替整个 tower 比较。

## 4. 两条最终 Solution 定理

以下是待实现接口下的完整目标形状。两个声明都没有自由的基础参数、外部输入参数或计算呈现参数。

```lean
-- 计算版本：真正需要攻克的证明。
theorem h6_sq_permanent_computational :
    NonzeroSurvival sphereAdamsData (2, 128) computedH6Square := by
  sorry

-- 标准版本：只出现固定的标准数学对象。
theorem h6_sq_permanent :
    IsPermanent sphereAdams 2 (by decide)
      (2, 128) sphereH6Square := by
  have hcomp := h6_sq_permanent_computational
  have htower :=
    (survival_comparison (2, 128) computedH6Square).mp hcomp
  simpa only [h6Square_comparison] using htower
```

标准陈述中的 `by decide` 只证明起始页条件 `2 ≤ 2`。它不证明永久存活。

这里保留明确的页码和双次数，方便读者看到目标是 E₂^(2,128) 上的类；没有为了缩短代码再把完整主定理藏进一个新的 Prop 名称。

以后实现底层构造、证明对应关系时，两条最终陈述应保持不变。

## 5. 命名公理与证明债务

按本次要求，固定对象和对应事实不作为最终定理参数。但它们仍属于定理的可审计依赖，不能因为参数消失而算作已证明。

分别记录：

1. 标准基础与指定 H𝔽₂ 的存在及所需结构；
2. 指定 Milnor 坐标及其正确性；
3. tower 的 SSData 装配；
4. 固定 Lin 数据对实际 E₂ 的描述及计算算法正确性；
5. 两种谱序列表述、指定元素和存活谓词的对应；
6. 计算主定理本身的 `sorry`。

其中已经构造或证明的部分直接复用，不重新公理化。PR #110 的 `multiply_mem`、`coordinateCheck_sound` 等现有未完成证明仍单列，不能伪装成新的已证结果。

标准 Solution 的证明正文没有 `sorry`，但其依赖审计仍应显示计算 Solution 的 `sorryAx` 和实际使用的临时公理。未来若 Lin 正确性仍作为未证明的外部事实保留，也必须保留相应信任记录，不能声称得到无外部依赖的证明。

本次选择让“固定标准对象符合固定数据”通过全局命名假设进入证明，而非最终定理参数。正式实现时须同步记录这一经用户指定的开发期信任边界，并保持公理来源与依赖审计。

## 6. 正式实现时的安排

- 本稿对应的两个 Challenge/Solution 已落实，且检查了完整签名无参数、配对签名一致和依赖审计。
- 通用带参数构造保留在底层；固定标准对象单独定义，避免污染通用实例搜索。
- 计算侧使用 KIP126 的 SSData 模型；规范库不直接导入历史 KIPBase。
- Mathlib 比较放在适配层，内部通用推理不反向导入它。内部固定对象也不能通过从适配层抽取字段来造成反向依赖。
- 公理按照组件归档于 Axiom.lean；基础存在性、Lin 数据正确性和结构性比较分开记录。
- Challenge/Solution 各自保留两条签名一致的声明；Challenge 始终使用 `sorry`。标准 Solution 调用计算 Solution，不调用 Challenge。
- 编译后检查完整声明类型，确认没有意外泛化的 C、H、M、I、typeclass 或 universe 参数；所有相关对象在基础层选定一次。
