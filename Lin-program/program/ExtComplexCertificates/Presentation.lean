import ExtComplexCertificates.Equivariant

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

/-- Words retain order: there is no sorting or commutative multiplication. -/
abbrev Word (a : Nat) := List (Fin a)
abbrev WordPolynomial (a : Nat) := List (Word a)

def wordMatrix (actions : Actions a n) : Word a → Matrix n n
  | [] => identityMatrix n
  | g :: gs => compose (actions g) (wordMatrix actions gs)

def polynomialMatrix (actions : Actions a n) : WordPolynomial a → Matrix n n
  | [] => fun _ _ => false
  | w :: ws => matrixAdd (wordMatrix actions w) (polynomialMatrix actions ws)

theorem word_append (actions : Actions a n) (u v : Word a) (x : Vec n) :
    eval (wordMatrix actions (u ++ v)) x =
      eval (wordMatrix actions u) (eval (wordMatrix actions v) x) := by
  induction u with
  | nil => exact (eval_identity _).symm
  | cons g gs ih =>
    change eval (compose (actions g) (wordMatrix actions (gs ++ v))) x = _
    rw [eval_compose, ih, wordMatrix, eval_compose]

/-- A generator-intertwining map intertwines every noncommutative word. -/
theorem equivariant_word (source : Actions a n) (target : Actions a m) (f : Matrix m n)
    (h : Equivariant source target f) (w : Word a) (x : Vec n) :
    eval f (eval (wordMatrix source w) x) = eval (wordMatrix target w) (eval f x) := by
  induction w with
  | nil => rw [wordMatrix, wordMatrix, eval_identity, eval_identity]
  | cons g gs ih =>
    rw [wordMatrix, wordMatrix, eval_compose, eval_compose, h g _, ih]

theorem eval_zero_matrix (x : Vec n) : eval (fun (_ : Fin m) (_ : Fin n) => false) x = zero := by
  funext i
  exact zero_dot x

/-- List multiplicity implements F2 addition through xor, so repeated words
cancel while word order is preserved. -/
theorem equivariant_polynomial (source : Actions a n) (target : Actions a m) (f : Matrix m n)
    (h : Equivariant source target f) (p : WordPolynomial a) (x : Vec n) :
    eval f (eval (polynomialMatrix source p) x) =
      eval (polynomialMatrix target p) (eval f x) := by
  induction p with
  | nil => rw [polynomialMatrix, polynomialMatrix, eval_zero_matrix, eval_zero_matrix, eval_zero]
  | cons w ws ih =>
    rw [polynomialMatrix, polynomialMatrix, eval_matrixAdd, eval_matrixAdd, eval_add,
      equivariant_word source target f h w x, ih]

def SatisfiesPresentation (actions : Actions a n) (relations : List (WordPolynomial a)) : Prop :=
  ∀ r ∈ relations, ∀ x, eval (polynomialMatrix actions r) x = zero

def checkPresentation (actions : Actions a n) (relations : List (WordPolynomial a)) : Bool :=
  relations.all fun r => decide (∀ i j, polynomialMatrix actions r i j = false)

theorem checkPresentation_sound (actions : Actions a n) (relations : List (WordPolynomial a))
    (h : checkPresentation actions relations = true) : SatisfiesPresentation actions relations := by
  intro r hr x
  have hm := of_decide_eq_true (List.all_eq_true.mp h r hr)
  have he : polynomialMatrix actions r = (fun _ _ => false) :=
    funext fun i => funext fun j => hm i j
  rw [he, eval_zero_matrix]

instance (actions : Actions a n) (relations : List (WordPolynomial a)) :
    LinProgramCertificates.CertificateVerifier (SatisfiesPresentation actions relations) where
  Cert := Unit
  check := fun _ => checkPresentation actions relations
  sound := fun _ => checkPresentation_sound actions relations

/-- Relations remain zero after multiplication by words on either side.
This is the essential two-sided ideal action property. -/
theorem relation_context (actions : Actions a n) (r : WordPolynomial a)
    (h : ∀ x, eval (polynomialMatrix actions r) x = zero)
    (left right : Word a) (x : Vec n) :
    eval (wordMatrix actions left)
      (eval (polynomialMatrix actions r) (eval (wordMatrix actions right) x)) = zero := by
  rw [h, eval_zero]

end ExtComplexCertificates
