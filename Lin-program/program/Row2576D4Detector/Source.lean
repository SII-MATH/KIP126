import Row2576D4Detector.Target
namespace Row2576D4Detector.Source
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison

def outS : Matrix 2 1 := matrixOf _ _ source3.outgoing
def inS : Matrix 1 0 := matrixOf _ _ source3.incoming
abbrev S := Homology outS inS
abbrev T (outT : Matrix 4 0) (inT : Matrix 0 0) := Homology outT inT

def compatible (outT : Matrix 4 0) (inT : Matrix 0 0) :
    CompatibleMap outS inS outT inT namedMap (fun _ _ => false) (fun _ _ => false) := by
  constructor
  · intro x
    have hf : eval (namedMap : Matrix 0 1) x = zero := by
      funext i
      exact Fin.elim0 i
    exact ((congrArg (eval outT) hf).trans (eval_zero _)).trans
      (Target.zero_matrix_eval (eval outS x)).symm
  · intro x
    have hx : x = zero := Subsingleton.elim _ _
    rw [hx,eval_zero,eval_zero,eval_zero,eval_zero]

def f (outT : Matrix 4 0) (inT : Matrix 0 0) : S → T outT inT :=
  inducedMap (compatible outT inT)
def z (outT : Matrix 4 0) (inT : Matrix 0 0) : T outT inT :=
  Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def named : S := Quot.mk _ (⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval outS (fun _ => true) i = false from by decide) i⟩ : Cycle _)

theorem maps_zero (outT : Matrix 4 0) (inT : Matrix 0 0) (x : S) :
    f outT inT x = z outT inT := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    change InImage inT (add (eval namedMap x.val) zero)
    refine ⟨zero, ?_⟩
    funext i
    exact Fin.elim0 i

/-- The target outgoing d3 is arbitrary subject to its actual local naturality
square; no complete target E4 comparison or chosen unknown value is needed. -/
theorem named_d4_zero (outT : Matrix 4 0) (inT : Matrix 0 0)
    (targetOut : Matrix 5 6) (d3Naturality : Target.Natural targetOut)
    (ds : S → Target.U) (dt : T outT inT → Target.V targetOut)
    (zeroPreserving : dt (z outT inT) = Target.zv targetOut)
    (d4Naturality : ∀ x, dt (f outT inT x) = Target.g targetOut d3Naturality (ds x)) :
    ds named = Target.zu := by
  apply Target.reflects_zero targetOut d3Naturality
  rw [← d4Naturality,maps_zero,zeroPreserving]

#print axioms named_d4_zero
end Row2576D4Detector.Source
