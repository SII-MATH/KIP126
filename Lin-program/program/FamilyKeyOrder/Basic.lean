import IndexedFamilyCertificates.Basic

namespace FamilyKeyOrder
open IndexedFamilyCertificates

/-- Exactly one comparison per adjacent pair. -/
def checkOrder : List Nat → Bool
  | [] => true
  | [_] => true
  | a :: b :: rest => decide (a < b) && checkOrder (b :: rest)

theorem checkOrder_pairwise (values : List Nat) (h : checkOrder values = true) :
    values.Pairwise (· < ·) := by
  induction values with
  | nil => exact .nil
  | cons a rest ih =>
    cases rest with
    | nil => exact .cons (by simp) .nil
    | cons b tail =>
      simp only [checkOrder,Bool.and_eq_true,decide_eq_true_eq] at h
      have sorted := ih h.2
      refine .cons ?_ sorted
      intro x hx
      rcases List.mem_cons.mp hx with rfl | hx
      · exact h.1
      · exact Nat.lt_trans h.1 ((List.pairwise_cons.mp sorted).1 x hx)

theorem checkOrder_nodup (values : List Nat) (h : checkOrder values = true) : values.Nodup := by
  have sorted := checkOrder_pairwise values h
  exact sorted.imp (fun less => Nat.ne_of_lt less)

/-- Injectivity on the entire key type is unnecessary: equal keys always
have equal codes, so no repetition can occur in an ordered accepted list. -/
theorem nodup_of_map_nodup {α : Type} (code : α → Nat) (keys : List α)
    (h : (keys.map code).Nodup) : keys.Nodup := by
  induction keys with
  | nil => exact .nil
  | cons key rest ih =>
    simp only [List.map_cons,List.nodup_cons] at h
    apply List.nodup_cons.mpr
    constructor
    · intro member
      exact h.1 (List.mem_map.mpr ⟨key,member,rfl⟩)
    · exact ih h.2

def checkKeyOrder (code : Key → Nat) (family : Family) : Bool :=
  checkOrder (family.map (fun entry => code entry.key))

theorem check_key_order_sound (code : Key → Nat) (family : Family)
    (checked : checkKeyOrder code family = true) : UniqueKeys family := by
  apply nodup_of_map_nodup code (family.map Entry.key)
  have h := checkOrder_nodup _ checked
  simpa only [List.map_map,Function.comp_def] using h

def diagnoseOrder : List Nat → Nat → Option Nat
  | [], _ => none
  | [_], _ => none
  | a :: b :: rest, index =>
    if a < b then diagnoseOrder (b :: rest) (index+1) else some index

def diagnose (code : Key → Nat) (family : Family) : Option String :=
  match diagnoseOrder (family.map (fun entry => code entry.key)) 0 with
  | none => none
  | some index => some s!"family.entries[{index},{index+1}]: key codes are not strictly increasing"

#print axioms checkOrder_pairwise
#print axioms checkOrder_nodup
#print axioms nodup_of_map_nodup
#print axioms check_key_order_sound
end FamilyKeyOrder
