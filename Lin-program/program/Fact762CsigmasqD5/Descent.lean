import Fact762CsigmasqD5.Comparison
import Fact713D4SourceSearch.ActualDescent

namespace Fact762CsigmasqD5.Descent
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent

/-- Complete current complexes and an actual quotient map. The next coordinate
equation is constructed, so it is absent from these inputs. -/
structure Local (S T : AdamsSpectralSequence) (r : Nat) (ds dt : Bidegree)
    (ws wt : WireComparison) (cs : Coordinates S r ds ws.m)
    (ct : Coordinates T r dt wt.m) where
  sourceMeaning : Meaning S r ds ws cs
  targetMeaning : Meaning T r dt wt ct
  sourcePages : CertifiedAdamsPages S
  targetPages : CertifiedAdamsPages T
  sourceValid : ws.Valid
  targetValid : wt.Valid
  sourceZero : LocalZeroMeaning sourcePages r ds
  targetZero : LocalZeroMeaning targetPages r dt
  nextMap : (S.element (r+1) ds).carrier → (T.element (r+1) dt).carrier

def Local.input (L : Local S T r ds dt ws wt cs ct) (matrix : Matrix wt.m ws.m)
    (upper : Matrix wt.k ws.k) (lower : Matrix wt.n ws.n)
    (compatible : CompatibleMap (matrixOf ws.k ws.m ws.outgoing) (matrixOf ws.m ws.n ws.incoming)
      (matrixOf wt.k wt.m wt.outgoing) (matrixOf wt.m wt.n wt.incoming) matrix upper lower)
    (f : (S.element r ds).carrier → (T.element r dt).carrier)
    (equation : ∀ x, ct.equivalence (f x) = eval matrix (cs.equivalence x)) :
    Input S T r ds dt ws wt cs ct where
  sourceMeaning := L.sourceMeaning
  targetMeaning := L.targetMeaning
  sourcePages := L.sourcePages
  targetPages := L.targetPages
  sourceValid := L.sourceValid
  targetValid := L.targetValid
  sourceZero := L.sourceZero
  targetZero := L.targetZero
  matrix := matrix
  upper := upper
  lower := lower
  compatible := compatible
  currentMap := f
  currentEquation := equation
  nextMap := L.nextMap

theorem next_map_zero (D : Input S T r ds dt ws wt cs ct) (transition : D.Transition) :
    D.nextMap 0 = 0 := by
  apply D.nextTarget.equivalence.injective
  rw [next_map_coordinates D transition,D.nextSource.zero_value,eval_zero,D.nextTarget.zero_value]

theorem next_map_surjective (D : Input S T r ds dt ws wt cs ct) (transition : D.Transition)
    (finite : Function.Surjective (eval (coordinateMap ws.comparison wt.comparison D.matrix))) :
    Function.Surjective D.nextMap := by
  intro y
  obtain ⟨v,hv⟩ := finite (D.nextTarget.equivalence y)
  obtain ⟨x,hx⟩ := D.nextSource.equivalence.surjective v
  refine ⟨x,D.nextTarget.equivalence.injective ?_⟩
  rw [next_map_coordinates D transition,hx,hv]

#print axioms Local.input
#print axioms next_map_zero
#print axioms next_map_surjective
end Fact762CsigmasqD5.Descent
