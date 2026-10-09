import PageTransitionCertificates.Trajectory
namespace NamedPageComparison.FiniteFaithfulness
open LinearCertificates PageTransitionCertificates

/-- For the actual finite quotient, zero reflection is a theorem. The input
must be a cycle; no claim is made for arbitrary elements of the chain space. -/
theorem quotient_zero_iff_boundary (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) (hc : HomologyComparison outgoing incoming c)
    (x : Cycle outgoing) :
    (Quot.mk _ x : Homology outgoing incoming) =
      Quot.mk _ (⟨zero, eval_zero outgoing⟩ : Cycle outgoing) ↔
      InImage incoming x.val := by
  constructor
  · intro he
    have hp := congrArg (homologyEquivalence outgoing incoming c hc).toCoordinates he
    change eval c.projection x.val = eval c.projection zero at hp
    rw [eval_zero] at hp
    exact (projection_zero_iff_boundary outgoing incoming c hc x.val x.property).mp hp
  · intro hb
    apply Quot.sound
    change InImage incoming (add x.val zero)
    simpa only [ResolutionCertificates.add_zero] using hb

/-- A linear map descends if cycles go to cycles and boundary differences go
to boundaries. These conditions concern all vectors, not only named classes. -/
def descends (sourceOut : Matrix k m) (sourceIn : Matrix m n)
    (targetOut : Matrix k' m') (targetIn : Matrix m' n') (f : Matrix m' m)
    (cycles : ∀ x, InKernel sourceOut x → InKernel targetOut (eval f x))
    (boundaries : ∀ x, InImage sourceIn x → InImage targetIn (eval f x)) :
    Homology sourceOut sourceIn → Homology targetOut targetIn :=
  Quot.lift (fun x : Cycle sourceOut =>
    Quot.mk _ (⟨eval f x.val, cycles x.val x.property⟩ : Cycle targetOut)) (by
      intro x y hxy
      apply Quot.sound
      change InImage targetIn (add (eval f x.val) (eval f y.val))
      rw [← eval_add]
      exact boundaries _ hxy)

end NamedPageComparison.FiniteFaithfulness
