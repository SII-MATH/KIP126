import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative03_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_0.json"
theorem negative03_0_checked : FilteredExtensionCertificates.checkWire negative03_0 = .ok false := by decide
#print axioms negative03_0_checked

def negative03_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_1.json"
theorem negative03_1_checked : FilteredExtensionCertificates.checkWire negative03_1 = .ok false := by decide
#print axioms negative03_1_checked

def negative03_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_2.json"
theorem negative03_2_checked : FilteredExtensionCertificates.checkWire negative03_2 = .ok false := by decide
#print axioms negative03_2_checked

def negative03_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_3.json"
theorem negative03_3_checked : FilteredExtensionCertificates.checkWire negative03_3 = .ok false := by decide
#print axioms negative03_3_checked

def negative03_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_4.json"
theorem negative03_4_checked : FilteredExtensionCertificates.checkWire negative03_4 = .ok false := by decide
#print axioms negative03_4_checked

def negative03_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_5.json"
theorem negative03_5_checked : FilteredExtensionCertificates.checkWire negative03_5 = .ok false := by decide
#print axioms negative03_5_checked

def negative03_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_6.json"
theorem negative03_6_checked : FilteredExtensionCertificates.checkWire negative03_6 = .ok false := by decide
#print axioms negative03_6_checked

def negative03_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative03_7.json"
theorem negative03_7_checked : FilteredExtensionCertificates.checkWire negative03_7 = .ok false := by decide
#print axioms negative03_7_checked

def negative03 := [negative03_0, negative03_1, negative03_2, negative03_3, negative03_4, negative03_5, negative03_6, negative03_7]

theorem negative03_count : negative03.length = 8 := by decide

theorem negative03_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative03 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative03, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative03_0_checked
  · subst w; exact negative03_1_checked
  · subst w; exact negative03_2_checked
  · subst w; exact negative03_3_checked
  · subst w; exact negative03_4_checked
  · subst w; exact negative03_5_checked
  · subst w; exact negative03_6_checked
  · subst w; exact negative03_7_checked

#print axioms negative03_count
#print axioms negative03_rejected
end FilteredExtensionReview
