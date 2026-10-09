import PageTransitionCertificates.InducedMap

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates

def cycleAdd {outgoing : Matrix k m} (x y : Cycle outgoing) : Cycle outgoing :=
  ⟨add x.val y.val, by
    change eval outgoing (add x.val y.val) = zero
    rw [eval_add, x.property, y.property, add_self]⟩

theorem related_add {outgoing : Matrix k m} {incoming : Matrix m n}
    (x x' y y' : Cycle outgoing)
    (hx : BoundaryRelated incoming x x') (hy : BoundaryRelated incoming y y') :
    BoundaryRelated incoming (cycleAdd x y) (cycleAdd x' y') := by
  obtain ⟨a, ha⟩ := hx
  obtain ⟨b, hb⟩ := hy
  refine ⟨add a b, ?_⟩
  rw [eval_add, ha, hb]
  funext i
  change xor (xor (x.val i) (x'.val i)) (xor (y.val i) (y'.val i)) =
    xor (xor (x.val i) (y.val i)) (xor (x'.val i) (y'.val i))
  cases x.val i <;> cases x'.val i <;> cases y.val i <;> cases y'.val i <;> rfl

theorem related_self {outgoing : Matrix k m} (incoming : Matrix m n) (x : Cycle outgoing) :
    BoundaryRelated incoming x x := by
  refine ⟨zero, ?_⟩
  rw [eval_zero, add_self]

/-- Addition is defined from addition of representatives and proved independent
of both choices; it is not imposed using a coordinate equivalence. -/
def homologyAdd (outgoing : Matrix k m) (incoming : Matrix m n) :
    Homology outgoing incoming → Homology outgoing incoming → Homology outgoing incoming :=
  Quot.lift (fun x : Cycle outgoing =>
    Quot.lift (fun y : Cycle outgoing => Quot.mk _ (cycleAdd x y)) (by
      intro y y' hy
      exact Quot.sound (related_add x x y y' (related_self incoming x) hy))) (by
    intro x x' hx
    funext y
    refine Quot.inductionOn y ?_
    intro y
    exact Quot.sound (related_add x x' y y hx (related_self incoming y)))

theorem homologyCoordinates_add (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) (hc : HomologyComparison outgoing incoming c)
    (x y : Homology outgoing incoming) :
    (homologyEquivalence outgoing incoming c hc).toCoordinates (homologyAdd outgoing incoming x y) =
      add ((homologyEquivalence outgoing incoming c hc).toCoordinates x)
        ((homologyEquivalence outgoing incoming c hc).toCoordinates y) := by
  refine Quot.inductionOn x ?_
  intro x
  refine Quot.inductionOn y ?_
  intro y
  exact eval_add c.projection x.val y.val

#print axioms homologyAdd
#print axioms homologyCoordinates_add

theorem inducedMap_add {outgoing : Matrix k m} {incoming : Matrix m n}
    {outgoing' : Matrix l q} {incoming' : Matrix q p}
    {f : Matrix q m} {upper : Matrix l k} {lower : Matrix p n}
    (h : CompatibleMap outgoing incoming outgoing' incoming' f upper lower)
    (x y : Homology outgoing incoming) :
    inducedMap h (homologyAdd outgoing incoming x y) =
      homologyAdd outgoing' incoming' (inducedMap h x) (inducedMap h y) := by
  refine Quot.inductionOn x ?_
  intro x
  refine Quot.inductionOn y ?_
  intro y
  apply congrArg (Quot.mk _)
  apply Subtype.ext
  exact eval_add f x.val y.val

#print axioms inducedMap_add
end PageTransitionCertificates
