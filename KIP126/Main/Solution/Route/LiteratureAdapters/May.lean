import KIP126.Def.Kervaire.Inputs.Literature.May

namespace KIP126.Main.Solution.Route.LiteratureAdapters
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context KIP126.Literature.Route
universe u v z
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- Elementwise consequence of the exact signed TC3 diagram. The same
left/right suspension witnesses determine both connecting homomorphisms. -/
theorem may_signed_boundary (I : MayInput Syn)
    (T U : HoCofiberSequence (C := Syn)) (n : ℤ)
    (a : HomotopyGroup n (T.X ⊗ U.Z)) (b : HomotopyGroup n (T.Y ⊗ U.Y))
    (hab : inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b) :
    letI := I.leftShift; letI := I.rightShift
    letI := I.leftExact; letI := I.rightExact
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      connectingHomomorphism (U.map (tensorLeft T.X)) n a =
        -connectingHomomorphism (T.map (tensorRight U.X)) n c := by
  sorry

/-- The local sign disappears only after a specified additive projection
whose target has exponent two. This does not declare all homotopy groups
to be F₂ vector spaces. In the Mahowald application the projection and
its domain/filtration must be supplied by the actual page construction. -/
theorem may_boundary_after_exponent_two_projection (I : MayInput Syn)
    (T U : HoCofiberSequence (C := Syn)) (n : ℤ)
    (a : HomotopyGroup n (T.X ⊗ U.Z)) (b : HomotopyGroup n (T.Y ⊗ U.Y))
    {A : Type z} [AddCommGroup A]
    (q : HomotopyGroup (n-1) (T.X ⊗ U.X) →+ A)
    (hA : ∀ x : A, x + x = 0)
    (hab : inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b) :
    letI := I.leftShift; letI := I.rightShift
    letI := I.leftExact; letI := I.rightExact
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      q (connectingHomomorphism (U.map (tensorLeft T.X)) n a) =
        q (connectingHomomorphism (T.map (tensorRight U.X)) n c) := by
  sorry
end KIP126.Main.Solution.Route.LiteratureAdapters
