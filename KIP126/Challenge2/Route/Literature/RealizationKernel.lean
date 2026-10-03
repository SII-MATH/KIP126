import KIP126.Challenge2.Route.Literature.Synthetic
import Mathlib.CategoryTheory.Adjunction.Additive

/-! Full-category localization and its scoped application to the route.

Pstrągowski's `prop:tau_inversion_functor_exists` constructs localization as
an actual telescope in full synthetic spectra. Its compact spheres (the remark
`rem:synthetic_spectra_compactly_generated_by_suspensions_of_synthetic_analogues_of_finite_projectives`)
give the finite-power kernel criterion. The source reflection is kept in its
full category; it is not assumed to recover the same classical category as
the selected complete model. Hypercompletion is a different step:
§4.5 identifies the complete objects and their inclusion. The data below must
come from that construction (or an equivalent comparison); an abstract
`SyntheticCategory` alone does not establish any of these facts.
-/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable (Syn : Type w) [SyntheticCategory.{w, v} Syn]

/-- The FULL source, its actual λ-localization, and the completion/inclusion
adjunction. Spheres are compared AFTER the left adjoint; this does not identify
an uncompleted source sphere with an included completed sphere. No compactness
of the latter is asserted. -/
structure RealizationKernelSourceData where
  Full : Type w
  [fullCategory : SyntheticCategory.{w, v} Full]
  localization : LambdaLocalization Full
  completion : Full ⥤ Syn
  inclusion : Syn ⥤ Full
  fullyFaithful : inclusion.FullyFaithful
  adjunction : completion ⊣ inclusion
  [completionAdditive : completion.Additive]
  sphere : ∀ m w : ℤ, completion.obj (Smn (Syn := Full) m w) ≅ Smn (Syn := Syn) m w

attribute [instance] RealizationKernelSourceData.fullCategory
attribute [instance] RealizationKernelSourceData.completionAdditive

variable {Syn}

/-- The map on representatives is the ACTUAL adjunction map, precomposed with
the specified completed-sphere comparison. It is not an arbitrary bijection. -/
def RealizationKernelSourceData.representatives (S : RealizationKernelSourceData Syn)
    (X : Syn) (m w : ℤ) :
    BiHom m w X ≃+ BiHom m w (S.inclusion.obj X) where
  toFun a := S.adjunction.homAddEquiv _ _ ((S.sphere m w).hom ≫ a)
  invFun a := (S.sphere m w).inv ≫ (S.adjunction.homAddEquiv _ _).symm a
  left_inv a := by simp
  right_inv a := by simp
  map_add' a b := by simp [Preadditive.comp_add]

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Consequence of full-category telescope localization and compact source
spheres, restricted to the INCLUDED route objects. It is supplied as a source
result, never inferred from compactness of the completed sphere. -/
def RealizationKernelSourceResults (S : RealizationKernelSourceData Syn) : Prop :=
  ∀ (X : SyntheticObject) (m w : ℤ)
    (a : BiHom m w (S.inclusion.obj (X.obj D.nu D.auxiliary))),
    (S.localization.endofunctor.map a = 0 ↔ ∃ k : ℕ, lambdaMultiply k a = 0)

/-- Exact local comparison needed to use the source kernel criterion. The
realization condition must be proved for the displayed included objects; it
is not a claim that full and hypercomplete localization commute on every object.
The λ condition compares all powers and records their changed weights. -/
structure RealizationKernelBinding (S : RealizationKernelSourceData Syn) : Prop where
  realization_zero : ∀ (X : SyntheticObject) (m w : ℤ)
      (a : BiHom m w (X.obj D.nu D.auxiliary)),
    D.recovery.realization.map a = 0 ↔
      S.localization.endofunctor.map (S.representatives _ m w a) = 0
  lambda : ∀ (X : SyntheticObject) (m w : ℤ) (k : ℕ)
      (a : BiHom m w (X.obj D.nu D.auxiliary)),
    S.representatives _ m (w-k) (lambdaMultiply k a) =
      lambdaMultiply k (S.representatives _ m w a)

end
end KIP126.Literature.Route
