import Row2925EtaD4.Products
import BranchReplayCertificates.BasisSemantics
namespace Row2925EtaD4.ProductSemantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]
def Products.source6_134 : Fin 4 → Polynomial := fun i => ([[[399]],[[398]],[[2,340]],[[0,378]]] : List Polynomial)[i.val]!
def Products.target6_134 : Fin 1 → Polynomial := fun i => ([[[2,368]]] : List Polynomial)[i.val]!
theorem Products.decode2711 : EqualModuloRelations []
    (decodedBasisVector Products.target6_134 (fun i => Products.matrix6_134 i ⟨0,by decide⟩)) Products.column2711.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2711 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2711.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target6_134 i)) (fun i => Products.matrix6_134 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source6_134 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2711 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2711_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2712 : EqualModuloRelations []
    (decodedBasisVector Products.target6_134 (fun i => Products.matrix6_134 i ⟨1,by decide⟩)) Products.column2712.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2712 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2712.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target6_134 i)) (fun i => Products.matrix6_134 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source6_134 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2712 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2712_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2713 : EqualModuloRelations []
    (decodedBasisVector Products.target6_134 (fun i => Products.matrix6_134 i ⟨2,by decide⟩)) Products.column2713.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2713 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2713.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target6_134 i)) (fun i => Products.matrix6_134 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source6_134 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2713 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2713_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2714 : EqualModuloRelations []
    (decodedBasisVector Products.target6_134 (fun i => Products.matrix6_134 i ⟨3,by decide⟩)) Products.column2714.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2714 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2714.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target6_134 i)) (fun i => Products.matrix6_134 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source6_134 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2714 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2714_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors6_134 (v : Nat → R)
    (hr2711 : ∀ r ∈ Products.column2711.relations, evaluate v r = 0)
    (hr2712 : ∀ r ∈ Products.column2712.relations, evaluate v r = 0)
    (hr2713 : ∀ r ∈ Products.column2713.relations, evaluate v r = 0)
    (hr2714 : ∀ r ∈ Products.column2714.relations, evaluate v r = 0)
    (x : Vec 4) :
    interpret (fun i => evaluate v (Products.target6_134 i)) (eval Products.matrix6_134 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source6_134 j)) x := by
  apply all_products v Products.source6_134 Products.target6_134 Products.matrix6_134 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with h0 | h1 | h2 | h3
  · subst j
    exact Products.semantic2711 v hr2711
  · subst j
    exact Products.semantic2712 v hr2712
  · subst j
    exact Products.semantic2713 v hr2713
  · subst j
    exact Products.semantic2714 v hr2714
#print axioms Products.all_vectors6_134
def Products.source8_135 : Fin 7 → Polynomial := fun i => ([[[415]],[[2,353]],[[2,69,75]],[[0,397]],[[0,396]],[[0,0,377]],[[0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def Products.target8_135 : Fin 3 → Polynomial := fun i => ([[[2,376]],[[1,415]],[[0,3,68,69]]] : List Polynomial)[i.val]!
theorem Products.decode2794 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨0,by decide⟩)) Products.column2794.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2794 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2794.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2794 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2794_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2795 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨1,by decide⟩)) Products.column2795.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2795 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2795.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2795 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2795_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2796 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨2,by decide⟩)) Products.column2796.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2796 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2796.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2796 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2796_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2797 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨3,by decide⟩)) Products.column2797.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2797 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2797.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2797 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2797_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2798 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨4,by decide⟩)) Products.column2798.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2798 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2798.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2798 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2798_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2799 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨5,by decide⟩)) Products.column2799.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2799 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2799.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨5,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨5,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2799 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2799_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2800 : EqualModuloRelations []
    (decodedBasisVector Products.target8_135 (fun i => Products.matrix8_135 i ⟨6,by decide⟩)) Products.column2800.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2800 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2800.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (fun i => Products.matrix8_135 i ⟨6,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source8_135 ⟨6,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2800 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2800_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors8_135 (v : Nat → R)
    (hr2794 : ∀ r ∈ Products.column2794.relations, evaluate v r = 0)
    (hr2795 : ∀ r ∈ Products.column2795.relations, evaluate v r = 0)
    (hr2796 : ∀ r ∈ Products.column2796.relations, evaluate v r = 0)
    (hr2797 : ∀ r ∈ Products.column2797.relations, evaluate v r = 0)
    (hr2798 : ∀ r ∈ Products.column2798.relations, evaluate v r = 0)
    (hr2799 : ∀ r ∈ Products.column2799.relations, evaluate v r = 0)
    (hr2800 : ∀ r ∈ Products.column2800.relations, evaluate v r = 0)
    (x : Vec 7) :
    interpret (fun i => evaluate v (Products.target8_135 i)) (eval Products.matrix8_135 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source8_135 j)) x := by
  apply all_products v Products.source8_135 Products.target8_135 Products.matrix8_135 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 ∨ j = 6 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4 | h5 | h6
  · subst j
    exact Products.semantic2794 v hr2794
  · subst j
    exact Products.semantic2795 v hr2795
  · subst j
    exact Products.semantic2796 v hr2796
  · subst j
    exact Products.semantic2797 v hr2797
  · subst j
    exact Products.semantic2798 v hr2798
  · subst j
    exact Products.semantic2799 v hr2799
  · subst j
    exact Products.semantic2800 v hr2800
#print axioms Products.all_vectors8_135
def Products.source9_136 : Fin 5 → Polynomial := fun i => ([[[1,393]],[[1,392]],[[0,415]],[[0,0,396]],[[0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def Products.target9_136 : Fin 4 → Polynomial := fun i => ([[[442]],[[441]],[[2,69,82]],[[0,0,3,68,69]]] : List Polynomial)[i.val]!
theorem Products.decode2860 : EqualModuloRelations []
    (decodedBasisVector Products.target9_136 (fun i => Products.matrix9_136 i ⟨0,by decide⟩)) Products.column2860.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2860 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2860.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (fun i => Products.matrix9_136 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source9_136 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2860 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2860_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2861 : EqualModuloRelations []
    (decodedBasisVector Products.target9_136 (fun i => Products.matrix9_136 i ⟨1,by decide⟩)) Products.column2861.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2861 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2861.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (fun i => Products.matrix9_136 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source9_136 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2861 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2861_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2862 : EqualModuloRelations []
    (decodedBasisVector Products.target9_136 (fun i => Products.matrix9_136 i ⟨2,by decide⟩)) Products.column2862.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2862 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2862.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (fun i => Products.matrix9_136 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source9_136 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2862 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2862_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2863 : EqualModuloRelations []
    (decodedBasisVector Products.target9_136 (fun i => Products.matrix9_136 i ⟨3,by decide⟩)) Products.column2863.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2863 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2863.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (fun i => Products.matrix9_136 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source9_136 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2863 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2863_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2864 : EqualModuloRelations []
    (decodedBasisVector Products.target9_136 (fun i => Products.matrix9_136 i ⟨4,by decide⟩)) Products.column2864.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2864 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2864.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (fun i => Products.matrix9_136 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source9_136 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2864 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2864_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors9_136 (v : Nat → R)
    (hr2860 : ∀ r ∈ Products.column2860.relations, evaluate v r = 0)
    (hr2861 : ∀ r ∈ Products.column2861.relations, evaluate v r = 0)
    (hr2862 : ∀ r ∈ Products.column2862.relations, evaluate v r = 0)
    (hr2863 : ∀ r ∈ Products.column2863.relations, evaluate v r = 0)
    (hr2864 : ∀ r ∈ Products.column2864.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target9_136 i)) (eval Products.matrix9_136 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source9_136 j)) x := by
  apply all_products v Products.source9_136 Products.target9_136 Products.matrix9_136 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic2860 v hr2860
  · subst j
    exact Products.semantic2861 v hr2861
  · subst j
    exact Products.semantic2862 v hr2862
  · subst j
    exact Products.semantic2863 v hr2863
  · subst j
    exact Products.semantic2864 v hr2864
#print axioms Products.all_vectors9_136
def Products.source10_136 : Fin 5 → Polynomial := fun i => ([[[419]],[[0,414]],[[0,0,394]],[[0,0,392]],[[0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def Products.target10_136 : Fin 4 → Polynomial := fun i => ([[[0,428]],[[0,3,333]],[[0,2,373]],[[0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
theorem Products.decode2855 : EqualModuloRelations []
    (decodedBasisVector Products.target10_136 (fun i => Products.matrix10_136 i ⟨0,by decide⟩)) Products.column2855.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2855 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2855.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (fun i => Products.matrix10_136 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_136 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2855 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2855_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2856 : EqualModuloRelations []
    (decodedBasisVector Products.target10_136 (fun i => Products.matrix10_136 i ⟨1,by decide⟩)) Products.column2856.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2856 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2856.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (fun i => Products.matrix10_136 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_136 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2856 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2856_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2857 : EqualModuloRelations []
    (decodedBasisVector Products.target10_136 (fun i => Products.matrix10_136 i ⟨2,by decide⟩)) Products.column2857.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2857 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2857.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (fun i => Products.matrix10_136 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_136 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2857 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2857_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2858 : EqualModuloRelations []
    (decodedBasisVector Products.target10_136 (fun i => Products.matrix10_136 i ⟨3,by decide⟩)) Products.column2858.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2858 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2858.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (fun i => Products.matrix10_136 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_136 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2858 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2858_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2859 : EqualModuloRelations []
    (decodedBasisVector Products.target10_136 (fun i => Products.matrix10_136 i ⟨4,by decide⟩)) Products.column2859.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2859 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2859.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (fun i => Products.matrix10_136 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_136 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2859 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2859_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors10_136 (v : Nat → R)
    (hr2855 : ∀ r ∈ Products.column2855.relations, evaluate v r = 0)
    (hr2856 : ∀ r ∈ Products.column2856.relations, evaluate v r = 0)
    (hr2857 : ∀ r ∈ Products.column2857.relations, evaluate v r = 0)
    (hr2858 : ∀ r ∈ Products.column2858.relations, evaluate v r = 0)
    (hr2859 : ∀ r ∈ Products.column2859.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target10_136 i)) (eval Products.matrix10_136 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source10_136 j)) x := by
  apply all_products v Products.source10_136 Products.target10_136 Products.matrix10_136 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic2855 v hr2855
  · subst j
    exact Products.semantic2856 v hr2856
  · subst j
    exact Products.semantic2857 v hr2857
  · subst j
    exact Products.semantic2858 v hr2858
  · subst j
    exact Products.semantic2859 v hr2859
#print axioms Products.all_vectors10_136
def Products.source10_137 : Fin 6 → Polynomial := fun i => ([[[428]],[[3,333]],[[2,373]],[[1,1,375]],[[0,0,415]],[[0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def Products.target10_137 : Fin 3 → Polynomial := fun i => ([[[18,209]],[[0,442]],[[0,441]]] : List Polynomial)[i.val]!
theorem Products.decode2929 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨0,by decide⟩)) Products.column2929.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2929 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2929.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2929 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2929_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2930 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨1,by decide⟩)) Products.column2930.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2930 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2930.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2930 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2930_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2931 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨2,by decide⟩)) Products.column2931.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2931 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2931.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2931 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2931_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2932 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨3,by decide⟩)) Products.column2932.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2932 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2932.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2932 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2932_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2933 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨4,by decide⟩)) Products.column2933.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2933 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2933.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2933 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2933_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2934 : EqualModuloRelations []
    (decodedBasisVector Products.target10_137 (fun i => Products.matrix10_137 i ⟨5,by decide⟩)) Products.column2934.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2934 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2934.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (fun i => Products.matrix10_137 i ⟨5,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source10_137 ⟨5,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2934 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2934_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors10_137 (v : Nat → R)
    (hr2929 : ∀ r ∈ Products.column2929.relations, evaluate v r = 0)
    (hr2930 : ∀ r ∈ Products.column2930.relations, evaluate v r = 0)
    (hr2931 : ∀ r ∈ Products.column2931.relations, evaluate v r = 0)
    (hr2932 : ∀ r ∈ Products.column2932.relations, evaluate v r = 0)
    (hr2933 : ∀ r ∈ Products.column2933.relations, evaluate v r = 0)
    (hr2934 : ∀ r ∈ Products.column2934.relations, evaluate v r = 0)
    (x : Vec 6) :
    interpret (fun i => evaluate v (Products.target10_137 i)) (eval Products.matrix10_137 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source10_137 j)) x := by
  apply all_products v Products.source10_137 Products.target10_137 Products.matrix10_137 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4 | h5
  · subst j
    exact Products.semantic2929 v hr2929
  · subst j
    exact Products.semantic2930 v hr2930
  · subst j
    exact Products.semantic2931 v hr2931
  · subst j
    exact Products.semantic2932 v hr2932
  · subst j
    exact Products.semantic2933 v hr2933
  · subst j
    exact Products.semantic2934 v hr2934
#print axioms Products.all_vectors10_137
def Products.source11_137 : Fin 6 → Polynomial := fun i => ([[[427]],[[1,413]],[[1,412]],[[0,419]],[[0,0,414]],[[0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def Products.target11_137 : Fin 3 → Polynomial := fun i => ([[[1,427]],[[0,0,428]],[[0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
theorem Products.decode2923 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨0,by decide⟩)) Products.column2923.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2923 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2923.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2923 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2923_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2924 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨1,by decide⟩)) Products.column2924.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2924 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2924.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2924 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2924_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2925 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨2,by decide⟩)) Products.column2925.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2925 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2925.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2925 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2925_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2926 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨3,by decide⟩)) Products.column2926.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2926 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2926.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2926 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2926_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2927 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨4,by decide⟩)) Products.column2927.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2927 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2927.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2927 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2927_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode2928 : EqualModuloRelations []
    (decodedBasisVector Products.target11_137 (fun i => Products.matrix11_137 i ⟨5,by decide⟩)) Products.column2928.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic2928 (v : Nat → R)
    (hr : ∀ r ∈ Products.column2928.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (fun i => Products.matrix11_137 i ⟨5,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source11_137 ⟨5,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode2928 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column2928_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors11_137 (v : Nat → R)
    (hr2923 : ∀ r ∈ Products.column2923.relations, evaluate v r = 0)
    (hr2924 : ∀ r ∈ Products.column2924.relations, evaluate v r = 0)
    (hr2925 : ∀ r ∈ Products.column2925.relations, evaluate v r = 0)
    (hr2926 : ∀ r ∈ Products.column2926.relations, evaluate v r = 0)
    (hr2927 : ∀ r ∈ Products.column2927.relations, evaluate v r = 0)
    (hr2928 : ∀ r ∈ Products.column2928.relations, evaluate v r = 0)
    (x : Vec 6) :
    interpret (fun i => evaluate v (Products.target11_137 i)) (eval Products.matrix11_137 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source11_137 j)) x := by
  apply all_products v Products.source11_137 Products.target11_137 Products.matrix11_137 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4 | h5
  · subst j
    exact Products.semantic2923 v hr2923
  · subst j
    exact Products.semantic2924 v hr2924
  · subst j
    exact Products.semantic2925 v hr2925
  · subst j
    exact Products.semantic2926 v hr2926
  · subst j
    exact Products.semantic2927 v hr2927
  · subst j
    exact Products.semantic2928 v hr2928
#print axioms Products.all_vectors11_137
def Products.source12_138 : Fin 5 → Polynomial := fun i => ([[[25,190]],[[3,336]],[[0,427]],[[0,0,419]],[[0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def Products.target12_138 : Fin 5 → Polynomial := fun i => ([[[458]],[[13,251]],[[3,363]],[[0,0,0,428]],[[0,0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
theorem Products.decode3013 : EqualModuloRelations []
    (decodedBasisVector Products.target12_138 (fun i => Products.matrix12_138 i ⟨0,by decide⟩)) Products.column3013.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3013 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3013.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (fun i => Products.matrix12_138 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source12_138 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3013 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3013_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3014 : EqualModuloRelations []
    (decodedBasisVector Products.target12_138 (fun i => Products.matrix12_138 i ⟨1,by decide⟩)) Products.column3014.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3014 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3014.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (fun i => Products.matrix12_138 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source12_138 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3014 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3014_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3015 : EqualModuloRelations []
    (decodedBasisVector Products.target12_138 (fun i => Products.matrix12_138 i ⟨2,by decide⟩)) Products.column3015.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3015 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3015.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (fun i => Products.matrix12_138 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source12_138 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3015 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3015_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3016 : EqualModuloRelations []
    (decodedBasisVector Products.target12_138 (fun i => Products.matrix12_138 i ⟨3,by decide⟩)) Products.column3016.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3016 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3016.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (fun i => Products.matrix12_138 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source12_138 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3016 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3016_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3017 : EqualModuloRelations []
    (decodedBasisVector Products.target12_138 (fun i => Products.matrix12_138 i ⟨4,by decide⟩)) Products.column3017.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3017 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3017.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (fun i => Products.matrix12_138 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source12_138 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3017 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3017_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors12_138 (v : Nat → R)
    (hr3013 : ∀ r ∈ Products.column3013.relations, evaluate v r = 0)
    (hr3014 : ∀ r ∈ Products.column3014.relations, evaluate v r = 0)
    (hr3015 : ∀ r ∈ Products.column3015.relations, evaluate v r = 0)
    (hr3016 : ∀ r ∈ Products.column3016.relations, evaluate v r = 0)
    (hr3017 : ∀ r ∈ Products.column3017.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target12_138 i)) (eval Products.matrix12_138 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source12_138 j)) x := by
  apply all_products v Products.source12_138 Products.target12_138 Products.matrix12_138 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic3013 v hr3013
  · subst j
    exact Products.semantic3014 v hr3014
  · subst j
    exact Products.semantic3015 v hr3015
  · subst j
    exact Products.semantic3016 v hr3016
  · subst j
    exact Products.semantic3017 v hr3017
#print axioms Products.all_vectors12_138
def Products.source13_138 : Fin 5 → Polynomial := fun i => ([[[24,190]],[[3,335]],[[0,425]],[[0,0,0,0,391]],[[0,0,0,0,0,375]]] : List Polynomial)[i.val]!
def Products.target13_138 : Fin 4 → Polynomial := fun i => ([[[457]],[[68,107]],[[1,3,335]],[[0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
theorem Products.decode3008 : EqualModuloRelations []
    (decodedBasisVector Products.target13_138 (fun i => Products.matrix13_138 i ⟨0,by decide⟩)) Products.column3008.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3008 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3008.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (fun i => Products.matrix13_138 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_138 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3008 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3008_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3009 : EqualModuloRelations []
    (decodedBasisVector Products.target13_138 (fun i => Products.matrix13_138 i ⟨1,by decide⟩)) Products.column3009.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3009 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3009.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (fun i => Products.matrix13_138 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_138 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3009 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3009_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3010 : EqualModuloRelations []
    (decodedBasisVector Products.target13_138 (fun i => Products.matrix13_138 i ⟨2,by decide⟩)) Products.column3010.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3010 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3010.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (fun i => Products.matrix13_138 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_138 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3010 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3010_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3011 : EqualModuloRelations []
    (decodedBasisVector Products.target13_138 (fun i => Products.matrix13_138 i ⟨3,by decide⟩)) Products.column3011.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3011 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3011.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (fun i => Products.matrix13_138 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_138 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3011 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3011_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3012 : EqualModuloRelations []
    (decodedBasisVector Products.target13_138 (fun i => Products.matrix13_138 i ⟨4,by decide⟩)) Products.column3012.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3012 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3012.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (fun i => Products.matrix13_138 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_138 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3012 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3012_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors13_138 (v : Nat → R)
    (hr3008 : ∀ r ∈ Products.column3008.relations, evaluate v r = 0)
    (hr3009 : ∀ r ∈ Products.column3009.relations, evaluate v r = 0)
    (hr3010 : ∀ r ∈ Products.column3010.relations, evaluate v r = 0)
    (hr3011 : ∀ r ∈ Products.column3011.relations, evaluate v r = 0)
    (hr3012 : ∀ r ∈ Products.column3012.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target13_138 i)) (eval Products.matrix13_138 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source13_138 j)) x := by
  apply all_products v Products.source13_138 Products.target13_138 Products.matrix13_138 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic3008 v hr3008
  · subst j
    exact Products.semantic3009 v hr3009
  · subst j
    exact Products.semantic3010 v hr3010
  · subst j
    exact Products.semantic3011 v hr3011
  · subst j
    exact Products.semantic3012 v hr3012
#print axioms Products.all_vectors13_138
def Products.source13_139 : Fin 3 → Polynomial := fun i => ([[[1,426]],[[0,3,336]],[[0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def Products.target13_139 : Fin 3 → Polynomial := fun i => ([[[0,13,251]],[[0,3,363]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
theorem Products.decode3082 : EqualModuloRelations []
    (decodedBasisVector Products.target13_139 (fun i => Products.matrix13_139 i ⟨0,by decide⟩)) Products.column3082.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3082 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3082.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_139 i)) (fun i => Products.matrix13_139 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_139 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3082 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3082_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3083 : EqualModuloRelations []
    (decodedBasisVector Products.target13_139 (fun i => Products.matrix13_139 i ⟨1,by decide⟩)) Products.column3083.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3083 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3083.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_139 i)) (fun i => Products.matrix13_139 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_139 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3083 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3083_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3084 : EqualModuloRelations []
    (decodedBasisVector Products.target13_139 (fun i => Products.matrix13_139 i ⟨2,by decide⟩)) Products.column3084.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3084 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3084.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target13_139 i)) (fun i => Products.matrix13_139 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source13_139 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3084 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3084_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors13_139 (v : Nat → R)
    (hr3082 : ∀ r ∈ Products.column3082.relations, evaluate v r = 0)
    (hr3083 : ∀ r ∈ Products.column3083.relations, evaluate v r = 0)
    (hr3084 : ∀ r ∈ Products.column3084.relations, evaluate v r = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (Products.target13_139 i)) (eval Products.matrix13_139 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source13_139 j)) x := by
  apply all_products v Products.source13_139 Products.target13_139 Products.matrix13_139 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by omega
  rcases casesJ with h0 | h1 | h2
  · subst j
    exact Products.semantic3082 v hr3082
  · subst j
    exact Products.semantic3083 v hr3083
  · subst j
    exact Products.semantic3084 v hr3084
#print axioms Products.all_vectors13_139
def Products.source14_139 : Fin 3 → Polynomial := fun i => ([[[449]],[[1,7,275]],[[0,0,425]]] : List Polynomial)[i.val]!
def Products.target14_139 : Fin 2 → Polynomial := fun i => ([[[0,68,107]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
theorem Products.decode3079 : EqualModuloRelations []
    (decodedBasisVector Products.target14_139 (fun i => Products.matrix14_139 i ⟨0,by decide⟩)) Products.column3079.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3079 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3079.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target14_139 i)) (fun i => Products.matrix14_139 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source14_139 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3079 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3079_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3080 : EqualModuloRelations []
    (decodedBasisVector Products.target14_139 (fun i => Products.matrix14_139 i ⟨1,by decide⟩)) Products.column3080.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3080 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3080.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target14_139 i)) (fun i => Products.matrix14_139 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source14_139 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3080 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3080_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3081 : EqualModuloRelations []
    (decodedBasisVector Products.target14_139 (fun i => Products.matrix14_139 i ⟨2,by decide⟩)) Products.column3081.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3081 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3081.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target14_139 i)) (fun i => Products.matrix14_139 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source14_139 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3081 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3081_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors14_139 (v : Nat → R)
    (hr3079 : ∀ r ∈ Products.column3079.relations, evaluate v r = 0)
    (hr3080 : ∀ r ∈ Products.column3080.relations, evaluate v r = 0)
    (hr3081 : ∀ r ∈ Products.column3081.relations, evaluate v r = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (Products.target14_139 i)) (eval Products.matrix14_139 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source14_139 j)) x := by
  apply all_products v Products.source14_139 Products.target14_139 Products.matrix14_139 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by omega
  rcases casesJ with h0 | h1 | h2
  · subst j
    exact Products.semantic3079 v hr3079
  · subst j
    exact Products.semantic3080 v hr3080
  · subst j
    exact Products.semantic3081 v hr3081
#print axioms Products.all_vectors14_139
def Products.source15_140 : Fin 5 → Polynomial := fun i => ([[[456]],[[67,107]],[[1,439]],[[0,449]],[[0,0,0,425]]] : List Polynomial)[i.val]!
def Products.target15_140 : Fin 3 → Polynomial := fun i => ([[[1,1,439]],[[0,0,68,107]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
theorem Products.decode3150 : EqualModuloRelations []
    (decodedBasisVector Products.target15_140 (fun i => Products.matrix15_140 i ⟨0,by decide⟩)) Products.column3150.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3150 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3150.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (fun i => Products.matrix15_140 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source15_140 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3150 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3150_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3151 : EqualModuloRelations []
    (decodedBasisVector Products.target15_140 (fun i => Products.matrix15_140 i ⟨1,by decide⟩)) Products.column3151.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3151 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3151.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (fun i => Products.matrix15_140 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source15_140 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3151 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3151_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3152 : EqualModuloRelations []
    (decodedBasisVector Products.target15_140 (fun i => Products.matrix15_140 i ⟨2,by decide⟩)) Products.column3152.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3152 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3152.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (fun i => Products.matrix15_140 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source15_140 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3152 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3152_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3153 : EqualModuloRelations []
    (decodedBasisVector Products.target15_140 (fun i => Products.matrix15_140 i ⟨3,by decide⟩)) Products.column3153.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3153 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3153.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (fun i => Products.matrix15_140 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source15_140 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3153 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3153_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3154 : EqualModuloRelations []
    (decodedBasisVector Products.target15_140 (fun i => Products.matrix15_140 i ⟨4,by decide⟩)) Products.column3154.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3154 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3154.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (fun i => Products.matrix15_140 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source15_140 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3154 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3154_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors15_140 (v : Nat → R)
    (hr3150 : ∀ r ∈ Products.column3150.relations, evaluate v r = 0)
    (hr3151 : ∀ r ∈ Products.column3151.relations, evaluate v r = 0)
    (hr3152 : ∀ r ∈ Products.column3152.relations, evaluate v r = 0)
    (hr3153 : ∀ r ∈ Products.column3153.relations, evaluate v r = 0)
    (hr3154 : ∀ r ∈ Products.column3154.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target15_140 i)) (eval Products.matrix15_140 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source15_140 j)) x := by
  apply all_products v Products.source15_140 Products.target15_140 Products.matrix15_140 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic3150 v hr3150
  · subst j
    exact Products.semantic3151 v hr3151
  · subst j
    exact Products.semantic3152 v hr3152
  · subst j
    exact Products.semantic3153 v hr3153
  · subst j
    exact Products.semantic3154 v hr3154
#print axioms Products.all_vectors15_140
def Products.source16_140 : Fin 5 → Polynomial := fun i => ([[[9,261]],[[1,438]],[[0,448]],[[0,0,440]],[[0,0,439]]] : List Polynomial)[i.val]!
def Products.target16_140 : Fin 2 → Polynomial := fun i => ([[[0,0,67,107]],[[0,0,0,449]]] : List Polynomial)[i.val]!
theorem Products.decode3145 : EqualModuloRelations []
    (decodedBasisVector Products.target16_140 (fun i => Products.matrix16_140 i ⟨0,by decide⟩)) Products.column3145.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3145 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3145.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (fun i => Products.matrix16_140 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_140 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3145 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3145_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3146 : EqualModuloRelations []
    (decodedBasisVector Products.target16_140 (fun i => Products.matrix16_140 i ⟨1,by decide⟩)) Products.column3146.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3146 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3146.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (fun i => Products.matrix16_140 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_140 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3146 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3146_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3147 : EqualModuloRelations []
    (decodedBasisVector Products.target16_140 (fun i => Products.matrix16_140 i ⟨2,by decide⟩)) Products.column3147.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3147 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3147.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (fun i => Products.matrix16_140 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_140 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3147 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3147_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3148 : EqualModuloRelations []
    (decodedBasisVector Products.target16_140 (fun i => Products.matrix16_140 i ⟨3,by decide⟩)) Products.column3148.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3148 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3148.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (fun i => Products.matrix16_140 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_140 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3148 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3148_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3149 : EqualModuloRelations []
    (decodedBasisVector Products.target16_140 (fun i => Products.matrix16_140 i ⟨4,by decide⟩)) Products.column3149.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3149 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3149.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (fun i => Products.matrix16_140 i ⟨4,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_140 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3149 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3149_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors16_140 (v : Nat → R)
    (hr3145 : ∀ r ∈ Products.column3145.relations, evaluate v r = 0)
    (hr3146 : ∀ r ∈ Products.column3146.relations, evaluate v r = 0)
    (hr3147 : ∀ r ∈ Products.column3147.relations, evaluate v r = 0)
    (hr3148 : ∀ r ∈ Products.column3148.relations, evaluate v r = 0)
    (hr3149 : ∀ r ∈ Products.column3149.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (Products.target16_140 i)) (eval Products.matrix16_140 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source16_140 j)) x := by
  apply all_products v Products.source16_140 Products.target16_140 Products.matrix16_140 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact Products.semantic3145 v hr3145
  · subst j
    exact Products.semantic3146 v hr3146
  · subst j
    exact Products.semantic3147 v hr3147
  · subst j
    exact Products.semantic3148 v hr3148
  · subst j
    exact Products.semantic3149 v hr3149
#print axioms Products.all_vectors16_140
def Products.source16_141 : Fin 4 → Polynomial := fun i => ([[[473]],[[1,448]],[[0,67,107]],[[0,0,449]]] : List Polynomial)[i.val]!
def Products.target16_141 : Fin 4 → Polynomial := fun i => ([[[493]],[[8,294]],[[1,1,448]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
theorem Products.decode3253 : EqualModuloRelations []
    (decodedBasisVector Products.target16_141 (fun i => Products.matrix16_141 i ⟨0,by decide⟩)) Products.column3253.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3253 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3253.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_141 i)) (fun i => Products.matrix16_141 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_141 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3253 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3253_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3254 : EqualModuloRelations []
    (decodedBasisVector Products.target16_141 (fun i => Products.matrix16_141 i ⟨1,by decide⟩)) Products.column3254.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3254 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3254.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_141 i)) (fun i => Products.matrix16_141 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_141 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3254 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3254_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3255 : EqualModuloRelations []
    (decodedBasisVector Products.target16_141 (fun i => Products.matrix16_141 i ⟨2,by decide⟩)) Products.column3255.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3255 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3255.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_141 i)) (fun i => Products.matrix16_141 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_141 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3255 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3255_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3256 : EqualModuloRelations []
    (decodedBasisVector Products.target16_141 (fun i => Products.matrix16_141 i ⟨3,by decide⟩)) Products.column3256.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3256 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3256.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target16_141 i)) (fun i => Products.matrix16_141 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source16_141 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3256 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3256_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors16_141 (v : Nat → R)
    (hr3253 : ∀ r ∈ Products.column3253.relations, evaluate v r = 0)
    (hr3254 : ∀ r ∈ Products.column3254.relations, evaluate v r = 0)
    (hr3255 : ∀ r ∈ Products.column3255.relations, evaluate v r = 0)
    (hr3256 : ∀ r ∈ Products.column3256.relations, evaluate v r = 0)
    (x : Vec 4) :
    interpret (fun i => evaluate v (Products.target16_141 i)) (eval Products.matrix16_141 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source16_141 j)) x := by
  apply all_products v Products.source16_141 Products.target16_141 Products.matrix16_141 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with h0 | h1 | h2 | h3
  · subst j
    exact Products.semantic3253 v hr3253
  · subst j
    exact Products.semantic3254 v hr3254
  · subst j
    exact Products.semantic3255 v hr3255
  · subst j
    exact Products.semantic3256 v hr3256
#print axioms Products.all_vectors16_141
def Products.source17_141 : Fin 4 → Polynomial := fun i => ([[[472]],[[0,0,448]],[[0,0,0,440]],[[0,0,0,439]]] : List Polynomial)[i.val]!
def Products.target17_141 : Fin 2 → Polynomial := fun i => ([[[8,8,209]],[[0,0,0,0,449]]] : List Polynomial)[i.val]!
theorem Products.decode3249 : EqualModuloRelations []
    (decodedBasisVector Products.target17_141 (fun i => Products.matrix17_141 i ⟨0,by decide⟩)) Products.column3249.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3249 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3249.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target17_141 i)) (fun i => Products.matrix17_141 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source17_141 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3249 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3249_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3250 : EqualModuloRelations []
    (decodedBasisVector Products.target17_141 (fun i => Products.matrix17_141 i ⟨1,by decide⟩)) Products.column3250.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3250 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3250.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target17_141 i)) (fun i => Products.matrix17_141 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source17_141 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3250 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3250_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3251 : EqualModuloRelations []
    (decodedBasisVector Products.target17_141 (fun i => Products.matrix17_141 i ⟨2,by decide⟩)) Products.column3251.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3251 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3251.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target17_141 i)) (fun i => Products.matrix17_141 i ⟨2,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source17_141 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3251 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3251_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3252 : EqualModuloRelations []
    (decodedBasisVector Products.target17_141 (fun i => Products.matrix17_141 i ⟨3,by decide⟩)) Products.column3252.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3252 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3252.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target17_141 i)) (fun i => Products.matrix17_141 i ⟨3,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source17_141 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3252 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3252_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors17_141 (v : Nat → R)
    (hr3249 : ∀ r ∈ Products.column3249.relations, evaluate v r = 0)
    (hr3250 : ∀ r ∈ Products.column3250.relations, evaluate v r = 0)
    (hr3251 : ∀ r ∈ Products.column3251.relations, evaluate v r = 0)
    (hr3252 : ∀ r ∈ Products.column3252.relations, evaluate v r = 0)
    (x : Vec 4) :
    interpret (fun i => evaluate v (Products.target17_141 i)) (eval Products.matrix17_141 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source17_141 j)) x := by
  apply all_products v Products.source17_141 Products.target17_141 Products.matrix17_141 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with h0 | h1 | h2 | h3
  · subst j
    exact Products.semantic3249 v hr3249
  · subst j
    exact Products.semantic3250 v hr3250
  · subst j
    exact Products.semantic3251 v hr3251
  · subst j
    exact Products.semantic3252 v hr3252
#print axioms Products.all_vectors17_141
def Products.source18_142 : Fin 2 → Polynomial := fun i => ([[[0,472]],[[0,0,0,0,440]]] : List Polynomial)[i.val]!
def Products.target18_142 : Fin 3 → Polynomial := fun i => ([[[13,266]],[[8,13,188]],[[0,0,0,0,0,449]]] : List Polynomial)[i.val]!
theorem Products.decode3317 : EqualModuloRelations []
    (decodedBasisVector Products.target18_142 (fun i => Products.matrix18_142 i ⟨0,by decide⟩)) Products.column3317.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3317 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3317.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target18_142 i)) (fun i => Products.matrix18_142 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source18_142 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3317 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3317_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.decode3318 : EqualModuloRelations []
    (decodedBasisVector Products.target18_142 (fun i => Products.matrix18_142 i ⟨1,by decide⟩)) Products.column3318.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3318 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3318.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target18_142 i)) (fun i => Products.matrix18_142 i ⟨1,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source18_142 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3318 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3318_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors18_142 (v : Nat → R)
    (hr3317 : ∀ r ∈ Products.column3317.relations, evaluate v r = 0)
    (hr3318 : ∀ r ∈ Products.column3318.relations, evaluate v r = 0)
    (x : Vec 2) :
    interpret (fun i => evaluate v (Products.target18_142 i)) (eval Products.matrix18_142 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source18_142 j)) x := by
  apply all_products v Products.source18_142 Products.target18_142 Products.matrix18_142 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 := by omega
  rcases casesJ with h0 | h1
  · subst j
    exact Products.semantic3317 v hr3317
  · subst j
    exact Products.semantic3318 v hr3318
#print axioms Products.all_vectors18_142
def Products.source20_143 : Fin 1 → Polynomial := fun i => ([[[492]]] : List Polynomial)[i.val]!
def Products.target20_143 : Fin 2 → Polynomial := fun i => ([[[0,8,8,212]],[[0,0,0,0,0,0,0,440]]] : List Polynomial)[i.val]!
theorem Products.decode3388 : EqualModuloRelations []
    (decodedBasisVector Products.target20_143 (fun i => Products.matrix20_143 i ⟨0,by decide⟩)) Products.column3388.output := by
  lin_cert using ([] : List Term)
theorem Products.semantic3388 (v : Nat → R)
    (hr : ∀ r ∈ Products.column3388.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (Products.target20_143 i)) (fun i => Products.matrix20_143 i ⟨0,by decide⟩) =
      evaluate v Products.factor * evaluate v (Products.source20_143 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ Products.decode3388 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ Products.column3388_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem Products.all_vectors20_143 (v : Nat → R)
    (hr3388 : ∀ r ∈ Products.column3388.relations, evaluate v r = 0)
    (x : Vec 1) :
    interpret (fun i => evaluate v (Products.target20_143 i)) (eval Products.matrix20_143 x) =
      evaluate v Products.factor * interpret (fun j => evaluate v (Products.source20_143 j)) x := by
  apply all_products v Products.source20_143 Products.target20_143 Products.matrix20_143 Products.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 := by omega
  rcases casesJ with h0
  · subst j
    exact Products.semantic3388 v hr3388
#print axioms Products.all_vectors20_143
end Row2925EtaD4.ProductSemantics
