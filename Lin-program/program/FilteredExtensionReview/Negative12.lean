import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative12_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_0.json"
theorem negative12_0_checked : FilteredExtensionCertificates.checkWire negative12_0 = .ok false := by decide
#print axioms negative12_0_checked

def negative12_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_1.json"
theorem negative12_1_checked : FilteredExtensionCertificates.checkWire negative12_1 = .ok false := by decide
#print axioms negative12_1_checked

def negative12_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_2.json"
theorem negative12_2_checked : FilteredExtensionCertificates.checkWire negative12_2 = .ok false := by decide
#print axioms negative12_2_checked

def negative12_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_3.json"
theorem negative12_3_checked : FilteredExtensionCertificates.checkWire negative12_3 = .ok false := by decide
#print axioms negative12_3_checked

def negative12_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_4.json"
theorem negative12_4_checked : FilteredExtensionCertificates.checkWire negative12_4 = .ok false := by decide
#print axioms negative12_4_checked

def negative12_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_5.json"
theorem negative12_5_checked : FilteredExtensionCertificates.checkWire negative12_5 = .ok false := by decide
#print axioms negative12_5_checked

def negative12_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_6.json"
theorem negative12_6_checked : FilteredExtensionCertificates.checkWire negative12_6 = .ok false := by decide
#print axioms negative12_6_checked

def negative12_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative12_7.json"
theorem negative12_7_checked : FilteredExtensionCertificates.checkWire negative12_7 = .ok false := by decide
#print axioms negative12_7_checked

def negative12 := [negative12_0, negative12_1, negative12_2, negative12_3, negative12_4, negative12_5, negative12_6, negative12_7]

theorem negative12_count : negative12.length = 8 := by decide

theorem negative12_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative12 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative12, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative12_0_checked
  · subst w; exact negative12_1_checked
  · subst w; exact negative12_2_checked
  · subst w; exact negative12_3_checked
  · subst w; exact negative12_4_checked
  · subst w; exact negative12_5_checked
  · subst w; exact negative12_6_checked
  · subst w; exact negative12_7_checked

#print axioms negative12_count
#print axioms negative12_rejected
end FilteredExtensionReview
