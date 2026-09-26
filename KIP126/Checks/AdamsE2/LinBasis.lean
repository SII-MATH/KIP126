import KIP126.Def.AdamsE2.Lin
import Lean.Elab.Command

/-! Catalogue checks are executable regressions, not proofs of independence.
All actual coordinate/basis theorems below retain the named certification debt. -/
namespace KIP126.LinE2

#eval show IO Unit from do
  let rows ← match parseBasisRows with
    | .ok rows => pure rows
    | .error msg => throw (IO.userError msg)
  unless rows.length == RawData.basisCount do
    throw (IO.userError "basis row count mismatch")
  unless (basisRowsAt 2 128).size == 1 do
    throw (IO.userError "unexpected dimension at (2,128)")
  unless (basisRowsAt 2 128).toList.map (·.monomial) == ["69,2"] do
    throw (IO.userError "h6 square is not the expected CSV basis monomial")
  unless (basisRowsAt 1 3).isEmpty do
    throw (IO.userError "expected zero component at (1,3)")
  unless (findBasisIndex? 2 128 0).isSome do
    throw (IO.userError "missing h6 square coordinate")
  unless (findBasisIndex? 2 128 99).isNone do
    throw (IO.userError "unknown coordinate was accepted")
  unless (decodeBasisRow "bad|row").toOption.isNone do
    throw (IO.userError "malformed basis row was accepted")
  IO.println s!"Basis catalogue checked: {rows.length} rows; (2,128,0) = h6²."

example (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    (dataBasis s t ht i).val = basisValue (basisRowAt s t i) :=
  dataBasis_val s t ht i

example (s t : ℕ) (ht : t ≤ 261) (x : E2At s t) :
    (dataCoordinates s t ht).symm (dataCoordinates s t ht x) = x :=
  dataCoordinates_reconstruct s t ht x

example (x : E2At 1 64) (y : E2At 1 64) :
    Classical.Adams.linE2Presentation.comparison 2 128 (by decide)
        (mulAt (s := 1) (t := 64) (s' := 1) (t' := 64) x y) =
      Classical.Adams.linE2Presentation.product 1 64 1 64
        (Classical.Adams.linToSphereE2 1 64 (by decide) x)
        (Classical.Adams.linToSphereE2 1 64 (by decide) y) :=
  Classical.Adams.linToSphere_mul (s := 1) (t := 64) (s' := 1) (t' := 64)
    (by decide) x y

end KIP126.LinE2

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    let name := mod.toString
    if name.startsWith "KIPBase" || name.startsWith "KIP126.Mathlib." ||
        name.startsWith "Mathlib.Algebra.Homology.SpectralSequence" then
      throwError "Lin internal interface imported forbidden adapter: {mod}"
  let axs ← liftCoreM (collectAxioms ``KIP126.LinE2.multiply_mem)
  for a in axs do
    unless [``propext, ``Classical.choice, ``Quot.sound].contains a do
      throwError "homogeneous multiplication has proof debt: {a}"
  let basisAxs ← liftCoreM (collectAxioms ``KIP126.LinE2.dataBasis_val)
  unless basisAxs.contains ``sorryAx do
    throwError "update the audit: basis certification debt has changed"

#print axioms KIP126.LinE2.multiply_mem
#print axioms KIP126.LinE2.dataBasis_val
#print axioms KIP126.Classical.Adams.sphereE2Basis_ne_zero
