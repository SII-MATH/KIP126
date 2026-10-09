import FilteredCrossingCertificateCompleteness.Basic
import FilteredExtensionCertificateCompleteness.Search
import FilteredExtensionCertificateCompleteness.Examples

namespace FilteredCrossingCertificateCompleteness
open LinearCertificates FilteredExtensionCertificates FilteredExtensionCertificateCompleteness

def allCertificates (D : Data) : List (FilteredCrossingCertificates.Certificate D) := do
  let extension ← FilteredExtensionCertificateCompleteness.allCertificates D
  let factor ← allMatrices D.hb D.ha
  pure ⟨extension,factor⟩

theorem mem_allCertificates (D : Data) (cert : FilteredCrossingCertificates.Certificate D) :
    cert ∈ allCertificates D := by
  cases cert with
  | mk extension factor =>
    simp only [allCertificates,List.bind_eq_flatMap,List.pure_def,List.mem_flatMap,List.mem_singleton]
    exact ⟨extension,FilteredExtensionCertificateCompleteness.mem_allCertificates D extension,
      factor,mem_allMatrices factor,rfl⟩

/-- Exponential reference search reuses the complete extension enumeration. -/
def search (D : Data) : Option (FilteredCrossingCertificates.Certificate D) :=
  (allCertificates D).find? (FilteredCrossingCertificates.check D)

theorem search_accepted (D : Data) (cert : FilteredCrossingCertificates.Certificate D)
    (found : search D = some cert) : FilteredCrossingCertificates.check D cert = true :=
  List.find?_some found

theorem search_sound (D : Data) (cert : FilteredCrossingCertificates.Certificate D)
    (found : search D = some cert) : FilteredCrossingCertificates.ResultValid D :=
  FilteredCrossingCertificates.check_sound D cert (search_accepted D cert found)

theorem search_none_iff (D : Data) : search D = none ↔ ¬ FilteredCrossingCertificates.ResultValid D := by
  constructor
  · intro absent valid
    obtain ⟨cert,accepted⟩ := check_complete D valid
    exact (List.find?_eq_none.mp absent) cert (mem_allCertificates D cert) accepted
  · intro invalid
    apply List.find?_eq_none.mpr
    intro cert _ accepted
    exact invalid (FilteredCrossingCertificates.check_sound D cert accepted)

theorem search_some_iff (D : Data) :
    (∃ cert, search D = some cert) ↔ FilteredCrossingCertificates.ResultValid D := by
  constructor
  · rintro ⟨cert,found⟩
    exact search_sound D cert found
  · intro valid
    cases found : search D with
    | none => exact False.elim ((search_none_iff D).mp found valid)
    | some cert => exact ⟨cert,rfl⟩

def searchCheck (D : Data) : Bool := (search D).isSome

theorem searchCheck_sound (D : Data) (accepted : searchCheck D = true) :
    FilteredCrossingCertificates.ResultValid D := by
  cases found : search D with
  | none => simp [searchCheck,found] at accepted
  | some cert => exact search_sound D cert found

macro "filtered_stable_search" : tactic => `(tactic|
  exact FilteredCrossingCertificateCompleteness.searchCheck_sound _ (by decide +kernel))

namespace Examples
open FilteredExtensionCertificateCompleteness.Examples

theorem empty_stable : FilteredCrossingCertificates.ResultValid empty := by filtered_stable_search
theorem identity_stable : FilteredCrossingCertificates.ResultValid identity := by filtered_stable_search

/-- A valid corrected quotient equation alone does not force every higher
source representative to have the same target. -/
theorem corrected_not_stable : ¬ FilteredCrossingCertificates.ResultValid corrected := by
  apply (search_none_iff corrected).mp
  decide +kernel

theorem extension_is_strictly_weaker :
    ResultValid corrected ∧ ¬ FilteredCrossingCertificates.ResultValid corrected :=
  ⟨corrected_valid,corrected_not_stable⟩
end Examples

#print axioms mem_allCertificates
#print axioms search_none_iff
#print axioms search_some_iff
#print axioms searchCheck_sound
#print axioms Examples.empty_stable
#print axioms Examples.identity_stable
#print axioms Examples.extension_is_strictly_weaker
end FilteredCrossingCertificateCompleteness
