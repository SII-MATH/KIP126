import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative09_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_0.json"
theorem negative09_0_checked : FilteredExtensionCertificates.checkWire negative09_0 = .ok false := by decide
#print axioms negative09_0_checked

def negative09_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_1.json"
theorem negative09_1_checked : FilteredExtensionCertificates.checkWire negative09_1 = .ok false := by decide
#print axioms negative09_1_checked

def negative09_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_2.json"
theorem negative09_2_checked : FilteredExtensionCertificates.checkWire negative09_2 = .ok false := by decide
#print axioms negative09_2_checked

def negative09_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_3.json"
theorem negative09_3_checked : FilteredExtensionCertificates.checkWire negative09_3 = .ok false := by decide
#print axioms negative09_3_checked

def negative09_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_4.json"
theorem negative09_4_checked : FilteredExtensionCertificates.checkWire negative09_4 = .ok false := by decide
#print axioms negative09_4_checked

def negative09_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_5.json"
theorem negative09_5_checked : FilteredExtensionCertificates.checkWire negative09_5 = .ok false := by decide
#print axioms negative09_5_checked

def negative09_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_6.json"
theorem negative09_6_checked : FilteredExtensionCertificates.checkWire negative09_6 = .ok false := by decide
#print axioms negative09_6_checked

def negative09_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative09_7.json"
theorem negative09_7_checked : FilteredExtensionCertificates.checkWire negative09_7 = .ok false := by decide
#print axioms negative09_7_checked

def negative09 := [negative09_0, negative09_1, negative09_2, negative09_3, negative09_4, negative09_5, negative09_6, negative09_7]

theorem negative09_count : negative09.length = 8 := by decide

theorem negative09_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative09 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative09, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative09_0_checked
  · subst w; exact negative09_1_checked
  · subst w; exact negative09_2_checked
  · subst w; exact negative09_3_checked
  · subst w; exact negative09_4_checked
  · subst w; exact negative09_5_checked
  · subst w; exact negative09_6_checked
  · subst w; exact negative09_7_checked

#print axioms negative09_count
#print axioms negative09_rejected
end FilteredExtensionReview
