# 经典 Adams 谱序列

这里从稳定同伦背景与同一个 H𝔽₂ 单位构造 Adams 塔、塔层、页面、微分、代表关系、乘法和检测。内部谱序列使用 `adamsTowerInternalSpectralSequence`；旧 Mathlib 表示只作显式适配，不定义最终目标。

固定基础、Milnor 坐标、球谱及标准 h₆² 均由 [Def/StageInput](../StageInput.lean) 定义。它们的类型不依赖 Interface/Main、程序表或文献交付。标准类来自 cobar cocycle `[ξ₁^64 | ξ₁^64]`，双次数 `(2,128)`；`NonzeroSurvival` 要求共同永久代表和非零 E∞ 像。

`Convergence/BHS` 显式记录相应源对象的完成和强收敛条件，`SphereVanishing` 区分正 stem 消失线与实际球塔过滤分离性。这些性质的来源特化及模型运输由 Interface 生产，有限 CSV 不能代替无限范围证明。

已有通用证明继续复用。模型构造、比较和未完成性质的证明债务应与接口语义分开记录，见 [阶段规范](../../../docs/STAGE0_INTERFACES.md)。
