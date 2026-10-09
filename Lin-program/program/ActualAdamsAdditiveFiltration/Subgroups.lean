import ActualAdamsAdditiveFiltration.Basic

namespace ActualAdamsAdditiveFiltration
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open OutgoingCycleFiltrationCertificates

theorem neg_eq_self (V : F2Space) (x : V.carrier) : -x = x :=
  neg_eq_iff_add_eq_zero.mpr (f2Space_add_self V x)

def Z (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    AddSubgroup (S.element 2 d).carrier where
  carrier := Cycles (system S pages (additive.zeroMeaning S pages) d) n
  zero_mem' := by
    change Cycles (system S pages (additive.zeroMeaning S pages) d) n 0
    have h := (filtration _ (differentialLaws S pages (additive.zeroMeaning S pages) d)).zero_mem n
    change Cycles (system S pages (additive.zeroMeaning S pages) d) n (S.zero 2 d) at h
    rw [S.zero_is_zero 2 d] at h
    exact h
  add_mem' := fun hx hy => (cycles_add_and_at S pages additive d _ _ n hx hy).1
  neg_mem' := by intro x hx; rw [neg_eq_self]; exact hx

theorem boundary_add (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x y : (S.element 2 d).carrier)
    (hx : (filtration (system S pages (additive.zeroMeaning S pages) d)
      (differentialLaws S pages (additive.zeroMeaning S pages) d)).Boundary n x)
    (hy : (filtration (system S pages (additive.zeroMeaning S pages) d)
      (differentialLaws S pages (additive.zeroMeaning S pages) d)).Boundary n y) :
    (filtration (system S pages (additive.zeroMeaning S pages) d)
      (differentialLaws S pages (additive.zeroMeaning S pages) d)).Boundary n (x+y) := by
  let s := system S pages (additive.zeroMeaning S pages) d
  let laws := differentialLaws S pages (additive.zeroMeaning S pages) d
  obtain ⟨hxc,hx0⟩ := (boundary_iff_zero s laws n x).mp hx
  obtain ⟨hyc,hy0⟩ := (boundary_iff_zero s laws n y).mp hy
  obtain ⟨hc,he⟩ := cycles_add_and_at S pages additive d x y n hxc hyc
  apply (boundary_iff_zero s laws n (x+y)).mpr
  refine ⟨hc,he.trans ?_⟩
  change s.at x n + s.at y n = s.zero n
  rw [hx0,hy0]
  exact f2Space_add_self (S.element (n+2) d) (s.zero n) |>.trans
    (S.zero_is_zero (n+2) d).symm

def B (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    AddSubgroup (S.element 2 d).carrier where
  carrier := (filtration (system S pages (additive.zeroMeaning S pages) d)
    (differentialLaws S pages (additive.zeroMeaning S pages) d)).Boundary n
  zero_mem' := by
    let s := system S pages (additive.zeroMeaning S pages) d
    let laws := differentialLaws S pages (additive.zeroMeaning S pages) d
    apply (boundary_iff_zero s laws n _).mpr
    refine ⟨(Z S pages additive d n).zero_mem,?_⟩
    have h := at_zero s laws n
    simpa only [s,system,S.zero_is_zero] using h
  add_mem' := fun hx hy => boundary_add S pages additive d n _ _ hx hy
  neg_mem' := by intro x hx; rw [neg_eq_self]; exact hx

theorem B_le_Z (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    B S pages additive d n ≤ Z S pages additive d n := fun _ h => h.choose

theorem Z_antitone (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) : Antitone (Z S pages additive d) := by
  intro n m h x hx k hk
  exact hx k (by omega)

theorem B_monotone (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) : Monotone (B S pages additive d) := by
  intro n m h x hx
  exact ((actualRealization S pages (additive.zeroMeaning S pages) d).boundaryCoherence
    (differentialLaws S pages (additive.zeroMeaning S pages) d)).increasing n m h x hx

/-- The canonical quotient relation is the additive boundary-coset relation. -/
theorem equivalent_iff_sum_boundary (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x y : (S.element 2 d).carrier)
    (hx : x ∈ Z S pages additive d n) (hy : y ∈ Z S pages additive d n) :
    (system S pages (additive.zeroMeaning S pages) d).at x n =
        (system S pages (additive.zeroMeaning S pages) d).at y n ↔
      x+y ∈ B S pages additive d n := by
  let s := system S pages (additive.zeroMeaning S pages) d
  let laws := differentialLaws S pages (additive.zeroMeaning S pages) d
  obtain ⟨hc,he⟩ := cycles_add_and_at S pages additive d x y n hx hy
  change s.at x n = s.at y n ↔ (filtration s laws).Boundary n (x+y)
  rw [boundary_iff_zero s laws n]
  constructor
  · intro h
    refine ⟨hc,he.trans ?_⟩
    rw [h]
    exact (f2Space_add_self (S.element (n+2) d) (s.at y n)).trans
      (S.zero_is_zero (n+2) d).symm
  · rintro ⟨_,h⟩
    apply f2_add_eq_zero_implies_eq (S.element (n+2) d)
    exact he.symm.trans (h.trans (S.zero_is_zero (n+2) d))

#print axioms Z
#print axioms B
#print axioms B_le_Z
#print axioms Z_antitone
#print axioms B_monotone
#print axioms equivalent_iff_sum_boundary
end ActualAdamsAdditiveFiltration
