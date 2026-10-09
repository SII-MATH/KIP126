import LinearCertificates.Import

namespace LinearCertificates.Release97
open LinProgramCertificates

def case1Matrix : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case1Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case1Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case1 : ¬ InImage case1Matrix case1Target := by
  lin_cert using case1Witness

def case2Matrix : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def case2Target : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def case2Witness : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem case2 : ¬ InImage case2Matrix case2Target := by
  lin_cert using case2Witness

def case3Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def case3Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case3Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case3 : ¬ InImage case3Matrix case3Target := by
  lin_cert using case3Witness

def case4Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def case4Target : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
def case4Witness : Vec 4 := fun i => ([false, true, true, false] : List Bool)[i.val]!
theorem case4 : ¬ InImage case4Matrix case4Target := by
  lin_cert using case4Witness

def case5Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def case5Target : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case5Witness : Vec 4 := fun i => ([false, true, true, false] : List Bool)[i.val]!
theorem case5 : ¬ InImage case5Matrix case5Target := by
  lin_cert using case5Witness

def case6Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def case6Target : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
def case6Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case6 : InImage case6Matrix case6Target := by
  lin_cert using case6Witness

def case7Matrix : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case7Target : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case7Witness : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
theorem case7 : ¬ InImage case7Matrix case7Target := by
  lin_cert using case7Witness

def case8Matrix : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case8Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case8Witness : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case8 : ¬ InImage case8Matrix case8Target := by
  lin_cert using case8Witness

def case9Matrix : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case9Target : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case9Witness : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
theorem case9 : ¬ InImage case9Matrix case9Target := by
  lin_cert using case9Witness

def case10Matrix : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case10Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case10Witness : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case10 : ¬ InImage case10Matrix case10Target := by
  lin_cert using case10Witness

def case11Matrix : Matrix 4 2 := fun i j => ([false, true, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case11Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case11Witness : Vec 4 := fun i => ([true, false, true, false] : List Bool)[i.val]!
theorem case11 : ¬ InImage case11Matrix case11Target := by
  lin_cert using case11Witness

def case12Matrix : Matrix 4 2 := fun i j => ([false, true, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case12Target : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
def case12Witness : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case12 : ¬ InImage case12Matrix case12Target := by
  lin_cert using case12Witness

def case13Matrix : Matrix 4 2 := fun i j => ([false, true, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case13Target : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case13Witness : Vec 4 := fun i => ([true, false, true, false] : List Bool)[i.val]!
theorem case13 : ¬ InImage case13Matrix case13Target := by
  lin_cert using case13Witness

def case14Matrix : Matrix 4 2 := fun i j => ([false, true, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case14Target : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
def case14Witness : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
theorem case14 : ¬ InImage case14Matrix case14Target := by
  lin_cert using case14Witness

def case15Matrix : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case15Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case15Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case15 : ¬ InImage case15Matrix case15Target := by
  lin_cert using case15Witness

def case16Matrix : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case16Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case16Witness : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
theorem case16 : InImage case16Matrix case16Target := by
  lin_cert using case16Witness

def case17Matrix : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case17Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case17Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case17 : InImage case17Matrix case17Target := by
  lin_cert using case17Witness

def case18Matrix : Matrix 2 4 := fun i j => ([false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def case18Target : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case18Witness : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
theorem case18 : InImage case18Matrix case18Target := by
  lin_cert using case18Witness

def case19Matrix : Matrix 2 4 := fun i j => ([false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def case19Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case19Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case19 : InImage case19Matrix case19Target := by
  lin_cert using case19Witness

def case20Matrix : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def case20Target : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def case20Witness : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem case20 : ¬ InImage case20Matrix case20Target := by
  lin_cert using case20Witness

def case21Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case21Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case21Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case21 : ¬ InImage case21Matrix case21Target := by
  lin_cert using case21Witness

def case22Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case22Target : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
def case22Witness : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case22 : ¬ InImage case22Matrix case22Target := by
  lin_cert using case22Witness

def case23Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case23Target : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case23Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case23 : InImage case23Matrix case23Target := by
  lin_cert using case23Witness

def case24Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case24Target : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
def case24Witness : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
theorem case24 : ¬ InImage case24Matrix case24Target := by
  lin_cert using case24Witness

def case25Matrix : Matrix 3 2 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case25Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case25Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case25 : ¬ InImage case25Matrix case25Target := by
  lin_cert using case25Witness

def case26Matrix : Matrix 3 2 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case26Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case26Witness : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case26 : InImage case26Matrix case26Target := by
  lin_cert using case26Witness

def case27Matrix : Matrix 3 2 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def case27Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case27Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case27 : ¬ InImage case27Matrix case27Target := by
  lin_cert using case27Witness

def case28Matrix : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def case28Target : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case28Witness : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem case28 : InImage case28Matrix case28Target := by
  lin_cert using case28Witness

def case29Matrix : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def case29Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case29Witness : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case29 : ¬ InImage case29Matrix case29Target := by
  lin_cert using case29Witness

def case30Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def case30Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case30Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case30 : ¬ InImage case30Matrix case30Target := by
  lin_cert using case30Witness

def case31Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def case31Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case31Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case31 : ¬ InImage case31Matrix case31Target := by
  lin_cert using case31Witness

def case32Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def case32Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case32Witness : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case32 : InImage case32Matrix case32Target := by
  lin_cert using case32Witness

def case33Matrix : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case33Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case33Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case33 : ¬ InImage case33Matrix case33Target := by
  lin_cert using case33Witness

def case34Matrix : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case34Target : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
def case34Witness : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case34 : ¬ InImage case34Matrix case34Target := by
  lin_cert using case34Witness

def case35Matrix : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case35Target : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case35Witness : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
theorem case35 : ¬ InImage case35Matrix case35Target := by
  lin_cert using case35Witness

def case36Matrix : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case36Target : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
def case36Witness : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
theorem case36 : ¬ InImage case36Matrix case36Target := by
  lin_cert using case36Witness

def case37Matrix : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case37Target : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def case37Witness : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem case37 : ¬ InImage case37Matrix case37Target := by
  lin_cert using case37Witness

def case38Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case38Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case38Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case38 : ¬ InImage case38Matrix case38Target := by
  lin_cert using case38Witness

def case39Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case39Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case39Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case39 : ¬ InImage case39Matrix case39Target := by
  lin_cert using case39Witness

def case40Matrix : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case40Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case40Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case40 : ¬ InImage case40Matrix case40Target := by
  lin_cert using case40Witness

end LinearCertificates.Release97
