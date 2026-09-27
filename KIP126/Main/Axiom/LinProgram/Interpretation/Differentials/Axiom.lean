import KIP126.Main.Axiom.LinProgram.Generated.Differentials.Table
import KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Predicates

namespace KIP126.Computation.LinProofs

open CategoryTheory KIP126.LinE2 KIP126.Classical.Adams
open KIP126.Core.SpectralSequence

/-- Single external soundness assumption for the pinned, mechanically exported
sphere differential table. Authorized as a development-stage external input:
Zenodo 14875701, v126.3.cw49, `proofs.db/log`; exact hashes and coverage are in
`Generated/manifest.json`. Importing rows is NOT a verification of the machine
proofs. Replacing this axiom requires validating their mathematical content
and their comparison with the fixed sphere Adams object.

Only the fixed table is trusted, not arbitrary caller-provided records. Branch
assumptions, unknowns, extension records and sentinel pages are excluded by the
documented exporter. This does not assert nonzero permanence of h₆². -/
axiom sphereTable_sound (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) :
  -- 源、目标仍在固定表的次数范围内，并具有该行指定的 E₂ 坐标。
  ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261),
    ∃ (x : E2At row.s row.t) (y : E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      -- 同一组 E₂ 类在指定页面有相容代表元，且满足该行微分等式。
      ∃ (hdeg : ((row.s : ℤ), (row.t : ℤ)) + sphereAdamsData.diffDeg row.r =
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ)))
        (xr : sphereAdamsData.Page row.r ((row.s : ℤ), (row.t : ℤ)))
        (yr : sphereAdamsData.Page row.r
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))),
        RepresentsOnPage sphereAdamsData row.r _
          (linToSphereE2 row.s row.t hx x) xr ∧
        RepresentsOnPage sphereAdamsData row.r _
          (linToSphereE2 (row.s + row.r) (row.t + row.r - 1) hy y) yr ∧
        (sphereAdamsData.d row.r _ ≫
          eqToHom (congrArg (sphereAdamsData.Page row.r) hdeg)) xr = yr

-- 上述完整结论与 `DifferentialStatement row` 定义相等。
-- 保持每行见证的关联，不拆成彼此无关的存在性公理；xr、yr 未被要求非零。

end KIP126.Computation.LinProofs
