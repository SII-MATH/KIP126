import Fact764TrajectoryAudit.MapComparison
namespace Fact764TrajectoryAudit.C2Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates MapComparison
abbrev CS := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev SS := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev CT := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev ST := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : CS → SS := inducedMap compatible
def ft : CT → ST := inducedMap uppercompatible

def sourceClass : CS := Quot.mk _ (⟨fun i => i.val == 1, by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing) (fun j => j.val == 1) i = false from by decide) i⟩ : Cycle _)
def requestedClass : SS := Quot.mk _ (⟨fun i => i.val == 1, by
  funext i
  exact (show ∀ i, eval (matrixOf target.k target.m target.outgoing) (fun j => j.val == 1) i = false from by decide) i⟩ : Cycle _)
def zeroC : CT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zeroS : ST := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem source_image : f sourceClass = requestedClass := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => i.val == 1)) (fun i => i.val == 1))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun i => i.val == 1)) (fun i => i.val == 1) i from by decide) i

theorem target_map_zero : ft zeroC = zeroS := by
  apply Quot.sound
  change InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) (add (eval upperMiddleMap zero) zero)
  rw [eval_zero, add_zero]
  exact ⟨zero,eval_zero _⟩

/-- Source-cycle evidence is an actual quotient equation, not a sentinel. -/
theorem requested_zero_from_source (dc : CS → CT) (ds : SS → ST)
    (sourceCycle : dc sourceClass = zeroC)
    (naturality : ∀ x, ds (f x) = ft (dc x)) : ds requestedClass = zeroS := by
  rw [← source_image, naturality, sourceCycle, target_map_zero]

/-- A strictly weaker checkable input is membership of a represented source
value in the kernel of the induced target map; it need not be zero itself. -/
theorem requested_zero_from_target_kernel (dc : CS → CT) (ds : SS → ST)
    (naturality : ∀ x, ds (f x) = ft (dc x))
    (candidate : Cycle (matrixOf upperSource.k upperSource.m upperSource.outgoing))
    (represents : dc sourceClass = Quot.mk _ candidate)
    (kernel : InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
      (eval upperMiddleMap candidate.val)) : ds requestedClass = zeroS := by
  rw [← source_image, naturality, represents]
  apply Quot.sound
  change InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
    (add (eval upperMiddleMap candidate.val) zero)
  simpa only [add_zero] using kernel
-- The actual target map has rank one: only local0 contributes, to local1.
-- Hence four of the eight possible source target vectors already lie in its kernel.
theorem target_kernel_iff (v : Vec 3) :
    InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
      (eval upperMiddleMap v) ↔ v 0 = false := by
  constructor
  · rintro ⟨w,hw⟩
    have h := congrFun hw ⟨1,by decide⟩
    change false = xor (v 0) false at h
    simpa using h.symm
  · intro hv
    refine ⟨zero, ?_⟩
    rw [eval_zero]
    change (zero : Vec 3) = eval upperMiddleMap v
    funext i
    have hi : i = 0 ∨ i = 1 ∨ i = 2 := by omega
    rcases hi with hi|hi|hi
    all_goals subst i
    · rfl
    · change false = xor (v 0) false
      simp [hv]
    · rfl

end Fact764TrajectoryAudit.C2Naturality
