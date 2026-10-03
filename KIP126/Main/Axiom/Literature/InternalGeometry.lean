import KIP126.Challenge2
import KIP126.Def.References.Literature.Claims

/-! Source-bearing input statements only. Their evidence constructors and
transparent projections are in `Main/Solution/Literature/InternalGeometry`. -/

namespace KIP126.Kervaire

open KIP126.External

variable {Manifold : Type} (dimension : Manifold → ℕ) (kervaireOne : Manifold → Prop)

/-- 同一几何模型上的两个来源输入；不把整个几何接口归给单篇文献。 -/
structure GeometryLiteratureInput where
  low_dimensions : CataloguedExternalResult (∀ j : ℕ, 1 ≤ j → j ≤ 5 →
    ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M)
  low_dimensions_root : low_dimensions.root = .lowKervaireExistence
  high_nonexistence : CataloguedExternalResult (∀ j : ℕ, 7 ≤ j →
    ¬ ∃ M, dimension M = 2 ^ (j + 1) - 2 ∧ kervaireOne M)
  high_nonexistence_root : high_nonexistence.root = .hhrNonexistence

/-- Browder 输入固定内部标准 hⱼ² 的非零永久存活，不能另选 permanence 谓词。 -/
structure InternalBrowderLiteratureInput where
  criterion : CataloguedExternalResult (KIP126.Challenge2.BrowderInterface dimension kervaireOne)
  criterion_root : criterion.root = .browderCriterion


end KIP126.Kervaire
