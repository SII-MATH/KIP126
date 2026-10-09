import Fact713Row2907Continuation.Branches
import Fact713Row2907Continuation.Actual

namespace Fact713Row2907Continuation.Binding
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Row2907PDeltaDetection Row2907PDeltaDetection.Descent Row2907PDeltaDetection.Branches
open Row2907TargetProduct Row2907TargetProduct.Actual

def out (r b : Bool) : Matrix (if r then 1 else 2) 1 :=
  matrixOf (if r then 1 else 2) 1 (source r b).outgoing

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {W : Witness S pages P}

theorem source_d3_previous (r : Bool) :
    IndexedFamilyCertificates.lookup (Fact713Row2916Continuation.family r false)
      ⟨"S0",3,16,137⟩ = some sourceD3 := by
  cases r <;> decide

theorem target_d3_previous (r : Bool) :
    IndexedFamilyCertificates.lookup (Fact713Row2916Continuation.family r false)
      ⟨"S0",3,20,140⟩ = some (CoordinateBridge.staircaseComparison r) := by
  cases r <;> decide

noncomputable def target (T : TargetMeaning W r false) :
    Coordinates S 4 targetDegree (if r then 1 else 2) := by
  cases r
  · exact Actual.page4 T
  · exact Actual.page4 T

theorem source_full_column (T : TargetMeaning W r false)
    (x : (S.element 4 sourceDegree).carrier) :
    (target T).equivalence (S.differential 4 sourceDegree x) =
      eval (out r (Actual.coefficient T))
        (W.data.source4.equivalence x) := by
  cases r
  · have h := Actual.whole_column_in_staircase T x
    have equal : ∀ b : Bool, CoordinateBridge.staircaseColumn false b =
        out false b := by decide
    exact h.trans (congrArg (fun m => eval m (W.data.source4.equivalence x)) (equal _))
  · have h := Actual.whole_column_in_staircase T x
    have equal : CoordinateBridge.staircaseColumn true false =
        out true false := by decide
    exact h.trans (congrArg (fun m => eval m (W.data.source4.equivalence x)) equal)

/-- Both candidate columns are injective, so the complete actual E4
source has no nonzero cycles. This uses every source value. -/
theorem source_cycles_zero (T : TargetMeaning W r false)
    (x : PageCycle S 4 sourceDegree) : x.val = 0 := by
  apply W.data.source4.equivalence.injective
  have eq := source_full_column T x.val
  have hz : S.differential 4 sourceDegree x.val = 0 :=
    x.property.trans (S.zero_is_zero _ _)
  have imageZero := (congrArg (target T).equivalence hz).trans (target T).zero_value
  have kernel : ∀ (r b : Bool) (v : Vec 1),
      eval (out r b) v = zero → v = zero := by decide
  exact (kernel r _ _ (eq.symm.trans imageZero)).trans W.data.source4.zero_value.symm

/-- Actual quotient surjectivity and the local zero law construct the
zero E5 source; no future coordinate function or vanishing is an input. -/
theorem source_E5_zero (T : TargetMeaning W r false)
    (zeroMeaning : LocalZeroMeaning pages 4 sourceDegree)
    (x : (S.element 5 sourceDegree).carrier) : x = 0 := by
  obtain ⟨cycle,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 4 sourceDegree x
  have same : cycle = ActualAdamsSystemBridge.zeroCycle S 4 sourceDegree :=
    Subtype.ext (source_cycles_zero T cycle)
  rw [same]
  exact zeroMeaning.trans (S.zero_is_zero _ _)

theorem whole_row2622_d5_zero (T : TargetMeaning W r false)
    (zeroMeaning : LocalZeroMeaning pages 4 sourceDegree)
    (x : (S.element 5 (⟨11,133⟩ : Bidegree)).carrier) :
    S.differential 5 ⟨11,133⟩ x = 0 :=
  source_E5_zero T zeroMeaning (S.differential 5 ⟨11,133⟩ x)

theorem selected_family (T : TargetMeaning W r false) :
    IndexedFamilyCertificates.Coherent (family r (Actual.coefficient T)) ∧
    ∀ x : (S.element 4 sourceDegree).carrier,
      (target T).equivalence (S.differential 4 sourceDegree x) =
        eval (out r (Actual.coefficient T))
          (W.data.source4.equivalence x) :=
  ⟨family_coherent _ _,source_full_column T⟩

#print axioms target
#print axioms source_d3_previous
#print axioms target_d3_previous
#print axioms source_full_column
#print axioms source_cycles_zero
#print axioms source_E5_zero
#print axioms whole_row2622_d5_zero
#print axioms selected_family
end Fact713Row2907Continuation.Binding
