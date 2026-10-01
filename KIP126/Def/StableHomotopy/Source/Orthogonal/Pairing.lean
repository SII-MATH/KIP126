import KIP126.Def.StableHomotopy.Source.Orthogonal.Monoidal

/-! The actual function-spectrum smash pairing. It is the mate of
point-set evaluation and the actual middle block swap. In particular no
monoidal structure on the chosen fibrant replacement is presumed. Derived
uses take cofibrant inputs and transport this map through the displayed
weak-equivalence zigzags in the WHOLE diagram category. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.MonoidalCategory
noncomputable section

def functionEvaluation (P X : Spectrum) : smash (functionSpectrum P X) P ⟶ X :=
  (smashFunctionEquiv (functionSpectrum P X) P X).symm (𝟙 _)

/-- Evaluation of f smash g on p smash q, with the actual J-block swap. -/
def functionSmashEvaluation (P Q X Y : Spectrum) :
    smash (smash (functionSpectrum P X) (functionSpectrum Q Y)) (smash P Q) ⟶
      smash X Y :=
  tensorμ (functionSpectrum P X) (functionSpectrum Q Y) P Q ≫
    smashMap (functionEvaluation P X) (functionEvaluation Q Y)

def functionSmashPairing (P Q X Y : Spectrum) :
    smash (functionSpectrum P X) (functionSpectrum Q Y) ⟶
      functionSpectrum (smash P Q) (smash X Y) :=
  (smashFunctionEquiv _ _ _).toFun (functionSmashEvaluation P Q X Y)

theorem functionSmashPairing_evaluation (P Q X Y : Spectrum) :
    (smashFunctionEquiv _ _ _).symm (functionSmashPairing P Q X Y) =
      functionSmashEvaluation P Q X Y := by
  exact (smashFunctionEquiv _ _ _).symm_apply_apply _

end
end KIP126.StableHomotopy.Source.Orthogonal
