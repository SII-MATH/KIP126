import LinearCertificates.Import

namespace BranchReplayCertificates.GeneratedLeaves
open LinProgramCertificates LinearCertificates

def case1Matrix : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def case1Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case1Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case1 : ¬ InImage case1Matrix case1Target := by
  lin_cert using case1Witness

def case2Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case2Target : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
def case2Witness : Vec 6 := fun i => ([false, false, false, true, true, true] : List Bool)[i.val]!
theorem case2 : ¬ InImage case2Matrix case2Target := by
  lin_cert using case2Witness

def case3Matrix : Matrix 3 2 := fun i j => ([false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def case3Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case3Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case3 : ¬ InImage case3Matrix case3Target := by
  lin_cert using case3Witness

def case4Matrix : Matrix 3 2 := fun i j => ([false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def case4Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case4Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case4 : ¬ InImage case4Matrix case4Target := by
  lin_cert using case4Witness

def case5Matrix : Matrix 2 1 := fun i j => ([true, true] : List Bool)[i.val * 1 + j.val]!
def case5Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case5Witness : Vec 2 := fun i => ([true, true] : List Bool)[i.val]!
theorem case5 : ¬ InImage case5Matrix case5Target := by
  lin_cert using case5Witness

end BranchReplayCertificates.GeneratedLeaves
