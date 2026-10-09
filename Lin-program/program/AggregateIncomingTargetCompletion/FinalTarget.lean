import AggregateIncomingTargetCompletion.FinalFamily

namespace AggregateIncomingTargetCompletion.Final
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open ManualInputObligations.Reference
set_option maxRecDepth 20000
set_option maxHeartbeats 18000000

def target3391 : WireComparison := ConditionalData.b_S0_18_143_d5

theorem event3391_same_family : IndexedD5Certificates.event3391.Valid family :=
  IndexedD5Certificates.bound_extension extends_original unique IndexedD5Certificates.event3391_valid

theorem event3391_full_stage_binding :
    StageBinding family IndexedD5Certificates.event3391.object
      IndexedD5Certificates.event3391.event.sourceDegree
      IndexedD5Certificates.event3391.event.finite.sourceStages ∧
    StageBinding family IndexedD5Certificates.event3391.object
      IndexedD5Certificates.event3391.event.targetDegree
      IndexedD5Certificates.event3391.event.finite.targetStages :=
  ⟨event3391_same_family.2.2.2.2.2.1,event3391_same_family.2.2.2.2.2.2⟩

theorem target3391_lookup : lookup family (keyAt "S0" 5 ⟨18,143⟩) = some target3391 := by decide

theorem target3391_exact_previous :
    AggregateD5Conditional.Data.b_S0_18_143_d4.h = target3391.m ∧
    AggregateD5Conditional.Data.b_S0_13_139_d4.h = target3391.n ∧
    ConditionalData.b_S0_23_147_d4.h = target3391.k := by decide

theorem target3391_full_incoming :
    target3391.incoming = IndexedD5Certificates.event3391.event.finite.event.outgoing ∧
    target3391.m = IndexedD5Certificates.event3391.event.finite.event.k ∧
    target3391.n = IndexedD5Certificates.event3391.event.finite.event.m := by decide

theorem target3391_complete : target3391.Valid := ConditionalData.b_S0_18_143_d5_complete

def named3391 : Vec 1 := IndexedD5Certificates.event3391.event.finite.targetVector
def source3391 : Vec 1 := IndexedD5Certificates.event3391.event.finite.sourceVector

theorem target3391_image : InImage (matrixOf target3391.m target3391.n target3391.incoming) named3391 := by
  refine ⟨source3391,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3391.m target3391.n target3391.incoming) source3391 i = named3391 i from by decide) i

theorem target3391_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3391.k target3391.m target3391.outgoing), cycle.val = named3391 ∧
      (Quot.mk _ cycle : Homology (matrixOf target3391.k target3391.m target3391.outgoing)
        (matrixOf target3391.m target3391.n target3391.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : PageTransitionCertificates.Cycle _) :=
  target_boundary_zero target3391 target3391_complete _ target3391_image

/-- The sole new conditional matrix equation is derived from actual d-squared,
with the actual known successor and coordinate meaning supplied separately. -/
theorem conditional_column_meaning (S : AdamsSpectralSequence) (meaning : Row3743Successor.Meaning S)
    (coordinates : (S.element 4 Row3743Successor.sourceDegree).carrier → Vec 1)
    (x : (S.element 4 Row3743Successor.sourceDegree).carrier) :
    meaning.coordinates (S.differential 4 Row3743Successor.sourceDegree x) =
      eval (matrixOf 1 1 ConditionalData.b_S0_23_147_d4.outgoing) (coordinates x) := by
  rw [Row3743Successor.actual_d4_zero S meaning x,meaning.zero]
  symm
  exact (show ∀ v : Vec 1, eval (matrixOf 1 1 ConditionalData.b_S0_23_147_d4.outgoing) v = zero from by decide) _

def completedIds : List Nat := AggregateIncomingTargetCompletion.completedIds ++ [3391]

theorem old_missing_exact : AggregateEliminationCertificates.Data.missingIncomingTarget = completedIds := rfl
theorem all_incoming_count :
    (AggregateEliminationCertificates.Data.suppliedIncomingTarget ++ completedIds).length = 36 := by decide

theorem all_13_targets_supplied :
    ∀ row ∈ AggregateEliminationCertificates.Data.missingIncomingTarget,
      ∃ entry ∈ family, entry.key.object = "S0" ∧ entry.wire.h = 0 ∧
        (row = 3010 ∧ entry.key = ⟨"S0",4,13,138⟩ ∨
         row = 3011 ∧ entry.key = ⟨"S0",4,13,138⟩ ∨
         row = 3254 ∧ entry.key = ⟨"S0",4,16,141⟩ ∨
         row = 3629 ∧ entry.key = ⟨"S0",4,21,146⟩ ∨
         row = 3744 ∧ entry.key = ⟨"S0",4,22,147⟩ ∨
         row = 3745 ∧ entry.key = ⟨"S0",4,22,147⟩ ∨
         row = 4764 ∧ entry.key = ⟨"S0",3,34,159⟩ ∨
         row = 4929 ∧ entry.key = ⟨"S0",3,36,161⟩ ∨
         row = 5862 ∧ entry.key = ⟨"S0",3,45,170⟩ ∨
         row = 5977 ∧ entry.key = ⟨"S0",4,46,171⟩ ∨
         row = 6296 ∧ entry.key = ⟨"S0",4,49,174⟩ ∨
         row = 7247 ∧ entry.key = ⟨"S0",3,57,182⟩ ∨
         row = 3391 ∧ entry.key = ⟨"S0",5,18,143⟩) := by decide

#print axioms event3391_same_family
#print axioms target3391_quotient_zero
#print axioms conditional_column_meaning
#print axioms old_missing_exact
#print axioms all_incoming_count
#print axioms all_13_targets_supplied
end AggregateIncomingTargetCompletion.Final
