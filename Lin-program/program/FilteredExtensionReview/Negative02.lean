import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative02_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_0.json"
theorem negative02_0_checked : FilteredExtensionCertificates.checkWire negative02_0 = .ok false := by decide
#print axioms negative02_0_checked

def negative02_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_1.json"
theorem negative02_1_checked : FilteredExtensionCertificates.checkWire negative02_1 = .ok false := by decide
#print axioms negative02_1_checked

def negative02_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_2.json"
theorem negative02_2_checked : FilteredExtensionCertificates.checkWire negative02_2 = .ok false := by decide
#print axioms negative02_2_checked

def negative02_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_3.json"
theorem negative02_3_checked : FilteredExtensionCertificates.checkWire negative02_3 = .ok false := by decide
#print axioms negative02_3_checked

def negative02_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_4.json"
theorem negative02_4_checked : FilteredExtensionCertificates.checkWire negative02_4 = .ok false := by decide
#print axioms negative02_4_checked

def negative02_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_5.json"
theorem negative02_5_checked : FilteredExtensionCertificates.checkWire negative02_5 = .ok false := by decide
#print axioms negative02_5_checked

def negative02_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_6.json"
theorem negative02_6_checked : FilteredExtensionCertificates.checkWire negative02_6 = .ok false := by decide
#print axioms negative02_6_checked

def negative02_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative02_7.json"
theorem negative02_7_checked : FilteredExtensionCertificates.checkWire negative02_7 = .ok false := by decide
#print axioms negative02_7_checked

def negative02 := [negative02_0, negative02_1, negative02_2, negative02_3, negative02_4, negative02_5, negative02_6, negative02_7]

theorem negative02_count : negative02.length = 8 := by decide

theorem negative02_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative02 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative02, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative02_0_checked
  · subst w; exact negative02_1_checked
  · subst w; exact negative02_2_checked
  · subst w; exact negative02_3_checked
  · subst w; exact negative02_4_checked
  · subst w; exact negative02_5_checked
  · subst w; exact negative02_6_checked
  · subst w; exact negative02_7_checked

#print axioms negative02_count
#print axioms negative02_rejected
end FilteredExtensionReview
