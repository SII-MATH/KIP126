import KIP126.Def.Synthetic.AdamsFiltration.Proofs
import KIP126.Def.Synthetic.AdamsSequence.TowerComparison.Data
import KIP126.Def.ClassicalAdams.Detection.Convergence.Data

namespace KIP126.Synthetic.SpectralSequence
open CategoryTheory KIP126.Core.SpectralSequence
open KIP126.StableHomotopy KIP126.Synthetic.Context
universe u v
noncomputable section
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]
  [HasFunctorialCofiber (C := Syn)] {H : Syn} (unit : S00 ⟶ H)

/-- The filtration is constructed from the tower; it cannot be replaced by
an independently selected filtration to make a detection statement true. -/
def towerFiltration (X : Syn) : Filtration (syntheticHomotopy X) where
  F s p := (ModuleCat.subobjectModule _).symm (towerFiltrationSubmodule unit X s p)
  mono s p := (ModuleCat.subobjectModule _).symm.monotone
    (towerFiltrationSubmodule_antitone unit X p (by omega : s ≤ s + 1))

/-- Only the E∞ identification remains input. Convergence is supplied for
the objects where it is needed, not asserted for every synthetic spectrum. -/
structure TowerConvergence (F : SyntheticAdamsFamily Syn) (X : Syn) where
  identification : ∀ i : Tridegree,
    ((F.obj X).sequence.ssData i).eInfty ≅
      (towerFiltration unit X).associatedGraded i.1 (i.2.1 - i.1, i.2.2)

/-- The specified bigraded suspension identifies the shifted domain sphere
with the ordinary m-sphere. The map is fixed by biShift_comp and biShift_compat. -/
def weightSourceIso (m w : ℤ) :
    (SyntheticCategory.biShift (0,-w)).obj (Smn m w (Syn := Syn)) ≅
      KIP126.StableHomotopy.Sphere (C := Syn) m :=
  (SyntheticCategory.biShift_comp (m,w) (0,-w)).app S00 ≪≫
    eqToIso (congrArg (fun p : ℤ × ℤ => (SyntheticCategory.biShift p).obj (S00 : Syn))
      (by ext <;> simp)) ≪≫
    (SyntheticCategory.biShift_compat (Syn := Syn) m).app S00

/-- Actual desuspension in weight, on maps rather than a selected bijection. -/
def weightHomotopyMap (m w : ℤ) (X : Syn) (a : BiHom m w X) :
    HomotopyGroup m ((SyntheticCategory.biShift (0,-w)).obj X) :=
  (weightSourceIso m w).inv ≫ (SyntheticCategory.biShift (0,-w)).map a

abbrev FamilyInfiniteRepresentative (F : SyntheticAdamsFamily Syn) (X : Syn)
    (i : Tridegree) :=
  (Subobject.underlying.obj (((F.obj X).sequence.ssData i).Z ⊤) : ModuleCat ℤ)

/-- Read a family representative in the SAME actual weight tower selected
by P. Both its E₂ and E∞ projections therefore use one common representative. -/
def familyInfiniteRepresentativeE1 {F : SyntheticAdamsFamily Syn}
    (P : TowerPresentation unit F) (X : Syn) (i : Tridegree)
    (z : FamilyInfiniteRepresentative F X i) :
    KIP126.Classical.Adams.adamsE1 unit
      ((SyntheticCategory.biShift (0,-i.2.2)).obj X) i.1 i.2.1 :=
  KIP126.Classical.Adams.TowerDetection.infiniteRepresentativeE1 unit
    ((SyntheticCategory.biShift (0,-i.2.2)).obj X) (i.1,i.2.1)
    ((P.forward X i.2.2).cycleMap (i.1,i.2.1) ⊤ z)

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

/-- Canonical detection relative to the ONE supplied tower presentation.
The first condition binds the weight-shifted tower filtration to the actual
bigraded tower filtration. The second fixes the E∞ identification on actual
tower lifts and their cofiber images. Requiring this only for the model's P
avoids the false assertion that every re-labelled tower presentation has the
same detection map. No specified differential or survival is imposed. -/
def TowerConvergence.Canonical {F : SyntheticAdamsFamily Syn} {X : Syn}
    (c : TowerConvergence unit F X) (P : TowerPresentation unit F) : Prop :=
  (∀ (s m w : ℤ) (a : BiHom m w X),
    a ∈ towerFiltrationSubmodule unit X s (m,w) ↔
      weightHomotopyMap m w X a ∈
        KIP126.Classical.Adams.TowerDetection.filtrationSubmodule unit
          ((SyntheticCategory.biShift (0,-w)).obj X) s m) ∧
  ∀ (i : Tridegree)
    (a : HomotopyGroup (i.2.1-i.1)
      (KIP126.Classical.Adams.adamsTowerAt unit
        ((SyntheticCategory.biShift (0,-i.2.2)).obj X) i.1))
    (z : FamilyInfiniteRepresentative F X i),
    familyInfiniteRepresentativeE1 unit P X i z =
      KIP126.Classical.Adams.adamsJ unit
        ((SyntheticCategory.biShift (0,-i.2.2)).obj X) i.1 i.2.1 a →
    ∀ b : (Subobject.underlying.obj
      ((towerFiltration unit X).F i.1 (i.2.1-i.1,i.2.2)) : ModuleCat ℤ),
    weightHomotopyMap (i.2.1-i.1) i.2.2 X
      (((towerFiltration unit X).F i.1 (i.2.1-i.1,i.2.2)).arrow b) =
      inducedMap (KIP126.Classical.Adams.adamsTowerMap unit
        ((SyntheticCategory.biShift (0,-i.2.2)).obj X) 0 i.1.toNat (Nat.zero_le _))
        (i.2.1-i.1) a →
    (c.identification i).hom (((F.obj X).sequence.ssData i).pageπ ⊤ z) =
      (towerFiltration unit X).toAssociatedGraded i.1 (i.2.1-i.1,i.2.2) b

def TowerConvergence.toSynthetic {F : SyntheticAdamsFamily Syn} {X : Syn}
    (c : TowerConvergence unit F X) : SyntheticAdamsConvergence F X where
  filtration := towerFiltration unit X
  identification := c.identification
end
end KIP126.Synthetic.SpectralSequence
