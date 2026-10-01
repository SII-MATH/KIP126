import KIP126.Def.Kervaire.Route.Source.Data
import KIP126.Def.Kervaire.Inputs.Literature.May

/-! May's suspension conventions are constructed from the identified
source tensor and its specified topological shift comparison. TC3 is
accepted later for these conventions; their construction is not an axiom. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
noncomputable section
variable {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
  [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
  (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
  (G : TmfLabels standardFoundation.hf2) (SM : SourceModel D η G)

/-- (Σ^n Y) tensor X → Σ^n(Y tensor X), with no independently chosen
CommShift. The inverse of the actual shifted Day pairing is used. -/
def sourceRightTensorShift (X : Syn) (n : ℤ) :
    shiftFunctor Syn n ⋙ tensorRight X ≅ tensorRight X ⋙ shiftFunctor Syn n := by
  have hsource := SM.synthetic.biShift_tensor
  exact NatIso.ofComponents (fun Y =>
    (tensorRight X).mapIso ((SyntheticCategory.biShift_compat (Syn := Syn) n).app Y).symm ≪≫
      (SyntheticCategory.biShift_tensor_comm (n,0) Y X).symm ≪≫
      (SyntheticCategory.biShift_compat (Syn := Syn) n).app (Y ⊗ X)) (by sorry)

/-- Move the fixed X across using the actual symmetric braiding, apply
the right comparison, then move it back after suspension. -/
def sourceLeftTensorShift (X : Syn) (n : ℤ) :
    shiftFunctor Syn n ⋙ tensorLeft X ≅ tensorLeft X ⋙ shiftFunctor Syn n :=
  NatIso.ofComponents (fun Y =>
    (β_ X ((shiftFunctor Syn n).obj Y)) ≪≫
      (sourceRightTensorShift D η G SM X n).app Y ≪≫
      (shiftFunctor Syn n).mapIso (β_ Y X)) (by sorry)

/-- Source binding proves the coherence equations of these fixed maps.
The record contains no free choice of suspension isomorphism. -/
def sourceMayTensor : MayTensorData Syn where
  leftShift X := {
    commShiftIso := sourceLeftTensorShift D η G SM X
    commShiftIso_zero := by sorry
    commShiftIso_add := by sorry }
  rightShift X := {
    commShiftIso := sourceRightTensorShift D η G SM X
    commShiftIso_zero := by sorry
    commShiftIso_add := by sorry }
  leftExact := by
    have h := SM.synthetic.distinguished_source
    sorry
  rightExact := by
    have h := SM.synthetic.distinguished_source
    sorry

end
end KIP126.Literature.Route
