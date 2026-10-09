import Mathlib.Algebra.Ring.Basic
import Lean.Data.Json.FromToJson.Basic

/-!
Replay of a derivation DAG for one fixed differential and commuting maps.
The model laws and external input theorems are explicit hypotheses. This is
ordinary Leibniz, not the generalized Leibniz/Mahowald theorem of the paper.
-/
namespace PropagationCertificates
open Lean

inductive Expr where
  | atom : Nat → Expr
  | zero : Expr
  | add : Expr → Expr → Expr
  | mul : Expr → Expr → Expr
  | map : Nat → Expr → Expr
  deriving DecidableEq, Repr, ToJson, FromJson

structure Fact where
  source : Expr
  target : Expr
  deriving DecidableEq, Repr, ToJson, FromJson

structure Model (A : Type) [Semiring A] where
  atom : Nat → A
  differential : A → A
  transport : Nat → A → A
  differential_zero : differential 0 = 0
  differential_add : ∀ x y, differential (x + y) = differential x + differential y
  leibniz : ∀ x y, differential (x * y) = differential x * y + x * differential y
  naturality : ∀ i x, differential (transport i x) = transport i (differential x)

def evaluate {A : Type} [Semiring A] (m : Model A) : Expr → A
  | .atom i => m.atom i
  | .zero => 0
  | .add x y => evaluate m x + evaluate m y
  | .mul x y => evaluate m x * evaluate m y
  | .map i x => m.transport i (evaluate m x)

def Valid {A : Type} [Semiring A] (m : Model A) (f : Fact) : Prop :=
  m.differential (evaluate m f.source) = evaluate m f.target

inductive Step where
  | external : Fact → Step
  | zero : Step
  | linearity : Fact → Fact → Step
  | leibniz : Fact → Fact → Step
  | naturality : Nat → Fact → Step
  deriving DecidableEq, Repr, ToJson, FromJson

def conclusion : Step → Fact
  | .external f => f
  | .zero => ⟨.zero, .zero⟩
  | .linearity f g => ⟨.add f.source g.source, .add f.target g.target⟩
  | .leibniz f g => ⟨.mul f.source g.source,
      .add (.mul f.target g.source) (.mul f.source g.target)⟩
  | .naturality i f => ⟨.map i f.source, .map i f.target⟩

def checkStep (external known : List Fact) : Step → Bool
  | .external f => decide (f ∈ external)
  | .zero => true
  | .linearity f g | .leibniz f g => decide (f ∈ known ∧ g ∈ known)
  | .naturality _ f => decide (f ∈ known)

theorem checkStep_sound {A : Type} [Semiring A] (m : Model A)
    (external known : List Fact)
    (he : ∀ f ∈ external, Valid m f) (hk : ∀ f ∈ known, Valid m f)
    (s : Step) (h : checkStep external known s = true) : Valid m (conclusion s) := by
  cases s with
  | external f => exact he f (of_decide_eq_true h)
  | zero => exact m.differential_zero
  | linearity f g =>
    have hh : f ∈ known ∧ g ∈ known := of_decide_eq_true h
    change m.differential (evaluate m f.source + evaluate m g.source) = _
    rw [m.differential_add, hk f hh.1, hk g hh.2]
    rfl
  | leibniz f g =>
    have hh : f ∈ known ∧ g ∈ known := of_decide_eq_true h
    change m.differential (evaluate m f.source * evaluate m g.source) = _
    rw [m.leibniz, hk f hh.1, hk g hh.2]
    rfl
  | naturality i f =>
    have hh : f ∈ known := of_decide_eq_true h
    change m.differential (m.transport i (evaluate m f.source)) = _
    rw [m.naturality, hk f hh]
    rfl

def replay (external : List Fact) : List Fact → List Step → Option (List Fact)
  | known, [] => some known
  | known, s :: rest =>
    if checkStep external known s then replay external (conclusion s :: known) rest
    else none

/-- Return the zero-based failing row; a successful run has no error index. -/
def firstFailure (external : List Fact) : Nat → List Fact → List Step → Option Nat
  | _, _, [] => none
  | row, known, s :: rest =>
    if checkStep external known s then
      firstFailure external (row + 1) (conclusion s :: known) rest
    else some row

theorem replay_sound {A : Type} [Semiring A] (m : Model A) (external : List Fact)
    (he : ∀ f ∈ external, Valid m f) (steps : List Step) :
    ∀ known output, (∀ f ∈ known, Valid m f) →
      replay external known steps = some output → ∀ f ∈ output, Valid m f := by
  induction steps with
  | nil =>
    intro known output hk h
    simp only [replay, Option.some.injEq] at h
    subst output
    exact hk
  | cons s rest ih =>
    intro known output hk h
    simp only [replay] at h
    split at h
    next hs =>
      apply ih (conclusion s :: known) output _ h
      intro f hf
      rcases List.mem_cons.mp hf with hf | hf
      · subst f
        exact checkStep_sound m external known he hk s hs
      · exact hk f hf
    next => contradiction

def check (external : List Fact) (steps : List Step) (result : Fact) : Bool :=
  match replay external [] steps with
  | none => false
  | some output => decide (result ∈ output)

theorem check_sound {A : Type} [Semiring A] (m : Model A) (external : List Fact)
    (he : ∀ f ∈ external, Valid m f) (steps : List Step) (result : Fact)
    (h : check external steps result = true) : Valid m result := by
  unfold check at h
  cases hr : replay external [] steps with
  | none => simp [hr] at h
  | some output =>
    simp only [hr, decide_eq_true_eq] at h
    exact replay_sound m external he steps [] output (by simp) hr result h

end PropagationCertificates
