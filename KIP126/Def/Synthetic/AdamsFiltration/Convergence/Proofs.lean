import KIP126.Def.Synthetic.AdamsFiltration.Convergence.Canonical.Data
import KIP126.Def.Synthetic.AdamsSequence.TowerComparison.Data
import KIP126.Def.ClassicalAdams.Detection.Convergence.Data

namespace KIP126.Synthetic.SpectralSequence
open CategoryTheory KIP126.Core.SpectralSequence
open KIP126.StableHomotopy KIP126.Synthetic.Context
universe u v
noncomputable section
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]
  [HasFunctorialCofiber (C := Syn)] {H : Syn} (unit : S_0_0 ⟶ H)

/-- Every genuine tower lift has a common family representative, transported
through P.inverse. This is KJ=0, allowing a ZERO class, not convergence. -/
theorem exists_weightLiftRepresentative {F : SyntheticAdamsFamily Syn}
    (P : TowerPresentation unit F) (X : Syn) (i : Tridegree)
    (a : HomotopyGroup (i.2.1-i.1)
      (KIP126.Classical.Adams.adamsTowerAt unit
        ((SyntheticCategory.biShift (0,-i.2.2)).obj X) i.1)) :
    ∃ z : FamilyInfiniteRepresentative F X i,
      familyInfiniteRepresentativeE1 unit P X i z =
        KIP126.Classical.Adams.adamsJ unit
          ((SyntheticCategory.biShift (0,-i.2.2)).obj X) i.1 i.2.1 a := by sorry

end
end KIP126.Synthetic.SpectralSequence
