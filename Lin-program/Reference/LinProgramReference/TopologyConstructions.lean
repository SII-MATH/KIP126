import LinProgramReference.AlgebraTopology
import Mathlib.Topology.Constructions

/-!
# 商空间、悬挂和映射锥的实际构造（U17–U22、W11–W14）

本文件不再用一个空的命题字段代表“这是某个商空间”。悬挂和映射锥都由
等价闭包、商类型以及商拓扑直接构造。这样后续的余纤维序列至少有明确的
拓扑载体和连续的商映射；更高层的同伦等价仍需在此基础上继续定义。
-/

namespace LinProgramReference

open scoped Classical

/-! ## 商拓扑的通用构造 -/

/-- 给定点空间和一个等价关系，按商映射的终拓扑构造点空间。 -/
def quotientPointedSpace (X : PointedSpace) (s : Setoid X.carrier) : PointedSpace where
  carrier := Quotient s
  topology := TopologicalSpace.coinduced (Quotient.mk s) X.topology
  point := Quotient.mk s X.point

/-- 商映射连续；这里使用的正是商拓扑的定义。 -/
def quotientPointedMap (X : PointedSpace) (s : Setoid X.carrier) :
    PointedMap X (quotientPointedSpace X s) where
  toFun := Quotient.mk s
  mapPoint := rfl
  continuous := by
    apply (continuous_iff_coinduced_le).2
    exact le_rfl

/-- 从原空间到商空间的商映射满足商关系。 -/
theorem quotientPointedMap_respects (X : PointedSpace) (s : Setoid X.carrier)
    (x y : X.carrier) (h : x ≈ y) :
    quotientPointedMap X s x = quotientPointedMap X s y := by
  exact Quotient.sound h

/-! ## 约化悬挂 -/

/-- 约化悬挂中被压缩为同一个基点的部分：圆柱两端以及基点竖线。

    三者必须使用同一个标签；若把它们标成三个不同的标签，所得商空间
    就不是约化悬挂，而会留下额外的孤立压缩点。 -/
noncomputable def suspensionLabel (X : PointedSpace) (p : X.carrier × UnitTime) :
    Sum (Fin 3) (X.carrier × UnitTime) := by
  classical
  by_cases h0 : (p.2 : ℝ) = 0
  · exact Sum.inl 0
  by_cases h1 : (p.2 : ℝ) = 1
  · exact Sum.inl 0
  by_cases hp : p.1 = X.point
  · exact Sum.inl 0
  · exact Sum.inr p

/-- 两个圆柱点属于同一个压缩类，当且仅当其标签相同。 -/
def suspensionSetoid (X : PointedSpace) : Setoid (X.carrier × UnitTime) where
  r := fun p q => suspensionLabel X p = suspensionLabel X q
  iseqv := by
    constructor
    · intro p
      rfl
    · intro p q h
      exact h.symm
    · intro p q r hpq hqr
      exact hpq.trans hqr

/-- 约化悬挂的点空间：圆柱两端和基点竖线按悬挂关系压缩。 -/
def reducedSuspension (X : PointedSpace) : PointedSpace :=
  quotientPointedSpace
    { carrier := X.carrier × UnitTime
      topology := inferInstance
      point := (X.point, ⟨0, by constructor <;> norm_num⟩) }
    (suspensionSetoid X)

/-- 圆柱到约化悬挂的规范商映射。 -/
def reducedSuspensionQuotient (X : PointedSpace) :
    PointedMap
      { carrier := X.carrier × UnitTime
        topology := inferInstance
        point := (X.point, ⟨0, by constructor <;> norm_num⟩) }
      (reducedSuspension X) := by
  exact quotientPointedMap
    { carrier := X.carrier × UnitTime
      topology := inferInstance
      point := (X.point, ⟨0, by constructor <;> norm_num⟩) }
    (suspensionSetoid X)

/-- 约化悬挂中所有被压缩点的等价性由标签构造直接保证。 -/
theorem reducedSuspension_identifies (X : PointedSpace)
    (p q : X.carrier × UnitTime)
    (h : suspensionLabel X p = suspensionLabel X q) :
    reducedSuspensionQuotient X p = reducedSuspensionQuotient X q := by
  exact Quotient.sound h

/-! ## 映射锥 -/

/-- 映射锥的生成关系：把圆柱底端的点粘到 Y 中的 f(x)。 -/
def mappingConeGenerator {X Y : PointedSpace} (f : PointedMap X Y) :
    Sum Y.carrier (X.carrier × UnitTime) →
      Sum Y.carrier (X.carrier × UnitTime) → Prop
  | Sum.inl y, Sum.inr (x, t) =>
      ((t : ℝ) = 0 ∧ y = f x) ∨ y = Y.point
  | Sum.inr (x, t), Sum.inl y =>
      ((t : ℝ) = 0 ∧ y = f x) ∨ y = Y.point
  | Sum.inr (x, t), Sum.inr (x', t') =>
      ((t : ℝ) = 1 ∧ (t' : ℝ) = 1) ∨
        (x = X.point ∧ x' = X.point)
  | _, _ => False

/-- 映射锥使用生成关系的等价闭包；闭包自动提供反身、对称和传递性。 -/
def mappingConeSetoid {X Y : PointedSpace} (f : PointedMap X Y) :
    Setoid (Sum Y.carrier (X.carrier × UnitTime)) where
  r := Relation.EqvGen (mappingConeGenerator f)
  iseqv := by
    constructor
    · exact Relation.EqvGen.refl
    · intro a b h
      exact Relation.EqvGen.symm a b h
    · intro a b c hab hbc
      exact Relation.EqvGen.trans a b c hab hbc

/-- 映射锥的点空间，是不交并 Y ⊔ (X×I) 按底端粘合关系的商。 -/
def mappingCone (f : PointedMap X Y) : PointedSpace :=
  quotientPointedSpace
    { carrier := Sum Y.carrier (X.carrier × UnitTime)
      topology := inferInstance
      point := Sum.inl Y.point }
    (mappingConeSetoid f)

/-- 映射锥的规范商映射。 -/
def mappingConeQuotient (f : PointedMap X Y) :
    PointedMap
      { carrier := Sum Y.carrier (X.carrier × UnitTime)
        topology := inferInstance
        point := Sum.inl Y.point }
      (mappingCone f) := by
  exact quotientPointedMap
    { carrier := Sum Y.carrier (X.carrier × UnitTime)
      topology := inferInstance
      point := Sum.inl Y.point }
    (mappingConeSetoid f)

/-- 映射锥中粘合关系的任意生成边在商空间中相等。 -/
theorem mappingCone_identifies {X Y : PointedSpace} (f : PointedMap X Y)
    (a b : Sum Y.carrier (X.carrier × UnitTime))
    (h : mappingConeGenerator f a b) :
    mappingConeQuotient f a = mappingConeQuotient f b := by
  exact Quotient.sound (Relation.EqvGen.rel a b h)

/-- 从 Y 到映射锥的规范包含映射。 -/
def mappingConeInclusion {X Y : PointedSpace} (f : PointedMap X Y) :
    PointedMap Y (mappingCone f) where
  toFun := fun y => mappingConeQuotient f (Sum.inl y)
  mapPoint := rfl
  continuous := by
    exact (mappingConeQuotient f).continuous.comp continuous_inl

/-- 映射锥构造给出一个具有明确商模型的余纤维序列。 -/
def mappingConeCofiberSequence {X Y : PointedSpace} (f : PointedMap X Y) :
    CofiberSequence where
  source := X
  middle := Y
  target := mappingCone f
  first := f
  second := mappingConeInclusion f
  connecting := True
  consecutiveCompositeNull := by
    refine ⟨{
      toFun := fun p => mappingConeQuotient f (Sum.inr (p.1, p.2))
      continuous := (mappingConeQuotient f).continuous.comp
        (continuous_inr.comp (continuous_fst.prodMk continuous_snd))
      leftEndpoint := ?_
      rightEndpoint := ?_
      mapPoint := ?_ }⟩
    · intro x
      symm
      apply mappingCone_identifies f
        (Sum.inl (f x)) (Sum.inr (x, ⟨0, by constructor <;> norm_num⟩))
      left
      exact ⟨rfl, rfl⟩
    · intro x
      apply mappingCone_identifies f
        (Sum.inr (x, ⟨1, by constructor <;> norm_num⟩))
        (Sum.inl Y.point)
      right
      exact rfl
    · intro t
      apply mappingCone_identifies f
        (Sum.inr (X.point, t)) (Sum.inl Y.point)
      right
      exact rfl
  cofiberModel := True

end LinProgramReference
