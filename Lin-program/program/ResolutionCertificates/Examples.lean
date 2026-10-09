import ResolutionCertificates.Import

namespace ResolutionCertificates
open LinearCertificates

def dOut : Matrix 1 2 := fun _ j => decide (j.val = 1)
def dIn : Matrix 2 1 := fun i _ => decide (i.val = 0)
def homotopy : Contraction 1 2 1 :=
  ⟨fun _ j => decide (j.val = 0), fun i _ => decide (i.val = 1)⟩

/-- 0 -> F2 -> F2^2 -> F2 -> 0 is exact in the middle. -/
theorem splitExact : ExactAt dOut dIn := by
  lin_cert using homotopy

example : checkContraction dOut dIn ⟨fun _ _ => false, fun _ _ => false⟩ = false := by
  decide

example : AgreeOnHomology dOut dIn (identityMatrix 2)
    (fun _ _ => false) := by
  apply checkHomotopy_sound _ _ _ _ homotopy.up homotopy.down
  decide

#print axioms ResolutionCertificates.checkContraction_sound
#print axioms ResolutionCertificates.checkHomotopy_sound

def importedContraction : WireContraction := resolution_bundle% "ResolutionCertificates/sample.json"

example : importedContraction.Valid := by
  lin_cert using ()

example : checkWire { importedContraction with up := [] } = false := by decide

end ResolutionCertificates
