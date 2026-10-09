import ActualAdamsFiltration.Actual

namespace ActualAdamsAdditiveFiltration
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration

instance systemPageAdd (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (d : Bidegree) (n : Nat) :
    AddCommGroup ((system S pages zeros d).Page n) := (S.element (n+2) d).addGroup

def cycleAdd (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x y : PageCycle S r d) : PageCycle S r d :=
  ⟨x.val + y.val, by
    rw [(S.differential r d).map_add',x.property,y.property,S.zero_is_zero,add_zero]⟩

/-- A mere Type equivalence of homology quotients need not preserve addition.
This is the local mathematical compatibility required at each page. -/
def AddMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) : Prop :=
  ∀ r d (x y : PageCycle S r d),
    (pages.nextPage r d).toNext (Quotient.mk _ (cycleAdd S r d x y)) =
      (pages.nextPage r d).toNext (Quotient.mk _ x) +
        (pages.nextPage r d).toNext (Quotient.mk _ y)

theorem AddMeaning.zeroMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) : ZeroMeaning S pages := by
  intro r d
  have hz : cycleAdd S r d (zeroCycle S r d) (zeroCycle S r d) = zeroCycle S r d := by
    apply Subtype.ext
    exact zero_add 0
  have h := additive r d (zeroCycle S r d) (zeroCycle S r d)
  rw [hz] at h
  rw [f2Space_add_self] at h
  exact h.trans (S.zero_is_zero (r+1) d).symm

theorem advance_add (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (r : Nat) (d : Bidegree)
    (x y : PageCycle S r d) :
    advance S pages r d (x.val+y.val) =
      advance S pages r d x.val + advance S pages r d y.val := by
  change advance S pages r d (cycleAdd S r d x y).val = _
  rw [advance_on_cycle S pages r d _ (cycleAdd S r d x y).property,
    advance_on_cycle S pages r d x.val x.property,
    advance_on_cycle S pages r d y.val y.property]
  exact additive r d x y

/-- Additivity is needed only on the earlier cycle representatives; the
arbitrary extension of advance to noncycles is never treated as linear. -/
theorem cycles_add_and_at (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree)
    (x y : (S.element 2 d).carrier) (n : Nat)
    (hx : Cycles (system S pages (additive.zeroMeaning S pages) d) n x)
    (hy : Cycles (system S pages (additive.zeroMeaning S pages) d) n y) :
    Cycles (system S pages (additive.zeroMeaning S pages) d) n (x+y) ∧
      (system S pages (additive.zeroMeaning S pages) d).at (x+y) n =
        (system S pages (additive.zeroMeaning S pages) d).at x n +
          (system S pages (additive.zeroMeaning S pages) d).at y n := by
  let s := system S pages (additive.zeroMeaning S pages) d
  change Cycles s n (x+y) ∧ s.at (x+y) n = s.at x n + s.at y n
  induction n with
  | zero => exact ⟨by intro k hk; omega,rfl⟩
  | succ n ih =>
    obtain ⟨hxp,hxc⟩ := (cycles_succ s n x).mp hx
    obtain ⟨hyp,hyc⟩ := (cycles_succ s n y).mp hy
    obtain ⟨hp,he⟩ := ih hxp hyp
    have hc : s.outgoing n (s.at (x+y) n) = s.zeroOutgoing n := by
      rw [he]
      exact (cycleAdd S (n+2) d ⟨s.at x n,hxc⟩ ⟨s.at y n,hyc⟩).property
    refine ⟨(cycles_succ s n (x+y)).mpr ⟨hp,hc⟩,?_⟩
    change advance S pages (n+2) d (s.at (x+y) n) =
      advance S pages (n+2) d (s.at x n) + advance S pages (n+2) d (s.at y n)
    rw [he]
    exact advance_add S pages additive (n+2) d ⟨s.at x n,hxc⟩ ⟨s.at y n,hyc⟩

#print axioms AddMeaning.zeroMeaning
#print axioms advance_add
#print axioms cycles_add_and_at
end ActualAdamsAdditiveFiltration
