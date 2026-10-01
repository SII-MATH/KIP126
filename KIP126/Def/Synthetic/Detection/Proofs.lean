import KIP126.Def.Synthetic.Detection.Predicates

/-! General associated-graded consequences. These are proof obligations,
not new assumptions about a specified class or a freely chosen filtration. -/
namespace KIP126.Synthetic.SpectralSequence
open CategoryTheory KIP126.StableHomotopy KIP126.Synthetic.Context
open KIP126.Core.SpectralSequence
universe u v
variable {Syn : Type u} [SyntheticCategory.{u,v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Syn} {unit : S00 ⟶ H} {F : SyntheticAdamsFamily Syn} {X : Syn}
  (c : TowerConvergence unit F X) (i : Tridegree)

/-- Addition is taken in the actual homotopy group and in the same E₂
page. Its compatibility only asserts equality of associated-graded terms. -/
theorem detects_add
    {x y : (F.obj X).E₂ i} {a b : BiHom (i.2.1-i.1) i.2.2 X}
    (ha : Detects c i x a) (hb : Detects c i y b) :
    Detects c i (x+y) (a+b) := by
  sorry

/-- A zero leading E₂ class detects only a higher-filtration class, not
necessarily the zero homotopy class. -/
theorem detects_zero_filtration
    {a : BiHom (i.2.1-i.1) i.2.2 X} (ha : Detects c i 0 a) :
    FiltrationAtLeast unit (i.1+1) a := by
  sorry

/-- Equality of leading terms fixes only the associated graded: two
representatives differ by one higher step of the SAME actual filtration. -/
theorem detects_sub_filtration
    {x : (F.obj X).E₂ i}
    {a b : BiHom (i.2.1-i.1) i.2.2 X}
    (ha : Detects c i x a) (hb : Detects c i x b) :
    FiltrationAtLeast unit (i.1+1) (a-b) := by
  sorry

/-- A label representing zero at infinity detects a class one filtration
higher. Nonzero E2 is deliberately irrelevant to this implication. -/
theorem detects_zero_infinity_filtration
    {x : (F.obj X).E₂ i} {a : BiHom (i.2.1-i.1) i.2.2 X}
    (ha : Detects c i x a)
    (hx : HasInfinityRepresentative (F.obj X) 2 i x 0) :
    FiltrationAtLeast unit (i.1+1) a := by
  sorry
end KIP126.Synthetic.SpectralSequence
