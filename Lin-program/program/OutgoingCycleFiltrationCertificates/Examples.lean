import OutgoingCycleFiltrationCertificates.Certificate

namespace OutgoingCycleFiltrationCertificates.Examples
open PermanentCycleCertificates OutgoingCycleCertificates

def killedFiltration : Filtration Bool where
  Z := fun _ _ => True
  initial := fun _ => trivial
  decreasing := fun _ _ _ => trivial
  zero := false
  zero_mem := fun _ => trivial
  boundary := fun n =>
    { r := fun x y => n = 0 → x.val = y.val
      iseqv :=
        { refl := fun _ _ => rfl
          symm := fun h hn => (h hn).symm
          trans := fun h1 h2 hn => (h1 hn).trans (h2 hn) } }
  initial_boundary := by intro x y; simp

def qzero (n : Nat) : Quotient (killedFiltration.boundary n) :=
  Quotient.mk _ ⟨false,trivial⟩

/-- A genuine two-element initial quotient becomes the zero quotient after
the first incoming identity map. All outgoing differentials are zero. -/
def killedSystem : System where
  Page := fun n => Quotient (killedFiltration.boundary n)
  Incoming := fun n => Quotient (killedFiltration.boundary n)
  Outgoing := fun _ => Unit
  zero := qzero
  zeroIncoming := qzero
  zeroOutgoing := fun _ => ()
  incoming := fun _ x => x
  outgoing := fun _ _ => ()
  advance := fun n _ => qzero (n+1)
  incoming_zero := fun _ => rfl
  homology_zero := by intro n x _; simp

def killedRealization : Realization killedFiltration killedSystem where
  quotient := fun _ => Equiv.refl _
  quotient_zero := fun _ => rfl
  outgoing_zero_iff := by intro n x h; constructor <;> intro hh; trivial; rfl
  advance_compatible := by
    intro n x h
    apply Quotient.sound
    change n + 1 = 0 → false = x
    intro impossible
    omega

theorem initially_nonzero : killedRealization.initial true ≠ killedSystem.zero 0 := by
  intro h
  have eq := Quotient.exact h
  change 0 = 0 → true = false at eq
  have bad := eq rfl
  contradiction

theorem later_boundary : killedFiltration.Boundary 1 true := by
  refine ⟨trivial,?_⟩
  change 1 = 0 → true = false
  intro impossible
  omega

theorem killed_in_intersection : killedFiltration.ZInfinity true := fun _ => trivial
theorem killed_is_always_cycle : AlwaysCycle killedSystem (killedRealization.initial true) :=
  (killedRealization.intersection_iff_alwaysCycle true).mp killed_in_intersection

theorem killed_later_zero : killedSystem.at (killedRealization.initial true) 1 = killedSystem.zero 1 := rfl

theorem killed_not_permanent : ¬ killedSystem.Permanent (killedRealization.initial true) := by
  intro h
  exact (h 0).2 ⟨killedRealization.initial true,rfl⟩

/-- Boundary classes and the initial zero are still in every cycle subset;
the bridge asserts no nonzero or nonboundary condition on later pages. -/
example : killedFiltration.ZInfinity false := fun _ => trivial

#print axioms initially_nonzero
#print axioms killed_is_always_cycle
#print axioms killed_not_permanent
end OutgoingCycleFiltrationCertificates.Examples
