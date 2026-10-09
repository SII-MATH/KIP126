import ActualAdamsProductTraceBridge.Assembly
import Stem125ConstrainedE5.Constraints

namespace ActualStem125ConstrainedE5
open ManualInputObligations.Reference LinearCertificates PageTransitionCertificates
open Stem125E5Search Stem125ConstrainedE5 ActualAdamsProductCycleBridge
open ActualAdamsProductTraceBridge Fact764ConstrainedE5 BranchReplayCertificates

/-- One actual spectral sequence, initial named product, and its differential coordinates. -/
structure TraceData (S : AdamsSpectralSequence) (c : Product.Choice) where
  pages : CertifiedAdamsPages S
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  product : CertifiedAdamsProduct S
  transitions : NamedTransitions S pages product
  targets : FactorTargets S
  g0 : (S.element 2 ActualAdamsProductCycleBridge.gDegree).carrier
  delta0 : (S.element 2 ActualAdamsProductCycleBridge.deltaDegree).carrier
  initialName : (S.element 2 namedDegree).carrier
  nameMeaning : initialName = namedProduct S product.product 2 g0 delta0
  coordinates : DifferentialCoordinates S (outgoing25 c)
  named : coordinates.source
    ((ActualAdamsSystemBridge.system S pages zeros namedDegree).at initialName 2) =
      Coordinates.named

theorem TraceData.finite_cycle {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) : InKernel (outgoing25 c) Coordinates.named :=
  finite_at_cycle S t.pages t.zeros t.product t.transitions t.targets t.g0 t.delta0
    t.initialName t.nameMeaning (outgoing25 c) t.coordinates t.named

/-- These independent obstruction and complete-column meanings are still supplied. -/
structure Constraints (c : Product.Choice) where
  candidate : Vec 4
  cycle : candidate 0 = candidate 1
  productLaw : ProductRefutation.Compatible candidate
  mapLaw : MapRefutation.Compatible candidate
  known : eval (incoming25 c) Coordinates.knownSource = Coordinates.knownBoundary
  unknown : eval (incoming25 c) Coordinates.unknownSource = Coordinates.targetToE4 candidate

theorem complex (c : Product.Choice) : IsComplex (outgoing25 c) (incoming25 c) := by
  obtain ⟨a,b,e,f⟩ := c
  have h := (Data.twentyfive_complete f).2.1
  fin_cases f <;> exact h

theorem select {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (h : Constraints c) :
    ∃ b : Bool, embed ⟨c.nine,c.fourteen,c.fifteen,b⟩ = c :=
  select_from_constraints c h.candidate h.cycle h.productLaw h.mapLaw h.known h.unknown
    (complex c) t.finite_cycle

theorem finite_aggregate {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (h : Constraints c)
    (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 ∧
      Nat.card (WholeE5 c zeroCenters) = 2 ^ Product.dimension c :=
  aggregate_from_constraints c h.candidate h.cycle h.productLaw h.mapLaw h.known h.unknown
    (complex c) t.finite_cycle zeroCenters

theorem dimension_bounds {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (h : Constraints c) : 3 ≤ Product.dimension c ∧ Product.dimension c ≤ 6 := by
  obtain ⟨b,hb⟩ := select t h
  have bounds := Stem125ConstrainedE5.dimension_bounds (⟨c.nine,c.fourteen,c.fifteen,b⟩ : Choice)
  change 3 ≤ Product.dimension (embed _) ∧ Product.dimension (embed _) ≤ 6 at bounds
  rwa [hb] at bounds

#print axioms TraceData.finite_cycle
#print axioms complex
#print axioms select
#print axioms finite_aggregate
#print axioms dimension_bounds
end ActualStem125ConstrainedE5
