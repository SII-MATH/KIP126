import Fact762CsigmasqD5.Descent

namespace Fact762CsigmasqD5.Source
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Fact713D4SourceSearch.ActualDescent
open Comparison Descent

abbrev sourceDegree : Bidegree := ⟨14,154⟩
abbrev sphereDegree : Bidegree := ⟨14,139⟩

structure Stage2 (C S : AdamsSpectralSequence) where
  source : Coordinates C 2 sourceDegree 6
  target : Coordinates S 2 sphereDegree 3
  localData : Local C S 2 sourceDegree sphereDegree c14_154_2 s14_139_2 source target
  map : (C.element 2 sourceDegree).carrier → (S.element 2 sphereDegree).carrier
  equation : ∀ x, target.equivalence (map x) = eval Maps.m14_154.algebra.mat (source.equivalence x)

def Stage2.input (A : Stage2 C S) :=
  A.localData.input Maps.m14_154.algebra.mat Maps.m16_155.algebra.mat Maps.m12_153.algebra.mat
    f14_154_3_compatible A.map A.equation

structure Stage3 (C S : AdamsSpectralSequence) where
  previous : Stage2 C S
  transition : previous.input.Transition
  localData : Local C S 3 sourceDegree sphereDegree c14_154_3 s14_139_3
    previous.input.nextSource previous.input.nextTarget

noncomputable def Stage3.input (A : Stage3 C S) :=
  A.localData.input f14_154_3 f17_156_3 f11_152_3 f14_154_4_compatible
    A.previous.input.nextMap (next_map_coordinates A.previous.input A.transition)

structure Stage4 (C S : AdamsSpectralSequence) where
  previous : Stage3 C S
  transition : previous.input.Transition
  localData : Local C S 4 sourceDegree sphereDegree c14_154_4 s14_139_4
    previous.input.nextSource previous.input.nextTarget

noncomputable def Stage4.input (A : Stage4 C S) :=
  A.localData.input f14_154_4 f18_157_4 f10_151_4 f14_154_5_compatible
    A.previous.input.nextMap (next_map_coordinates A.previous.input A.transition)

structure Prefix (C S : AdamsSpectralSequence) where
  stage : Stage4 C S
  transition : stage.input.Transition
  sourcePages2 : stage.previous.previous.input.sourcePages = stage.input.sourcePages
  sourcePages3 : stage.previous.input.sourcePages = stage.input.sourcePages
  targetPages2 : stage.previous.previous.input.targetPages = stage.input.targetPages
  targetPages3 : stage.previous.input.targetPages = stage.input.targetPages

theorem Prefix.map_coordinates (P : Prefix C S) (x : (C.element 5 sourceDegree).carrier) :
    P.stage.input.nextTarget.equivalence (P.stage.input.nextMap x) =
      eval f14_154_5 (P.stage.input.nextSource.equivalence x) :=
  next_map_coordinates P.stage.input P.transition x

theorem Prefix.map_surjective (P : Prefix C S) :
    Function.Surjective P.stage.input.nextMap :=
  next_map_surjective P.stage.input P.transition map5_surjective

noncomputable def Prefix.raw (P : Prefix C S) : (C.element 2 sourceDegree).carrier :=
  P.stage.previous.previous.source.equivalence.symm named2

noncomputable def Prefix.cycle2 (P : Prefix C S) : PageCycle C 2 sourceDegree :=
  ⟨P.raw, (P.stage.previous.previous.input.sourceMeaning.cycle_iff _).mpr (by
    erw [Prefix.raw,Equiv.apply_symm_apply]
    exact source2_cycle)⟩

noncomputable def Prefix.value3 (P : Prefix C S) : (C.element 3 sourceDegree).carrier :=
  (P.stage.previous.previous.input.sourcePages.nextPage 2 sourceDegree).toNext (Quotient.mk _ P.cycle2)

theorem Prefix.coordinate3 (P : Prefix C S) :
    P.stage.previous.previous.input.nextSource.equivalence P.value3 = named := by
  unfold Prefix.value3
  erw [Meaning.nextCoordinates_quotient]
  change eval c14_154_2.comparison.projection
    (P.stage.previous.previous.source.equivalence (P.stage.previous.previous.source.equivalence.symm named2)) = _
  erw [Equiv.apply_symm_apply]
  exact source2_next

noncomputable def Prefix.cycle3 (P : Prefix C S) : PageCycle C 3 sourceDegree :=
  ⟨P.value3,(P.stage.previous.input.sourceMeaning.cycle_iff _).mpr (by
    erw [P.coordinate3]
    exact source3_cycle)⟩

noncomputable def Prefix.value4 (P : Prefix C S) : (C.element 4 sourceDegree).carrier :=
  (P.stage.previous.input.sourcePages.nextPage 3 sourceDegree).toNext (Quotient.mk _ P.cycle3)

theorem Prefix.coordinate4 (P : Prefix C S) :
    P.stage.previous.input.nextSource.equivalence P.value4 = named := by
  unfold Prefix.value4
  erw [Meaning.nextCoordinates_quotient]
  exact (congrArg (eval c14_154_3.comparison.projection) P.coordinate3).trans source3_next

noncomputable def Prefix.cycle4 (P : Prefix C S) : PageCycle C 4 sourceDegree :=
  ⟨P.value4,(P.stage.input.sourceMeaning.cycle_iff _).mpr (by
    erw [P.coordinate4]
    exact source4_cycle)⟩

noncomputable def Prefix.value5 (P : Prefix C S) : (C.element 5 sourceDegree).carrier :=
  (P.stage.input.sourcePages.nextPage 4 sourceDegree).toNext (Quotient.mk _ P.cycle4)

theorem Prefix.coordinate5 (P : Prefix C S) :
    P.stage.input.nextSource.equivalence P.value5 = named := by
  unfold Prefix.value5
  erw [Meaning.nextCoordinates_quotient]
  exact (congrArg (eval c14_154_4.comparison.projection) P.coordinate4).trans source4_next

theorem Prefix.named_image (P : Prefix C S) :
    P.stage.input.nextTarget.equivalence (P.stage.input.nextMap P.value5) = sphere := by
  erw [P.map_coordinates,P.coordinate5]
  exact named_map5

noncomputable def Prefix.trace3 (P : Prefix C S) :
    Trace C P.stage.input.sourcePages sourceDegree 3 P.raw P.value3 := by
  unfold Prefix.value3
  rw [P.sourcePages2]
  exact .step (.start P.raw) P.cycle2.property

noncomputable def Prefix.trace4 (P : Prefix C S) :
    Trace C P.stage.input.sourcePages sourceDegree 4 P.raw P.value4 := by
  unfold Prefix.value4
  rw [P.sourcePages3]
  exact .step P.trace3 P.cycle3.property

noncomputable def Prefix.trace5 (P : Prefix C S) :
    Trace C P.stage.input.sourcePages sourceDegree 5 P.raw P.value5 :=
  .step P.trace4 P.cycle4.property

theorem Prefix.value5_nonzero (P : Prefix C S) : P.value5 ≠ 0 := by
  intro h
  have bad := P.coordinate5
  rw [h,P.stage.input.nextSource.zero_value] at bad
  exact (show (zero : Vec 2) ≠ named from by decide) bad

noncomputable def Prefix.sphereTrace3 (P : Prefix C S) :
    Trace S P.stage.input.targetPages sphereDegree 3
      (P.stage.previous.previous.map P.raw)
      (P.stage.previous.previous.input.nextMap P.value3) := by
  unfold Prefix.value3
  erw [P.stage.previous.transition P.cycle2]
  rw [P.targetPages2]
  exact .step (.start _) (P.stage.previous.previous.input.mappedCycle P.cycle2).property

noncomputable def Prefix.sphereTrace4 (P : Prefix C S) :
    Trace S P.stage.input.targetPages sphereDegree 4
      (P.stage.previous.previous.map P.raw)
      (P.stage.previous.input.nextMap P.value4) := by
  unfold Prefix.value4
  erw [P.stage.transition P.cycle3]
  rw [P.targetPages3]
  exact .step P.sphereTrace3 (P.stage.previous.input.mappedCycle P.cycle3).property

noncomputable def Prefix.sphereTrace5 (P : Prefix C S) :
    Trace S P.stage.input.targetPages sphereDegree 5
      (P.stage.previous.previous.map P.raw) (P.stage.input.nextMap P.value5) := by
  unfold Prefix.value5
  erw [P.transition P.cycle4]
  exact .step P.sphereTrace4 (P.stage.input.mappedCycle P.cycle4).property

theorem Prefix.sphere_raw (P : Prefix C S) :
    P.stage.previous.previous.target.equivalence (P.stage.previous.previous.map P.raw) = sphere2 := by
  erw [P.stage.previous.previous.equation,Prefix.raw,Equiv.apply_symm_apply]
  exact named2_map

#print axioms Stage2.input
#print axioms Stage3.input
#print axioms Stage4.input
#print axioms Prefix.map_coordinates
#print axioms Prefix.map_surjective
#print axioms Prefix.coordinate3
#print axioms Prefix.coordinate4
#print axioms Prefix.coordinate5
#print axioms Prefix.named_image
#print axioms Prefix.trace3
#print axioms Prefix.trace4
#print axioms Prefix.trace5
#print axioms Prefix.value5_nonzero
#print axioms Prefix.sphereTrace3
#print axioms Prefix.sphereTrace4
#print axioms Prefix.sphereTrace5
#print axioms Prefix.sphere_raw
end Fact762CsigmasqD5.Source
