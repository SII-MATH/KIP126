import NamedPageComparison.Row2858.Refutation
import PageTransitionCertificates.Import
namespace NamedPageComparison.Row2858.Boundaries
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def G : WireComparison := ⟨1,0,3,0,3,[],[],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[],[]⟩
theorem G_complete : G.Valid := by lin_cert using ()
theorem G_boundary_span (x : Vec 3) : InImage (matrixOf 3 0 G.incoming) x ↔ InImage boundariesG x := by
  let forward : Matrix 0 0 := matrixOf 0 0 []
  let backward : Matrix 0 0 := matrixOf 0 0 []
  have hf : compose boundariesG forward = matrixOf 3 0 G.incoming := by
    funext i j; exact (show ∀ i j, compose boundariesG forward i j = matrixOf 3 0 G.incoming i j from by decide) i j
  have hb : compose (matrixOf 3 0 G.incoming) backward = boundariesG := by
    funext i j; exact (show ∀ i j, compose (matrixOf 3 0 G.incoming) backward i j = boundariesG i j from by decide) i j
  constructor
  · rintro ⟨v,hv⟩
    refine ⟨eval forward v, ?_⟩
    rw [← eval_compose, hf, hv]
  · rintro ⟨v,hv⟩
    refine ⟨eval backward v, ?_⟩
    rw [← eval_compose, hb, hv]
def H1 : WireComparison := ⟨1,4,4,3,2,[false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[true,false,false,false,false,true,false,false],[true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem H1_complete : H1.Valid := by lin_cert using ()
theorem H1_boundary_span (x : Vec 4) : InImage (matrixOf 4 3 H1.incoming) x ↔ InImage boundariesH1 x := by
  let forward : Matrix 1 3 := matrixOf 1 3 [false,false,true]
  let backward : Matrix 3 1 := matrixOf 3 1 [false,false,true]
  have hf : compose boundariesH1 forward = matrixOf 4 3 H1.incoming := by
    funext i j; exact (show ∀ i j, compose boundariesH1 forward i j = matrixOf 4 3 H1.incoming i j from by decide) i j
  have hb : compose (matrixOf 4 3 H1.incoming) backward = boundariesH1 := by
    funext i j; exact (show ∀ i j, compose (matrixOf 4 3 H1.incoming) backward i j = boundariesH1 i j from by decide) i j
  constructor
  · rintro ⟨v,hv⟩
    refine ⟨eval forward v, ?_⟩
    rw [← eval_compose, hf, hv]
  · rintro ⟨v,hv⟩
    refine ⟨eval backward v, ?_⟩
    rw [← eval_compose, hb, hv]
def H3 : WireComparison := ⟨1,1,5,3,4,[false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,true,false,true],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false],[true,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,true,false],[false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false]⟩
theorem H3_complete : H3.Valid := by lin_cert using ()
theorem H3_boundary_span (x : Vec 5) : InImage (matrixOf 5 3 H3.incoming) x ↔ InImage boundariesH3 x := by
  let forward : Matrix 1 3 := matrixOf 1 3 [true,false,true]
  let backward : Matrix 3 1 := matrixOf 3 1 [true,false,false]
  have hf : compose boundariesH3 forward = matrixOf 5 3 H3.incoming := by
    funext i j; exact (show ∀ i j, compose boundariesH3 forward i j = matrixOf 5 3 H3.incoming i j from by decide) i j
  have hb : compose (matrixOf 5 3 H3.incoming) backward = boundariesH3 := by
    funext i j; exact (show ∀ i j, compose (matrixOf 5 3 H3.incoming) backward i j = boundariesH3 i j from by decide) i j
  constructor
  · rintro ⟨v,hv⟩
    refine ⟨eval forward v, ?_⟩
    rw [← eval_compose, hf, hv]
  · rintro ⟨v,hv⟩
    refine ⟨eval backward v, ?_⟩
    rw [← eval_compose, hb, hv]
def Target : WireComparison := ⟨1,4,5,6,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false],[true,false,false,false,true,false,false,false,true,false,false,false,false,false,false],[true,false,false,false,false,false,true,false,false,false,false,false,true,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem Target_complete : Target.Valid := by lin_cert using ()
theorem Target_boundary_span (x : Vec 5) : InImage (matrixOf 5 6 Target.incoming) x ↔ InImage earlierTarget x := by
  let forward : Matrix 2 6 := matrixOf 2 6 [true,false,false,false,false,false,false,false,false,true,false,false]
  let backward : Matrix 6 2 := matrixOf 6 2 [true,false,false,false,false,false,false,true,false,false,false,false]
  have hf : compose earlierTarget forward = matrixOf 5 6 Target.incoming := by
    funext i j; exact (show ∀ i j, compose earlierTarget forward i j = matrixOf 5 6 Target.incoming i j from by decide) i j
  have hb : compose (matrixOf 5 6 Target.incoming) backward = earlierTarget := by
    funext i j; exact (show ∀ i j, compose (matrixOf 5 6 Target.incoming) backward i j = earlierTarget i j from by decide) i j
  constructor
  · rintro ⟨v,hv⟩
    refine ⟨eval forward v, ?_⟩
    rw [← eval_compose, hf, hv]
  · rintro ⟨v,hv⟩
    refine ⟨eval backward v, ?_⟩
    rw [← eval_compose, hb, hv]
end NamedPageComparison.Row2858.Boundaries
