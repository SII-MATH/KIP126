import FilteredExtensionReview.Negative00
import FilteredExtensionReview.Negative01
import FilteredExtensionReview.Negative02
import FilteredExtensionReview.Negative03
import FilteredExtensionReview.Negative04
import FilteredExtensionReview.Negative05
import FilteredExtensionReview.Negative06
import FilteredExtensionReview.Negative07
import FilteredExtensionReview.Negative08
import FilteredExtensionReview.Negative09
import FilteredExtensionReview.Negative10
import FilteredExtensionReview.Negative11
import FilteredExtensionReview.Negative12
import FilteredExtensionReview.Negative13
namespace FilteredExtensionReview

def negative := negative00 ++ negative01 ++ negative02 ++ negative03 ++ negative04 ++ negative05 ++ negative06 ++ negative07 ++ negative08 ++ negative09 ++ negative10 ++ negative11 ++ negative12 ++ negative13

theorem negative_count : negative.length = 112 := by decide

theorem selected_mutations_rejected (w : FilteredExtensionCertificates.WireCertificate)
    (hw : Membership.mem negative w) : FilteredExtensionCertificates.checkWire w = .ok false := by
  simp only [negative, List.mem_append] at hw
  rcases hw with (((((((((((((h0 | h1) | h2) | h3) | h4) | h5) | h6) | h7) | h8) | h9) | h10) | h11) | h12) | h13)
  · exact negative00_rejected w h0
  · exact negative01_rejected w h1
  · exact negative02_rejected w h2
  · exact negative03_rejected w h3
  · exact negative04_rejected w h4
  · exact negative05_rejected w h5
  · exact negative06_rejected w h6
  · exact negative07_rejected w h7
  · exact negative08_rejected w h8
  · exact negative09_rejected w h9
  · exact negative10_rejected w h10
  · exact negative11_rejected w h11
  · exact negative12_rejected w h12
  · exact negative13_rejected w h13

#print axioms negative_count
#print axioms selected_mutations_rejected
end FilteredExtensionReview
