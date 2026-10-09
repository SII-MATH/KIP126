import AffineRemainingSearch.Branches
import AffineRemainingSearch.Kernel
namespace AffineRemainingSearch.Links
open LinearCertificates PageTransitionCertificates ResolutionCertificates Data Branches
open Row2574Detector.Quotient

theorem source_outgoing_exact : d2source2697.outgoing = detect.right.outgoing := rfl
theorem source_incoming_exact : d2source2697.incoming = detect.right.incoming := rfl

theorem candidate_coordinate_change (b : Bool) :
    eval d2source2697.comparison.projection
      (eval detect.right.comparison.inclusion
        (fun i => (i.val == 1 && b) || i.val == 2)) =
      (fun i => incoming b i 0) := by
  cases b <;> decide

theorem raw2697_source : eval d2source2697.comparison.projection
    (fun i => i.val == 1) = named2697 := by decide
theorem raw2697_target : eval d2target2697.comparison.projection
    (fun i => i.val == 0) = target := by decide
theorem raw2696_source : eval d2source2697.comparison.projection
    (fun i => i.val == 3) = named2696 := by decide
theorem raw2708_source : eval d2source2708.comparison.projection
    (fun i => i.val == 0 || i.val == 1) = Kernel.named := by decide
theorem raw2707_survivor : eval d2source2708.comparison.projection
    (fun i => i.val == 2) = (fun i => Kernel.survivor i 0) := by decide
theorem raw2708_target : eval d2target2708.comparison.projection
    (fun i => i.val == 2) = (fun _ => true) := by decide

theorem affine_coordinate_branch (v : Vec 3) (h0 : v 0 = false) (h2 : v 2 = true) :
    ∃ b : Bool, eval d2source2697.comparison.projection
      (eval detect.right.comparison.inclusion v) = (fun i => incoming b i 0) := by
  exact (show ∀ v : Vec 3, v 0 = false → v 2 = true →
    ∃ b : Bool, eval d2source2697.comparison.projection
      (eval detect.right.comparison.inclusion v) = (fun i => incoming b i 0)
    from by decide) v h0 h2

/-- Every supplied complex with the stated semantic basis values has a
complete branch certificate; the existential conclusion selects no value. -/
theorem actual_comparison_exists (d : Matrix 1 3) (inc : Matrix 3 1)
    (v : Vec 3) (h0 : v 0 = false) (h2 : v 2 = true)
    (incomingValue : (fun i => inc i 0) = eval d2source2697.comparison.projection
      (eval detect.right.comparison.inclusion v))
    (row2695 : eval d (fun i => i.val == 0) = zero)
    (row2696Prefix : eval d named2696 = zero)
    (row2697 : eval d named2697 = target) :
    ∃ b : Bool, HomologyComparison d inc (witness b) := by
  obtain ⟨b,hb⟩ := affine_coordinate_branch v h0 h2
  have hd := outgoing_from_basis_values d row2695 row2696Prefix row2697
  have hi : inc = incoming b := by
    funext i j
    have hj : j = 0 := Subsingleton.elim _ _
    subst j
    exact congrFun (incomingValue.trans hb) i
  rw [hd,hi]
  exact ⟨b,complete b⟩

theorem affine_semantics_exhaustive
    (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target)
    (df : Q Row2574Detector.Additional.annF.target → Q Row2574Detector.Additional.detectF.target)
    (knownDifferential : dp productNamed = knownValue)
    (h2Leibniz : ∀ x, dp (annMap x) = detectMap (d x))
    (f0Zero : df (z Row2574Detector.Additional.annF.target) =
      z Row2574Detector.Additional.detectF.target)
    (f0Leibniz : ∀ x, df (Row2574Detector.Additional.annMapF x) =
      Row2574Detector.Additional.detectMapF (d x)) :
    ∃ b : Bool, candidateCoordinates.toCoordinates (d named) =
      (fun i => (i.val == 1 && b) || i.val == 2) := by
  have hc := Row2574Detector.Additional.two_candidate_restriction
    d dp df knownDifferential h2Leibniz f0Zero f0Leibniz
  refine ⟨candidateCoordinates.toCoordinates (d named) ⟨1,by decide⟩, ?_⟩
  funext i
  have hi : i.val < 3 := i.isLt
  have cases3 : i.val = 0 ∨ i.val = 1 ∨ i.val = 2 := by omega
  rcases cases3 with h | h | h
  · have he : i = ⟨0,by decide⟩ := Fin.ext h
    subst i
    exact hc.1
  · have he : i = ⟨1,by decide⟩ := Fin.ext h
    subst i
    simp
  · have he : i = ⟨2,by decide⟩ := Fin.ext h
    subst i
    exact hc.2

#print axioms affine_semantics_exhaustive
#print axioms actual_comparison_exists
end AffineRemainingSearch.Links
