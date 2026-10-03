# Synthetic / AdamsSequence

[Data.lean](Data.lean) 直接使用内部 `SSData/SpectralSequence` 和 ℤ-module，固定首显示页 E₂、微分次数 `(r,r−1,0)`。`SyntheticAdamsFamily` 是同一个 synthetic category 上的显式 functor 数据；sphere、νX、X/λⁿ 和 νX/λⁿ 都由该家族在实际对象上取值，商投影和 λ 映射来自实际 cofiber inclusion 与 deformation map。`nuSphereIso` 通过同一个 ν datum 的单位同构和同一个 family 识别 ν-sphere 与 synthetic unit。没有选择全局 synthetic 模型或声明该家族已经构造。

`SyntheticLambdaAction` 要求 ambient map 保持实际 cycle/boundary，所有有限页和 E∞ 映射由同一 ambient map 诱导。把它识别为 `deformationMap` 的重分次仍是待证兼容义务。`SyntheticAdamsConvergence` 使用指定对象的实际 `BiHom` 和 Adams 滤过商，不自动宣称每个 synthetic 对象收敛。

[Proofs.lean](Proofs.lean) 证明次数公式、weight 保持以及从 action 字段导出的微分交换。原 Mathlib synthetic sequence、独立选择的标准类和额外的 weight-preserving 字段已经移除；没有新增 Mathlib 比较义务。

下一步是构造此家族、证明它与选定 ν、λ 商的重分次和乘法/检测兼容，并为适用对象提供 convergence、rigidity、λ-Bockstein 等带来源的输入。类型可用不意味着这些数学证明已经完成。
