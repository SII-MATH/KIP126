import KIPBase.SpectralSequence.Blueprint
import KIPBase.Synthetic.GeometricAdamsLegacy

/-!
# Reindexed Adams--lambda-Bockstein comparison

The lambda-Bockstein ESS is bigraded, whereas the synthetic Adams spectral
sequence is trigraded. At a fixed homotopy bidegree, the change of grading
goes from a Bockstein index to an Adams index. It is affine rather than a
homomorphism of grading groups.

This file records that reindexing and the resulting notion of comparison
from the Adams starting page onward. It never chooses an arbitrary map
between unrelated page objects.
-/

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u

variable {Syn : Type u} [Category.{u} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn] [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ## The affine change of grading -/

/-- At fixed homotopy bidegree `degree`, send the Bockstein bidegree
`(s,k)` to the synthetic Adams tridegree
`(s, degree.1 + s + k - 1, degree.2)`.

The second Bockstein coordinate distinguishes the source column `k = 1`
from the target column `k = 0`. -/
def lambdaBocksteinToAdamsReindex (degree : ℤ × ℤ) :
    ℤ × ℤ → ℤ × ℤ × ℤ :=
  lambdaBocksteinAdamsIndex degree

@[simp] theorem lambdaBocksteinToAdamsReindex_apply
    (degree : ℤ × ℤ) (sk : ℤ × ℤ) :
    lambdaBocksteinToAdamsReindex degree sk =
      (sk.1, degree.1 + sk.1 + sk.2 - 1, degree.2) :=
  rfl

/-- The affine reindexing carries a Bockstein differential of degree
`(r,-1)` to an Adams differential of degree `(r,r-1,0)`. -/
theorem lambdaBocksteinToAdamsReindex_add_diff
    (degree sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinToAdamsReindex degree (sk + (r, -1)) =
      lambdaBocksteinToAdamsReindex degree sk + (r, r - 1, 0) :=
  lambdaBocksteinAdamsIndex_add_diff degree sk r

/-- Degree compatibility for the actual synthetic Adams and canonical
lambda-Bockstein spectral sequences. -/
theorem lambdaBocksteinToAdamsReindex_degree_compat
    (X : Syn) (degree sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinToAdamsReindex degree
        (sk + (canonicalLambdaBocksteinESS X degree).diffDeg r) =
      lambdaBocksteinToAdamsReindex degree sk +
        (SynAdamsSS Syn X).diffDeg r := by
  rw [canonicalLambdaBocksteinESS, lambdaBocksteinESS_diffDeg,
    synAdamsSS_diffDeg]
  exact lambdaBocksteinToAdamsReindex_add_diff degree sk r

@[simp] theorem lambdaBocksteinToAdamsReindex_source
    (s t : ℤ) :
    lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree s t) (s, 1) = (s, t, t) :=
  lambdaBocksteinAdamsIndex_generator s t

@[simp] theorem lambdaBocksteinToAdamsReindex_target
    (s t r : ℤ) :
    lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree s t) ((s, 1) + (r, -1)) =
      (s + r, t + r - 1, t) :=
  lambdaBocksteinAdamsIndex_differentialTarget s t r

/-! ## Comparison after the Adams starting page -/

/-- A pagewise isomorphism after an affine reindexing. The comparison starts
at `firstPage`, and compatibility with every differential is part of the
structure.

The raw boundary ESS starts at page zero. For `r ≥ 2`, the geometric cap
construction compares its actual page `r` with Adams page `r`; therefore
this structure keeps the actual integer page number and only reindexes the
grading. -/
structure AffineReindexedSpectralSequenceEquivalence
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ))
    (B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ))
    (reindex : ℤ × ℤ → ℤ × ℤ × ℤ)
    (firstPage : ℤ := 2) where
  degree_compat : ∀ (r : ℤ) (sk : ℤ × ℤ),
    reindex (sk + B.diffDeg r) = reindex sk + E.diffDeg r
  pageEquiv : ∀ (r : ℤ), firstPage ≤ r → ∀ sk : ℤ × ℤ,
    ↑(B.Page r sk) ≃+ ↑(E.Page r (reindex sk))
  differential_comm : ∀ (r : ℤ) (hr : firstPage ≤ r)
      (sk : ℤ × ℤ) (x : B.Page r sk),
    pageEquiv r hr (sk + B.diffDeg r) ((B.d r sk).hom x) =
      (eqToHom (congrArg (E.Page r) (degree_compat r sk).symm)).hom
        ((E.d r (reindex sk)).hom (pageEquiv r hr sk x))

namespace AffineReindexedSpectralSequenceEquivalence

/-- The inverse page equivalences give the Adams-to-Bockstein page maps. -/
noncomputable def adamsToBocksteinPageMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ} {firstPage : ℤ}
    (C : AffineReindexedSpectralSequenceEquivalence E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r) (sk : ℤ × ℤ) :
    E.Page r (reindex sk) ⟶ B.Page r sk :=
  AddCommGrpCat.ofHom (C.pageEquiv r hr sk).symm.toAddMonoidHom

/-- The inverse page maps commute with the differentials. -/
theorem adamsToBocksteinPageMap_comm
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ} {firstPage : ℤ}
    (C : AffineReindexedSpectralSequenceEquivalence E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r) (sk : ℤ × ℤ)
    (x : E.Page r (reindex sk)) :
    (B.d r sk).hom ((C.adamsToBocksteinPageMap r hr sk).hom x) =
      (C.adamsToBocksteinPageMap r hr (sk + B.diffDeg r)).hom
        ((eqToHom (congrArg (E.Page r) (C.degree_compat r sk).symm)).hom
          ((E.d r (reindex sk)).hom x)) := by
  apply (C.pageEquiv r hr (sk + B.diffDeg r)).injective
  rw [C.differential_comm]
  simp [adamsToBocksteinPageMap]

end AffineReindexedSpectralSequenceEquivalence

/-- The type of the desired comparison at one fixed homotopy bidegree. -/
abbrev CanonicalAdamsLambdaBocksteinEquivalence
    (X : Syn) (degree : ℤ × ℤ) :=
  AffineReindexedSpectralSequenceEquivalence
    (SynAdamsSS Syn X) (canonicalLambdaBocksteinESS X degree)
    (lambdaBocksteinToAdamsReindex degree) 2

/-- Assemble the canonical comparison from page equivalences commuting with
the actual differentials. The affine degree condition is discharged by the
reindexing theorem above, so it is not an additional input. -/
noncomputable def CanonicalAdamsLambdaBocksteinEquivalence.ofPages
    (X : Syn) (degree : ℤ × ℤ)
    (pageEquiv : ∀ (r : ℤ), 2 ≤ r → ∀ sk : ℤ × ℤ,
      ↑((canonicalLambdaBocksteinESS X degree).Page r sk) ≃+
        ↑((SynAdamsSS Syn X).Page r
          (lambdaBocksteinToAdamsReindex degree sk)))
    (differential_comm : ∀ (r : ℤ) (hr : 2 ≤ r)
        (sk : ℤ × ℤ)
        (x : (canonicalLambdaBocksteinESS X degree).Page r sk),
      pageEquiv r hr
          (sk + (canonicalLambdaBocksteinESS X degree).diffDeg r)
          (((canonicalLambdaBocksteinESS X degree).d r sk).hom x) =
        (eqToHom (congrArg ((SynAdamsSS Syn X).Page r)
          (lambdaBocksteinToAdamsReindex_degree_compat
            (Syn := Syn) X degree sk r).symm)).hom
          (((SynAdamsSS Syn X).d r
            (lambdaBocksteinToAdamsReindex degree sk)).hom
              (pageEquiv r hr sk x))) :
    CanonicalAdamsLambdaBocksteinEquivalence X degree where
  degree_compat :=
    lambdaBocksteinToAdamsReindex_degree_compat (Syn := Syn) X degree
  pageEquiv := pageEquiv
  differential_comm := differential_comm

/-! ## Initial page and geometric finite pages -/

/-- The raw lambda-Bockstein source `E₀` is the reindexed diagonal Adams
`E₂` source. -/
noncomputable def canonicalLambdaBocksteinRawE0ReindexedE2Equiv
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    ↑((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree s t)).Page 0 (s, 1)) ≃+
      ↑((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2
        (lambdaBocksteinToAdamsReindex
          (lambdaBocksteinGeneratorDegree s t) (s, 1))) := by
  rw [lambdaBocksteinToAdamsReindex_source]
  exact addEquivOfAddCommGrpCatIso
    (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t)

/-- On every geometric page `r = n+2`, the constructed cap map is a page
equivalence once its concrete cap-lifting proposition is proved. Its Adams
index is exactly the affine reindex of the Bockstein source column. -/
noncomputable def NuSynAdamsGeometricComparison.reindexedSourcePageEquiv
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (hcap : C.CapLiftsBocksteinSourceClasses s n t) :
    ↑((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page
        ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)) ≃+
      ↑((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
        ((n + 2 : ℕ) : ℤ)
        (lambdaBocksteinToAdamsReindex
          (lambdaBocksteinGeneratorDegree (s : ℤ) t)
          ((s : ℤ), 1))) := by
  rw [lambdaBocksteinToAdamsReindex_source]
  exact (C.synAdamsLambdaBocksteinPageEquiv s n t hcap).symm

end KIPBase.Synthetic
