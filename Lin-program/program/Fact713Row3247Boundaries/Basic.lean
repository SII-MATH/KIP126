import Fact713Generator30P2.Assembly

namespace Fact713Row3247Boundaries
open ManualInputObligations.Reference

def pageTransport (T : AdamsSpectralSequence) {r q : Nat} (same : r = q) (d : Bidegree) :
    (T.element r d).carrier → (T.element q d).carrier := same ▸ id

/-- Full actual representatives from E3 to a specified later boundary.
These are mathematical interpretation data, not a decoding of a level tag. -/
structure LaterBoundary (T : AdamsSpectralSequence) (pages : CertifiedAdamsPages T)
    (last : Nat) (sourceDegree targetDegree : Bidegree) where
  afterThree : 3 < last
  targetDegree_eq : AdamsTarget last sourceDegree = targetDegree
  boundarySource : (T.element last sourceDegree).carrier
  cycle : ∀ r, 3 ≤ r → r < last → PageCycle T r targetDegree
  transition : ∀ r (low : 3 ≤ r) (high : r + 1 < last),
    (pages.nextPage r targetDegree).toNext
      (Quotient.mk _ (cycle r low (by omega))) =
      (cycle (r+1) (by omega) high).val
  endpoint : pageTransport T (by omega : last-1+1 = last) targetDegree
      ((pages.nextPage (last-1) targetDegree).toNext
        (Quotient.mk _ (cycle (last-1) (by omega) (by omega)))) =
    pageCast T last targetDegree_eq (T.differential last sourceDegree boundarySource)

def LaterBoundary.first {T : AdamsSpectralSequence} {pages : CertifiedAdamsPages T}
    {last : Nat} {s t : Bidegree} (B : LaterBoundary T pages last s t) : PageCycle T 3 t :=
  B.cycle 3 (by decide) B.afterThree

def p2Boundary (T : AdamsSpectralSequence) (pages : CertifiedAdamsPages T)
    (B : LaterBoundary T pages 4 ⟨14,82⟩ ⟨18,85⟩) :
    Fact713Generator30P2.Detection.BoundaryRepresentative T pages where
  source := B.boundarySource
  representative := B.first
  next_is_boundary := by
    have h := B.endpoint
    change (pages.nextPage 3 ⟨18,85⟩).toNext (Quotient.mk _ B.first) = _ at h
    exact h.trans (show pageCast T 4 B.targetDegree_eq
      (T.differential 4 ⟨14,82⟩ B.boundarySource) =
      T.differential 4 ⟨14,82⟩ B.boundarySource from by rfl)

theorem bound_element_cycle (T : AdamsSpectralSequence) (pages : CertifiedAdamsPages T)
    (last : Nat) (s t : Bidegree) (B : LaterBoundary T pages last s t)
    (x : (T.element 3 t).carrier) (binding : x = B.first.val) :
    T.differential 3 t x = 0 :=
  (congrArg (T.differential 3 t) binding).trans
    (B.first.property.trans (T.zero_is_zero _ _))

#print axioms p2Boundary
#print axioms bound_element_cycle
end Fact713Row3247Boundaries
