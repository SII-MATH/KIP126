import KIP126.Def.Kervaire.Route.Source.Construction
import KIP126.Main.Solution.StageInput
import KIP126.Main.Solution.Literature.SourceAdapters
import KIP126.Main.Solution.Route.AcceptedComputation

/-! The standard Final through the A/C fields of one stage witness and one
source model. This outer proof has no new placeholder and imports no Challenge.
It still depends on the separately declared model/comparison and paper
proof debts. Hence this file is not a completed proof of the Kervaire
theorem: step zero freezes the implication and all of its responsibilities.
-/
namespace KIP126.Main.Solution
open CategoryTheory KIP126.StableHomotopy KIP126.Classical.Adams
open KIP126.Kervaire.Route KIP126.Literature.Route
open KIP126.Core.SpectralSequence

theorem h6_sq_permanent :
    NonzeroSurvival sphereAdamsData (2, 128) standardH6Square := by
  obtain ⟨CS, hCS, hGeometry⟩ := KIP126.Main.StageInput.classical_source
  obtain ⟨TS, hTS, hComm⟩ := KIP126.Main.StageInput.tmf_source
  let R := sourceRealization CS TS hGeometry ⟨0, hTS.connective⟩ hTS.finiteMod2Type
  letI := R.synthetic
  letI := R.cofiber
  letI := R.symmetric
  have hc : ClassicalSourceResults standardMilnorCooperations R.source.classicalSource := by
    simpa only [R.classicalSource_eq] using hCS
  have ht : TmfSourceResults R.source.tmfSource := by
    simpa only [R.tmfSource_eq] using hTS
  have hm : letI := R.source.tmfSource.algebra
      IsCommMonObj R.source.tmfSource.spectrum := by
    exact Eq.mpr (congrArg (fun T : TmfSourceData standardFoundation.hf2 =>
      letI := T.algebra
      IsCommMonObj T.spectrum) R.tmfSource_eq) hComm
  let A := Literature.acceptedInputs R.D R.eta R.labels R.source hc ht hm
  apply Route.standard_final_of_accepted_computation R.D R.eta R.labels A
  change StandardClassicalSourceGeometry R.source.classicalSource
  exact R.source.geometry

end KIP126.Main.Solution
