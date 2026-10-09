import KIP126.Def.StableHomotopy.Context.Proofs

/-! Extending a map along the shifted inclusion of the already specified
cofiber, with the signs of the actual shifted triangle. The vanishing composite stays explicit;
no nullhomotopy, actual CW object, or independent triangle is postulated. -/
namespace KIP126.StableHomotopy.CofiberExtension

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated
universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]

/-- Exactness of the actual shifted cofiber triangle, for every integer
shift and every target object. The sign on its first two maps is absorbed
in the extension, so the equation uses the positive shifted inclusion. -/
theorem exists_extension_of_shift_comp_zero {X Y Z : C}
    (f : X ⟶ Y) (n : ℤ) (a : Y⟦n⟧ ⟶ Z)
    (hzero : f⟦n⟧' ≫ a = 0) :
    ∃ g : (HasFunctorialCofiber.cofib f)⟦n⟧ ⟶ Z,
      (HasFunctorialCofiber.cofibι f)⟦n⟧' ≫ g = a := by
  let T := Triangle.mk f (HasFunctorialCofiber.cofibι f)
    (HasFunctorialCofiber.cofibδ f)
  have hT : T ∈ distTriang C := HasFunctorialCofiber.cofib_distinguished f
  let U := (Triangle.shiftFunctor C n).obj T
  have hU : U ∈ distTriang C := Triangle.shift_distinguished T hT n
  have hz : U.mor₁ ≫ a = 0 := by
    change (n.negOnePow • f⟦n⟧') ≫ a = 0
    rw [Linear.units_smul_comp, hzero, smul_zero]
  obtain ⟨g, hg⟩ := Triangle.yoneda_exact₂ U hU a hz
  change (HasFunctorialCofiber.cofib f)⟦n⟧ ⟶ Z at g
  refine ⟨n.negOnePow • g, ?_⟩
  change a = (n.negOnePow • (HasFunctorialCofiber.cofibι f)⟦n⟧') ≫ g at hg
  rw [Linear.comp_units_smul, ← Linear.units_smul_comp]
  exact hg.symm

/-- The same-category η/ν extension at shift three. It assumes exactly the
specified suspended composite is zero; it does not prove that premise. -/
theorem exists_eta_nu_extension
    (η : Sphere (C := C) 1 ⟶ SphereSpectrum)
    (ν : Sphere (C := C) 3 ⟶ SphereSpectrum)
    (hzero : (shiftFunctor C (3 : ℤ)).map η ≫ ν = 0) :
    ∃ g : (HasFunctorialCofiber.cofib η)⟦(3 : ℤ)⟧ ⟶ SphereSpectrum,
      (HasFunctorialCofiber.cofibι η)⟦(3 : ℤ)⟧' ≫ g = ν :=
  exists_extension_of_shift_comp_zero η 3 ν hzero

end KIP126.StableHomotopy.CofiberExtension
