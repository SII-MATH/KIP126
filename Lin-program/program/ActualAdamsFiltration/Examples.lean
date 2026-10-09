import ActualAdamsFiltration.Actual
import OutgoingCycleFiltrationCertificates.Examples
import PermanentMapTailCertificates.Examples

namespace ActualAdamsFiltration.Examples
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates

abbrev stable := PermanentMapTailCertificates.Examples.stableMaps

def stableLaws : DifferentialLaws stable := ⟨fun _ => rfl,fun _ _ => rfl⟩
theorem stableComplete : CycleSurjective stable := fun _ y => ⟨y,rfl,rfl⟩

example : (filtration stable stableLaws).ZInfinity true := by
  intro n k hk
  rfl

theorem stable_no_boundary : ¬ (filtration stable stableLaws).BInfinity true := by
  exact ((permanent_iff stable stableLaws stableComplete true).mp
    PermanentMapTailCertificates.Examples.stable_permanent).2

open OutgoingCycleFiltrationCertificates.Examples in
def killedLaws : DifferentialLaws killedSystem := ⟨fun _ => rfl,fun _ _ => rfl⟩

open OutgoingCycleFiltrationCertificates.Examples in
theorem killedComplete : CycleSurjective killedSystem := by
  intro n y
  refine ⟨qzero n,rfl,?_⟩
  change qzero (n+1) = y
  induction y using Quotient.inductionOn with
  | h x =>
    apply Quotient.sound
    intro h
    omega

open OutgoingCycleFiltrationCertificates.Examples in
theorem killed_boundary :
    (filtration killedSystem killedLaws).BInfinity (killedRealization.initial true) := by
  refine ⟨1,(boundary_iff_zero killedSystem killedLaws 1 _).mpr ⟨?_,rfl⟩⟩
  intro k hk
  rfl

/-- The earlier weak System example has genuine phantom later elements:
homology_zero by itself does not assert whole-page surjectivity. -/
theorem homology_zero_insufficient : ¬ CycleSurjective OutgoingCycleCertificates.killed := by
  intro h
  obtain ⟨x,hx,hy⟩ := h 0 true
  change false = true at hy
  cases hy

#print axioms stable_no_boundary
#print axioms killedComplete
#print axioms killed_boundary
#print axioms homology_zero_insufficient
end ActualAdamsFiltration.Examples
