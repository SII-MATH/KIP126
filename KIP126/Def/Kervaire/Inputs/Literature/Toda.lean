import KIP126.Def.Kervaire.Inputs.Literature.Classical

/-! The Toda language and the BHS low-dimensional ring input. Synthetic
Toda bracket memberships are INTERNAL adaptation theorems, not fields of
A(M): a classical or C-motivic formula cannot be asserted on this model
merely by replacing its notation. No high-stem indeterminacy is discarded. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Regrading for the genuine Toda construction; no source iso is chosen
as an extra input. Suspension for a Toda bracket adds (1,0). -/
def tripleTodaSource (a aw b bw c cw : ℤ) :
    Smn (Syn := Syn) (a+(b+c)+1) (aw+(bw+cw)) ≅
      ((SyntheticCategory.biShift (b+c,bw+cw)).obj (Smn a aw))⟦(1 : ℤ)⟧ := by
  simpa only [Prod.mk_add_mk, add_zero, Smn, Functor.comp_obj] using
    ((SyntheticCategory.biShift_comp (a+(b+c),aw+(bw+cw)) (1,0)).app
      (S00 : Syn)).symm ≪≫
    (SyntheticCategory.biShift (1,0)).mapIso
      ((SyntheticCategory.biShift_comp (a,aw) (b+c,bw+cw)).app S00).symm ≪≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).app _

/-- Complete Toda membership, including the actual distinguished triangle
and all choices of extensions. This is a defined relation, not a free Prop. -/
def TripleToda {a aw b bw c cw : ℤ}
    (x : BiHom a aw (S00 : Syn)) (y : BiHom b bw (S00 : Syn))
    (z : BiHom c cw (S00 : Syn))
    (value : BiHom (a+(b+c)+1) (aw+(bw+cw)) (S00 : Syn)) : Prop :=
  Toda.Relation ((tripleTodaSource a aw b bw c cw).inv ≫ value)
    ((SyntheticCategory.biShift (b+c,bw+cw)).map x)
    ((SyntheticCategory.biShift_comp (b,bw) (c,cw)).inv.app S00 ≫
      (SyntheticCategory.biShift (c,cw)).map y) z

/-- Actual multiplication by two, with the zero suspension removed. -/
def syntheticTwo : BiHom 0 0 (S00 : Syn) :=
  SyntheticCategory.biShift_zero.hom.app S00 ≫ (2 • 𝟙 _)

/-- BHS `prop:syn-toda-range`, relations (0) and (9), on the fixed
synthetic sphere. These are ring/label facts only. The low Toda bracket
and the degree-(62,64) symmetric bracket are stated and proved separately
in `Main/Solution/Route/LiteratureAdapters/Toda`. -/
structure TodaInputs (η : BiHom 1 2 (S00 : Syn)) where
  h0 : BiHom 0 1 (S00 : Syn)
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 h0 = syntheticTwo
  h0_eta : sphereProduct h0 η = 0
  /-- The low ring computation kills these indeterminacy summands only;
  it does not claim that any high-stem Toda bracket is a singleton. -/
  low_indeterminacy : ∀ a : BiHom 2 3 (S00 : Syn), sphereProduct h0 a = 0
end
end KIP126.Literature.Route
