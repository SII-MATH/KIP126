import KIP126.Interface.Challenge.Computation.Presentation
import KIP126.LinProgram.Certificates.H1
import KIP126.Def.ClassicalAdams.MilnorCohomology.Hi.Proofs
import KIP126.Def.StageInput.Milnor
import KIP126.Interface.Challenge.Literature.Delivery
import KIP126.Def.ClassicalAdams.Detection.Filtered.Proofs

/-! A genuine coordinate-to-class bridge on the fixed sphere's actual E₂.
Exhaustion identifies the unique nonzero class under any supplied presentation.
No imported basis correctness, differential, or higher-page law is assumed. -/

namespace KIP126.Interface.Solution

open CategoryTheory KIP126.Classical.Adams KIP126.StableHomotopy

/-- Every actual element of E₂^(1,2) is zero or the comparison image of CSV h₁. -/
theorem sphereH1_exhaustive (P : LinE2Presentation)
    (x : sphereAdamsData.Page 2 (1, 2)) :
    x = 0 ∨ x = P.comparison 1 2 (by decide) KIP126.LinE2.dataH1 := by
  obtain ⟨a, rfl⟩ := (P.comparison 1 2 (by decide)).surjective x
  rcases KIP126.LinE2.E2At_h1_eq_zero_or a with rfl | rfl
  · exact Or.inl (map_zero _)
  · exact Or.inr rfl

/-- CSV h₁ denotes the existing standard Milnor class in the fixed actual
sphere E₂, rather than merely an element of an abstract data algebra. -/
theorem sphereH1_standard_class (P : LinE2Presentation) :
    P.comparison 1 2 (by decide) KIP126.LinE2.dataH1 =
      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations 1 := by
  exact ((sphereH1_exhaustive P
      (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations 1)).resolve_left
    (MilnorCohomology.internal_hi_ne_zero standardFoundation.hf2 standardMilnorCooperations 1)).symm

/-- The certified CSV class inherits the existing literature's actual Hopf
detection; this does not identify the representative of every filtered lift. -/
theorem sphereH1_detects_eta
    (literature : KIP126.Challenge2.LiteratureInterface) (P : LinE2Presentation) :
    TowerDetection.Detects literature.bindings.route.classicalSource.convergence (1, 2)
      (P.comparison 1 2 (by decide) KIP126.LinE2.dataH1)
      literature.bindings.route.classicalSource.eta := by
  rw [sphereH1_standard_class]
  exact literature.results.classical_eta_detection

/-- Extract an actual filtration-one homotopy lift of eta, giving the
one-sided long-layer construction an actual possible second input. The lift's
specific E2 representative still requires a separate comparison proof. -/
theorem sphereH1_eta_towerLift
    (literature : KIP126.Challenge2.LiteratureInterface) :
    ∃ a : HomotopyGroup (C := standardFoundation.Spectrum) 1
        (adamsTowerAt standardFoundation.hf2.unit SphereSpectrum 1),
      a ≫ adamsTowerMap standardFoundation.hf2.unit SphereSpectrum 0 1 (by decide) =
        literature.bindings.route.classicalSource.eta := by
  exact literature.results.classical_eta_detection.exists_towerLift

end KIP126.Interface.Solution
