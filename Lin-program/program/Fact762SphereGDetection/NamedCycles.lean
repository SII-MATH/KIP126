import Fact762SphereGDetection.Whole
import Fact762SphereGDetection.H0Data

namespace Fact762SphereGDetection.NamedCycles
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge ActualAdamsProductCycleBridge

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

/-- A raw product name descends along the actual multiplicativity square.
The named coordinate on the next page is a conclusion. -/
theorem product_next_name {r : Nat} {a b : Bidegree} {w : WireComparison}
    {current : Coordinates S r (Bidegree.add a b) w.m}
    (meaning : Meaning S r (Bidegree.add a b) w current) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r (Bidegree.add a b))
    (transition : Transition S pages P r a b) (x : PageCycle S r a) (y : PageCycle S r b)
    (v : Vec w.m) (name : current.equivalence (P.product.multiply r a b x.val y.val) = v) :
    (meaning.nextCoordinates pages valid zeroMeaning).equivalence
      (P.product.multiply (r+1) a b
        ((pages.nextPage r a).toNext (Quotient.mk _ x))
        ((pages.nextPage r b).toNext (Quotient.mk _ y))) =
      eval w.comparison.projection v := by
  rw [← transition.formula x y,meaning.nextCoordinates_quotient]
  change eval w.comparison.projection
    (current.equivalence (P.product.multiply r a b x.val y.val)) = _
  rw [name]

/-- Both unknown detector columns are obtained from actual products. The
first column is the specified incoming d3 boundary and hence a cycle. -/
theorem detector_d3_all_zero
    (current : Coordinates S 3 Detector.targetDegree 3)
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (boundary : (S.element 3 ⟨20,165⟩).carrier)
    (boundaryName : current.equivalence (S.differential 3 ⟨20,165⟩ boundary) = Whole.unitVector 3 0)
    (g : (S.element 3 Detector.leftDegree).carrier)
    (y : (S.element 3 Detector.rightDegree).carrier)
    (h0 : (S.element 3 ⟨1,1⟩).carrier) (z : (S.element 3 ⟨22,166⟩).carrier)
    (gCycle : S.differential 3 Detector.leftDegree g = 0)
    (yCycle : S.differential 3 Detector.rightDegree y = 0)
    (h0Cycle : S.differential 3 ⟨1,1⟩ h0 = 0)
    (zPrefix : S.differential 3 ⟨22,166⟩ z = 0)
    (gName : current.equivalence (P.product.multiply 3 Detector.leftDegree Detector.rightDegree g y) = Whole.unitVector 3 1)
    (h0Name : current.equivalence (P.product.multiply 3 ⟨1,1⟩ ⟨22,166⟩ h0 z) = Whole.unitVector 3 2)
    (x : (S.element 3 Detector.targetDegree).carrier) : S.differential 3 Detector.targetDegree x = 0 := by
  apply Whole.zero_of_three S 3 Detector.targetDegree current additive
  · have same : current.equivalence.symm (Whole.unitVector 3 0) = S.differential 3 ⟨20,165⟩ boundary :=
      current.equivalence.injective ((current.equivalence.apply_symm_apply _).trans boundaryName.symm)
    rw [same]
    exact S.differentialSq 3 ⟨20,165⟩ boundary
  · have same : current.equivalence.symm (Whole.unitVector 3 1) = P.product.multiply 3 Detector.leftDegree Detector.rightDegree g y :=
      current.equivalence.injective ((current.equivalence.apply_symm_apply _).trans gName.symm)
    rw [same]
    exact product_cycle S P 3 Detector.leftDegree Detector.rightDegree g y gCycle yCycle
  · have same : current.equivalence.symm (Whole.unitVector 3 2) = P.product.multiply 3 ⟨1,1⟩ ⟨22,166⟩ h0 z :=
      current.equivalence.injective ((current.equivalence.apply_symm_apply _).trans h0Name.symm)
    rw [same]
    exact product_cycle S P 3 ⟨1,1⟩ ⟨22,166⟩ h0 z h0Cycle zPrefix

/-- At E4 the full detector has exactly these two named product classes. -/
theorem detector_d4_all_zero
    (current : Coordinates S 4 Detector.targetDegree 2)
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (g : (S.element 4 Detector.leftDegree).carrier)
    (y : (S.element 4 Detector.rightDegree).carrier)
    (h0 : (S.element 4 ⟨1,1⟩).carrier) (z : (S.element 4 ⟨22,166⟩).carrier)
    (gCycle : S.differential 4 Detector.leftDegree g = 0)
    (yCycle : S.differential 4 Detector.rightDegree y = 0)
    (h0Cycle : S.differential 4 ⟨1,1⟩ h0 = 0)
    (zPrefix : S.differential 4 ⟨22,166⟩ z = 0)
    (gName : current.equivalence (P.product.multiply 4 Detector.leftDegree Detector.rightDegree g y) = (fun i => i.val == 0))
    (h0Name : current.equivalence (P.product.multiply 4 ⟨1,1⟩ ⟨22,166⟩ h0 z) = (fun i => i.val == 1))
    (x : (S.element 4 Detector.targetDegree).carrier) : S.differential 4 Detector.targetDegree x = 0 := by
  apply Fact721ConstructedActual.whole_zero_of_basis S 4 Detector.targetDegree current additive
  · have same : current.equivalence.symm (fun i => i.val == 0) = P.product.multiply 4 Detector.leftDegree Detector.rightDegree g y :=
      current.equivalence.injective ((current.equivalence.apply_symm_apply _).trans gName.symm)
    rw [same]
    exact product_cycle S P 4 Detector.leftDegree Detector.rightDegree g y gCycle yCycle
  · have same : current.equivalence.symm (fun i => i.val == 1) = P.product.multiply 4 ⟨1,1⟩ ⟨22,166⟩ h0 z :=
      current.equivalence.injective ((current.equivalence.apply_symm_apply _).trans h0Name.symm)
    rw [same]
    exact product_cycle S P 4 ⟨1,1⟩ ⟨22,166⟩ h0 z h0Cycle zPrefix

#print axioms product_next_name
#print axioms detector_d3_all_zero
#print axioms detector_d4_all_zero
end Fact762SphereGDetection.NamedCycles
