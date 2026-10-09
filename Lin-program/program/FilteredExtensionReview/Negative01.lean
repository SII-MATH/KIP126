import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative01_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_0.json"
theorem negative01_0_checked : FilteredExtensionCertificates.checkWire negative01_0 = .ok false := by decide
#print axioms negative01_0_checked

def negative01_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_1.json"
theorem negative01_1_checked : FilteredExtensionCertificates.checkWire negative01_1 = .ok false := by decide
#print axioms negative01_1_checked

def negative01_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_2.json"
theorem negative01_2_checked : FilteredExtensionCertificates.checkWire negative01_2 = .ok false := by decide
#print axioms negative01_2_checked

def negative01_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_3.json"
theorem negative01_3_checked : FilteredExtensionCertificates.checkWire negative01_3 = .ok false := by decide
#print axioms negative01_3_checked

def negative01_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_4.json"
theorem negative01_4_checked : FilteredExtensionCertificates.checkWire negative01_4 = .ok false := by decide
#print axioms negative01_4_checked

def negative01_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_5.json"
theorem negative01_5_checked : FilteredExtensionCertificates.checkWire negative01_5 = .ok false := by decide
#print axioms negative01_5_checked

def negative01_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_6.json"
theorem negative01_6_checked : FilteredExtensionCertificates.checkWire negative01_6 = .ok false := by decide
#print axioms negative01_6_checked

def negative01_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative01_7.json"
theorem negative01_7_checked : FilteredExtensionCertificates.checkWire negative01_7 = .ok false := by decide
#print axioms negative01_7_checked

def negative01 := [negative01_0, negative01_1, negative01_2, negative01_3, negative01_4, negative01_5, negative01_6, negative01_7]

theorem negative01_count : negative01.length = 8 := by decide

theorem negative01_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative01 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative01, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative01_0_checked
  · subst w; exact negative01_1_checked
  · subst w; exact negative01_2_checked
  · subst w; exact negative01_3_checked
  · subst w; exact negative01_4_checked
  · subst w; exact negative01_5_checked
  · subst w; exact negative01_6_checked
  · subst w; exact negative01_7_checked

#print axioms negative01_count
#print axioms negative01_rejected
end FilteredExtensionReview
