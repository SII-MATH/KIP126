import Fact721SecondLater.Incoming
import ActualFiniteNoHit.Basic

namespace Fact721SecondNoHit
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

theorem full_incoming_zero (E : Fact721SecondLater.Incoming S)
    (zeros : ZeroMeaning S pages) (n : Nat) (hn : 6 ≤ n)
    (y : Incoming S (n+2) degree) : incoming S (n+2) degree y = S.zero (n+2) degree := by
  have boundary := (incoming_image S (n+2) degree (incoming S (n+2) degree y)).mp ⟨y,rfl⟩
  obtain ⟨x,hx⟩ := (ActualAdamsIncomingBridge.differential_image S (n+2) degree _).mpr boundary
  exact hx.symm.trans ((E.zero zeros (n+2) (by omega) x).trans (S.zero_is_zero _ _).symm)

def NotHit (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ¬ (filtration (system S pages zeros degree) (differentialLaws S pages zeros degree)).BInfinity input

variable {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
    {product : CertifiedAdamsProduct S} {P : Prefix5 S pages initial}
    {I : Fact721SecondE6.Input P product}

theorem raw_not_hit (L : Fact721SecondE6.LaterInput P I)
    (E : Fact721SecondLater.Incoming S) : NotHit L.zeros (raw initial) := by
  apply ActualFiniteNoHit.no_boundary_ever (actualRealization S pages L.zeros degree)
    (differentialLaws S pages L.zeros degree) 6 (full_incoming_zero E L.zeros)
    (raw initial) (cycles_from_trace S pages L.zeros degree L.endpoint8.trace 6 rfl)
  change (system S pages L.zeros degree).at (raw initial) 6 ≠ S.zero 8 degree
  rw [← trace_at S pages L.zeros degree L.endpoint8.trace,S.zero_is_zero]
  exact L.nonzero8

theorem named_not_hit (L : Fact721SecondE6.LaterInput P I)
    (E : Fact721SecondLater.Incoming S) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    NotHit L.zeros input := by
  have same : input = raw initial := initial.coordinates.equivalence.injective
    (binding.trans raw_binding.symm)
  subst input
  exact raw_not_hit L E

#print axioms full_incoming_zero
#print axioms raw_not_hit
#print axioms named_not_hit
end Fact721SecondNoHit
