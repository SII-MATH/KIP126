import NamedElementCertificates.ModuleEvaluation

namespace NamedElementCertificates.ModuleExpressions

structure Wire where
  version : Nat
  rank : Nat
  relations : List (List Polynomial)
  input : List Polynomial
  output : List Polynomial
  terms : List Term
  deriving Lean.FromJson, Lean.ToJson, Lean.ToExpr

def toExpression (n : Nat) (p : List Polynomial) : Expression n := fun i => p[i.val]?.getD []
def Wire.valid (w : Wire) : Bool :=
  decide (w.version = 1 ∧ w.input.length = w.rank ∧ w.output.length = w.rank) &&
  w.relations.all (fun r => r.length == w.rank) &&
  check (w.relations.map (toExpression w.rank)) (toExpression w.rank w.input)
    (toExpression w.rank w.output) w.terms

def Wire.ShapeValid (w : Wire) : Prop :=
  w.version = 1 ∧ w.input.length = w.rank ∧ w.output.length = w.rank ∧
    ∀ r ∈ w.relations, r.length = w.rank

def Wire.Valid (w : Wire) : Prop :=
  w.ShapeValid ∧ (∀ t ∈ w.terms, t.relation < w.relations.length) ∧
  ∀ i : Fin w.rank, EqualModuloRelations []
    (toExpression w.rank w.input i ++ toExpression w.rank w.output i)
    (combine (w.relations.map (toExpression w.rank)) w.terms i)

theorem checkWire_sound (w : Wire) (h : w.valid = true) : w.Valid := by
  simp only [Wire.valid, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true,
    beq_iff_eq] at h
  obtain ⟨⟨⟨hv, hi, ho⟩, hr⟩, hc⟩ := h
  simp only [check, Bool.and_eq_true, List.all_eq_true, decide_eq_true_eq] at hc
  refine ⟨⟨hv, hi, ho, hr⟩, ?_, ?_⟩
  · simpa only [List.length_map] using hc.1
  · intro i
    exact NamedElementCertificates.check_sound _ _ _ [] (hc.2 i)

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => w.valid
  sound := fun _ => checkWire_sound w

def parseWire (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical or duplicate/unknown fields"
  if w.version != 1 then throw "unsupported module certificate version"
  if w.input.length != w.rank || w.output.length != w.rank then throw "input/output rank mismatch"
  if !(w.relations.all (fun r => r.length == w.rank)) then throw "relation rank mismatch"
  if !(w.terms.all (fun t => t.relation < w.relations.length)) then throw "relation index outside table"
  if !w.valid then throw "module coefficient identity rejected"
  return w

open Lean Elab Term
elab "module_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseWire text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

end NamedElementCertificates.ModuleExpressions
