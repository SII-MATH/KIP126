import AggregateD4Conditional.Events
namespace AggregateD4Conditional.Matches
open LinearCertificates PageTransitionCertificates Data Row2861Csigma.Naturality

theorem source_outgoing : b_S0_9_136_d2.outgoing = Row2861Csigma.Comparison.source.outgoing := by decide
theorem source_incoming : b_S0_9_136_d2.incoming = Row2861Csigma.Comparison.source.incoming := by decide
theorem target_comparison : b_S0_12_138_d2 = Row2861Csigma.Comparison.upperSource := rfl

def sourceCoordinates := homologyEquivalence _ _ b_S0_9_136_d2.comparison b_S0_9_136_d2_complete.2

theorem source_named_coordinate :
    sourceCoordinates.toCoordinates named = (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 2, sourceCoordinates.toCoordinates named i = (i.val == 0) from by decide) i

theorem source_named_representative :
    ∀ i : Fin 5, b_S0_9_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 1) := by decide

def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_9_136_d3.outgoing i 0 = ue.toCoordinates (ds named) i) ∧
  (∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d3.incoming i 0 = ue.toCoordinates (ds named) i)

/-- Naturality and preservation of zero are explicit semantic premises.
The imported unknown is only replaced under this interface. -/
theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ColumnMatches ds := by
  have h := Row2861Csigma.Matches.matched ds dt zeroPreserving naturality
  refine ⟨h.1,?_,?_⟩
  · intro i
    have he : matrixOf 1 2 b_S0_9_136_d3.outgoing i 0 = Row2861Csigma.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)
  · intro i
    have he : matrixOf 1 2 b_S0_12_138_d3.incoming i 0 = Row2861Csigma.Matches.candidateColumn i 0 := by decide +revert
    exact he.trans (h.2 i)

#print axioms matched
#print axioms source_named_coordinate
end AggregateD4Conditional.Matches

namespace AggregateD4Conditional.H3D0
open LinearCertificates PageTransitionCertificates Data
open Row2796Detector.Quotient Row2796Detector.Combined

theorem source_outgoing : b_S0_8_135_d2.outgoing = ann.right.outgoing := by decide
theorem source_incoming : b_S0_8_135_d2.incoming = ann.right.incoming := by decide
theorem target_outgoing : b_S0_11_137_d2.outgoing = detect.right.outgoing := by decide
theorem target_incoming : b_S0_11_137_d2.incoming = detect.right.incoming := by decide

theorem selected_source : ∀ i : Fin 7,
  b_S0_8_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide

def targetCoordinates := homologyEquivalence _ _ b_S0_11_137_d2.comparison b_S0_11_137_d2_complete.2

def ColumnMatches (d : Q ann.right → Q detect.right) : Prop := d named = z detect.right ∧
  ∀ i : Fin 2, matrixOf 2 2 b_S0_8_135_d3.outgoing i 0 = targetCoordinates.toCoordinates (d named) i

theorem matched (d : Q ann.right → Q detect.right)
    (d0 : Q ann0.target → Q detect0.target) (d2 : Q ann.target → Q detect.target)
    (z0 : d0 (z ann0.target) = z detect0.target) (z2 : d2 (z ann.target) = z detect.target)
    (l0 : ∀ x, d0 (annMap0 x) = detectMap0 (d x)) (l2 : ∀ x, d2 (annMap x) = detectMap (d x)) : ColumnMatches d := by
  have hz := differential_zero d d0 d2 z0 z2 l0 l2
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change _ = eval b_S0_11_137_d2.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 2, matrixOf 2 2 b_S0_8_135_d3.outgoing i 0 = zero i from by decide) i
#print axioms matched
end AggregateD4Conditional.H3D0

namespace AggregateD4Conditional.D4
open LinearCertificates PageTransitionCertificates Data
open Row2796D4Detector

theorem source_comparison : b_S0_8_135_d3 = Comparison.namedSource := rfl
theorem target_comparison : b_S0_12_138_d3 = Comparison.source := rfl

theorem named_e4_representative : ∀ i : Fin 2,
    b_S0_8_135_d3.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 0) := by decide

theorem named_e2_representative : ∀ i : Fin 7,
    b_S0_8_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide

def ColumnMatches (ds : Source.S → Target.U) : Prop := ds Source.named = Target.zu ∧
    ∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d4.incoming i 0 =
      Target.ue.toCoordinates (ds Source.named) i

/-- The only completed new role is the incoming column at (12,138), d4.
The unknown module source differential is arbitrary; local naturality and
zero preservation remain explicit. -/
theorem matched (outT : Matrix 3 2) (inT : Matrix 2 4)
    (ds : Source.S → Target.U) (dt : Homology outT inT → Target.V)
    (zeroPreserving : dt (Source.z outT inT) = Target.zv)
    (naturality : ∀ x, dt (Source.f outT inT x) = Target.g (ds x)) :
    ColumnMatches ds := by
  have hz := Source.named_d4_zero outT inT ds dt zeroPreserving naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change _ = eval Comparison.source.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 1, matrixOf 1 2 b_S0_12_138_d4.incoming i 0 = zero i from by decide) i
#print axioms matched
end AggregateD4Conditional.D4
