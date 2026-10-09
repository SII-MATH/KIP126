import OutgoingCycleMapTransport.Fact762
import PermanentMapTailCertificates.Examples
import PermanentCycleCertificates.Counterexamples

namespace OutgoingCycleMapTransport.Examples
open PermanentCycleCertificates OutgoingCycleCertificates OutgoingCycleFiltrationCertificates
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

/-- A genuine incoming hit at index one; earlier zero maps and identity
advancement give the complete finite comparison before the hit. -/
def hitLater : System where
  Page := fun _ => Bool
  Incoming := fun _ => Bool
  Outgoing := fun _ => Bool
  zero := fun _ => false
  zeroIncoming := fun _ => false
  zeroOutgoing := fun _ => false
  incoming := fun n x => if n = 0 then false else x
  outgoing := fun _ _ => false
  advance := fun n x => if n = 0 then x else false
  incoming_zero := by intro n; split_ifs <;> rfl
  homology_zero := by intro n x _; by_cases hn : n = 0 <;> simp [hn]

theorem laws : DifferentialLaws hitLater := ⟨fun _ => rfl, fun _ _ => rfl⟩

abbrev stage := PermanentMapTailCertificates.Examples.stage

def coordinates : PrefixCoordinates hitLater [stage] where
  incoming := fun _ x _ => x
  current := fun _ x _ => x
  outgoing := fun _ x _ => x
  next := fun _ x _ => x

def meaning : PrefixMeaning hitLater true [stage] where
  coordinates := coordinates
  equations := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by
      apply Fin.ext
      change i.val = 0
      have h := i.isLt
      change i.val < 1 at h
      omega
    subst i
    exact PermanentMapTailCertificates.Examples.meaning.equations ⟨0, by decide⟩
  named := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by
      apply Fin.ext
      change i.val = 0
      have h := i.isLt
      change i.val < 1 at h
      omega
    subst i
    exact PermanentMapTailCertificates.Examples.meaning.named ⟨0, by decide⟩

def certificate : HitCertificate hitLater true :=
  ⟨[stage], meaning, laws, ⟨true, rfl⟩⟩

theorem hit_cycle : AlwaysCycle hitLater true := by outgoing_hit_cert using certificate
theorem hit_not_permanent : ¬ hitLater.Permanent true :=
  not_permanent_of_hit hitLater true 1 ⟨true, rfl⟩
theorem all_later_zero : ∀ n, 2 ≤ n → hitLater.at true n = false :=
  zero_after_hit hitLater laws true 1 ⟨true, rfl⟩

def identity : CycleMap hitLater hitLater := CycleMap.id _
theorem identity_cycle : AlwaysCycle hitLater (identity.page 0 true) :=
  identity.alwaysCycle true hit_cycle

def batch : List HitRequest := [⟨hitLater, true, certificate⟩]
theorem batch_cycle : ∀ r ∈ batch, AlwaysCycle r.system r.element :=
  checkBatch_sound batch (by decide)

def imported : Wire := outgoing_prefix% "OutgoingCycleMapTransport/hit-prefix.json"

def importedCertificate : HitCertificate hitLater true :=
  assembleHit hitLater true imported meaning laws ⟨true, rfl⟩

theorem imported_cycle : AlwaysCycle hitLater true := by
  outgoing_hit_cert using importedCertificate

example : OutgoingCycleCertificates.checkPrefix [] = false := by decide
example : OutgoingCycleCertificates.checkPrefix
    [{ stage with representative := [true, false] }] = false := by decide

theorem no_universal_tail_from_finite_prefix (late : Nat) :
    (∀ n, n < late → (Counterexamples.hidden late).outgoing n
      ((Counterexamples.hidden late).at true n) = false) ∧
    ¬ AlwaysCycle (Counterexamples.hidden late) true := by
  refine ⟨fun n hn => (Counterexamples.every_finite_prefix late n hn).1, ?_⟩
  intro all
  have bad := all late
  rw [Counterexamples.before_late late late (by omega)] at bad
  change (if late = late then true else false) = false at bad
  simp at bad

example : True := by
  fail_if_success
    have : hitLater.Permanent true := by outgoing_hit_cert using certificate
  trivial

#print axioms hit_cycle
#print axioms hit_not_permanent
#print axioms all_later_zero
#print axioms identity_cycle
#print axioms batch_cycle
#print axioms imported_cycle
#print axioms no_universal_tail_from_finite_prefix
end OutgoingCycleMapTransport.Examples
