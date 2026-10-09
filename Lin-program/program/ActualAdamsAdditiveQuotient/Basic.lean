import ActualAdamsAdditiveFiltration.Quotient
import Mathlib.GroupTheory.QuotientGroup.Basic

namespace ActualAdamsAdditiveQuotient
open ManualInputObligations.Reference ActualAdamsAdditiveFiltration

def boundaries (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    AddSubgroup (Z S pages additive d n) :=
  (B S pages additive d n).comap (Z S pages additive d n).subtype

theorem boundaries_eq_kernel (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    boundaries S pages additive d n = (image S pages additive d n).ker := by
  ext x
  exact (image_kernel S pages additive d n x).symm

/-- The literal additive subgroup quotient Z/B is the entire actual page. -/
noncomputable def equivalence (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    (Z S pages additive d n) ⧸ boundaries S pages additive d n ≃+
      (S.element (n+2) d).carrier :=
  (QuotientAddGroup.quotientAddEquivOfEq (boundaries_eq_kernel S pages additive d n)).trans
    (QuotientAddGroup.quotientKerEquivOfSurjective (image S pages additive d n)
      (image_surjective S pages additive d n))

theorem equivalence_mk (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x : Z S pages additive d n) :
    equivalence S pages additive d n (QuotientAddGroup.mk x) =
      image S pages additive d n x := rfl

theorem equivalence_add (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x y : (Z S pages additive d n) ⧸ boundaries S pages additive d n) :
    equivalence S pages additive d n (x+y) =
      equivalence S pages additive d n x + equivalence S pages additive d n y :=
  (equivalence S pages additive d n).map_add x y

#print axioms boundaries_eq_kernel
#print axioms equivalence
#print axioms equivalence_mk
#print axioms equivalence_add
end ActualAdamsAdditiveQuotient
