import KIP126.Core.SpectralSequence.Extension

/-!
# Regression checks for bounded extensions
-/

namespace KIP126.Core.SpectralSequence

open CategoryTheory

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {A : CategoryTheory.GradedObject ℤ C}

example (F : Algebra.Filtration A) {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (i : ℤ) :
    F.truncationProj s₁ i ≫ F.truncationTransition h i = F.truncationProj s₀ i :=
  F.truncationProj_transition h i

example (F : Algebra.Filtration A) {s₀ s₁ s₂ : ℤ}
    (h₀₁ : s₀ ≤ s₁) (h₁₂ : s₁ ≤ s₂) (i : ℤ) :
    F.truncationTransition h₁₂ i ≫ F.truncationTransition h₀₁ i =
      F.truncationTransition (h₀₁.trans h₁₂) i :=
  F.truncationTransition_comp h₀₁ h₁₂ i

end KIP126.Core.SpectralSequence
