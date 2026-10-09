import NamedElementCertificates.ModuleEvaluation

namespace NamedElementCertificates.CnuBottomCell
open ModuleExpressions

/-- All four actual degree-(14,139) source basis records, in SQLite ID order.
The last number in each source encoding denotes a module generator. -/
def sourceBasis : List (Monomial × Nat) :=
  [([], 372), ([449], 0), ([1, 7, 275], 0), ([0, 0, 425], 0)]

def basisIds : List Nat := [4410, 4411, 4412, 4413]

def namedExpression : Expression 1171 := fun i => if i.val = 0 then [[1, 7, 275]] else []
def coordinateExpression : Expression 1171 := fun i =>
  if i.val = (sourceBasis[2]!).snd then [(sourceBasis[2]!).fst] else []

theorem actual_coordinate_id : basisIds[2]! = 4412 := rfl
theorem actual_coordinate_expression : coordinateExpression = namedExpression := rfl

set_option maxRecDepth 10000 in
set_option maxHeartbeats 2000000 in
theorem coordinate_certificate :
    ModuleExpressions.check [] namedExpression coordinateExpression [] = true := by decide

theorem named_bottom_cell_evaluation {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (v : Nat → R) (g : Fin 1171 → M) :
    ModuleExpressions.evaluate v g coordinateExpression =
      (v 1 * v 7 * v 275) • g 0 := by
  rw [actual_coordinate_expression]
  unfold ModuleExpressions.evaluate
  rw [Finset.sum_eq_single (0 : Fin 1171)]
  · simp [namedExpression, NamedElementCertificates.evaluate, evaluateMonomial, mul_assoc]
  · intro i hi hne
    have hv : i.val ≠ 0 := by intro h; exact hne (Fin.ext h)
    simp [namedExpression, hv, NamedElementCertificates.evaluate]
  · simp

/-- A relation connecting two module generators is handled without requiring
either generator to vanish. -/
def crossingRelation : Expression 2 := fun _ => [[]]
def firstGenerator : Expression 2 := fun i => if i.val = 0 then [[]] else []
def secondGenerator : Expression 2 := fun i => if i.val = 1 then [[]] else []

example : ModuleExpressions.check [crossingRelation] firstGenerator secondGenerator [⟨0,[[]]⟩] = true := by
  decide

example : ModuleExpressions.check [crossingRelation] firstGenerator secondGenerator [] = false := by
  decide

theorem crossing_tactic {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (v : Nat → R) (g : Fin 2 → M) :
    EvaluationsAgree v g [crossingRelation] firstGenerator secondGenerator := by
  module_cert using ([⟨0, [[]]⟩] : List Term)

#print axioms ModuleExpressions.check_sound_evaluate
#print axioms named_bottom_cell_evaluation

end NamedElementCertificates.CnuBottomCell
