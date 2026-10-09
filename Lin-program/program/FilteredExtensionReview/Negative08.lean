import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative08_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_0.json"
theorem negative08_0_checked : FilteredExtensionCertificates.checkWire negative08_0 = .ok false := by decide
#print axioms negative08_0_checked

def negative08_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_1.json"
theorem negative08_1_checked : FilteredExtensionCertificates.checkWire negative08_1 = .ok false := by decide
#print axioms negative08_1_checked

def negative08_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_2.json"
theorem negative08_2_checked : FilteredExtensionCertificates.checkWire negative08_2 = .ok false := by decide
#print axioms negative08_2_checked

def negative08_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_3.json"
theorem negative08_3_checked : FilteredExtensionCertificates.checkWire negative08_3 = .ok false := by decide
#print axioms negative08_3_checked

def negative08_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_4.json"
theorem negative08_4_checked : FilteredExtensionCertificates.checkWire negative08_4 = .ok false := by decide
#print axioms negative08_4_checked

def negative08_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_5.json"
theorem negative08_5_checked : FilteredExtensionCertificates.checkWire negative08_5 = .ok false := by decide
#print axioms negative08_5_checked

def negative08_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_6.json"
theorem negative08_6_checked : FilteredExtensionCertificates.checkWire negative08_6 = .ok false := by decide
#print axioms negative08_6_checked

def negative08_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative08_7.json"
theorem negative08_7_checked : FilteredExtensionCertificates.checkWire negative08_7 = .ok false := by decide
#print axioms negative08_7_checked

def negative08 := [negative08_0, negative08_1, negative08_2, negative08_3, negative08_4, negative08_5, negative08_6, negative08_7]

theorem negative08_count : negative08.length = 8 := by decide

theorem negative08_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative08 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative08, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative08_0_checked
  · subst w; exact negative08_1_checked
  · subst w; exact negative08_2_checked
  · subst w; exact negative08_3_checked
  · subst w; exact negative08_4_checked
  · subst w; exact negative08_5_checked
  · subst w; exact negative08_6_checked
  · subst w; exact negative08_7_checked

#print axioms negative08_count
#print axioms negative08_rejected
end FilteredExtensionReview
