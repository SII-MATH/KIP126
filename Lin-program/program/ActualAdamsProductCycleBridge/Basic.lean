import Fact764CycleFromProduct.Basic
import ActualAdamsSystemBridge.Basic

namespace ActualAdamsProductCycleBridge
open ManualInputObligations.Reference

theorem cast_zero (S : AdamsSpectralSequence) (r : Nat) {a b : Bidegree} (h : a=b) :
    pageCast S r h (0 : (S.element r a).carrier) = 0 := by cases h; rfl

theorem cast_zero_iff (S : AdamsSpectralSequence) (r : Nat) {a b : Bidegree}
    (h : a=b) (x : (S.element r a).carrier) : pageCast S r h x = 0 ↔ x = 0 := by
  cases h; rfl

/-- In the actual graded F2 page, the two Leibniz terms for a square cancel.
All transports use the exact Adams target and product bidegrees. -/
theorem square_cycle (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier) :
    S.differential r (Bidegree.add d d) (P.product.multiply r d d x x) = 0 := by
  apply (cast_zero_iff S r (adamsTarget_add_left r d d) _).mp
  rw [P.leibniz.formula]
  have comm := P.product.gradedComm r d (AdamsTarget r d) x (S.differential r d x)
  have eqProof : (adamsTarget_product_degree r d d).symm =
      bidegree_add_comm d (AdamsTarget r d) := Subsingleton.elim _ _
  rw [eqProof,comm]
  exact f2Space_add_self _ _

theorem product_cycle (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (r : Nat) (d e : Bidegree) (x : (S.element r d).carrier) (y : (S.element r e).carrier)
    (hx : S.differential r d x = 0) (hy : S.differential r e y = 0) :
    S.differential r (Bidegree.add d e) (P.product.multiply r d e x y) = 0 := by
  apply (cast_zero_iff S r (adamsTarget_add_left r d e) _).mp
  rw [P.leibniz.formula,hx,hy,P.product.zero_left,P.product.zero_right,cast_zero,add_zero]

def gDegree : Bidegree := ⟨4,24⟩
def deltaDegree : Bidegree := ⟨9,54⟩
def namedDegree : Bidegree := ⟨25,150⟩
def gSquaredDegree := Bidegree.add gDegree gDegree
def gFourthDegree := Bidegree.add gSquaredDegree gSquaredDegree

def fourth (S : AdamsSpectralSequence) (P : AdamsPageProduct S) (r : Nat)
    (g : (S.element r gDegree).carrier) : (S.element r gFourthDegree).carrier :=
  P.multiply r gSquaredDegree gSquaredDegree (P.multiply r gDegree gDegree g g)
    (P.multiply r gDegree gDegree g g)

theorem fourth_cycle (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (r : Nat) (g : (S.element r gDegree).carrier) :
    S.differential r gFourthDegree (fourth S P.product r g) = 0 :=
  square_cycle S P r gSquaredDegree (P.product.multiply r gDegree gDegree g g)

def namedProduct (S : AdamsSpectralSequence) (P : AdamsPageProduct S) (r : Nat)
    (g : (S.element r gDegree).carrier) (delta : (S.element r deltaDegree).carrier) :
    (S.element r namedDegree).carrier :=
  pageCast S r (by decide : Bidegree.add gFourthDegree deltaDegree = namedDegree)
    (P.multiply r gFourthDegree deltaDegree (fourth S P r g) delta)

theorem named_cycle (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (g : (S.element 4 gDegree).carrier) (delta : (S.element 4 deltaDegree).carrier)
    (deltaCycle : S.differential 4 deltaDegree delta = 0) :
    S.differential 4 namedDegree (namedProduct S P.product 4 g delta) = 0 := by
  exact product_cycle S P 4 gFourthDegree deltaDegree (fourth S P.product 4 g) delta
    (fourth_cycle S P 4 g) deltaCycle

#print axioms square_cycle
#print axioms product_cycle
#print axioms fourth_cycle
#print axioms named_cycle
end ActualAdamsProductCycleBridge
