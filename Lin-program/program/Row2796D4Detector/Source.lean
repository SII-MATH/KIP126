import Row2796D4Detector.Target
import Row2796D4Detector.Links
namespace Row2796D4Detector.Source
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison
abbrev S := Homology (matrixOf namedSource.k namedSource.m namedSource.outgoing)
  (matrixOf namedSource.m namedSource.n namedSource.incoming)
def outS := matrixOf namedSource.k namedSource.m namedSource.outgoing
def inS := matrixOf namedSource.m namedSource.n namedSource.incoming

theorem namedMap_zero : namedMap = (fun _ _ => false) := by decide +revert

theorem eval_zero_matrix (x : Vec n) : eval (fun (_ : Fin m) (_ : Fin n) => false) x = zero := by
  funext i
  exact zero_dot x

theorem arbitrary_compatible (outT : Matrix 3 2) (inT : Matrix 2 4) :
    CompatibleMap outS inS outT inT namedMap
      (fun _ _ => false) (fun _ _ => false) := by
  rw [namedMap_zero]
  change CompatibleMap (outS : Matrix 2 2) (inS : Matrix 2 0) outT inT
    (fun _ _ => false) (fun _ _ => false) (fun _ _ => false)
  constructor
  · intro x
    rw [eval_zero_matrix,eval_zero_matrix,eval_zero]
  · intro x
    rw [eval_zero_matrix,eval_zero_matrix,eval_zero]

def f (outT : Matrix 3 2) (inT : Matrix 2 4) : S → Homology outT inT :=
  inducedMap (arbitrary_compatible outT inT)
def z (outT : Matrix 3 2) (inT : Matrix 2 4) : Homology outT inT :=
  Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def named : S := Quot.mk _ (⟨fun i => i.val == 0,by
  funext i
  exact (show ∀ i, eval (matrixOf namedSource.k namedSource.m namedSource.outgoing) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)

theorem maps_zero (outT : Matrix 3 2) (inT : Matrix 2 4) (x : S) :
    f outT inT x = z outT inT := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    change InImage inT (add (eval namedMap x.val) zero)
    refine ⟨zero, ?_⟩
    rw [namedMap_zero,eval_zero]
    change zero = add (eval (fun (_ : Fin 2) (_ : Fin 2) => false) x.val) zero
    rw [eval_zero_matrix]
    rfl

/-- Unknown source d3 entries are arbitrary. The actual E3 coefficient map
is zero and descends for every completion; no full source comparison is used. -/
theorem named_d4_zero (outT : Matrix 3 2) (inT : Matrix 2 4)
    (ds : S → Target.U) (dt : Homology outT inT → Target.V)
    (zeroPreserving : dt (z outT inT) = Target.zv)
    (naturality : ∀ x, dt (f outT inT x) = Target.g (ds x)) :
    ds named = Target.zu := by
  apply Target.reflects_zero
  rw [← naturality, maps_zero, zeroPreserving]
#print axioms named_d4_zero
end Row2796D4Detector.Source
