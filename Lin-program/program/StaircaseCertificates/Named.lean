import StaircaseCertificates.Import
namespace StaircaseCertificates.Named
open LinearCertificates LinProgramCertificates
-- fact-7.6-1 s=8 t=134
def case0Basis : BasisCertificate 6 :=
  ⟨fun i j => ([false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!,
   fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!⟩
def case0Input : Vec 6 := fun i => ([true, false, false, true, false, false] : List Bool)[i.val]!
def case0Coordinates : Vec 6 := fun i => ([false, false, true, false, false, false] : List Bool)[i.val]!
theorem case0Invertible : IsBasis case0Basis := by lin_cert using ()
theorem case0CoordinatesCorrect : ∀ i, eval case0Basis.inverse case0Input i = case0Coordinates i := by decide
-- fact-7.6-2 s=14 t=139
def case1Basis : BasisCertificate 3 :=
  ⟨fun i j => ([false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!,
   fun i j => ([false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!⟩
def case1Input : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
def case1Coordinates : Vec 3 := fun i => ([false, true, false] : List Bool)[i.val]!
theorem case1Invertible : IsBasis case1Basis := by lin_cert using ()
theorem case1CoordinatesCorrect : ∀ i, eval case1Basis.inverse case1Input i = case1Coordinates i := by decide
-- fact-7.6-3 s=10 t=134
def case2Basis : BasisCertificate 5 :=
  ⟨fun i j => ([false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, true, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!,
   fun i j => ([false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, true, true, false, true, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!⟩
def case2Input : Vec 5 := fun i => ([false, false, false, false, true] : List Bool)[i.val]!
def case2Coordinates : Vec 5 := fun i => ([false, false, false, true, false] : List Bool)[i.val]!
theorem case2Invertible : IsBasis case2Basis := by lin_cert using ()
theorem case2CoordinatesCorrect : ∀ i, eval case2Basis.inverse case2Input i = case2Coordinates i := by decide
-- fact-7.6-4 s=25 t=150
def case3Basis : BasisCertificate 4 :=
  ⟨fun i j => ([false, false, true, false, false, false, true, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!,
   fun i j => ([false, false, false, true, false, false, true, false, true, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!⟩
def case3Input : Vec 4 := fun i => ([false, false, true, false] : List Bool)[i.val]!
def case3Coordinates : Vec 4 := fun i => ([false, true, false, false] : List Bool)[i.val]!
theorem case3Invertible : IsBasis case3Basis := by lin_cert using ()
theorem case3CoordinatesCorrect : ∀ i, eval case3Basis.inverse case3Input i = case3Coordinates i := by decide
-- remark-7.7 s=6 t=132
def case4Basis : BasisCertificate 2 :=
  ⟨fun i j => ([false, true, true, false] : List Bool)[i.val * 2 + j.val]!,
   fun i j => ([false, true, true, false] : List Bool)[i.val * 2 + j.val]!⟩
def case4Input : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
def case4Coordinates : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case4Invertible : IsBasis case4Basis := by lin_cert using ()
theorem case4CoordinatesCorrect : ∀ i, eval case4Basis.inverse case4Input i = case4Coordinates i := by decide
-- fact-7.13-survivor s=9 t=132
def case5Basis : BasisCertificate 2 :=
  ⟨fun i j => ([true, false, true, true] : List Bool)[i.val * 2 + j.val]!,
   fun i j => ([true, false, true, true] : List Bool)[i.val * 2 + j.val]!⟩
def case5Input : Vec 2 := fun i => ([true, true] : List Bool)[i.val]!
def case5Coordinates : Vec 2 := fun i => ([true, false] : List Bool)[i.val]!
theorem case5Invertible : IsBasis case5Basis := by lin_cert using ()
theorem case5CoordinatesCorrect : ∀ i, eval case5Basis.inverse case5Input i = case5Coordinates i := by decide
-- fact-7.13-source s=8 t=133
def case6Basis : BasisCertificate 2 :=
  ⟨fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!,
   fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!⟩
def case6Input : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case6Coordinates : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case6Invertible : IsBasis case6Basis := by lin_cert using ()
theorem case6CoordinatesCorrect : ∀ i, eval case6Basis.inverse case6Input i = case6Coordinates i := by decide
-- fact-7.13-target s=10 t=134
def case7Basis : BasisCertificate 5 :=
  ⟨fun i j => ([false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, true, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!,
   fun i j => ([false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, true, true, false, true, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!⟩
def case7Input : Vec 5 := fun i => ([false, false, true, false, true] : List Bool)[i.val]!
def case7Coordinates : Vec 5 := fun i => ([true, false, false, false, false] : List Bool)[i.val]!
theorem case7Invertible : IsBasis case7Basis := by lin_cert using ()
theorem case7CoordinatesCorrect : ∀ i, eval case7Basis.inverse case7Input i = case7Coordinates i := by decide
-- remark-7.7-target1 s=9 t=134
def case8Basis : BasisCertificate 5 :=
  ⟨fun i j => ([false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!,
   fun i j => ([false, false, true, false, false, false, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!⟩
def case8Input : Vec 5 := fun i => ([false, false, false, true, false] : List Bool)[i.val]!
def case8Coordinates : Vec 5 := fun i => ([false, true, false, false, false] : List Bool)[i.val]!
theorem case8Invertible : IsBasis case8Basis := by lin_cert using ()
theorem case8CoordinatesCorrect : ∀ i, eval case8Basis.inverse case8Input i = case8Coordinates i := by decide
-- remark-7.7-possible s=9 t=134
def case9Basis : BasisCertificate 5 :=
  ⟨fun i j => ([false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!,
   fun i j => ([false, false, true, false, false, false, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!⟩
def case9Input : Vec 5 := fun i => ([false, false, true, false, false] : List Bool)[i.val]!
def case9Coordinates : Vec 5 := fun i => ([true, false, false, false, false] : List Bool)[i.val]!
theorem case9Invertible : IsBasis case9Basis := by lin_cert using ()
theorem case9CoordinatesCorrect : ∀ i, eval case9Basis.inverse case9Input i = case9Coordinates i := by decide
-- fact-7.15 s=11 t=136
def case10Basis : BasisCertificate 5 :=
  ⟨fun i j => ([false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!,
   fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!⟩
def case10Input : Vec 5 := fun i => ([false, false, false, true, false] : List Bool)[i.val]!
def case10Coordinates : Vec 5 := fun i => ([false, false, true, false, false] : List Bool)[i.val]!
theorem case10Invertible : IsBasis case10Basis := by lin_cert using ()
theorem case10CoordinatesCorrect : ∀ i, eval case10Basis.inverse case10Input i = case10Coordinates i := by decide
-- fact-7.19 s=8 t=130
def case11Basis : BasisCertificate 1 :=
  ⟨fun i j => ([true] : List Bool)[i.val * 1 + j.val]!,
   fun i j => ([true] : List Bool)[i.val * 1 + j.val]!⟩
def case11Input : Vec 1 := fun i => ([true] : List Bool)[i.val]!
def case11Coordinates : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem case11Invertible : IsBasis case11Basis := by lin_cert using ()
theorem case11CoordinatesCorrect : ∀ i, eval case11Basis.inverse case11Input i = case11Coordinates i := by decide
-- fact-7.21-first s=11 t=133
def case12Basis : BasisCertificate 2 :=
  ⟨fun i j => ([true, false, true, true] : List Bool)[i.val * 2 + j.val]!,
   fun i j => ([true, false, true, true] : List Bool)[i.val * 2 + j.val]!⟩
def case12Input : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def case12Coordinates : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
theorem case12Invertible : IsBasis case12Basis := by lin_cert using ()
theorem case12CoordinatesCorrect : ∀ i, eval case12Basis.inverse case12Input i = case12Coordinates i := by decide
-- fact-7.21-second s=12 t=134
def case13Basis : BasisCertificate 3 :=
  ⟨fun i j => ([false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!,
   fun i j => ([false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!⟩
def case13Input : Vec 3 := fun i => ([true, false, false] : List Bool)[i.val]!
def case13Coordinates : Vec 3 := fun i => ([false, false, true] : List Bool)[i.val]!
theorem case13Invertible : IsBasis case13Basis := by lin_cert using ()
theorem case13CoordinatesCorrect : ∀ i, eval case13Basis.inverse case13Input i = case13Coordinates i := by decide
end StaircaseCertificates.Named
