import Row3005D4Search.Data

namespace Row3005D4Search.Source
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent Fact762CsigmasqD5.Descent
open Fact713C2Row3005.MapComparison

abbrev cDegree : Bidegree := ⟨14,139⟩
abbrev sDegree : Bidegree := ⟨14,138⟩
abbrev cUpper : Bidegree := ⟨17,141⟩
abbrev sUpper : Bidegree := ⟨17,140⟩

structure Stage2 (C S : AdamsSpectralSequence) where
  sourceCoordinates : Coordinates C 2 cDegree 5
  sphereCoordinates : Coordinates S 2 sDegree 5
  upperSourceCoordinates : Coordinates C 2 cUpper 3
  upperSphereCoordinates : Coordinates S 2 sUpper 4
  middleData : Local C S 2 cDegree sDegree source target sourceCoordinates sphereCoordinates
  upperData : Local C S 2 cUpper sUpper upperSource upperTarget
    upperSourceCoordinates upperSphereCoordinates
  middleMap : (C.element 2 cDegree).carrier → (S.element 2 sDegree).carrier
  upperMap : (C.element 2 cUpper).carrier → (S.element 2 sUpper).carrier
  middleEquation : ∀ x, sphereCoordinates.equivalence (middleMap x) =
    eval Fact713C2Row3005.MapComparison.middleMap (sourceCoordinates.equivalence x)
  upperEquation : ∀ x, upperSphereCoordinates.equivalence (upperMap x) =
    eval upperMiddleMap (upperSourceCoordinates.equivalence x)

def Stage2.middle {C S} (A : Stage2 C S) :=
  A.middleData.input Fact713C2Row3005.MapComparison.middleMap outMap inMap compatible
    A.middleMap A.middleEquation
def Stage2.upper {C S} (A : Stage2 C S) :=
  A.upperData.input upperMiddleMap upperOutMap upperInMap uppercompatible A.upperMap A.upperEquation

variable {C S : AdamsSpectralSequence}

noncomputable def Stage2.raw (A : Stage2 C S) := A.sourceCoordinates.equivalence.symm Data.c2Raw
noncomputable def Stage2.cycle2 (A : Stage2 C S) : PageCycle C 2 cDegree :=
  ⟨A.raw,(A.middle.sourceMeaning.cycle_iff _).mpr (by
    erw [Stage2.raw,Equiv.apply_symm_apply]
    exact Data.c2_cycle2)⟩
noncomputable def Stage2.value3 (A : Stage2 C S) :=
  (A.middle.sourcePages.nextPage 2 cDegree).toNext (Quotient.mk _ A.cycle2)

theorem Stage2.named2 (A : Stage2 C S) :
    A.sphereCoordinates.equivalence (A.middleMap A.raw) = Data.sphereRaw := by
  rw [A.middleEquation]
  change eval _ (A.sourceCoordinates.equivalence (A.sourceCoordinates.equivalence.symm Data.c2Raw)) = _
  rw [Equiv.apply_symm_apply]
  exact Data.map_named2

theorem Stage2.named3 (A : Stage2 C S) (transition : A.middle.Transition) :
    A.middle.nextTarget.equivalence (A.middle.nextMap A.value3) = Data.sphereName := by
  unfold Stage2.value3
  rw [transition A.cycle2]
  erw [Meaning.nextCoordinates_quotient]
  change eval target.comparison.projection (A.sphereCoordinates.equivalence (A.middleMap A.raw)) = _
  rw [A.named2]
  exact Data.sphere_next2

/-- The unknown C2 d3 columns are absent. The sphere uses its entire known
complex, and the C2 source cycle is reflected by the full target map. -/
structure Input (C S : AdamsSpectralSequence) where
  stage2 : Stage2 C S
  middleTransition : stage2.middle.Transition
  upperTransition : stage2.upper.Transition
  sphereMeaning3 : Meaning S 3 sDegree Data.sphere3 stage2.middle.nextTarget
  sphereZero3 : LocalZeroMeaning stage2.middle.targetPages 3 sDegree
  naturality3 : ∀ x, S.differential 3 sDegree (stage2.middle.nextMap x) =
    stage2.upper.nextMap (C.differential 3 cDegree x)
  map4 : (C.element 4 cDegree).carrier → (S.element 4 sDegree).carrier

theorem Input.sphere_zero3 (D : Input C S) (x : (S.element 3 sDegree).carrier) :
    S.differential 3 sDegree x = 0 :=
  ((D.sphereMeaning3.cycle_iff x).mpr (Data.sphere_zero3 _)).trans (S.zero_is_zero _ _)

theorem Input.source_zero3 (D : Input C S) (x : (C.element 3 cDegree).carrier) :
    C.differential 3 cDegree x = 0 := by
  apply next_reflects_zero D.stage2.upper D.upperTransition Data.upper_reflects
  exact (D.naturality3 x).symm.trans (D.sphere_zero3 _)

noncomputable def Input.cycle3 (D : Input C S) : PageCycle C 3 cDegree :=
  ⟨D.stage2.value3,(D.source_zero3 _).trans (C.zero_is_zero _ _).symm⟩
def Input.mappedCycle3 (D : Input C S) (x : PageCycle C 3 cDegree) : PageCycle S 3 sDegree :=
  ⟨D.stage2.middle.nextMap x.val,(D.sphere_zero3 _).trans (S.zero_is_zero _ _).symm⟩

/-- This law covers every actual cycle and its full boundary quotient. -/
def Input.Transition3 (D : Input C S) : Prop :=
  ∀ x : PageCycle C 3 cDegree,
    D.map4 ((D.stage2.middle.sourcePages.nextPage 3 cDegree).toNext (Quotient.mk _ x)) =
      (D.stage2.middle.targetPages.nextPage 3 sDegree).toNext (Quotient.mk _ (D.mappedCycle3 x))

noncomputable def Input.value4 (D : Input C S) :=
  (D.stage2.middle.sourcePages.nextPage 3 cDegree).toNext (Quotient.mk _ D.cycle3)
noncomputable def Input.sphere4 (D : Input C S) : Coordinates S 4 sDegree 1 :=
  D.sphereMeaning3.nextCoordinates D.stage2.middle.targetPages Data.sphere3_valid D.sphereZero3

theorem Input.named4 (D : Input C S) (transition : D.Transition3) :
    D.sphere4.equivalence (D.map4 D.value4) = Data.sphereName := by
  unfold Input.value4
  rw [transition D.cycle3]
  erw [Meaning.nextCoordinates_quotient]
  change eval Data.sphere3.comparison.projection
    (D.stage2.middle.nextTarget.equivalence (D.stage2.middle.nextMap D.stage2.value3)) = _
  rw [D.stage2.named3 D.middleTransition]
  exact Data.sphere_next3

noncomputable def Input.source_trace4 (D : Input C S) :
    ManualInputObligations.Trace C D.stage2.middle.sourcePages cDegree 4 D.stage2.raw D.value4 :=
  .step (.step (.start D.stage2.raw) D.stage2.cycle2.property) D.cycle3.property

noncomputable def Input.sphere_trace4 (D : Input C S) (transition : D.Transition3) :
    ManualInputObligations.Trace S D.stage2.middle.targetPages sDegree 4
      (D.stage2.middleMap D.stage2.raw) (D.map4 D.value4) := by
  unfold Input.value4
  rw [transition D.cycle3]
  apply ManualInputObligations.Trace.step
  change ManualInputObligations.Trace S D.stage2.middle.targetPages sDegree 3
    (D.stage2.middleMap D.stage2.raw) (D.stage2.middle.nextMap D.stage2.value3)
  unfold Stage2.value3
  rw [D.middleTransition D.stage2.cycle2]
  exact .step (.start _) (D.stage2.middle.mappedCycle D.stage2.cycle2).property

#print axioms Stage2.middle
#print axioms Stage2.upper
#print axioms Stage2.named2
#print axioms Stage2.named3
#print axioms Input.sphere_zero3
#print axioms Input.source_zero3
#print axioms Input.named4
#print axioms Input.source_trace4
#print axioms Input.sphere_trace4
end Row3005D4Search.Source
