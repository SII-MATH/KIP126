import KIP126.Def.StableHomotopy.Cohomology.Data

/-! A fixed-universe foundation to be selected once, not passed to final theorems. -/
namespace KIP126.Classical.Adams

open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology

/-- Structural foundation only: no spectral sequence, named class, or survival claim.
The object universe is fixed to `Type 1`, with small hom groups. -/
structure StandardAdamsFoundation where
  Spectrum : Type 1
  stable : StableHomotopyCategory.{1, 0} Spectrum
  cofiber : @HasFunctorialCofiber Spectrum stable
  hf2 : @Mod2EilenbergMacLane Spectrum stable

attribute [instance] StandardAdamsFoundation.stable StandardAdamsFoundation.cofiber

end KIP126.Classical.Adams
