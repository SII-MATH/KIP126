import Fact762CsigmasqD5.Descent

namespace Fact762CsigmasqD5.Target
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Fact713D4SourceSearch.ActualDescent
open Comparison Descent

abbrev sourceDegree : Bidegree := ⟨19,158⟩
abbrev sphereDegree : Bidegree := ⟨19,143⟩

structure Stage2 (C S : AdamsSpectralSequence) where
  source : Coordinates C 2 sourceDegree 6
  target : Coordinates S 2 sphereDegree 2
  localData : Local C S 2 sourceDegree sphereDegree c19_158_2 s19_143_2 source target
  map : (C.element 2 sourceDegree).carrier → (S.element 2 sphereDegree).carrier
  equation : ∀ x, target.equivalence (map x) = eval Maps.m19_158.algebra.mat (source.equivalence x)

def Stage2.input (A : Stage2 C S) :=
  A.localData.input Maps.m19_158.algebra.mat Maps.m21_159.algebra.mat Maps.m17_157.algebra.mat
    f19_158_3_compatible A.map A.equation

structure Stage3 (C S : AdamsSpectralSequence) where
  previous : Stage2 C S
  transition : previous.input.Transition
  localData : Local C S 3 sourceDegree sphereDegree c19_158_3 s19_143_3
    previous.input.nextSource previous.input.nextTarget

noncomputable def Stage3.input (A : Stage3 C S) :=
  A.localData.input f19_158_3 f22_160_3 f16_156_3 f19_158_4_compatible
    A.previous.input.nextMap (next_map_coordinates A.previous.input A.transition)

structure Stage4 (C S : AdamsSpectralSequence) where
  previous : Stage3 C S
  transition : previous.input.Transition
  localData : Local C S 4 sourceDegree sphereDegree c19_158_4 s19_143_4
    previous.input.nextSource previous.input.nextTarget

noncomputable def Stage4.input (A : Stage4 C S) :=
  A.localData.input f19_158_4 f23_161_4 f15_155_4 f19_158_5_compatible
    A.previous.input.nextMap (next_map_coordinates A.previous.input A.transition)

structure Prefix (C S : AdamsSpectralSequence) where
  stage : Stage4 C S
  transition : stage.input.Transition

theorem Prefix.map_coordinates (P : Prefix C S) (x : (C.element 5 sourceDegree).carrier) :
    P.stage.input.nextTarget.equivalence (P.stage.input.nextMap x) =
      eval f19_158_5 (P.stage.input.nextSource.equivalence x) :=
  next_map_coordinates P.stage.input P.transition x

theorem Prefix.map_zero (P : Prefix C S) : P.stage.input.nextMap 0 = 0 :=
  next_map_zero P.stage.input P.transition

theorem Prefix.map_reflects (P : Prefix C S) (x : (C.element 5 sourceDegree).carrier)
    (hx : P.stage.input.nextMap x = 0) : x = 0 :=
  next_reflects_zero P.stage.input P.transition target5_reflects x hx

#print axioms Stage2.input
#print axioms Stage3.input
#print axioms Stage4.input
#print axioms Prefix.map_coordinates
#print axioms Prefix.map_zero
#print axioms Prefix.map_reflects
end Fact762CsigmasqD5.Target
