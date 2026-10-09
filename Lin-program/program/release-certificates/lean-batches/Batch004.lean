import LinearCertificates.Import

namespace LinearCertificates.Release4
open LinProgramCertificates

def case1Matrix : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case1Target : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
def case1Witness : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case1 : ¬ InImage case1Matrix case1Target := by
  lin_cert using case1Witness

def case2Matrix : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case2Target : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
def case2Witness : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
theorem case2 : ¬ InImage case2Matrix case2Target := by
  lin_cert using case2Witness

def case3Matrix : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case3Target : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
def case3Witness : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case3 : ¬ InImage case3Matrix case3Target := by
  lin_cert using case3Witness

def case4Matrix : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case4Target : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
def case4Witness : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case4 : ¬ InImage case4Matrix case4Target := by
  lin_cert using case4Witness

def case5Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case5Target : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
def case5Witness : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
theorem case5 : ¬ InImage case5Matrix case5Target := by
  lin_cert using case5Witness

def case6Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case6Target : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
def case6Witness : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
theorem case6 : ¬ InImage case6Matrix case6Target := by
  lin_cert using case6Witness

def case7Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case7Target : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
def case7Witness : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
theorem case7 : ¬ InImage case7Matrix case7Target := by
  lin_cert using case7Witness

def case8Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case8Target : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
def case8Witness : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
theorem case8 : ¬ InImage case8Matrix case8Target := by
  lin_cert using case8Witness

def case9Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case9Target : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
def case9Witness : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
theorem case9 : ¬ InImage case9Matrix case9Target := by
  lin_cert using case9Witness

def case10Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case10Target : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
def case10Witness : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
theorem case10 : ¬ InImage case10Matrix case10Target := by
  lin_cert using case10Witness

def case11Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case11Target : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
def case11Witness : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case11 : ¬ InImage case11Matrix case11Target := by
  lin_cert using case11Witness

def case12Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case12Target : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
def case12Witness : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case12 : ¬ InImage case12Matrix case12Target := by
  lin_cert using case12Witness

def case13Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case13Target : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
def case13Witness : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case13 : ¬ InImage case13Matrix case13Target := by
  lin_cert using case13Witness

def case14Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case14Target : Vec 8 := fun i => ([false, false, false, true, false, false, false, false] : List Bool)[i.val]!
def case14Witness : Vec 8 := fun i => ([false, false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case14 : ¬ InImage case14Matrix case14Target := by
  lin_cert using case14Witness

def case15Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case15Target : Vec 8 := fun i => ([false, false, false, false, true, false, false, false] : List Bool)[i.val]!
def case15Witness : Vec 8 := fun i => ([false, false, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case15 : ¬ InImage case15Matrix case15Target := by
  lin_cert using case15Witness

def case16Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case16Target : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
def case16Witness : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
theorem case16 : ¬ InImage case16Matrix case16Target := by
  lin_cert using case16Witness

def case17Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case17Target : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
def case17Witness : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case17 : ¬ InImage case17Matrix case17Target := by
  lin_cert using case17Witness

def case18Matrix : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def case18Target : Vec 8 := fun i => ([false, false, false, false, false, false, false, true] : List Bool)[i.val]!
def case18Witness : Vec 8 := fun i => ([false, false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case18 : ¬ InImage case18Matrix case18Target := by
  lin_cert using case18Witness

def case19Matrix : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case19Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case19Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case19 : ¬ InImage case19Matrix case19Target := by
  lin_cert using case19Witness

def case20Matrix : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case20Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case20Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case20 : ¬ InImage case20Matrix case20Target := by
  lin_cert using case20Witness

def case21Matrix : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case21Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case21Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case21 : ¬ InImage case21Matrix case21Target := by
  lin_cert using case21Witness

def case22Matrix : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def case22Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case22Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case22 : ¬ InImage case22Matrix case22Target := by
  lin_cert using case22Witness

def case23Matrix : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def case23Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case23Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case23 : ¬ InImage case23Matrix case23Target := by
  lin_cert using case23Witness

def case24Matrix : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def case24Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case24Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case24 : ¬ InImage case24Matrix case24Target := by
  lin_cert using case24Witness

def case25Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case25Target : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
def case25Witness : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
theorem case25 : ¬ InImage case25Matrix case25Target := by
  lin_cert using case25Witness

def case26Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case26Target : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
def case26Witness : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
theorem case26 : ¬ InImage case26Matrix case26Target := by
  lin_cert using case26Witness

def case27Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case27Target : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
def case27Witness : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
theorem case27 : ¬ InImage case27Matrix case27Target := by
  lin_cert using case27Witness

def case28Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case28Target : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
def case28Witness : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
theorem case28 : ¬ InImage case28Matrix case28Target := by
  lin_cert using case28Witness

def case29Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case29Target : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
def case29Witness : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
theorem case29 : ¬ InImage case29Matrix case29Target := by
  lin_cert using case29Witness

def case30Matrix : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def case30Target : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
def case30Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case30 : InImage case30Matrix case30Target := by
  lin_cert using case30Witness

def case31Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case31Target : Vec 7 := fun i => ([true, false, false, false, false, false, false] : List Bool)[i.val]!
def case31Witness : Vec 7 := fun i => ([true, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case31 : ¬ InImage case31Matrix case31Target := by
  lin_cert using case31Witness

def case32Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case32Target : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
def case32Witness : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case32 : ¬ InImage case32Matrix case32Target := by
  lin_cert using case32Witness

def case33Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case33Target : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
def case33Witness : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case33 : ¬ InImage case33Matrix case33Target := by
  lin_cert using case33Witness

def case34Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case34Target : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
def case34Witness : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case34 : ¬ InImage case34Matrix case34Target := by
  lin_cert using case34Witness

def case35Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case35Target : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
def case35Witness : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
theorem case35 : ¬ InImage case35Matrix case35Target := by
  lin_cert using case35Witness

def case36Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case36Target : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
def case36Witness : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case36 : ¬ InImage case36Matrix case36Target := by
  lin_cert using case36Witness

def case37Matrix : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case37Target : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
def case37Witness : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case37 : ¬ InImage case37Matrix case37Target := by
  lin_cert using case37Witness

def case38Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case38Target : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
def case38Witness : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
theorem case38 : ¬ InImage case38Matrix case38Target := by
  lin_cert using case38Witness

def case39Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case39Target : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
def case39Witness : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
theorem case39 : ¬ InImage case39Matrix case39Target := by
  lin_cert using case39Witness

def case40Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case40Target : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
def case40Witness : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
theorem case40 : ¬ InImage case40Matrix case40Target := by
  lin_cert using case40Witness

def case41Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case41Target : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
def case41Witness : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
theorem case41 : ¬ InImage case41Matrix case41Target := by
  lin_cert using case41Witness

def case42Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case42Target : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
def case42Witness : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
theorem case42 : ¬ InImage case42Matrix case42Target := by
  lin_cert using case42Witness

def case43Matrix : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case43Target : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
def case43Witness : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
theorem case43 : ¬ InImage case43Matrix case43Target := by
  lin_cert using case43Witness

def case44Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case44Target : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
def case44Witness : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case44 : ¬ InImage case44Matrix case44Target := by
  lin_cert using case44Witness

def case45Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case45Target : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
def case45Witness : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case45 : InImage case45Matrix case45Target := by
  lin_cert using case45Witness

def case46Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case46Target : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
def case46Witness : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case46 : ¬ InImage case46Matrix case46Target := by
  lin_cert using case46Witness

def case47Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case47Target : Vec 8 := fun i => ([false, false, false, true, false, false, false, false] : List Bool)[i.val]!
def case47Witness : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case47 : InImage case47Matrix case47Target := by
  lin_cert using case47Witness

def case48Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case48Target : Vec 8 := fun i => ([false, false, false, false, true, false, false, false] : List Bool)[i.val]!
def case48Witness : Vec 8 := fun i => ([false, false, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case48 : ¬ InImage case48Matrix case48Target := by
  lin_cert using case48Witness

def case49Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case49Target : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
def case49Witness : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
theorem case49 : ¬ InImage case49Matrix case49Target := by
  lin_cert using case49Witness

def case50Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case50Target : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
def case50Witness : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case50 : ¬ InImage case50Matrix case50Target := by
  lin_cert using case50Witness

def case51Matrix : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case51Target : Vec 8 := fun i => ([false, false, false, false, false, false, false, true] : List Bool)[i.val]!
def case51Witness : Vec 8 := fun i => ([false, false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case51 : ¬ InImage case51Matrix case51Target := by
  lin_cert using case51Witness

def case52Matrix : Matrix 2 2 := fun i j => ([true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def case52Target : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case52Witness : Vec 2 := fun i => ([true, true] : List Bool)[i.val]!
theorem case52 : ¬ InImage case52Matrix case52Target := by
  lin_cert using case52Witness

def case53Matrix : Matrix 2 2 := fun i j => ([true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def case53Target : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case53Witness : Vec 2 := fun i => ([true, true] : List Bool)[i.val]!
theorem case53 : ¬ InImage case53Matrix case53Target := by
  lin_cert using case53Witness

def case54Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case54Target : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
def case54Witness : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
theorem case54 : ¬ InImage case54Matrix case54Target := by
  lin_cert using case54Witness

def case55Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case55Target : Vec 6 := fun i => ([false, true, false, false, false, false] : List Bool)[i.val]!
def case55Witness : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case55 : InImage case55Matrix case55Target := by
  lin_cert using case55Witness

def case56Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case56Target : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
def case56Witness : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
theorem case56 : ¬ InImage case56Matrix case56Target := by
  lin_cert using case56Witness

def case57Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case57Target : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
def case57Witness : Vec 6 := fun i => ([false, false, false, true, false, false] : List Bool)[i.val]!
theorem case57 : ¬ InImage case57Matrix case57Target := by
  lin_cert using case57Witness

def case58Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case58Target : Vec 6 := fun i => ([false, false, false, false, true, false] : List Bool)[i.val]!
def case58Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case58 : InImage case58Matrix case58Target := by
  lin_cert using case58Witness

def case59Matrix : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def case59Target : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
def case59Witness : Vec 6 := fun i => ([false, false, false, false, false, true] : List Bool)[i.val]!
theorem case59 : ¬ InImage case59Matrix case59Target := by
  lin_cert using case59Witness

def case60Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case60Target : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
def case60Witness : Vec 8 := fun i => ([true, false, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case60 : ¬ InImage case60Matrix case60Target := by
  lin_cert using case60Witness

def case61Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case61Target : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
def case61Witness : Vec 8 := fun i => ([false, true, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case61 : ¬ InImage case61Matrix case61Target := by
  lin_cert using case61Witness

def case62Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case62Target : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
def case62Witness : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case62 : ¬ InImage case62Matrix case62Target := by
  lin_cert using case62Witness

def case63Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case63Target : Vec 8 := fun i => ([false, false, false, true, false, false, false, false] : List Bool)[i.val]!
def case63Witness : Vec 8 := fun i => ([false, false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case63 : ¬ InImage case63Matrix case63Target := by
  lin_cert using case63Witness

def case64Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case64Target : Vec 8 := fun i => ([false, false, false, false, true, false, false, false] : List Bool)[i.val]!
def case64Witness : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case64 : InImage case64Matrix case64Target := by
  lin_cert using case64Witness

def case65Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case65Target : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
def case65Witness : Vec 8 := fun i => ([false, false, false, false, false, true, false, false] : List Bool)[i.val]!
theorem case65 : ¬ InImage case65Matrix case65Target := by
  lin_cert using case65Witness

def case66Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case66Target : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
def case66Witness : Vec 8 := fun i => ([false, false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case66 : ¬ InImage case66Matrix case66Target := by
  lin_cert using case66Witness

def case67Matrix : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case67Target : Vec 8 := fun i => ([false, false, false, false, false, false, false, true] : List Bool)[i.val]!
def case67Witness : Vec 7 := fun i => ([true, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case67 : InImage case67Matrix case67Target := by
  lin_cert using case67Witness

def case68Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case68Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case68Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case68 : ¬ InImage case68Matrix case68Target := by
  lin_cert using case68Witness

def case69Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case69Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case69Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case69 : ¬ InImage case69Matrix case69Target := by
  lin_cert using case69Witness

def case70Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case70Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case70Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case70 : ¬ InImage case70Matrix case70Target := by
  lin_cert using case70Witness

def case71Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case71Target : Vec 7 := fun i => ([true, false, false, false, false, false, false] : List Bool)[i.val]!
def case71Witness : Vec 8 := fun i => ([false, false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case71 : InImage case71Matrix case71Target := by
  lin_cert using case71Witness

def case72Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case72Target : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
def case72Witness : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case72 : ¬ InImage case72Matrix case72Target := by
  lin_cert using case72Witness

def case73Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case73Target : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
def case73Witness : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case73 : ¬ InImage case73Matrix case73Target := by
  lin_cert using case73Witness

def case74Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case74Target : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
def case74Witness : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case74 : ¬ InImage case74Matrix case74Target := by
  lin_cert using case74Witness

def case75Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case75Target : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
def case75Witness : Vec 8 := fun i => ([false, true, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case75 : InImage case75Matrix case75Target := by
  lin_cert using case75Witness

def case76Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case76Target : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
def case76Witness : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case76 : ¬ InImage case76Matrix case76Target := by
  lin_cert using case76Witness

def case77Matrix : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case77Target : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
def case77Witness : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case77 : ¬ InImage case77Matrix case77Target := by
  lin_cert using case77Witness

def case78Matrix : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def case78Target : Vec 5 := fun i => ([true, false, false, false, false] : List Bool)[i.val]!
def case78Witness : Vec 5 := fun i => ([true, false, false, false, false] : List Bool)[i.val]!
theorem case78 : ¬ InImage case78Matrix case78Target := by
  lin_cert using case78Witness

def case79Matrix : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def case79Target : Vec 5 := fun i => ([false, true, false, false, false] : List Bool)[i.val]!
def case79Witness : Vec 5 := fun i => ([false, true, false, false, false] : List Bool)[i.val]!
theorem case79 : ¬ InImage case79Matrix case79Target := by
  lin_cert using case79Witness

def case80Matrix : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def case80Target : Vec 5 := fun i => ([false, false, true, false, false] : List Bool)[i.val]!
def case80Witness : Vec 5 := fun i => ([false, false, true, false, false] : List Bool)[i.val]!
theorem case80 : ¬ InImage case80Matrix case80Target := by
  lin_cert using case80Witness

def case81Matrix : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def case81Target : Vec 5 := fun i => ([false, false, false, true, false] : List Bool)[i.val]!
def case81Witness : Vec 5 := fun i => ([false, false, false, true, false] : List Bool)[i.val]!
theorem case81 : ¬ InImage case81Matrix case81Target := by
  lin_cert using case81Witness

def case82Matrix : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def case82Target : Vec 5 := fun i => ([false, false, false, false, true] : List Bool)[i.val]!
def case82Witness : Vec 5 := fun i => ([false, false, false, false, true] : List Bool)[i.val]!
theorem case82 : ¬ InImage case82Matrix case82Target := by
  lin_cert using case82Witness

def case83Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case83Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case83Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case83 : ¬ InImage case83Matrix case83Target := by
  lin_cert using case83Witness

def case84Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case84Target : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
def case84Witness : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case84 : ¬ InImage case84Matrix case84Target := by
  lin_cert using case84Witness

def case85Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case85Target : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case85Witness : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
theorem case85 : ¬ InImage case85Matrix case85Target := by
  lin_cert using case85Witness

def case86Matrix : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def case86Target : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
def case86Witness : Vec 4 := fun i => ([false, false, false, true] : List Bool)[i.val]!
theorem case86 : ¬ InImage case86Matrix case86Target := by
  lin_cert using case86Witness

def case87Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case87Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case87Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case87 : ¬ InImage case87Matrix case87Target := by
  lin_cert using case87Witness

def case88Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case88Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case88Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case88 : ¬ InImage case88Matrix case88Target := by
  lin_cert using case88Witness

def case89Matrix : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case89Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case89Witness : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case89 : ¬ InImage case89Matrix case89Target := by
  lin_cert using case89Witness

def case90Matrix : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case90Target : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case90Witness : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
theorem case90 : ¬ InImage case90Matrix case90Target := by
  lin_cert using case90Witness

def case91Matrix : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case91Target : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case91Witness : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case91 : ¬ InImage case91Matrix case91Target := by
  lin_cert using case91Witness

def case92Matrix : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def case92Target : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
def case92Witness : Vec 7 := fun i => ([true, false, false, false, false, false, false] : List Bool)[i.val]!
theorem case92 : InImage case92Matrix case92Target := by
  lin_cert using case92Witness

def case93Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case93Target : Vec 7 := fun i => ([true, false, false, false, false, false, false] : List Bool)[i.val]!
def case93Witness : Vec 7 := fun i => ([true, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case93 : ¬ InImage case93Matrix case93Target := by
  lin_cert using case93Witness

def case94Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case94Target : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
def case94Witness : Vec 7 := fun i => ([false, true, false, false, false, false, false] : List Bool)[i.val]!
theorem case94 : ¬ InImage case94Matrix case94Target := by
  lin_cert using case94Witness

def case95Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case95Target : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
def case95Witness : Vec 7 := fun i => ([false, false, true, false, false, false, false] : List Bool)[i.val]!
theorem case95 : ¬ InImage case95Matrix case95Target := by
  lin_cert using case95Witness

def case96Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case96Target : Vec 7 := fun i => ([false, false, false, true, false, false, false] : List Bool)[i.val]!
def case96Witness : Vec 7 := fun i => ([true, false, false, true, false, false, false] : List Bool)[i.val]!
theorem case96 : ¬ InImage case96Matrix case96Target := by
  lin_cert using case96Witness

def case97Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case97Target : Vec 7 := fun i => ([false, false, false, false, true, false, false] : List Bool)[i.val]!
def case97Witness : Vec 6 := fun i => ([true, false, false, false, false, false] : List Bool)[i.val]!
theorem case97 : InImage case97Matrix case97Target := by
  lin_cert using case97Witness

def case98Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case98Target : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
def case98Witness : Vec 7 := fun i => ([false, false, false, false, false, true, false] : List Bool)[i.val]!
theorem case98 : ¬ InImage case98Matrix case98Target := by
  lin_cert using case98Witness

def case99Matrix : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def case99Target : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
def case99Witness : Vec 7 := fun i => ([false, false, false, false, false, false, true] : List Bool)[i.val]!
theorem case99 : ¬ InImage case99Matrix case99Target := by
  lin_cert using case99Witness

def case100Matrix : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def case100Target : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
def case100Witness : Vec 4 := fun i => ([true, false, false, false] : List Bool)[i.val]!
theorem case100 : ¬ InImage case100Matrix case100Target := by
  lin_cert using case100Witness

end LinearCertificates.Release4
