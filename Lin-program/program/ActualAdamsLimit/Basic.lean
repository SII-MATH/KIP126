import ActualAdamsAdditiveQuotient.Basic

namespace ActualAdamsLimit
open ManualInputObligations.Reference ActualAdamsSystemBridge
open ActualAdamsFiltration ActualAdamsAdditiveFiltration

def ZInfinity (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) : AddSubgroup (S.element 2 d).carrier where
  carrier := fun x => ∀ n, x ∈ Z S pages additive d n
  zero_mem' := fun n => (Z S pages additive d n).zero_mem
  add_mem' := fun hx hy n => (Z S pages additive d n).add_mem (hx n) (hy n)
  neg_mem' := fun hx n => (Z S pages additive d n).neg_mem (hx n)

def BInfinity (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) : AddSubgroup (S.element 2 d).carrier where
  carrier := fun x => ∃ n, x ∈ B S pages additive d n
  zero_mem' := ⟨0,(B S pages additive d 0).zero_mem⟩
  add_mem' := by
    rintro x y ⟨n,hn⟩ ⟨m,hm⟩
    refine ⟨max n m,(B S pages additive d (max n m)).add_mem ?_ ?_⟩
    · exact B_monotone S pages additive d (Nat.le_max_left n m) hn
    · exact B_monotone S pages additive d (Nat.le_max_right n m) hm
  neg_mem' := by rintro x ⟨n,hn⟩; exact ⟨n,(B S pages additive d n).neg_mem hn⟩

theorem BInfinity_le_ZInfinity (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) :
    BInfinity S pages additive d ≤ ZInfinity S pages additive d := by
  intro x hx
  exact (actualRealization S pages (additive.zeroMeaning S pages) d).BInfinity_subset_ZInfinity
    (differentialLaws S pages (additive.zeroMeaning S pages) d) x hx

def boundaries (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) : AddSubgroup (ZInfinity S pages additive d) :=
  (BInfinity S pages additive d).comap (ZInfinity S pages additive d).subtype

/-- This is the algebraic limiting cycle/boundary quotient. Convergence to
an associated graded homotopy group is a separate mathematical statement. -/
abbrev Limit (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) :=
  ZInfinity S pages additive d ⧸ boundaries S pages additive d

theorem limit_zero_iff (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (x : ZInfinity S pages additive d) :
    (QuotientAddGroup.mk x : Limit S pages additive d) = 0 ↔
      x.val ∈ BInfinity S pages additive d := by
  exact QuotientAddGroup.eq_zero_iff x

theorem permanent_iff_nonzero_limit (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (x : ZInfinity S pages additive d) :
    (system S pages (additive.zeroMeaning S pages) d).Permanent x.val ↔
      (QuotientAddGroup.mk x : Limit S pages additive d) ≠ 0 := by
  rw [actual_permanent_iff S pages (additive.zeroMeaning S pages) d x.val]
  rw [ne_eq,limit_zero_iff]
  constructor
  · exact fun h => h.2
  · exact fun h => ⟨x.property,h⟩

#print axioms BInfinity_le_ZInfinity
#print axioms limit_zero_iff
#print axioms permanent_iff_nonzero_limit
end ActualAdamsLimit
