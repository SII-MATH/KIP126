import LinearCertificates.Checker

namespace LinearCertificates.Examples
open LinProgramCertificates

-- Columns (1,0,1) and (0,1,1); their sum is (1,1,0).
def a : Matrix 3 2 := fun i j => decide (i.val = j.val ∨ i.val = 2)
def combination : Vec 3 := fun i => decide (i.val < 2)
def outside : Vec 3 := fun i => decide (i.val = 0)
def both : Vec 2 := fun _ => true
def parity : Vec 3 := fun _ => true

example : InImage a combination := by lin_cert using both
example : ¬ InImage a outside := by lin_cert using parity
example : checkNotImage a combination parity = false := by decide
example : checkImage a outside both = false := by decide
example : InKernel a (zero : Vec 2) := by lin_cert using ()

-- Parity annihilates both columns, so the composite is zero.
def boundary : Matrix 1 3 := fun _ _ => true
example : IsComplex boundary a := by lin_cert using ()
example : checkComplex (fun (_ : Fin 1) (i : Fin 3) => decide (i.val = 0)) a = false := by
  decide

def id₂ : Matrix 2 2 := fun i j => decide (i = j)
def id₃ : Matrix 3 3 := fun i j => decide (i = j)
example : IsChainMap a a id₂ id₃ := by lin_cert using ()
example : checkChainMap a a (fun _ _ => false) id₃ = false := by decide

-- Empty dimensions exercise the endpoint of the parity recursion.
example : InImage (fun (_ : Fin 0) (_ : Fin 0) => false) zero := by
  lin_cert using (zero : Vec 0)

#print axioms LinearCertificates.annihilates_image
#print axioms LinearCertificates.checkNotImage_sound
#print axioms LinearCertificates.checkChainMap_sound

end LinearCertificates.Examples
