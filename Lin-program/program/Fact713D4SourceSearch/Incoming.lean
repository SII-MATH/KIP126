import Fact713D4SourceSearch.Naturality
import Row2773Leibniz.Actual
import Row3151ActualTransport.Basic

namespace Fact713D4SourceSearch.Incoming
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference

abbrev sourceDegree : Bidegree := ⟨13,135⟩
abbrev targetDegree : Bidegree := ⟨16,137⟩
def namedSphere : Vec 2 := fun i => i.val == 1
def namedDetector : Vec 4 := fun i => i.val == 3

theorem map_named : eval Comparison.tiE3 namedSphere = namedDetector := by decide

/-- The only unknown incoming column is the image of the already proved
row-2773 cycle. Both actual maps and the complete unknown-column matrix are explicit. -/
theorem actual_unknown_zero (sphere detector : AdamsSpectralSequence)
    (P : CertifiedAdamsProduct sphere) (old : Row2773Leibniz.Actual.Meaning sphere P)
    (cs : Coordinates sphere 3 sourceDegree 2)
    (ct : Coordinates detector 3 sourceDegree 4)
    (cu : Coordinates detector 3 targetDegree 4)
    (lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier)
    (mapMeaning : ∀ x, ct.equivalence (lower x) = eval Comparison.tiE3 (cs.equivalence x))
    (upperZero : upper 0 = 0)
    (naturality : ∀ x, detector.differential 3 sourceDegree (lower x) =
      upper (sphere.differential 3 sourceDegree x))
    (w : Vec 4)
    (unknownMeaning : ∀ x, cu.equivalence (detector.differential 3 sourceDegree x) =
      eval (Naturality.incomingUnknown w) (ct.equivalence x))
    (a : (sphere.element 3 Row2773Leibniz.Actual.etaDegree).carrier)
    (b : (sphere.element 3 Row2773Leibniz.Actual.rightDegree).carrier)
    (x : (sphere.element 3 sourceDegree).carrier)
    (namedA : old.eta a = Row2773Leibniz.namedEta)
    (namedB : old.right b = Row2773Leibniz.namedRight)
    (namedX : old.source x = Row2773Leibniz.namedSource)
    (coordinates : cs.equivalence x = namedSphere) : w = zero := by
  have sourceZero := Row2773Leibniz.Actual.actual_row2773_d3_zero sphere P old a b x namedA namedB namedX
  have mappedZero : detector.differential 3 sourceDegree (lower x) = 0 :=
    (naturality x).trans ((congrArg upper sourceZero).trans upperZero)
  have lowerName : ct.equivalence (lower x) = namedDetector :=
    (mapMeaning x).trans ((congrArg (eval Comparison.tiE3) coordinates).trans map_named)
  have readColumn : eval (Naturality.incomingUnknown w) namedDetector = zero :=
    (congrArg (eval (Naturality.incomingUnknown w)) lowerName).symm.trans
      ((unknownMeaning (lower x)).symm.trans ((congrArg cu.equivalence mappedZero).trans cu.zero_value))
  have select : eval (Naturality.incomingUnknown w) namedDetector = w := by
    exact (show ∀ w : Vec 4, eval (Naturality.incomingUnknown w) namedDetector = w from by decide) w
  exact select.symm.trans readColumn

#print axioms map_named
#print axioms actual_unknown_zero

structure Forcing (sphere detector : AdamsSpectralSequence) (w : Vec 4) where
  product : CertifiedAdamsProduct sphere
  old : Row2773Leibniz.Actual.Meaning sphere product
  source : Coordinates sphere 3 sourceDegree 2
  imageSource : Coordinates detector 3 sourceDegree 4
  imageTarget : Coordinates detector 3 targetDegree 4
  lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier
  upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier
  mapMeaning : ∀ x, imageSource.equivalence (lower x) = eval Comparison.tiE3 (source.equivalence x)
  upperZero : upper 0 = 0
  naturality : ∀ x, detector.differential 3 sourceDegree (lower x) =
    upper (sphere.differential 3 sourceDegree x)
  unknownMeaning : ∀ x, imageTarget.equivalence (detector.differential 3 sourceDegree x) =
    eval (Naturality.incomingUnknown w) (imageSource.equivalence x)
  eta : (sphere.element 3 Row2773Leibniz.Actual.etaDegree).carrier
  right : (sphere.element 3 Row2773Leibniz.Actual.rightDegree).carrier
  named : (sphere.element 3 sourceDegree).carrier
  etaName : old.eta eta = Row2773Leibniz.namedEta
  rightName : old.right right = Row2773Leibniz.namedRight
  sourceName : old.source named = Row2773Leibniz.namedSource
  coordinateName : source.equivalence named = namedSphere

theorem Forcing.zero {sphere detector : AdamsSpectralSequence} {w : Vec 4}
    (F : Forcing sphere detector w) : w = zero :=
  actual_unknown_zero sphere detector F.product F.old F.source F.imageSource F.imageTarget
    F.lower F.upper F.mapMeaning F.upperZero F.naturality w F.unknownMeaning
    F.eta F.right F.named F.etaName F.rightName F.sourceName F.coordinateName

#print axioms Forcing.zero
end Fact713D4SourceSearch.Incoming
