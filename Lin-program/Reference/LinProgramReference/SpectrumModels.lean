import LinProgramReference.TopologyConstructions

/-!
# 序列谱和谱映射的实际模型（W08–W10、W24）

`StableSpectrum` 仍是旧程序接口。本文件提供一个不依赖字符串的数学模型：
序列谱由每一级点空间和悬挂结构映射组成，谱映射由逐级基点连续映射以及
与结构映射交换的方程组成。这样球谱至少可以作为两点离散空间的悬挂谱模型
构造出来；稳定化、谱同伦商和 Hopf 映射 ν 在 `ConcreteHopf.lean` 与
`StableNuModels.lean` 中继续以真实类型定义。
-/

namespace LinProgramReference

/-- 点空间的恒等基点映射。 -/
def pointedIdentity (X : PointedSpace) : PointedMap X X where
  toFun := id
  mapPoint := rfl
  continuous := continuous_id

/-- 约化悬挂对基点映射的函子性。 -/
noncomputable def reducedSuspensionMap {X Y : PointedSpace}
    (f : PointedMap X Y) : PointedMap (reducedSuspension X) (reducedSuspension Y) := by
  let cylinderMap : (X.carrier × UnitTime) → (Y.carrier × UnitTime) :=
    fun p => (f p.1, p.2)
  have hcontinuous : Continuous cylinderMap := by
    exact (f.continuous.comp continuous_fst).prodMk continuous_snd
  let mapLabel : Sum (Fin 3) (X.carrier × UnitTime) →
      Sum (Fin 3) (Y.carrier × UnitTime) := fun q =>
    match q with
    | Sum.inl n => Sum.inl n
    | Sum.inr p => suspensionLabel Y (cylinderMap p)
  have hlabel (p : X.carrier × UnitTime) :
      mapLabel (suspensionLabel X p) =
        suspensionLabel Y (cylinderMap p) := by
    classical
    by_cases h0 : (p.2 : ℝ) = 0
    · have hs : suspensionLabel X p = Sum.inl 0 := by
        simp [suspensionLabel, h0]
      rw [hs]
      simp [mapLabel, suspensionLabel, cylinderMap, h0]
    by_cases h1 : (p.2 : ℝ) = 1
    · have hs : suspensionLabel X p = Sum.inl 0 := by
        simp [suspensionLabel, h1]
      rw [hs]
      simp [mapLabel, suspensionLabel, cylinderMap, h1]
    by_cases hp : p.1 = X.point
    · have hs : suspensionLabel X p = Sum.inl 0 := by
        simp [suspensionLabel, h0, h1, hp]
      rw [hs]
      simp [mapLabel, suspensionLabel, cylinderMap, h0, h1, hp, f.mapPoint]
    · have hs : suspensionLabel X p = Sum.inr p := by
        simp [suspensionLabel, h0, h1, hp]
      rw [hs]
  have hrespects : ∀ a b, (suspensionSetoid X).r a b →
      (suspensionSetoid Y).r (cylinderMap a) (cylinderMap b) := by
    intro a b hab
    unfold suspensionSetoid at hab ⊢
    change suspensionLabel X a = suspensionLabel X b at hab
    classical
    exact (hlabel a).symm.trans ((congrArg mapLabel hab).trans (hlabel b))
  let lifted : Quotient (suspensionSetoid X) → Quotient (suspensionSetoid Y) :=
    Quotient.lift
      (fun p => Quotient.mk (suspensionSetoid Y) (cylinderMap p))
      (fun a b hab => Quotient.sound (hrespects a b hab))
  have hlifted_continuous : Continuous lifted := by
    apply Continuous.quotient_lift
    · exact (quotientPointedMap
        { carrier := Y.carrier × UnitTime
          topology := inferInstance
          point := (Y.point, ⟨0, by constructor <;> norm_num⟩) }
        (suspensionSetoid Y)).continuous.comp hcontinuous
  refine {
    toFun := lifted
    mapPoint := ?_
    continuous := hlifted_continuous }
  change Quotient.mk (suspensionSetoid Y)
      (f X.point, ⟨0, by constructor <;> norm_num⟩) =
    Quotient.mk (suspensionSetoid Y)
      (Y.point, ⟨0, by constructor <;> norm_num⟩)
  rw [f.mapPoint]

/-! The suspension functor sends a constant basepoint map to the constant
basepoint map.  This small lemma is needed when constructing the zero stable
stem; it follows directly from the quotient presentation, not from an
abstract functoriality assumption. -/

theorem reducedSuspensionMap_basepointMap (X Y : PointedSpace) :
    reducedSuspensionMap (basepointMap X Y) =
      basepointMap (reducedSuspension X) (reducedSuspension Y) := by
  apply pointedMap_ext
  intro q
  refine Quotient.inductionOn q ?_
  intro p
  apply Quotient.sound
  change suspensionLabel Y (Y.point, p.2) =
    suspensionLabel Y (Y.point, ⟨0, by constructor <;> norm_num⟩)
  by_cases h0 : (p.2 : ℝ) = 0
  · simp [suspensionLabel, h0]
  · by_cases h1 : (p.2 : ℝ) = 1
    · simp [suspensionLabel, h1]
    · simp [suspensionLabel, h0, h1]

/-- 对一个点空间反复取约化悬挂。 -/
noncomputable def iteratedSuspension (X : PointedSpace) : Nat → PointedSpace
  | 0 => X
  | n + 1 => reducedSuspension (iteratedSuspension X n)

/-- 序列谱：每一级点空间带有指向下一级的悬挂结构映射。 -/
structure SequentialSpectrum where
  /-- 第 n 级点空间。 -/
  level : Nat → PointedSpace
  /-- 悬挂结构映射。 -/
  structureMap : ∀ n, PointedMap (reducedSuspension (level n)) (level (n + 1))

/-- 由一个点空间生成的悬挂序列谱。 -/
noncomputable def suspensionSpectrum (X : PointedSpace) : SequentialSpectrum where
  level := iteratedSuspension X
  structureMap := fun n => pointedIdentity (iteratedSuspension X (n + 1))

/-- 序列谱映射由逐级基点映射以及与结构映射交换的方程组成。 -/
structure SequentialSpectrumMap (E F : SequentialSpectrum) where
  /-- 每一级的基点连续映射。 -/
  levelMap : ∀ n, PointedMap (E.level n) (F.level n)
  /-- 与两边悬挂结构映射交换。 -/
  commutes : ∀ n,
    PointedMap.comp (F.structureMap n)
      (reducedSuspensionMap (levelMap n)) =
    PointedMap.comp (levelMap (n + 1)) (E.structureMap n)

/-- 两点离散空间，作为 0 维球空间的标准模型。 -/
def zeroSphere : PointedSpace where
  carrier := Bool
  topology := ⊤
  point := false

/-- 由两点离散空间生成的球悬挂谱模型。 -/
noncomputable def sphereSequentialSpectrum : SequentialSpectrum :=
  suspensionSpectrum zeroSphere

end LinProgramReference
