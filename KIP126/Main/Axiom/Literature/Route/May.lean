import KIP126.Main.Axiom.Literature.Route.Classical

namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context
universe u v
variable (Syn : Type u) [SyntheticCategory.{u, v} Syn]

/-- The part of May's compatible tensor-triangulation consumed by the
route, on its SAME existing synthetic tensor product. The suspension
comparisons are explicit witnesses, not new tensor products or triangles.
The law is stronger than tensor exactness alone: May (2001), TC3 and
Lemma 4.6 (author PDF, p.14); LWX `lem:452d218c` is its elementwise form.
No claim is made that arbitrary choices of CommShift satisfy this law. -/
structure MayInput where
  leftShift : ∀ X : Syn, (tensorLeft X).CommShift ℤ
  rightShift : ∀ X : Syn, (tensorRight X).CommShift ℤ
  leftExact : ∀ X : Syn, letI := leftShift X; (tensorLeft X).IsTriangulated
  rightExact : ∀ X : Syn, letI := rightShift X; (tensorRight X).IsTriangulated
  boundary : letI := leftShift; letI := rightShift
    letI := leftExact; letI := rightExact
    KIP126.Stable.MaySmashBoundary (C := Syn)
end KIP126.Literature.Route
