import PermanentMapTailCertificates.Import
import PermanentCycleCertificates.ImportExamples
import OutgoingCycleCertificates.Examples

namespace PermanentMapTailCertificates.Examples
open PermanentCycleCertificates LinearCertificates PageTransitionCertificates
open SemanticTrajectoryCertificates

/-- Both adjacent spaces have two elements, but both actual differential maps vanish. -/
def stableMaps : System where
  Page := fun _ => Bool
  Incoming := fun _ => Bool
  Outgoing := fun _ => Bool
  zero := fun _ => false
  zeroIncoming := fun _ => false
  zeroOutgoing := fun _ => false
  incoming := fun _ _ => false
  outgoing := fun _ _ => false
  advance := fun _ x => x
  incoming_zero := fun _ => rfl
  homology_zero := by intro n x _; simp

def wire : WireComparison :=
  ⟨1, 1, 1, 1, 1, [false], [false], [true], [true], [false], [false]⟩
def stage : Stage := ⟨wire, [true]⟩

def coordinates : PrefixCoordinates stableMaps [stage] where
  incoming := fun _ x _ => x
  current := fun _ x _ => x
  outgoing := fun _ x _ => x
  next := fun _ x _ => x

def meaning : PrefixMeaning stableMaps true [stage] where
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
    refine ⟨?_, ?_, ?_, rfl, rfl, rfl, ?_, ?_, ?_⟩
    · intro x y h
      exact congrFun h ⟨0, by decide⟩
    · intro x y h
      exact congrFun h ⟨0, by decide⟩
    · intro x y h
      exact congrFun h ⟨0, by decide⟩
    · intro x
      funext j
      exact (show ∀ x : Bool, ∀ j : Fin 1,
        false = eval (matrixOf 1 1 wire.outgoing) (fun _ => x) j from by decide) x j
    · intro y
      funext j
      exact (show ∀ y : Bool, ∀ j : Fin 1,
        false = eval (matrixOf 1 1 wire.incoming) (fun _ => y) j from by decide) y j
    · intro x _
      funext j
      exact (show ∀ x : Bool, ∀ j : Fin 1,
        x = eval wire.comparison.projection (fun _ => x) j from by decide) x j
  named := by
    intro i
    have hi : i = ⟨0, by decide⟩ := by
      apply Fin.ext
      change i.val = 0
      have h := i.isLt
      change i.val < 1 at h
      omega
    subst i
    funext j
    exact (show ∀ j : Fin 1, true = ([true] : List Bool)[j.val]?.getD false from by decide) j

theorem mapTail : MapTail stableMaps 1 := ⟨fun _ _ _ => rfl, fun _ _ _ => rfl⟩

def certificate : Certificate stableMaps true := ⟨[stage], meaning, mapTail⟩
def cycleCertificate : CycleCertificate stableMaps true := ⟨[stage], meaning, mapTail.outgoing⟩

theorem stable_permanent : stableMaps.Permanent true := by
  permanent_map_cert using certificate

theorem stable_alwaysCycle : OutgoingCycleCertificates.AlwaysCycle stableMaps true := by
  outgoing_map_cert using cycleCertificate

theorem old_tail_unavailable : ¬ TailVanishing stableMaps 1 := by
  intro tail
  have h : (true : Bool) = false := (tail.incoming 1 (by omega)).allEq true false
  cases h

def batch : List Request := [⟨stableMaps, true, certificate⟩]
def cycleBatch : List CycleRequest := [⟨stableMaps, true, cycleCertificate⟩]

example : ∀ r ∈ batch, r.system.Permanent r.element := checkBatch_sound batch (by decide)
example : ∀ r ∈ cycleBatch, OutgoingCycleCertificates.AlwaysCycle r.system r.element :=
  checkCycleBatch_sound cycleBatch (by decide)

def imported : PrefixWire := permanent_prefix% "PermanentCycleCertificates/stable-prefix.json"
def importedCertificate : Certificate PermanentCycleCertificates.Examples.stable true :=
  assemble PermanentCycleCertificates.Examples.stable true imported
    PermanentCycleCertificates.Examples.meaning
    (of_subsingleton _ _ PermanentCycleCertificates.Examples.certificate.tail)

theorem imported_permanence : PermanentCycleCertificates.Examples.stable.Permanent true := by
  permanent_map_cert using importedCertificate

theorem outgoing_tail_allows_incoming_death :
    OutgoingMapTail OutgoingCycleCertificates.killed 0 ∧
      ¬ OutgoingCycleCertificates.killed.Permanent true :=
  ⟨fun _ _ _ => rfl, OutgoingCycleCertificates.killed_not_permanent⟩

example : PermanentCycleCertificates.checkPrefix [] = false := by decide
example : PermanentCycleCertificates.checkPrefix [{ stage with representative := [false] }] = false := by decide
example : diagnose [{ stage with representative := [false] }] =
    some "prefix[0] (page 2): comparison, cycle, nonboundary or dimensions failed" := by decide
example : OutgoingCycleCertificates.checkPrefix [{ stage with representative := [false] }] = true := by decide

#print axioms stable_permanent
#print axioms stable_alwaysCycle
#print axioms old_tail_unavailable
#print axioms imported_permanence
#print axioms outgoing_tail_allows_incoming_death
end PermanentMapTailCertificates.Examples
