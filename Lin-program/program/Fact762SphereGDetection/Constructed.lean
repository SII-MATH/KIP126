import Fact762SphereGDetection.Assembly

namespace Fact762SphereGDetection.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge ProductDescent

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def nextValue {r : Nat} {d : Bidegree} (x : PageCycle S r d) :=
  (pages.nextPage r d).toNext (Quotient.mk _ x)

/-- An empty complete E2 group stays zero under the actual quotient maps. -/
theorem empty_later (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (d : Bidegree) (empty : Coordinates S 2 d 0) (n : Nat)
    (x : (S.element (n+2) d).carrier) : x = 0 := by
  obtain ⟨x0,⟨trace⟩⟩ := Trace.exists_initial S pages d n x
  apply Trace.zero_endpoint S pages zeros d trace
  exact empty.equivalence.injective (by funext i; exact Fin.elim0 i)

theorem h0_d3 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (empty : Coordinates S 2 ⟨4,3⟩ 0) (x : (S.element 3 ⟨1,1⟩).carrier) :
    S.differential 3 ⟨1,1⟩ x = 0 := empty_later zeros ⟨4,3⟩ empty 1 _

theorem h0_d4 (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (empty : Coordinates S 2 ⟨5,4⟩ 0) (x : (S.element 4 ⟨1,1⟩).carrier) :
    S.differential 4 ⟨1,1⟩ x = 0 := empty_later zeros ⟨5,4⟩ empty 2 _

/-- The h0 factor is specified at E2; the right factor is the finite prefix
of ss5468 (basis5466), not either desired detector differential. -/
structure H0Prefix (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  h0 : PageCycle S 2 ⟨1,1⟩
  z : PageCycle S 2 ⟨22,166⟩
  h0d3 : S.differential 3 ⟨1,1⟩ (nextValue (pages := pages) h0) = 0
  zd3 : S.differential 3 ⟨22,166⟩ (nextValue (pages := pages) z) = 0
  transition2 : Transition S pages P 2 ⟨1,1⟩ ⟨22,166⟩
  transition3 : Transition S pages P 3 ⟨1,1⟩ ⟨22,166⟩

def H0Prefix.h0Cycle3 (F : H0Prefix S pages P) : PageCycle S 3 ⟨1,1⟩ :=
  ⟨nextValue (pages := pages) F.h0,F.h0d3.trans (S.zero_is_zero _ _).symm⟩
def H0Prefix.zCycle3 (F : H0Prefix S pages P) : PageCycle S 3 ⟨22,166⟩ :=
  ⟨nextValue (pages := pages) F.z,F.zd3.trans (S.zero_is_zero _ _).symm⟩

theorem h0_name3 (A : Detector.Stage2 S pages P) (F : H0Prefix S pages P)
    (rawName : A.target.equivalence (P.product.multiply 2 ⟨1,1⟩ ⟨22,166⟩ F.h0.val F.z.val) = H0Data.namedTarget) :
    A.input.nextTarget.equivalence
      (P.product.multiply 3 ⟨1,1⟩ ⟨22,166⟩ (nextValue (pages := pages) F.h0) (nextValue (pages := pages) F.z)) = Whole.unitVector 3 2 :=
  (NamedCycles.product_next_name A.targetMeaning Data.w23_167_2_valid A.targetZero
    F.transition2 F.h0 F.z H0Data.namedTarget rawName).trans H0Data.target_next

theorem empty_outgoing {r : Nat} {d : Bidegree} {w : WireComparison}
    {c : Coordinates S r d w.m} (M : Meaning S r d w c)
    (empty : w.k = 0) (x : (S.element r d).carrier) : S.differential r d x = 0 := by
  apply M.outgoing_injective
  rw [M.outgoing,M.outgoing_zero]
  funext i
  have h := i.isLt
  have impossible : w.k = 0 := empty
  omega

/-- All three target d3 columns are derived. The incoming equation should be
supplied by incoming_from_by_sigma, which covers its whole source. -/
noncomputable def stage3 (A : Detector.Stage2 S pages P) (F : H0Prefix S pages P)
    (rawName : A.target.equivalence (P.product.multiply 2 ⟨1,1⟩ ⟨22,166⟩ F.h0.val F.z.val) = H0Data.namedTarget)
    (left : Meaning S 3 Detector.leftDegree Data.w4_24_3 A.input.nextLeft)
    (right : Meaning S 3 Detector.rightDegree Data.w19_143_3 A.input.nextRight)
    (targetAdd : ∀ x y, A.input.nextTarget.equivalence (x+y) = add (A.input.nextTarget.equivalence x) (A.input.nextTarget.equivalence y))
    (outgoing : Coordinates S 3 (AdamsTarget 3 Detector.targetDegree) 1)
    (incomingSource : ActualAdamsIncomingBridge.Source S 3 Detector.targetDegree ≃ Vec 2)
    (incoming : ∀ x, A.input.nextTarget.equivalence (ActualAdamsIncomingBridge.differential S 3 Detector.targetDegree x) =
      eval (matrixOf 3 2 Data.w23_167_3.incoming) (incomingSource x))
    (boundary : (S.element 3 ⟨20,165⟩).carrier)
    (recorded : A.input.nextTarget.equivalence (S.differential 3 ⟨20,165⟩ boundary) = Whole.unitVector 3 0)
    (leftZero : LocalZeroMeaning pages 3 Detector.leftDegree)
    (rightZero : LocalZeroMeaning pages 3 Detector.rightDegree)
    (targetZero : LocalZeroMeaning pages 3 Detector.targetDegree)
    (transition : Transition S pages P 3 Detector.leftDegree Detector.rightDegree) : Detector.Stage3 S pages P where
  previous := A
  leftMeaning := left
  rightMeaning := right
  targetMeaning := DerivedMeaning.detector3 A.input.nextTarget targetAdd outgoing incomingSource incoming boundary recorded
    (A.input.nextLeft.equivalence.symm (fun _ => true)) (A.input.nextRight.equivalence.symm (fun _ => true))
    (nextValue (pages := pages) F.h0) (nextValue (pages := pages) F.z)
    (empty_outgoing left rfl _) (empty_outgoing right rfl _) F.h0d3 F.zd3
    (by
      have h := next_product_coordinates A.input
        (A.input.nextLeft.equivalence.symm (fun _ => true)) (A.input.nextRight.equivalence.symm (fun _ => true))
      rw [A.input.nextLeft.equivalence.apply_symm_apply,A.input.nextRight.equivalence.apply_symm_apply] at h
      exact h.trans (by change PageProductCertificates.product Data.product3.product (fun _ => true) (fun _ => true) = Whole.unitVector 3 1; decide))
    (h0_name3 A F rawName)
  leftZero := leftZero
  rightZero := rightZero
  targetZero := targetZero
  transition := transition

/-- E4 naming for h0*z is derived from its actual E2 product, not assumed. -/
theorem h0_name4 (A : Detector.Stage3 S pages P) (F : H0Prefix S pages P)
    (rawName : A.previous.target.equivalence (P.product.multiply 2 ⟨1,1⟩ ⟨22,166⟩ F.h0.val F.z.val) = H0Data.namedTarget) :
    A.input.nextTarget.equivalence
      (P.product.multiply 4 ⟨1,1⟩ ⟨22,166⟩ (nextValue (pages := pages) F.h0Cycle3) (nextValue (pages := pages) F.zCycle3)) = (fun i => i.val == 1) := by
  have name3 := h0_name3 A.previous F rawName
  have h := NamedCycles.product_next_name A.targetMeaning Data.w23_167_3_valid A.targetZero
    F.transition3 F.h0Cycle3 F.zCycle3 (Whole.unitVector 3 2) name3
  exact h.trans (by decide)

noncomputable def stage4 (A : Detector.Stage3 S pages P) (F : H0Prefix S pages P)
    (rawName : A.previous.target.equivalence (P.product.multiply 2 ⟨1,1⟩ ⟨22,166⟩ F.h0.val F.z.val) = H0Data.namedTarget)
    (h0d4 : S.differential 4 ⟨1,1⟩ (nextValue (pages := pages) F.h0Cycle3) = 0)
    (zd4 : S.differential 4 ⟨22,166⟩ (nextValue (pages := pages) F.zCycle3) = 0)
    (left : Meaning S 4 Detector.leftDegree Data.w4_24_4 A.input.nextLeft)
    (right : Meaning S 4 Detector.rightDegree Data.w19_143_4 A.input.nextRight)
    (targetAdd : ∀ x y, A.input.nextTarget.equivalence (x+y) = add (A.input.nextTarget.equivalence x) (A.input.nextTarget.equivalence y))
    (outgoing : Coordinates S 4 (AdamsTarget 4 Detector.targetDegree) 2)
    (incomingSource : ActualAdamsIncomingBridge.Source S 4 Detector.targetDegree ≃ Vec 0)
    (leftZero : LocalZeroMeaning pages 4 Detector.leftDegree)
    (rightZero : LocalZeroMeaning pages 4 Detector.rightDegree)
    (targetZero : LocalZeroMeaning pages 4 Detector.targetDegree)
    (transition : Transition S pages P 4 Detector.leftDegree Detector.rightDegree) : Detector.Stage4 S pages P where
  previous := A
  leftMeaning := left
  rightMeaning := right
  targetMeaning := DerivedMeaning.detector4 A.input.nextTarget targetAdd outgoing incomingSource
    (A.input.nextLeft.equivalence.symm (fun _ => true)) (A.input.nextRight.equivalence.symm (fun _ => true))
    (nextValue (pages := pages) F.h0Cycle3) (nextValue (pages := pages) F.zCycle3)
    (empty_outgoing left rfl _) (empty_outgoing right rfl _) h0d4 zd4
    (by
      have h := next_product_coordinates A.input
        (A.input.nextLeft.equivalence.symm (fun _ => true)) (A.input.nextRight.equivalence.symm (fun _ => true))
      rw [A.input.nextLeft.equivalence.apply_symm_apply,A.input.nextRight.equivalence.apply_symm_apply] at h
      exact h.trans (by change PageProductCertificates.product Data.product4.product (fun _ => true) (fun _ => true) = (fun i => i.val == 0); decide))
    (h0_name4 A F rawName)
  leftZero := leftZero
  rightZero := rightZero
  targetZero := targetZero
  transition := transition

#print axioms h0_name3
#print axioms empty_later
#print axioms h0_d3
#print axioms h0_d4
#print axioms empty_outgoing
#print axioms stage3
#print axioms h0_name4
#print axioms stage4
end Fact762SphereGDetection.Constructed
