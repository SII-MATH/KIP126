import KIP126.Classical.Adams.Basic
import KIP126.Synthetic.SpectralSequence.Basic
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Field.ZMod

/-!
# Classical--synthetic comparison basics

The comparison is heterogeneous only in its grading index.  Its page maps
still target the same Mathlib page objects, and the compatibility fields are
specific to the concrete forget-weight use case.
-/

namespace KIP126.Comparison.ClassicalSynthetic

open CategoryTheory
open KIP126.Classical.Adams
open KIP126.Synthetic.SpectralSequence

structure ReindexedSpectralSequenceMap
    (classical : ClassicalAdamsSpectralSequence)
    (synthetic : SyntheticAdamsSS) where
  map : ∀ (w : ℤ) (r : ℤ) (hr : 2 ≤ r),
    (classical.page r) ⟶ fixedWeightPage synthetic.sequence w r hr
  pagePassage : ∀ (w : ℤ) (r : ℤ) (hr : 2 ≤ r) (b : Bidegree),
    (fixedWeightPage synthetic.sequence w r hr).homology b ≅
      (fixedWeightPage synthetic.sequence w (r + 1) (by omega)).X b
  page_passage_comm : ∀ (w : ℤ) (r : ℤ) (hr : 2 ≤ r) (b : Bidegree),
    HomologicalComplex.homologyMap (map w r hr) b ≫
        (pagePassage w r hr b).hom =
      (classical.iso r (r + 1) b rfl hr).hom ≫
        (map w (r + 1) (by omega)).f b

theorem ReindexedSpectralSequenceMap.differential_comm
    {classical : ClassicalAdamsSpectralSequence}
    {synthetic : SyntheticAdamsSS}
    (comparison : ReindexedSpectralSequenceMap classical synthetic)
    (w r : ℤ) (hr : 2 ≤ r) (b : Bidegree) :
    (classical.page r).d b (classicalAdamsTarget r.toNat b) ≫
        (comparison.map w r hr).f (classicalAdamsTarget r.toNat b) =
      (comparison.map w r hr).f b ≫
        (fixedWeightPage synthetic.sequence w r hr).d b
          (classicalAdamsTarget r.toNat b) := by
  exact (comparison.map w r hr).comm b (classicalAdamsTarget r.toNat b) |>.symm

theorem forgetWeight_page_shape (r : ℕ) (i : Tridegree) :
    (syntheticAdamsShape r).Rel i (syntheticAdamsTarget r i) :=
  syntheticAdamsShape_rel r i

theorem forgetWeight_differential_degree (r : ℕ) (i : Tridegree) :
    forgetWeight (syntheticAdamsTarget r i) =
      classicalAdamsTarget r (forgetWeight i) :=
  forgetWeight_add_shift r i

def sourcePageMap
    {classical : ClassicalAdamsSpectralSequence}
    {synthetic : SyntheticAdamsSS}
    (comparison : ReindexedSpectralSequenceMap classical synthetic)
    (w : ℤ) (r : ℤ) (hr : 2 ≤ r) (b : Bidegree) :
    (classical.page r).X b ⟶ (fixedWeightPage synthetic.sequence w r hr).X b :=
  (comparison.map w r hr).f b

theorem sourcePageMap_differential_naturality
    {classical : ClassicalAdamsSpectralSequence}
    {synthetic : SyntheticAdamsSS}
    (comparison : ReindexedSpectralSequenceMap classical synthetic)
    (w r : ℤ) (hr : 2 ≤ r) (b : Bidegree) :
    (classical.page r).d b (classicalAdamsTarget r.toNat b) ≫
        (comparison.map w r hr).f (classicalAdamsTarget r.toNat b) =
      (comparison.map w r hr).f b ≫
        (fixedWeightPage synthetic.sequence w r hr).d b
          (classicalAdamsTarget r.toNat b) :=
  comparison.differential_comm w r hr b

abbrev classicalH₄Degree : Bidegree := (1, 16)
abbrev classicalH₀H₃SquaredDegree : Bidegree := (3, 17)
abbrev syntheticH₄Degree : Tridegree := nuDegree classicalH₄Degree
abbrev syntheticH₀H₃SquaredDegree : Tridegree :=
  nuDegree classicalH₀H₃SquaredDegree
abbrev syntheticH₄TargetDegree : Tridegree :=
  lambdaTarget syntheticH₀H₃SquaredDegree

theorem synthetic_h₄_degree_forgets :
    forgetWeight syntheticH₄Degree = classicalH₄Degree := by
  simp

theorem synthetic_h₄_target_is_lambda_target :
    syntheticH₄TargetDegree = lambdaTarget syntheticH₀H₃SquaredDegree := rfl

end KIP126.Comparison.ClassicalSynthetic
