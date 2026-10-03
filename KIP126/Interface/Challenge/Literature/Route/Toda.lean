import KIP126.Challenge2.Route.Literature.Toda

namespace KIP126.Interface.Challenge.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Transport the actual secondary-operation calculation, retaining its
star/product identification. BHS ring facts alone are not sufficient. -/
theorem todaApplication_of_secondary (η : BiHom 1 2 (S00 : Syn))
    (S : TodaSourceData (Syn := Syn)) (B : TodaSecondaryComparison η S) :
    TodaApplication η S := by
  sorry

/-- The public Toda consumer delivery keeps source facts and internal
secondary-operation evidence separate until this final assembly. -/
theorem toda_of_source (η : BiHom 1 2 (S00 : Syn)) (S : TodaSourceData (Syn := Syn))
    (A : TodaSourceResults D η S) (B : TodaSecondaryComparison η S) :
    Nonempty (TodaInputs D η) := by
  sorry

end
end KIP126.Interface.Challenge.Literature.Route
