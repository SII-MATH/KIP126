import Fact713Row3143Continuation.Data
import ActualAdamsHomologyCoordinates.Basic

namespace Fact713Row3143Continuation.ActualRule
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge

namespace R
abbrev degree := Row3143D0Leibniz.Actual.sourceDegree
abbrev source := Row3143D0Leibniz.Data.source
abbrev sourceCoordinates := Row3143D0Leibniz.sourceCoordinates
abbrev named := Row3143D0Leibniz.namedSource
end R

def sourceD3 : WireComparison := page_comparison% "Fact713Row3143Continuation/source-d3.json"
theorem sourceD3_valid : sourceD3.Valid := by lin_cert using ()
theorem sourceD3_projection : ∀ v : Vec 1, eval sourceD3.comparison.projection v = v := by decide
theorem sourceD3_in_previous (residual : Bool) :
    IndexedFamilyCertificates.lookup (Fact713Row2431Continuation.family residual)
      ⟨"S0",3,17,140⟩ = some sourceD3 := by
  cases residual <;> decide

/-- Full current coordinate agreement, complete incoming and outgoing d3
meanings, and the local quotient law construct all actual E4 coordinates. -/
structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  old : Row3143D0Leibniz.Actual.Meaning S P
  known : Row3143D0Leibniz.Descent.KnownDifferential S pages
  sourceTransition : Transition S pages P 3 Row3143D0Leibniz.Actual.d0Degree
    Row3143D0Leibniz.Actual.rightDegree
  leftZeroMeaning : LocalZeroMeaning pages 3 Row3143D0Leibniz.Actual.leftD4Degree
  current : Coordinates S 3 R.degree 1
  complete : ActualAdamsHomologyCoordinates.Meaning S 3 R.degree sourceD3 current
  currentBinding : ∀ x, current.equivalence x = R.sourceCoordinates.toCoordinates (old.source x)
  sourceZeroMeaning : LocalZeroMeaning pages 3 R.degree
  left : (S.element 3 Row3143D0Leibniz.Actual.d0Degree).carrier
  right : (S.element 3 Row3143D0Leibniz.Actual.rightDegree).carrier
  source : (S.element 3 R.degree).carrier
  namedLeft : old.d0 left = Row3143D0Leibniz.namedD0
  namedRight : old.right right = Row3143D0Leibniz.namedRight
  namedSource : old.source source = R.named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

noncomputable def Input.page4 (D : Input S pages P) : Coordinates S 4 R.degree 1 :=
  D.complete.nextCoordinates pages sourceD3_valid D.sourceZeroMeaning

def Input.cycle (D : Input S pages P) : PageCycle S 3 R.degree :=
  ⟨D.source,(Row3143D0Leibniz.Actual.named_d3_zero D.old D.left D.right D.source
    D.namedLeft D.namedRight D.namedSource).trans (S.zero_is_zero _ _).symm⟩

noncomputable def Input.next (D : Input S pages P) : (S.element 4 R.degree).carrier :=
  (pages.nextPage 3 R.degree).toNext (Quotient.mk _ D.cycle)

theorem actual_current_name (D : Input S pages P) : D.current.equivalence D.source =
    (fun _ : Fin 1 => true) :=
  (D.currentBinding D.source).trans
    ((congrArg R.sourceCoordinates.toCoordinates D.namedSource).trans
      Row3143D0Leibniz.named_source_coordinates)

theorem actual_next_name (D : Input S pages P) : D.page4.equivalence D.next =
    (fun _ : Fin 1 => true) := by
  have h := D.complete.nextCoordinates_quotient pages sourceD3_valid D.sourceZeroMeaning D.cycle
  exact h.trans ((congrArg (eval sourceD3.comparison.projection) (actual_current_name D)).trans
    (sourceD3_projection _))

theorem actual_next_nonzero (D : Input S pages P) : D.next ≠ 0 := by
  intro h
  have hn := actual_next_name D
  rw [h,D.page4.zero_value] at hn
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) hn

theorem actual_next_unique (D : Input S pages P) (x : (S.element 4 R.degree).carrier)
    (named : D.page4.equivalence x = (fun _ : Fin 1 => true)) : x = D.next :=
  D.page4.equivalence.injective (named.trans (actual_next_name D).symm)

/-- The checked named E4 value spans the complete one-dimensional carrier.
Zero preservation supplies its only other value. -/
theorem whole_d4_zero (D : Input S pages P) (x : (S.element 4 R.degree).carrier) :
    S.differential 4 R.degree x = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (D.page4.equivalence x) with hz | hn
  · have same : x = 0 := D.page4.equivalence.injective (hz.trans D.page4.zero_value.symm)
    rw [same,(S.differential 4 R.degree).map_zero']
  · rw [actual_next_unique D x hn]
    exact Row3143D0Leibniz.Actual.actual_row3143_d4_zero S pages P D.old D.known
      D.sourceTransition D.leftZeroMeaning D.left D.right D.source
      D.namedLeft D.namedRight D.namedSource

/-- The new family uses this whole rule as the incoming d4 column at
(21,143). It does not claim the unresolved incoming map at (17,140). -/
theorem actual_incoming_column (D : Input S pages P)
    (source : Coordinates S 4 R.degree 1)
    (target : Coordinates S 4 (AdamsTarget 4 R.degree) 1)
    (x : (S.element 4 R.degree).carrier) :
    target.equivalence (S.differential 4 R.degree x) =
      eval (matrixOf 1 1 Data.b_S0_21_143_d4.incoming) (source.equivalence x) := by
  exact (congrArg target.equivalence (whole_d4_zero D x)).trans
    (target.zero_value.trans
      ((show ∀ v : Vec 1, eval (matrixOf 1 1 Data.b_S0_21_143_d4.incoming) v = zero from by decide) _).symm)

#print axioms sourceD3_valid
#print axioms sourceD3_in_previous
#print axioms Input.page4
#print axioms actual_current_name
#print axioms actual_next_name
#print axioms actual_next_nonzero
#print axioms actual_next_unique
#print axioms whole_d4_zero
#print axioms actual_incoming_column
end Fact713Row3143Continuation.ActualRule
