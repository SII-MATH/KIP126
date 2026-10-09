import FilteredSquarePageBridge.Import
import FiniteFilteredSquareCertificates.Examples
import FiniteFilteredSquareProducer.Imported

namespace FilteredSquarePageBridge.Examples
open FiniteFilteredSquareCertificates
open FiniteFilteredSquareCertificates.Examples

/-- The complete mathematical input is independent of certificate decoding. -/
theorem nonzero_requested : FilteredSquarePageBridge.ResultValid nonzeroInput := by
  filtered_square_page_cert using nonzeroCertificate

theorem nonzero_diagnostic : FilteredSquarePageBridge.ResultValid nonzeroInput := by
  filtered_square_page_diagnose using nonzeroCertificate

theorem corrected_requested : FilteredSquarePageBridge.ResultValid correctedInput := by
  filtered_square_page_cert using correctedCertificate

theorem raw_fourth_still_not_cycle :
    RepresentativeSquareCertificates.hom correctedInput.q
      (⟨correctedInput.y⟩ : RepresentativeSquareCertificates.Vector correctedInput.b) ∉
      RepresentativeSquareCertificates.higher
        (correctedInput.E (correctedInput.s+correctedInput.m+correctedInput.l)) :=
  original_fourth_input_not_cycle

theorem all_863_page_events : ∀ w ∈ FiniteFilteredSquareProducer.allWires,
    FilteredSquarePageBridge.WireValid w :=
  of_batch_valid FiniteFilteredSquareProducer.allWires FiniteFilteredSquareProducer.all_valid

theorem batch_count : FiniteFilteredSquareProducer.allWires.length = 863 :=
  FiniteFilteredSquareProducer.batch_count

theorem branch_f_event : FilteredSquarePageBridge.WireValid FiniteFilteredSquareProducer.nonzero_f :=
  of_wire_valid _ FiniteFilteredSquareProducer.nonzero_f_valid

theorem branch_p_event : FilteredSquarePageBridge.WireValid FiniteFilteredSquareProducer.nonzero_p :=
  of_wire_valid _ FiniteFilteredSquareProducer.nonzero_p_valid

theorem empty_event : FilteredSquarePageBridge.WireValid FiniteFilteredSquareProducer.empty :=
  of_wire_valid _ FiniteFilteredSquareProducer.empty_valid

#guard FiniteFilteredSquareCertificates.check tamperedOutput tamperedCertificate = false
#guard FiniteFilteredSquareCertificates.check nonzeroInput badDescent = false
#guard FiniteFilteredSquareCertificates.check badLength badLengthCertificate = false

#print axioms nonzero_requested
#print axioms nonzero_diagnostic
#print axioms corrected_requested
#print axioms raw_fourth_still_not_cycle
#print axioms all_863_page_events
#print axioms batch_count
#print axioms branch_f_event
#print axioms branch_p_event
#print axioms empty_event
end FilteredSquarePageBridge.Examples
