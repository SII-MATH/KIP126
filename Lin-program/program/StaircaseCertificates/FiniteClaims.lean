import StaircaseCertificates.Named
import StaircaseCertificates.Survival
namespace StaircaseCertificates.Named
open LinearCertificates LinProgramCertificates
def case0Filtered : FilteredModel 6 :=
  ⟨case0Basis,
   fun page i => decide (([2, 9983, 9994, 9997, 9997, 9998] : List Nat)[i.val]! ≤ 10000 - page),
   fun page i => decide (([2, 9983, 9994, 9997, 9997, 9998] : List Nat)[i.val]! < page)⟩
theorem case0FiniteFilteredSurvival : SurvivesThrough case0Filtered 2 6 case0Input := by
  lin_cert using (⟨2, by decide⟩ : Fin 6)
def case5Filtered : FilteredModel 2 :=
  ⟨case5Basis,
   fun page i => decide (([9988, 9997] : List Nat)[i.val]! ≤ 10000 - page),
   fun page i => decide (([9988, 9997] : List Nat)[i.val]! < page)⟩
theorem case5FiniteFilteredSurvival : SurvivesThrough case5Filtered 2 12 case5Input := by
  lin_cert using (⟨0, by decide⟩ : Fin 2)
def case10Filtered : FilteredModel 5 :=
  ⟨case10Basis,
   fun page i => decide (([3, 3, 9995, 9996, 9998] : List Nat)[i.val]! ≤ 10000 - page),
   fun page i => decide (([3, 3, 9995, 9996, 9998] : List Nat)[i.val]! < page)⟩
theorem case10FiniteFilteredSurvival : SurvivesThrough case10Filtered 2 5 case10Input := by
  lin_cert using (⟨2, by decide⟩ : Fin 5)
def case11Filtered : FilteredModel 1 :=
  ⟨case11Basis,
   fun page i => decide (([9994] : List Nat)[i.val]! ≤ 10000 - page),
   fun page i => decide (([9994] : List Nat)[i.val]! < page)⟩
theorem case11FiniteFilteredSurvival : SurvivesThrough case11Filtered 2 6 case11Input := by
  lin_cert using (⟨0, by decide⟩ : Fin 1)
end StaircaseCertificates.Named
