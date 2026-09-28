import KIP126.Challenge2

/-! am3 的内部自然性声明；与 Solution 保持完全相同的参数与结论。 -/
namespace KIP126.Interface.Challenge

open Core.SpectralSequence

universe u v

theorem internalNaturality {R : Type u} [Ring R]
    (E E' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (f : SpectralSequenceMorphism E E') : KIP126.Challenge2.MorphismCalculus E E' f := by
  sorry

end KIP126.Interface.Challenge
