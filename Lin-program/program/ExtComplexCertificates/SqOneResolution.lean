import ExtComplexCertificates.MilnorAction
import Mathlib.Logic.Equiv.Defs

namespace ExtComplexCertificates.SqOneResolution
open LinearCertificates ResolutionCertificates

abbrev q := MilnorAction.sqOneMatrix
abbrev regular := MilnorAction.actions

/-- In basis (1,q), multiplication by q sends (a,b) to (0,a). -/
theorem q_formula (x : Vec 2) : eval q x = fun i => if i.val = 0 then false else x 0 := by
  funext i
  have hi : i.val = 0 ∨ i.val = 1 := by omega
  rcases hi with hi | hi <;> simp [q, MilnorAction.sqOneMatrix,
    MilnorAction.productColumns, MilnorAction.basisMonomial, MilnorAction.sqOne,
    MilnorCertificates.coefficient, eval, dot, hi]

def contraction : Contraction 2 2 2 :=
  ⟨fun i j => decide (i.val = 0 ∧ j.val = 1), fun i j => decide (i.val = 0 ∧ j.val = 1)⟩

theorem periodic_exact : ExactAt q q := by lin_cert using contraction
theorem periodic_equivariant : Equivariant regular regular q := by lin_cert using ()

def freeGenerator : Vec 2 := fun i => decide (i.val = 0)

/-- Coordinate reconstruction on (e0, q e0). This identity alone does not
establish freeness over an abstract quotient algebra. -/
theorem regular_coordinates (x : Vec 2) :
    x = add (fun i => x 0 && freeGenerator i)
      (fun i => x 1 && eval q freeGenerator i) := by
  rw [q_formula]
  funext i
  have hi : i = 0 ∨ i = 1 := by
    have : i.val = 0 ∨ i.val = 1 := by omega
    rcases this with h | h
    · exact Or.inl (Fin.ext h)
    · exact Or.inr (Fin.ext h)
  rcases hi with rfl | rfl <;> simp [add, freeGenerator]

/-- Every positive differential in the infinite periodic chain is q. -/
def differential (_degree : Nat) : Matrix 2 2 := q

theorem exact_every_degree (degree : Nat) : ExactAt (differential degree) (differential (degree+1)) :=
  periodic_exact

def augmentation : Matrix 1 2 := fun _ j => decide (j.val = 0)
def trivial : Actions 1 1 := fun _ _ _ => false
def augmentationContraction : Contraction 1 2 2 :=
  ⟨fun i j => decide (i.val = 0 ∧ j.val = 1), fun i _ => decide (i.val = 0)⟩

theorem augmentation_exact : ExactAt augmentation q := by lin_cert using augmentationContraction
theorem augmentation_equivariant : Equivariant regular trivial augmentation := by lin_cert using ()

theorem augmentation_surjective (y : Vec 1) : InImage augmentation y := by
  refine ⟨fun i => if i.val = 0 then y 0 else false, ?_⟩
  funext i
  have hi : i = 0 := Fin.ext (by omega)
  subst i
  simp [augmentation, eval, dot]

/-- A q-equivariant functional to the trivial module is determined by its value
on 1, with value zero on q. -/
theorem hom_classification (f : Matrix 1 2) (hf : Equivariant regular trivial f) :
    f = fun _ j => if j.val = 0 then f 0 0 else false := by
  have hz := congrFun (hf 0 (fun i => decide (i.val = 0))) 0
  have hq : f 0 1 = false := by
    simpa [regular, trivial, q, MilnorAction.actions, MilnorAction.sqOneMatrix,
      MilnorAction.productColumns, MilnorAction.basisMonomial, MilnorAction.sqOne,
      MilnorCertificates.coefficient, eval, dot] using hz
  funext i j
  have hi : i = 0 := Fin.ext (by omega)
  subst i
  have hj : j = 0 ∨ j = 1 := by
    have : j.val = 0 ∨ j.val = 1 := by omega
    rcases this with h | h
    · exact Or.inl (Fin.ext h)
    · exact Or.inr (Fin.ext h)
  rcases hj with rfl | rfl
  · rfl
  · exact hq

theorem restricted_differential_zero (degree : Nat) (f : Matrix 1 2)
    (hf : Equivariant regular trivial f) (x : Vec 2) :
    eval (compose f (differential degree)) x = zero := by
  rw [eval_compose]
  exact (hf 0 x).trans (eval_zero_matrix _)

def functional (b : Bool) : Matrix 1 2 := fun _ j => if j.val = 0 then b else false

theorem functional_equivariant (b : Bool) : Equivariant regular trivial (functional b) := by
  cases b <;> (lin_cert using ())

/-- Each restricted Hom carrier has a bijection with one Boolean coordinate.
An abstract linear equivalence or cohomology quotient is not constructed. -/
def homCoordinate (_degree : Nat) : EquivariantHom regular trivial ≃ Bool where
  toFun f := f.val 0 0
  invFun b := ⟨functional b, functional_equivariant b⟩
  left_inv f := by
    apply Subtype.ext
    exact (hom_classification f.val f.property).symm
  right_inv _ := rfl

#print axioms exact_every_degree
#print axioms restricted_differential_zero
#print axioms homCoordinate

end ExtComplexCertificates.SqOneResolution
