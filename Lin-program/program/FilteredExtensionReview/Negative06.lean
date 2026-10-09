import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative06_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_0.json"
theorem negative06_0_checked : FilteredExtensionCertificates.checkWire negative06_0 = .ok false := by decide
#print axioms negative06_0_checked

def negative06_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_1.json"
theorem negative06_1_checked : FilteredExtensionCertificates.checkWire negative06_1 = .ok false := by decide
#print axioms negative06_1_checked

def negative06_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_2.json"
theorem negative06_2_checked : FilteredExtensionCertificates.checkWire negative06_2 = .ok false := by decide
#print axioms negative06_2_checked

def negative06_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_3.json"
theorem negative06_3_checked : FilteredExtensionCertificates.checkWire negative06_3 = .ok false := by decide
#print axioms negative06_3_checked

def negative06_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_4.json"
theorem negative06_4_checked : FilteredExtensionCertificates.checkWire negative06_4 = .ok false := by decide
#print axioms negative06_4_checked

def negative06_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_5.json"
theorem negative06_5_checked : FilteredExtensionCertificates.checkWire negative06_5 = .ok false := by decide
#print axioms negative06_5_checked

def negative06_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_6.json"
theorem negative06_6_checked : FilteredExtensionCertificates.checkWire negative06_6 = .ok false := by decide
#print axioms negative06_6_checked

def negative06_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative06_7.json"
theorem negative06_7_checked : FilteredExtensionCertificates.checkWire negative06_7 = .ok false := by decide
#print axioms negative06_7_checked

def negative06 := [negative06_0, negative06_1, negative06_2, negative06_3, negative06_4, negative06_5, negative06_6, negative06_7]

theorem negative06_count : negative06.length = 8 := by decide

theorem negative06_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative06 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative06, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative06_0_checked
  · subst w; exact negative06_1_checked
  · subst w; exact negative06_2_checked
  · subst w; exact negative06_3_checked
  · subst w; exact negative06_4_checked
  · subst w; exact negative06_5_checked
  · subst w; exact negative06_6_checked
  · subst w; exact negative06_7_checked

#print axioms negative06_count
#print axioms negative06_rejected
end FilteredExtensionReview
