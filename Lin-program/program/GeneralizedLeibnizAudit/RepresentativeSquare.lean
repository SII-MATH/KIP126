import AdvancedRuleCertificates.Connecting
import Mathlib.Data.ZMod.Basic

namespace GeneralizedLeibnizAudit

variable {A B C D : Type*} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] [AddCommGroup D]

/-- Equality of leading classes modulo a specified higher-filtration subgroup. -/
def SameLeading (H : AddSubgroup A) (x y : A) : Prop := x-y ∈ H

theorem SameLeading.refl (H : AddSubgroup A) (x : A) : SameLeading H x x := by
  simp [SameLeading]

theorem SameLeading.symm {H : AddSubgroup A} {x y : A} (h : SameLeading H x y) :
    SameLeading H y x := by
  have hn := H.neg_mem h
  simpa [SameLeading,neg_sub] using hn

theorem SameLeading.trans {H : AddSubgroup A} {x y z : A}
    (hxy : SameLeading H x y) (hyz : SameLeading H y z) : SameLeading H x z := by
  have ha := H.add_mem hxy hyz
  simpa [SameLeading,sub_add_sub_cancel] using ha

/-- A genuine witness in the source leading coset, with its image in the target coset. -/
def Extension (f : A →+ B) (H : AddSubgroup A) (K : AddSubgroup B) (x : A) (y : B) : Prop :=
  ∃ a, SameLeading H a x ∧ SameLeading K (f a) y

/-- Every higher source correction maps into the specified higher target subgroup.
This structural map property supplies representative stability; it is not a desired extension. -/
def HigherMapsInto (f : A →+ B) (H : AddSubgroup A) (K : AddSubgroup B) : Prop :=
  ∀ a ∈ H, f a ∈ K

theorem leading_map (f : A →+ B) (H : AddSubgroup A) (K : AddSubgroup B)
    (stable : HigherMapsInto f H K) {x y : A} (same : SameLeading H x y) :
    SameLeading K (f x) (f y) := by
  change f x-f y ∈ K
  rw [← map_sub]
  exact stable _ same

/-- Given one extension witness, the higher-correction condition is equivalent
to stability for every representative of that source leading class. -/
theorem representative_stability_iff (f : A →+ B) (H : AddSubgroup A) (K : AddSubgroup B)
    (x : A) (y : B) (extension : Extension f H K x y) :
    HigherMapsInto f H K ↔ ∀ a, SameLeading H a x → SameLeading K (f a) y := by
  obtain ⟨a,ha,hfa⟩ := extension
  constructor
  · intro stable b hb
    exact (leading_map f H K stable (hb.trans ha.symm)).trans hfa
  · intro stable h hh
    have had : SameLeading H (a+h) a := by simpa [SameLeading] using hh
    have image := stable (a+h) (had.trans ha)
    have difference := image.trans hfa.symm
    simpa [SameLeading,map_add] using difference

/-- The representative-level algebraic square behind a no-crossing transfer.
It uses a commuting square, three existential extensions, stability of either
first map, and stability of the last map. It does not assume the fourth extension. -/
theorem square_transfer (f : A →+ B) (p : A →+ C) (q : B →+ D) (g : C →+ D)
    (commutes : ∀ a, q (f a) = g (p a))
    (HA : AddSubgroup A) (HB : AddSubgroup B) (HC : AddSubgroup C) (HD : AddSubgroup D)
    (x : A) (y : B) (z : C) (w : D)
    (first : Extension f HA HB x y) (second : Extension p HA HC x z)
    (third : Extension g HC HD z w)
    (firstStable : HigherMapsInto f HA HB ∨ HigherMapsInto p HA HC)
    (lastStable : HigherMapsInto g HC HD) : Extension q HB HD y w := by
  obtain ⟨a,ha,hfa⟩ := first
  obtain ⟨b,hb,hpb⟩ := second
  obtain ⟨c,hc,hgc⟩ := third
  rcases firstStable with stableF | stableP
  · refine ⟨f b, ?_, ?_⟩
    · exact (leading_map f HA HB stableF (hb.trans ha.symm)).trans hfa
    · rw [commutes]
      exact (leading_map g HC HD lastStable (hpb.trans hc.symm)).trans hgc
  · refine ⟨f a,hfa,?_⟩
    rw [commutes]
    have pa : SameLeading HC (p a) z :=
      (leading_map p HA HC stableP (ha.trans hb.symm)).trans hpb
    exact (leading_map g HC HD lastStable (pa.trans hc.symm)).trans hgc

/-- Independent coset representatives can change an unchecked final map value.
This is an algebraic counterexample, separate from the paper's Example6.8. -/
theorem last_stability_needed :
    let F := ZMod 2
    let i : F →+ F := AddMonoidHom.id F
    Extension i ⊥ ⊥ 1 1 ∧ Extension i ⊥ ⊤ 1 0 ∧
    Extension i ⊤ ⊥ 0 0 ∧ HigherMapsInto i ⊥ ⊥ ∧
    ¬ Extension i ⊥ ⊥ 1 0 ∧ ¬ HigherMapsInto i ⊤ ⊥ := by
  dsimp
  simp only [Extension,SameLeading,HigherMapsInto,AddMonoidHom.id_apply,
    AddSubgroup.mem_bot,AddSubgroup.mem_top,true_and,and_true]
  refine ⟨⟨1,by simp,by simp⟩,⟨1,by simp⟩,⟨0,by simp⟩,
    (fun _ h => h),?_,?_⟩
  · rintro ⟨a,h1,h0⟩
    have one : a=1 := sub_eq_zero.mp h1
    have zero : a=0 := by simpa using h0
    have bad : (1 : ZMod 2)=0 := one.symm.trans zero
    exact one_ne_zero bad
  · intro h
    exact one_ne_zero (h 1 trivial)

#print axioms square_transfer
#print axioms representative_stability_iff
#print axioms last_stability_needed
end GeneralizedLeibnizAudit
