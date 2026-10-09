import Fact721ConstructedActual.Second
import Fact713SquareContinuation.Actual
import Fact761ConstructedActual.Local

namespace Fact721SecondE6
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual.Second

theorem source2_exact : Row2684D5Search.Data.source2 = wire2 := by decide
theorem source3_exact : Row2684D5Search.Data.source3 = wire3 := by decide
theorem source4_exact : Row2684D5Search.Data.source4 = wire4 := by decide
theorem name_exact : Row2684D5Search.Data.sourceVector = Fact721PageCertificates.Second.target := by decide

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}

/-- Reuse the exact existing current charts and whole maps. No second
initial chart or new interpretation of the main d3/d4 columns is supplied. -/
noncomputable def squareSource (P : Prefix5 S pages initial) : Row2684D5Search.SourcePrefix S pages where
  initial := initial.coordinates
  step2 := ⟨P.previous.previous.step2.whole.meaning,P.previous.previous.step2.zeroMeaning⟩
  step3 := ⟨P.previous.step3.whole.meaning,P.previous.step3.zeroMeaning⟩
  step4 := ⟨P.step4.whole.meaning,P.step4.zeroMeaning⟩

theorem raw_exact (P : Prefix5 S pages initial) : (squareSource P).raw = raw initial := rfl
theorem page3_exact (P : Prefix5 S pages initial) :
    ((squareSource P).step2.next Row2684D5Search.Data.source2_valid).equivalence =
      P.previous.previous.page3.coordinates.equivalence := rfl
theorem page4_exact (P : Prefix5 S pages initial) :
    ((squareSource P).step3.next Row2684D5Search.Data.source3_valid).equivalence =
      P.previous.page4.coordinates.equivalence := rfl
theorem page5_exact (P : Prefix5 S pages initial) :
    ((squareSource P).step4.next Row2684D5Search.Data.source4_valid).equivalence =
      P.page5.coordinates.equivalence := rfl
theorem endpoint5_exact (P : Prefix5 S pages initial) :
    (squareSource P).endpoint5.value = P.endpoint.value := rfl

structure SquareInput (P : Prefix5 S pages initial) (product : CertifiedAdamsProduct S) where
  factor : Row2684D5Search.FactorPrefix S pages
  product2 : ∀ a b, initial.coordinates.equivalence
    (product.product.multiply 2 Row2684D5Search.factorDegree Row2684D5Search.factorDegree a b) =
      PageProductCertificates.product Row2684D5Search.Data.tensor
        (factor.initial.equivalence a) (factor.initial.equivalence b)
  transition2 : ActualAdamsProductTraceBridge.Transition S pages product 2
    Row2684D5Search.factorDegree Row2684D5Search.factorDegree
  transition3 : ActualAdamsProductTraceBridge.Transition S pages product 3
    Row2684D5Search.factorDegree Row2684D5Search.factorDegree
  transition4 : ActualAdamsProductTraceBridge.Transition S pages product 4
    Row2684D5Search.factorDegree Row2684D5Search.factorDegree

noncomputable def SquareInput.witness {P : Prefix5 S pages initial}
    {product : CertifiedAdamsProduct S} (I : SquareInput P product) :
    Row2684D5Search.Actual.Witness S pages product where
  source := squareSource P
  factor := I.factor
  product2 := I.product2
  transition2 := I.transition2
  transition3 := I.transition3
  transition4 := I.transition4

theorem SquareInput.whole_d5_zero {P : Prefix5 S pages initial}
    {product : CertifiedAdamsProduct S} (I : SquareInput P product)
    (x : (S.element 5 degree).carrier) : S.differential 5 degree x = 0 :=
  Row2684D5Search.Actual.whole_d5_zero I.witness x

#print axioms source2_exact
#print axioms source3_exact
#print axioms source4_exact
#print axioms name_exact
#print axioms raw_exact
#print axioms page3_exact
#print axioms page4_exact
#print axioms page5_exact
#print axioms endpoint5_exact
#print axioms SquareInput.whole_d5_zero
end Fact721SecondE6
