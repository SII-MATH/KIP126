import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative05_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_0.json"
theorem negative05_0_checked : FilteredExtensionCertificates.checkWire negative05_0 = .ok false := by decide
#print axioms negative05_0_checked

def negative05_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_1.json"
theorem negative05_1_checked : FilteredExtensionCertificates.checkWire negative05_1 = .ok false := by decide
#print axioms negative05_1_checked

def negative05_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_2.json"
theorem negative05_2_checked : FilteredExtensionCertificates.checkWire negative05_2 = .ok false := by decide
#print axioms negative05_2_checked

def negative05_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_3.json"
theorem negative05_3_checked : FilteredExtensionCertificates.checkWire negative05_3 = .ok false := by decide
#print axioms negative05_3_checked

def negative05_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_4.json"
theorem negative05_4_checked : FilteredExtensionCertificates.checkWire negative05_4 = .ok false := by decide
#print axioms negative05_4_checked

def negative05_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_5.json"
theorem negative05_5_checked : FilteredExtensionCertificates.checkWire negative05_5 = .ok false := by decide
#print axioms negative05_5_checked

def negative05_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_6.json"
theorem negative05_6_checked : FilteredExtensionCertificates.checkWire negative05_6 = .ok false := by decide
#print axioms negative05_6_checked

def negative05_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative05_7.json"
theorem negative05_7_checked : FilteredExtensionCertificates.checkWire negative05_7 = .ok false := by decide
#print axioms negative05_7_checked

def negative05 := [negative05_0, negative05_1, negative05_2, negative05_3, negative05_4, negative05_5, negative05_6, negative05_7]

theorem negative05_count : negative05.length = 8 := by decide

theorem negative05_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative05 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative05, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative05_0_checked
  · subst w; exact negative05_1_checked
  · subst w; exact negative05_2_checked
  · subst w; exact negative05_3_checked
  · subst w; exact negative05_4_checked
  · subst w; exact negative05_5_checked
  · subst w; exact negative05_6_checked
  · subst w; exact negative05_7_checked

#print axioms negative05_count
#print axioms negative05_rejected
end FilteredExtensionReview
