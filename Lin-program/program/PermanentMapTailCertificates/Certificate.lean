import PermanentMapTailCertificates.Basic

namespace PermanentMapTailCertificates
open PermanentCycleCertificates PageTransitionCertificates

theorem checkPermanent_sound (s : System) (x : s.Page 0) (stages : List Stage)
    (meaning : PrefixMeaning s x stages) (tail : MapTail s stages.length)
    (checked : PermanentCycleCertificates.checkPrefix stages = true) : s.Permanent x := by
  have h := checkPrefix_sound s x stages meaning checked
  exact permanent_of_prefix s x stages.length h.1 h.2 tail

theorem checkCycle_sound (s : System) (x : s.Page 0) (stages : List Stage)
    (meaning : PrefixMeaning s x stages) (tail : OutgoingMapTail s stages.length)
    (checked : OutgoingCycleCertificates.checkPrefix stages = true) :
    OutgoingCycleCertificates.AlwaysCycle s x := by
  simp only [OutgoingCycleCertificates.checkPrefix, Bool.and_eq_true, decide_eq_true_eq] at checked
  apply alwaysCycle_of_prefix s x stages.length ?_ tail
  intro n hn
  let i : Fin stages.length := ⟨n, hn⟩
  have hs := OutgoingCycleCertificates.checkCycleStage_sound stages[n]
    ((List.all_eq_true.mp checked.2) stages[n] (List.getElem_mem hn))
  exact OutgoingCycleCertificates.cycle_transport stages[n] hs
    (meaning.coordinates.page s stages i) (meaning.equations i) (s.at x n) (meaning.named i)

/-- The checker reads stages; actual full-map tail equations are proved fields. -/
structure Certificate (s : System) (x : s.Page 0) where
  stages : List Stage
  meaning : PrefixMeaning s x stages
  tail : MapTail s stages.length

structure CycleCertificate (s : System) (x : s.Page 0) where
  stages : List Stage
  meaning : PrefixMeaning s x stages
  tail : OutgoingMapTail s stages.length

theorem Certificate.sound {s : System} {x : s.Page 0} (c : Certificate s x)
    (checked : PermanentCycleCertificates.checkPrefix c.stages = true) : s.Permanent x :=
  checkPermanent_sound s x c.stages c.meaning c.tail checked

theorem CycleCertificate.sound {s : System} {x : s.Page 0} (c : CycleCertificate s x)
    (checked : OutgoingCycleCertificates.checkPrefix c.stages = true) :
    OutgoingCycleCertificates.AlwaysCycle s x :=
  checkCycle_sound s x c.stages c.meaning c.tail checked

syntax "permanent_map_cert" " using " term : tactic
macro_rules
  | `(tactic| permanent_map_cert using $c:term) => `(tactic|
      exact PermanentMapTailCertificates.Certificate.sound $c (by first | rfl | decide))

syntax "outgoing_map_cert" " using " term : tactic
macro_rules
  | `(tactic| outgoing_map_cert using $c:term) => `(tactic|
      exact PermanentMapTailCertificates.CycleCertificate.sound $c (by first | rfl | decide))

structure Request where
  system : System
  element : system.Page 0
  certificate : Certificate system element

def checkBatch (requests : List Request) : Bool :=
  requests.all (fun r => PermanentCycleCertificates.checkPrefix r.certificate.stages)

theorem checkBatch_sound (requests : List Request) (checked : checkBatch requests = true) :
    ∀ r ∈ requests, r.system.Permanent r.element := by
  intro r hr
  exact r.certificate.sound ((List.all_eq_true.mp checked) r hr)

structure CycleRequest where
  system : System
  element : system.Page 0
  certificate : CycleCertificate system element

def checkCycleBatch (requests : List CycleRequest) : Bool :=
  requests.all (fun r => OutgoingCycleCertificates.checkPrefix r.certificate.stages)

theorem checkCycleBatch_sound (requests : List CycleRequest)
    (checked : checkCycleBatch requests = true) :
    ∀ r ∈ requests, OutgoingCycleCertificates.AlwaysCycle r.system r.element := by
  intro r hr
  exact r.certificate.sound ((List.all_eq_true.mp checked) r hr)

def diagnose (stages : List Stage) : Option String := PermanentCycleCertificates.diagnosePrefix stages
def diagnoseCycle (stages : List Stage) : Option String := OutgoingCycleCertificates.diagnose stages

#print axioms checkPermanent_sound
#print axioms checkCycle_sound
#print axioms Certificate.sound
#print axioms CycleCertificate.sound
#print axioms checkBatch_sound
#print axioms checkCycleBatch_sound
end PermanentMapTailCertificates
