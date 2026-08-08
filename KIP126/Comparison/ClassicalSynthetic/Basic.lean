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
    (synthetic : SyntheticAdamsSpectralSequence) where
  indexMap : Tridegree → Bidegree
  indexMap_add_shift : ∀ (r : ℕ) (i : Tridegree),
    indexMap (syntheticAdamsTarget r i) =
      classicalAdamsTarget r (indexMap i)
  pageMap : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
    (classical.page r).X (indexMap i) ⟶ (synthetic.page r).X i
  homologyMap : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
    (classical.page r).homology (indexMap i) ⟶
      (synthetic.page r).homology i
  differential_comm : ∀ (r : ℕ) (hr : 2 ≤ r) (i : Tridegree),
    (classical.page (r : ℤ)).d (indexMap i)
        (indexMap (syntheticAdamsTarget r i)) ≫
        pageMap (r : ℤ) (by omega) (syntheticAdamsTarget r i) =
      pageMap (r : ℤ) (by omega) i ≫
        (synthetic.page (r : ℤ)).d i (syntheticAdamsTarget r i)
  page_passage_comm : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
    homologyMap r hr i ≫ (synthetic.iso r (r + 1) i rfl hr).hom =
      (classical.iso r (r + 1) (indexMap i) rfl hr).hom ≫
        pageMap (r + 1) (by omega) i

def forgetWeightComparison
    (classical : ClassicalAdamsSpectralSequence)
    (synthetic : SyntheticAdamsSpectralSequence)
    (pageMap : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
      (classical.page r).X (forgetWeight i) ⟶ (synthetic.page r).X i)
    (homologyMap : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
      (classical.page r).homology (forgetWeight i) ⟶
        (synthetic.page r).homology i)
    (differential_comm : ∀ (r : ℕ) (hr : 2 ≤ r) (i : Tridegree),
      (classical.page (r : ℤ)).d (forgetWeight i)
          (forgetWeight (syntheticAdamsTarget r i)) ≫
          pageMap (r : ℤ) (by omega) (syntheticAdamsTarget r i) =
        pageMap (r : ℤ) (by omega) i ≫
          (synthetic.page (r : ℤ)).d i (syntheticAdamsTarget r i))
    (page_passage_comm : ∀ (r : ℤ) (hr : 2 ≤ r) (i : Tridegree),
      homologyMap r hr i ≫ (synthetic.iso r (r + 1) i rfl hr).hom =
        (classical.iso r (r + 1) (forgetWeight i) rfl hr).hom ≫
          pageMap (r + 1) (by omega) i) :
    ReindexedSpectralSequenceMap classical synthetic :=
  { indexMap := forgetWeight
    indexMap_add_shift := fun r i => forgetWeight_add_shift r i
    pageMap := pageMap
    homologyMap := homologyMap
    differential_comm := differential_comm
    page_passage_comm := page_passage_comm }

theorem forgetWeight_page_shape (r : ℕ) (i : Tridegree) :
    (syntheticAdamsShape r).Rel i (syntheticAdamsTarget r i) :=
  syntheticAdamsShape_rel r i

theorem forgetWeight_differential_degree (r : ℕ) (i : Tridegree) :
    forgetWeight (syntheticAdamsTarget r i) =
      classicalAdamsTarget r (forgetWeight i) :=
  forgetWeight_add_shift r i

abbrev classicalH₄Degree : Bidegree := (1, 16)
abbrev classicalH₀H₃SquaredDegree : Bidegree := (3, 17)
abbrev syntheticH₄Degree : Tridegree := nuDegree classicalH₄Degree
abbrev syntheticH₀H₃SquaredDegree : Tridegree :=
  nuDegree classicalH₀H₃SquaredDegree
abbrev syntheticH₄TargetDegree : Tridegree :=
  lambdaTarget syntheticH₀H₃SquaredDegree

structure H₄DifferentialComparison
    {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    (synthetic : SyntheticAdamsSS)
    (P : SphereAdamsPresentation classical) where
  catalogue : KIP126.External.CataloguedExternalResult
    (KIP126.Classical.adamsOneLineDifferentials P)
  classicalStatement : AdamsD₂Statement classical
  classicalStatement_catalogued : classicalStatement =
    (KIP126.Classical.Adams.cataloguedAdamsOneLine_h₄_degrees P catalogue).choose
  classical_source : classicalStatement.source = P.h 4
  classical_target : classicalStatement.target =
    sphereProduct P (P.h 0) (sphereProduct P (P.h 3) (P.h 3))
  source_degree : classicalStatement.source.degree = classicalH₄Degree
  target_degree_h0 : classicalStatement.target.degree = classicalH₀H₃SquaredDegree
  sourceMap : classical.E₂.X classicalH₄Degree ⟶
    synthetic.E₂.X syntheticH₄Degree
  sourceMap_h₄ : sourceMap
      (transportRepresentative classicalStatement.source source_degree) =
    synthetic.h₄
  targetMap : classical.E₂.X classicalH₀H₃SquaredDegree ⟶
    synthetic.E₂.X syntheticH₀H₃SquaredDegree
  targetMap_h₀h₃Squared : targetMap
      (transportRepresentative classicalStatement.target target_degree_h0) =
    synthetic.h₀h₃Squared
  classical_d₂_target :
    (classical.d₂ classicalH₄Degree).hom
        (transportRepresentative classicalStatement.source source_degree) =
      transportRepresentative classicalStatement.target target_degree_h0
  differentialMap_comm :
    (synthetic.d₂ syntheticH₄Degree).hom
        (sourceMap.hom
          (transportRepresentative classicalStatement.source source_degree)) =
      (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        (targetMap.hom
          ((classical.d₂ classicalH₄Degree).hom
            (transportRepresentative classicalStatement.source source_degree)))

theorem H₄DifferentialComparison.classical_degrees
    {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
    (comparison : H₄DifferentialComparison synthetic P) :
    comparison.classicalStatement.source.degree = classicalH₄Degree ∧
      comparison.classicalStatement.target.degree =
        classicalH₀H₃SquaredDegree := by
  have hSource : comparison.classicalStatement.source.degree = classicalH₄Degree := by
    rw [comparison.classical_source, P.h_degree]
    norm_num
  have hTarget : comparison.classicalStatement.target.degree =
      classicalH₀H₃SquaredDegree := by
    rw [comparison.classicalStatement.target_degree, hSource]
    norm_num [classicalAdamsTarget, classicalAdamsShift]
  exact ⟨hSource, hTarget⟩

theorem H₄DifferentialComparison.catalogued_classical_degrees
    {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
    (comparison : H₄DifferentialComparison synthetic P) :
    ∃ statement : AdamsD₂Statement classical,
      statement.source = P.h 4 ∧
      statement.target = sphereProduct P (P.h 0)
        (sphereProduct P (P.h 3) (P.h 3)) ∧
      statement.source.degree = classicalH₄Degree ∧
      statement.target.degree = classicalH₀H₃SquaredDegree :=
  by
    let h := KIP126.Classical.Adams.cataloguedAdamsOneLine_h₄_degrees P
      comparison.catalogue
    refine ⟨comparison.classicalStatement, ?_, ?_, ?_, ?_⟩
    · rw [comparison.classicalStatement_catalogued]
      exact h.choose_spec.1
    · rw [comparison.classicalStatement_catalogued]
      exact h.choose_spec.2.1
    · rw [comparison.classicalStatement_catalogued]
      exact h.choose_spec.2.2.1
    · rw [comparison.classicalStatement_catalogued]
      exact h.choose_spec.2.2.2

theorem H₄DifferentialComparison.synthetic_lambda_regression
    {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
  (comparison : H₄DifferentialComparison synthetic P) :
    (synthetic.d₂ syntheticH₄Degree).hom synthetic.h₄ =
      (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        synthetic.h₀h₃Squared := by
  calc
    (synthetic.d₂ syntheticH₄Degree).hom synthetic.h₄ =
        (synthetic.d₂ syntheticH₄Degree).hom
          (comparison.sourceMap.hom
            (transportRepresentative comparison.classicalStatement.source
              comparison.source_degree)) :=
      (congrArg (synthetic.d₂ syntheticH₄Degree).hom
        comparison.sourceMap_h₄).symm
    _ = (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        (comparison.targetMap.hom
          ((classical.d₂ classicalH₄Degree).hom
            (transportRepresentative comparison.classicalStatement.source
              comparison.source_degree))) := by
      exact comparison.differentialMap_comm
    _ = (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        (comparison.targetMap.hom
          (transportRepresentative comparison.classicalStatement.target
            comparison.target_degree_h0)) := by
      exact congrArg
        (fun x => (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
          (comparison.targetMap.hom x)) comparison.classical_d₂_target
    _ = (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        synthetic.h₀h₃Squared :=
      congrArg (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        comparison.targetMap_h₀h₃Squared

theorem synthetic_h₄_degree_forgets :
    forgetWeight syntheticH₄Degree = classicalH₄Degree := by
  simp

theorem synthetic_h₄_target_is_lambda_target :
    syntheticH₄TargetDegree = lambdaTarget syntheticH₀H₃SquaredDegree := rfl

end KIP126.Comparison.ClassicalSynthetic
