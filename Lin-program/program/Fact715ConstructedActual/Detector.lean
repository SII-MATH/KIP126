import Fact715ConstructedActual.Trace
import Fact713D4SourceSearch.ActualDescent
import Fact715TrajectoryCertificates.MapComparison

namespace Fact715ConstructedActual.Detector
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference ActualAdamsHomologyCoordinates
open Fact713D4SourceSearch.ActualDescent

abbrev cSource : Bidegree := ⟨15,141⟩
abbrev sSource : Bidegree := ⟨15,139⟩
abbrev cTarget : Bidegree := ⟨18,143⟩
abbrev sTarget : Bidegree := ⟨18,141⟩
def cNamed : Vec 2 := fun i => i.val == 0
def sNamed : Vec 2 := fun i => i.val == 1
def sKnown : Vec 2 := fun i => i.val == 0

/-- Full d2 meanings and quotient map transitions construct all E3
coordinates. The Ceta target has zero homology; no d3 value is supplied. -/
structure Input (sphere ceta : AdamsSpectralSequence) where
  cSource2 : Coordinates ceta 2 cSource Fact715TrajectoryCertificates.MapComparison.source.m
  sSource2 : Coordinates sphere 2 sSource Fact715TrajectoryCertificates.MapComparison.target.m
  cTarget2 : Coordinates ceta 2 cTarget Fact715TrajectoryCertificates.MapComparison.upperSource.m
  sTarget2 : Coordinates sphere 2 sTarget Fact715TrajectoryCertificates.MapComparison.upperTarget.m
  lower : Fact713D4SourceSearch.ActualDescent.Input ceta sphere 2 cSource sSource
    Fact715TrajectoryCertificates.MapComparison.source Fact715TrajectoryCertificates.MapComparison.target cSource2 sSource2
  upper : Fact713D4SourceSearch.ActualDescent.Input ceta sphere 2 cTarget sTarget
    Fact715TrajectoryCertificates.MapComparison.upperSource Fact715TrajectoryCertificates.MapComparison.upperTarget cTarget2 sTarget2
  lowerMatrix : lower.matrix = Fact715TrajectoryCertificates.MapComparison.middleMap
  upperMatrix : upper.matrix = Fact715TrajectoryCertificates.MapComparison.upperMiddleMap
  lowerTransition : lower.Transition
  upperTransition : upper.Transition
  sourceAddMeaning : ActualAdamsHomologyCoordinates.LocalAddMeaning lower.targetPages 2 sSource
  naturality : ∀ x, sphere.differential 3 sSource (lower.nextMap x) =
    upper.nextMap (ceta.differential 3 cSource x)

variable {sphere ceta : AdamsSpectralSequence}

theorem Input.source3_add (D : Input sphere ceta)
    (x y : (sphere.element 3 sSource).carrier) :
    D.lower.nextTarget.equivalence (x + y) =
      add (D.lower.nextTarget.equivalence x) (D.lower.nextTarget.equivalence y) :=
  nextCoordinates_add D.lower.targetMeaning D.lower.targetPages D.lower.targetValid
    D.lower.targetZero D.sourceAddMeaning x y

noncomputable def Input.preimage (D : Input sphere ceta) :
    (ceta.element 3 cSource).carrier := D.lower.nextSource.equivalence.symm cNamed

theorem Input.named_image (D : Input sphere ceta) :
    D.lower.nextTarget.equivalence (D.lower.nextMap D.preimage) = sNamed := by
  rw [next_map_coordinates D.lower D.lowerTransition, D.lowerMatrix]
  change eval (coordinateMap Fact715TrajectoryCertificates.MapComparison.source.comparison Fact715TrajectoryCertificates.MapComparison.target.comparison Fact715TrajectoryCertificates.MapComparison.middleMap)
    (D.lower.nextSource.equivalence (D.lower.nextSource.equivalence.symm cNamed)) = sNamed
  rw [D.lower.nextSource.equivalence.apply_symm_apply]
  decide

theorem Input.ceta_target_zero (D : Input sphere ceta)
    (x : (ceta.element 3 cTarget).carrier) : x = 0 := by
  apply D.upper.nextSource.equivalence.injective
  funext i
  exact Fin.elim0 i

theorem Input.upper_zero (D : Input sphere ceta) : D.upper.nextMap 0 = 0 := by
  apply D.upper.nextTarget.equivalence.injective
  rw [next_map_coordinates D.upper D.upperTransition, D.upper.nextSource.zero_value,
    eval_zero, D.upper.nextTarget.zero_value]

theorem Input.named_d3_zero (D : Input sphere ceta)
    (x : (sphere.element 3 sSource).carrier)
    (named : D.lower.nextTarget.equivalence x = sNamed) :
    sphere.differential 3 sSource x = 0 := by
  have same : x = D.lower.nextMap D.preimage :=
    D.lower.nextTarget.equivalence.injective (named.trans D.named_image.symm)
  exact (congrArg (sphere.differential 3 sSource) same).trans
    ((D.naturality D.preimage).trans
      ((congrArg D.upper.nextMap (D.ceta_target_zero
        (ceta.differential 3 cSource D.preimage))).trans D.upper_zero))

/-- Only the other named basis column remains a mathematical premise.
The unknown column is obtained from Ceta, then additivity covers all inputs. -/
theorem Input.all_d3_zero (D : Input sphere ceta)
    (currentAdd : ∀ x y, D.lower.nextTarget.equivalence (x + y) =
      add (D.lower.nextTarget.equivalence x) (D.lower.nextTarget.equivalence y))
    (known : sphere.differential 3 sSource (D.lower.nextTarget.equivalence.symm sKnown) = 0)
    (x : (sphere.element 3 sSource).carrier) : sphere.differential 3 sSource x = 0 := by
  let c := D.lower.nextTarget
  let a := c.equivalence.symm sKnown
  let b := c.equivalence.symm sNamed
  have hb : sphere.differential 3 sSource b = 0 :=
    D.named_d3_zero b (c.equivalence.apply_symm_apply sNamed)
  have all : ∀ v : Vec 2, v = zero ∨ v = sKnown ∨ v = sNamed ∨ v = add sKnown sNamed := by decide
  rcases all (c.equivalence x) with hz | ha | hb' | hab
  · have eq : x = 0 := c.equivalence.injective (hz.trans c.zero_value.symm)
    rw [eq, (sphere.differential 3 sSource).map_zero']
  · have eq : x = a := c.equivalence.injective (ha.trans (c.equivalence.apply_symm_apply sKnown).symm)
    exact eq ▸ known
  · have eq : x = b := c.equivalence.injective (hb'.trans (c.equivalence.apply_symm_apply sNamed).symm)
    exact eq ▸ hb
  · have eq : x = a + b := by
      apply c.equivalence.injective
      change c.equivalence x = D.lower.nextTarget.equivalence (a + b)
      rw [currentAdd, show c.equivalence a = sKnown from c.equivalence.apply_symm_apply _,
        show c.equivalence b = sNamed from c.equivalence.apply_symm_apply _]
      exact hab
    rw [eq, (sphere.differential 3 sSource).map_add', known, hb, add_zero]

#print axioms Input.named_image
#print axioms Input.source3_add
#print axioms Input.ceta_target_zero
#print axioms Input.upper_zero
#print axioms Input.named_d3_zero
#print axioms Input.all_d3_zero
end Fact715ConstructedActual.Detector
