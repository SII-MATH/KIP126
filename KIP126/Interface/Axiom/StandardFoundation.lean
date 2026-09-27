import KIP126.Def.ClassicalAdams.StandardFoundation.Data

/-!
# 可逐项审核的稳定同伦基础输入

以下声明展开原来 `standardFoundation : StandardAdamsFoundation` 的各个字段。
`axiom` 明确区分选定的数据/结构与尚待证明的性质；所有声明引用同一批对象和操作。
Mathlib 原生的范畴、加性、平移、幺半及预三角结构仍使用其标准接口。
本项目的三个子结构仅在文件末端由这些输入组装，不再作为整包公理引入。

这些是第一阶段暂时接受的第零阶段输出；这里没有构造其具体模型，
也没有选择谱序列、指定同伦类，或补充原接口没有的条件。
-/

namespace KIP126.Classical.Adams

open CategoryTheory CategoryTheory.Limits
open MonoidalCategory Pretriangulated
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology

namespace StandardFoundationInputs

/-! ## 稳定同伦范畴的各项输入 -/

/-- 数据：选定谱的对象类型，保持原接口的对象宇宙 `Type 1`。 -/
axiom Spectrum : Type 1

section StableCategory

/-- 结构：这些谱的范畴结构，态射仍位于 `Type 0`。 -/
axiom category : Category.{0} Spectrum

attribute [local instance] category

/-- 结构：上述同一范畴的态射加法及复合的双加性。 -/
axiom preadditive : Preadditive Spectrum

/-- 结构：上述同一范畴的整数平移及其相容性。 -/
axiom shift : HasShift Spectrum ℤ

/-- 结构：上述同一范畴的幺半积和单位对象。 -/
axiom monoidal : MonoidalCategory Spectrum

attribute [local instance] preadditive shift monoidal

/-- 性质：每一个已选定的整数平移函子都保持态射加法。 -/
axiom shiftAdditive : ∀ (n : ℤ), (shiftFunctor Spectrum n).Additive

/-- 性质：上述范畴存在零对象。 -/
axiom hasZeroObject : HasZeroObject Spectrum

attribute [local instance] shiftAdditive hasZeroObject

/-- 结构：上述加性范畴及平移上的预三角结构，含指定三角及其公理。 -/
axiom pretriangulated : Pretriangulated Spectrum

/-- 将已经逐项列出的输入组装成原有的稳定同伦范畴接口。 -/
@[reducible] noncomputable def stable : StableHomotopyCategory.{1, 0} Spectrum where
  toCategory := category
  toPreadditive := preadditive
  toHasShift := shift
  toMonoidalCategory := monoidal
  shiftAdditive := shiftAdditive
  hasZeroObject := hasZeroObject
  pretriangulated := pretriangulated

end StableCategory

attribute [local instance] stable

/-! ## 上述同一范畴中的余纤维输入 -/

/-- 数据：为每个态射选定余纤维对象。 -/
axiom cofib : {X Y : Spectrum} → (X ⟶ Y) → Spectrum

/-- 数据：目标对象到已选定余纤维的态射。 -/
axiom cofibι : {X Y : Spectrum} → (f : X ⟶ Y) → Y ⟶ cofib f

/-- 数据：已选定余纤维到源对象一次平移的连接态射。 -/
axiom cofibδ : {X Y : Spectrum} → (f : X ⟶ Y) →
  cofib f ⟶ (shiftFunctor Spectrum (1 : ℤ)).obj X

/-- 性质：以上三个态射构成上述预三角结构中的指定三角。 -/
axiom cofib_distinguished : ∀ {X Y : Spectrum} (f : X ⟶ Y),
  Triangle.mk f (cofibι f) (cofibδ f) ∈ distTriang Spectrum

/-- 数据：为交换方块选定相应的余纤维间态射。 -/
axiom cofibMap : ∀ {X₁ Y₁ X₂ Y₂ : Spectrum} (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂)
  (α : X₁ ⟶ X₂) (β : Y₁ ⟶ Y₂), α ≫ f₂ = f₁ ≫ β →
  (cofib f₁ ⟶ cofib f₂)

/-- 性质：选定的余纤维间态射与进入余纤维的态射相容。 -/
axiom cofibMap_ι : ∀ {X₁ Y₁ X₂ Y₂ : Spectrum} (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂)
  (α : X₁ ⟶ X₂) (β : Y₁ ⟶ Y₂) (h : α ≫ f₂ = f₁ ≫ β),
  β ≫ cofibι f₂ = cofibι f₁ ≫ cofibMap f₁ f₂ α β h

/-- 性质：选定的余纤维间态射与连接态射及源对象的平移相容。 -/
axiom cofibMap_δ : ∀ {X₁ Y₁ X₂ Y₂ : Spectrum} (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂)
  (α : X₁ ⟶ X₂) (β : Y₁ ⟶ Y₂) (h : α ≫ f₂ = f₁ ≫ β),
  cofibMap f₁ f₂ α β h ≫ cofibδ f₂ =
    cofibδ f₁ ≫ (shiftFunctor Spectrum (1 : ℤ)).map α

/-- 将同一余纤维对象、态射和性质组装成原有接口。 -/
@[reducible] noncomputable def cofiber : @HasFunctorialCofiber Spectrum stable where
  cofib := cofib
  cofibι := cofibι
  cofibδ := cofibδ
  cofib_distinguished := cofib_distinguished
  cofibMap := cofibMap
  cofibMap_ι := cofibMap_ι
  cofibMap_δ := cofibMap_δ

/-! ## 上述同一范畴中的模二 Eilenberg–Mac Lane 输入 -/

/-- 数据：选定模二 Eilenberg–Mac Lane 谱的候选对象。 -/
axiom HF2 : Spectrum

/-- 数据及性质：选定该对象零次同伦群到 `ZMod 2` 的加法群同构。 -/
axiom pi0Equiv : HomotopyGroup 0 HF2 ≃+ ZMod 2

/-- 性质：该对象的所有非零次数同伦群均为零群。 -/
axiom homotopy_vanishes : ∀ (n : ℤ), n ≠ 0 → Subsingleton (HomotopyGroup n HF2)

/-- 用同一对象及其同伦群性质组装原有模二 Eilenberg–Mac Lane 接口。 -/
noncomputable def hf2 : @Mod2EilenbergMacLane Spectrum stable where
  HF2 := HF2
  pi0Equiv := pi0Equiv
  homotopy_vanishes := homotopy_vanishes

end StandardFoundationInputs

/-- 保留原有公开接口，完全由上面逐项声明的输入组装；此声明本身不再是公理。
其具体稳定同伦模型及各项性质的上游实现仍待完成。 -/
noncomputable def standardFoundation : StandardAdamsFoundation where
  Spectrum := StandardFoundationInputs.Spectrum
  stable := StandardFoundationInputs.stable
  cofiber := StandardFoundationInputs.cofiber
  hf2 := StandardFoundationInputs.hf2

end KIP126.Classical.Adams
