import ModuleToModuleCertificates.ShiftedImport
import ResolutionCertificates.Basic

namespace DerivedMapCertificates
open LinearCertificates NamedElementCertificates ModuleToModuleCertificates

/-- Scalar multiplication represented inside a finite module expression family.
For a ring source the sole source generator represents the unit. -/
def factorImages (a b : Nat) (ringSource : Bool) (factor : List Polynomial) :
    Fin a → ModuleExpressions.Expression b := fun i =>
  if ringSource then expr b factor
  else fun j => if i.val = j.val then factor[0]?.getD [] else []

structure FactorWire where
  version : Nat
  name : String
  sourceName : String
  targetName : String
  sourceS : Int
  sourceT : Int
  targetS : Int
  targetT : Int
  shiftS : Int
  shiftT : Int
  limit : Int
  ringSource : Bool
  factor : List Polynomial
  algebra : Wire
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def FactorWire.shape (w : FactorWire) : Bool :=
  decide (w.version=1 ∧ w.targetS=w.sourceS+w.shiftS ∧ w.targetT=w.sourceT+w.shiftT ∧
    w.sourceT ≤ w.limit ∧ w.factor.length=w.algebra.targetGenerators ∧
    (w.ringSource=true → w.algebra.sourceGenerators=1) ∧
    (w.ringSource=false → w.algebra.sourceGenerators ≤ w.algebra.targetGenerators) ∧
    (w.ringSource=false → ∀ i : Fin w.algebra.targetGenerators, i.val ≠ 0 → w.factor[i.val]?.getD [] = [])) &&
  expressionIdsValid w.factor &&
  decide (∀ i j, w.algebra.img i j =
    factorImages w.algebra.sourceGenerators w.algebra.targetGenerators w.ringSource w.factor i j)

def FactorWire.Valid (w : FactorWire) : Prop := w.shape=true ∧ w.algebra.Valid

def checkFactor (w : FactorWire) : Bool := w.shape && checkWire w.algebra

theorem checkFactor_sound (w : FactorWire) (h : checkFactor w=true) : w.Valid := by
  simp only [checkFactor, Bool.and_eq_true] at h
  exact ⟨h.1, checkWire_sound _ h.2⟩

instance (w : FactorWire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkFactor w
  sound := fun _ => checkFactor_sound w

/-- The checked factor images are the actual substitution in the semantic conclusion;
no supplied arbitrary generator-map hypothesis replaces the factor. -/
theorem FactorWire.column_semantics (w : FactorWire) (h : w.Valid)
    (R N : Type) [CommRing R] [CharP R 2] [AddCommGroup N] [Module R N]
    (v : Nat → R) (g : Fin w.algebra.targetGenerators → N)
    (hr : ∀ r ∈ w.algebra.rels, ModuleExpressions.evaluate v g r = 0)
    (j : Fin w.algebra.cols) :
    ModuleExpressions.evaluate v g
      (substitute (factorImages w.algebra.sourceGenerators w.algebra.targetGenerators
        w.ringSource w.factor) (w.algebra.src j)) =
    ModuleExpressions.evaluate v g (decode w.algebra.tgt (fun i => w.algebra.mat i j)) := by
  have hh := h.1
  simp only [FactorWire.shape, Bool.and_eq_true, decide_eq_true_eq] at hh
  have he : w.algebra.img = factorImages w.algebra.sourceGenerators
      w.algebra.targetGenerators w.ringSource w.factor := by
    funext i j
    exact hh.2 i j
  rw [← he]
  exact h.2.2 j R N v g hr

/-- Every F2 linear combination of the complete columns satisfies the factor
substitution semantics, rather than just the individually exported vectors. -/
theorem FactorWire.allVectors (w : FactorWire) (h : w.Valid)
    (R N : Type) [CommRing R] [CharP R 2] [AddCommGroup N] [Module R N]
    (v : Nat → R) (g : Fin w.algebra.targetGenerators → N)
    (hr : ∀ r ∈ w.algebra.rels, ModuleExpressions.evaluate v g r = 0)
    (x : Vec w.algebra.cols) :
    ModuleMapCertificates.interpretModule
      (fun i => ModuleExpressions.evaluate v g (w.algebra.tgt i)) (eval w.algebra.mat x) =
    ModuleMapCertificates.interpretModule
      (fun j => ModuleExpressions.evaluate v g
        (substitute (factorImages w.algebra.sourceGenerators w.algebra.targetGenerators
          w.ringSource w.factor) (w.algebra.src j))) x := by
  rw [interpretModule_matrix (R:=R)]
  have hc (j : Fin w.algebra.cols) :
      ModuleMapCertificates.interpretModule
        (fun i => ModuleExpressions.evaluate v g (w.algebra.tgt i)) (fun i => w.algebra.mat i j) =
      ModuleExpressions.evaluate v g
        (substitute (factorImages w.algebra.sourceGenerators w.algebra.targetGenerators
          w.ringSource w.factor) (w.algebra.src j)) := by
    rw [← decode_evaluate]
    exact (w.column_semantics h R N v g hr j).symm
  rw [funext hc]

structure CompositionWire where
  version : Nat
  name : String
  sourceName : String
  middleName : String
  targetName : String
  sourceS : Int
  sourceT : Int
  middleS : Int
  middleT : Int
  targetS : Int
  targetT : Int
  firstShiftS : Int
  firstShiftT : Int
  secondShiftS : Int
  secondShiftT : Int
  firstLimit : Int
  secondLimit : Int
  cols : Nat
  middle : Nat
  rows : Nat
  first : List Bool
  second : List Bool
  output : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def CompositionWire.a (w : CompositionWire) : Matrix w.middle w.cols :=
  fun i j => w.first[i.val*w.cols+j.val]?.getD false

def CompositionWire.b (w : CompositionWire) : Matrix w.rows w.middle :=
  fun i j => w.second[i.val*w.middle+j.val]?.getD false

def CompositionWire.c (w : CompositionWire) : Matrix w.rows w.cols :=
  fun i j => w.output[i.val*w.cols+j.val]?.getD false

def CompositionWire.shape (w : CompositionWire) : Prop :=
  w.version=1 ∧ w.middleS=w.sourceS+w.firstShiftS ∧ w.middleT=w.sourceT+w.firstShiftT ∧
  w.targetS=w.middleS+w.secondShiftS ∧ w.targetT=w.middleT+w.secondShiftT ∧
  w.sourceT ≤ w.firstLimit ∧ w.middleT ≤ w.secondLimit ∧
  w.first.length=w.middle*w.cols ∧ w.second.length=w.rows*w.middle ∧
  w.output.length=w.rows*w.cols
instance (w : CompositionWire) : Decidable w.shape := inferInstanceAs (Decidable (_ ∧ _))

def CompositionWire.Valid (w : CompositionWire) : Prop := w.shape ∧
  ∀ x, eval w.c x = eval w.b (eval w.a x)

def checkComposition (w : CompositionWire) : Bool := decide w.shape &&
  decide (∀ i j, w.c i j = ResolutionCertificates.compose w.b w.a i j)

theorem checkComposition_sound (w : CompositionWire) (h : checkComposition w=true) : w.Valid := by
  simp only [checkComposition, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1, fun x => ?_⟩
  have he : w.c = ResolutionCertificates.compose w.b w.a := by
    funext i j
    exact h.2 i j
  rw [he]
  exact ResolutionCertificates.eval_compose _ _ x

instance (w : CompositionWire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkComposition w
  sound := fun _ => checkComposition_sound w

/-- Transport a checked composite through independently established interpretations
of its two adjacent matrices. This exposes all mathematical compatibility premises. -/
theorem CompositionWire.transport (w : CompositionWire) (h : w.Valid)
    {A B C : Type} (source : Vec w.cols → A) (middle : Vec w.middle → B)
    (target : Vec w.rows → C) (f : A → B) (g : B → C)
    (first : ∀ x, middle (eval w.a x) = f (source x))
    (second : ∀ y, target (eval w.b y) = g (middle y)) (x : Vec w.cols) :
    target (eval w.c x) = g (f (source x)) := by
  rw [h.2 x, second, first]

end DerivedMapCertificates
