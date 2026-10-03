import KIP126.Challenge2.Route.Literature.May

namespace KIP126.Interface.Challenge.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.Synthetic.Context
open KIP126.Literature.Route
universe u v w
noncomputable section
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- The elementwise May boundary calculation keeps the source sign.
The pushpull lift supplies one common representative for all three arrows. -/
theorem may_signed_boundary_of_source (B : MayContext Syn)
    (hB : MaySourceResults Syn B) : B.SignedBoundary := by
  sorry

/-- Remove the sign only after an explicit additive projection whose image
has exponent two. This does not assert exponent two for actual homotopy
classes merely because their Adams E₂ coordinates are mod two. -/
theorem may_boundary_projected_of_exponent_two (B : MayContext Syn)
    (hB : MaySourceResults Syn B) (T U : HoCofiberSequence (C := Syn))
    (n : ℤ) (a : HomotopyGroup n (T.X ⊗ U.Z))
    (b : HomotopyGroup n (T.Y ⊗ U.Y))
    (hab : inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b)
    {G : Type w} [AddCommGroup G]
    (q : HomotopyGroup (n - 1) (T.X ⊗ U.X) →+ G)
    (htwo : ∀ x, q x + q x = 0) :
    letI := B.leftShift; letI := B.rightShift
    letI := B.leftExact; letI := B.rightExact
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      q (connectingHomomorphism (U.map (tensorLeft T.X)) n a) =
        q (connectingHomomorphism (T.map (tensorRight U.X)) n c) := by
  sorry

end
end KIP126.Interface.Challenge.Literature.Route
