# λ-Bockstein 与 Adams 比较：已验证部分及剩余连接

本记录只依据 KIPBase 中的定义。最终谱序列同构尚未完成。
本轮新增证明位于 `Rigidity.lean` 和 `ExtensionSS.lean`，没有修改原定义，
没有增加公理、`sorry`、比较假设或滤过有界性条件。

**后续纠正：** 下文记录的 Lean 接口现状仍需区分，但把这些缺口直接
当成数学证明的停止理由不正确。正确主线是从自由 λ 模 E₂ 出发，
用自然性计算全部有限 λ 商的 Adams，再追踪 E∞ 和余纤维映射以计算
边缘 ESS。详细逐页归纳见 [有限 λ 商的证明](LambdaQuotientProof.md)。

## 本轮完成的证明

1. 从已有的有限 λ-商 E₂ 支撑结论，推出其 Adams 谱序列在
   `max 2 (n+1)` 页退化：`synAdams_mod_lambda_degenerates`。
2. 对第一次 λ-商，证明 E₂ 只支撑在内部次数等于权重的对角线上，
   并因此从 E₂ 退化：`synAdams_mod_lambda_one_e2_diagonal`、
   `synAdams_mod_lambda_one_degenerates`。
3. 构造该商对象所有后续有限页、极限页、收敛关联分次与其 E₂ 的同构：
   `synAdams_mod_lambda_one_pageIso`、
   `synAdams_mod_lambda_one_eInftyIso`、
   `synAdams_mod_lambda_one_associatedGradedIso`。
   消失性和退化性均已由已有商支撑结论推出，没有另列为假设。
4. 对无界 ESS 的实际页对象，证明第零页源项等于源关联分次，并通过收敛
   同构将其识别为源 Adams 极限页：
   `SyntheticExtensionCoreData.e0SourceIsoAssociatedGraded`、
   `SyntheticExtensionCoreData.e0SourceIso`。
   证明使用原来的无界 ESS、它与未截断复形的页同构，以及二项复形源列
   没有入射微分这一事实；没有使用 bounded ESS。
5. 将上述同构复合，得到 `lambdaBocksteinESSSourceE0Iso`：
   λ 边缘 ESS 的实际第零页源项，同构于 `νX/λ` 的 Adams E₂ 项。

第 5 项只比较源列与商对象的 E₂。它不是整个 ESS 与 `νX` 的 Adams
谱序列的同构，也没有把 ESS 第零页改名为 Adams 第二页。

## 为什么还不能完成微分比较

### 收敛对象没有被识别为真实同伦群

`Adams.lean` 的 `synAdamsConvergence` 返回某个分次阿贝尔群、某个滤过及
极限页同构。其类型没有把这些群识别为球到对象的态射群，也没有把该滤过
识别为同一文件中的 `synAdamsFiltration`。

`SyntheticExtensionCoreData` 同样允许抽象收敛对象。它的 `eMap_eq`
固定的是极限页映射。结合收敛相容性，可获得关联分次上的相容方块；
类型中没有说明 `convergenceMap.aMap` 等于实际同伦映射。

因此，`LambdaBoundary.lean` 中已经证明的 λ 边缘自然性与正合性，
作用于实际的表示同伦群；ESS 的滤过循环和微分则来自
`convergenceMap.aMap`。两者目前没有可用于 Lean 改写的连接。

### 关联分次映射不足以恢复高阶 ESS 微分

这个区别有具体数学内容。例如自由阿贝尔群的两个生成元分别放在滤过
零层和一层，二层为零。考虑两个保滤过映射：零映射，以及将零层生成元
送到一层生成元、将一层生成元送到零的映射。

两者诱导的关联分次映射都是零，但其二项滤过复形的第一微分不同：
前者为零，后者在相应两个分量之间是同构。因此，单凭 `eMap_eq` 和
关联分次上的同构，不能确定 ESS 的后续微分。

这个例子说明缺失连接的作用；它不声称论文中的 λ-Bockstein 比较是错的。

### Adams 页上的 λ 作用也缺少连接

`synAdamsSS_functorial` 的类型给每个映射指定一个谱序列态射，但现有接口
没有声明其保持复合、恒等映射，也没有提供与同伦群收敛映射相容的函子。
因此不能仅由它的名字，把合成相等的自然性方块直接送到 Adams 页上。

`synAdamsSS_zlambda_module` 现已改为真正的分次 λ 作用：λ 从权重 `w`
映到 `w-1`，并且类型中包含它与每页微分交换的等式。此前给每个固定
三次数单独指定 `Polynomial ℤ` 模结构的声明不能表达降权重，已经删除。

## 完成最终比较的主线（纠正）

先计算自由 λ 模除以 λⁿ 的 E₂，再同时归纳商的页对象与商映射。
在微分目标仍处于商支撑带内时，源的商映射为同构、目标的商映射为
单射，自然性便确定微分；越出支撑带的微分由消失性确定。
由此计算 E∞，并保留 λ、商限制和余纤维图中的映射，最后计算边缘 ESS。

上面的任意保滤过映射例子没有这些 λ 结构，只能说明不能丢掉结构，
不能作为拒绝这条路线的依据。此前要求先重建完整 Adams 构造的结论撤回。
仍然禁止通过新公理、证明占位或额外比较假设来代替这些证明。

## 验证

- 基线：`lake build KIPBase.Synthetic.Rigidity KIPBase.Synthetic.AdamsVanishing
  KIPBase.Synthetic.ExtensionSS` 通过，3186 jobs。
- 新增商退化和比较：`lake build KIPBase.Synthetic.Rigidity` 通过，3176 jobs。
- 新增实际 ESS 源项比较：`lake build KIPBase.Synthetic.ExtensionSS` 通过，3186 jobs。
- 全量 `lake build` 通过，3213 jobs；日志：
  `.lake/lambda-comparison-full-build.log`。
- 九个新增公开声明的 `#print axioms` 审计通过，无 `sorryAx`，只依赖
  Lean 基础公理和项目既有公理；日志：`.lake/lambda-comparison-axioms.log`。
