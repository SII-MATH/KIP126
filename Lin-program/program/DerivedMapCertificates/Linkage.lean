import DerivedMapCertificates.Import
namespace DerivedMapCertificates
open LinearCertificates

/-- Actual interpretations of the certified dependency matrices transport through
kernel-checked input matrix identities. No name or source hash is a premise. -/
theorem CompositionWire.transport_linked (w : CompositionWire) (h : w.Valid)
    (firstMatrix : Matrix w.middle w.cols) (secondMatrix : Matrix w.rows w.middle)
    (first_link : firstMatrix = w.a) (second_link : secondMatrix = w.b)
    {A B C : Type} (source : Vec w.cols → A) (middle : Vec w.middle → B)
    (target : Vec w.rows → C) (f : A → B) (g : B → C)
    (first : ∀ x, middle (eval firstMatrix x) = f (source x))
    (second : ∀ y, target (eval secondMatrix y) = g (middle y)) (x : Vec w.cols) :
    target (eval w.c x) = g (f (source x)) := by
  apply w.transport h source middle target f g
  · simpa only [first_link] using first
  · simpa only [second_link] using second

end DerivedMapCertificates
