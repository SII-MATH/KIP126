import KIP126.Def.StageInput.StandardSphere.Background.Data
import KIP126.Def.StageInput.StandardSphere.Classes.Family

/-! Sphere literature statements, separately from the fixed Def pairing context. -/

namespace KIP126.Challenge2
open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams Core.SpectralSequence
universe u v w

section Moss

open StableHomotopy StableHomotopy.Cohomology Classical.Adams.Moss

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [MonoidalClosed C] [BraidedCategory C]
  (H : Mod2EilenbergMacLane (C := C)) (R : Mod2RingStructure H)
  [∀ A : C, (tensorRight A).CommShift ℤ]
  [∀ A : C, (tensorRight A).IsTriangulated] [MonoidalPreadditive C]
  [∀ A : C, (tensorLeft A).CommShift ℤ]

/-- Compatibility package retaining its original fields and constructor.
The source-bearing Moss conclusion is separated from this context in Challenge2. -/
structure MossInterface {ι : Type w} (objects : ι → C) where
  composition : CompositionPairing H R
  coherent : composition.Coherent H R
  convergence : ∀ X Y : ι, MappingAdamsConvergence H.unit (objects X) (objects Y)
  weak_convergence : ∀ X Y : ι, MappingAdamsTower H.unit (objects X) (objects Y)
  detection : ∀ X Y Z : ι,
    composition.DetectionCompatible H R (objects X) (objects Y) (objects Z)
      (convergence X Y) (convergence Y Z) (convergence X Z)
  indeterminacy : ∀ (r : ℤ) (hr : 3 ≤ r) (W X Y Z : ι) (i j k : ℤ × ℤ)
    (a : (mappingSequence H.unit (objects W) (objects X)).Page r i)
    (b : (mappingSequence H.unit (objects X) (objects Y)).Page r j)
    (c : (mappingSequence H.unit (objects Y) (objects Z)).Page r k)
    (x₀ x : (mappingSequence H.unit (objects W) (objects Z)).Page r
      (PageMassey.degree r i j k)),
    PageMassey.Relation H R composition r hr x₀ a b c →
      (PageMassey.Relation H R composition r hr x a b c ↔
        PageMassey.Indeterminacy H R composition r (j := j) a c (x - x₀))
  moss : Classical.Adams.Moss.Statement H R composition objects convergence


/-- Forget only the external Moss conclusion, retaining every actual choice. -/
def MossInterface.toContext {ι : Type w} {objects : ι → C}
    (input : MossInterface H R objects) : MossContext H R objects where
  composition := input.composition
  coherent := input.coherent
  convergence := input.convergence
  weak_convergence := input.weak_convergence
  detection := input.detection
  indeterminacy := input.indeterminacy

/-- Reassemble the old interface on exactly the supplied context. -/
def MossContext.withStatement {ι : Type w} {objects : ι → C}
    (context : MossContext H R objects)
    (proof : Classical.Adams.Moss.Statement H R context.composition objects
      context.convergence) : MossInterface H R objects where
  composition := context.composition
  coherent := context.coherent
  convergence := context.convergence
  weak_convergence := context.weak_convergence
  detection := context.detection
  indeterminacy := context.indeterminacy
  moss := proof

end Moss

/-- am8/am15 的固定球面交付；基础、HF₂、ring 与所有 tensor 选择
均来自 Def 的同一个固定实现，没有增加另一个可独立选择的模型。
这里的球面映射谱仍需通过实际 ihom(unit,unit) 同构与 sphereAdamsData 比较。
保留原兼容接口；总包分别存放 context 与文献结论。 -/
def StandardSphereMossInterface : Type 1 :=
  let c := KIP126.Def.StageInput.witness
  letI : Foundation.TensorInput c.foundationInput := c.tensorInput
  MossInterface c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

/-- Moss's conclusion on the selected composition and convergence data. -/
def StandardSphereMossStatement (context : StandardSphereMossContext) : Prop :=
  let c := KIP126.Def.StageInput.witness
  letI : Foundation.TensorInput c.foundationInput := c.tensorInput
  Classical.Adams.Moss.Statement c.foundationInput.hf2 c.cooperationInput.ring
    context.composition
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))
    context.convergence

/-- Compatibility assembly never chooses a second sphere context. -/
noncomputable def StandardSphereMossContext.withStatement (context : StandardSphereMossContext)
    (proof : StandardSphereMossStatement context) : StandardSphereMossInterface :=
  let c := KIP126.Def.StageInput.witness
  letI : Foundation.TensorInput c.foundationInput := c.tensorInput
  MossContext.withStatement c.foundationInput.hf2 c.cooperationInput.ring context proof

/-- am12：Adams 一线、非零 d₂ 及 May 低维永久存活的完整交付。
所有类来自固定 Milnor cocycle 的实际 cup 与同一内部 E₂ 比较。
MainPaper 一线存活范围的 `j ≥ 3` 与下一行 d₂ 相矛盾，这里采用 j ≤ 3。
本组只陈述文献结论；证明可以暂留 sorry，不把已有 h₄ 单点包装当作全族。 -/
structure AdamsOneLineInterface : Prop where
  adamsOneLine_at_power (j : ℕ) :
      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧
        ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),
          x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j
  adamsOneLine_other_degree (t : ℤ)
      (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :
      ∀ x : sphereAdamsData.Page 2 (1, t), x = 0
  adamsHi_nonzeroSurvival_iff (j : ℕ) :
      NonzeroSurvival sphereAdamsData (1, ((2 ^ j : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j) ↔ j ≤ 3
  adamsOneLine_d2 (j : ℕ) (hj : 4 ≤ j) :
      HasNonzeroDifferential sphereAdamsData 2
        (1, ((2 ^ j : ℕ) : ℤ)) (3, ((1 + 2 ^ (j - 1 + 1) : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j)
        (Sphere.Internal.h0HiSquare standardFoundation.hf2 standardMilnorCooperations (j - 1))
  may_lowDimensionalProducts_permanent :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 2 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 2) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 3 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 3) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 2 + 2 ^ 4 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 2 4)
  may_lowDimensionalSquares_permanent (j : ℕ) (hj : j ≤ 3) :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ (j + 1) : ℕ) : ℤ))
        (Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations j)

end KIP126.Challenge2
