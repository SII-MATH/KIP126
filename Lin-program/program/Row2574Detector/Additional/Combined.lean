import Row2574Detector.Quotient
import Row2574Detector.Additional.Products_f0
namespace Row2574Detector.Additional
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates
open Row2574Detector.Quotient

def annF : Wire := page_product% "Row2574Detector/Additional/ann.json"
def detectF : Wire := page_product% "Row2574Detector/Additional/detect.json"
theorem annF_checked : annF.Valid := by lin_cert using ()
theorem detectF_checked : detectF.Valid := by lin_cert using ()
def factorF : Cycle (out annF.left) := ⟨fun _ => true, by
  funext i
  exact (show ∀ i, eval (out annF.left) (fun _ => true) i = false from by decide) i⟩
def annMapF : Q ann.right → Q annF.target :=
  descended _ _ _ _ _ _ annF.product annF_checked.2 (Quot.mk _ factorF)
def detectMapF : Q detect.right → Q detectF.target :=
  descended _ _ _ _ _ _ detectF.product detectF_checked.2 (Quot.mk _ factorF)

theorem source_tensor_matches (i : Fin 6) (j : Fin 2) :
    annF.product i ⟨0,by decide⟩ j = f0.matrix6_132 i j := by
  exact (show ∀ i : Fin 6, ∀ j : Fin 2,
    annF.product i ⟨0,by decide⟩ j = f0.matrix6_132 i j from by decide) i j

theorem target_tensor_matches (i : Fin 3) (j : Fin 5) :
    detectF.product i ⟨0,by decide⟩ j = f0.matrix9_134 i j := by
  exact (show ∀ i : Fin 3, ∀ j : Fin 5,
    detectF.product i ⟨0,by decide⟩ j = f0.matrix9_134 i j from by decide) i j

theorem named_annihilated : annMapF named = z annF.target := by
  apply Quot.sound
  change InImage (inc annF.target) (add (product annF.product (fun _ => true) (fun i => i.val == 0)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product annF.product (fun _ => true) (fun j => j.val == 0)) zero i from by decide) i

def targetFCoordinates := homologyEquivalence (out detectF.target) (inc detectF.target)
  detectF.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem kernel_fiber (x : Q detect.right) :
    detectMapF x = z detectF.target ↔ candidateCoordinates.toCoordinates x ⟨0,by decide⟩ = false := by
  have hx := candidateCoordinates.leftInverse x
  generalize hv : candidateCoordinates.toCoordinates x = v at *
  rw [← hx]
  constructor
  · intro h
    have hh := congrFun (congrArg targetFCoordinates.toCoordinates h) ⟨1,by decide⟩
    change eval detectF.target.comparison.projection
      (product detectF.product (fun _ => true) (eval detect.right.comparison.inclusion v)) ⟨1,by decide⟩ = false at hh
    have eq : ∀ v : Vec 3, eval detectF.target.comparison.projection
      (product detectF.product (fun _ => true) (eval detect.right.comparison.inclusion v)) ⟨1,by decide⟩ = v ⟨0,by decide⟩ := by decide
    exact (eq v).symm.trans hh
  · intro h
    have coords : targetFCoordinates.toCoordinates
        (detectMapF (candidateCoordinates.fromCoordinates v)) = targetFCoordinates.toCoordinates (z detectF.target) := by
      funext i
      change eval detectF.target.comparison.projection
        (product detectF.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i =
          eval detectF.target.comparison.projection zero i
      exact (show ∀ v : Vec 3, v ⟨0,by decide⟩ = false → ∀ i,
        eval detectF.target.comparison.projection
          (product detectF.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i =
        eval detectF.target.comparison.projection zero i from by decide) v h i
    have eq := congrArg targetFCoordinates.fromCoordinates coords
    simpa only [targetFCoordinates.leftInverse] using eq

/-- Both checked products leave only (0,0,1) and (0,1,1).
The f0 source product is proved zero, rather than assumed from a prefix. -/
theorem two_candidate_restriction (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target)
    (df : Q annF.target → Q detectF.target)
    (knownDifferential : dp productNamed = knownValue)
    (h2Leibniz : ∀ x, dp (annMap x) = detectMap (d x))
    (f0Zero : df (z annF.target) = z detectF.target)
    (f0Leibniz : ∀ x, df (annMapF x) = detectMapF (d x)) :
    candidateCoordinates.toCoordinates (d named) ⟨0,by decide⟩ = false ∧
    candidateCoordinates.toCoordinates (d named) ⟨2,by decide⟩ = true := by
  refine ⟨(kernel_fiber _).mp ?_, (differential_restricted d dp knownDifferential h2Leibniz).1⟩
  rw [← f0Leibniz, named_annihilated, f0Zero]
#print axioms kernel_fiber
#print axioms two_candidate_restriction
end Row2574Detector.Additional
