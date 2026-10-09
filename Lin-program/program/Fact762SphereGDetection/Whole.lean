import Fact762SphereGDetection.Detector
import Fact762SphereGDetection.BySigma
import Fact721ConstructedActual.Basic

namespace Fact762SphereGDetection.Whole
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

def unitVector (n j : Nat) : Vec n := fun i => i.val == j

theorem zero_of_three (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (c : Coordinates S r d 3)
    (additive : ∀ x y, c.equivalence (x+y) = add (c.equivalence x) (c.equivalence y))
    (h0 : S.differential r d (c.equivalence.symm (unitVector 3 0)) = 0)
    (h1 : S.differential r d (c.equivalence.symm (unitVector 3 1)) = 0)
    (h2 : S.differential r d (c.equivalence.symm (unitVector 3 2)) = 0)
    (x : (S.element r d).carrier) : S.differential r d x = 0 := by
  let v := c.equivalence x
  let a := c.equivalence.symm (unitVector 3 0)
  let b := c.equivalence.symm (unitVector 3 1)
  let e := c.equivalence.symm (unitVector 3 2)
  have ca : c.equivalence a = unitVector 3 0 := c.equivalence.apply_symm_apply _
  have cb : c.equivalence b = unitVector 3 1 := c.equivalence.apply_symm_apply _
  have ce : c.equivalence e = unitVector 3 2 := c.equivalence.apply_symm_apply _
  have same : x = (if v 0 then a else 0) + (if v 1 then b else 0) + (if v 2 then e else 0) := by
    apply c.equivalence.injective
    rw [additive,additive]
    have formula : ∀ v : Vec 3, v = add (add
        (if v 0 then unitVector 3 0 else zero)
        (if v 1 then unitVector 3 1 else zero))
        (if v 2 then unitVector 3 2 else zero) := by decide
    have hv := formula v
    change v = _
    have ea : c.equivalence (if v 0 then a else 0) = (if v 0 then unitVector 3 0 else zero) := by split; exact ca; exact c.zero_value
    have eb : c.equivalence (if v 1 then b else 0) = (if v 1 then unitVector 3 1 else zero) := by split; exact cb; exact c.zero_value
    have ec : c.equivalence (if v 2 then e else 0) = (if v 2 then unitVector 3 2 else zero) := by split; exact ce; exact c.zero_value
    rw [ea,eb,ec]
    exact hv
  rw [same,(S.differential r d).map_add',(S.differential r d).map_add']
  split <;> split <;> split <;> simp only [a,b,e,h0,h1,h2,(S.differential r d).map_zero',add_zero]

#print axioms zero_of_three
end Fact762SphereGDetection.Whole
