import LinearCertificates.Import

namespace LinearCertificates.Generated
open LinProgramCertificates

def case1Matrix : Matrix 3 2 := fun i j => ([true, false, false, true, true, true] : List Bool)[i.val * 2 + j.val]!
def case1Target : Vec 3 := fun i => ([true, true, false] : List Bool)[i.val]!
def case1Witness : Vec 2 := fun i => ([true, true] : List Bool)[i.val]!
theorem case1 : InImage case1Matrix case1Target := by
  lin_cert using case1Witness

def case2Matrix : Matrix 3 2 := fun i j => ([true, false, false, true, true, true] : List Bool)[i.val * 2 + j.val]!
def case2Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case2Witness : Vec 3 := fun i => ([true, true, true] : List Bool)[i.val]!
theorem case2 : ¬ InImage case2Matrix case2Target := by
  lin_cert using case2Witness

end LinearCertificates.Generated
