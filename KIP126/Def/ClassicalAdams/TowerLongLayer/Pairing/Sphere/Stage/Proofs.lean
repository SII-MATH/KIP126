import KIP126.Def.ClassicalAdams.TowerLongLayer.Pairing.Sphere.Stage.Data
import KIP126.Def.StableHomotopy.Context.TensorPairing.Proofs
import KIP126.Def.StableHomotopy.Context.Connecting.Desuspension.Proofs

namespace KIP126.Classical.Adams

noncomputable section
open CategoryTheory MonoidalCategory Pretriangulated KIP126.StableHomotopy
universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H)
  [∀ Y : C, (tensorRight Y).CommShift ℤ]
  [∀ Y : C, (tensorRight Y).IsTriangulated] [MonoidalPreadditive C]

@[simp] theorem adamsSphereLongLayerStageTriangleIso_hom₁ (r s t : ℕ) :
    (adamsSphereLongLayerStageTriangleIso unit r s t).hom.hom₁ =
      (adamsTowerSpherePairingIso unit (s + r) t).hom := by
  simp only [adamsSphereLongLayerStageTriangleIso, isoTriangleOfIso₁₂_hom_hom₁]

@[simp] theorem adamsSphereLongLayerStageTriangleIso_hom₂ (r s t : ℕ) :
    (adamsSphereLongLayerStageTriangleIso unit r s t).hom.hom₂ =
      (adamsTowerSpherePairingIso unit s t).hom := by
  simp only [adamsSphereLongLayerStageTriangleIso, isoTriangleOfIso₁₂_hom_hom₂]

/-- Multiplication of a tower-to-long-layer image is exactly the constructed
sphere-tower multiplication followed by the actual cofiber inclusion. -/
theorem adamsSphereLongLayerStageTriangleIso_ι (r s t : ℕ) :
    (HasFunctorialCofiber.cofibι (adamsTowerMap unit (𝟙_ C) s (s + r) (by omega)) ▷
        adamsTower unit (𝟙_ C) t) ≫
      (adamsSphereLongLayerStageTriangleIso unit r s t).hom.hom₃ =
    (adamsTowerSpherePairingIso unit s t).hom ≫
      HasFunctorialCofiber.cofibι
        (adamsTowerMap unit (𝟙_ C) (t + s) (t + (s + r)) (by omega)) := by
  have h := (adamsSphereLongLayerStageTriangleIso unit r s t).hom.comm₂
  rw [adamsSphereLongLayerStageTriangleIso_hom₂] at h
  exact h

/-- The connecting map of the constructed product is the first connecting
map tensored with the tower-stage class. This genuine one-sided formula is
valid at every length, including four; it assumes no page derivation law. -/
theorem adamsSphereLongLayerStageTriangleIso_δ (r s t : ℕ) :
    (adamsSphereLongLayerStageTriangleIso unit r s t).hom.hom₃ ≫
      HasFunctorialCofiber.cofibδ
        (adamsTowerMap unit (𝟙_ C) (t + s) (t + (s + r)) (by omega)) =
    (HasFunctorialCofiber.cofibδ (adamsTowerMap unit (𝟙_ C) s (s + r) (by omega)) ▷
      adamsTower unit (𝟙_ C) t) ≫
      (Functor.commShiftIso (tensorRight (adamsTower unit (𝟙_ C) t)) (1 : ℤ)).hom.app
        (adamsTower unit (𝟙_ C) (s + r)) ≫
      (adamsTowerSpherePairingIso unit (s + r) t).hom⟦(1 : ℤ)⟧' := by
  have h := (adamsSphereLongLayerStageTriangleIso unit r s t).hom.comm₃
  rw [adamsSphereLongLayerStageTriangleIso_hom₁] at h
  exact h.symm.trans (Category.assoc _ _ _)

set_option backward.isDefEq.respectTransparency false in
/-- The actual connecting homomorphism of a represented long-layer product
is computed by the previously proved spectrum-level formula. No interpretation
of a database row or assumed higher-page multiplication occurs here. -/
theorem adamsSphereLongLayerStageTriangleIso_connecting (r s t : ℕ) (n m : ℤ)
    (a : HomotopyGroup n
      (HasFunctorialCofiber.cofib (adamsTowerMap unit (𝟙_ C) s (s + r) (by omega))))
    (b : HomotopyGroup m (adamsTower unit (𝟙_ C) t)) :
    connectingHomomorphism
      (HoCofiberSequence.ofMorphism
        (adamsTowerMap unit (𝟙_ C) (t + s) (t + (s + r)) (by omega))) (n + m)
      (homotopyTensorPairing n m (n + m) rfl
        (adamsSphereLongLayerStageTriangleIso unit r s t).hom.hom₃ a b) =
    homotopyDesuspend (adamsTower unit (𝟙_ C) (t + (s + r))) (n + m)
      (homotopyTensorPairing n m (n + m) rfl
        ((HasFunctorialCofiber.cofibδ (adamsTowerMap unit (𝟙_ C) s (s + r) (by omega)) ▷
            adamsTower unit (𝟙_ C) t) ≫
          (Functor.commShiftIso (tensorRight (adamsTower unit (𝟙_ C) t)) (1 : ℤ)).hom.app
            (adamsTower unit (𝟙_ C) (s + r)) ≫
          (adamsTowerSpherePairingIso unit (s + r) t).hom⟦(1 : ℤ)⟧') a b) := by
  rw [connectingHomomorphism_eq_desuspend]
  congr 1
  simp only [HoCofiberSequence.ofMorphism, homotopyTensorPairing, tensorHomPairing_apply, Category.assoc,
    adamsSphereLongLayerStageTriangleIso_δ]

end
end KIP126.Classical.Adams
