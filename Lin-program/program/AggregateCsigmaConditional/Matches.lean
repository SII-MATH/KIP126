import AggregateCsigmaConditional.Events
namespace AggregateCsigmaConditional.Matches
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
end AggregateCsigmaConditional.Matches
