import ActualAdamsAdditiveFiltration.Subgroups

namespace ActualAdamsAdditiveFiltration
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration

noncomputable def image (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    Z S pages additive d n →+ (S.element (n+2) d).carrier where
  toFun := fun x => (system S pages (additive.zeroMeaning S pages) d).at x.val n
  map_zero' := by
    let s := system S pages (additive.zeroMeaning S pages) d
    have h := at_zero s (differentialLaws S pages (additive.zeroMeaning S pages) d) n
    change s.at (S.zero 2 d) n = S.zero (n+2) d at h
    rw [S.zero_is_zero 2 d,S.zero_is_zero (n+2) d] at h
    exact h
  map_add' := fun x y => (cycles_add_and_at S pages additive d x.val y.val n
    x.property y.property).2

theorem image_surjective (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat) :
    Function.Surjective (image S pages additive d n) := by
  intro y
  obtain ⟨x,hx,h⟩ := representative (system S pages (additive.zeroMeaning S pages) d)
    (actual_cycle_surjective S pages (additive.zeroMeaning S pages) d) n y
  exact ⟨⟨x,hx⟩,h⟩

theorem image_kernel (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x : Z S pages additive d n) :
    image S pages additive d n x = 0 ↔ x.val ∈ B S pages additive d n := by
  let s := system S pages (additive.zeroMeaning S pages) d
  let laws := differentialLaws S pages (additive.zeroMeaning S pages) d
  change s.at x.val n = 0 ↔ (filtration s laws).Boundary n x.val
  rw [boundary_iff_zero s laws n]
  constructor
  · intro h
    exact ⟨x.property,h.trans (S.zero_is_zero (n+2) d).symm⟩
  · rintro ⟨_,h⟩
    exact h.trans (S.zero_is_zero (n+2) d)

/-- The quotient addition is transported from the actual next page; the
representative formula is proved below, rather than assumed. -/
noncomputable def quotientAdd (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (a b : Quotient ((filtration (system S pages (additive.zeroMeaning S pages) d)
      (differentialLaws S pages (additive.zeroMeaning S pages) d)).boundary n)) :=
  (actualRealization S pages (additive.zeroMeaning S pages) d).quotient n |>.symm
    ((actualRealization S pages (additive.zeroMeaning S pages) d).quotient n a +
      (actualRealization S pages (additive.zeroMeaning S pages) d).quotient n b)

theorem quotientAdd_mk (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (n : Nat)
    (x y : Z S pages additive d n) :
    quotientAdd S pages additive d n (Quotient.mk _ x) (Quotient.mk _ y) =
      Quotient.mk _ (x+y) := by
  let r := actualRealization S pages (additive.zeroMeaning S pages) d
  apply (r.quotient n).injective
  change r.quotient n ((r.quotient n).symm _) = r.quotient n (Quotient.mk _ (x+y))
  rw [(r.quotient n).apply_symm_apply]
  exact (cycles_add_and_at S pages additive d x.val y.val n x.property y.property).2.symm

#print axioms image
#print axioms image_surjective
#print axioms image_kernel
#print axioms quotientAdd_mk
end ActualAdamsAdditiveFiltration
