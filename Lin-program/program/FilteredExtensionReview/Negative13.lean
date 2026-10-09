import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative13_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_0.json"
theorem negative13_0_checked : FilteredExtensionCertificates.checkWire negative13_0 = .ok false := by decide
#print axioms negative13_0_checked

def negative13_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_1.json"
theorem negative13_1_checked : FilteredExtensionCertificates.checkWire negative13_1 = .ok false := by decide
#print axioms negative13_1_checked

def negative13_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_2.json"
theorem negative13_2_checked : FilteredExtensionCertificates.checkWire negative13_2 = .ok false := by decide
#print axioms negative13_2_checked

def negative13_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_3.json"
theorem negative13_3_checked : FilteredExtensionCertificates.checkWire negative13_3 = .ok false := by decide
#print axioms negative13_3_checked

def negative13_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_4.json"
theorem negative13_4_checked : FilteredExtensionCertificates.checkWire negative13_4 = .ok false := by decide
#print axioms negative13_4_checked

def negative13_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_5.json"
theorem negative13_5_checked : FilteredExtensionCertificates.checkWire negative13_5 = .ok false := by decide
#print axioms negative13_5_checked

def negative13_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_6.json"
theorem negative13_6_checked : FilteredExtensionCertificates.checkWire negative13_6 = .ok false := by decide
#print axioms negative13_6_checked

def negative13_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative13_7.json"
theorem negative13_7_checked : FilteredExtensionCertificates.checkWire negative13_7 = .ok false := by decide
#print axioms negative13_7_checked

def negative13 := [negative13_0, negative13_1, negative13_2, negative13_3, negative13_4, negative13_5, negative13_6, negative13_7]

theorem negative13_count : negative13.length = 8 := by decide

theorem negative13_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative13 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative13, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative13_0_checked
  · subst w; exact negative13_1_checked
  · subst w; exact negative13_2_checked
  · subst w; exact negative13_3_checked
  · subst w; exact negative13_4_checked
  · subst w; exact negative13_5_checked
  · subst w; exact negative13_6_checked
  · subst w; exact negative13_7_checked

#print axioms negative13_count
#print axioms negative13_rejected
end FilteredExtensionReview
