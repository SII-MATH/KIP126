import Fact715Source2574.Recorded
import Fact715Source2574.Vanishing
import Row2574Detector.Quotient

namespace Row2574D3Search.Data
open LinearCertificates PageTransitionCertificates PageProductCertificates

def current2 : WireComparison := page_comparison% "Row2574D3Search/wire/current2.json"
theorem current2_valid : current2.Valid := by lin_cert using ()
def upper2 : WireComparison := page_comparison% "Row2574D3Search/wire/upper2.json"
theorem upper2_valid : upper2.Valid := by lin_cert using ()
def current3_0 : WireComparison := page_comparison% "Row2574D3Search/wire/current3_0.json"
theorem current3_0_valid : current3_0.Valid := by lin_cert using ()
def current3_1 : WireComparison := page_comparison% "Row2574D3Search/wire/current3_1.json"
theorem current3_1_valid : current3_1.Valid := by lin_cert using ()
def current3 (b : Bool) : WireComparison :=
  {current3_0 with incoming := [b,true,false], projection := [true,b,false]}
theorem current3_valid (b : Bool) : (current3 b).Valid := by cases b <;> first | exact current3_0_valid | exact current3_1_valid
def source3_0 : WireComparison := page_comparison% "Row2574D3Search/wire/source3_0.json"
theorem source3_0_valid : source3_0.Valid := by lin_cert using ()
def source3_1 : WireComparison := page_comparison% "Row2574D3Search/wire/source3_1.json"
theorem source3_1_valid : source3_1.Valid := by lin_cert using ()
def source3 (b : Bool) : WireComparison :=
  {source3_0 with outgoing := [b,true,false], down := if b then source3_1.down else source3_0.down}
theorem source3_valid (b : Bool) : (source3 b).Valid := by
  cases b <;> first | exact source3_0_valid | exact source3_1_valid
theorem source_target_link (b : Bool) : (source3 b).outgoing = (current3 b).incoming := rfl
def sourceIncoming2 : WireComparison := page_comparison% "Row2574D3Search/wire/sourceIncoming2.json"
theorem sourceIncoming2_valid : sourceIncoming2.Valid := by lin_cert using ()

def nextTensor : Tensor 1 3 2 := fun i _ j => decide (i.val = 1 ∧ j.val = 1)
def basis3 (j : Fin 3) : Vec 3 := fun i => i == j
def incoming (b : Bool) : Vec 3 := fun i => if i.val = 0 then b else i.val == 1
def raw : Vec 5 := fun i => i.val == 2

theorem tensor_basis (x : Vec 1) (y : Vec 5) :
    eval (matrixOf current2.k current2.m current2.outgoing) y = zero →
    eval Fact715Source2574.Data.target.comparison.projection
        (product Row2574Detector.Quotient.detect.product x y) =
      product nextTensor (eval Fact715Source2574.Data.factor.comparison.projection x)
        (eval current2.comparison.projection y) := by
  exact (show ∀ x : Vec 1, ∀ y : Vec 5,
    eval (matrixOf current2.k current2.m current2.outgoing) y = zero →
    eval Fact715Source2574.Data.target.comparison.projection
        (product Row2574Detector.Quotient.detect.product x y) =
      product nextTensor (eval Fact715Source2574.Data.factor.comparison.projection x)
        (eval current2.comparison.projection y) from by decide) x y

theorem detection (v : Vec 3) :
    product nextTensor (fun _ => true) v = Fact715Source2574.Finite.namedTarget ↔ v 1 = true := by
  exact (show ∀ v : Vec 3,
    product nextTensor (fun _ => true) v = Fact715Source2574.Finite.namedTarget ↔ v 1 = true from by decide) v

theorem branch_identification (v : Vec 3) (h1 : v 1 = true) (h2 : v 2 = false) :
    v = incoming (v 0) := by
  exact (show ∀ v : Vec 3, v 1 = true → v 2 = false → v = incoming (v 0) from by decide) v h1 h2
theorem outgoing_third (v : Vec 3) :
    eval (matrixOf 1 3 current3_0.outgoing) v 0 = v 2 := by
  exact (show ∀ v : Vec 3, eval (matrixOf 1 3 current3_0.outgoing) v 0 = v 2 from by decide) v
theorem branch_shape (b : Bool) : (current3 b).k = 1 ∧ (current3 b).m = 3 ∧
    (current3 b).n = 1 ∧ (current3 b).h = 1 := by cases b <;> decide
theorem outgoing_same (b : Bool) : (current3 b).outgoing = current3_0.outgoing := by cases b <;> decide
theorem incoming_column (b : Bool) :
    eval (matrixOf 3 1 (current3 b).incoming) (fun _ => true) = incoming b := by cases b <;> decide
theorem raw_cycle2 : eval (matrixOf current2.k current2.m current2.outgoing) raw = zero := by decide
theorem raw_name3 : eval current2.comparison.projection raw = basis3 0 := by decide
theorem name_cycle3 (b : Bool) :
    eval (matrixOf 1 3 (current3 b).outgoing) (basis3 0) = zero := by cases b <;> decide
theorem name_next3 (b : Bool) :
    eval (matrixOf 1 3 (current3 b).projection) (basis3 0) = (fun _ => true) := by cases b <;> decide

#print axioms current2_valid
#print axioms upper2_valid
#print axioms current3_0_valid
#print axioms current3_1_valid
#print axioms current3_valid
#print axioms source3_0_valid
#print axioms source3_1_valid
#print axioms source3_valid
#print axioms source_target_link
#print axioms sourceIncoming2_valid
#print axioms tensor_basis
#print axioms detection
#print axioms branch_identification
#print axioms outgoing_third
#print axioms branch_shape
#print axioms outgoing_same
#print axioms incoming_column
#print axioms raw_cycle2
#print axioms raw_name3
#print axioms name_cycle3
#print axioms name_next3
end Row2574D3Search.Data
