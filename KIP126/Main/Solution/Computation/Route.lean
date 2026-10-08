import KIP126.Main.Solution.Computation.Route.Consequences
import KIP126.Def.ClassicalAdams.TowerVanishing.Proofs
import KIP126.Def.SpectralSequence.Permanence.Proofs
import KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates

/-!
# Proof obligations deriving Section 7 facts from the finite C interface

The statements in this file are internal proof tasks.  `sorry` marks an
unfinished proof, not an accepted program result or literature axiom.  The
original `Inputs.results` retains its finite strength.  There is one D, one
realization `I.realization`, and the same route/tmf labels throughout.

The range proof is independent of the pinned computations and of the paper's
new generalized Leibniz/Mahowald rules.  No theorem below is used as a premise
of a certification rule for the same input records.
-/
namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.LinE2 KIP126.Computation.Near126
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- The two existing filtration spellings are the images of the SAME tower
maps on the SAME sphere homotopy groups. Strong convergence's Hausdorff
clause therefore supplies the exact separation premise used below. This
adapter assumes the actual strong-convergence theorem, not merely an
arbitrary associated-graded isomorphism. -/
theorem classical_sphere_separated_of_strong_convergence
    (S : IsAdamsTowerStronglyConvergent H.unit (SphereSpectrum (C := C))) :
    ClassicalSphereSeparated H := by
  intro n a ha
  let e := ModuleCat.subobjectModule (towerAbutment (SphereSpectrum (C := C)) n)
  have hz := S.separated n (e.symm (Submodule.span ℤ {a})) (fun s => by
    apply e.symm.monotone
    apply Submodule.span_le.mpr
    intro b hb
    obtain rfl := Set.mem_singleton_iff.mp hb
    obtain ⟨y, hy⟩ := ha s.toNat
    refine ⟨y, ?_⟩
    change y ≫ adamsTowerMap H.unit SphereSpectrum 0 s.toNat _ = b
    change y ≫ adamsTowerMap H.unit SphereSpectrum 0 (s.toNat : ℤ).toNat _ = b at hy
    simpa only [Int.toNat_natCast] using hy)
  have hspan : Submodule.span ℤ {a} = (⊥ : Submodule ℤ (HomotopyGroup n SphereSpectrum)) := by
    have h := congrArg e hz
    rw [e.apply_symm_apply, e.map_bot] at h
    exact h
  have hm : a ∈ Submodule.span ℤ ({a} : Set (HomotopyGroup n SphereSpectrum)) :=
    Submodule.subset_span (Set.mem_singleton a)
  simpa [hspan] using hm

attribute [local irreducible] KIP126.LinE2.homogeneousPart
variable {D : Model H M Syn} {L : Labels H} {G : KIP126.Literature.Route.TmfLabels H}

/-- Tail outside the selected sphere file.  In positive stem n <= 127,
filtration s >= 66 already lies in the uniform vanishing region.  The
125-stem specialization below uses the sharper s >= 65 bound. -/
theorem sphere_page_zero_above_uniform_bound (V : SphereVanishingLine H)
    (r s n : ℤ) (hr : 2 ≤ r) (hn : 0 < n) (hn' : n ≤ 127) (hs : 66 ≤ s) :
    Subsingleton ((sequence D .sphere).Page r (s,s+n)) := by
  exact adamsTowerInternal_page_subsingleton_of_le H.unit SphereSpectrum
    2 r s (s+n) (by omega) hr (V s (s+n) (by omega) (by omega))

/-- At n=125 the exact arithmetic is 125 < 2*65-3=127.  No claim is
inferred merely from the absence of rows past the file's t=261 cutoff. -/
theorem sphere_page_zero_stem125_tail (V : SphereVanishingLine H)
    (r s : ℤ) (hr : 2 ≤ r) (hs : 65 ≤ s) :
    Subsingleton ((sequence D .sphere).Page r (s,s+125)) := by
  exact adamsTowerInternal_page_subsingleton_of_le H.unit SphereSpectrum
    2 r s (s+125) (by omega) hr (V s (s+125) (by omega) (by omega))

/-- Late outgoing differentials from all relevant positive-stem classes
have zero actual target page.  This supplies the missing infinite tail of
an honest finite `ReachesPage 1000` record. -/
theorem late_outgoing_target_zero (V : SphereVanishingLine H)
    (s t : ℕ) (hn : 1 < (t : ℤ) - s) (hn' : (t : ℤ) - s ≤ 127)
    (r : ℤ) (hr : 1000 ≤ r) :
    Subsingleton ((sequence D .sphere).Page r ((s : ℤ)+r,(t : ℤ)+r-1)) := by
  exact adamsTowerInternal_page_subsingleton_of_le H.unit SphereSpectrum
    2 r ((s : ℤ)+r) ((t : ℤ)+r-1) (by omega) (by omega)
    (V _ _ (by omega) (by omega))

/-- A single finite-page common representative, together with eventual
zero outgoing targets, gives a single representative in the actual Z-infinity
intersection.  This conclusion intentionally allows an incoming boundary. -/
theorem permanent_cycle_of_reaches1000 (V : SphereVanishingLine H)
    (s t : ℕ) (hn : 1 < (t : ℤ) - s) (hn' : (t : ℤ) - s ≤ 127)
    (x : E2 H SphereSpectrum s t)
    (hx : ReachesPage (sequence D .sphere) 1000 (s,t) x) :
    IsPermanentCycle (sequence D .sphere) (s,t) x := by
  apply isPermanentCycle_of_reachesPage (sequence D .sphere) 1000
    (by change (2 : ℤ) ≤ 1000; omega) (s, t) x hx
  intro r hr
  haveI : Subsingleton ((sequence D .sphere).Page r
      (((s : ℤ), (t : ℤ)) + (sequence D .sphere).diffDeg r)) := by
    change Subsingleton ((sequence D .sphere).Page r ((s : ℤ) + r, (t : ℤ) + (r - 1)))
    simpa only [add_sub_assoc] using late_outgoing_target_zero (D := D) V s t hn hn' r hr
  ext y
  exact Subsingleton.elim _ _

/-- Nonzero permanence needs nonzero survival to E1000.  For s<1000 every
later incoming source has negative filtration; the actual tower vanishing
lemma excludes it.  E2 nonzero or `ReachesPage` alone is not this hypothesis. -/
theorem nonzero_permanent_of_survives1000 (V : SphereVanishingLine H)
    (s t : ℕ) (hs : s < 1000)
    (hn : 1 < (t : ℤ) - s) (hn' : (t : ℤ) - s ≤ 127)
    (x : E2 H SphereSpectrum s t)
    (hx : SurvivesTo (sequence D .sphere) 1000 (s,t) x) :
    NonzeroSurvival (sequence D .sphere) (s,t) x := by
  apply nonzeroSurvival_of_survivesTo (sequence D .sphere) 1000
    (by change (2 : ℤ) ≤ 1000; omega) (s, t) x hx
  · intro r hr
    haveI : Subsingleton ((sequence D .sphere).Page r
        (((s : ℤ), (t : ℤ)) + (sequence D .sphere).diffDeg r)) := by
      change Subsingleton ((sequence D .sphere).Page r ((s : ℤ) + r, (t : ℤ) + (r - 1)))
      simpa only [add_sub_assoc] using late_outgoing_target_zero (D := D) V s t hn hn' r hr
    ext y
    exact Subsingleton.elim _ _
  · intro r hr
    haveI : Subsingleton ((sequence D .sphere).Page r
        (((s : ℤ), (t : ℤ)) - (sequence D .sphere).diffDeg r)) :=
      adamsTowerInternal_page_subsingleton_of_negative H.unit SphereSpectrum
        r ((s : ℤ) - r) ((t : ℤ) - (r - 1)) (by omega)
    ext y
    change (sequence D .sphere).d r _ y = 0
    rw [Subsingleton.elim y 0, map_zero]

/-- Finite candidate/boundary reconstruction, including all linear
combinations.  These four claims require more than their four level-9000 rows:
use the complete basis and incoming staircase equations in the same Inputs. -/
theorem named_survive1000 (I : Inputs D L G) :
    Derived.Survival I.realization 1000 U ∧
    Derived.Survival I.realization 1000 correction ∧
    Derived.Survival I.realization 1000 P ∧
    Derived.Survival I.realization 1000 Q := by
  sorry

/-- The two depth-1 T rows refute zero and one excluded E3 target.
The conclusion requires reconstruction of the whole actual E3 target group
from the basis and d2 rows, not a claim that retained trials were exhaustive. -/
theorem d3_x_126_6_candidates (I : Inputs D L G) :
    Derived.Differential I.realization 3 (atom .x_126_6) d3Candidate ∨
      Derived.Differential I.realization 3 (atom .x_126_6) d3OtherCandidate := by
  sorry

/-- The six d4 root refutations, d4([1])=[3], and the reconstructed E4
source/target groups yield precisely this E5 component.  Nonzero is on E5. -/
theorem high125_component (I : Inputs D L G) :
    Derived.High125Component I.realization := by
  sorry

/-- This is a finite, record-derived assertion.  There are 38 staircase
rows in this range, all at levels 2,3,4,9996,9997,9998; certification must
prove their equations and local basis completeness before deriving this.
Empty components use `I.basis` on explicitly included empty degrees. -/
theorem stem125_e5_zero_finite (I : Inputs D L G)
    (s : ℕ) (hs : 26 ≤ s) (hs' : s ≤ 64) :
    Subsingleton ((sequence D .sphere).Page 5 (s,(s : ℤ)+125)) := by
  sorry

/-- The AF15 source is NONZERO on E5: the selected S0_ss3152 equation is
d5(h1*x124,14)=d0^2*[Delta Delta1 g]. Nonzero follows from reconstruction
of both E5 components, not from the equation alone. In particular it would
be false to extend `stem125_e5_zero_finite` down to all s>=15, s!=25. -/
theorem stem125_af15_nonzero_d5 (I : Inputs D L G) :
    ∃ (x : Page D .sphere 15 140) (y : Page D .sphere 20 144),
      I.realization.decode .sphere 15 140 [2] = some x ∧
      I.realization.decode .sphere 20 144 [0] = some y ∧
      HasNonzeroDifferential (sequence D .sphere) 5 (15,140) (20,144) x y := by
  sorry

/-- The AF18 target is NONZERO on E5: S0_ss3083/3391 give
d5(h1*x125,12,2)=d0^2*x97,10. It disappears on E6. Its synthetic lifts
require a separate torsion and higher-filtration argument at weight130;
they cannot be discarded by declaring the classical E5 component zero. -/
theorem stem125_af18_nonzero_incoming_d5 (I : Inputs D L G) :
    ∃ (x : Page D .sphere 13 139) (y : Page D .sphere 18 143),
      I.realization.decode .sphere 13 139 [0] = some x ∧
      I.realization.decode .sphere 18 143 [0] = some y ∧
      HasNonzeroDifferential (sequence D .sphere) 5 (13,139) (18,143) x y := by
  sorry

/-- The complete local sphere interface now has an explicit derivation goal
on the same interpretation.  No historical global comparison is substituted. -/
theorem sphere_facts (I : Inputs D L G) (V : SphereVanishingLine H) :
    Derived.SphereFacts I.realization := by
  sorry

/-- Source [0,3,4] is the sum of the three Cnu source rows; the target is
bottom-cell [3].  The top/bottom identifications remain the fields of I,
so the later Mahowald application uses exactly D.auxiliary.nuMap. -/
theorem cnu_d3 (I : Inputs D L G) : Derived.CnuDifferential I.realization := by
  sorry

/-- The finite Cnu incoming exclusion used at the end of Proposition 7.9.
It uses complete degrees, not just the single level-9000 target row. -/
theorem cnu_target_through5 (I : Inputs D L G) :
    Derived.CnuTargetThrough5 I.realization := by
  sorry

/-- Public route expressions are exactly the CSV expressions interpreted
through I. The target equality includes associativity of the actual cobar
product: the two files parenthesize h1*h4*x_109_12 differently. -/
theorem route_expression_labels (I : Inputs D L G) :
    I.realization.sphere 8 134 W = L.W ∧
    I.realization.sphere 10 134 U = L.U M ∧
    I.realization.sphere 14 139 T = L.target M := by
  sorry

/-- The high class used by the C tables and the high class used by the tmf
source have precisely the same product and factors, on this same M. -/
theorem high125_label (I : Inputs D L G) :
    I.realization.sphere 25 150 highClass = G.high125 M := by
  sorry

/-- The classical F26 vanishing needed to remove the indeterminacy of BMQ's
high125 detector.  Associated-graded convergence alone is insufficient:
Hausdorffness of this actual classical filtration is an explicit hypothesis.
It is a structural proof obligation, not an additional numerical A/C input. -/
theorem classical_stem125_filtration26_zero (I : Inputs D L G)
    (V : SphereVanishingLine H) (S : ClassicalSphereSeparated H)
    (a : HomotopyGroup (C := C) 125 SphereSpectrum)
    (ha : a ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 26 125) : a = 0 := by
  sorry

/-- Equality of two classical representatives follows only after proving
the higher-filtration indeterminacy zero.  The detection relation itself
remains associated-graded equality; it has not been replaced by strict equality. -/
theorem high125_detected_choice_unique (I : Inputs D L G)
    (V : SphereVanishingLine H) (S : ClassicalSphereSeparated H)
    (a b : HomotopyGroup (C := C) 125 SphereSpectrum)
    (ha : TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (I.realization.sphere 25 150 highClass) a)
    (hb : TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (I.realization.sphere 25 150 highClass) b) : a = b := by
  sorry
end
end KIP126.Computation.Route
