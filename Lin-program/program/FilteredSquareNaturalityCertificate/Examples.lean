import FilteredSquareNaturalityCertificate.Basic
import FiniteFilteredSquareProducer.Imported
import FiniteFilteredSquareCertificates.Examples

namespace FilteredSquareNaturalityCertificate
open FiniteFilteredSquareCertificates

def WireValid (w : WireCertificate) : Prop :=
  ∃ parsed, decode w = .ok parsed ∧ ResultValid parsed.1

theorem of_wire_valid (w : WireCertificate) (valid : FiniteFilteredSquareCertificates.WireValid w) :
    WireValid w := by
  obtain ⟨parsed,decoded,_,h,_⟩ := valid
  exact ⟨parsed,decoded,of_wellFormed parsed.1 h⟩

theorem all_863_natural : ∀ w ∈ FiniteFilteredSquareProducer.allWires, WireValid w :=
  fun w member => of_wire_valid w (FiniteFilteredSquareProducer.all_valid w member)

example : ResultValid Examples.nonzeroInput := by
  filtered_naturality_cert using Examples.nonzeroCertificate

example : ResultValid Examples.correctedInput := by
  filtered_naturality_cert using Examples.correctedCertificate

#print axioms of_wire_valid
#print axioms all_863_natural
end FilteredSquareNaturalityCertificate
