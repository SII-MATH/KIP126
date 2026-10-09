import Fact762SphereGDetection.Constructed
import Fact762SphereGDetection.D2Reduction
import Fact762SphereGDetection.Semantics

namespace Fact762SphereGDetection.Tests
open LinearCertificates PageTransitionCertificates NamedElementCertificates
open ManualInputObligations ManualInputObligations.Reference

example : Data.product5 = PageProductCertificates.tensorOf 1 1 2 [true,false] := rfl
example : PageProductCertificates.product Data.product5 (fun _ => true) (fun _ => true) ≠ zero := by decide
example : ¬ (∀ y : Vec 1, PageProductCertificates.product Data.product5 zero y = zero → y = zero) := by decide

example : checkWire { Data.w23_167_3 with incoming := [false,true,true,false,false,false] } = false := by decide
example : PageProductCertificates.wireCheck { Data.product2 with tensor := [false,false,false,false,false,false,false,false,false,false] } = true := by decide
example : { Data.p0 with output := [[13,1,7,275]] }.output ≠ Data.p0.output := by decide
example : NamedElementCertificates.check Data.p0.relations Data.p0.input [[13,1,7,275]] Data.p0.terms = false := by decide
example : ModuleExpressions.Wire.valid { D2Reduction.wire with output := [[[2,287]],[],[]] } = false := by decide
example : ModuleToModuleCertificates.checkShifted { BySigmaData.m19_157 with filtration := 0 } = false := by decide

-- Omitting the incoming zero proof really can kill the detector's named class.
def poisoned : Matrix 3 2 := matrixOf 3 2 [false,true,true,false,false,false]
example : InImage poisoned (fun i => i.val == 1) := by lin_cert using (fun i => i.val == 0)
example : ¬ InImage (matrixOf 3 2 Data.w23_167_3.incoming) (fun i => i.val == 1) := by
  unfold InImage
  decide

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} {R : Type} [CommRing R] [CharP R 2]
    (c : Assembly.Certificate S pages P R)
    (input : (S.element 2 Actual.sourceDegree).carrier)
    (value : (S.element 5 Actual.sourceDegree).carrier)
    (trace : ManualInputObligations.Trace S pages Actual.sourceDegree 5 input value)
    (name : c.interpretation.source input = NamedElementCertificates.evaluate c.interpretation.valuation [[1,7,275]]) :
    S.differential 5 Actual.sourceDegree value = 0 := by
  sphere_g_d5_cert using c

#print axioms Assembly.result_sound
#print axioms Constructed.stage3
#print axioms Constructed.stage4
end Fact762SphereGDetection.Tests
