import NamedPageComparison.Row2858.Products_g
import NamedPageComparison.Row2858.Products_h1
import NamedPageComparison.Row2858.Products_h3

namespace NamedPageComparison.Row2858
open LinearCertificates

-- Complete imported d2 boundary spans at the three residual target degrees.
def boundariesG : Matrix 3 0 := fun _ i => Fin.elim0 i
def boundariesH1 : Matrix 4 1 := fun i _ => i.val == 3
def boundariesH3 : Matrix 5 1 := fun i _ => i.val == 4

def Compatible (v : Vec 5) : Prop :=
  InImage boundariesG (eval g.matrix13_138 v) ∧
  InImage boundariesH1 (eval NamedPageComparison.Row2858.h1.matrix13_138 v) ∧
  InImage boundariesH3 (eval h3.matrix13_138 v)

-- The two d2 boundaries in the original d3 target are local3 and local4.
def earlierTarget : Matrix 5 2 := fun i j => i.val == j.val + 3

theorem compatibility_forces_zero_coordinates (v : Vec 5) (hc : Compatible v) :
    v 0 = false ∧ v 1 = false ∧ v 2 = false := by
  obtain ⟨⟨a, ha⟩, ⟨b, hb⟩, ⟨c, hc⟩⟩ := hc
  have h0 := congrFun ha (0 : Fin 3)
  have h1 := congrFun hb (2 : Fin 4)
  have h2 := congrFun hc (3 : Fin 5)
  have coordG : ∀ v : Vec 5, eval g.matrix13_138 v 0 = v 0 := by
    intro v
    change xor (v 0) false = v 0
    simp
  have coordH1 : ∀ v : Vec 5, eval NamedPageComparison.Row2858.h1.matrix13_138 v 2 = v 1 := by
    intro v
    change xor false (xor (v 1) false) = v 1
    simp
  have coordH3 : ∀ v : Vec 5, eval h3.matrix13_138 v 3 = v 2 := by
    intro v
    change xor false (xor false (xor (v 2) false)) = v 2
    simp
  have zeroG : ∀ a, eval boundariesG a 0 = false := by intro a; rfl
  have zeroH1 : ∀ a, eval boundariesH1 a 2 = false := by intro a; rfl
  have zeroH3 : ∀ a, eval boundariesH3 a 3 = false := by intro a; rfl
  rw [coordG, zeroG] at h0
  rw [coordH1, zeroH1] at h1
  rw [coordH3, zeroH3] at h2
  exact ⟨h0.symm,h1.symm,h2.symm⟩

theorem all_compatible_candidates_are_boundaries (v : Vec 5) (hc : Compatible v) :
    InImage earlierTarget v := by
  obtain ⟨h0,h1,h2⟩ := compatibility_forces_zero_coordinates v hc
  refine ⟨fun j => if j.val = 0 then v 3 else v 4, ?_⟩
  funext i
  have casesI : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 := by omega
  rcases casesI with hi|hi|hi|hi|hi
  all_goals subst i
  · change false = v 0
    exact h0.symm
  · change false = v 1
    exact h1.symm
  · change false = v 2
    exact h2.symm
  · change xor (v 3) false = v 3
    simp
  · change xor false (xor (v 4) false) = v 4
    simp

-- Every nonzero vector among the three candidate coordinates is refuted.
theorem rejects_all_seven (v : Vec 5)
    (hn : v 0 = true ∨ v 1 = true ∨ v 2 = true) : ¬ Compatible v := by
  intro hc
  obtain ⟨h0,h1,h2⟩ := compatibility_forces_zero_coordinates v hc
  rcases hn with h|h|h <;> simp_all
end NamedPageComparison.Row2858
