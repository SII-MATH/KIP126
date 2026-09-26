/-
  KIPBase.Synthetic.ExtensionSS
  §4 Synthetic extension spectral sequences.

  A synthetic f-ESS is the extension spectral sequence of the filtered
  two-term complex

      π_{*,*} X →[f] π_{*,*} Y,

  where both terms carry their synthetic Adams filtrations.  The actual
  spectral sequence is supplied by `BoundedExtensionSS`; this file packages
  the synthetic Adams convergence data needed to apply that construction.
-/
import KIPBase.Synthetic.Adams
import KIPBase.SpectralSequence.BoundedExtension

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

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
weight-preserving map `f : X ⟶ Y`.

The two convergence structures identify the synthetic Adams `E∞`-pages
with the associated gradeds of the Adams filtrations.  The convergence
morphism says that the map on bigraded homotopy groups preserves those
filtrations and agrees on associated gradeds with the map induced by `f` on
synthetic Adams spectral sequences.  Boundedness is kept explicit because it
is the finiteness input used by `BoundedExtensionSS`.

A morphism in `Syn` has bidegree `(0,0)`, so its induced map is
weight-preserving.  The `source_reindex` and `target_reindex` fields record
that neither convergence witness changes the weight coordinate. -/
structure SyntheticExtensionData {X Y : Syn} (f : X ⟶ Y) where
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
  source_bounded : sourceFiltration.IsBounded
  target_bounded : targetFiltration.IsBounded

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

end KIPBase.Synthetic
