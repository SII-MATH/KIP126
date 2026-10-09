import AffineRemainingSearch.Data
namespace AffineRemainingSearch.Branches
open LinearCertificates PageTransitionCertificates ResolutionCertificates Data

def out : Matrix 1 3 := fun _ j => j.val == 2
def incoming (b : Bool) : Matrix 3 1 := fun i _ =>
  (i.val == 0 && b) || i.val == 1
def witness (b : Bool) : Comparison 1 3 1 1 :=
  if b then branch1.comparison else branch0.comparison

theorem complete (b : Bool) : HomologyComparison out (incoming b) (witness b) := by
  cases b
  · have ho : out = matrixOf 1 3 branch0.outgoing := by decide
    have hi : incoming false = matrixOf 3 1 branch0.incoming := by decide
    rw [ho, hi]
    exact branch0_checked.2
  · have ho : out = matrixOf 1 3 branch1.outgoing := by decide
    have hi : incoming true = matrixOf 3 1 branch1.incoming := by decide
    rw [ho, hi]
    exact branch1_checked.2

def named2696 : Vec 3 := fun i => i.val == 1
def named2697 : Vec 3 := fun i => i.val == 2
def target : Vec 1 := fun _ => true

theorem common_d3_value : eval out named2697 = target := by decide
theorem common_d3_nonzero : eval out named2697 ≠ zero := by decide
theorem branch0_boundary : InImage (incoming false) named2696 := by
  exact ⟨fun _ => true, by decide⟩
theorem branch1_nonboundary : ¬ InImage (incoming true) named2696 := by
  rintro ⟨v,hv⟩
  exact (show ∀ v : Vec 1, eval (incoming true) v ≠ named2696 from by decide) v hv

theorem candidate_exhaustive (v : Vec 3) (h0 : v 0 = false) (h2 : v 2 = true) :
    v = (fun i => i.val == 2) ∨ v = (fun i => i.val == 1 || i.val == 2) := by
  exact (show ∀ v : Vec 3, v 0 = false → v 2 = true →
    v = (fun i => i.val == 2) ∨ v = (fun i => i.val == 1 || i.val == 2) from by decide) v h0 h2

theorem common_event_valid (b : Bool) : (if b then event1 else event0).Valid := by
  cases b
  · exact event0_valid
  · exact event1_valid

/-- The three source values separately expose the conditional detector,
the imported earlier-page prefix, and the stored nonzero d3 value. -/
theorem outgoing_from_basis_values (d : Matrix 1 3)
    (row2695 : eval d (fun i => i.val == 0) = zero)
    (row2696Prefix : eval d named2696 = zero)
    (row2697 : eval d named2697 = target) : d = out := by
  exact (show ∀ d : Matrix 1 3,
    eval d (fun i => i.val == 0) = zero → eval d named2696 = zero →
    eval d named2697 = target → d = out from by decide) d row2695 row2696Prefix row2697

#print axioms complete
#print axioms common_event_valid
end AffineRemainingSearch.Branches
