import Row2574D3Search.Semantics

namespace Row2574D3Search.Product
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact762SphereGDetection.ProductDescent ActualAdamsProductTraceBridge ActualAdamsProductCycleBridge

abbrev sourceDegree : Bidegree := ⟨6,132⟩
abbrev degree : Bidegree := ⟨9,134⟩
abbrev factorDegree : Bidegree := ⟨1,4⟩

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  original : Fact715Source2574.Actual.Stage2 S pages P
  recorded : original.RecordedMeaning
  coordinates : Coordinates S 2 degree 5
  meaning : Meaning S 2 degree Data.current2 coordinates
  zero2 : LocalZeroMeaning pages 2 degree
  equation : ∀ a b, original.target.equivalence (P.product.multiply 2 factorDegree degree a b) =
    PageProductCertificates.product Row2574Detector.Quotient.detect.product
      (original.factor.equivalence a) (coordinates.equivalence b)
  transition : Transition S pages P 2 factorDegree degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def Input.productInput (D : Input S pages P) :
    Fact762SphereGDetection.ProductDescent.Input S pages P 2 factorDegree degree
      Fact715Source2574.Data.factor Data.current2 Fact715Source2574.Data.target
      D.original.factor D.coordinates D.original.target where
  leftMeaning := D.original.factorMeaning
  rightMeaning := D.meaning
  targetMeaning := D.original.targetMeaning
  leftValid := Fact715Source2574.Data.factor_valid
  rightValid := Data.current2_valid
  targetValid := Fact715Source2574.Data.target_valid
  leftZero := D.original.factorZero
  rightZero := D.zero2
  targetZero := D.original.targetZero
  tensor := Row2574Detector.Quotient.detect.product
  nextTensor := Data.nextTensor
  equation := D.equation
  finite := fun x y _ hy => Data.tensor_basis x y hy
  transition := D.transition

noncomputable def Input.current3 (D : Input S pages P) : Coordinates S 3 degree 3 :=
  D.productInput.nextRight

theorem Input.product_coordinates (D : Input S pages P)
    (a : (S.element 3 factorDegree).carrier) (b : (S.element 3 degree).carrier) :
    D.original.target3.equivalence (P.product.multiply 3 factorDegree degree a b) =
      PageProductCertificates.product Data.nextTensor
        (D.original.factor3.equivalence a) (D.current3.equivalence b) :=
  next_product_coordinates D.productInput a b

theorem Input.detected (D : Input S pages P) :
    D.current3.equivalence (S.differential 3 sourceDegree D.original.value3) 1 = true := by
  let a := D.original.factor3.equivalence.symm (fun _ => true)
  have ha : D.original.factor3.equivalence a = (fun _ => true) :=
    D.original.factor3.equivalence.apply_symm_apply _
  have known := (D.original.recordedKnown D.recorded).differential
    (P.product.multiply 3 factorDegree sourceDegree a D.original.value3)
    (D.original.product_name a D.original.value3 ha D.original.name3)
  have formula := P.leibniz.formula 3 factorDegree sourceDegree a D.original.value3
  rw [D.original.factor_d3_zero a,P.product.zero_left,zero_add] at formula
  have same : S.differential 3 ⟨7,136⟩
      (P.product.multiply 3 factorDegree sourceDegree a D.original.value3) =
      P.product.multiply 3 factorDegree degree a (S.differential 3 sourceDegree D.original.value3) := by
    simpa [pageCast,factorDegree,sourceDegree,degree,AdamsTarget,Bidegree.add] using formula
  change D.original.target3.equivalence
    (S.differential 3 ⟨7,136⟩ (P.product.multiply 3 factorDegree sourceDegree a D.original.value3)) =
      Fact715Source2574.Finite.namedTarget at known
  rw [same,D.product_coordinates,ha] at known
  exact (Data.detection _).mp known

#print axioms Input.productInput
#print axioms Input.product_coordinates
#print axioms Input.detected
end Row2574D3Search.Product
