import KIP126.Challenge2.Route.Literature.Classical

/-! Low-dimensional and symmetric Toda inputs. The synthetic versions
are source-transport obligations, not verbatim classical formulas: λ²η,
rather than η, has bidegree (1,0). See the source/application distinction
in `docs/A_INPUT_FREEZE.md`. No high-stem indeterminacy is discarded. -/
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

/-- Applied consumer package. Its BHS low-ring fields and INTERNAL secondary
operation comparison are delivered separately by `TodaSourceResults` and
`TodaApplication`. Toda 1962, Theorem 3.6 and IWX §6 motivate the latter;
IWX `cor:2-symmetric` is C-motivic and is NOT directly a synthetic theorem. The final field asserts only membership;
LWX's high-degree ZERO INDETERMINACY check remains a paper/C(M) task. -/
structure TodaInputs (η : BiHom 1 2 (S00 : Syn)) where
  h0 : BiHom 0 1 (S00 : Syn)
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 h0 = syntheticTwo
  h0_eta : sphereProduct h0 η = 0
  /-- η² belongs to <[h₀],η,[h₀]>. We do not replace a Toda set by
  a selected value; the low indeterminacy vanishing is a separate field. -/
  eta_squared : TripleToda h0 η h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  /-- Consequence of the BHS low-stem ring: [h₀]·π_(2,3)=0.
  Together with graded commutativity it kills both indeterminacy summands
  of the preceding LOW bracket, not those of <2,θ₅,2>. -/
  low_indeterminacy : ∀ a : BiHom 2 3 (S00 : Syn), sphereProduct h0 a = 0
  /-- Symmetric Toda identity at the only other degree used by this route.
  No claim that the bracket is a singleton or that θ is order two is made. -/
  symmetric_two : ∀ θ : BiHom 62 64 (S00 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- The one low-dimensional source choice. The label equation belongs to the
source result below; no second η or h₀ is selected during consumption. -/
structure TodaSourceData where
  h0 : BiHom 0 1 (S00 : Syn)

/-- BHS `prop:syn-toda-range`, low-ring/label consequences on the selected
sphere. These equations do not prove a secondary Toda membership. -/
structure TodaSourceResults (η : BiHom 1 2 (S00 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 S.h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 S.h0 = syntheticTwo
  h0_eta : sphereProduct S.h0 η = 0
  low_indeterminacy : ∀ a : BiHom 2 3 (S00 : Syn), sphereProduct S.h0 a = 0

/-- Internal source-to-model application: actual secondary Toda relations on
the same sphere and chosen h₀,η. No high-degree indeterminacy is removed. -/
structure TodaApplication (η : BiHom 1 2 (S00 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  eta_squared : TripleToda S.h0 η S.h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  symmetric_two : ∀ θ : BiHom 62 64 (S00 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- Exact secondary-operation evidence required before transporting the
symmetric theorem. `twoStar` is the degree-(1,0) star of multiplication by two.
Its product identification must be proved in this synthetic model; the
C-motivic value τη in IWX cannot simply be renamed λ²η. The low bracket also
requires an actual Massey/Moss or Toda calculation, beyond the ring equations.
This record is an INTERNAL construction/comparison obligation, not A(M). -/
structure TodaSecondaryComparison (η : BiHom 1 2 (S00 : Syn))
    (S : TodaSourceData (Syn := Syn)) where
  low_bracket : TripleToda S.h0 η S.h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  twoStar : BiHom 1 0 (S00 : Syn)
  symmetric : ∀ θ : BiHom 62 64 (S00 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (sphereProduct (m := 1) (n := 0) (k := 62) (l := 64) twoStar θ)
  star_product : ∀ θ : BiHom 62 64 (S00 : Syn),
    sphereProduct (m := 1) (n := 0) (k := 62) (l := 64) twoStar θ = lambdaMultiply 2 (sphereProduct η θ)

/-- Assemble the unchanged consumer API from source ring facts and separately
certified secondary operations. This introduces no choice or axiom. -/
def todaInputsOfSource (η : BiHom 1 2 (S00 : Syn)) (S : TodaSourceData (Syn := Syn))
    (A : TodaSourceResults D η S) (P : TodaApplication η S) : TodaInputs D η where
  h0 := S.h0
  h0_label := A.h0_label
  lambda_h0 := A.lambda_h0
  h0_eta := A.h0_eta
  eta_squared := P.eta_squared
  low_indeterminacy := A.low_indeterminacy
  symmetric_two := P.symmetric_two

end
end KIP126.Literature.Route
