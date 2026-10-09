import PermanentCycleCertificates.System

namespace PermanentCycleCertificates
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

structure PrefixCoordinates (s : System) (stages : List Stage) where
  incoming : ∀ i : Fin stages.length, s.Incoming i.val → Vec stages[i.val].wire.n
  current : ∀ i : Fin stages.length, s.Page i.val → Vec stages[i.val].wire.m
  outgoing : ∀ i : Fin stages.length, s.Outgoing i.val → Vec stages[i.val].wire.k
  next : ∀ i : Fin stages.length, s.Page (i.val + 1) → Vec stages[i.val].wire.h

def PrefixCoordinates.page (s : System) (stages : List Stage)
    (c : PrefixCoordinates s stages) (i : Fin stages.length) : PageData stages[i.val].wire where
  Incoming := s.Incoming i.val
  Current := s.Page i.val
  Outgoing := s.Outgoing i.val
  Next := s.Page (i.val + 1)
  incoming := s.incoming i.val
  outgoing := s.outgoing i.val
  next := s.advance i.val
  zeroCurrent := s.zero i.val
  zeroOutgoing := s.zeroOutgoing i.val
  zeroNext := s.zero (i.val + 1)
  incomingCoordinates := c.incoming i
  currentCoordinates := c.current i
  outgoingCoordinates := c.outgoing i
  nextCoordinates := c.next i

structure PrefixMeaning (s : System) (x : s.Page 0) (stages : List Stage) where
  coordinates : PrefixCoordinates s stages
  equations : ∀ i, (coordinates.page s stages i).Meaning
  named : ∀ i, coordinates.current i (s.at x i.val) = stages[i.val].vector

def checkPrefix (stages : List Stage) : Bool :=
  decide (0 < stages.length) && stages.all checkStage

theorem checkPrefix_sound (s : System) (x : s.Page 0) (stages : List Stage)
    (meaning : PrefixMeaning s x stages) (checked : checkPrefix stages = true) :
    0 < stages.length ∧ ∀ n, n < stages.length → s.Good n (s.at x n) := by
  simp only [checkPrefix, Bool.and_eq_true, decide_eq_true_eq] at checked
  refine ⟨checked.1, ?_⟩
  intro n hn
  let i : Fin stages.length := ⟨n, hn⟩
  have hs := checkStage_sound stages[n] ((List.all_eq_true.mp checked.2) stages[n] (List.getElem_mem hn))
  have ht := stage_transport stages[n] hs (meaning.coordinates.page s stages i)
    (meaning.equations i) (s.at x n) (meaning.named i)
  exact ⟨ht.1, ht.2.1⟩

theorem checkPermanent_sound (s : System) (x : s.Page 0) (stages : List Stage)
    (meaning : PrefixMeaning s x stages) (tail : TailVanishing s stages.length)
    (checked : checkPrefix stages = true) : s.Permanent x := by
  have h := checkPrefix_sound s x stages meaning checked
  exact permanent_of_prefix s x stages.length h.1 h.2 tail

/-- The non-executable parts are explicit proved mathematics carried by the
certificate term; the checker executes only the finite prefix. -/
structure Certificate (s : System) (x : s.Page 0) where
  stages : List Stage
  meaning : PrefixMeaning s x stages
  tail : TailVanishing s stages.length

instance (s : System) (x : s.Page 0) :
    LinProgramCertificates.CertificateVerifier (s.Permanent x) where
  Cert := Certificate s x
  check := fun c => checkPrefix c.stages
  sound := fun c => checkPermanent_sound s x c.stages c.meaning c.tail

syntax "permanent_cert" " using " term : tactic
macro_rules
  | `(tactic| permanent_cert using $c:term) => `(tactic|
      exact LinProgramCertificates.CertificateVerifier.sound $c
        (by first | rfl | decide))

structure Request where
  system : System
  element : system.Page 0
  certificate : Certificate system element

def checkBatch (requests : List Request) : Bool :=
  requests.all (fun r => checkPrefix r.certificate.stages)

theorem checkBatch_sound (requests : List Request) (checked : checkBatch requests = true) :
    ∀ r ∈ requests, r.system.Permanent r.element := by
  intro r hr
  exact checkPermanent_sound r.system r.element r.certificate.stages
    r.certificate.meaning r.certificate.tail ((List.all_eq_true.mp checked) r hr)

instance (requests : List Request) : LinProgramCertificates.CertificateVerifier
    (∀ r ∈ requests, r.system.Permanent r.element) where
  Cert := Unit
  check := fun _ => checkBatch requests
  sound := fun _ => checkBatch_sound requests

def diagnosePrefix (stages : List Stage) : Option String := Id.run do
  if stages.isEmpty then return some "prefix: expected at least one checked page"
  for (stage, i) in stages.zipIdx do
    if !checkStage stage then
      return some s!"prefix[{i}] (page {i+2}): comparison, cycle, nonboundary or dimensions failed"
  return none

#print axioms checkPrefix_sound
#print axioms checkPermanent_sound
#print axioms checkBatch_sound
end PermanentCycleCertificates
