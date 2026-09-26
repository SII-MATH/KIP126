import KIPBase.StableHomotopy.SphereAdamsProofs

/-!
论文写法与机械导入的 E₂ 标签的识别。
此处的乘法使用既有 CSV Gröbner 程序；实际 E₂ 中的等式仍依赖显式
BasisData / CoordinateData。没有在此证明任何微分或数据库证明过程。
-/

set_option maxRecDepth 16384

namespace KIPBase.StableHomotopy.SphereAdamsProofs

open KIPBase.SphereE2 SphereAdamsDifferentials

namespace PaperLabels

def h0 : CSV.Expression 1 1 := .gen ⟨0, by decide⟩
def h1 : CSV.Expression 1 2 := .gen ⟨1, by decide⟩

/-- V = x_{123,9} + h₀ x_{123,8}; these are CSV generators 366 and 352. -/
def V : CSV.Expression 9 132 :=
  .add (.gen ⟨366, by decide⟩) (.mul h0 (.gen ⟨352, by decide⟩))

def U : CSV.Expression 10 134 :=
  .mul h0 (.mul h0 (.gen ⟨367, by decide⟩))

/-- CSV generator 82 is named as the entire combination B; its summands are
not silently identified with other independently named generators. -/
def B : CSV.Expression 8 70 := .gen ⟨82, by decide⟩

theorem B_name : generatorName ⟨82, by decide⟩ =
    "(\\Delta e_1+C_0+h_0^6h_5^2)" := by decide

def h1V_add_U : CSV.Expression 10 134 := .add (.mul h1 V) U
def h0B : CSV.Expression 9 71 := .mul h0 B

end PaperLabels

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

/-- The imported h₆ is definitionally the existing common sphere element. -/
theorem d2_h6_source_eq :
    SphereAdamsE2.evaluate 𝒮 d2_h6_source = SphereAdamsE2.h6 𝒮 := rfl

theorem d2_h6_named :
    HasNonzeroDifferential 𝒮 2 (SphereAdamsE2.h6 𝒮)
      (SphereAdamsE2.evaluate 𝒮 d2_h6_target) := d2_h6 𝒮

variable [SphereAdamsE2.BasisData 𝒮] [SphereAdamsE2.CoordinateData 𝒮]

/-- h₁h₀x_{123,8} reduces to zero by the relations; no term is dropped by hand. -/
theorem d2_x125_8_target_eq_paper :
    SphereAdamsE2.evaluate 𝒮 d2_x125_8_target =
      SphereAdamsE2.evaluate 𝒮 PaperLabels.h1V_add_U := by
  exact SphereAdamsE2.evaluate_eq_of_coordinates 𝒮 10 134 (by decide)
    d2_x125_8_target PaperLabels.h1V_add_U
    [⟨2, by native_decide⟩, ⟨4, by native_decide⟩] 1000000
    (by native_decide) (by native_decide)

/-- The table target h₀⁷h₅² and the paper's h₀B have the same computed coordinates. -/
theorem d2_h0Pow6_h6_target_eq_paper :
    SphereAdamsE2.evaluate 𝒮 d2_h0Pow6_h6_target =
      SphereAdamsE2.evaluate 𝒮 PaperLabels.h0B := by
  exact SphereAdamsE2.evaluate_eq_of_coordinates 𝒮 9 71 (by decide)
    d2_h0Pow6_h6_target PaperLabels.h0B [⟨0, by native_decide⟩] 1000000
    (by native_decide) (by native_decide)

theorem d2_x125_8_paper :
    HasNonzeroDifferential 𝒮 2 (SphereAdamsE2.evaluate 𝒮 d2_x125_8_source)
      (SphereAdamsE2.evaluate 𝒮 PaperLabels.h1V_add_U) := by
  rw [← d2_x125_8_target_eq_paper 𝒮]
  exact d2_x125_8 𝒮

/-- This assumption comes from basis.id=513, not a fictitious proofs.db row. -/
theorem d2_h0Pow6_h6_paper :
    HasNonzeroDifferential 𝒮 2 (SphereAdamsE2.evaluate 𝒮 d2_h0Pow6_h6_source)
      (SphereAdamsE2.evaluate 𝒮 PaperLabels.h0B) := by
  rw [← d2_h0Pow6_h6_target_eq_paper 𝒮]
  exact d2_h0Pow6_h6 𝒮

end KIPBase.StableHomotopy.SphereAdamsProofs
