import Row2796D5Detector.Higher
namespace Row2796D5Detector.Target
open LinearCertificates PageTransitionCertificates ResolutionCertificates Higher
abbrev U := Homology (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming)
abbrev V := Homology (matrixOf targetT.k targetT.m targetT.outgoing) (matrixOf targetT.m targetT.n targetT.incoming)
def g : U → V := inducedMap targetCompatible
def zu : U := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def ue := homologyEquivalence _ _ targetS.comparison targetS_complete.2
def ve := homologyEquivalence _ _ targetT.comparison targetT_complete.2

theorem g_reflects_zero (x : U) (h : g x = zv) : x = zu := by
  have hh := congrArg ve.toCoordinates h
  have hx := ue.leftInverse x
  have hc : ue.toCoordinates x = zero := by
    generalize hv : ue.toCoordinates x = v at *
    rw [← hx] at hh
    funext i
    have hi : i = ⟨0,by decide⟩ := by apply Fin.ext; change i.val = 0; have h := i.isLt; change i.val < 1 at h; omega
    subst i
    have hj := congrFun hh ⟨0,by decide⟩
    change eval targetT.comparison.projection
      (eval targetMap (eval targetS.comparison.inclusion v)) ⟨0,by decide⟩ =
      eval targetT.comparison.projection zero ⟨0,by decide⟩ at hj
    have detect : ∀ v : Vec 1,
        eval targetT.comparison.projection
          (eval targetMap (eval targetS.comparison.inclusion v)) ⟨0,by decide⟩ = v 0 := by decide
    rw [detect, eval_zero] at hj
    exact hj
  have hz : ue.toCoordinates zu = zero := eval_zero _
  have hh := congrArg ue.fromCoordinates (hc.trans hz.symm)
  simpa only [ue.leftInverse] using hh


#print axioms g_reflects_zero
end Row2796D5Detector.Target
