import Fact713C2Row3143.Next
namespace Fact713C2Row3143.InjectiveNext
open LinearCertificates PageTransitionCertificates ResolutionCertificates MapComparison
abbrev CT := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev NT := Homology (matrixOf Next.next.k Next.next.m Next.next.outgoing) (matrixOf Next.next.m Next.next.n Next.next.incoming)
def ce := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2
def ne := homologyEquivalence _ _ Next.next.comparison Next.next_complete.2
def following : Matrix 3 2 := matrixOf 3 2 [false,false,true,false,false,true]
def zeroC : CT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zeroN : NT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem following_reflects_zero (v : Vec 2) (h : eval following v = zero) : v = zero := by
  funext i
  have hi : i = 0 ∨ i = 1 := by omega
  rcases hi with hi|hi
  · subst i
    have h1 := congrFun h ⟨1,by decide⟩
    simpa [following, matrixOf, eval, dot, zero] using h1
  · subst i
    have h2 := congrFun h ⟨2,by decide⟩
    simpa [following, matrixOf, eval, dot, zero] using h2

theorem following_reflects_quotient_zero (nextD : CT → NT)
    (matrixMeaning : ∀ x, ne.toCoordinates (nextD x) = eval following (ce.toCoordinates x))
    (x : CT) (hx : nextD x = zeroN) : x = zeroC := by
  have h := matrixMeaning x
  rw [hx] at h
  have hz : ce.toCoordinates x = zero := by
    apply following_reflects_zero
    change eval Next.next.comparison.projection zero = eval following (ce.toCoordinates x) at h
    rw [eval_zero] at h
    exact h.symm
  have hz0 : ce.toCoordinates zeroC = zero := eval_zero _
  have he := congrArg ce.fromCoordinates (hz.trans hz0.symm)
  simpa only [ce.leftInverse] using he
end Fact713C2Row3143.InjectiveNext
