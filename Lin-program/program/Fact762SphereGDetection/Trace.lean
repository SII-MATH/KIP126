import Fact762SphereGDetection.ProductDescent

namespace Fact762SphereGDetection.Trace
open ManualInputObligations ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge

/-- Every element of a genuine later page has a same-input E2 trace. -/
theorem exists_initial (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (d : Bidegree) (n : Nat) (x : (S.element (n+2) d).carrier) :
    ∃ x0, Nonempty (ManualInputObligations.Trace S pages d (n+2) x0 x) := by
  induction n with
  | zero => exact ⟨x,⟨.start x⟩⟩
  | succ n ih =>
    obtain ⟨q,hq⟩ := (pageEquiv pages (r := n+2) (degree := d)).surjective x
    obtain ⟨y,rfl⟩ := Quotient.exists_rep q
    obtain ⟨x0,⟨trace⟩⟩ := ih y.val
    exact ⟨x0,⟨hq ▸ ManualInputObligations.Trace.step trace y.property⟩⟩

theorem zero_endpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (d : Bidegree)
    {r : Nat} {x0 : (S.element 2 d).carrier} {x : (S.element r d).carrier}
    (trace : ManualInputObligations.Trace S pages d r x0 x) (initial : x0 = 0) : x = 0 := by
  induction trace with
  | start _ => exact initial
  | @step q initialValue y prior cycle ih =>
    have hz := ih initial
    have same : (⟨y,cycle⟩ : PageCycle S q d) = ActualAdamsSystemBridge.zeroCycle S q d :=
      Subtype.ext hz
    exact (congrArg (fun z : PageCycle S q d =>
      (pages.nextPage q d).toNext (Quotient.mk _ z)) same).trans
      ((zeros q d).trans (S.zero_is_zero _ _))

/-- An E2 annihilator kills every later element, including an unknown d5(g).
The later representative is constructed by quotient surjectivity. -/
theorem annihilator (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (a b : Bidegree) (n : Nat)
    (x0 : (S.element 2 b).carrier) (x : (S.element (n+2) b).carrier)
    (trace : ManualInputObligations.Trace S pages b (n+2) x0 x)
    (initial : ∀ y0, P.product.multiply 2 a b y0 x0 = 0)
    (transitions : ∀ q, 2 ≤ q → q < n+2 → Transition S pages P q a b)
    (y : (S.element (n+2) a).carrier) : P.product.multiply (n+2) a b y x = 0 := by
  obtain ⟨y0,⟨yt⟩⟩ := exists_initial S pages a n y
  exact zero_endpoint S pages zeros (Bidegree.add a b)
    (trace_product S pages P a b yt trace transitions) (initial y0)

#print axioms exists_initial
#print axioms zero_endpoint
#print axioms annihilator
end Fact762SphereGDetection.Trace
