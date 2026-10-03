# 同一模型上的比较语言

这里定义 classical Adams、synthetic Adams 与 λ 幂商之间的重分次、页面、微分、乘法、检测和截断比较。双方必须来自同一对象、ν、λ 和塔映射；任意线性等价不能代替代表关系或检测比较。

[StageInterfaces.lean](StageInterfaces.lean) 保存通用页面、cobar、E∞ 与 extension 比较语言。其 [Proofs](StageInterfaces/Proofs/) 保留从 Interface 迁移的既有通用证明；这些模块不依赖 Interface、Main 或固定 Lin 数据。固定源的适用性和比较证明由相应阶段承担。

有限页、共同永久代表、完整 λ 幂商塔与极限应分别陈述，不把逐页存在性当作共同无限见证。尚未证明的比较保留其完整条件和对象绑定。
