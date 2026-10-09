import Fact721ConstructedActual.Basic
import Prop79TargetSearch.Assembly

namespace Prop79NeighborCoordinates
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Fact721ConstructedActual

namespace Incoming4
abbrev degree : Bidegree := ⟨10,136⟩
abbrev wire2 := Prop79IncomingSearch.Finite.Cnu_10_136_d2
theorem accepted2 : checkWire wire2 = true := by decide
abbrev wire3 := Prop79IncomingSearch.Finite.Cnu_10_136_d3
theorem accepted3 : checkWire wire3 = true := by decide
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 3}

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 3) where
  step2 : StepInput degree S pages 2 wire2 initial
noncomputable def Prefix3.page3 (P : Prefix3 S pages initial) :
    AdditiveCoordinates degree S 3 1 := P.step2.next accepted2
#print axioms Prefix3.page3

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 3) where
  previous : Prefix3 S pages initial
  step3 : StepInput degree S pages 3 wire3 previous.page3
noncomputable def Prefix4.page4 (P : Prefix4 S pages initial) :
    AdditiveCoordinates degree S 4 0 := P.step3.next accepted3
#print axioms Prefix4.page4
end Incoming4

namespace Outgoing4
abbrev degree : Bidegree := ⟨18,142⟩
abbrev wire2 := Prop79IncomingSearch.Finite.Cnu_18_142_d2
theorem accepted2 : checkWire wire2 = true := by decide
abbrev wire3 := Prop79IncomingSearch.Finite.Cnu_18_142_d3
theorem accepted3 : checkWire wire3 = true := by decide
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 2}

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) where
  step2 : StepInput degree S pages 2 wire2 initial
noncomputable def Prefix3.page3 (P : Prefix3 S pages initial) :
    AdditiveCoordinates degree S 3 0 := P.step2.next accepted2
#print axioms Prefix3.page3

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) where
  previous : Prefix3 S pages initial
  step3 : StepInput degree S pages 3 wire3 previous.page3
noncomputable def Prefix4.page4 (P : Prefix4 S pages initial) :
    AdditiveCoordinates degree S 4 0 := P.step3.next accepted3
#print axioms Prefix4.page4
end Outgoing4

namespace Incoming5
abbrev degree : Bidegree := ⟨9,135⟩
abbrev wire2 := Prop79IncomingSearch.Finite.Cnu_9_135_d2
theorem accepted2 : checkWire wire2 = true := by decide
abbrev wire3 := Prop79IncomingSearch.Finite.Cnu_9_135_d3
theorem accepted3 : checkWire wire3 = true := by decide
abbrev wire4 := Prop79IncomingSearch.Finite.Cnu_9_135_d4
theorem accepted4 : checkWire wire4 = true := by decide
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 5}

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 5) where
  step2 : StepInput degree S pages 2 wire2 initial
noncomputable def Prefix3.page3 (P : Prefix3 S pages initial) :
    AdditiveCoordinates degree S 3 3 := P.step2.next accepted2
#print axioms Prefix3.page3

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 5) where
  previous : Prefix3 S pages initial
  step3 : StepInput degree S pages 3 wire3 previous.page3
noncomputable def Prefix4.page4 (P : Prefix4 S pages initial) :
    AdditiveCoordinates degree S 4 2 := P.step3.next accepted3
#print axioms Prefix4.page4

structure Prefix5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 5) where
  previous : Prefix4 S pages initial
  step4 : StepInput degree S pages 4 wire4 previous.page4
noncomputable def Prefix5.page5 (P : Prefix5 S pages initial) :
    AdditiveCoordinates degree S 5 1 := P.step4.next accepted4
#print axioms Prefix5.page5
end Incoming5

end Prop79NeighborCoordinates
