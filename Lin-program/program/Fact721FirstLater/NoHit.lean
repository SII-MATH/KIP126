import Fact721FirstLater.Actual
import ActualFiniteNoHit.Basic

namespace Fact721FirstLater
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open Fact721ConstructedActual.First

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

theorem full_incoming_zero (E : Incoming S) (zeros : ZeroMeaning S pages)
    (n : Nat) (hn : 3 ≤ n) (y : ActualAdamsSystemBridge.Incoming S (n+2) degree) :
    incoming S (n+2) degree y = S.zero (n+2) degree := by
  have boundary := (incoming_image S (n+2) degree (incoming S (n+2) degree y)).mp ⟨y,rfl⟩
  obtain ⟨x,hx⟩ := (ActualAdamsIncomingBridge.differential_image S (n+2) degree _).mpr boundary
  exact hx.symm.trans ((E.zero zeros (n+2) (by omega) x).trans (S.zero_is_zero _ _).symm)

def NotHit (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ¬ (filtration (system S pages zeros degree) (differentialLaws S pages zeros degree)).BInfinity input

variable {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}

theorem raw_not_hit (previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial)
    (E : Incoming S) (zeros : ZeroMeaning S pages) : NotHit zeros (raw initial) := by
  apply ActualFiniteNoHit.no_boundary_ever (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) 3 (full_incoming_zero E zeros)
    (raw initial) (cycles_from_trace S pages zeros degree previous.endpoint.trace 3 rfl)
  change (system S pages zeros degree).at (raw initial) 3 ≠ S.zero 5 degree
  rw [← trace_at S pages zeros degree previous.endpoint.trace,S.zero_is_zero]
  exact previous.nonzero

theorem named_not_hit (previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial)
    (E : Incoming S) (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    NotHit zeros input := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact raw_not_hit previous E zeros

#print axioms full_incoming_zero
#print axioms raw_not_hit
#print axioms named_not_hit
end Fact721FirstLater
