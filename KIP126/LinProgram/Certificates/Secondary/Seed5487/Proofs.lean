import KIP126.LinProgram.Certificates.Secondary.Proofs
import KIP126.LinProgram.Certificates.Secondary.Seed5487.Data
import KIP126.LinProgram.Certificates.Secondary.Seed5487.Products

namespace KIP126.Computation.Secondary.Seed5487
open MilnorCertificates

private theorem dSquared_paths : resolvePaths firstDifferentialImages row1048577.d = some
    [⟨[0,1,0,0,0,0,0,0], [1,0,0,0,0,0,0,0], 0⟩,
     ⟨[2,0,0,0,0,0,0,0], [2,0,0,0,0,0,0,0], 0⟩] := rfl

/-- The original two differential paths cancel in every coefficient of the
rank-eight dual Milnor product, without any degree cutoff. -/
theorem row1048577_d_squared :
    compose 8 firstDifferentialImages row1048577.d = some (fun _ _ => false) := by
  unfold compose
  rw [dSquared_paths]
  simp only [Option.map_some]
  congr 1
  funext target ⟨m, hm⟩
  dsimp only [Option.map, pathCoefficient]
  by_cases ht : 0 = target
  · subst target
    simp only [if_true, Bool.xor_false]
    rw [← product01_10_rank8.2.2.2 m hm, ← product20_20_rank8.2.2.2 m hm]
    exact Bool.xor_self _
  · simp [ht]

private theorem d_f_paths : resolvePaths firstDifferentialImages row1572866.f = some
    [⟨[0,0,1,0,0,0,0,0], [2,0,0,0,0,0,0,0], 0⟩,
     ⟨[8,0,0,0,0,0,0,0], [1,0,0,0,0,0,0,0], 0⟩] := rfl

/-- Compose the actual selected secondary lift with the actual first
 differential. The result is exactly the three-term auxiliary `d_f` expression
 proposed in the extracted witness.
 This does not verify the independent secondary-associator construction. -/
theorem row1572866_d_f :
    compose 8 firstDifferentialImages row1572866.f =
      some (fun target m => expressionCoefficient row1572866.d_f target m.val) := by
  unfold compose
  rw [d_f_paths]
  simp only [Option.map_some]
  apply congrArg some
  funext target ⟨m, hm⟩
  dsimp only [pathCoefficient]
  by_cases ht : 0 = target
  · subst target
    simp only [if_true, Bool.xor_false]
    rw [← product001_200_rank8.2.2.2 m hm, ← product800_100_rank8.2.2.2 m hm]
    change xor (coefficient [[2,0,1,0,0,0,0,0]] m)
      (coefficient [[6,1,0,0,0,0,0,0],[9,0,0,0,0,0,0,0]] m) =
      coefficient ([[2,0,1,0,0,0,0,0]] ++
        [[6,1,0,0,0,0,0,0],[9,0,0,0,0,0,0,0]]) m
    exact (coefficient_append _ _ _).symm
  · simp [ht, expressionCoefficient, row1572866, coefficient]

end KIP126.Computation.Secondary.Seed5487
