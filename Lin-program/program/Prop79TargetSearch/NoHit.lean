import Prop79TargetSearch.Finite
import Prop79TargetSearch.ActualIncoming

namespace Prop79TargetSearch.NoHit
open LinearCertificates PageTransitionCertificates

def input : Vec 4 := CnuPageCertificates.target
def target3 : Vec 2 := fun i => i.val == 0
def target4 : Vec 2 := target3
def target5 : Vec 2 := target3
def incoming2 : Matrix 4 4 := CnuPageCertificates.incoming
def incoming3 : Matrix 2 3 := matrixOf 2 3 Finite.Cnu_14_139_d3.incoming
def incoming4 : Matrix 2 0 := matrixOf 2 0 Finite.Cnu_14_139_d4.incoming
def incoming5 : Matrix 2 1 := fun _ _ => false

theorem input_binding : input = CnuPageCertificates.target := rfl
theorem trace2 : eval Prop79IncomingSearch.Finite.Cnu_14_139_d2.comparison.projection input = target3 := by
  funext i
  exact (show ∀ i, eval Prop79IncomingSearch.Finite.Cnu_14_139_d2.comparison.projection input i = target3 i from by decide) i
theorem trace3 : eval Finite.Cnu_14_139_d3.comparison.projection target3 = target4 := by
  funext i
  exact (show ∀ i, eval Finite.Cnu_14_139_d3.comparison.projection target3 i = target4 i from by decide) i
theorem trace4 : eval Finite.Cnu_14_139_d4.comparison.projection target4 = target5 := by
  funext i
  exact (show ∀ i, eval Finite.Cnu_14_139_d4.comparison.projection target4 i = target5 i from by decide) i

theorem no_hit2 : ¬ InImage incoming2 input := CnuPageCertificates.target_not_boundary
theorem no_hit3 : ¬ InImage incoming3 target3 := by lin_cert using target3
theorem no_hit4 : ¬ InImage incoming4 target4 := by lin_cert using target4
theorem no_hit5 : ¬ InImage incoming5 target5 := by lin_cert using target5

/-- Completeness of source coordinates is kept explicit; the map equation
relates every actual source element, not just listed representatives. -/
structure ActualIncomingMeaning (S : ManualInputObligations.Reference.AdamsSpectralSequence)
    (r : Nat) (source target : ManualInputObligations.Reference.Bidegree)
    (targetDegree : ManualInputObligations.Reference.AdamsTarget r source = target)
    (A : Matrix m n) where
  sourceCoordinates : (S.element r source).carrier → Vec n
  sourceSurjective : Function.Surjective sourceCoordinates
  targetCoordinates : (S.element r (ManualInputObligations.Reference.AdamsTarget r source)).carrier → Vec m
  targetFaithful : Function.Injective targetCoordinates
  differential : ∀ x, targetCoordinates (S.differential r source x) = eval A (sourceCoordinates x)

theorem actual_not_hit {S : ManualInputObligations.Reference.AdamsSpectralSequence}
    {r : Nat} {source target : ManualInputObligations.Reference.Bidegree}
    {degree : ManualInputObligations.Reference.AdamsTarget r source = target}
    {A : Matrix m n} (meaning : ActualIncomingMeaning S r source target degree A)
    (x : (S.element r (ManualInputObligations.Reference.AdamsTarget r source)).carrier)
    (v : Vec m) (named : meaning.targetCoordinates x = v) (nonimage : ¬ InImage A v) :
    ¬ ∃ y, S.differential r source y = x := by
  rintro ⟨y, hit⟩
  apply nonimage
  exact ⟨meaning.sourceCoordinates y,
    (meaning.differential y).symm.trans ((congrArg meaning.targetCoordinates hit).trans named)⟩

#print axioms trace2
#print axioms trace3
#print axioms trace4
#print axioms no_hit2
#print axioms no_hit3
#print axioms no_hit4
#print axioms no_hit5
#print axioms actual_not_hit
end Prop79TargetSearch.NoHit
