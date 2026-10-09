import LinProgramReference.AlgebraTopology

/-!
# 稳定映射、余纤维三角与 Toda 括号（W14–W18、G01–G05）

这些定义只描述 Kervaire 局部计算需要的稳定同伦接口。它们把复合、零复合
和高阶复合作为明确的数学数据；尚未把任意字符串或程序规则当作稳定同伦事实。
-/

namespace LinProgramReference

/-- 稳定映射的复合，次数为两映射次数之和。 -/
def StableMap.comp {X Y Z : StableSpectrum}
    (g : StableMap Y Z) (f : StableMap X Y) : StableMap X Z where
  toFun := fun x => g.toFun (f.toFun x)
  degree := f.degree + g.degree
  respectsStructure := f.respectsStructure ∧ g.respectsStructure

/-- 稳定映射的同伦类代表及其商语义接口。 -/
structure StableMapClass (X Y : StableSpectrum) where
  /-- 一个稳定映射代表。 -/
  representative : StableMap X Y
  /-- 代表按稳定同伦关系取商的证明接口。 -/
  quotientSemantics : Prop

/-- 两个稳定映射类的复合。 -/
structure StableMapClassComposition {X Y Z : StableSpectrum}
    (g : StableMapClass Y Z) (f : StableMapClass X Y) where
  /-- 复合后的代表。 -/
  representative : StableMap X Z
  /-- 代表确实等于逐点复合。 -/
  representative_eq : representative =
    StableMap.comp g.representative f.representative
  /-- 复合在同伦类商上良定义。 -/
  wellDefined : Prop

/-- 余纤维三角的稳定同伦数据。 -/
structure StableCofiberTriangle where
  /-- 三角中的三个稳定对象。 -/
  source : StableSpectrum
  middle : StableSpectrum
  target : StableSpectrum
  /-- 前两个稳定映射。 -/
  first : StableMap source middle
  second : StableMap middle target
  /-- 连接到源的稳定悬挂。 -/
  connecting : StableMap target (stableSuspension source 1)
  /-- 连续两个复合为零的稳定同伦条件。 -/
  firstSecondNull : Prop
  secondConnectingNull : Prop
  connectingFirstNull : Prop
  /-- 三角确实来自余纤维构造的语义证明。 -/
  cofiberAxiom : Prop

/-- Toda 括号的输入：连续复合为零的三条稳定映射。 -/
structure TodaBracketData where
  /-- 三条连续稳定映射。 -/
  X : StableSpectrum
  Y : StableSpectrum
  Z : StableSpectrum
  W : StableSpectrum
  f : StableMap X Y
  g : StableMap Y Z
  h : StableMap Z W
  /-- gf 在稳定同伦下为零。 -/
  gfNull : Prop
  /-- hg 在稳定同伦下为零。 -/
  hgNull : Prop
  /-- 括号的候选稳定映射集合。 -/
  bracket : Set (StableMap (stableSuspension X 1) W)
  /-- 候选集合满足 Toda 定义的 indeterminacy 条件。 -/
  indeterminacy : Prop

end LinProgramReference
