import Fact713Ctheta4Transport.Degrees
import Fact762CsigmasqD5.Descent

namespace Fact713Ctheta4Transport.Source
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent Fact762CsigmasqD5.Descent Comparison

abbrev sourceDegree : Bidegree := ⟨17,169⟩
abbrev sphereDegree : Bidegree := ⟨17,138⟩

structure Stage2 (C S : AdamsSpectralSequence) where
  source : Coordinates C 2 sourceDegree 8
  target : Coordinates S 2 sphereDegree 4
  localData : Local C S 2 sourceDegree sphereDegree c17_169_2 s17_138_2 source target
  map : (C.element 2 sourceDegree).carrier → (S.element 2 sphereDegree).carrier
  equation : ∀ x, target.equivalence (map x) = eval Maps.m17_169.algebra.mat (source.equivalence x)

def Stage2.input (A : Stage2 C S) := A.localData.input Maps.m17_169.algebra.mat
  Maps.m19_170.algebra.mat Maps.m15_168.algebra.mat f17_169_3_compatible A.map A.equation

noncomputable def Stage2.raw (A : Stage2 C S) := A.source.equivalence.symm named2
noncomputable def Stage2.cycle2 (A : Stage2 C S) : PageCycle C 2 sourceDegree :=
  ⟨A.raw,(A.input.sourceMeaning.cycle_iff _).mpr (by
    erw [Stage2.raw,Equiv.apply_symm_apply]
    exact source2_cycle)⟩
noncomputable def Stage2.value3 (A : Stage2 C S) :=
  (A.input.sourcePages.nextPage 2 sourceDegree).toNext (Quotient.mk _ A.cycle2)

theorem Stage2.coordinate3 (A : Stage2 C S) :
    A.input.nextSource.equivalence A.value3 = named := by
  unfold Stage2.value3
  erw [Meaning.nextCoordinates_quotient]
  change eval c17_169_2.comparison.projection (A.source.equivalence (A.source.equivalence.symm named2)) = _
  rw [Equiv.apply_symm_apply]
  exact source2_next

theorem Stage2.map3_coordinates (A : Stage2 C S) (transition : A.input.Transition)
    (x : (C.element 3 sourceDegree).carrier) :
    A.input.nextTarget.equivalence (A.input.nextMap x) = eval f17_169_3 (A.input.nextSource.equivalence x) :=
  next_map_coordinates A.input transition x

theorem Stage2.named_image3 (A : Stage2 C S) (transition : A.input.Transition) :
    A.input.nextTarget.equivalence (A.input.nextMap A.value3) = sphere := by
  rw [A.map3_coordinates transition,A.coordinate3]
  exact named_map3

structure Stage3 (C S : AdamsSpectralSequence) where
  previous : Stage2 C S
  transition : previous.input.Transition
  localData : Local C S 3 sourceDegree sphereDegree c17_169_3 s17_138_3
    previous.input.nextSource previous.input.nextTarget

noncomputable def Stage3.input (A : Stage3 C S) := A.localData.input f17_169_3 f20_171_3 f14_167_3
  f17_169_4_compatible A.previous.input.nextMap (next_map_coordinates A.previous.input A.transition)

structure Prefix (C S : AdamsSpectralSequence) where
  stage : Stage3 C S
  transition : stage.input.Transition
  sourcePages : stage.previous.input.sourcePages = stage.input.sourcePages
  spherePages : stage.previous.input.targetPages = stage.input.targetPages

noncomputable def Prefix.raw (P : Prefix C S) := P.stage.previous.raw
noncomputable def Prefix.value3 (P : Prefix C S) := P.stage.previous.value3
noncomputable def Prefix.cycle3 (P : Prefix C S) : PageCycle C 3 sourceDegree :=
  ⟨P.value3,(P.stage.input.sourceMeaning.cycle_iff _).mpr (by
    erw [P.stage.previous.coordinate3]
    exact source3_cycle)⟩
noncomputable def Prefix.value4 (P : Prefix C S) :=
  (P.stage.input.sourcePages.nextPage 3 sourceDegree).toNext (Quotient.mk _ P.cycle3)

theorem Prefix.coordinate4 (P : Prefix C S) : P.stage.input.nextSource.equivalence P.value4 = named := by
  unfold Prefix.value4
  erw [Meaning.nextCoordinates_quotient]
  exact (congrArg (eval c17_169_3.comparison.projection) P.stage.previous.coordinate3).trans source3_next

theorem Prefix.named_image4 (P : Prefix C S) :
    P.stage.input.nextTarget.equivalence (P.stage.input.nextMap P.value4) = sphere := by
  rw [next_map_coordinates P.stage.input P.transition,P.coordinate4]
  exact named_map4

noncomputable def Prefix.trace4 (P : Prefix C S) :
    Trace C P.stage.input.sourcePages sourceDegree 4 P.raw P.value4 := by
  apply Trace.step
  change Trace C P.stage.input.sourcePages sourceDegree 3 P.raw P.value3
  unfold Prefix.value3 Stage2.value3
  rw [P.sourcePages]
  exact .step (.start P.raw) P.stage.previous.cycle2.property

noncomputable def Prefix.sphereTrace3 (P : Prefix C S) :
    Trace S P.stage.input.targetPages sphereDegree 3 (P.stage.previous.map P.raw)
      (P.stage.previous.input.nextMap P.value3) := by
  unfold Prefix.value3 Stage2.value3
  erw [P.stage.transition P.stage.previous.cycle2]
  rw [P.spherePages]
  exact .step (.start _) (P.stage.previous.input.mappedCycle P.stage.previous.cycle2).property

noncomputable def Prefix.sphereTrace4 (P : Prefix C S) :
    Trace S P.stage.input.targetPages sphereDegree 4 (P.stage.previous.map P.raw)
      (P.stage.input.nextMap P.value4) := by
  unfold Prefix.value4
  erw [P.transition P.cycle3]
  exact .step P.sphereTrace3 (P.stage.input.mappedCycle P.cycle3).property

theorem Prefix.sphere_raw (P : Prefix C S) :
    P.stage.previous.target.equivalence (P.stage.previous.map P.raw) = sphere2 := by
  erw [P.stage.previous.equation,Prefix.raw,Stage2.raw,Equiv.apply_symm_apply]
  exact named2_map

#print axioms Stage2.input
#print axioms Stage2.coordinate3
#print axioms Stage2.named_image3
#print axioms Stage3.input
#print axioms Prefix.coordinate4
#print axioms Prefix.named_image4
#print axioms Prefix.trace4
#print axioms Prefix.sphereTrace4
#print axioms Prefix.sphere_raw
end Fact713Ctheta4Transport.Source
