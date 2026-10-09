import PageCertificates.Import

namespace PageCertificates
open LinearCertificates

def testPage : Page :=
  { sources := 2, dimension := 3, targets := 1
    incoming := fun i j => (i.val == j.val)
    outgoing := fun _ _ => false }

def survivor : Vec 3 := fun i => i.val == 2

def boundarySum : Vec 3 := fun i => i.val < 2

example : NonzeroHomology testPage survivor := by
  page_cert using (HomologyCertificate.mk survivor)

/-- No individual column equals this target, but their sum does. -/
example : InImage testPage.incoming boundarySum := by
  lin_cert using (fun (_ : Fin 2) => true)

example : checkHomology testPage boundarySum ⟨survivor⟩ = false := by decide

example : ∀ x ∈ [survivor], NonzeroHomology testPage x :=
  checkCandidates_sound testPage [survivor] [⟨survivor⟩] (by decide)

example : UniqueCandidate testPage [survivor, boundarySum] survivor := by
  page_cert using (UniqueCertificate.mk survivor [(boundarySum, fun _ => true)])

def importedPage : WirePage := page_bundle% "PageCertificates/example.jsonl"
example : WireValid importedPage := by lin_cert using ()

#print axioms checkWire_sound
#print axioms checkUnique_sound
#print axioms checkHomology_sound
#print axioms checkCandidates_sound
#print axioms representative_survives

end PageCertificates
