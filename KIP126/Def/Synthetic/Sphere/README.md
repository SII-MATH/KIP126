# Synthetic / Sphere

`Data.lean` 定义同一 synthetic 范畴的球面 `S_0_0`、`Smn`、`BiHom`、悬移等价与 λ 作用。

新增 `Homotopy/`：

- `Data.lean`：由已有悬移与复合得到球面类乘积；实际 cofiber 商映射；第一 λ 商总边界及 h₆² 次数上的反悬移。
- `Predicates.lean`：实际商中为零、一次 λ 作用单射的条件。
- `Proofs.lean`：由指定 distinguished triangle 的正合性证明商中为零当且仅当经 λʳ 分解。

这里没有项目公理或自由选择的乘法/微分字段。构造仍以已给定的 synthetic 模型为参数；悬移的完整 coherence、与几何乘法/文献约定的比较和具体模型的提供是另外的工作。一次 λ 单射不自动等同于所有 λ 幂无挠。

消费端见 [实际 θ₅ 接口](../../Kervaire/Theta5/Synthetic/README.md)。
