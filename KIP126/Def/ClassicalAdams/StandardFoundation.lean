import KIP126.Def.StableHomotopy.Source.Realization

/-! The fixed foundation is the projection of one realization of the
explicit HF2-local topological prespectrum source. Construction and
comparison proofs remain deferred together in that source witness. -/
namespace KIP126.Classical.Adams
noncomputable def standardFoundation : KIP126.Foundation.FoundationInput :=
  KIP126.StableHomotopy.Source.standardRealization.foundation
noncomputable instance standardTensor : KIP126.Foundation.TensorInput standardFoundation :=
  KIP126.StableHomotopy.Source.standardRealization.tensor
/-- The same witness retains the actual source, sphere and operation
identifications; this is not a second independently selected model. -/
noncomputable def standardSourceBinding :
    KIP126.StableHomotopy.Source.Binding standardFoundation
      KIP126.StableHomotopy.Source.standardRealization.coefficientSource :=
  KIP126.StableHomotopy.Source.standardRealization.binding
noncomputable def standardMod2Ring :
    KIP126.StableHomotopy.Cohomology.Mod2RingStructure standardFoundation.hf2 := by
  sorry
noncomputable def standardKunneth :
    KIP126.StableHomotopy.Cohomology.Mod2CooperationKunneth standardFoundation.hf2 standardMod2Ring := by
  sorry
noncomputable def standardReducedMilnorBasis :
    KIP126.StableHomotopy.Cohomology.Mod2ReducedMilnorBasis standardFoundation.hf2 standardMod2Ring := by
  sorry
end KIP126.Classical.Adams
