import ActualFiniteNoHit.Fact713
import ActualAdamsFiltration.Examples

namespace ActualFiniteNoHit.Examples
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates ActualAdamsFiltration

example : ¬ (filtration ActualAdamsFiltration.Examples.stable
    ActualAdamsFiltration.Examples.stableLaws).BInfinity true := by
  apply no_boundary_ever
    (realization ActualAdamsFiltration.Examples.stable ActualAdamsFiltration.Examples.stableLaws
      ActualAdamsFiltration.Examples.stableComplete)
    ActualAdamsFiltration.Examples.stableLaws 0 (fun _ _ _ => rfl) true
    (by intro k hk; omega)
  change true ≠ false
  decide

/-- A nonzero initial class alone is insufficient when incoming maps remain. -/
example : ∃ x, OutgoingCycleFiltrationCertificates.Examples.killedSystem.at x 0 ≠
    OutgoingCycleFiltrationCertificates.Examples.killedSystem.zero 0 ∧
    (filtration OutgoingCycleFiltrationCertificates.Examples.killedSystem
      ActualAdamsFiltration.Examples.killedLaws).BInfinity x :=
  ⟨OutgoingCycleFiltrationCertificates.Examples.killedRealization.initial true,
    OutgoingCycleFiltrationCertificates.Examples.initially_nonzero,
    ActualAdamsFiltration.Examples.killed_boundary⟩

example : ¬ (∀ n, 0 ≤ n → ∀ y,
    OutgoingCycleFiltrationCertificates.Examples.killedSystem.incoming n y =
      OutgoingCycleFiltrationCertificates.Examples.killedSystem.zero n) := by
  intro tail
  exact OutgoingCycleFiltrationCertificates.Examples.initially_nonzero
    (tail 0 (by omega) (OutgoingCycleFiltrationCertificates.Examples.killedRealization.initial true))

end ActualFiniteNoHit.Examples
