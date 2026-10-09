import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative10_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_0.json"
theorem negative10_0_checked : FilteredExtensionCertificates.checkWire negative10_0 = .ok false := by decide
#print axioms negative10_0_checked

def negative10_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_1.json"
theorem negative10_1_checked : FilteredExtensionCertificates.checkWire negative10_1 = .ok false := by decide
#print axioms negative10_1_checked

def negative10_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_2.json"
theorem negative10_2_checked : FilteredExtensionCertificates.checkWire negative10_2 = .ok false := by decide
#print axioms negative10_2_checked

def negative10_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_3.json"
theorem negative10_3_checked : FilteredExtensionCertificates.checkWire negative10_3 = .ok false := by decide
#print axioms negative10_3_checked

def negative10_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_4.json"
theorem negative10_4_checked : FilteredExtensionCertificates.checkWire negative10_4 = .ok false := by decide
#print axioms negative10_4_checked

def negative10_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_5.json"
theorem negative10_5_checked : FilteredExtensionCertificates.checkWire negative10_5 = .ok false := by decide
#print axioms negative10_5_checked

def negative10_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_6.json"
theorem negative10_6_checked : FilteredExtensionCertificates.checkWire negative10_6 = .ok false := by decide
#print axioms negative10_6_checked

def negative10_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative10_7.json"
theorem negative10_7_checked : FilteredExtensionCertificates.checkWire negative10_7 = .ok false := by decide
#print axioms negative10_7_checked

def negative10 := [negative10_0, negative10_1, negative10_2, negative10_3, negative10_4, negative10_5, negative10_6, negative10_7]

theorem negative10_count : negative10.length = 8 := by decide

theorem negative10_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative10 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative10, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative10_0_checked
  · subst w; exact negative10_1_checked
  · subst w; exact negative10_2_checked
  · subst w; exact negative10_3_checked
  · subst w; exact negative10_4_checked
  · subst w; exact negative10_5_checked
  · subst w; exact negative10_6_checked
  · subst w; exact negative10_7_checked

#print axioms negative10_count
#print axioms negative10_rejected
end FilteredExtensionReview
