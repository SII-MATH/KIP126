import KIP126.Def.Foundation.Interfaces
import KIP126.Def.References.Literature.Claims

/-!
# 带来源的 May smash-boundary 输入

structural realization 中的命题固定两条 distinguished triangle 的实际 tensor 箭头和
connecting homomorphism。这里保留调用者的命题证明，并将来源锁定为 May 的
smash-boundary 目录项；普通 tensor exactness 或目录定位不自动提供该证明。

本地依据是主论文 Lemma `lem:452d218c`（1755--1778 行），其证明引用
May (2001) Lemma 4.6 与 TC3 图表。May 原文当前不在本地来源目录中。
-/

namespace KIP126.Stable

open CategoryTheory MonoidalCategory
open KIP126.External KIP126.StableHomotopy

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [∀ W : C, (tensorLeft W).CommShift ℤ]
  [∀ W : C, (tensorRight W).CommShift ℤ]
  [∀ W : C, (tensorLeft W).IsTriangulated]
  [∀ W : C, (tensorRight W).IsTriangulated]

/-- 将调用者提供的 smash-boundary 证明绑定到明确的 May 来源项。 -/
def cataloguedMaySmashBoundary (proof : MaySmashBoundary (C := C)) :
    CataloguedExternalResult (MaySmashBoundary (C := C)) :=
  { root := .maySmashBoundary
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .maySmashBoundary).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 在相同 tensor/shift 数据上的显式文献输入；此记录不声称存在该证明。 -/
structure MayLiteratureInput where
  smash_boundary : CataloguedExternalResult (MaySmashBoundary (C := C))
  smash_boundary_root : smash_boundary.root = .maySmashBoundary

/-- 提取调用者已经提供的证明，不增添文献假设。 -/
theorem MayLiteratureInput.interface (input : MayLiteratureInput (C := C)) :
    MaySmashBoundary (C := C) :=
  input.smash_boundary.value.proof

end KIP126.Stable
