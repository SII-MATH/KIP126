import Stem125HomologyCertificates.Meaning
import Stem125HomologyCertificates.D2

namespace Stem125HomologyCertificates.MeaningExamples
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

theorem coordinate_whole_meaning (w : WireComparison) :
    WholeMeaning (coordinatePage w) add where
  toCompleteMeaning := coordinatePage_meaning w
  current_surjective := fun x => ⟨x, rfl⟩
  current_add := fun _ _ => rfl

/-- This is a conditional result about arbitrary actual pages. The premise
must be proved for those pages; the SQL snapshot does not supply it. -/
theorem stem125_actual_card
    (p : (i : Fin 45) → PageData (D2.wires i))
    (plus : (i : Fin 45) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) :
    Nat.card (ActualTotalHomology p plus) = 2 ^ 44 :=
  actual_total_card D2.wires p plus meaning D2.all_complete D2.coordinate_count

theorem stem125_actual_next_card
    (p : (i : Fin 45) → PageData (D2.wires i))
    (plus : (i : Fin 45) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) :
    Nat.card ((i : Fin 45) → (p i).Next) = 2 ^ 44 :=
  actual_next_total_card D2.wires p plus meaning D2.all_complete D2.coordinate_count

/-- A genuine model of the conditions, with no actual-Adams claim. -/
theorem coordinate_model_card :
    Nat.card (ActualTotalHomology (fun i => coordinatePage (D2.wires i)) (fun _ => add)) =
      2 ^ 44 :=
  stem125_actual_card _ _ (fun i => coordinate_whole_meaning (D2.wires i))

theorem semantic_tactic_example
    (p : (i : Fin 45) → PageData (D2.wires i))
    (plus : (i : Fin 45) → (p i).Current → (p i).Current → (p i).Current)
    (meaning : ∀ i, WholeMeaning (p i) (plus i)) :
    Nat.card (ActualTotalHomology p plus) = 2 ^ 44 := by
  actual_stem_homology_cert using (⟨meaning⟩ : ActualTotalCertificate p plus)

#print axioms stem125_actual_card
#print axioms stem125_actual_next_card
#print axioms coordinate_model_card
#print axioms semantic_tactic_example
end Stem125HomologyCertificates.MeaningExamples
