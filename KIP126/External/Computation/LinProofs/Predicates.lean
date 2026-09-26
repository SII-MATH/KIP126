import KIP126.External.Computation.LinProofs.Data
import KIP126.Def.AdamsE2.LinBasisTable.Data
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data
import KIP126.Def.SpectralSequence.Computation.Predicates

namespace KIP126.Computation.LinProofs
open CategoryTheory KIP126.LinE2 KIP126.Classical.Adams
open KIP126.Core.SpectralSequence

/-- Literal CSV basis coordinates, without using the unfinished assertion that
the entire CSV is a `Module.Basis`. Missing indices are not interpreted as zero. -/
def HasCoordinates {s t : Nat} (x : E2At s t) (indices : List Nat) : Prop :=
  ∃ rows : List BasisRow,
    rows.map BasisRow.index = indices ∧
    (∀ row ∈ rows, row ∈ basisRows ∧ row.s = s ∧ row.t = t) ∧
    x.val = (rows.map basisValue).sum

/-- Meaning of one finite-page sphere record on the FIXED tower-derived SSData.
Source/target are interpreted on E₂ using the existing Lin comparison, then
represented on Eᵣ by common cycles. This is an equation, NOT a claim that a
nonempty coordinate list remains nonzero on Eᵣ. No `Prop` supplied by a caller
is accepted as the meaning of a row. -/
def DifferentialStatement (row : DifferentialRow) : Prop :=
  ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261),
    ∃ (x : E2At row.s row.t) (y : E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      ∃ (h : ((row.s : ℤ), (row.t : ℤ)) + sphereAdamsData.diffDeg row.r =
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ)))
        (xr : sphereAdamsData.Page row.r ((row.s : ℤ), (row.t : ℤ)))
        (yr : sphereAdamsData.Page row.r
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))),
        RepresentsOnPage sphereAdamsData row.r _
          (linToSphereE2 row.s row.t hx x) xr ∧
        RepresentsOnPage sphereAdamsData row.r _
          (linToSphereE2 (row.s + row.r) (row.t + row.r - 1) hy y) yr ∧
        (sphereAdamsData.d row.r _ ≫
          eqToHom (congrArg (sphereAdamsData.Page row.r) h)) xr = yr

end KIP126.Computation.LinProofs
