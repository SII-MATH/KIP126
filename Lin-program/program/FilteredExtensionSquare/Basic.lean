import FilteredMapExtension.Crossing

namespace FilteredExtensionSquare
open FilteredMapExtension FilteredRepresentativeCrossing GeneralizedLeibnizAudit

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]

/-- A leading input class can be represented by a cycle on the indicated
extension page; the requested output is its actual quotient differential. -/
def HasExtension (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)
    (s n : Nat) (x : A) (y : B) : Prop :=
  x ∈ F.group s ∧ ∃ hy : y ∈ G.group (s+n),
    ∃ a : cycles F G f s n, SameLeading (F.group (s+1)) a.val x ∧
      differential F G f s n (sourceClass F G f s n a) =
        targetClass F G f s n ⟨y,hy⟩

theorem hasExtension_iff (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)
    (s n : Nat) (x : A) (y : B) :
    HasExtension F G f s n x y ↔ x ∈ F.group s ∧ y ∈ G.group (s+n) ∧
      Extension f.hom (F.group (s+1)) (G.group (s+n+1)) x y := by
  constructor
  · rintro ⟨hx,hy,a,ha,equation⟩
    obtain ⟨b,hba,hby⟩ :=
      (differential_eq_iff_leading_extension F G f s n a ⟨y,hy⟩).mp equation
    exact ⟨hx,hy,b,hba.trans ha,hby⟩
  · rintro ⟨hx,hy,b,hbx,hby⟩
    have hb : b ∈ F.group s := by
      have low : b-x ∈ F.group s := F.decreasing (by omega) hbx
      simpa only [sub_add_cancel] using (F.group s).add_mem low hx
    have hfb : f.hom b ∈ G.group (s+n) := by
      have low : f.hom b-y ∈ G.group (s+n) := G.decreasing (by omega) hby
      simpa only [sub_add_cancel] using (G.group (s+n)).add_mem low hy
    let a : cycles F G f s n := ⟨b,hb,hfb⟩
    refine ⟨hx,hy,a,hbx,?_⟩
    apply (differential_eq_iff_leading_extension F G f s n a ⟨y,hy⟩).mpr
    exact ⟨b,SameLeading.refl _ _,hby⟩

/-- The original leading representative need not itself satisfy the cycle
condition. A checked correction supplies that representative constructively. -/
theorem of_representative (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)
    (s n : Nat) (x a : A) (y : B) (hx : x ∈ F.group s)
    (hy : y ∈ G.group (s+n)) (same : SameLeading (F.group (s+1)) a x)
    (image : SameLeading (G.group (s+n+1)) (f.hom a) y) :
    HasExtension F G f s n x y :=
  (hasExtension_iff F G f s n x y).mpr ⟨hx,hy,a,same,image⟩

#print axioms hasExtension_iff
#print axioms of_representative
end FilteredExtensionSquare
