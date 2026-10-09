import PageTransitionCertificates.Import

namespace HighFiltrationD2Certificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates

structure Wire where
  version : Nat
  rows : Nat
  cols : Nat
  basis : List Bool
  inverse : List Bool
  images : List Bool
  matrix : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.basisMatrix (w : Wire) := matrixOf w.cols w.cols w.basis
def Wire.inverseMatrix (w : Wire) := matrixOf w.cols w.cols w.inverse
def Wire.imageMatrix (w : Wire) := matrixOf w.rows w.cols w.images
def Wire.outputMatrix (w : Wire) := matrixOf w.rows w.cols w.matrix

def Shape (w : Wire) : Prop := w.version=1 ∧
  w.basis.length=w.cols*w.cols ∧ w.inverse.length=w.cols*w.cols ∧
  w.images.length=w.rows*w.cols ∧ w.matrix.length=w.rows*w.cols
instance (w : Wire) : Decidable (Shape w) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

/-- A full basis and its inverse determine the reconstructed map from its
values on every staircase basis vector, without assigning meanings to NULL. -/
def Wire.Valid (w : Wire) : Prop := Shape w ∧
  compose w.basisMatrix w.inverseMatrix = identityMatrix w.cols ∧
  compose w.inverseMatrix w.basisMatrix = identityMatrix w.cols ∧
  w.outputMatrix = compose w.imageMatrix w.inverseMatrix

def check (w : Wire) : Bool := decide (Shape w) &&
  decide (∀ i j, compose w.basisMatrix w.inverseMatrix i j = identityMatrix w.cols i j) &&
  decide (∀ i j, compose w.inverseMatrix w.basisMatrix i j = identityMatrix w.cols i j) &&
  decide (∀ i j, w.outputMatrix i j = compose w.imageMatrix w.inverseMatrix i j)

theorem check_sound (w : Wire) (h : check w=true) : w.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1, funext fun i => funext (h.1.1.2 i),
    funext fun i => funext (h.1.2 i), funext fun i => funext (h.2 i)⟩

def diagnose (w : Wire) : Option String := Id.run do
  if w.version != 1 then return some "version"
  if w.basis.length != w.cols*w.cols then return some "basis.length"
  if w.inverse.length != w.cols*w.cols then return some "inverse.length"
  if w.images.length != w.rows*w.cols then return some "images.length"
  if w.matrix.length != w.rows*w.cols then return some "matrix.length"
  for mismatch in [firstMismatch "basis*inverse" (compose w.basisMatrix w.inverseMatrix)
      (identityMatrix w.cols),
    firstMismatch "inverse*basis" (compose w.inverseMatrix w.basisMatrix)
      (identityMatrix w.cols),
    firstMismatch "matrix" w.outputMatrix (compose w.imageMatrix w.inverseMatrix)] do
    if mismatch.isSome then return mismatch
  return none

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

theorem matrix_reconstruction (w : Wire) (h : w.Valid) (d : Matrix w.rows w.cols)
    (basisValues : ∀ i j, eval d (fun k => w.basisMatrix k j) i = w.imageMatrix i j) :
    ∀ x, eval d x = eval w.outputMatrix x := by
  have he : compose d w.basisMatrix = w.imageMatrix :=
    funext fun i => funext fun j => basisValues i j
  intro x
  have hx : eval w.basisMatrix (eval w.inverseMatrix x) = x := by
    rw [← eval_compose, h.2.1, eval_identity]
  calc
    eval d x = eval d (eval w.basisMatrix (eval w.inverseMatrix x)) := congrArg (eval d) hx.symm
    _ = eval w.imageMatrix (eval w.inverseMatrix x) := by rw [← eval_compose, he]
    _ = eval w.outputMatrix x := by rw [h.2.2.2, eval_compose]

/-- Additivity and zero preservation extend basis-vector values to arbitrary
linear combinations; no matrix representation premise is needed. -/
theorem additive_on_combinations (d : Vec m → Vec k)
    (zeroPreserving : d zero = zero)
    (additive : ∀ x y, d (add x y) = add (d x) (d y))
    (basis : Matrix m n) (images : Matrix k n)
    (values : ∀ j, d (fun i => basis i j) = (fun i => images i j)) :
    ∀ v, d (eval basis v) = eval images v := by
  induction n with
  | zero =>
    intro v
    exact zeroPreserving
  | succ n ih =>
    intro v
    change d (add (fun i => basis i 0 && v 0)
      (eval (fun i j => basis i j.succ) (fun j => v j.succ))) =
      add (fun i => images i 0 && v 0)
        (eval (fun i j => images i j.succ) (fun j => v j.succ))
    rw [additive, ih (fun i j => basis i j.succ) (fun i j => images i j.succ)
      (fun j => values j.succ)]
    cases hv : v 0 with
    | false =>
        simp only [Bool.and_false]
        change add (d LinearCertificates.zero) _ = add LinearCertificates.zero _
        rw [zeroPreserving]
    | true => simpa only [hv, Bool.and_true] using
        congrArg (fun z => add z (eval (fun i j => images i j.succ) (fun j => v j.succ))) (values 0)

theorem additive_reconstruction (w : Wire) (h : w.Valid) (d : Vec w.cols → Vec w.rows)
    (zeroPreserving : d zero = zero)
    (additive : ∀ x y, d (add x y) = add (d x) (d y))
    (basisValues : ∀ j, d (fun i => w.basisMatrix i j) = (fun i => w.imageMatrix i j)) :
    ∀ x, d x = eval w.outputMatrix x := by
  intro x
  have hx : eval w.basisMatrix (eval w.inverseMatrix x) = x := by
    rw [← eval_compose, h.2.1, eval_identity]
  calc
    d x = d (eval w.basisMatrix (eval w.inverseMatrix x)) := congrArg d hx.symm
    _ = eval w.imageMatrix (eval w.inverseMatrix x) :=
      additive_on_combinations d zeroPreserving additive w.basisMatrix w.imageMatrix basisValues _
    _ = eval w.outputMatrix x := by rw [h.2.2.2, eval_compose]

inductive ColumnKind where
  | storedD2 | incomingBoundary | laterPrefix
  deriving DecidableEq, Lean.ToExpr

/-- Imported meaning of the source staircase, kept as an explicit premise.
Neither a level number nor a NULL cell proves these equations. -/
def StaircaseMeaning (w : Wire) (kind : Fin w.cols → ColumnKind)
    (d : Vec w.cols → Vec w.rows) : Prop := ∀ j,
  match kind j with
  | .storedD2 => d (fun i => w.basisMatrix i j) = (fun i => w.imageMatrix i j)
  | .incomingBoundary | .laterPrefix => d (fun i => w.basisMatrix i j) = zero

def PrefixImagesZero (w : Wire) (kind : Fin w.cols → ColumnKind) : Prop :=
  ∀ j, kind j ≠ .storedD2 → ∀ i, w.imageMatrix i j = false

instance (w : Wire) (kind : Fin w.cols → ColumnKind) : Decidable (PrefixImagesZero w kind) :=
  inferInstanceAs (Decidable (∀ j, kind j ≠ .storedD2 → ∀ i, w.imageMatrix i j = false))

theorem staircase_reconstruction (w : Wire) (h : w.Valid)
    (kind : Fin w.cols → ColumnKind) (prefixImages : PrefixImagesZero w kind)
    (d : Vec w.cols → Vec w.rows) (zeroPreserving : d zero = zero)
    (additive : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning w kind d) :
    ∀ x, d x = eval w.outputMatrix x := by
  apply additive_reconstruction w h d zeroPreserving additive
  intro j
  have hm := meaning j
  cases hk : kind j with
  | storedD2 => simpa only [hk] using hm
  | incomingBoundary =>
      simp only [hk] at hm
      rw [hm]
      exact funext fun i => (prefixImages j (by simp [hk]) i).symm
  | laterPrefix =>
      simp only [hk] at hm
      rw [hm]
      exact funext fun i => (prefixImages j (by simp [hk]) i).symm

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/unknown/duplicate JSON field"
  if !decide (Shape w) then throw "version or matrix dimensions"
  return w

elab "d2_basis% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

#print axioms additive_reconstruction
#print axioms staircase_reconstruction
#print axioms check_sound
end HighFiltrationD2Certificates
