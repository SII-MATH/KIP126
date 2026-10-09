import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative11_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_0.json"
theorem negative11_0_checked : FilteredExtensionCertificates.checkWire negative11_0 = .ok false := by decide
#print axioms negative11_0_checked

def negative11_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_1.json"
theorem negative11_1_checked : FilteredExtensionCertificates.checkWire negative11_1 = .ok false := by decide
#print axioms negative11_1_checked

def negative11_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_2.json"
theorem negative11_2_checked : FilteredExtensionCertificates.checkWire negative11_2 = .ok false := by decide
#print axioms negative11_2_checked

def negative11_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_3.json"
theorem negative11_3_checked : FilteredExtensionCertificates.checkWire negative11_3 = .ok false := by decide
#print axioms negative11_3_checked

def negative11_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_4.json"
theorem negative11_4_checked : FilteredExtensionCertificates.checkWire negative11_4 = .ok false := by decide
#print axioms negative11_4_checked

def negative11_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_5.json"
theorem negative11_5_checked : FilteredExtensionCertificates.checkWire negative11_5 = .ok false := by decide
#print axioms negative11_5_checked

def negative11_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_6.json"
theorem negative11_6_checked : FilteredExtensionCertificates.checkWire negative11_6 = .ok false := by decide
#print axioms negative11_6_checked

def negative11_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative11_7.json"
theorem negative11_7_checked : FilteredExtensionCertificates.checkWire negative11_7 = .ok false := by decide
#print axioms negative11_7_checked

def negative11 := [negative11_0, negative11_1, negative11_2, negative11_3, negative11_4, negative11_5, negative11_6, negative11_7]

theorem negative11_count : negative11.length = 8 := by decide

theorem negative11_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative11 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative11, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative11_0_checked
  · subst w; exact negative11_1_checked
  · subst w; exact negative11_2_checked
  · subst w; exact negative11_3_checked
  · subst w; exact negative11_4_checked
  · subst w; exact negative11_5_checked
  · subst w; exact negative11_6_checked
  · subst w; exact negative11_7_checked

#print axioms negative11_count
#print axioms negative11_rejected
end FilteredExtensionReview
