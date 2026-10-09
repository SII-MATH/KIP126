import ActualAdamsSystemBridge.Tail
import Fact762AssemblyCertificates.Assembly

namespace ActualAdamsIncomingBridge
open ManualInputObligations.Reference Fact762IncomingCertificates

def sourceDegree (r : Nat) (d : Bidegree) : Bidegree :=
  ⟨d.filtration-r,d.internal-(r : Int)+1⟩

theorem target_sourceDegree (r : Nat) (d : Bidegree) (h : r ≤ d.filtration) :
    AdamsTarget r (sourceDegree r d) = d := by
  apply Bidegree.ext
  · change d.filtration-r+r = d.filtration
    omega
  · change d.internal-(r : Int)+1+(r : Int)-1 = d.internal
    omega

/-- A proof-indexed actual source carrier. If its degree is legal, evaluation
at the unique proof is an equivalence with that carrier. If no proof exists,
this function type has exactly one element, without an extra zero tag. -/
def Source (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) : Type :=
  (r ≤ d.filtration) → (S.element r (sourceDegree r d)).carrier

def sourceZero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) : Source S r d :=
  fun _ => 0

def sourceEquiv (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (h : r ≤ d.filtration) : Source S r d ≃ (S.element r (sourceDegree r d)).carrier where
  toFun x := x h
  invFun x := fun _ => x
  left_inv _ := rfl
  right_inv _ := rfl

def differential (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : Source S r d) : (S.element r d).carrier :=
  if h : r ≤ d.filtration then
    pageCast S r (target_sourceDegree r d h) (S.differential r (sourceDegree r d) (x h))
  else 0

theorem cast_zero (S : AdamsSpectralSequence) (r : Nat) {e d : Bidegree} (h : e = d) :
    pageCast S r h (0 : (S.element r e).carrier) = 0 := by subst d; rfl

theorem cast_eq_transport (S : AdamsSpectralSequence) (r : Nat) {e d : Bidegree}
    (h : e = d) (x : (S.element r e).carrier) : pageCast S r h x = h ▸ x := by
  subst d
  rfl

theorem differential_zero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :
    differential S r d (sourceZero S r d) = S.zero r d := by
  by_cases h : r ≤ d.filtration
  · simp only [differential,dif_pos h,sourceZero,(S.differential r _).map_zero',cast_zero]
    exact (S.zero_is_zero r d).symm
  · simp only [differential,dif_neg h]
    exact (S.zero_is_zero r d).symm

theorem source_above_filtration (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (h : d.filtration < r) : Subsingleton (Source S r d) := by
  constructor
  intro x y
  funext impossible
  omega

theorem differential_image (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) :
    (∃ y, differential S r d y = x) ↔ PageBoundary S r d x := by
  constructor
  · rintro ⟨y,hy⟩
    by_cases h : r ≤ d.filtration
    · exact Or.inr ⟨sourceDegree r d,y h,target_sourceDegree r d h,
        by simpa only [differential,dif_pos h,cast_eq_transport] using hy⟩
    · exact Or.inl (by simpa only [differential,dif_neg h] using hy.symm)
  · rintro (hz | ⟨e,y,he,hy⟩)
    · exact ⟨sourceZero S r d,(differential_zero S r d).trans
        ((S.zero_is_zero r d).trans hz.symm)⟩
    · have h : r ≤ d.filtration := by
        have deg := congrArg Bidegree.filtration he
        change e.filtration+r = d.filtration at deg
        omega
      have eq : e = sourceDegree r d := adamsTarget_injective r
        (he.trans (target_sourceDegree r d h).symm)
      subst e
      refine ⟨fun _ => y, ?_⟩
      simpa only [differential,dif_pos h,cast_eq_transport] using hy

def incomingSystem (S : AdamsSpectralSequence) (d : Bidegree)
    (target : ∀ r, (S.element r d).carrier) : IncomingSystem where
  Source := fun r => Source S r d
  Target := fun r => (S.element r d).carrier
  zeroSource := fun r => sourceZero S r d
  zeroTarget := fun r => S.zero r d
  differential := fun r => differential S r d
  target := target
  preservesZero := fun r => differential_zero S r d

theorem hit_iff (S : AdamsSpectralSequence) (d : Bidegree)
    (target : ∀ r, (S.element r d).carrier) (r : Nat) :
    (incomingSystem S d target).HitAt r ↔ PageBoundary S r d (target r) :=
  differential_image S r d (target r)

theorem tail_zero (S : AdamsSpectralSequence) (d : Bidegree)
    (target : ∀ r, (S.element r d).carrier) (r : Nat) (above : d.filtration < r) :
    VanishesAt ((incomingSystem S d target).differential r)
      ((incomingSystem S d target).zeroTarget r) := by
  intro x
  change differential S r d x = S.zero r d
  rw [show x = sourceZero S r d from (source_above_filtration S r d above).elim _ _]
  exact differential_zero S r d

abbrev fact762Degree : Bidegree := ⟨14,139⟩

/-- These are local whole-map and full-source routes. The tail bound follows
from the actual target degree, rather than a supplied negative-tail premise. -/
structure Conditions (S : AdamsSpectralSequence)
    (target : ∀ r, (S.element r fact762Degree).carrier) where
  page2 : ¬ (incomingSystem S fact762Degree target).HitAt 2
  page3 : ¬ (incomingSystem S fact762Degree target).HitAt 3
  page4 : Fact762AssemblyCertificates.Page4Route (incomingSystem S fact762Degree target)
  page7 : Fact762AssemblyCertificates.Page7Route (incomingSystem S fact762Degree target)
  zeroMaps : ∀ r, ProvedZeroSourcePage r →
    VanishesAt ((incomingSystem S fact762Degree target).differential r)
      ((incomingSystem S fact762Degree target).zeroTarget r)

theorem only_six_or_twelve (S : AdamsSpectralSequence)
    (target : ∀ r, (S.element r fact762Degree).carrier)
    (conditions : Conditions S target) (r : Nat) (page : 2 ≤ r)
    (nonzero : target r ≠ S.zero r fact762Degree)
    (boundary : PageBoundary S r fact762Degree (target r)) : r = 6 ∨ r = 12 := by
  let sys := incomingSystem S fact762Degree target
  have hit : sys.HitAt r := (hit_iff S fact762Degree target r).mpr boundary
  by_cases above : 14 < r
  · exact False.elim (sys.no_hit_of_all_values r nonzero
      (tail_zero S fact762Degree target r above) hit)
  by_cases allowed : r = 6 ∨ r = 12
  · exact allowed
  have cases : r = 2 ∨ r = 3 ∨ r = 4 ∨ r = 7 ∨ ProvedZeroSourcePage r := by
    unfold ProvedZeroSourcePage
    omega
  rcases cases with eq | eq | eq | eq | eq
  · subst r; exact False.elim (conditions.page2 hit)
  · subst r; exact False.elim (conditions.page3 hit)
  · subst r; exact False.elim (sys.no_hit_of_all_values 4 nonzero conditions.page4.vanishes hit)
  · subst r; exact False.elim (sys.no_hit_of_all_values 7 nonzero conditions.page7.vanishes hit)
  · exact False.elim (sys.no_hit_of_all_values r nonzero (conditions.zeroMaps r eq) hit)

theorem no_hit_elsewhere (S : AdamsSpectralSequence)
    (target : ∀ r, (S.element r fact762Degree).carrier)
    (conditions : Conditions S target) (r : Nat) (page : 2 ≤ r)
    (nonzero : target r ≠ S.zero r fact762Degree) (notSix : r ≠ 6) (notTwelve : r ≠ 12) :
    ¬ PageBoundary S r fact762Degree (target r) := by
  intro h
  exact (only_six_or_twelve S target conditions r page nonzero h).elim notSix notTwelve

#print axioms sourceEquiv
#print axioms differential_image
#print axioms hit_iff
#print axioms tail_zero
#print axioms only_six_or_twelve
#print axioms no_hit_elsewhere
end ActualAdamsIncomingBridge
