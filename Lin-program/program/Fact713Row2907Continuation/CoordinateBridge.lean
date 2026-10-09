import Row2907D4Candidates.Actual
import Row3136FamilyBranches.CoordinateBridge

namespace Fact713Row2907Continuation.CoordinateBridge
open LinearCertificates PageTransitionCertificates
open Row3136FamilyBranches
open Row2907TargetProduct

def swap := Row3136FamilyBranches.CoordinateBridge.swap 2 2

def staircaseComparison (r : Bool) : WireComparison :=
  let w := source r false
  { version := 1, k := 2, m := 2, n := 1, h := w.h,
    outgoing := w.outgoing, incoming := w.incoming, projection := w.projection,
    inclusion := w.inclusion, up := w.up, down := w.down }

theorem staircaseComparison_exact (r : Bool) : staircaseComparison r = source r false := by
  cases r <;> rfl

theorem staircaseComparison_valid (r : Bool) : (staircaseComparison r).Valid := by
  rw [staircaseComparison_exact]
  exact source_valid r false

def currentEquiv : Vec 2 ≃ Vec 2 where
  toFun := eval swap
  invFun := eval swap
  left_inv := by decide
  right_inv := by decide

def nextEquiv (r : Bool) : Vec (comparison r false).h ≃ Vec (source r false).h :=
  Row3136FamilyBranches.CoordinateBridge.sourceE4 r false

theorem outgoing_all (r : Bool) (v : Vec 2) :
    eval (matrixOf 2 2 (comparison r false).outgoing) v =
      eval (matrixOf 2 2 (staircaseComparison r).outgoing) (currentEquiv v) := by
  cases r <;> revert v <;> decide

theorem incoming_all (r : Bool) (v : Vec 1) :
    currentEquiv (eval (matrixOf 2 1 (comparison r false).incoming) v) =
      eval (matrixOf 2 1 (staircaseComparison r).incoming) v := by
  cases r <;> revert v <;> decide

theorem whole_projection (r : Bool) (v : Vec 2) :
    nextEquiv r (eval (comparison r false).comparison.projection v) =
      eval (staircaseComparison r).comparison.projection (currentEquiv v) := by
  cases r <;> revert v <;> decide

theorem zero_next (r : Bool) : nextEquiv r zero = zero := by cases r <;> decide

def staircaseColumn (r b : Bool) : Matrix (source r false).h 1 :=
  if r then fun _ j => decide (j.val = 0)
  else fun i j => decide (j.val = 0) && (if i.val = 0 then b else true)

theorem zero_branch_column (b : Bool) (v : Vec 1) :
    nextEquiv false (eval (Row2907D4Candidates.column b) v) =
      eval (staircaseColumn false b) v := by
  cases b <;> revert v <;> decide

theorem residual_column (v : Vec 1) :
    nextEquiv true (eval (matrixOf 1 1 [true]) v) =
      eval (staircaseColumn true false) v := by revert v; decide

#print axioms whole_projection
#print axioms staircaseComparison_exact
#print axioms staircaseComparison_valid
#print axioms outgoing_all
#print axioms incoming_all
#print axioms zero_next
#print axioms zero_branch_column
#print axioms residual_column
end Fact713Row2907Continuation.CoordinateBridge
