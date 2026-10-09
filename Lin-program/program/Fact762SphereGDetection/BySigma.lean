import Fact762SphereGDetection.BySigmaData
import Fact762CsigmasqD5.Descent

namespace Fact762SphereGDetection.BySigma
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Fact713D4SourceSearch.ActualDescent
open Fact762CsigmasqD5.Descent BySigmaData

abbrev sourceDegree : Bidegree := ⟨19,157⟩
abbrev targetDegree : Bidegree := ⟨20,165⟩

structure Prefix (C S : AdamsSpectralSequence) where
  sourceCoordinates : Coordinates C 2 sourceDegree source.m
  targetCoordinates : Coordinates S 2 targetDegree target.m
  localData : Local C S 2 sourceDegree targetDegree source target sourceCoordinates targetCoordinates
  map : (C.element 2 sourceDegree).carrier → (S.element 2 targetDegree).carrier
  equation : ∀ x, targetCoordinates.equivalence (map x) =
    eval m19_157.algebra.mat (sourceCoordinates.equivalence x)

def Prefix.input (A : Prefix C S) :=
  A.localData.input m19_157.algebra.mat m21_158.algebra.mat m17_156.algebra.mat compatible A.map A.equation

/-- The finite cycle premise is the source staircase row4427, not sphere
row5382. The latter is deduced by actual d3 naturality. -/
theorem incoming_cycle (A : Prefix C S) (transition : A.input.Transition)
    (named : (C.element 3 sourceDegree).carrier)
    (name : A.input.nextSource.equivalence named = named3)
    (knownPrefix : C.differential 3 sourceDegree named = 0)
    (mapTarget : (C.element 3 (AdamsTarget 3 sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 targetDegree)).carrier)
    (mapZero : mapTarget 0 = 0)
    (naturality : ∀ x, S.differential 3 targetDegree (A.input.nextMap x) =
      mapTarget (C.differential 3 sourceDegree x)) :
    S.differential 3 targetDegree
      (A.input.nextTarget.equivalence.symm target3) = 0 := by
  have coord := next_map_coordinates A.input transition named
  rw [name] at coord
  have same : A.input.nextMap named = A.input.nextTarget.equivalence.symm target3 :=
    A.input.nextTarget.equivalence.injective
      ((coord.trans named3_map).trans (A.input.nextTarget.equivalence.apply_symm_apply _).symm)
  rw [← same,naturality,knownPrefix,mapZero]

#print axioms Prefix.input
#print axioms incoming_cycle
end Fact762SphereGDetection.BySigma
