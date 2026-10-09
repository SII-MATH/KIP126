import ActualAdamsHomologyCoordinates.Adapter
import PageTransitionCertificates.InducedMap

namespace Fact713D4SourceSearch.ActualDescent
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

/-- The current map is interpreted on every actual element. Both finite
adjacent squares and the two complete actual homology meanings are retained. -/
structure Input (S T : AdamsSpectralSequence) (r : Nat) (ds dt : Bidegree)
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
  matrix : Matrix wt.m ws.m
  upper : Matrix wt.k ws.k
  lower : Matrix wt.n ws.n
  compatible : CompatibleMap (matrixOf ws.k ws.m ws.outgoing)
    (matrixOf ws.m ws.n ws.incoming) (matrixOf wt.k wt.m wt.outgoing)
    (matrixOf wt.m wt.n wt.incoming) matrix upper lower
  currentMap : (S.element r ds).carrier → (T.element r dt).carrier
  currentEquation : ∀ x, ct.equivalence (currentMap x) = eval matrix (cs.equivalence x)
  nextMap : (S.element (r + 1) ds).carrier → (T.element (r + 1) dt).carrier

variable {S T : AdamsSpectralSequence} {r : Nat} {ds dt : Bidegree}
  {ws wt : WireComparison} {cs : Coordinates S r ds ws.m}
  {ct : Coordinates T r dt wt.m}

def Input.mappedCycle (D : Input S T r ds dt ws wt cs ct) (x : PageCycle S r ds) :
    PageCycle T r dt :=
  ⟨D.currentMap x.val, by
    apply (D.targetMeaning.cycle_iff _).mpr
    rw [D.currentEquation]
    exact preservesCycles D.compatible
      ⟨cs.equivalence x.val, (D.sourceMeaning.cycle_iff _).mp x.property⟩⟩

/-- This is the actual map's quotient transition law, not a supplied
next-page coordinate formula. It ranges over all actual cycles. -/
def Input.Transition (D : Input S T r ds dt ws wt cs ct) : Prop :=
  ∀ x : PageCycle S r ds,
    D.nextMap ((D.sourcePages.nextPage r ds).toNext (Quotient.mk _ x)) =
      (D.targetPages.nextPage r dt).toNext (Quotient.mk _ (D.mappedCycle x))

noncomputable def Input.nextSource (D : Input S T r ds dt ws wt cs ct) :
    Coordinates S (r + 1) ds ws.h :=
  D.sourceMeaning.nextCoordinates D.sourcePages D.sourceValid D.sourceZero

noncomputable def Input.nextTarget (D : Input S T r ds dt ws wt cs ct) :
    Coordinates T (r + 1) dt wt.h :=
  D.targetMeaning.nextCoordinates D.targetPages D.targetValid D.targetZero

theorem next_map_coordinates (D : Input S T r ds dt ws wt cs ct)
    (transition : D.Transition) (x : (S.element (r + 1) ds).carrier) :
    D.nextTarget.equivalence (D.nextMap x) =
      eval (coordinateMap ws.comparison wt.comparison D.matrix)
        (D.nextSource.equivalence x) := by
  obtain ⟨q, rfl⟩ := (pageEquiv D.sourcePages (r := r) (degree := ds)).surjective x
  refine Quotient.inductionOn q ?_
  intro x
  change D.nextTarget.equivalence
      (D.nextMap ((D.sourcePages.nextPage r ds).toNext (Quotient.mk _ x))) = _
  rw [transition x]
  change (D.targetMeaning.nextCoordinates D.targetPages D.targetValid D.targetZero).equivalence
      ((D.targetPages.nextPage r dt).toNext (Quotient.mk _ (D.mappedCycle x))) =
    eval _ ((D.sourceMeaning.nextCoordinates D.sourcePages D.sourceValid D.sourceZero).equivalence
      ((D.sourcePages.nextPage r ds).toNext (Quotient.mk _ x)))
  rw [D.targetMeaning.nextCoordinates_quotient, D.sourceMeaning.nextCoordinates_quotient]
  change eval wt.comparison.projection (ct.equivalence (D.currentMap x.val)) = _
  rw [D.currentEquation]
  exact induced_coordinates_all D.compatible ws.comparison wt.comparison
    D.sourceValid.2 D.targetValid.2
    (Quot.mk _ (⟨cs.equivalence x.val,
      (D.sourceMeaning.cycle_iff _).mp x.property⟩ : PageTransitionCertificates.Cycle _))

theorem next_all_zero (D : Input S T r ds dt ws wt cs ct)
    (transition : D.Transition)
    (finiteZero : ∀ x : Vec ws.h,
      eval (coordinateMap ws.comparison wt.comparison D.matrix) x = zero)
    (x : (S.element (r + 1) ds).carrier) : D.nextMap x = 0 := by
  apply D.nextTarget.equivalence.injective
  rw [next_map_coordinates D transition, finiteZero, D.nextTarget.zero_value]

theorem next_reflects_zero (D : Input S T r ds dt ws wt cs ct)
    (transition : D.Transition)
    (finiteReflects : ∀ x : Vec ws.h,
      eval (coordinateMap ws.comparison wt.comparison D.matrix) x = zero → x = zero)
    (x : (S.element (r + 1) ds).carrier) (hx : D.nextMap x = 0) : x = 0 := by
  apply D.nextSource.equivalence.injective
  rw [D.nextSource.zero_value]
  apply finiteReflects
  rw [← next_map_coordinates D transition, hx, D.nextTarget.zero_value]

#print axioms Input.mappedCycle
#print axioms next_map_coordinates
#print axioms next_all_zero
#print axioms next_reflects_zero
end Fact713D4SourceSearch.ActualDescent
