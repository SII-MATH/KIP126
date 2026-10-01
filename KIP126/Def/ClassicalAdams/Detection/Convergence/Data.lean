import KIP126.Def.ClassicalAdams.Detection.Proofs

namespace KIP126.Classical.Adams.TowerDetection
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Core.SpectralSequence
universe u v
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H)
def filtration (X : C) : Filtration (homotopy X) where
  F s n := (ModuleCat.subobjectModule _).symm (filtrationSubmodule unit X s n)
  mono s n := (ModuleCat.subobjectModule _).symm.monotone
    (filtrationSubmodule_antitone unit X n (by omega : s ≤ s + 1))

/-- One representative in the intersection of ALL actual tower cycles. -/
abbrev InfiniteRepresentative (X : C) (p : ℤ × ℤ) :=
  (Subobject.underlying.obj
    (((adamsTowerInternalSpectralSequence unit X).ssData p).Z ⊤) : ModuleCat ℤ)

/-- Forget the cycle membership, retaining the original cofiber-layer class
in E₁.  The internal ambient object is the actual Z₂ submodule of E₁. -/
def infiniteRepresentativeE1 (X : C) (p : ℤ × ℤ)
    (z : InfiniteRepresentative unit X p) : adamsE1 unit X p.1 p.2 :=
  ((((adamsTowerInternalSpectralSequence unit X).ssData p).Z ⊤).arrow z).val

/-- KJ=0 puts the cofiber image of an ACTUAL tower lift in every cycle
submodule, with one common E₁ representative.  The class may be zero; no
nonzero permanent survival or convergence assertion is included here. -/
theorem exists_liftRepresentative (X : C) (p : ℤ × ℤ)
    (a : HomotopyGroup (p.2-p.1) (adamsTowerAt unit X p.1)) :
    ∃ z : InfiniteRepresentative unit X p,
      infiniteRepresentativeE1 unit X p z = adamsJ unit X p.1 p.2 a := by sorry

/-- Canonical convergence is fixed on the actual maps from tower stages.
The two displayed representatives belong to the SAME tower lift: E₁ uses
the real cofiber inclusion J, and the filtration class uses projection to
stage zero.  Thus an arbitrary automorphism of E∞ cannot be substituted.
The quantification includes zero classes and all integer filtrations. -/
def CanonicalIdentification (X : C)
    (e : ∀ p : ℤ × ℤ,
      ((adamsTowerInternalSpectralSequence unit X).ssData p).eInfty ≅
        (filtration unit X).associatedGraded p.1 (p.2-p.1)) : Prop :=
  ∀ (p : ℤ × ℤ)
    (a : HomotopyGroup (p.2-p.1) (adamsTowerAt unit X p.1))
    (z : InfiniteRepresentative unit X p),
    infiniteRepresentativeE1 unit X p z = adamsJ unit X p.1 p.2 a →
    ∀ b : (Subobject.underlying.obj
      ((filtration unit X).F p.1 (p.2-p.1)) : ModuleCat ℤ),
    ((filtration unit X).F p.1 (p.2-p.1)).arrow b =
      inducedMap (adamsTowerMap unit X 0 p.1.toNat (Nat.zero_le _)) (p.2-p.1) a →
    (e p).hom (((adamsTowerInternalSpectralSequence unit X).ssData p).pageπ ⊤ z) =
      (filtration unit X).toAssociatedGraded p.1 (p.2-p.1) b

/-- Convergence to the actual homotopy of the *same* object, with the
filtration already constructed. No F₂-vector-space structure is imposed on π. -/
structure Convergence (X : C) where
  identification : ∀ p : ℤ × ℤ,
    ((adamsTowerInternalSpectralSequence unit X).ssData p).eInfty ≅
      (filtration unit X).associatedGraded p.1 (p.2 - p.1)
  canonical : CanonicalIdentification unit X identification
end
end KIP126.Classical.Adams.TowerDetection
