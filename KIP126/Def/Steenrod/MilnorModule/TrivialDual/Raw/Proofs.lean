import KIP126.Def.Steenrod.MilnorModule.TrivialDual.Raw.Data

/-! Evaluation on the specified degree-line generator is an isomorphism
of the actual left modules, not an additional choice of coefficient object. -/

namespace KIP126.Steenrod.Milnor.Module

open CategoryTheory MonoidalCategory KIP126.Core.Algebra KIP126.Algebra

set_option backward.isDefEq.respectTransparency false

theorem trivialDualHom_action (t : ℤ) :
    (steenrod.X ◁ trivialDualHom t) ≫ (trivialAt t).a =
      (dualLeftModule (Ext.trivialAt t)).a ≫ trivialDualHom t := by
  sorry

theorem trivialDualInv_action (t : ℤ) :
    (steenrod.X ◁ trivialDualInv t) ≫ (dualLeftModule (Ext.trivialAt t)).a =
      (trivialAt t).a ≫ trivialDualInv t := by
  sorry

theorem trivialDualHom_inv (t : ℤ) :
    trivialDualHom t ≫ trivialDualInv t = 𝟙 (dualLeftModule (Ext.trivialAt t)).A := by
  classical
  funext n
  by_cases h : n = t
  · subst n
    apply ModuleCat.hom_ext
    ext φ
    simp [trivialDualHom, trivialDualInv, GradedComodule.degreeLineGenerator]
    let e := GradedObject.singleObjApplyIso t (ModuleCat.of F2 F2)
    let φ' : Module.Dual F2 (GradedComodule.degreeLine F2 t t) := φ
    change (φ' (e.inv.hom 1)) • e.hom.hom = φ'
    apply LinearMap.ext
    intro x
    change φ' (e.inv.hom 1) * e.hom.hom x = φ' x
    have hx : (e.hom.hom x) • e.inv.hom 1 = x := by
      calc
        (e.hom.hom x) • e.inv.hom 1 = e.inv.hom ((e.hom.hom x) • (1 : F2)) :=
          (e.inv.hom.map_smul _ _).symm
        _ = x := by simp
    calc
      φ' (e.inv.hom 1) * e.hom.hom x = e.hom.hom x * φ' (e.inv.hom 1) := mul_comm _ _
      _ = φ' ((e.hom.hom x) • e.inv.hom 1) := (φ'.map_smul _ _).symm
      _ = φ' x := congrArg φ' hx
  · apply ModuleCat.hom_ext
    ext φ
    simp [trivialDualHom, trivialDualInv, h]
    change (0 : Module.Dual F2 (GradedComodule.degreeLine F2 t n)) = φ
    apply LinearMap.ext
    intro x
    have hzero := GradedObject.isInitialSingleObjApply t (ModuleCat.of F2 F2) n h
    haveI : Subsingleton (GradedComodule.degreeLine F2 t n) :=
      ModuleCat.subsingleton_of_isZero hzero.isZero
    have hx : x = 0 := Subsingleton.elim _ _
    simp [hx]

theorem trivialDualInv_hom (t : ℤ) :
    trivialDualInv t ≫ trivialDualHom t = 𝟙 (trivialAt t).A := by
  classical
  funext n
  by_cases h : n = t
  · subst n
    apply ModuleCat.hom_ext
    ext x
    simp [trivialDualHom, trivialDualInv, GradedComodule.degreeLineGenerator]
    let e := GradedObject.singleObjApplyIso t (ModuleCat.of F2 F2)
    change e.inv.hom ((e.hom.hom x) * e.hom.hom (e.inv.hom 1)) = x
    simp
  · apply ModuleCat.hom_ext
    ext x
    simp [trivialDualHom, trivialDualInv, h]
    change (0 : GradedComodule.degreeLine F2 t n) = x
    have hzero := GradedObject.isInitialSingleObjApply t (ModuleCat.of F2 F2) n h
    haveI : Subsingleton (GradedComodule.degreeLine F2 t n) :=
      ModuleCat.subsingleton_of_isZero hzero.isZero
    exact Subsingleton.elim _ _

end KIP126.Steenrod.Milnor.Module
