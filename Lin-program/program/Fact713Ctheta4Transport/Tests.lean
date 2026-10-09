import Fact713Ctheta4Transport.Constructed
import Fact713Ctheta4Transport.D2Links

namespace Fact713Ctheta4Transport.Tests
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates
open ManualInputObligations.Reference Source Comparison

example : ¬ Degrees.GeneratorDegreeValid 0 30 := Degrees.reject_database_metadata
example : checkShifted { Maps.m17_169 with suspension := 30 } = false := by decide
example : eval f17_169_3 (fun i => i.val == 3) = zero := by decide
example : eval f17_169_3 named = sphere := named_map3
example : ¬ InKernel (matrixOf c17_169_2.k 8 c17_169_2.outgoing) (fun i => i.val == 0) := by
  unfold InKernel
  decide
example : (matrixOf 2 1 [false,true] : Matrix 2 1) ≠ matrixOf 2 1 [false,false] := by decide
example : D2.check { D2Data.b8805 with coefficientDifferential := [] } = false := by decide

example {C S : AdamsSpectralSequence} (c : Constructed.Certificate C S) :
    c.transport.stage.input.nextMap c.transport.value4 ≠ 0 ∧
    S.differential 4 sphereDegree (c.transport.stage.input.nextMap c.transport.value4) = 0 := by
  ctheta4_d4_cert using c

#print axioms Branches.residual_false
#print axioms Constructed.result_sound
end Fact713Ctheta4Transport.Tests
