import Row3151FullNeighborhood.Data

namespace Row3151FullNeighborhood.Checks
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates Data
open AggregateTargetInventory.EventAudit

theorem incoming3_valid (a b q : Bool) : (incomingD3 a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem incoming4_valid (a b q : Bool) : (incomingD4 a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem event_valid (a b q : Bool) : (event a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem target4_valid (a b q : Bool) : (targetD4 a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem finite_valid (a b q : Bool) : (finite a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem indexed_valid (a b q : Bool) : (indexed a b q).Valid := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem bound_valid (a b q : Bool) : (bound a b q).Valid (family a b q) := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()
theorem coherent (a b q : Bool) : Coherent (family a b q) := by
  cases a <;> cases b <;> cases q <;> lin_cert using ()

def keys : List Key := [⟨"S0",2,7,134⟩,⟨"S0",3,7,134⟩,⟨"S0",4,7,134⟩,
  ⟨"S0",2,11,137⟩,⟨"S0",3,11,137⟩,⟨"S0",4,11,137⟩,
  ⟨"S0",2,15,140⟩,⟨"S0",3,15,140⟩,⟨"S0",4,15,140⟩]

theorem complete_window (a b q : Bool) : Coherent (family a b q) ∧ CoversKeys (family a b q) keys := by
  cases a <;> cases b <;> cases q <;> exact checkWindow_sound _ _ (by decide)

theorem event3151 (a b q : Bool) :
    DifferentialAt (family a b q) ⟨"S0",4,11,137⟩ [false,true] [true,false] := by
  apply checkResult_sound _ _ _ _ (bound a b q)
  cases a <;> cases b <;> cases q <;> decide

theorem event_exact (a b q : Bool) : (finite a b q).event = event a b q := by
  cases a <;> cases b <;> cases q <;> rfl
theorem indexed_exact (a b q : Bool) : (indexed a b q).finite = finite a b q := by
  cases a <;> cases b <;> cases q <;> rfl
theorem bound_exact (a b q : Bool) : (bound a b q).event = indexed a b q := by
  cases a <;> cases b <;> cases q <;> rfl
theorem source_stages (a b q : Bool) : (finite a b q).sourceStages.map Stage.wire =
    [AggregateD5Conditional.Data.b_S0_11_137_d2,AggregateD5Conditional.Data.b_S0_11_137_d3] := by
  cases a <;> cases b <;> cases q <;> rfl
theorem target_stages (a b q : Bool) : (finite a b q).targetStages.map Stage.wire =
    [AggregateD5Conditional.Data.b_S0_15_140_d2,AggregateD5Conditional.Data.b_S0_15_140_d3] := by
  cases a <;> cases b <;> cases q <;> rfl
theorem raw_endpoints (a b q : Bool) :
    (finite a b q).rawSource = [false,false,true,false,false,false] ∧
    (finite a b q).rawTarget = [false,true,false,false,false] := by
  cases a <;> cases b <;> cases q <;> exact ⟨rfl,rfl⟩

theorem target_is_checked3152 (a b q : Bool) :
    targetD4 a b q = Row3152BranchCertificates.Semantics.sourceD4 b := by
  cases a <;> cases b <;> cases q <;> decide

example : checkBound family000 bound001 = false := by decide
example : checkResult family000 ⟨"S0",4,11,137⟩ [false,true] [false,false] bound000 = false := by decide
example : checkWindow family000 (keys ++ [⟨"S0",5,7,134⟩]) = false := by decide

#print axioms complete_window
#print axioms event3151
#print axioms source_stages
#print axioms target_stages
#print axioms target_is_checked3152
end Row3151FullNeighborhood.Checks
