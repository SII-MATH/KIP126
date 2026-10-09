import LinProgramReference.SpectrumModels
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# 欧氏球面、细胞附着和有限 CW 构造（W01–W03）

每个正维胞腔由一个欧氏单位球的边界通过附着映射粘到前一阶段；新阶段
直接取映射锥，因此附着的商空间语义来自 `TopologyConstructions.lean`，而不
是一个无内容的合法性命题。归纳对象从一个带基点的 0-胞腔开始。
-/

namespace LinProgramReference

open scoped Classical

/-- 欧氏空间中第一坐标为 1、其余坐标为 0 的单位向量。 -/
noncomputable def sphereBaseVector (n : Nat) : EuclideanSpace ℝ (Fin (n + 1)) :=
  (WithLp.equiv 2 _).symm (fun i => if i = 0 then 1 else 0)

/-- 上述基向量确实具有欧氏范数 1。 -/
theorem sphereBaseVector_norm (n : Nat) : ‖sphereBaseVector n‖ = 1 := by
  rw [EuclideanSpace.norm_eq]
  simp [sphereBaseVector]

/-- 标准 n-球面的载体（单位范数的欧氏向量）。 -/
abbrev StandardSphereCarrier (n : Nat) :=
  {x : EuclideanSpace ℝ (Fin (n + 1)) // ‖x‖ = 1}

/-- 带有规范基点的标准 n-球面点空间。 -/
noncomputable def standardSphere (n : Nat) : PointedSpace where
  carrier := StandardSphereCarrier n
  topology := inferInstance
  point := ⟨sphereBaseVector n, sphereBaseVector_norm n⟩

/-- 标准 n-球的闭圆盘载体。 -/
abbrev StandardDiskCarrier (n : Nat) :=
  {x : EuclideanSpace ℝ (Fin (n + 1)) // ‖x‖ ≤ 1}

/-- 带有同一规范基点的标准闭圆盘。 -/
noncomputable def standardDisk (n : Nat) : PointedSpace where
  carrier := StandardDiskCarrier n
  topology := inferInstance
  point := ⟨sphereBaseVector n, le_of_eq (sphereBaseVector_norm n)⟩

/-- 球面到闭圆盘的边界包含映射。 -/
noncomputable def sphereBoundaryInclusion (n : Nat) :
    PointedMap (standardSphere n) (standardDisk n) where
  toFun := fun x => ⟨x.1, le_of_eq x.2⟩
  mapPoint := rfl
  continuous := by
    exact Continuous.subtype_mk
      (p := fun x : EuclideanSpace ℝ (Fin (n + 1)) => ‖x‖ ≤ 1)
      (f := fun x : StandardSphereCarrier n => (x : EuclideanSpace ℝ (Fin (n + 1))))
      continuous_subtype_val (fun x => le_of_eq x.2)

/-- 一个正维胞腔的附着数据；`dimension + 1` 是所附着胞腔的维数。 -/
structure PositiveCellAttachment where
  /-- 已构造的前一阶段空间。 -/
  target : PointedSpace
  /-- 附着边界球面的维数。 -/
  boundaryDimension : Nat
  /-- 附着映射 S^n → 前一阶段空间。 -/
  attachingMap : PointedMap (standardSphere boundaryDimension) target

/-- 附着一个正维胞腔后的新点空间，实际定义为映射锥。 -/
noncomputable def attachPositiveCell (a : PositiveCellAttachment) : PointedSpace :=
  mappingCone a.attachingMap

/-- 一个正维胞腔附着步骤；附着后的空间定义为映射锥。 -/
structure CellAttachmentStep where
  /-- 附着前的目标空间。 -/
  target : PointedSpace
  /-- 边界球面的维数；所附着胞腔维数为该数加一。 -/
  boundaryDimension : Nat
  /-- 附着映射。 -/
  attachingMap : PointedMap (standardSphere boundaryDimension) target

/-- 一个附着步骤的结果空间。 -/
noncomputable def CellAttachmentStep.attached (s : CellAttachmentStep) : PointedSpace :=
  mappingCone s.attachingMap

/-- 从一个 0-胞腔和有限附着步骤组成的 CW 数据。 -/
structure FiniteCWConstruction where
  /-- 初始 0-胞腔空间。 -/
  initial : PointedSpace := zeroSphere
  /-- 有限附着步骤列表。 -/
  steps : List CellAttachmentStep

/-- 附着步骤数量。 -/
def FiniteCWConstruction.numberOfPositiveCells (C : FiniteCWConstruction) : Nat :=
  C.steps.length

/-- 附着步骤确实由映射锥给出。 -/
theorem CellAttachmentStep.attached_eq_mappingCone (s : CellAttachmentStep) :
    s.attached = mappingCone s.attachingMap := by
  rfl

end LinProgramReference
