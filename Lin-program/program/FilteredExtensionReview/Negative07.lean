import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative07_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_0.json"
theorem negative07_0_checked : FilteredExtensionCertificates.checkWire negative07_0 = .ok false := by decide
#print axioms negative07_0_checked

def negative07_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_1.json"
theorem negative07_1_checked : FilteredExtensionCertificates.checkWire negative07_1 = .ok false := by decide
#print axioms negative07_1_checked

def negative07_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_2.json"
theorem negative07_2_checked : FilteredExtensionCertificates.checkWire negative07_2 = .ok false := by decide
#print axioms negative07_2_checked

def negative07_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_3.json"
theorem negative07_3_checked : FilteredExtensionCertificates.checkWire negative07_3 = .ok false := by decide
#print axioms negative07_3_checked

def negative07_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_4.json"
theorem negative07_4_checked : FilteredExtensionCertificates.checkWire negative07_4 = .ok false := by decide
#print axioms negative07_4_checked

def negative07_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_5.json"
theorem negative07_5_checked : FilteredExtensionCertificates.checkWire negative07_5 = .ok false := by decide
#print axioms negative07_5_checked

def negative07_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_6.json"
theorem negative07_6_checked : FilteredExtensionCertificates.checkWire negative07_6 = .ok false := by decide
#print axioms negative07_6_checked

def negative07_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative07_7.json"
theorem negative07_7_checked : FilteredExtensionCertificates.checkWire negative07_7 = .ok false := by decide
#print axioms negative07_7_checked

def negative07 := [negative07_0, negative07_1, negative07_2, negative07_3, negative07_4, negative07_5, negative07_6, negative07_7]

theorem negative07_count : negative07.length = 8 := by decide

theorem negative07_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative07 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative07, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative07_0_checked
  · subst w; exact negative07_1_checked
  · subst w; exact negative07_2_checked
  · subst w; exact negative07_3_checked
  · subst w; exact negative07_4_checked
  · subst w; exact negative07_5_checked
  · subst w; exact negative07_6_checked
  · subst w; exact negative07_7_checked

#print axioms negative07_count
#print axioms negative07_rejected
end FilteredExtensionReview
