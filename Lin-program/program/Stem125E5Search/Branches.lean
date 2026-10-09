import Stem125E5Search.Product

namespace Stem125E5Search.Branches
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem nine_exhaustive (A : Matrix 1 1) :
    ∃ i : Fin 2, A = matrixOf 1 1 (Data.nine i).outgoing := by
  exact (show ∀ A : Matrix 1 1, ∃ i : Fin 2, A = matrixOf 1 1 (Data.nine i).outgoing from by decide) A

theorem fourteen_exhaustive (B : Matrix 1 1) :
    ∃ i : Fin 3, (Data.fourteen i).n = 1 ∧ B = matrixOf 1 1 (Data.fourteen i).incoming := by
  exact (show ∀ B : Matrix 1 1, ∃ i : Fin 3, (Data.fourteen i).n = 1 ∧
    B = matrixOf 1 1 (Data.fourteen i).incoming from by decide) B

theorem fifteen_exhaustive (B : Matrix 2 2)
    (known : eval B (![false,true] : Vec 2) = ![true,false]) :
    ∃ i : Fin 4, B = matrixOf 2 2 (Data.fifteen i).incoming := by
  exact (show ∀ B : Matrix 2 2, eval B (![false,true] : Vec 2) = ![true,false] →
    ∃ i : Fin 4, B = matrixOf 2 2 (Data.fifteen i).incoming from by decide) B known

/-- The stored incoming event forces only its own column. The complex law
also restricts the two unknown outgoing values and the other incoming column. -/
theorem twentyfive_exhaustive (A : Matrix 1 3) (B : Matrix 3 2)
    (known : eval B (![true,false] : Vec 2) = ![true,false,false])
    (complex : IsComplex A B) :
    ∃ i : Fin 20, A = matrixOf 1 3 (Data.twentyfive i).outgoing ∧
      B = matrixOf 3 2 (Data.twentyfive i).incoming := by
  exact (show ∀ A : Matrix 1 3, ∀ B : Matrix 3 2,
    eval B (![true,false] : Vec 2) = ![true,false,false] →
    (∀ x : Vec 2, eval A (eval B x) = zero) →
    ∃ i : Fin 20, A = matrixOf 1 3 (Data.twentyfive i).outgoing ∧
      B = matrixOf 3 2 (Data.twentyfive i).incoming from by decide) A B known complex

theorem target9prefix_exhaustive (A : Matrix 1 3)
    (boundary : eval A (![true,false,false] : Vec 3) = zero)
    (stored : eval A (![false,false,true] : Vec 3) = fun _ => true) :
    ∃ i : Fin 2, A = matrixOf 1 3 (Data.target9prefix i).outgoing := by
  exact (show ∀ A : Matrix 1 3, eval A (![true,false,false] : Vec 3) = zero →
    eval A (![false,false,true] : Vec 3) = (fun _ => true) →
    ∃ i : Fin 2, A = matrixOf 1 3 (Data.target9prefix i).outgoing from by decide) A boundary stored

theorem source14prefix_exhaustive (B : Matrix 1 2)
    (prefixValue : eval B (![true,false] : Vec 2) = zero) :
    ∃ i : Fin 2, B = matrixOf 1 2 (Data.source14prefix i).incoming := by
  exact (show ∀ B : Matrix 1 2, eval B (![true,false] : Vec 2) = zero →
    ∃ i : Fin 2, B = matrixOf 1 2 (Data.source14prefix i).incoming from by decide) B prefixValue

/-- The source14 prefix controls whether its later differential has an empty
source or a full one-dimensional source; the choice is not discarded. -/
def source14Branch (i : Fin 3) : Fin 2 := if i.val = 0 then 1 else 0
theorem source14_dimension_link (i : Fin 3) :
    (Data.source14prefix (source14Branch i)).h = (Data.fourteen i).n := by fin_cases i <;> rfl

#print axioms fifteen_exhaustive
#print axioms twentyfive_exhaustive
#print axioms source14_dimension_link
end Stem125E5Search.Branches
