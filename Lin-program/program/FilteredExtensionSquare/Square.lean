import FilteredExtensionSquare.Basic

namespace FilteredExtensionSquare
open FilteredMapExtension FilteredRepresentativeCrossing GeneralizedLeibnizAudit

variable {A B C D : Type*}
  [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] [AddCommGroup D]

/-- Three actual quotient extension equations in a commuting square produce
the fourth at the forced length, using absence of page-defined crossings. -/
theorem square_transfer (FA : Filtration A) (FB : Filtration B)
    (FC : Filtration C) (FD : Filtration D)
    (f : FilteredMap FA FB) (p : FilteredMap FA FC)
    (q : FilteredMap FB FD) (g : FilteredMap FC FD)
    (commutes : ∀ a, q.hom (f.hom a) = g.hom (p.hom a))
    (s n m l : Nat) (length : n ≤ m+l)
    (x : A) (y : B) (z : C) (w : D)
    (first : HasExtension FA FB f s n x y)
    (second : HasExtension FA FC p s m x z)
    (third : HasExtension FC FD g (s+m) l z w)
    (firstNone : NoPageCrossing FA FB f s (s+1) (s+n+1) ∨
      NoPageCrossing FA FC p s (s+1) (s+m+1))
    (lastNone : NoPageCrossing FC FD g (s+m) (s+m+1) (s+m+l+1)) :
    HasExtension FB FD q (s+n) (m+l-n) y w := by
  have hf := (hasExtension_iff FA FB f s n x y).mp first
  have hp := (hasExtension_iff FA FC p s m x z).mp second
  have hg := (hasExtension_iff FC FD g (s+m) l z w).mp third
  have transfer := square_transfer_of_noPageCrossing FA FB f FC FD p q.hom g commutes
    s (s+n) (s+m) (s+m+l) (by omega) (by omega) (by omega)
    x y z w hf.2.2 hp.2.2 hg.2.2 firstNone lastNone
  have targetDegree : (s+n)+(m+l-n) = s+m+l := by omega
  apply (hasExtension_iff FB FD q (s+n) (m+l-n) y w).mpr
  exact ⟨hf.2.1, targetDegree ▸ hg.2.1, targetDegree ▸ transfer⟩

#print axioms square_transfer
end FilteredExtensionSquare
