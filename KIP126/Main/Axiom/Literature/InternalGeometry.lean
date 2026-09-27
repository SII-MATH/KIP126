import KIP126.Challenge2
import KIP126.Main.Axiom.Literature.Claims

/-!
# 几何输入与实际内部 Browder 接口的来源包装

低维存在性与 HHR 非存在性分别锁定来源，并组成 Challenge1 中的同一几何
接口。Browder 包装固定 Challenge2 的实际内部标准平方及 NonzeroSurvival。
所有构造均接受调用者的证明；来源记录不证明命题，也不选择几何模型。
-/

namespace KIP126.Kervaire

open KIP126.External

variable {Manifold : Type} (dimension : Manifold → ℕ) (kervaireOne : Manifold → Prop)

/-- 将低维几何存在性证明绑定到既有的复合来源项。 -/
def cataloguedLowKervaireDimensions
    (proof : ∀ j : ℕ, 1 ≤ j → j ≤ 5 →
      ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M) :
    CataloguedExternalResult (∀ j : ℕ, 1 ≤ j → j ≤ 5 →
      ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M) :=
  { root := .lowKervaireExistence
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .lowKervaireExistence).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 将高维几何非存在性证明绑定到 HHR 来源项。 -/
def cataloguedHighKervaireNonexistence
    (proof : ∀ j : ℕ, 7 ≤ j →
      ¬ ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M) :
    CataloguedExternalResult (∀ j : ℕ, 7 ≤ j →
      ¬ ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M) :=
  { root := .hhrNonexistence
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .hhrNonexistence).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 同一几何模型上的两个来源输入；不把整个几何接口归给单篇文献。 -/
structure GeometryLiteratureInput where
  low_dimensions : CataloguedExternalResult (∀ j : ℕ, 1 ≤ j → j ≤ 5 →
    ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M)
  low_dimensions_root : low_dimensions.root = .lowKervaireExistence
  high_nonexistence : CataloguedExternalResult (∀ j : ℕ, 7 ≤ j →
    ¬ ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M)
  high_nonexistence_root : high_nonexistence.root = .hhrNonexistence

/-- 仅从两项显式文献证明组装 Challenge1 的几何接口。 -/
theorem GeometryLiteratureInput.interface
    (input : GeometryLiteratureInput dimension kervaireOne) :
    KIP126.Challenge1.GeometryInterface dimension kervaireOne where
  low_dimensions := input.low_dimensions.value.proof
  high_nonexistence := input.high_nonexistence.value.proof

/-- 对实际内部标准类的 Browder 判据证明，绑定到 Browder 的来源项。 -/
def cataloguedInternalBrowderCriterion
    (proof : KIP126.Challenge2.BrowderInterface dimension kervaireOne) :
    CataloguedExternalResult (KIP126.Challenge2.BrowderInterface dimension kervaireOne) :=
  { root := .browderCriterion
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .browderCriterion).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- Browder 输入固定内部标准 hⱼ² 的非零永久存活，不能另选 permanence 谓词。 -/
structure InternalBrowderLiteratureInput where
  criterion : CataloguedExternalResult (KIP126.Challenge2.BrowderInterface dimension kervaireOne)
  criterion_root : criterion.root = .browderCriterion

/-- 提取调用者提供的内部 Browder 判据证明。 -/
theorem InternalBrowderLiteratureInput.interface
    (input : InternalBrowderLiteratureInput dimension kervaireOne) :
    KIP126.Challenge2.BrowderInterface dimension kervaireOne :=
  input.criterion.value.proof

end KIP126.Kervaire
