import KIP126.Def.AdamsE2.Lin
import KIP126.Tactic.LinE2
import Lean.Elab.Command

namespace KIP126.Classical.Adams
open KIP126.LinE2

/-- Canonical version of PR #110's transfer example. The concrete data equality
uses the existing e2_mul soundness placeholder and native-evaluation trust. -/
theorem data_h0_h1_page_product :
    linE2Presentation.product 1 1 1 2
      (linToSphereE2 1 1 (by decide) dataH0)
      (linToSphereE2 1 2 (by decide) dataH1) = 0 := by
  apply linToSphere_product_eq_zero (s := 1) (t := 1) (s' := 1) (t' := 2)
    (by decide) dataH0 dataH1
  change h0 * h1 = 0
  e2_mul

example (s t : ℕ) (ht : t ≤ 261) (a : sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))) :
    ∃ x : E2At s t, linToSphereE2 s t ht x = a :=
  linToSphere_exists_preimage s t ht a

example (s t : ℕ) (ht : t ≤ 261) (x y : E2At s t) :
    linToSphereE2 s t ht x = linToSphereE2 s t ht y ↔ x.val = y.val :=
  linToSphere_eq_iff s t ht x y

example :
    linE2Presentation.product 1 64 1 64 computedH6 computedH6 = computedH6Square :=
  computedH6_mul_self

example : True := by
  fail_if_success have := linToSphereE2 1 262 (by omega)
  fail_if_success have := linToSphere_mul (t := 261) (t' := 1) (by omega)
  trivial

end KIP126.Classical.Adams

open Lean Elab Command in
run_cmd do
  let allowed := [``propext, ``Classical.choice, ``Quot.sound]
  for declaration in [``KIP126.Classical.Adams.computedH6_mul_self,
      ``KIP126.Classical.Adams.linToSphere_exists_preimage,
      ``KIP126.Classical.Adams.linToSphere_eq_iff,
      ``KIP126.Classical.Adams.linToSphere_product_eq_zero] do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless (allowed ++ [``KIP126.Classical.Adams.linE2Presentation,
          ``KIP126.Classical.Adams.sphereAdamsModel]).contains a do
        throwError "new proof debt in transferred product: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m then
      throwError "unexpected computation import: {m}"

#print axioms KIP126.Classical.Adams.computedH6_mul_self
#print axioms KIP126.Classical.Adams.data_h0_h1_page_product
