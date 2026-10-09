import OutgoingCycleMapTransport.Basic
import OutgoingCycleCertificates.Import

namespace OutgoingCycleMapTransport
open PermanentCycleCertificates OutgoingCycleCertificates OutgoingCycleFiltrationCertificates
open PageTransitionCertificates

theorem zero_after_hit (s : System) (laws : DifferentialLaws s) (x : s.Page 0)
    (hitIndex : Nat) (hit : ∃ y, s.incoming hitIndex y = s.at x hitIndex) :
    ∀ n, hitIndex + 1 ≤ n → s.at x n = s.zero n := by
  have hitCycle : s.outgoing hitIndex (s.at x hitIndex) = s.zeroOutgoing hitIndex := by
    obtain ⟨y, hy⟩ := hit
    rw [← hy]
    exact laws.incoming_cycle hitIndex y
  have start : s.at x (hitIndex + 1) = s.zero (hitIndex + 1) :=
    (s.homology_zero hitIndex _ hitCycle).mpr hit
  intro n hn
  induction n, hn using Nat.le_induction with
  | base => exact start
  | succ n _ ih =>
    change s.advance n (s.at x n) = _
    rw [ih]
    exact laws.advance_zero n

theorem alwaysCycle_of_hit (s : System) (laws : DifferentialLaws s) (x : s.Page 0)
    (hitIndex : Nat)
    (before : ∀ n, n < hitIndex → s.outgoing n (s.at x n) = s.zeroOutgoing n)
    (hit : ∃ y, s.incoming hitIndex y = s.at x hitIndex) : AlwaysCycle s x := by
  intro n
  by_cases earlier : n < hitIndex
  · exact before n earlier
  by_cases same : n = hitIndex
  · subst n
    obtain ⟨y, hy⟩ := hit
    rw [← hy]
    exact laws.incoming_cycle hitIndex y
  · rw [zero_after_hit s laws x hitIndex hit n (by omega)]
    exact laws.zero_outgoing n

theorem not_permanent_of_hit (s : System) (x : s.Page 0) (hitIndex : Nat)
    (hit : ∃ y, s.incoming hitIndex y = s.at x hitIndex) : ¬ s.Permanent x :=
  fun h => (h hitIndex).2 hit

/-- The hit is proved actual mathematics, not a flag in imported JSON.
Only stages before the hit need executable finite checks. -/
structure HitCertificate (s : System) (x : s.Page 0) where
  stages : List Stage
  meaning : PrefixMeaning s x stages
  laws : DifferentialLaws s
  hit : ∃ y, s.incoming stages.length y = s.at x stages.length

def assembleHit (s : System) (x : s.Page 0) (wire : OutgoingCycleCertificates.Wire)
    (meaning : PrefixMeaning s x wire.stages) (laws : DifferentialLaws s)
    (hit : ∃ y, s.incoming wire.stages.length y = s.at x wire.stages.length) :
    HitCertificate s x := ⟨wire.stages, meaning, laws, hit⟩

theorem HitCertificate.sound {s : System} {x : s.Page 0} (c : HitCertificate s x)
    (checked : OutgoingCycleCertificates.checkPrefix c.stages = true) : AlwaysCycle s x := by
  apply alwaysCycle_of_hit s c.laws x c.stages.length ?_ c.hit
  intro n hn
  have accepted : c.stages.all checkCycleStage = true := by
    simp only [OutgoingCycleCertificates.checkPrefix, Bool.and_eq_true,
      decide_eq_true_eq] at checked
    exact checked.2
  let i : Fin c.stages.length := ⟨n, hn⟩
  have stage := checkCycleStage_sound c.stages[n]
    ((List.all_eq_true.mp accepted) c.stages[n] (List.getElem_mem hn))
  exact cycle_transport c.stages[n] stage (c.meaning.coordinates.page s c.stages i)
    (c.meaning.equations i) (s.at x n) (c.meaning.named i)

syntax "outgoing_hit_cert" " using " term : tactic
macro_rules
  | `(tactic| outgoing_hit_cert using $c:term) => `(tactic|
      exact OutgoingCycleMapTransport.HitCertificate.sound $c (by first | rfl | decide))

structure HitRequest where
  system : System
  element : system.Page 0
  certificate : HitCertificate system element

def checkBatch (requests : List HitRequest) : Bool :=
  requests.all (fun r => OutgoingCycleCertificates.checkPrefix r.certificate.stages)

theorem checkBatch_sound (requests : List HitRequest) (checked : checkBatch requests = true) :
    ∀ r ∈ requests, AlwaysCycle r.system r.element := by
  intro r hr
  exact r.certificate.sound ((List.all_eq_true.mp checked) r hr)

#print axioms zero_after_hit
#print axioms alwaysCycle_of_hit
#print axioms not_permanent_of_hit
#print axioms HitCertificate.sound
#print axioms checkBatch_sound
end OutgoingCycleMapTransport
