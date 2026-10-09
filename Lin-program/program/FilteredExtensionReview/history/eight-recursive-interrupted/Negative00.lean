import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative00 : List FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extensions% "FilteredExtensionReview/negative00.jsonl"

theorem negative00_count : negative00.length = 8 := by decide
#print axioms negative00_count

theorem negative00_checked :
    negative00.all (fun w => decide (FilteredExtensionCertificates.checkWire w = .ok false)) = true := by decide

theorem negative00_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : List.Mem w negative00) : FilteredExtensionCertificates.checkWire w = .ok false := by
  exact of_decide_eq_true (List.all_eq_true.mp negative00_checked w hw)

#print axioms negative00_checked
#print axioms negative00_rejected
end FilteredExtensionReview
