import BranchReplayCertificates.GeneratedProductColumns
namespace BranchReplayCertificates.ProductBasisSemantics
open LinearCertificates NamedElementCertificates BasisSemantics Products
variable {R : Type*} [CommRing R] [CharP R 2]
def source21 : Fin 3 → Polynomial := fun j => ([[[ 530 ]],[[ 1,510 ]],[[ 0,0,0,500 ]]] : List Polynomial)[j.val]!
theorem allCoefficients21 (v : Nat → R)
    (hr3748 : ∀ r ∈ column3748.relations, evaluate v r = 0)
    (hr3749 : ∀ r ∈ column3749.relations, evaluate v r = 0)
    (hr3750 : ∀ r ∈ column3750.relations, evaluate v r = 0)
    (x : Vec 3) : interpret (fun i => evaluate v (c3748Basis i)) (eval matrix21_147 x) = evaluate v factor * interpret (fun j => evaluate v (source21 j)) x := by
  apply all_products v source21 c3748Basis matrix21_147 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have hh : j=0 ∨ j=1 ∨ j=2 := by omega
  rcases hh with h0 | h1 | h2
  · subst j
    exact (decoded_evaluate v c3748Basis _).symm.trans (c3748Semantic v hr3748)
  · subst j
    exact (decoded_evaluate v c3748Basis _).symm.trans (c3749Semantic v hr3749)
  · subst j
    exact (decoded_evaluate v c3748Basis _).symm.trans (c3750Semantic v hr3750)
def source25 : Fin 4 → Polynomial := fun j => ([[[ 559 ]],[[ 558 ]],[[ 13,13,13,13,51 ]],[[ 8,8,9,13,80 ]]] : List Polynomial)[j.val]!
theorem allCoefficients25 (v : Nat → R)
    (hr3992 : ∀ r ∈ column3992.relations, evaluate v r = 0)
    (hr3993 : ∀ r ∈ column3993.relations, evaluate v r = 0)
    (hr3994 : ∀ r ∈ column3994.relations, evaluate v r = 0)
    (hr3995 : ∀ r ∈ column3995.relations, evaluate v r = 0)
    (x : Vec 4) : interpret (fun i => evaluate v (c3992Basis i)) (eval matrix25_150 x) = evaluate v factor * interpret (fun j => evaluate v (source25 j)) x := by
  apply all_products v source25 c3992Basis matrix25_150 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have hh : j=0 ∨ j=1 ∨ j=2 ∨ j=3 := by omega
  rcases hh with h0 | h1 | h2 | h3
  · subst j
    exact (decoded_evaluate v c3992Basis _).symm.trans (c3992Semantic v hr3992)
  · subst j
    exact (decoded_evaluate v c3992Basis _).symm.trans (c3993Semantic v hr3993)
  · subst j
    exact (decoded_evaluate v c3992Basis _).symm.trans (c3994Semantic v hr3994)
  · subst j
    exact (decoded_evaluate v c3992Basis _).symm.trans (c3995Semantic v hr3995)
end BranchReplayCertificates.ProductBasisSemantics
