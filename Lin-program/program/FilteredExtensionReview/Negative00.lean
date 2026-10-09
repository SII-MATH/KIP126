import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative00_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_0.json"
theorem negative00_0_checked : FilteredExtensionCertificates.checkWire negative00_0 = .ok false := by decide
#print axioms negative00_0_checked

def negative00_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_1.json"
theorem negative00_1_checked : FilteredExtensionCertificates.checkWire negative00_1 = .ok false := by decide
#print axioms negative00_1_checked

def negative00_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_2.json"
theorem negative00_2_checked : FilteredExtensionCertificates.checkWire negative00_2 = .ok false := by decide
#print axioms negative00_2_checked

def negative00_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_3.json"
theorem negative00_3_checked : FilteredExtensionCertificates.checkWire negative00_3 = .ok false := by decide
#print axioms negative00_3_checked

def negative00_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_4.json"
theorem negative00_4_checked : FilteredExtensionCertificates.checkWire negative00_4 = .ok false := by decide
#print axioms negative00_4_checked

def negative00_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_5.json"
theorem negative00_5_checked : FilteredExtensionCertificates.checkWire negative00_5 = .ok false := by decide
#print axioms negative00_5_checked

def negative00_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_6.json"
theorem negative00_6_checked : FilteredExtensionCertificates.checkWire negative00_6 = .ok false := by decide
#print axioms negative00_6_checked

def negative00_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative00_7.json"
theorem negative00_7_checked : FilteredExtensionCertificates.checkWire negative00_7 = .ok false := by decide
#print axioms negative00_7_checked

def negative00 := [negative00_0, negative00_1, negative00_2, negative00_3, negative00_4, negative00_5, negative00_6, negative00_7]

theorem negative00_count : negative00.length = 8 := by decide

theorem negative00_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative00 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative00, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative00_0_checked
  · subst w; exact negative00_1_checked
  · subst w; exact negative00_2_checked
  · subst w; exact negative00_3_checked
  · subst w; exact negative00_4_checked
  · subst w; exact negative00_5_checked
  · subst w; exact negative00_6_checked
  · subst w; exact negative00_7_checked

#print axioms negative00_count
#print axioms negative00_rejected
end FilteredExtensionReview
