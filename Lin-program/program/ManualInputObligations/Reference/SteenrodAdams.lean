import ManualInputObligations.Reference.CohomologySteenrod
import Mathlib.Data.Nat.Choose.Sum

/-!
# Steenrod 代数、分辨率、Ext 与 Adams 层（A、R、E）

这里将 Steenrod 词、A-模、自由分辨率、Ext 和 Adams 页分别建模。
规则字段记录的是需要证明的数学公理；数据库中的名称只有在通过这些字段
的解释后才获得数学意义。
-/

namespace ManualInputObligations.Reference

/-- Steenrod 平方的有限词；列表从左到右记录复合顺序。 -/
abbrev SteenrodWord := List Nat

/-- Steenrod 词的总上同调次数。 -/
def SteenrodWord.degree (w : SteenrodWord) : Nat := w.sum

/-- 可容许词的数学条件：相邻指数满足 i ≥ 2j。 -/
def Admissible : SteenrodWord → Prop
  | [] => True
  | [_] => True
  | i :: j :: rest => 2 * j ≤ i ∧ Admissible (j :: rest)

/-- Steenrod 代数的有限表示：元素是 Steenrod 词的 F₂ 线性组合。 -/
structure SteenrodAlgebra where
  /-- 代数元素的载体。 -/
  carrier : Type
  /-- 代数单位。 -/
  one : carrier
  /-- 代数乘法。 -/
  multiply : carrier → carrier → carrier
  /-- 由词生成的元素编码。 -/
  generator : SteenrodWord → carrier
  /-- 乘法结合律。 -/
  associative : Prop
  /-- 单位元左右作用律。 -/
  identityLaw : Prop
  /-- Adem 关系在该代数中的等式。 -/
  ademLaw : ∀ i j, IsAdemPair i j → Prop

/-- 分次 Steenrod A-模及其 Steenrod 作用。 -/
structure SteenrodModule (A : SteenrodAlgebra) where
  /-- 每个上同调次数的载体。 -/
  carrier : Int → Type
  /-- 每个次数层的交换加法群。 -/
  addGroup : ∀ n, AddCommGroup (carrier n)
  /-- 一个 Steenrod 词在每个次数上的作用。 -/
  action : ∀ (w : SteenrodWord) (n : Int),
    carrier n → carrier (n + (w.degree : Int))
  /-- 作用保持零、加法、单位和 Adem 关系。 -/
  actionLaws : Prop

/-- 每个次数层继承 Steenrod 模的加法群结构。 -/
instance (A : SteenrodAlgebra) (M : SteenrodModule A) (n : Int) :
    AddCommGroup (M.carrier n) := M.addGroup n

/-- A-模映射保持次数和 Steenrod 作用。 -/
structure AModuleMap (A : SteenrodAlgebra)
    (M N : SteenrodModule A) where
  /-- 每个次数层上的映射。 -/
  toFun : ∀ n, M.carrier n → N.carrier n
  /-- 映射保持零元。 -/
  mapZero : ∀ n, toFun n 0 = 0
  /-- 映射保持每个次数层上的加法。 -/
  mapAdd : ∀ n x y, toFun n (x + y) = toFun n x + toFun n y
  /-- 映射与所有 Steenrod 作用交换。 -/
  commutesWithAction : ∀ (w : SteenrodWord) (n : Int) x,
    toFun (n + (w.degree : Int)) (M.action w n x) =
      N.action w n (toFun n x)

/-- A-模映射可以作为逐次数函数使用。 -/
instance {A : SteenrodAlgebra} {M N : SteenrodModule A} :
    CoeFun (AModuleMap A M N) (fun _ => ∀ n, M.carrier n → N.carrier n) :=
  ⟨AModuleMap.toFun⟩

/-- 自由 A-模的一个分次生成元。 -/
structure FreeGenerator where
  /-- 生成元的名称。 -/
  name : String
  /-- 生成元的内部次数。 -/
  degree : Int

/-- 由有限分次生成元给出的自由 A-模表示。 -/
structure FreeAModule (A : SteenrodAlgebra) extends SteenrodModule A where
  /-- 自由生成元列表。 -/
  generators : List FreeGenerator
  /-- 生成元确实给出自由 A-模的语义证明；其具体基底可在后续展开。 -/
  freeProperty : Prop

/-- A-模自由分辨率的分辨率项和目标模。 -/
structure FreeResolution (A : SteenrodAlgebra) where
  /-- 被分辨的分次 A-模。 -/
  target : SteenrodModule A
  /-- 第 s 项的自由 A-模。 -/
  term : Nat → FreeAModule A
  /-- 第 s+1 项到第 s 项的分辨率微分。 -/
  differential : ∀ s, AModuleMap A
    (term (s + 1)).toSteenrodModule (term s).toSteenrodModule
  /-- 第零项到目标模的增广。 -/
  augmentation : AModuleMap A (term 0).toSteenrodModule target
  /-- 连续两个微分逐次数复合为零。 -/
  differentialSq : ∀ s n x,
    differential s n (differential (s + 1) n x) = 0
  /-- 增广复合第一个微分逐次数为零。 -/
  augmentationZero : ∀ n x, augmentation n (differential 0 n x) = 0
  /-- 分辨率在每一项精确。 -/
  exact : Prop
  /-- 这是最小分辨率时的最小性条件。 -/
  minimal : Prop

/-- Hom_A(P_s,N) 的余链复形。 -/
structure HomComplex (A : SteenrodAlgebra)
    (P : FreeResolution A) (N : SteenrodModule A) where
  /-- 第 s 层 Hom 的 F₂ 载体。 -/
  object : Nat → F2Space
  /-- Hom 微分。 -/
  differential : ∀ s, F2LinearMap (object s) (object (s + 1))
  /-- 微分由与分辨率微分复合诱导。 -/
  inducedByResolution : Prop
  /-- Hom 微分平方为零。 -/
  differentialSq : ∀ s (x : (object s).carrier),
    differential (s + 1) (differential s x) = 0

/-- Hom 复形的循环元素。 -/
def HomCocycle {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N) (s : Nat)
    (x : (H.object s).carrier) : Prop :=
  H.differential s x = 0

/-- Hom 复形中第 s 次的边界元素。 -/
def homCast {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N)
    {k s : Nat} (h : k + 1 = s) (x : (H.object (k + 1)).carrier) :
    (H.object s).carrier := h ▸ x

/-- Hom 次数搬运保持加法。 -/
theorem homCast_add {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N)
    {k s : Nat} (h : k + 1 = s) (x y : (H.object (k + 1)).carrier) :
    homCast H h (x + y) = homCast H h x + homCast H h y := by
  cases h
  rfl

/-- Hom 复形中第 s 次的边界元素；零次没有前一项，只有零元素。 -/
def HomBoundary {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N) (s : Nat)
    (x : (H.object s).carrier) : Prop :=
  x = 0 ∨ ∃ k, ∃ h : k + 1 = s, ∃ y,
    homCast H h (H.differential k y) = x

/-- Hom 复形中两个循环代表相差一个边界。 -/
def HomEquivalent {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N) (s : Nat)
    (x y : {z : (H.object s).carrier // HomCocycle H s z}) : Prop :=
  x.1 = y.1 ∨ ∃ k, ∃ h : k + 1 = s, ∃ z,
    homCast H h (H.differential k z) = x.1 + y.1

/-- Hom 循环模边界的商类型，即 Ext 的底层商结构。 -/
def homSetoid {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N) (s : Nat) :
    Setoid {z : (H.object s).carrier // HomCocycle H s z} where
  r := HomEquivalent H s
  iseqv := by
    constructor
    · intro x
      exact Or.inl rfl
    · intro x y h
      rcases h with hxy | ⟨k, hk, z, hz⟩
      · exact Or.inl hxy.symm
      · exact Or.inr ⟨k, hk, z, by simpa [add_comm] using hz⟩
    · intro x y z hxy hyz
      rcases hxy with hxy | ⟨k, hk, u, hu⟩
      · rcases hyz with hyz | ⟨l, hl, v, hv⟩
        · exact Or.inl (hxy.trans hyz)
        · exact Or.inr ⟨l, hl, v, by simpa [hxy] using hv⟩
      · rcases hyz with hyz | ⟨l, hl, v, hv⟩
        · exact Or.inr ⟨k, hk, u, by simpa [hyz] using hu⟩
        · have hkl : k = l := by omega
          subst l
          refine Or.inr ⟨k, hk, u + v, ?_⟩
          rw [(H.differential k).map_add', homCast_add H hk, hu, hv]
          calc
            (x.1 + y.1) + (y.1 + z.1) =
                x.1 + (y.1 + y.1) + z.1 := by abel
            _ = x.1 + 0 + z.1 := by
              rw [f2Space_add_self (H.object s) y.1]
            _ = x.1 + z.1 := by simp

/-- Ext 的第 s 次商类。 -/
abbrev ExtQuotient {A : SteenrodAlgebra} {P : FreeResolution A}
    {N : SteenrodModule A} (H : HomComplex A P N) (s : Nat) :=
  Quotient (homSetoid H s)

/-- Ext 类是 Hom 循环代表及其内部/过滤次数。 -/
structure ExtClass (A : SteenrodAlgebra)
    (P : FreeResolution A) (N : SteenrodModule A) where
  /-- Hom 复形。 -/
  hom : HomComplex A P N
  /-- 分辨率过滤次数 s。 -/
  filtration : Nat
  /-- 内部次数 t。 -/
  internal : Int
  /-- 循环代表的编码。 -/
  representative : (hom.object filtration).carrier
  /-- 代表是 Hom 循环。 -/
  cocycle : HomCocycle hom filtration representative
  /-- 代表所对应的 Ext 商类。 -/
  quotientClass : ExtQuotient hom filtration

/-- Ext 类对应的 Adams 双次数。 -/
def ExtClass.bidegree {A : SteenrodAlgebra}
    {P : FreeResolution A} {N : SteenrodModule A}
    (x : ExtClass A P N) : Bidegree :=
  { filtration := x.filtration, internal := x.internal }

/-- Adams 微分的双次数目标公式。 -/
def AdamsTarget (r : Nat) (d : Bidegree) : Bidegree where
  filtration := d.filtration + r
  internal := d.internal + (r : Int) - 1

/-- 一个 Adams 页的元素族、微分和页间同调语义。 -/
structure AdamsSpectralSequence where
  /-- 第 r 页双次数 d 的 F₂ 向量空间。 -/
  element : Nat → Bidegree → F2Space
  /-- 每个页/双次数的零元素。 -/
  zero : ∀ r d, (element r d).carrier
  /-- `zero` 字段确实是该分次空间的零向量，而不是任意载体元素。 -/
  zero_is_zero : ∀ r d, zero r d = 0
  /-- 第 r 页的微分。 -/
  differential : ∀ r d,
    F2LinearMap (element r d) (element r (AdamsTarget r d))
  /-- 微分平方为零。 -/
  differentialSq : ∀ r d x,
    differential r (AdamsTarget r d) (differential r d x) = 0
  /-- 下一页由当前页取微分同调得到。 -/
  nextPageIsHomology : Prop
  /-- E₂ 页由 Ext 识别。 -/
  e2IsExt : Prop

/-- 一个跨页的 Adams 类；同一数学类在各页有代表元。 -/
structure AdamsClass (S : AdamsSpectralSequence) where
  /-- 类的双次数。 -/
  degree : Bidegree
  /-- 各页上的代表元。 -/
  representative : ∀ r, (S.element r degree).carrier
  /-- 代表元由页间映射相容。 -/
  compatible : Prop

/-- 第 r 页的循环条件。 -/
def IsAdamsCycle (S : AdamsSpectralSequence) (r : Nat)
    (x : AdamsClass S) : Prop :=
  S.differential r x.degree (x.representative r) =
    S.zero r (AdamsTarget r x.degree)

/-- 指定 Adams 类被第 r 阶微分击中。 -/
def IsHit (S : AdamsSpectralSequence) (r : Nat)
    (x : AdamsClass S) : Prop :=
  ∃ d y, ∃ h : AdamsTarget r d = x.degree,
    h ▸ S.differential r d y = x.representative r

/-- Adams 类存活到第 r 页，即此前每一阶都没有入射微分击中它。 -/
def SurvivesTo (S : AdamsSpectralSequence) (r : Nat)
    (x : AdamsClass S) : Prop :=
  ∀ q, 2 ≤ q → q < r → ¬ IsHit S q x

/-- 永久循环是每一阶都存活且每一页都是循环的类。 -/
def IsPermanentCycle (S : AdamsSpectralSequence)
    (x : AdamsClass S) : Prop :=
  ∀ r, 2 ≤ r → SurvivesTo S r x ∧ IsAdamsCycle S r x

/-- 存活到较高页必然存活到较低页。 -/
theorem survivesTo_mono (S : AdamsSpectralSequence)
    (x : AdamsClass S) {q r : Nat} (hqr : q ≤ r)
    (h : SurvivesTo S r x) : SurvivesTo S q x := by
  intro k hk2 hkq
  exact h k hk2 (lt_of_lt_of_le hkq hqr)

/-- 永久循环在每一个有限页上都是循环。 -/
theorem permanent_is_cycle (S : AdamsSpectralSequence)
    (x : AdamsClass S) (h : IsPermanentCycle S x)
    {r : Nat} (hr : 2 ≤ r) : IsAdamsCycle S r x :=
  (h r hr).2

/-- Adams 页上的乘法记录及其与微分的 Leibniz 条件。 -/
structure AdamsMultiplication (S : AdamsSpectralSequence) where
  /-- 同页同次数的乘法。 -/
  multiply : ∀ r d e, (S.element r d).carrier → (S.element r e).carrier →
    (S.element r
      { filtration := d.filtration + e.filtration
        internal := d.internal + e.internal }).carrier
  /-- 乘法结合和单位律。 -/
  laws : Prop
  /-- 微分满足广义 Leibniz 规则的条件。 -/
  generalizedLeibniz : Prop

/-- E₂ 页的 Ext 识别记录。 -/
structure E2ExtIdentification (S : AdamsSpectralSequence) where
  /-- 参与识别的 Steenrod 代数、分辨率和目标模。 -/
  algebra : SteenrodAlgebra
  resolution : FreeResolution algebra
  target : SteenrodModule algebra
  /-- 用于构造 Ext 的 Hom 复形。 -/
  hom : HomComplex algebra resolution target
  /-- 每个双次数上的 Ext 商类到 E₂ 页元素的映射。 -/
  toPage : ∀ d, ExtQuotient hom d.filtration → (S.element 2 d).carrier
  /-- 每个双次数上的 E₂ 元素到 Ext 商类的逆映射。 -/
  fromPage : ∀ d, (S.element 2 d).carrier → ExtQuotient hom d.filtration
  /-- 两个映射互为逆映射。 -/
  leftInverse : ∀ d x, fromPage d (toPage d x) = x
  rightInverse : ∀ d y, toPage d (fromPage d y) = y
  /-- 识别保持过滤次数和内部次数。 -/
  preservesBidegree : Prop

/-- Adams 结果的有限检查证书。 -/
structure AdamsCertificate (S : AdamsSpectralSequence) where
  /-- 被声明的页级事实。 -/
  claims : List String
  /-- 每条事实的次数和规则检查。 -/
  gradingChecked : Prop
  /-- 微分平方、存活和击中条件已经证明。 -/
  semanticChecked : Prop

end ManualInputObligations.Reference
