import MilnorCertificates.Basic
import Lean.Data.Json

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates

structure CompositeTerm where
  left : Monomial
  right : Monomial
  target : Nat
  deriving Lean.ToExpr, Lean.FromJson, Lean.ToJson

structure Query where
  generator : Nat
  terms : List CompositeTerm
  deriving Lean.ToExpr, Lean.FromJson, Lean.ToJson

def compositeCoefficient (q : Query) (target : Nat) (m : Monomial) : Bool :=
  (q.terms.filter fun t => t.target == target &&
    pairTensor [t.left] [t.right] (coproduct 3 m)).length % 2 == 1

def SquareZeroInWindow (q : Query) : Prop :=
  ∀ target, ∀ m ∈ basis 3 8,
    compositeCoefficient q target m = false

def check (q : Query) : Bool :=
  (q.terms.map CompositeTerm.target).all fun target =>
    (basis 3 8).all fun m => !compositeCoefficient q target m

theorem check_sound (q : Query) (h : check q = true) : SquareZeroInWindow q := by
  simp only [check, List.all_eq_true] at h
  intro t m hm
  by_cases ht : t ∈ q.terms.map CompositeTerm.target
  · have hh := h t ht m hm
    cases he : compositeCoefficient q t m <;> simp_all
  · have hf : q.terms.filter (fun x => x.target == t && pairTensor [x.left] [x.right] (coproduct 3 m)) = [] := by
      apply List.filter_eq_nil_iff.mpr
      intro x hx
      have hn : x.target ≠ t := by
        intro he
        exact ht (List.mem_map.mpr ⟨x, hx, he⟩)
      simp [hn]
    simp [compositeCoefficient, hf]

structure RawTerm where
  milnor : List Nat
  target_local_id : Nat
  deriving Lean.ToExpr, Lean.FromJson, Lean.ToJson

structure RawGenerator where
  differential : List RawTerm
  id : Nat
  local_id : Nat
  s : Nat
  t : Nat
  version : Nat
  deriving Lean.ToExpr, Lean.FromJson, Lean.ToJson

def rawCheck (rows : List RawGenerator) : Bool :=
  decide ((rows.map RawGenerator.id).Nodup) &&
  rows.any (fun r => decide (r.id = 0 ∧ r.s = 0 ∧ r.t = 0)) && rows.all fun r =>
    decide (r.version = 1 ∧ r.id = r.s * 524288 + r.local_id ∧ r.local_id < 524288 ∧ r.t ≤ 8) &&
    (if r.s = 0 then r.differential.isEmpty && decide (r.id = 0 ∧ r.t = 0) else true) &&
    r.differential.all fun term =>
      decide (term.milnor.length = 8) && (term.milnor.drop 3).all (· == 0) &&
      rows.any fun target => decide (target.s + 1 = r.s ∧ target.local_id = term.target_local_id ∧
        target.t + MilnorCertificates.weight term.milnor = r.t)

/-- Two-step composition is reconstructed in Lean from original differential records. -/
def composeRaw (rows : List RawGenerator) (r : RawGenerator) : Query :=
  ⟨r.id, r.differential.flatMap fun outer =>
    rows.flatMap fun target =>
      if target.s + 1 = r.s ∧ target.local_id = outer.target_local_id then
        target.differential.map fun inner =>
          ⟨outer.milnor.take 3, inner.milnor.take 3, inner.target_local_id⟩
      else []⟩

def checkRaw (rows : List RawGenerator) : Bool :=
  rawCheck rows && rows.all fun r => check (composeRaw rows r)

def RawValid (rows : List RawGenerator) : Prop :=
  rawCheck rows = true ∧ ∀ r ∈ rows, SquareZeroInWindow (composeRaw rows r)

theorem checkRaw_sound (rows : List RawGenerator) (h : checkRaw rows = true) : RawValid rows := by
  simp only [checkRaw, Bool.and_eq_true, List.all_eq_true] at h
  exact ⟨h.1, fun r hr => check_sound _ (h.2 r hr)⟩

open Lean Elab Term
elab "resolution_square% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let json ← match Lean.Json.parse text.trimAscii.toString with
    | .error e => throwError "{e}"
    | .ok j => pure j
  let q : Query ← match Lean.fromJson? json with
    | .error e => throwError "{e}"
    | .ok q => pure q
  return Lean.toExpr q

elab "raw_resolution% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let mut rows : List RawGenerator := []
  let lines := text.splitOn "\n"
  for (line, index) in lines.zipIdx do
    if line.isEmpty then
      if index + 1 != lines.length then throwError "blank record at line {index + 1}"
    else
      let json ← match Lean.Json.parse line with
        | .error e => throwError "{e}"
        | .ok j => pure j
      let r : RawGenerator ← match Lean.fromJson? json with
        | .error e => throwError "{e}"
        | .ok r => pure r
      if (Lean.toJson r).compress != line then throwError "noncanonical/unknown/duplicate fields"
      if r.version != 1 then throwError "unsupported version"
      rows := rows ++ [r]
  return Lean.toExpr rows

end ExtComplexCertificates.ActualResolution
