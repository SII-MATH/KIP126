import NamedPageComparison.Row2858.Derivation
namespace NamedPageComparison.Row2858.Assemble
open LinearCertificates NamedElementCertificates
open BranchReplayCertificates.BasisSemantics Derivation
variable {R : Type*} [CommRing R] [CharP R 2]

/-- Three actual products, with independent graded-model and valuation premises.
The matrix semantics converts a derived ring equality to the whole boundary
image through an explicit page-realization comparison. -/
theorem factor_compatibility (D : GradedDerivation R) (v : Nat → R)
    (a b : Degree) (factor source : Polynomial) (target : Fin m → Polynomial)
    (boundary : Matrix m n) (matrix : Matrix m 5)
    (factorDegree : D.degree a (evaluate v factor))
    (sourceDegree : D.degree b (evaluate v source))
    (annihilates : evaluate v factor * evaluate v source = 0)
    (factorCycle : D.d (evaluate v factor) = 0)
    (candidate : Vec 5) (candidateBasis : Fin 5 → Polynomial)
    (represents : D.d (evaluate v source) =
      interpret (fun i => evaluate v (candidateBasis i)) candidate)
    (multiplication : ∀ x : Vec 5,
      interpret (fun i => evaluate v (target i)) (eval matrix x) =
      evaluate v factor * interpret (fun i => evaluate v (candidateBasis i)) x)
    (faithful : BoundaryFaithful (fun i => evaluate v (target i)) boundary) :
    InImage boundary (eval matrix candidate) := by
  apply (faithful _).mp
  rw [multiplication, ← represents]
  exact annihilator_rule D a b _ _ factorDegree sourceDegree annihilates factorCycle

-- The actual column2 is the named source h0^2*x126,8,3, and each factor kills it.
-- These valuation equalities use the checked relation certificates, not logs.
theorem g_annihilates (v : Nat → R)
    (hr : ∀ r ∈ g.column2857.relations, evaluate v r = 0) :
    evaluate v g.factor * evaluate v [[0,0,394]] = 0 := by
  have h := equalModulo_evaluate v _ _ _ g.column2857_product hr
  rw [evaluate_multiply] at h
  exact h

theorem h1_annihilates (v : Nat → R)
    (hr : ∀ r ∈ h1.column2857.relations, evaluate v r = 0) :
    evaluate v h1.factor * evaluate v [[0,0,394]] = 0 := by
  have h := equalModulo_evaluate v _ _ _ h1.column2857_product hr
  rw [evaluate_multiply] at h
  exact h

theorem h3_annihilates (v : Nat → R)
    (hr : ∀ r ∈ h3.column2857.relations, evaluate v r = 0) :
    evaluate v h3.factor * evaluate v [[0,0,394]] = 0 := by
  have h := equalModulo_evaluate v _ _ _ h3.column2857_product hr
  rw [evaluate_multiply] at h
  exact h

/-- The supplied multiplication maps must be the actual checked matrices.
The faithfulness hypotheses are independent comparisons with complete finite
boundary images; cycle hypotheses are explicit and can use H1Zero/empty targets. -/
theorem row2858_from_derivation (D : GradedDerivation R) (v : Nat → R)
    (sourceDegree : D.degree (10,136) (evaluate v [[0,0,394]]))
    (factorDegrees : D.degree (4,24) (evaluate v g.factor) ∧
      D.degree (1,2) (evaluate v h1.factor) ∧ D.degree (1,8) (evaluate v h3.factor))
    (factorCycles : D.d (evaluate v g.factor) = 0 ∧
      D.d (evaluate v h1.factor) = 0 ∧ D.d (evaluate v h3.factor) = 0)
    (rg : ∀ r ∈ g.column2857.relations, evaluate v r = 0)
    (r1 : ∀ r ∈ h1.column2857.relations, evaluate v r = 0)
    (r3 : ∀ r ∈ h3.column2857.relations, evaluate v r = 0)
    (candidate : Vec 5)
    (represents : D.d (evaluate v [[0,0,394]]) =
      interpret (fun i => evaluate v (Semantics_g.source13 i)) candidate)
    (mg : ∀ x : Vec 5, interpret (fun i => evaluate v (Semantics_g.c3008Basis i))
      (eval g.matrix13_138 x) = evaluate v g.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x)
    (m1 : ∀ x : Vec 5, interpret (fun i => evaluate v (Semantics_h1.c3008Basis i))
      (eval h1.matrix13_138 x) = evaluate v h1.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x)
    (m3 : ∀ x : Vec 5, interpret (fun i => evaluate v (Semantics_h3.c3008Basis i))
      (eval h3.matrix13_138 x) = evaluate v h3.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x)
    (fg : BoundaryFaithful (fun i => evaluate v (Semantics_g.c3008Basis i)) boundariesG)
    (f1 : BoundaryFaithful (fun i => evaluate v (Semantics_h1.c3008Basis i)) boundariesH1)
    (f3 : BoundaryFaithful (fun i => evaluate v (Semantics_h3.c3008Basis i)) boundariesH3) :
    InImage earlierTarget candidate := by
  apply all_compatible_candidates_are_boundaries candidate
  exact ⟨factor_compatibility D v (4,24) (10,136) _ _ _ _ _ factorDegrees.1
    sourceDegree (g_annihilates v rg) factorCycles.1 candidate _ represents mg fg,
    factor_compatibility D v (1,2) (10,136) _ _ _ _ _ factorDegrees.2.1
    sourceDegree (h1_annihilates v r1) factorCycles.2.1 candidate _ represents m1 f1,
    factor_compatibility D v (1,8) (10,136) _ _ _ _ _ factorDegrees.2.2
    sourceDegree (h3_annihilates v r3) factorCycles.2.2 candidate _ represents m3 f3⟩
theorem actual_multiplication_g (v : Nat → R)
    (r3008 : ∀ r ∈ g.column3008.relations, evaluate v r = 0)
    (r3009 : ∀ r ∈ g.column3009.relations, evaluate v r = 0)
    (r3010 : ∀ r ∈ g.column3010.relations, evaluate v r = 0)
    (r3011 : ∀ r ∈ g.column3011.relations, evaluate v r = 0)
    (r3012 : ∀ r ∈ g.column3012.relations, evaluate v r = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (Semantics_g.c3008Basis i))
      (eval g.matrix13_138 x) = evaluate v g.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x := by
  exact Semantics_g.allCoefficients13 v r3008 r3009 r3010 r3011 r3012 x

theorem actual_multiplication_h1 (v : Nat → R)
    (r3008 : ∀ r ∈ h1.column3008.relations, evaluate v r = 0)
    (r3009 : ∀ r ∈ h1.column3009.relations, evaluate v r = 0)
    (r3010 : ∀ r ∈ h1.column3010.relations, evaluate v r = 0)
    (r3011 : ∀ r ∈ h1.column3011.relations, evaluate v r = 0)
    (r3012 : ∀ r ∈ h1.column3012.relations, evaluate v r = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (Semantics_h1.c3008Basis i))
      (eval h1.matrix13_138 x) = evaluate v h1.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x := by
  exact Semantics_h1.allCoefficients13 v r3008 r3009 r3010 r3011 r3012 x

theorem actual_multiplication_h3 (v : Nat → R)
    (r3008 : ∀ r ∈ h3.column3008.relations, evaluate v r = 0)
    (r3009 : ∀ r ∈ h3.column3009.relations, evaluate v r = 0)
    (r3010 : ∀ r ∈ h3.column3010.relations, evaluate v r = 0)
    (r3011 : ∀ r ∈ h3.column3011.relations, evaluate v r = 0)
    (r3012 : ∀ r ∈ h3.column3012.relations, evaluate v r = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (Semantics_h3.c3008Basis i))
      (eval h3.matrix13_138 x) = evaluate v h3.factor *
        interpret (fun i => evaluate v (Semantics_g.source13 i)) x := by
  exact Semantics_h3.allCoefficients13 v r3008 r3009 r3010 r3011 r3012 x
end NamedPageComparison.Row2858.Assemble
