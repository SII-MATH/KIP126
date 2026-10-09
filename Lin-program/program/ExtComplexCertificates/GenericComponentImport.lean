import ExtComplexCertificates.GenericDifferentialCoordinates
import ExtComplexCertificates.GenericFreeComplexImport
import ResolutionCertificates.Import

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates

structure WireCoordinate where
  generator : Nat
  monomial : Monomial
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr, DecidableEq

structure WireArrow where
  version : Nat
  rank : Nat
  n : Nat
  sourceS : Nat
  targetS : Nat
  targetKind : String
  t : Nat
  source : List WireCoordinate
  target : List WireCoordinate
  entries : List Bool
  products : List Polynomial
  witnesses : List AllCertificate
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

structure WireComponent where
  version : Nat
  s : Nat
  t : Nat
  status : String
  incoming : WireArrow
  outgoing : WireArrow
  up : List Bool
  down : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def wireBasis (d : Data rank n) (s t : Nat) : List WireCoordinate :=
  (componentBasisList d s t).map fun p => ⟨p.1.val,p.2⟩

def WireArrow.certificate {rank n : Nat} (d : Data rank n) (s t : Nat) (a : WireArrow) :
    ComponentCertificate d s t where
  output p i := a.products[(componentBasisList d (s+1) t).idxOf p.val * n + i.val]?.getD []
  witness p i := a.witnesses[(componentBasisList d (s+1) t).idxOf p.val * n + i.val]?.getD
    ⟨⟨0,⟨0,0⟩,[]⟩,0,0⟩

def checkArrowShape (d : Data rank n) (s t : Nat) (a : WireArrow) : Bool := decide
  (a.version = 1 ∧ a.rank = rank ∧ a.n = n ∧ a.sourceS = s+1 ∧ a.targetS = s ∧
    a.targetKind = "component" ∧ a.t = t ∧ a.source = wireBasis d (s+1) t ∧
    a.target = wireBasis d s t ∧ a.entries.length = a.target.length * a.source.length ∧
    a.products.length = a.source.length*n ∧ a.witnesses.length = a.source.length*n)

def orderedMatrix (d : Data rank n) (s t : Nat) (c : ComponentCertificate d s t) :
    LinearCertificates.Matrix (componentBasisList d s t).length (componentBasisList d (s+1) t).length :=
  fun i j => componentMatrixEntry c
    ⟨(componentBasisList d s t).get i,List.mem_toFinset.mpr (List.get_mem _ _)⟩
    ⟨(componentBasisList d (s+1) t).get j,List.mem_toFinset.mpr (List.get_mem _ _)⟩

def checkArrow (d : Data rank n) (s t : Nat) (a : WireArrow) : Bool :=
  checkArrowShape d s t a && checkComponent d s t (a.certificate d s t) &&
  decide (a.entries = (List.finRange (componentBasisList d s t).length).flatMap fun i =>
    (List.finRange (componentBasisList d (s+1) t).length).map fun j =>
      orderedMatrix d s t (a.certificate d s t) i j)

def WireArrow.Valid {rank n : Nat} (d : Data rank n) (s t : Nat) (a : WireArrow) : Prop :=
  checkArrowShape d s t a = true ∧
  a.entries = (List.finRange (componentBasisList d s t).length).flatMap (fun i =>
    (List.finRange (componentBasisList d (s+1) t).length).map fun j =>
      orderedMatrix d s t (a.certificate d s t) i j) ∧
  ∀ v : ComponentCoordinates d (s+1) t,
    differential d (reconstruct d (s+1) t v) =
      reconstruct d s t (componentMatrixAction (a.certificate d s t) v)

theorem checkArrow_sound (d : Data rank n) (s t : Nat) (a : WireArrow)
    (h : checkArrow d s t a = true) : a.Valid d s t := by
  simp only [checkArrow,Bool.and_eq_true,decide_eq_true_eq] at h
  exact ⟨h.1.1,h.2,differential_reconstruct d s t _ h.1.2⟩

def checkZeroArrow (d : Data rank n) (t : Nat) (a : WireArrow) : Bool := decide
  (a.version = 1 ∧ a.rank = rank ∧ a.n = n ∧ a.sourceS = 0 ∧ a.targetS = 0 ∧
    a.targetKind = "zero" ∧ a.t = t ∧ a.source = wireBasis d 0 t ∧ a.target = [] ∧
    a.entries = [] ∧ a.products.length = a.source.length*n ∧
    a.witnesses.length = a.source.length*n)

def WireComponent.contraction (d : Data rank n) (s t : Nat) (w : WireComponent) :
    ResolutionCertificates.Contraction (componentBasisList d s t).length
      (componentBasisList d (s+1) t).length (componentBasisList d (s+2) t).length :=
  ⟨ResolutionCertificates.matrixOf _ _ w.up,ResolutionCertificates.matrixOf _ _ w.down⟩

def checkPositiveComponent (d : Data rank n) (s t : Nat) (w : WireComponent) : Bool :=
  decide (w.version = 1 ∧ w.s = s+1 ∧ w.t = t ∧ w.status = "exact" ∧
    w.up.length = (componentBasisList d (s+2) t).length * (componentBasisList d (s+1) t).length ∧
    w.down.length = (componentBasisList d (s+1) t).length * (componentBasisList d s t).length) &&
  checkArrow d s t w.outgoing && checkArrow d (s+1) t w.incoming &&
  ResolutionCertificates.checkContraction
    (orderedMatrix d s t (w.outgoing.certificate d s t))
    (orderedMatrix d (s+1) t (w.incoming.certificate d (s+1) t)) (w.contraction d s t)

def parseComponent (text : String) : Except String WireComponent := do
  let w : WireComponent ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  if w.version != 1 then throw "component.version: expected 1"
  if !(w.status == "exact" || w.status == "nonexact" || w.status == "not_complex") then
    throw "component.status: unknown marker"
  return w

open Lean Elab Term
elab "generic_component% " path:str "," line:num : term => do
  let text ← IO.FS.readFile path.getString
  let lines := text.splitOn "\n"
  let index := line.getNat
  if index = 0 then throwError "component line numbers start at 1"
  let some row := lines[index-1]? | throwError "{path.getString}:{index}: line missing"
  match parseComponent row with
  | .error e => throwError "{path.getString}:{index}: {e}"
  | .ok w => return toExpr w

#print axioms checkArrow_sound
end ExtComplexCertificates.GenericFreeComplex
