import PermanentMapTailCertificates.Basic
import OutgoingCycleFiltrationCertificates.Boundary

namespace OutgoingCycleMapTransport
open PermanentCycleCertificates OutgoingCycleCertificates PermanentMapTailCertificates

/-- Whole page and differential maps, with quotient compatibility only on
cycles. No all-page conclusion about a selected element is a field. -/
structure CycleMap (s t : System) where
  page : ∀ n, s.Page n → t.Page n
  outgoing : ∀ n, s.Outgoing n → t.Outgoing n
  zeroOutgoing : ∀ n, outgoing n (s.zeroOutgoing n) = t.zeroOutgoing n
  differential : ∀ n x, t.outgoing n (page n x) = outgoing n (s.outgoing n x)
  advance : ∀ n x, s.outgoing n x = s.zeroOutgoing n →
    t.advance n (page n x) = page (n+1) (s.advance n x)

namespace CycleMap
variable {s t u : System}

def id (s : System) : CycleMap s s where
  page := fun _ x => x
  outgoing := fun _ x => x
  zeroOutgoing := fun _ => rfl
  differential := fun _ _ => rfl
  advance := fun _ _ _ => rfl

def comp (g : CycleMap t u) (f : CycleMap s t) : CycleMap s u where
  page := fun n x => g.page n (f.page n x)
  outgoing := fun n x => g.outgoing n (f.outgoing n x)
  zeroOutgoing := fun n => (congrArg (g.outgoing n) (f.zeroOutgoing n)).trans (g.zeroOutgoing n)
  differential := fun n x => (g.differential n (f.page n x)).trans
    (congrArg (g.outgoing n) (f.differential n x))
  advance := by
    intro n x hx
    have cycle : t.outgoing n (f.page n x) = t.zeroOutgoing n :=
      (f.differential n x).trans ((congrArg (f.outgoing n) hx).trans (f.zeroOutgoing n))
    exact (g.advance n _ cycle).trans (congrArg (g.page (n+1)) (f.advance n x hx))

theorem at_naturality (f : CycleMap s t) (x : s.Page 0) (cycle : AlwaysCycle s x) :
    ∀ n, t.at (f.page 0 x) n = f.page n (s.at x n) := by
  intro n
  induction n with
  | zero => rfl
  | succ n ih =>
    change t.advance n (t.at (f.page 0 x) n) = f.page (n+1) (s.advance n (s.at x n))
    rw [ih]
    exact f.advance n _ (cycle n)

theorem alwaysCycle (f : CycleMap s t) (x : s.Page 0) (cycle : AlwaysCycle s x) :
    AlwaysCycle t (f.page 0 x) := by
  intro n
  rw [f.at_naturality x cycle n, f.differential, cycle, f.zeroOutgoing]

theorem reflect_alwaysCycle (f : CycleMap s t)
    (faithful : ∀ n, Function.Injective (f.outgoing n))
    (x : s.Page 0) (cycle : AlwaysCycle t (f.page 0 x)) : AlwaysCycle s x := by
  have both : ∀ n, t.at (f.page 0 x) n = f.page n (s.at x n) ∧
      s.outgoing n (s.at x n) = s.zeroOutgoing n := by
    intro n
    induction n with
    | zero =>
      refine ⟨rfl, faithful 0 ?_⟩
      exact (f.differential 0 x).symm.trans ((cycle 0).trans (f.zeroOutgoing 0).symm)
    | succ n ih =>
      have same : t.at (f.page 0 x) (n+1) = f.page (n+1) (s.at x (n+1)) := by
        change t.advance n (t.at (f.page 0 x) n) = _
        rw [ih.1]
        exact f.advance n _ ih.2
      refine ⟨same, faithful (n+1) ?_⟩
      exact (f.differential (n+1) _).symm.trans
        ((congrArg (t.outgoing (n+1)) same.symm).trans
          ((cycle (n+1)).trans (f.zeroOutgoing (n+1)).symm))
  exact fun n => (both n).2

theorem push_tail (f : CycleMap s t) (cutoff : Nat)
    (covers : ∀ n, cutoff ≤ n → Function.Surjective (f.page n))
    (tail : OutgoingMapTail s cutoff) : OutgoingMapTail t cutoff := by
  intro n hn y
  obtain ⟨x, rfl⟩ := covers n hn y
  exact (f.differential n x).trans
    ((congrArg (f.outgoing n) (tail n hn x)).trans (f.zeroOutgoing n))

theorem pull_tail (f : CycleMap s t) (cutoff : Nat)
    (faithful : ∀ n, cutoff ≤ n → Function.Injective (f.outgoing n))
    (tail : OutgoingMapTail t cutoff) : OutgoingMapTail s cutoff := by
  intro n hn x
  apply faithful n hn
  exact (f.differential n x).symm.trans ((tail n hn _).trans (f.zeroOutgoing n).symm)

#print axioms comp
#print axioms at_naturality
#print axioms alwaysCycle
#print axioms reflect_alwaysCycle
#print axioms push_tail
#print axioms pull_tail
end CycleMap
end OutgoingCycleMapTransport
