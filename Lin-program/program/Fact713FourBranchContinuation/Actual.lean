import Fact713FourBranchContinuation.Branches
import Fact713Row3143Continuation.ActualRule

namespace Fact713FourBranchContinuation.Actual
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open Row3136FamilyBranches.Actual

/-- Both complete local matrix equations and both old finite families
remain available after adjoining the independent row3143 rule. -/
theorem actual_local_selection (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (W : ParameterWitness S P u T) (M : SourceMeaning S P u T)
    (r : Bool) (I : Coordinates S 3 incomingDegree 1)
    (incoming : ∀ x, M.source.equivalence (S.differential 3 incomingDegree x) =
      eval (matrixOf 2 1 [false,r]) (I.equivalence x)) :
    ∃ a : Bool, IndexedFamilyCertificates.Coherent (family r a) ∧
      (∀ x, T.target.equivalence (S.differential 3 sourceDegree x) =
        eval (staircaseOut r a)
          (eval (Row3136FamilyBranches.CoordinateBridge.swap 2 2) (M.source.equivalence x))) ∧
      (∀ x, eval (Row3136FamilyBranches.CoordinateBridge.swap 2 2)
        (M.source.equivalence (S.differential 3 incomingDegree x)) =
        eval (staircaseIncoming r a) (I.equivalence x)) ∧
      (∀ x, T.next.equivalence (S.differential 3 targetDegree x) =
        eval (staircaseTargetOut r a) (T.target.equivalence x)) := by
  obtain ⟨a,_,outgoing,incoming,target⟩ := actual_selected_family S P u T W M r I incoming
  exact ⟨a,family_coherent r a,outgoing,incoming,target⟩

theorem actual_row3143_column (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (D : Fact713Row3143Continuation.ActualRule.Input S pages P)
    (r a : Bool) (x : (S.element 4 Fact713Row3143Continuation.ActualRule.R.degree).carrier) :
    S.differential 4 Fact713Row3143Continuation.ActualRule.R.degree x = 0 ∧
      IndexedFamilyCertificates.lookup (family r a) ⟨"S0",4,21,143⟩ =
        some Fact713Row3143Continuation.Data.b_S0_21_143_d4 := by
  refine ⟨Fact713Row3143Continuation.ActualRule.whole_d4_zero D x,?_⟩
  cases r <;> cases a <;> decide

#print axioms actual_local_selection
#print axioms actual_row3143_column
end Fact713FourBranchContinuation.Actual
