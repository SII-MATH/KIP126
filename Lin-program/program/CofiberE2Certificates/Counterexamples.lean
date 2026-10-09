import CofiberE2Certificates.Basic
namespace CofiberE2Certificates.Counterexamples
open LinearCertificates
-- S0__C2sigma__S0, position 0, middle (2,9).
def incoming0 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing0 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex0 : ¬ IsComplex outgoing0 incoming0 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 0, middle (3,10).
def incoming1 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing1 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex1 : ¬ IsComplex outgoing1 incoming1 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 0, middle (4,11).
def incoming2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex2 : ¬ IsComplex outgoing2 incoming2 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 2, middle (0,0).
def incoming3 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing3 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex3 : ¬ IsComplex outgoing3 incoming3 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 2, middle (1,1).
def incoming4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex4 : ¬ IsComplex outgoing4 incoming4 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 2, middle (1,8).
def incoming5 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing5 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex5 : ¬ IsComplex outgoing5 incoming5 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__C2sigma__S0, position 2, middle (2,2).
def incoming6 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing6 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex6 : ¬ IsComplex outgoing6 incoming6 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Csigmasq__S0, position 2, middle (0,0).
def incoming7 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing7 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex7 : ¬ IsComplex outgoing7 incoming7 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Csigmasq__S0, position 2, middle (1,1).
def incoming8 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing8 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex8 : ¬ IsComplex outgoing8 incoming8 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Csigmasq__S0, position 2, middle (1,8).
def incoming9 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing9 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex9 : ¬ IsComplex outgoing9 incoming9 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta4__S0, position 2, middle (0,0).
def incoming10 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing10 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex10 : ¬ IsComplex outgoing10 incoming10 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta4__S0, position 2, middle (1,1).
def incoming11 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing11 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex11 : ¬ IsComplex outgoing11 incoming11 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta4__S0, position 2, middle (1,2).
def incoming12 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing12 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex12 : ¬ IsComplex outgoing12 incoming12 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta4__S0, position 2, middle (2,2).
def incoming13 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing13 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex13 : ¬ IsComplex outgoing13 incoming13 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta4__S0, position 2, middle (3,3).
def incoming14 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]?.getD false
def outgoing14 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex14 : ¬ IsComplex outgoing14 incoming14 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (0,0).
def incoming15 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing15 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex15 : ¬ IsComplex outgoing15 incoming15 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (1,1).
def incoming16 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex16 : ¬ IsComplex outgoing16 incoming16 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (1,2).
def incoming17 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing17 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex17 : ¬ IsComplex outgoing17 incoming17 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (1,4).
def incoming18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing18 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex18 : ¬ IsComplex outgoing18 incoming18 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (2,2).
def incoming19 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing19 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex19 : ¬ IsComplex outgoing19 incoming19 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (2,4).
def incoming20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
def outgoing20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex20 : ¬ IsComplex outgoing20 incoming20 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (2,5).
def incoming21 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing21 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex21 : ¬ IsComplex outgoing21 incoming21 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (3,3).
def incoming22 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]?.getD false
def outgoing22 : Matrix 3 1 := fun i j => ([false,false,true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex22 : ¬ IsComplex outgoing22 incoming22 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨2, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (3,6).
def incoming23 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex23 : ¬ IsComplex outgoing23 incoming23 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (3,11).
def incoming24 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing24 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex24 : ¬ IsComplex outgoing24 incoming24 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (4,4).
def incoming25 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing25 : Matrix 2 1 := fun i j => ([false,true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex25 : ¬ IsComplex outgoing25 incoming25 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨1, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (5,5).
def incoming26 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]?.getD false
def outgoing26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex26 : ¬ IsComplex outgoing26 incoming26 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (6,6).
def incoming27 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]?.getD false
def outgoing27 : Matrix 3 1 := fun i j => ([false,false,true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex27 : ¬ IsComplex outgoing27 incoming27 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨2, by decide⟩
  change true = false at hz
  cases hz
-- S0__Ctheta5__S0, position 2, middle (7,7).
def incoming28 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]?.getD false
def outgoing28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]?.getD false
theorem notComplex28 : ¬ IsComplex outgoing28 incoming28 := by
  intro h
  have hz := congrFun (h (fun j => decide (j.val = 0))) ⟨0, by decide⟩
  change true = false at hz
  cases hz
end CofiberE2Certificates.Counterexamples
