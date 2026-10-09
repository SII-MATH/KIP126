import Row2796D4Detector.Comparison
namespace Row2796D4Detector.Target
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison
abbrev U := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev V := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
def g : U → V := inducedMap compatible
def zu : U := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def ue := homologyEquivalence _ _ source.comparison source_complete.2
def ve := homologyEquivalence _ _ target.comparison target_complete.2

theorem reflects_zero (x : U) (h : g x = zv) : x = zu := by
  have hh := congrArg ve.toCoordinates h
  have hx := ue.leftInverse x
  have hc : ue.toCoordinates x = zero := by
    generalize hv : ue.toCoordinates x = v at *
    rw [← hx] at hh
    have reflect : ∀ v : Vec 1,
        (∀ i, eval target.comparison.projection
          (eval centerMap (eval source.comparison.inclusion v)) i = false) →
        ∀ i, v i = false := by decide
    funext i
    apply reflect v _ i
    intro j
    have hj := congrFun hh j
    change eval target.comparison.projection
      (eval centerMap (eval source.comparison.inclusion v)) j =
      eval target.comparison.projection zero j at hj
    simpa only [eval_zero,zero] using hj
  have hz : ue.toCoordinates zu = zero := eval_zero _
  have hh := congrArg ue.fromCoordinates (hc.trans hz.symm)
  simpa only [ue.leftInverse] using hh

/-- The target detector is unconditional for the displayed finite matrices.
Any application to an actual d4 retains its local naturality assumptions. -/
theorem differential_zero {S T : Type} (f : S → T) (named : S) (zt : T)
    (source_annihilated : f named = zt) (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv)
    (naturality : ∀ x, dt (f x) = g (ds x)) : ds named = zu := by
  apply reflects_zero
  rw [← naturality, source_annihilated, zeroPreserving]
#print axioms reflects_zero
end Row2796D4Detector.Target
