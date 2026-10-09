import Row2916D4Search.Finite
import Fact713D4SourceSearch.ActualDescent
import Fact713Row3247Source.ModuleLeibniz
import Row3143D0Leibniz.Descent

namespace Row2916D4Search.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent ActualAdamsProductCycleBridge
open Fact713Row3247Source.ModuleLeibniz Comparison Finite

abbrev coefficientDegree : Bidegree := ⟨8,101⟩
abbrev generatorDegree : Bidegree := ⟨5,38⟩
abbrev moduleDegree : Bidegree := ⟨13,139⟩
abbrev sphereDegree : Bidegree := ⟨13,137⟩
abbrev moduleTargetDegree : Bidegree := ⟨17,142⟩
abbrev sphereTargetDegree : Bidegree := ⟨17,140⟩

/-- Complete E2 map meanings construct both E3 coordinate systems.
All product equations range over their full indicated carriers. -/
structure Input (S T : AdamsSpectralSequence) (A : Action S T) where
  module2 : Coordinates T 2 moduleDegree Ceta_13_139.m
  sphere2 : Coordinates S 2 sphereDegree S0_13_137.m
  top : Fact713D4SourceSearch.ActualDescent.Input T S 2 moduleDegree sphereDegree
    Ceta_13_139 S0_13_137 module2 sphere2
  topMatrix : top.matrix = Maps.top_13_139.algebra.mat
  topTransition : top.Transition
  generator : Coordinates T 3 generatorDegree 2
  generatorTarget : Coordinates T 3 (AdamsTarget 3 generatorDegree) 1
  coefficientTarget : Coordinates S 3 (AdamsTarget 3 coefficientDegree) 2
  productTarget : Coordinates T 3 (AdamsTarget 3 moduleDegree) 2
  coefficientCoordinates : Coordinates S 3 coefficientDegree 2
  coefficient : (S.element 3 coefficientDegree).carrier
  coefficientName : coefficientCoordinates.equivalence coefficient = namedGenerator
  sourceProduct : ∀ y, top.nextSource.equivalence
    (A.multiply 3 coefficientDegree generatorDegree coefficient y) =
      eval source_5_38_E3 (generator.equivalence y)
  rightProduct : ∀ y, productTarget.equivalence
    (A.multiply 3 coefficientDegree (AdamsTarget 3 generatorDegree) coefficient y) =
      eval right_8_40_E3 (generatorTarget.equivalence y)
  leftProduct : ∀ x y, productTarget.equivalence
    (A.multiply 3 (AdamsTarget 3 coefficientDegree) generatorDegree x y) =
      Finite.leftProduct (coefficientTarget.equivalence x) (generator.equivalence y)
  moduleIncomingSource : ActualAdamsIncomingBridge.Source T 3 moduleDegree ≃ Vec 2
  moduleIncoming : ∀ x, top.nextSource.equivalence
    (ActualAdamsIncomingBridge.differential T 3 moduleDegree x) = zero
  moduleAdd : ∀ x y, top.nextSource.equivalence (x+y) =
    add (top.nextSource.equivalence x) (top.nextSource.equivalence y)
  sphereComplete : ActualAdamsHomologyCoordinates.Meaning S 3 sphereDegree sphereD3 top.nextTarget
  moduleZero : LocalZeroMeaning top.sourcePages 3 moduleDegree
  sphereZero : LocalZeroMeaning top.targetPages 3 sphereDegree
  target2 : Coordinates T 2 moduleTargetDegree Ceta_17_142.m
  targetComplete : ActualAdamsHomologyCoordinates.Meaning T 2 moduleTargetDegree Ceta_17_142 target2
  targetZero2 : LocalZeroMeaning top.sourcePages 2 moduleTargetDegree
  targetZero3 : LocalZeroMeaning top.sourcePages 3 moduleTargetDegree
  map4 : (T.element 4 moduleDegree).carrier → (S.element 4 sphereDegree).carrier
  map4Target : (T.element 4 moduleTargetDegree).carrier → (S.element 4 sphereTargetDegree).carrier
  map4TargetZero : map4Target 0 = 0
  naturality4 : ∀ x, S.differential 4 sphereDegree (map4 x) =
    map4Target (T.differential 4 moduleDegree x)

variable {S T : AdamsSpectralSequence} {A : Action S T}

theorem product_d3_zero (D : Input S T A) (y : (T.element 3 generatorDegree).carrier) :
    T.differential 3 moduleDegree (A.multiply 3 coefficientDegree generatorDegree D.coefficient y) = 0 := by
  have hl : A.multiply 3 (AdamsTarget 3 coefficientDegree) generatorDegree
      (S.differential 3 coefficientDegree D.coefficient) y = 0 :=
    D.productTarget.equivalence.injective
      ((D.leftProduct _ y).trans ((whole_left_zero _ _).trans D.productTarget.zero_value.symm))
  have hr : A.multiply 3 coefficientDegree (AdamsTarget 3 generatorDegree)
      D.coefficient (T.differential 3 generatorDegree y) = 0 :=
    D.productTarget.equivalence.injective
      ((D.rightProduct _).trans ((right_zero _).trans D.productTarget.zero_value.symm))
  apply (cast_zero_iff T 3 (adamsTarget_add_left 3 coefficientDegree generatorDegree) _).mp
  have formula := A.leibniz 3 coefficientDegree generatorDegree D.coefficient y
  rw [hl,hr,cast_zero,add_zero] at formula
  exact formula

noncomputable def Input.named (D : Input S T A) : (T.element 3 moduleDegree).carrier :=
  A.multiply 3 coefficientDegree generatorDegree D.coefficient
    (D.generator.equivalence.symm namedGenerator)

theorem named_coordinate (D : Input S T A) : D.top.nextSource.equivalence D.named = namedModule := by
  rw [Input.named,D.sourceProduct,D.generator.equivalence.apply_symm_apply]
  exact source_name

theorem whole_module_d3_zero (D : Input S T A) (x : (T.element 3 moduleDegree).carrier) :
    T.differential 3 moduleDegree x = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = namedModule := by decide
  rcases cases (D.top.nextSource.equivalence x) with hz | hn
  · have same : x = 0 := D.top.nextSource.equivalence.injective (hz.trans D.top.nextSource.zero_value.symm)
    rw [same,(T.differential 3 moduleDegree).map_zero']
  · have same : x = D.named := D.top.nextSource.equivalence.injective (hn.trans (named_coordinate D).symm)
    rw [same]
    exact product_d3_zero D _

def Input.moduleComplete (D : Input S T A) :
    ActualAdamsHomologyCoordinates.Meaning T 3 moduleDegree moduleD3 D.top.nextSource where
  current_add := D.moduleAdd
  outgoingCoordinates := D.productTarget.equivalence
  outgoing_injective := D.productTarget.equivalence.injective
  outgoing_zero := D.productTarget.zero_value
  outgoing := by
    intro x
    rw [whole_module_d3_zero D,D.productTarget.zero_value]
    exact (show ∀ v : Vec 1, eval (matrixOf 2 1 moduleD3.outgoing) v = zero from by decide) _ |>.symm
  incomingCoordinates := D.moduleIncomingSource
  incoming_surjective := D.moduleIncomingSource.surjective
  incoming := by
    intro x
    exact (D.moduleIncoming x).trans
      (((show ∀ v : Vec 2, eval (matrixOf 1 2 moduleD3.incoming) v = zero from by decide) _).symm)

noncomputable def Input.module4 (D : Input S T A) : Coordinates T 4 moduleDegree 1 :=
  D.moduleComplete.nextCoordinates D.top.sourcePages moduleD3_valid D.moduleZero
noncomputable def Input.sphere4 (D : Input S T A) : Coordinates S 4 sphereDegree 1 :=
  D.sphereComplete.nextCoordinates D.top.targetPages sphereD3_valid D.sphereZero
noncomputable def Input.target3 (D : Input S T A) : Coordinates T 3 moduleTargetDegree 0 :=
  D.targetComplete.nextCoordinates D.top.sourcePages Ceta_17_142_valid D.targetZero2

noncomputable def Input.namedCycle (D : Input S T A) : PageCycle T 3 moduleDegree :=
  ⟨D.named,(whole_module_d3_zero D D.named).trans (T.zero_is_zero _ _).symm⟩
noncomputable def Input.named4 (D : Input S T A) :=
  (D.top.sourcePages.nextPage 3 moduleDegree).toNext (Quotient.mk _ D.namedCycle)

theorem named4_coordinate (D : Input S T A) : D.module4.equivalence D.named4 = namedModule :=
  (D.moduleComplete.nextCoordinates_quotient D.top.sourcePages moduleD3_valid D.moduleZero D.namedCycle).trans
    ((congrArg (eval moduleD3.comparison.projection) (named_coordinate D)).trans
      (moduleD3_projection _))

theorem top_coordinate (D : Input S T A) (x : (T.element 3 moduleDegree).carrier) :
    D.top.nextTarget.equivalence (D.top.nextMap x) = eval top_13_139_E3 (D.top.nextSource.equivalence x) := by
  have h := next_map_coordinates D.top D.topTransition x
  rw [D.topMatrix] at h
  exact h

def Input.mappedCycle (D : Input S T A) (x : PageCycle T 3 moduleDegree) : PageCycle S 3 sphereDegree :=
  ⟨D.top.nextMap x.val,by
    apply (D.sphereComplete.cycle_iff _).mpr
    change eval (matrixOf sphereD3.k sphereD3.m sphereD3.outgoing)
      (D.top.nextTarget.equivalence (D.top.nextMap x.val)) = zero
    erw [top_coordinate D]
    exact (show ∀ v : Vec 1,
      eval (matrixOf sphereD3.k sphereD3.m sphereD3.outgoing) (eval top_13_139_E3 v) = zero from by decide) _⟩

/-- The entire actual map commutes with quotient representatives, not only
the requested class and not a supplied coordinate formula. -/
def Input.Transition4 (D : Input S T A) : Prop :=
  ∀ x : PageCycle T 3 moduleDegree,
    D.map4 ((D.top.sourcePages.nextPage 3 moduleDegree).toNext (Quotient.mk _ x)) =
      (D.top.targetPages.nextPage 3 sphereDegree).toNext (Quotient.mk _ (D.mappedCycle x))

theorem image4_coordinate (D : Input S T A) (transition : D.Transition4) :
    D.sphere4.equivalence (D.map4 D.named4) = namedModule := by
  rw [Input.named4,transition D.namedCycle]
  have h := D.sphereComplete.nextCoordinates_quotient D.top.targetPages sphereD3_valid D.sphereZero
    (D.mappedCycle D.namedCycle)
  have hn : D.top.nextTarget.equivalence (D.top.nextMap D.named) = namedSphere :=
    (top_coordinate D D.named).trans ((congrArg (eval top_13_139_E3) (named_coordinate D)).trans top_name)
  exact h.trans ((congrArg (eval sphereD3.comparison.projection) hn).trans sphere_name_next)

theorem whole_module_d4_zero (D : Input S T A) (x : (T.element 4 moduleDegree).carrier) :
    T.differential 4 moduleDegree x = 0 :=
  Row3143D0Leibniz.Descent.next_zero T D.top.sourcePages moduleTargetDegree D.targetZero3
    (fun z => D.target3.equivalence.injective (funext (fun i => Fin.elim0 i))) _

theorem whole_sphere_d4_zero (D : Input S T A) (transition : D.Transition4)
    (x : (S.element 4 sphereDegree).carrier) : S.differential 4 sphereDegree x = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = namedModule := by decide
  rcases cases (D.sphere4.equivalence x) with hz | hn
  · have same : x = 0 := D.sphere4.equivalence.injective (hz.trans D.sphere4.zero_value.symm)
    rw [same,(S.differential 4 sphereDegree).map_zero']
  · have same : x = D.map4 D.named4 :=
      D.sphere4.equivalence.injective (hn.trans (image4_coordinate D transition).symm)
    rw [same,D.naturality4]
    exact (congrArg D.map4Target (whole_module_d4_zero D D.named4)).trans D.map4TargetZero

#print axioms product_d3_zero
#print axioms named_coordinate
#print axioms whole_module_d3_zero
#print axioms Input.module4
#print axioms named4_coordinate
#print axioms image4_coordinate
#print axioms whole_module_d4_zero
#print axioms whole_sphere_d4_zero
end Row2916D4Search.Actual
