import AggregateIncomingTargetCompletion.Family
import AggregateEliminationCertificates.Data
namespace AggregateIncomingTargetCompletion
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 20000
set_option maxHeartbeats 16000000
/-- A complete target comparison and an explicit incoming preimage prove zero in its finite homology quotient. -/
theorem target_boundary_zero (w : WireComparison) (valid : w.Valid) (x : Vec w.m)
    (incoming : InImage (matrixOf w.m w.n w.incoming) x) :
    ∃ cycle : Cycle (matrixOf w.k w.m w.outgoing), cycle.val = x ∧
      (Quot.mk _ cycle : Homology (matrixOf w.k w.m w.outgoing)
        (matrixOf w.m w.n w.incoming)) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := by
  obtain ⟨source,eq⟩ := incoming
  have cycle : InKernel (matrixOf w.k w.m w.outgoing) x := by
    rw [← eq]
    exact valid.2.1 source
  refine ⟨⟨x,cycle⟩,rfl,?_⟩
  apply Quot.sound
  change InImage _ (add x zero)
  rw [ResolutionCertificates.add_zero]
  exact ⟨source,eq⟩
def completedIds : List Nat := [3010,3011,3254,3629,3744,3745,4764,4929,5862,5977,6296,7247]
theorem completed_count : completedIds.length = 12 := by decide
theorem old_missing_partition : AggregateEliminationCertificates.Data.missingIncomingTarget =
    completedIds ++ [3391] := rfl
theorem all_35_incoming_targets : (AggregateEliminationCertificates.Data.suppliedIncomingTarget ++ completedIds).length = 35 := by decide
def target3010 : WireComparison := Stem125E5Search.Data.b_S0_13_138_d4
theorem event3010_same_family : IndexedHighD2Certificates.event3010.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3010_valid)
theorem event3010_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3010.object IndexedHighD2Certificates.event3010.event.sourceDegree IndexedHighD2Certificates.event3010.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3010.object IndexedHighD2Certificates.event3010.event.targetDegree IndexedHighD2Certificates.event3010.event.finite.targetStages :=
  ⟨event3010_same_family.2.2.2.2.2.1,event3010_same_family.2.2.2.2.2.2⟩
theorem target3010_lookup : lookup family (keyAt IndexedHighD2Certificates.event3010.object
    IndexedHighD2Certificates.event3010.event.eventPage IndexedHighD2Certificates.event3010.event.targetDegree) = some target3010 := by decide
theorem target3010_exact_previous :
    AggregateD5Conditional.Data.b_S0_13_138_d3.h = target3010.m ∧
    AggregateD5Conditional.Data.b_S0_9_135_d3.h = target3010.n ∧
    AggregateD5Conditional.Data.b_S0_17_141_d3.h = target3010.k := by decide
theorem target3010_complete : target3010.Valid := Stem125E5Search.Data.b_S0_13_138_d4_complete
theorem target3010_full_incoming : target3010.incoming = IndexedHighD2Certificates.event3010.event.finite.event.outgoing ∧
    target3010.m = IndexedHighD2Certificates.event3010.event.finite.event.k ∧
    target3010.n = IndexedHighD2Certificates.event3010.event.finite.event.m := by decide
theorem target3010_event_target : AggregateD5Conditional.Events.event3010Target = IndexedHighD2Certificates.event3010.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3010Target i = IndexedHighD2Certificates.event3010.event.finite.targetVector i from by decide) i
theorem target3010_event_source : AggregateD5Conditional.Events.event3010Source = IndexedHighD2Certificates.event3010.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3010Source i = IndexedHighD2Certificates.event3010.event.finite.sourceVector i from by decide) i
theorem target3010_image : InImage (matrixOf target3010.m target3010.n target3010.incoming) AggregateD5Conditional.Events.event3010Target := by
  refine ⟨AggregateD5Conditional.Events.event3010Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3010.m target3010.n target3010.incoming) AggregateD5Conditional.Events.event3010Source i = AggregateD5Conditional.Events.event3010Target i from by decide) i
theorem target3010_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3010.k target3010.m target3010.outgoing), cycle.val = AggregateD5Conditional.Events.event3010Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3010.k target3010.m target3010.outgoing)
        (matrixOf target3010.m target3010.n target3010.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3010 target3010_complete _ target3010_image
theorem target3010_whole_quotient_zero (x : Homology
    (matrixOf target3010.k target3010.m target3010.outgoing)
    (matrixOf target3010.m target3010.n target3010.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3010.comparison target3010_complete.2 x
#print axioms target3010_quotient_zero
def target3011 : WireComparison := Stem125E5Search.Data.b_S0_13_138_d4
theorem event3011_same_family : IndexedHighD2Certificates.event3011.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3011_valid)
theorem event3011_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3011.object IndexedHighD2Certificates.event3011.event.sourceDegree IndexedHighD2Certificates.event3011.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3011.object IndexedHighD2Certificates.event3011.event.targetDegree IndexedHighD2Certificates.event3011.event.finite.targetStages :=
  ⟨event3011_same_family.2.2.2.2.2.1,event3011_same_family.2.2.2.2.2.2⟩
theorem target3011_lookup : lookup family (keyAt IndexedHighD2Certificates.event3011.object
    IndexedHighD2Certificates.event3011.event.eventPage IndexedHighD2Certificates.event3011.event.targetDegree) = some target3011 := by decide
theorem target3011_exact_previous :
    AggregateD5Conditional.Data.b_S0_13_138_d3.h = target3011.m ∧
    AggregateD5Conditional.Data.b_S0_9_135_d3.h = target3011.n ∧
    AggregateD5Conditional.Data.b_S0_17_141_d3.h = target3011.k := by decide
theorem target3011_complete : target3011.Valid := Stem125E5Search.Data.b_S0_13_138_d4_complete
theorem target3011_full_incoming : target3011.incoming = IndexedHighD2Certificates.event3011.event.finite.event.outgoing ∧
    target3011.m = IndexedHighD2Certificates.event3011.event.finite.event.k ∧
    target3011.n = IndexedHighD2Certificates.event3011.event.finite.event.m := by decide
theorem target3011_event_target : AggregateD5Conditional.Events.event3011Target = IndexedHighD2Certificates.event3011.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3011Target i = IndexedHighD2Certificates.event3011.event.finite.targetVector i from by decide) i
theorem target3011_event_source : AggregateD5Conditional.Events.event3011Source = IndexedHighD2Certificates.event3011.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3011Source i = IndexedHighD2Certificates.event3011.event.finite.sourceVector i from by decide) i
theorem target3011_image : InImage (matrixOf target3011.m target3011.n target3011.incoming) AggregateD5Conditional.Events.event3011Target := by
  refine ⟨AggregateD5Conditional.Events.event3011Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3011.m target3011.n target3011.incoming) AggregateD5Conditional.Events.event3011Source i = AggregateD5Conditional.Events.event3011Target i from by decide) i
theorem target3011_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3011.k target3011.m target3011.outgoing), cycle.val = AggregateD5Conditional.Events.event3011Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3011.k target3011.m target3011.outgoing)
        (matrixOf target3011.m target3011.n target3011.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3011 target3011_complete _ target3011_image
theorem target3011_whole_quotient_zero (x : Homology
    (matrixOf target3011.k target3011.m target3011.outgoing)
    (matrixOf target3011.m target3011.n target3011.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3011.comparison target3011_complete.2 x
#print axioms target3011_quotient_zero
def target3254 : WireComparison := Stem125E5Search.Data.b_S0_16_141_d4
theorem event3254_same_family : IndexedHighD2Certificates.event3254.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3254_valid)
theorem event3254_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3254.object IndexedHighD2Certificates.event3254.event.sourceDegree IndexedHighD2Certificates.event3254.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3254.object IndexedHighD2Certificates.event3254.event.targetDegree IndexedHighD2Certificates.event3254.event.finite.targetStages :=
  ⟨event3254_same_family.2.2.2.2.2.1,event3254_same_family.2.2.2.2.2.2⟩
theorem target3254_lookup : lookup family (keyAt IndexedHighD2Certificates.event3254.object
    IndexedHighD2Certificates.event3254.event.eventPage IndexedHighD2Certificates.event3254.event.targetDegree) = some target3254 := by decide
theorem target3254_exact_previous :
    AggregateD5Conditional.Data.b_S0_16_141_d3.h = target3254.m ∧
    AggregateD5Conditional.Data.b_S0_12_138_d3.h = target3254.n ∧
    AggregateD5Conditional.Data.b_S0_20_144_d3.h = target3254.k := by decide
theorem target3254_complete : target3254.Valid := Stem125E5Search.Data.b_S0_16_141_d4_complete
theorem target3254_full_incoming : target3254.incoming = IndexedHighD2Certificates.event3254.event.finite.event.outgoing ∧
    target3254.m = IndexedHighD2Certificates.event3254.event.finite.event.k ∧
    target3254.n = IndexedHighD2Certificates.event3254.event.finite.event.m := by decide
theorem target3254_event_target : AggregateD5Conditional.Events.event3254Target = IndexedHighD2Certificates.event3254.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3254Target i = IndexedHighD2Certificates.event3254.event.finite.targetVector i from by decide) i
theorem target3254_event_source : AggregateD5Conditional.Events.event3254Source = IndexedHighD2Certificates.event3254.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3254Source i = IndexedHighD2Certificates.event3254.event.finite.sourceVector i from by decide) i
theorem target3254_image : InImage (matrixOf target3254.m target3254.n target3254.incoming) AggregateD5Conditional.Events.event3254Target := by
  refine ⟨AggregateD5Conditional.Events.event3254Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3254.m target3254.n target3254.incoming) AggregateD5Conditional.Events.event3254Source i = AggregateD5Conditional.Events.event3254Target i from by decide) i
theorem target3254_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3254.k target3254.m target3254.outgoing), cycle.val = AggregateD5Conditional.Events.event3254Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3254.k target3254.m target3254.outgoing)
        (matrixOf target3254.m target3254.n target3254.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3254 target3254_complete _ target3254_image
theorem target3254_whole_quotient_zero (x : Homology
    (matrixOf target3254.k target3254.m target3254.outgoing)
    (matrixOf target3254.m target3254.n target3254.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3254.comparison target3254_complete.2 x
#print axioms target3254_quotient_zero
def target3629 : WireComparison := Stem125E5Search.Data.b_S0_21_146_d4
theorem event3629_same_family : IndexedHighD2Certificates.event3629.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3629_valid)
theorem event3629_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3629.object IndexedHighD2Certificates.event3629.event.sourceDegree IndexedHighD2Certificates.event3629.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3629.object IndexedHighD2Certificates.event3629.event.targetDegree IndexedHighD2Certificates.event3629.event.finite.targetStages :=
  ⟨event3629_same_family.2.2.2.2.2.1,event3629_same_family.2.2.2.2.2.2⟩
theorem target3629_lookup : lookup family (keyAt IndexedHighD2Certificates.event3629.object
    IndexedHighD2Certificates.event3629.event.eventPage IndexedHighD2Certificates.event3629.event.targetDegree) = some target3629 := by decide
theorem target3629_exact_previous :
    AggregateD5Conditional.Data.b_S0_21_146_d3.h = target3629.m ∧
    AggregateD5Conditional.Data.b_S0_17_143_d3.h = target3629.n ∧
    Stem125E5Search.Data.b_S0_25_149_d3.h = target3629.k := by decide
theorem target3629_complete : target3629.Valid := Stem125E5Search.Data.b_S0_21_146_d4_complete
theorem target3629_full_incoming : target3629.incoming = IndexedHighD2Certificates.event3629.event.finite.event.outgoing ∧
    target3629.m = IndexedHighD2Certificates.event3629.event.finite.event.k ∧
    target3629.n = IndexedHighD2Certificates.event3629.event.finite.event.m := by decide
theorem target3629_event_target : AggregateD5Conditional.Events.event3629Target = IndexedHighD2Certificates.event3629.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3629Target i = IndexedHighD2Certificates.event3629.event.finite.targetVector i from by decide) i
theorem target3629_event_source : AggregateD5Conditional.Events.event3629Source = IndexedHighD2Certificates.event3629.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3629Source i = IndexedHighD2Certificates.event3629.event.finite.sourceVector i from by decide) i
theorem target3629_image : InImage (matrixOf target3629.m target3629.n target3629.incoming) AggregateD5Conditional.Events.event3629Target := by
  refine ⟨AggregateD5Conditional.Events.event3629Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3629.m target3629.n target3629.incoming) AggregateD5Conditional.Events.event3629Source i = AggregateD5Conditional.Events.event3629Target i from by decide) i
theorem target3629_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3629.k target3629.m target3629.outgoing), cycle.val = AggregateD5Conditional.Events.event3629Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3629.k target3629.m target3629.outgoing)
        (matrixOf target3629.m target3629.n target3629.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3629 target3629_complete _ target3629_image
theorem target3629_whole_quotient_zero (x : Homology
    (matrixOf target3629.k target3629.m target3629.outgoing)
    (matrixOf target3629.m target3629.n target3629.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3629.comparison target3629_complete.2 x
#print axioms target3629_quotient_zero
def target3744 : WireComparison := Stem125E5Search.Data.b_S0_22_147_d4
theorem event3744_same_family : IndexedHighD2Certificates.event3744.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3744_valid)
theorem event3744_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3744.object IndexedHighD2Certificates.event3744.event.sourceDegree IndexedHighD2Certificates.event3744.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3744.object IndexedHighD2Certificates.event3744.event.targetDegree IndexedHighD2Certificates.event3744.event.finite.targetStages :=
  ⟨event3744_same_family.2.2.2.2.2.1,event3744_same_family.2.2.2.2.2.2⟩
theorem target3744_lookup : lookup family (keyAt IndexedHighD2Certificates.event3744.object
    IndexedHighD2Certificates.event3744.event.eventPage IndexedHighD2Certificates.event3744.event.targetDegree) = some target3744 := by decide
theorem target3744_exact_previous :
    AggregateD5Conditional.Data.b_S0_22_147_d3.h = target3744.m ∧
    AggregateD5Conditional.Data.b_S0_18_144_d3.h = target3744.n ∧
    Stem125E5Search.Data.b_S0_26_150_d3.h = target3744.k := by decide
theorem target3744_complete : target3744.Valid := Stem125E5Search.Data.b_S0_22_147_d4_complete
theorem target3744_full_incoming : target3744.incoming = IndexedHighD2Certificates.event3744.event.finite.event.outgoing ∧
    target3744.m = IndexedHighD2Certificates.event3744.event.finite.event.k ∧
    target3744.n = IndexedHighD2Certificates.event3744.event.finite.event.m := by decide
theorem target3744_event_target : AggregateD5Conditional.Events.event3744Target = IndexedHighD2Certificates.event3744.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3744Target i = IndexedHighD2Certificates.event3744.event.finite.targetVector i from by decide) i
theorem target3744_event_source : AggregateD5Conditional.Events.event3744Source = IndexedHighD2Certificates.event3744.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3744Source i = IndexedHighD2Certificates.event3744.event.finite.sourceVector i from by decide) i
theorem target3744_image : InImage (matrixOf target3744.m target3744.n target3744.incoming) AggregateD5Conditional.Events.event3744Target := by
  refine ⟨AggregateD5Conditional.Events.event3744Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3744.m target3744.n target3744.incoming) AggregateD5Conditional.Events.event3744Source i = AggregateD5Conditional.Events.event3744Target i from by decide) i
theorem target3744_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3744.k target3744.m target3744.outgoing), cycle.val = AggregateD5Conditional.Events.event3744Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3744.k target3744.m target3744.outgoing)
        (matrixOf target3744.m target3744.n target3744.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3744 target3744_complete _ target3744_image
theorem target3744_whole_quotient_zero (x : Homology
    (matrixOf target3744.k target3744.m target3744.outgoing)
    (matrixOf target3744.m target3744.n target3744.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3744.comparison target3744_complete.2 x
#print axioms target3744_quotient_zero
def target3745 : WireComparison := Stem125E5Search.Data.b_S0_22_147_d4
theorem event3745_same_family : IndexedHighD2Certificates.event3745.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event3745_valid)
theorem event3745_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event3745.object IndexedHighD2Certificates.event3745.event.sourceDegree IndexedHighD2Certificates.event3745.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event3745.object IndexedHighD2Certificates.event3745.event.targetDegree IndexedHighD2Certificates.event3745.event.finite.targetStages :=
  ⟨event3745_same_family.2.2.2.2.2.1,event3745_same_family.2.2.2.2.2.2⟩
theorem target3745_lookup : lookup family (keyAt IndexedHighD2Certificates.event3745.object
    IndexedHighD2Certificates.event3745.event.eventPage IndexedHighD2Certificates.event3745.event.targetDegree) = some target3745 := by decide
theorem target3745_exact_previous :
    AggregateD5Conditional.Data.b_S0_22_147_d3.h = target3745.m ∧
    AggregateD5Conditional.Data.b_S0_18_144_d3.h = target3745.n ∧
    Stem125E5Search.Data.b_S0_26_150_d3.h = target3745.k := by decide
theorem target3745_complete : target3745.Valid := Stem125E5Search.Data.b_S0_22_147_d4_complete
theorem target3745_full_incoming : target3745.incoming = IndexedHighD2Certificates.event3745.event.finite.event.outgoing ∧
    target3745.m = IndexedHighD2Certificates.event3745.event.finite.event.k ∧
    target3745.n = IndexedHighD2Certificates.event3745.event.finite.event.m := by decide
theorem target3745_event_target : AggregateD5Conditional.Events.event3745Target = IndexedHighD2Certificates.event3745.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3745Target i = IndexedHighD2Certificates.event3745.event.finite.targetVector i from by decide) i
theorem target3745_event_source : AggregateD5Conditional.Events.event3745Source = IndexedHighD2Certificates.event3745.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event3745Source i = IndexedHighD2Certificates.event3745.event.finite.sourceVector i from by decide) i
theorem target3745_image : InImage (matrixOf target3745.m target3745.n target3745.incoming) AggregateD5Conditional.Events.event3745Target := by
  refine ⟨AggregateD5Conditional.Events.event3745Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target3745.m target3745.n target3745.incoming) AggregateD5Conditional.Events.event3745Source i = AggregateD5Conditional.Events.event3745Target i from by decide) i
theorem target3745_quotient_zero :
    ∃ cycle : Cycle (matrixOf target3745.k target3745.m target3745.outgoing), cycle.val = AggregateD5Conditional.Events.event3745Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target3745.k target3745.m target3745.outgoing)
        (matrixOf target3745.m target3745.n target3745.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target3745 target3745_complete _ target3745_image
theorem target3745_whole_quotient_zero (x : Homology
    (matrixOf target3745.k target3745.m target3745.outgoing)
    (matrixOf target3745.m target3745.n target3745.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target3745.comparison target3745_complete.2 x
#print axioms target3745_quotient_zero
def target4764 : WireComparison := Stem125E4Search.Data.b_S0_34_159_d3
theorem event4764_same_family : IndexedHighD2Certificates.event4764.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4764_valid)
theorem event4764_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event4764.object IndexedHighD2Certificates.event4764.event.sourceDegree IndexedHighD2Certificates.event4764.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event4764.object IndexedHighD2Certificates.event4764.event.targetDegree IndexedHighD2Certificates.event4764.event.finite.targetStages :=
  ⟨event4764_same_family.2.2.2.2.2.1,event4764_same_family.2.2.2.2.2.2⟩
theorem target4764_lookup : lookup family (keyAt IndexedHighD2Certificates.event4764.object
    IndexedHighD2Certificates.event4764.event.eventPage IndexedHighD2Certificates.event4764.event.targetDegree) = some target4764 := by decide
theorem target4764_exact_previous :
    AggregateD5Conditional.Data.b_S0_34_159_d2.h = target4764.m ∧
    AggregateD5Conditional.Data.b_S0_31_157_d2.h = target4764.n ∧
    Stem125E4Search.Data.b_S0_37_161_d2.h = target4764.k := by decide
theorem target4764_complete : target4764.Valid := Stem125E4Search.Data.b_S0_34_159_d3_complete
theorem target4764_full_incoming : target4764.incoming = IndexedHighD2Certificates.event4764.event.finite.event.outgoing ∧
    target4764.m = IndexedHighD2Certificates.event4764.event.finite.event.k ∧
    target4764.n = IndexedHighD2Certificates.event4764.event.finite.event.m := by decide
theorem target4764_event_target : AggregateD5Conditional.Events.event4764Target = IndexedHighD2Certificates.event4764.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event4764Target i = IndexedHighD2Certificates.event4764.event.finite.targetVector i from by decide) i
theorem target4764_event_source : AggregateD5Conditional.Events.event4764Source = IndexedHighD2Certificates.event4764.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event4764Source i = IndexedHighD2Certificates.event4764.event.finite.sourceVector i from by decide) i
theorem target4764_image : InImage (matrixOf target4764.m target4764.n target4764.incoming) AggregateD5Conditional.Events.event4764Target := by
  refine ⟨AggregateD5Conditional.Events.event4764Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target4764.m target4764.n target4764.incoming) AggregateD5Conditional.Events.event4764Source i = AggregateD5Conditional.Events.event4764Target i from by decide) i
theorem target4764_quotient_zero :
    ∃ cycle : Cycle (matrixOf target4764.k target4764.m target4764.outgoing), cycle.val = AggregateD5Conditional.Events.event4764Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target4764.k target4764.m target4764.outgoing)
        (matrixOf target4764.m target4764.n target4764.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target4764 target4764_complete _ target4764_image
theorem target4764_whole_quotient_zero (x : Homology
    (matrixOf target4764.k target4764.m target4764.outgoing)
    (matrixOf target4764.m target4764.n target4764.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target4764.comparison target4764_complete.2 x
#print axioms target4764_quotient_zero
def target4929 : WireComparison := Stem125E4Search.Data.b_S0_36_161_d3
theorem event4929_same_family : IndexedHighD2Certificates.event4929.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event4929_valid)
theorem event4929_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event4929.object IndexedHighD2Certificates.event4929.event.sourceDegree IndexedHighD2Certificates.event4929.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event4929.object IndexedHighD2Certificates.event4929.event.targetDegree IndexedHighD2Certificates.event4929.event.finite.targetStages :=
  ⟨event4929_same_family.2.2.2.2.2.1,event4929_same_family.2.2.2.2.2.2⟩
theorem target4929_lookup : lookup family (keyAt IndexedHighD2Certificates.event4929.object
    IndexedHighD2Certificates.event4929.event.eventPage IndexedHighD2Certificates.event4929.event.targetDegree) = some target4929 := by decide
theorem target4929_exact_previous :
    AggregateD5Conditional.Data.b_S0_36_161_d2.h = target4929.m ∧
    AggregateD5Conditional.Data.b_S0_33_159_d2.h = target4929.n ∧
    Stem125E4Search.Data.b_S0_39_163_d2.h = target4929.k := by decide
theorem target4929_complete : target4929.Valid := Stem125E4Search.Data.b_S0_36_161_d3_complete
theorem target4929_full_incoming : target4929.incoming = IndexedHighD2Certificates.event4929.event.finite.event.outgoing ∧
    target4929.m = IndexedHighD2Certificates.event4929.event.finite.event.k ∧
    target4929.n = IndexedHighD2Certificates.event4929.event.finite.event.m := by decide
theorem target4929_event_target : AggregateD5Conditional.Events.event4929Target = IndexedHighD2Certificates.event4929.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event4929Target i = IndexedHighD2Certificates.event4929.event.finite.targetVector i from by decide) i
theorem target4929_event_source : AggregateD5Conditional.Events.event4929Source = IndexedHighD2Certificates.event4929.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event4929Source i = IndexedHighD2Certificates.event4929.event.finite.sourceVector i from by decide) i
theorem target4929_image : InImage (matrixOf target4929.m target4929.n target4929.incoming) AggregateD5Conditional.Events.event4929Target := by
  refine ⟨AggregateD5Conditional.Events.event4929Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target4929.m target4929.n target4929.incoming) AggregateD5Conditional.Events.event4929Source i = AggregateD5Conditional.Events.event4929Target i from by decide) i
theorem target4929_quotient_zero :
    ∃ cycle : Cycle (matrixOf target4929.k target4929.m target4929.outgoing), cycle.val = AggregateD5Conditional.Events.event4929Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target4929.k target4929.m target4929.outgoing)
        (matrixOf target4929.m target4929.n target4929.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target4929 target4929_complete _ target4929_image
theorem target4929_whole_quotient_zero (x : Homology
    (matrixOf target4929.k target4929.m target4929.outgoing)
    (matrixOf target4929.m target4929.n target4929.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target4929.comparison target4929_complete.2 x
#print axioms target4929_quotient_zero
def target5862 : WireComparison := Stem125E4Search.Data.b_S0_45_170_d3
theorem event5862_same_family : IndexedHighD2Certificates.event5862.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5862_valid)
theorem event5862_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event5862.object IndexedHighD2Certificates.event5862.event.sourceDegree IndexedHighD2Certificates.event5862.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event5862.object IndexedHighD2Certificates.event5862.event.targetDegree IndexedHighD2Certificates.event5862.event.finite.targetStages :=
  ⟨event5862_same_family.2.2.2.2.2.1,event5862_same_family.2.2.2.2.2.2⟩
theorem target5862_lookup : lookup family (keyAt IndexedHighD2Certificates.event5862.object
    IndexedHighD2Certificates.event5862.event.eventPage IndexedHighD2Certificates.event5862.event.targetDegree) = some target5862 := by decide
theorem target5862_exact_previous :
    AggregateD5Conditional.Data.b_S0_45_170_d2.h = target5862.m ∧
    AggregateD5Conditional.Data.b_S0_42_168_d2.h = target5862.n ∧
    Stem125E4Search.Data.b_S0_48_172_d2.h = target5862.k := by decide
theorem target5862_complete : target5862.Valid := Stem125E4Search.Data.b_S0_45_170_d3_complete
theorem target5862_full_incoming : target5862.incoming = IndexedHighD2Certificates.event5862.event.finite.event.outgoing ∧
    target5862.m = IndexedHighD2Certificates.event5862.event.finite.event.k ∧
    target5862.n = IndexedHighD2Certificates.event5862.event.finite.event.m := by decide
theorem target5862_event_target : AggregateD5Conditional.Events.event5862Target = IndexedHighD2Certificates.event5862.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event5862Target i = IndexedHighD2Certificates.event5862.event.finite.targetVector i from by decide) i
theorem target5862_event_source : AggregateD5Conditional.Events.event5862Source = IndexedHighD2Certificates.event5862.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event5862Source i = IndexedHighD2Certificates.event5862.event.finite.sourceVector i from by decide) i
theorem target5862_image : InImage (matrixOf target5862.m target5862.n target5862.incoming) AggregateD5Conditional.Events.event5862Target := by
  refine ⟨AggregateD5Conditional.Events.event5862Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target5862.m target5862.n target5862.incoming) AggregateD5Conditional.Events.event5862Source i = AggregateD5Conditional.Events.event5862Target i from by decide) i
theorem target5862_quotient_zero :
    ∃ cycle : Cycle (matrixOf target5862.k target5862.m target5862.outgoing), cycle.val = AggregateD5Conditional.Events.event5862Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target5862.k target5862.m target5862.outgoing)
        (matrixOf target5862.m target5862.n target5862.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target5862 target5862_complete _ target5862_image
theorem target5862_whole_quotient_zero (x : Homology
    (matrixOf target5862.k target5862.m target5862.outgoing)
    (matrixOf target5862.m target5862.n target5862.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target5862.comparison target5862_complete.2 x
#print axioms target5862_quotient_zero
def target5977 : WireComparison := Stem125E5Search.Data.b_S0_46_171_d4
theorem event5977_same_family : IndexedHighD2Certificates.event5977.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event5977_valid)
theorem event5977_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event5977.object IndexedHighD2Certificates.event5977.event.sourceDegree IndexedHighD2Certificates.event5977.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event5977.object IndexedHighD2Certificates.event5977.event.targetDegree IndexedHighD2Certificates.event5977.event.finite.targetStages :=
  ⟨event5977_same_family.2.2.2.2.2.1,event5977_same_family.2.2.2.2.2.2⟩
theorem target5977_lookup : lookup family (keyAt IndexedHighD2Certificates.event5977.object
    IndexedHighD2Certificates.event5977.event.eventPage IndexedHighD2Certificates.event5977.event.targetDegree) = some target5977 := by decide
theorem target5977_exact_previous :
    AggregateD5Conditional.Data.b_S0_46_171_d3.h = target5977.m ∧
    AggregateD5Conditional.Data.b_S0_42_168_d3.h = target5977.n ∧
    Stem125E5Search.Data.b_S0_50_174_d3.h = target5977.k := by decide
theorem target5977_complete : target5977.Valid := Stem125E5Search.Data.b_S0_46_171_d4_complete
theorem target5977_full_incoming : target5977.incoming = IndexedHighD2Certificates.event5977.event.finite.event.outgoing ∧
    target5977.m = IndexedHighD2Certificates.event5977.event.finite.event.k ∧
    target5977.n = IndexedHighD2Certificates.event5977.event.finite.event.m := by decide
theorem target5977_event_target : AggregateD5Conditional.Events.event5977Target = IndexedHighD2Certificates.event5977.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event5977Target i = IndexedHighD2Certificates.event5977.event.finite.targetVector i from by decide) i
theorem target5977_event_source : AggregateD5Conditional.Events.event5977Source = IndexedHighD2Certificates.event5977.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event5977Source i = IndexedHighD2Certificates.event5977.event.finite.sourceVector i from by decide) i
theorem target5977_image : InImage (matrixOf target5977.m target5977.n target5977.incoming) AggregateD5Conditional.Events.event5977Target := by
  refine ⟨AggregateD5Conditional.Events.event5977Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target5977.m target5977.n target5977.incoming) AggregateD5Conditional.Events.event5977Source i = AggregateD5Conditional.Events.event5977Target i from by decide) i
theorem target5977_quotient_zero :
    ∃ cycle : Cycle (matrixOf target5977.k target5977.m target5977.outgoing), cycle.val = AggregateD5Conditional.Events.event5977Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target5977.k target5977.m target5977.outgoing)
        (matrixOf target5977.m target5977.n target5977.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target5977 target5977_complete _ target5977_image
theorem target5977_whole_quotient_zero (x : Homology
    (matrixOf target5977.k target5977.m target5977.outgoing)
    (matrixOf target5977.m target5977.n target5977.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target5977.comparison target5977_complete.2 x
#print axioms target5977_quotient_zero
def target6296 : WireComparison := Stem125E5Search.Data.b_S0_49_174_d4
theorem event6296_same_family : IndexedHighD2Certificates.event6296.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event6296_valid)
theorem event6296_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event6296.object IndexedHighD2Certificates.event6296.event.sourceDegree IndexedHighD2Certificates.event6296.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event6296.object IndexedHighD2Certificates.event6296.event.targetDegree IndexedHighD2Certificates.event6296.event.finite.targetStages :=
  ⟨event6296_same_family.2.2.2.2.2.1,event6296_same_family.2.2.2.2.2.2⟩
theorem target6296_lookup : lookup family (keyAt IndexedHighD2Certificates.event6296.object
    IndexedHighD2Certificates.event6296.event.eventPage IndexedHighD2Certificates.event6296.event.targetDegree) = some target6296 := by decide
theorem target6296_exact_previous :
    AggregateD5Conditional.Data.b_S0_49_174_d3.h = target6296.m ∧
    AggregateD5Conditional.Data.b_S0_45_171_d3.h = target6296.n ∧
    Stem125E5Search.Data.b_S0_53_177_d3.h = target6296.k := by decide
theorem target6296_complete : target6296.Valid := Stem125E5Search.Data.b_S0_49_174_d4_complete
theorem target6296_full_incoming : target6296.incoming = IndexedHighD2Certificates.event6296.event.finite.event.outgoing ∧
    target6296.m = IndexedHighD2Certificates.event6296.event.finite.event.k ∧
    target6296.n = IndexedHighD2Certificates.event6296.event.finite.event.m := by decide
theorem target6296_event_target : AggregateD5Conditional.Events.event6296Target = IndexedHighD2Certificates.event6296.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event6296Target i = IndexedHighD2Certificates.event6296.event.finite.targetVector i from by decide) i
theorem target6296_event_source : AggregateD5Conditional.Events.event6296Source = IndexedHighD2Certificates.event6296.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event6296Source i = IndexedHighD2Certificates.event6296.event.finite.sourceVector i from by decide) i
theorem target6296_image : InImage (matrixOf target6296.m target6296.n target6296.incoming) AggregateD5Conditional.Events.event6296Target := by
  refine ⟨AggregateD5Conditional.Events.event6296Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target6296.m target6296.n target6296.incoming) AggregateD5Conditional.Events.event6296Source i = AggregateD5Conditional.Events.event6296Target i from by decide) i
theorem target6296_quotient_zero :
    ∃ cycle : Cycle (matrixOf target6296.k target6296.m target6296.outgoing), cycle.val = AggregateD5Conditional.Events.event6296Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target6296.k target6296.m target6296.outgoing)
        (matrixOf target6296.m target6296.n target6296.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target6296 target6296_complete _ target6296_image
theorem target6296_whole_quotient_zero (x : Homology
    (matrixOf target6296.k target6296.m target6296.outgoing)
    (matrixOf target6296.m target6296.n target6296.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target6296.comparison target6296_complete.2 x
#print axioms target6296_quotient_zero
def target7247 : WireComparison := Stem125E4Search.Data.b_S0_57_182_d3
theorem event7247_same_family : IndexedHighD2Certificates.event7247.Valid family :=
  IndexedD5Certificates.bound_extension extends_old unique
    (IndexedD5Certificates.bound_extension IndexedD5Certificates.extends_old IndexedD5Certificates.unique
      IndexedHighD2Certificates.event7247_valid)
theorem event7247_full_stage_binding :
    StageBinding family IndexedHighD2Certificates.event7247.object IndexedHighD2Certificates.event7247.event.sourceDegree IndexedHighD2Certificates.event7247.event.finite.sourceStages ∧
    StageBinding family IndexedHighD2Certificates.event7247.object IndexedHighD2Certificates.event7247.event.targetDegree IndexedHighD2Certificates.event7247.event.finite.targetStages :=
  ⟨event7247_same_family.2.2.2.2.2.1,event7247_same_family.2.2.2.2.2.2⟩
theorem target7247_lookup : lookup family (keyAt IndexedHighD2Certificates.event7247.object
    IndexedHighD2Certificates.event7247.event.eventPage IndexedHighD2Certificates.event7247.event.targetDegree) = some target7247 := by decide
theorem target7247_exact_previous :
    AggregateD5Conditional.Data.b_S0_57_182_d2.h = target7247.m ∧
    AggregateD5Conditional.Data.b_S0_54_180_d2.h = target7247.n ∧
    Stem125E4Search.Data.b_S0_60_184_d2.h = target7247.k := by decide
theorem target7247_complete : target7247.Valid := Stem125E4Search.Data.b_S0_57_182_d3_complete
theorem target7247_full_incoming : target7247.incoming = IndexedHighD2Certificates.event7247.event.finite.event.outgoing ∧
    target7247.m = IndexedHighD2Certificates.event7247.event.finite.event.k ∧
    target7247.n = IndexedHighD2Certificates.event7247.event.finite.event.m := by decide
theorem target7247_event_target : AggregateD5Conditional.Events.event7247Target = IndexedHighD2Certificates.event7247.event.finite.targetVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event7247Target i = IndexedHighD2Certificates.event7247.event.finite.targetVector i from by decide) i
theorem target7247_event_source : AggregateD5Conditional.Events.event7247Source = IndexedHighD2Certificates.event7247.event.finite.sourceVector := by
  funext i
  exact (show ∀ i, AggregateD5Conditional.Events.event7247Source i = IndexedHighD2Certificates.event7247.event.finite.sourceVector i from by decide) i
theorem target7247_image : InImage (matrixOf target7247.m target7247.n target7247.incoming) AggregateD5Conditional.Events.event7247Target := by
  refine ⟨AggregateD5Conditional.Events.event7247Source,?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target7247.m target7247.n target7247.incoming) AggregateD5Conditional.Events.event7247Source i = AggregateD5Conditional.Events.event7247Target i from by decide) i
theorem target7247_quotient_zero :
    ∃ cycle : Cycle (matrixOf target7247.k target7247.m target7247.outgoing), cycle.val = AggregateD5Conditional.Events.event7247Target ∧
      (Quot.mk _ cycle : Homology (matrixOf target7247.k target7247.m target7247.outgoing)
        (matrixOf target7247.m target7247.n target7247.incoming)) =
          Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  target_boundary_zero target7247 target7247_complete _ target7247_image
theorem target7247_whole_quotient_zero (x : Homology
    (matrixOf target7247.k target7247.m target7247.outgoing)
    (matrixOf target7247.m target7247.n target7247.incoming)) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  AllClaimZeroTargetCertificates.zero_quotient target7247.comparison target7247_complete.2 x
#print axioms target7247_quotient_zero
#print axioms target_boundary_zero
#print axioms old_missing_partition
#print axioms all_35_incoming_targets
end AggregateIncomingTargetCompletion
