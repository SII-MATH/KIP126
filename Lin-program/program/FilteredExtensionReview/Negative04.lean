import FilteredExtensionReview.Import
namespace FilteredExtensionReview
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def negative04_0 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_0.json"
theorem negative04_0_checked : FilteredExtensionCertificates.checkWire negative04_0 = .ok false := by decide
#print axioms negative04_0_checked

def negative04_1 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_1.json"
theorem negative04_1_checked : FilteredExtensionCertificates.checkWire negative04_1 = .ok false := by decide
#print axioms negative04_1_checked

def negative04_2 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_2.json"
theorem negative04_2_checked : FilteredExtensionCertificates.checkWire negative04_2 = .ok false := by decide
#print axioms negative04_2_checked

def negative04_3 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_3.json"
theorem negative04_3_checked : FilteredExtensionCertificates.checkWire negative04_3 = .ok false := by decide
#print axioms negative04_3_checked

def negative04_4 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_4.json"
theorem negative04_4_checked : FilteredExtensionCertificates.checkWire negative04_4 = .ok false := by decide
#print axioms negative04_4_checked

def negative04_5 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_5.json"
theorem negative04_5_checked : FilteredExtensionCertificates.checkWire negative04_5 = .ok false := by decide
#print axioms negative04_5_checked

def negative04_6 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_6.json"
theorem negative04_6_checked : FilteredExtensionCertificates.checkWire negative04_6 = .ok false := by decide
#print axioms negative04_6_checked

def negative04_7 : FilteredExtensionCertificates.WireCertificate :=
  negative_filtered_extension% "FilteredExtensionReview/negative04_7.json"
theorem negative04_7_checked : FilteredExtensionCertificates.checkWire negative04_7 = .ok false := by decide
#print axioms negative04_7_checked

def negative04 := [negative04_0, negative04_1, negative04_2, negative04_3, negative04_4, negative04_5, negative04_6, negative04_7]

theorem negative04_count : negative04.length = 8 := by decide

theorem negative04_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative04 w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative04, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with h | h | h | h | h | h | h | h
  · subst w; exact negative04_0_checked
  · subst w; exact negative04_1_checked
  · subst w; exact negative04_2_checked
  · subst w; exact negative04_3_checked
  · subst w; exact negative04_4_checked
  · subst w; exact negative04_5_checked
  · subst w; exact negative04_6_checked
  · subst w; exact negative04_7_checked

#print axioms negative04_count
#print axioms negative04_rejected
end FilteredExtensionReview
