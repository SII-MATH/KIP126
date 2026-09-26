import KIP126.Mathlib.ClassicalAdams.StandardPage.Data
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data

namespace KIP126.Classical.Adams

open KIP126.Core.SpectralSequence

/-- Development assumption: the specific Lin generator square agrees with the
specified Milnor cocycle class under the same tower comparison. Generator names
alone do not prove this identification; it does not assert nonzero survival. -/
axiom h6Square_comparison :
  toStandardE2 (2, 128) computedH6Square = sphereH6Square

/-- Development assumption: common-Z∞ nonzero survival and compatible finite
page survival agree for the fixed sphere sequence. This general statement is
about all E₂ classes, not a permanence assertion for h₆². It must eventually be
proved using the nested-subobject model and the same all-page comparison. -/
axiom survival_comparison : ∀ p (x : sphereAdamsData.Page 2 p),
  NonzeroSurvival sphereAdamsData p x ↔
    IsPermanent sphereAdams 2 (by decide) p (toStandardE2 p x)

end KIP126.Classical.Adams
