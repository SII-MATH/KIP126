import PageProductCertificates.CycleWitness
import NamedPageComparison.Row2858.H1Zero
namespace PageProductCertificates.ActualH0
open LinearCertificates PageTransitionCertificates ResolutionCertificates
open NamedPageComparison.Row2858

def h0wire : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
def zeroProduct : Tensor 1 1 0 := fun i _ _ => Fin.elim0 i
def fourthProduct : Tensor 1 1 1 := fun _ _ _ => true

def witnesses (kb : Nat) : CycleWitness 0 1 kb 1 0 0 0 where
  leftProjector := identityMatrix 1
  leftCorrection := fun _ i => Fin.elim0 i
  rightProjector := identityMatrix 1
  rightCorrection := fun _ _ => false
  leftBoundary := fun i => Fin.elim0 i
  rightBoundary := fun i => Fin.elim0 i

-- All displayed complexes have one cycle generator and no incoming generators.
-- The product h0*h1 has the zero chain space as target.
theorem h0_h1_checked : checkCycles
    (matrixOf 0 1 h0wire.outgoing) (matrixOf 1 0 h0wire.incoming) h0wire.comparison
    (matrixOf 1 1 H1Zero.h1Source.outgoing) (matrixOf 1 0 H1Zero.h1Source.incoming) H1Zero.h1Source.comparison
    (matrixOf 1 0 H1Zero.productSource.outgoing) (matrixOf 0 0 H1Zero.productSource.incoming) H1Zero.productSource.comparison
    zeroProduct (witnesses 1) = true := by decide

theorem h0_fourth_checked : checkCycles
    (matrixOf 0 1 h0wire.outgoing) (matrixOf 1 0 h0wire.incoming) h0wire.comparison
    (matrixOf 0 1 H1Zero.h1Target.outgoing) (matrixOf 1 0 H1Zero.h1Target.incoming) H1Zero.h1Target.comparison
    (matrixOf 0 1 H1Zero.productTarget.outgoing) (matrixOf 1 0 H1Zero.productTarget.incoming) H1Zero.productTarget.comparison
    fourthProduct (witnesses 0) = true := by decide

theorem fourth_tensor_matches : ∀ i j,
    fourthProduct i 0 j = h0.matrix4_4 i j := by decide

-- Corrupting a full-kernel projector must be rejected, even for the zero product.
def badWitness : CycleWitness 0 1 1 1 0 0 0 :=
  { witnesses 1 with leftProjector := fun _ _ => false }
example : checkCycles
    (matrixOf 0 1 h0wire.outgoing) (matrixOf 1 0 h0wire.incoming) h0wire.comparison
    (matrixOf 1 1 H1Zero.h1Source.outgoing) (matrixOf 1 0 H1Zero.h1Source.incoming) H1Zero.h1Source.comparison
    (matrixOf 1 0 H1Zero.productSource.outgoing) (matrixOf 0 0 H1Zero.productSource.incoming) H1Zero.productSource.comparison
    zeroProduct badWitness = false := by decide
end PageProductCertificates.ActualH0
