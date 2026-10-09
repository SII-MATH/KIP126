import LinProgramCertificates.KervaireTactic

namespace KervaireProgram

/-! 最小可执行示例：空微分表中，类 7 在第 6 页前没有入射微分。 -/
def emptyData : AdamsData :=
  { object := "S0"
    classes := [⟨7, "example class", ⟨2, 7⟩⟩]
    differentials := [] }

def noHitCertificate : Evidence := .incoming []

example : ResultValid emptyData (.notHit 7 2 5) := by
  kervaire_cert using noHitCertificate

def imported : Bundle := kervaire_bundle% "examples/finite_sample.json"

example : checkBundle imported = true := by decide

example : ResultValid imported.data (.permanent 9) := by
  kervaire_cert using Evidence.permanent []

example : ResultValid imported.data (.differential ⟨3, 8, 7⟩) := by
  kervaire_cert using Evidence.differential ⟨3, 8, 7⟩

example : ResultValid imported.data (.uniqueSurvivor [7, 9] 9) := by
  kervaire_cert using Evidence.unique [7]

example : ResultValid imported.data (.ruledOut 4 1 2) := by
  kervaire_cert using Evidence.count 1 2

example : checkResult imported.data (.notHit 7 2 5) (.incoming []) = false := by decide
example : checkResult imported.data (.permanent 999) (.permanent []) = false := by decide
example : checkResult imported.data (.survives 8 6) (.incoming []) = false := by decide
example : checkResult imported.data (.ruledOut 4 2 2) (.count 2 2) = false := by decide
example : checkResult imported.data (.notHit 9 0 1) (.incoming []) = false := by decide
example : dataWellFormed { imported.data with
    differentials := [⟨2, 8, 7⟩] } = false := by decide
example : dataWellFormed { imported.data with
    classes := imported.data.classes ++ imported.data.classes } = false := by decide

#print axioms checkResult_sound
#print axioms check_sound
#print axioms checkBundle_sound
#print axioms importLine_sound
#print axioms dataWellFormed_sound
#print axioms differentialWellFormed_sound

end KervaireProgram
