/-
  KIPBase.Synthetic.ExtensionSS
  §4 Synthetic extension spectral sequences.

  A synthetic f-ESS is the extension spectral sequence of the filtered
  two-term complex

      π_{*,*} X →[f] π_{*,*} Y,

  where both terms carry their synthetic Adams filtrations.  The actual
  spectral sequence is supplied by `ExtensionSpectralSequence`; the bounded
  API is retained separately. This file packages the synthetic Adams
  convergence data needed to apply these constructions.
-/
import KIPBase.Synthetic.Adams
import KIPBase.Synthetic.LambdaBoundary
import KIPBase.Synthetic.Rigidity
import KIPBase.SpectralSequence.BoundedExtension
import KIPBase.SpectralSequence.UnboundedExtension
import Mathlib.Algebra.Category.Grp.Subobject

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated
  KIPBase.SpectralSequence

universe u v

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-- The standard reindexing for the synthetic Adams spectral sequence:
`(s,t,w)` detects Adams filtration `s` in `π_{t-s,w}`. -/
def syntheticAdamsReindex : ℤ × ℤ × ℤ → ℤ × (ℤ × ℤ)
  | (s, t, w) => (s, (t - s, w))

/-- The synthetic Adams tridegree corresponding to filtration `s` and a
fixed abutment bidegree `(stem, weight)`. -/
def syntheticAdamsIndex (s : ℤ) (degree : ℤ × ℤ) : ℤ × ℤ × ℤ :=
  (s, degree.1 + s, degree.2)

/-- Tridegree of a length-`r` synthetic extension differential. -/
def syntheticESSDiffDegree (r : ℤ) : ℤ × ℤ × ℤ :=
  (r, r, 0)

@[simp] theorem syntheticAdamsReindex_index (s : ℤ) (degree : ℤ × ℤ) :
    syntheticAdamsReindex (syntheticAdamsIndex s degree) = (s, degree) := by
  rcases degree with ⟨stem, weight⟩
  simp [syntheticAdamsReindex, syntheticAdamsIndex]

/-- Raising the ESS filtration by `r` at fixed stem and weight raises both
synthetic Adams coordinates `s` and `t` by `r` and preserves `w`. -/
theorem syntheticAdamsIndex_add (s r : ℤ) (degree : ℤ × ℤ) :
    syntheticAdamsIndex (s + r) degree =
      syntheticAdamsIndex s degree + syntheticESSDiffDegree r := by
  rcases degree with ⟨stem, weight⟩
  simp [syntheticAdamsIndex, syntheticESSDiffDegree, add_assoc, add_left_comm]

/-- Data required to form the synthetic extension spectral sequence of a
weight-preserving map `f : X ⟶ Y`, before imposing boundedness.

The two convergence structures identify the synthetic Adams `E∞`-pages
with the associated gradeds of the Adams filtrations.  The convergence
morphism says that the map on bigraded homotopy groups preserves those
filtrations and agrees on associated gradeds with the map induced by `f` on
synthetic Adams spectral sequences.

A morphism in `Syn` has bidegree `(0,0)`, so its induced map is
weight-preserving.  The `source_reindex` and `target_reindex` fields record
that neither convergence witness changes the weight coordinate. -/
structure SyntheticExtensionCoreData {X Y : Syn} (f : X ⟶ Y) where
  sourceAbutment : ℤ × ℤ → AddCommGrpCat.{0}
  targetAbutment : ℤ × ℤ → AddCommGrpCat.{0}
  sourceFiltration : Filtration sourceAbutment
  targetFiltration : Filtration targetAbutment
  sourceConvergence :
    Convergence (SynAdamsSS Syn X) sourceAbutment sourceFiltration
  targetConvergence :
    Convergence (SynAdamsSS Syn Y) targetAbutment targetFiltration
  source_reindex : sourceConvergence.reindex = syntheticAdamsReindex
  target_reindex : targetConvergence.reindex = syntheticAdamsReindex
  convergenceMap : ConvergenceMorphism sourceConvergence targetConvergence
  eMap_eq : convergenceMap.eMap =
    (synAdamsSS_functorial Syn f).eInftyMap

/-- Data for the older bounded construction.  These two bounds are not used
by the unbounded extension spectral sequence. -/
structure SyntheticExtensionData {X Y : Syn} (f : X ⟶ Y)
    extends SyntheticExtensionCoreData f where
  source_bounded : sourceFiltration.IsBounded
  target_bounded : targetFiltration.IsBounded

namespace SyntheticExtensionCoreData

variable {X Y : Syn} {f : X ⟶ Y}

/-- The unbounded synthetic extension spectral sequence. -/
noncomputable def ess (data : SyntheticExtensionCoreData f)
    (degree : ℤ × ℤ) : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ) :=
  ExtensionSpectralSequence.{1, 0, 0, 0} data.convergenceMap degree

@[simp]
theorem ess_r₀ (data : SyntheticExtensionCoreData f) (degree : ℤ × ℤ) :
    (data.ess degree).r₀ = 0 :=
  rfl

@[simp]
theorem ess_diffDeg (data : SyntheticExtensionCoreData f)
    (degree : ℤ × ℤ) (r : ℤ) :
    (data.ess degree).diffDeg r = (r, -1) :=
  rfl

/-- With no initial boundaries, the initial subquotient is the ambient
object. The map is the cokernel identification followed by the top arrow. -/
private noncomputable def initialPageIsoOfNoBoundaries
    (D : SSData AddCommGrpCat.{0}) (hB : D.B 0 = ⊥) : D.page 0 ≅ D.V := by
  have hf : Subobject.ofLE (D.B 0) (D.Z 0) (D.B_le_Z 0) = 0 := by
    apply (cancel_mono (D.Z 0).arrow).mp
    rw [Subobject.ofLE_arrow, hB, Subobject.bot_arrow, zero_comp]
  haveI : IsIso (D.Z 0).arrow :=
    (Subobject.isIso_arrow_iff_eq_top _).mpr D.Z_zero
  exact cokernelIsoOfEq hf ≪≫ cokernelZeroIsoTarget ≪≫ asIso (D.Z 0).arrow

/-- The source column of the two-term complex has no incoming differential,
so its initial boundary subobject is zero. -/
private theorem source_initial_boundaries (data : SyntheticExtensionCoreData f)
    (degree : ℤ × ℤ) (s : ℤ) :
    (unboundedComplexSSDataFamily.{1, 0, 0, 0}
      data.convergenceMap degree (s, 1)).B 0 = ⊥ := by
  let FC := unboundedUnderlyingComplex data.convergenceMap degree
  have hd : FC.dToK 1 = 0 := by
    simp [FC, FilteredComplex.dToK, unboundedUnderlyingComplex,
      underlyingComplex, twoTermDiff] <;> rfl
  let I := imageSubobject
    ((FC.fil (s - (0 : ℕ) + 1) (1 + 1)).arrow ≫ FC.dToK 1) ⊓ FC.fil s 1
  have hI : I = ⊥ := by
    dsimp only [I]
    rw [hd, comp_zero, imageSubobject_zero, bot_inf_eq]
  have ha : I.arrow = 0 := by rw [hI, Subobject.bot_arrow]
  let i := Subobject.ofLE I (FC.fil s 1) inf_le_right
  have hi : i = 0 := by
    apply (cancel_mono (FC.fil s 1).arrow).mp
    exact (Subobject.ofLE_arrow inf_le_right).trans (ha.trans zero_comp.symm)
  have hg : i ≫ FC.filToAssocGraded s 1 = 0 := by rw [hi, zero_comp]
  change imageSubobject (i ≫ FC.filToAssocGraded s 1) = ⊥
  apply le_antisymm
  · exact imageSubobject_le (X := ⊥) (i ≫ FC.filToAssocGraded s 1)
      (0 : Subobject.underlying.obj I ⟶
        Subobject.underlying.obj (⊥ : Subobject (FC.assocGraded s 1)))
      (by simpa using hg.symm)
  · exact bot_le

/-- The actual zeroth page in the source column of the unbounded ESS is
the source associated graded. No bounded extension data is used. -/
noncomputable def e0SourceIsoAssociatedGraded (data : SyntheticExtensionCoreData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    (data.ess degree).Page 0 (s, 1) ≅
      data.sourceFiltration.associatedGraded s degree := by
  let D := unboundedComplexSSDataFamily.{1, 0, 0, 0}
    data.convergenceMap degree (s, 1)
  have e : (data.ess degree).Page 0 (s, 1) ≅ D.page 0 :=
    unboundedExtensionPageIso.{1, 0, 0, 0} data.convergenceMap degree (s, 1) 0
  have hV : D.V = data.sourceFiltration.associatedGraded s degree := by
    change (unboundedUnderlyingComplex data.convergenceMap degree).assocGraded s 1 = _
    simp only [unboundedUnderlyingComplex, underlyingComplex,
      FilteredComplex.assocGraded, Filtration.associatedGraded, twoTermFil]
    congr 1
  exact e ≪≫ initialPageIsoOfNoBoundaries D
    (source_initial_boundaries data degree s) ≪≫ eqToIso hV

/-- The source column of the unbounded ESS starts with the source Adams
limiting page, at the standard Adams tridegree. -/
noncomputable def e0SourceIso (data : SyntheticExtensionCoreData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    (data.ess degree).Page 0 (s, 1) ≅
      ((SynAdamsSS Syn X).ssData (syntheticAdamsIndex s degree)).eInfty := by
  have hindex : data.sourceConvergence.reindex (syntheticAdamsIndex s degree) =
      (s, degree) := by
    rw [data.source_reindex, syntheticAdamsReindex_index]
  let e := data.sourceConvergence.iso (syntheticAdamsIndex s degree)
  rw [hindex] at e
  exact data.e0SourceIsoAssociatedGraded s degree ≪≫ e.symm

end SyntheticExtensionCoreData

namespace SyntheticExtensionData

variable {X Y : Syn} {f : X ⟶ Y}

/-- At a fixed abutment bidegree, the source convergence reindexing sends the
corresponding synthetic Adams tridegree back to that filtration and bidegree. -/
theorem source_reindex_index (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.sourceConvergence.reindex (syntheticAdamsIndex s degree) = (s, degree) := by
  rw [data.source_reindex]
  exact syntheticAdamsReindex_index s degree

/-- Target analogue of `source_reindex_index`. -/
theorem target_reindex_index (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.targetConvergence.reindex (syntheticAdamsIndex s degree) = (s, degree) := by
  rw [data.target_reindex]
  exact syntheticAdamsReindex_index s degree

/-- The chosen convergence morphism uses exactly the `E∞` map induced by the
original synthetic map `f`. -/
theorem eMap_eq_at (data : SyntheticExtensionData f)
    (index : ℤ × ℤ × ℤ) :
    data.convergenceMap.eMap index =
      (synAdamsSS_functorial Syn f).eInftyMap index :=
  congrFun data.eMap_eq index

/-- The bounded extension data underlying the synthetic `f`-ESS. -/
noncomputable def extension (data : SyntheticExtensionData f) :
    BoundedExtensionSS data.sourceConvergence data.targetConvergence
      data.convergenceMap data.source_bounded data.target_bounded :=
  BoundedExtensionSS.mk' _ _ _ _ _

/-- The synthetic `f`-extension spectral sequence in a fixed homotopy
bidegree `(stem, weight)`.  Its internal bidegree is `(s,k)`, where `s` is
Adams filtration and `k = 1,0` denotes respectively the source and target of
the two-term complex. -/
noncomputable def ess (data : SyntheticExtensionData f) (degree : ℤ × ℤ) :
    SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ) :=
  data.extension.ess degree

/-- The synthetic `f`-ESS in a fixed weight. -/
noncomputable def essAtWeight (data : SyntheticExtensionData f)
    (weight stem : ℤ) : SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ) :=
  data.ess (stem, weight)

/-- A page differential in the fixed-weight synthetic ESS. -/
noncomputable def essDiffAtWeight (data : SyntheticExtensionData f)
    (weight stem r : ℤ) (k : ℤ × ℤ) :
    (data.essAtWeight weight stem).Page r k ⟶
      (data.essAtWeight weight stem).Page r
        (k + (data.essAtWeight weight stem).diffDeg r) :=
  data.extension.essDiff (stem, weight) r k

/-- The image object of a fixed-weight synthetic ESS differential. -/
noncomputable def essBoundaryAtWeight (data : SyntheticExtensionData f)
    (weight stem r : ℤ) (k : ℤ × ℤ) : AddCommGrpCat.{0} :=
  data.extension.essBoundary (stem, weight) r k

/-- Essentiality of a fixed-weight synthetic extension. -/
abbrev HasExtensionAtWeight (data : SyntheticExtensionData f)
    (weight stem r : ℤ) (k : ℤ × ℤ) : Prop :=
  HasFExtension data.extension (stem, weight) r k

/-- The underlying filtered two-term complex
`π_{*,*}X →[f] π_{*,*}Y` in a fixed homotopy bidegree. -/
noncomputable def complex (data : SyntheticExtensionData f) (degree : ℤ × ℤ) :
    FilteredComplex (AddCommGrpCat.{0}) :=
  data.extension.complex degree

/-- The `E₀` source term of the synthetic `f`-ESS. -/
noncomputable def e0Source (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  data.extension.e0PageAtOne degree s

/-- The `E₀` target term of the synthetic `f`-ESS. -/
noncomputable def e0Target (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  data.extension.e0PageAtZero degree s

/-- The source synthetic Adams `E∞`-term corresponding to filtration `s` and
the fixed homotopy bidegree `degree = (stem, weight)`. -/
noncomputable def sourceEInfty (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  ((SynAdamsSS Syn X).ssData (syntheticAdamsIndex s degree)).eInfty

/-- The target synthetic Adams `E∞`-term corresponding to filtration `s` and
the fixed homotopy bidegree `degree = (stem, weight)`. -/
noncomputable def targetEInfty (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  ((SynAdamsSS Syn Y).ssData (syntheticAdamsIndex s degree)).eInfty

/-- The source summand of the synthetic `f`-ESS `E₀`-page is the source
synthetic Adams `E∞`-term. -/
noncomputable def e0SourceIso (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.e0Source s degree ≅ data.sourceEInfty s degree := by
  let index := syntheticAdamsIndex s degree
  have hpage : data.e0Source s degree =
      data.sourceFiltration.associatedGraded s degree :=
    data.extension.e0PageAtOne_eq degree s
  have hgraded : data.sourceFiltration.associatedGraded s degree =
      data.sourceFiltration.associatedGraded
        (data.sourceConvergence.reindex index).1
        (data.sourceConvergence.reindex index).2 := by
    rw [data.source_reindex]
    simp [index]
  exact eqToIso hpage ≪≫ eqToIso hgraded ≪≫
    (data.sourceConvergence.iso index).symm

/-- The target summand of the synthetic `f`-ESS `E₀`-page is the target
synthetic Adams `E∞`-term. -/
noncomputable def e0TargetIso (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.e0Target s degree ≅ data.targetEInfty s degree := by
  let index := syntheticAdamsIndex s degree
  have hpage : data.e0Target s degree =
      data.targetFiltration.associatedGraded s degree :=
    data.extension.e0PageAtZero_eq degree s
  have hgraded : data.targetFiltration.associatedGraded s degree =
      data.targetFiltration.associatedGraded
        (data.targetConvergence.reindex index).1
        (data.targetConvergence.reindex index).2 := by
    rw [data.target_reindex]
    simp [index]
  exact eqToIso hpage ≪≫ eqToIso hgraded ≪≫
    (data.targetConvergence.iso index).symm

/-- The total `E₀` object of the synthetic `f`-ESS, obtained by combining the
source complex degree `1` and target complex degree `0`. -/
noncomputable def e0Page (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  data.e0Source s degree ⊞ data.e0Target s degree

/-- The direct sum of the source and target synthetic Adams `E∞`-terms. -/
noncomputable def eInftySum (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) : AddCommGrpCat.{0} :=
  data.sourceEInfty s degree ⊞ data.targetEInfty s degree

/-- Blueprint §4, `def:synthetic-extension-ss`:

`{}^f E₀^{s,t,w} ≅ E∞^{s,t,w}(X) ⊕ E∞^{s,t,w}(Y)`.

Here `degree = (t-s,w)`, so `syntheticAdamsIndex s degree = (s,t,w)`. -/
noncomputable def e0PageIso (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.e0Page s degree ≅ data.eInftySum s degree :=
  biprod.mapIso (data.e0SourceIso s degree) (data.e0TargetIso s degree)

/-- The `d₀` component is the associated-graded map induced by `f`. -/
noncomputable def d0 (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.e0Source s degree ⟶ data.e0Target s degree :=
  data.extension.d0 degree s

/-- The synthetic ESS `d₀` is the associated-graded map of the filtered
homotopy map induced by `f`. -/
theorem d0_eq_inducedAssocGradedMap (data : SyntheticExtensionData f)
    (s : ℤ) (degree : ℤ × ℤ) :
    data.d0 s degree =
      eqToHom (data.extension.e0PageAtOne_eq degree s) ≫
        Filtration.inducedAssocGradedMap
          data.convergenceMap.aMap data.convergenceMap.filtration_compat s degree ≫
        eqToHom (data.extension.e0PageAtZero_eq degree s).symm :=
  data.extension.d0_eq_inducedAssocGradedMap degree s

/-- The filtered-complex construction gives ESS differentials of bidegree
`(r,-1)`: filtration rises by `r` and the two-term complex degree drops from
the source side to the target side.  After restoring the fixed stem and
weight, this is the blueprint tridegree `(s,t,w) ↦ (s+r,t+r,w)`. -/
theorem ess_diffDeg (data : SyntheticExtensionData f)
    (degree : ℤ × ℤ) (r : ℤ) :
    (data.ess degree).diffDeg r = (r, -1) :=
  rfl

/-- Fixing a weight does not alter the ESS differential degree. -/
theorem essAtWeight_diffDeg (data : SyntheticExtensionData f)
    (weight stem r : ℤ) :
    (data.essAtWeight weight stem).diffDeg r = (r, -1) :=
  rfl

/-- Trigraded form of `ess_diffDeg`: a length-`r` extension differential has
degree `(r,r,0)`, hence preserves synthetic weight. -/
theorem ess_tridegree (data : SyntheticExtensionData f)
    (s r : ℤ) (degree : ℤ × ℤ) :
    syntheticAdamsIndex (s + r) degree =
      syntheticAdamsIndex s degree + syntheticESSDiffDegree r :=
  syntheticAdamsIndex_add s r degree

end SyntheticExtensionData

/-! ### Multiplication by λ -/

/-- Convergence-and-detection data for the extension spectral sequence of
multiplication by `λ^n : Σ^{0,-n}X ⟶ X`. -/
abbrev LambdaExtensionData (X : Syn) (n : ℕ) :=
  SyntheticExtensionData (lambdaPow n X)

/-- The synthetic `λ^n`-extension spectral sequence in bidegree
`(stem, weight)`.  This is the first specialization of the general synthetic
`f`-ESS requested in Blueprint §4. -/
noncomputable def lambdaESS (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (degree : ℤ × ℤ) :
    SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ) :=
  data.ess degree

/-- The `d₀` component of the `λ^n`-ESS.  By construction it is the map
on associated graded Adams filtrations induced by multiplication by `λ^n`;
the later comparison theorem may identify it explicitly with `λ^n`. -/
noncomputable def lambdaESSd0 (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (s : ℤ) (degree : ℤ × ℤ) :
    data.e0Source s degree ⟶ data.e0Target s degree :=
  data.d0 s degree

/-- In the `λ^n`-ESS, `d₀` is the associated-graded map induced by
multiplication by `λ^n`. -/
theorem lambdaESSd0_eq_inducedAssocGradedMap (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (s : ℤ) (degree : ℤ × ℤ) :
    lambdaESSd0 X n data s degree =
      eqToHom (data.extension.e0PageAtOne_eq degree s) ≫
        Filtration.inducedAssocGradedMap
          data.convergenceMap.aMap data.convergenceMap.filtration_compat s degree ≫
        eqToHom (data.extension.e0PageAtZero_eq degree s).symm :=
  data.d0_eq_inducedAssocGradedMap s degree

/-- The total `E₀` object of the synthetic `λ^n`-ESS. -/
noncomputable def lambdaESSE0 (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (s : ℤ) (degree : ℤ × ℤ) :
    AddCommGrpCat.{0} :=
  data.e0Page s degree

/-- The Blueprint `E₀` identification specialized to multiplication by
`λ^n : Σ^{0,-n}X ⟶ X`. -/
noncomputable def lambdaESSE0Iso (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (s : ℤ) (degree : ℤ × ℤ) :
    lambdaESSE0 X n data s degree ≅ data.eInftySum s degree :=
  data.e0PageIso s degree

theorem lambdaESS_diffDeg (X : Syn) (n : ℕ)
    (data : LambdaExtensionData X n) (degree : ℤ × ℤ) (r : ℤ) :
    (lambdaESS X n data degree).diffDeg r = (r, -1) :=
  rfl

/-! ### The λ-Bockstein spectral sequence -/

/-- Convergence data for the extension spectral sequence induced by the
λ-boundary map.  No boundedness field occurs in this structure. -/
abbrev LambdaBocksteinData (X : Syn) :=
  SyntheticExtensionCoreData (lambdaBocksteinConnecting X)

/-- The raw extension spectral sequence of the λ-boundary
`X/λ ⟶ Σ^{1,-1}X`, with the ESS's original numbering starting at zero.
Identifying its pages with synthetic Adams pages requires a comparison of
the initial terms and the induced differentials; no renumbering is applied
by this definition. -/
noncomputable def lambdaBocksteinESS (X : Syn)
    (data : LambdaBocksteinData X) (degree : ℤ × ℤ) :
    SpectralSequence (AddCommGrpCat.{0}) (ℤ × ℤ) :=
  data.ess degree

@[simp]
theorem lambdaBocksteinESS_r₀ (X : Syn)
    (data : LambdaBocksteinData X) (degree : ℤ × ℤ) :
    (lambdaBocksteinESS X data degree).r₀ = 0 :=
  rfl

@[simp]
theorem lambdaBocksteinESS_diffDeg (X : Syn)
    (data : LambdaBocksteinData X) (degree : ℤ × ℤ) (r : ℤ) :
    (lambdaBocksteinESS X data degree).diffDeg r = (r, -1) :=
  rfl

/-- The source column on the raw zeroth λ-boundary ESS page identifies
with E₂ of `νX/λ`, by the proved degeneration of the quotient Adams SS.
This does not yet compare the target column or the later ESS differentials. -/
noncomputable def lambdaBocksteinESSSourceE0Iso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮)
    (data : LambdaBocksteinData ((nu 𝒮 Syn).obj X))
    (s : ℤ) (degree : ℤ × ℤ) :
    (lambdaBocksteinESS ((nu 𝒮 Syn).obj X) data degree).Page 0 (s, 1) ≅
      (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2
        (syntheticAdamsIndex s degree) :=
  data.e0SourceIso s degree ≪≫
    synAdams_mod_lambda_one_eInftyIso 𝒮 Syn X (syntheticAdamsIndex s degree)

/-- An affine index matching the formal differential degrees of the boundary
ESS and synthetic Adams at the same integer page. This arithmetic map alone
does not identify their page objects or the shifted abutment degrees. -/
def lambdaBocksteinAdamsIndex (degree : ℤ × ℤ) (sk : ℤ × ℤ) :
    ℤ × ℤ × ℤ :=
  (sk.1, degree.1 + sk.1 + sk.2 - 1, degree.2)

/-- The affine index sends a Bockstein differential of degree `(r,-1)` to
a synthetic Adams differential of degree `(r,r-1,0)`. -/
theorem lambdaBocksteinAdamsIndex_add_diff (degree : ℤ × ℤ)
    (sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinAdamsIndex degree (sk + (r, -1)) =
      lambdaBocksteinAdamsIndex degree sk + (r, r - 1, 0) := by
  rcases degree with ⟨stem, weight⟩
  rcases sk with ⟨s, k⟩
  apply Prod.ext
  · rfl
  · apply Prod.ext
    · dsimp [lambdaBocksteinAdamsIndex]
      omega
    · simp [lambdaBocksteinAdamsIndex]

end KIPBase.Synthetic
