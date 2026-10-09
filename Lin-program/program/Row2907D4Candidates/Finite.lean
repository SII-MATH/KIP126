import Row2907TargetProduct.Branches

namespace Row2907D4Candidates
open LinearCertificates PageTransitionCertificates Row2907PDeltaDetection
open Row2907TargetProduct

def action4 (r : Bool) (x : Vec 1) (y : Vec (comparison r false).h) : Vec 1 :=
  action x (eval (comparison r false).comparison.inclusion y)

theorem quotient_action (r : Bool) (x : Vec 1) (y : Vec 2) :
    eval Data.c32_182_3.comparison.projection (action x y) =
      action4 r (eval Data.c12_42_3.comparison.projection x)
        (eval (comparison r false).comparison.projection y) := by
  cases r <;> revert x y <;> decide

def column (b : Bool) : Matrix 2 1 := matrixOf 2 1 [true,b]

theorem first_forced (y : Vec 2) (h : action4 false (fun _ => true) y = (fun _ => true)) :
    y 0 = true := by
  exact (show ∀ y : Vec 2, action4 false (fun _ => true) y = (fun _ => true) →
    y 0 = true from by decide) y h

theorem named_column (y : Vec 2) (h : y 0 = true) :
    y = eval (column (y 1)) (fun _ => true) := by
  exact (show ∀ y : Vec 2, y 0 = true → y = eval (column (y 1)) (fun _ => true)
    from by decide) y h

#print axioms quotient_action
#print axioms first_forced
#print axioms named_column
end Row2907D4Candidates
