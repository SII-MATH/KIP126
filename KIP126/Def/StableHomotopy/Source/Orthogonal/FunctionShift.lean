import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts

/-! Suspension on the actual enriched function spectrum. The external
interval coordinate is retained: a map f sends [t,x] to [t,f(x)]. The
derived comparison below is used ONLY for cofibrant E and cofibrant,
stable-fibrant F, and repairs the target by the same fibrant resolution.
No claim about raw suspension of arbitrary badly based spectra is made. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

def functionSuspensionLevel {E F : Spectrum} {n : ℕ}
    (f : FunctionLevel E F n) : FunctionLevel (suspension E) (suspension F) n where
  level m :=
    { map := ⟨(Source.suspensionMap (f.level m)).map, by sorry⟩
      point := (Source.suspensionMap (f.level m)).point }
  naturality := by sorry

def functionSuspensionMap (E F : Spectrum) :
    functionSpectrum E F ⟶ functionSpectrum (suspension E) (suspension F) where
  level n :=
    { map := ⟨functionSuspensionLevel, by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- The comparison maps to the CURRENT derived function-spectrum model,
using precisely Q's projection and R's inclusion. -/
def functionToDerived (E F : Spectrum) :
    functionSpectrum E F ⟶ derivedMappingSpectrum E F :=
  functionMap (cofibrantResolution.projection.app E) (fibrantResolution.inclusion.app F)

theorem functionToDerived_equivalence (E F : Spectrum)
    (hE : Cofibrant E) (hF : StableFibrant F) :
    stableEquivalences (functionToDerived E F) := by sorry

/-- Full faithfulness of derived suspension, with the ACTUAL interval
map above. Cofibrancy of F ensures raw Sigma F computes its derived shift. -/
theorem functionSuspension_equivalence (E F : Spectrum)
    (hE : Cofibrant E) (hF : Cofibrant F) (hRF : StableFibrant F) :
    stableEquivalences
      (functionSuspensionMap E F ≫ functionToDerived (suspension E) (suspension F)) := by
  sorry

/-- The derived suspension-loop counit, evaluated after Q on Omega R E. -/
def derivedSuspensionLoopCounit (E : Spectrum) :
    (derivedShift 1).obj ((derivedShift (-1)).obj E) ⟶ fibrantResolution.functor.obj E :=
  suspensionMap (cofibrantResolution.projection.app
    (loops (fibrantResolution.functor.obj E))) ≫
      suspensionLoopCounit (fibrantResolution.functor.obj E)

theorem derivedSuspensionLoopCounit_equivalence (E : Spectrum) :
    stableEquivalences (derivedSuspensionLoopCounit E) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
