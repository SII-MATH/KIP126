import RealMapCertificates.MatrixSemantics
namespace RealMapCertificates
open LinearCertificates NamedElementCertificates

structure WireMatrixSemantics where
  version : Nat
  rows : Nat
  cols : Nat
  source : List Monomial
  target : List Polynomial
  entries : List Bool
  images : List (Nat × Polynomial)
  relations : List Polynomial
  terms : List (List Term)
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def WireMatrixSemantics.image (w : WireMatrixSemantics) (g : Nat) : Polynomial :=
  ((w.images.find? (fun p => p.1 == g)).map Prod.snd).getD []
def WireMatrixSemantics.src (w : WireMatrixSemantics) : Fin w.cols → Monomial := fun j => w.source[j.val]?.getD []
def WireMatrixSemantics.tgt (w : WireMatrixSemantics) : Fin w.rows → Polynomial := fun i => w.target[i.val]?.getD []
def WireMatrixSemantics.matrix (w : WireMatrixSemantics) : Matrix w.rows w.cols :=
  fun i j => w.entries[i.val*w.cols+j.val]?.getD false

def WireMatrixSemantics.shape (w : WireMatrixSemantics) : Bool :=
  decide (w.version = 1 ∧ w.source.length = w.cols ∧ w.target.length = w.rows ∧
    w.entries.length = w.rows*w.cols ∧ w.terms.length = w.cols) &&
  decide (w.images.map Prod.fst).Nodup &&
  w.source.all (fun mon => mon.all (fun g => w.images.any (fun p => p.1 == g)))

def WireMatrixSemantics.Valid (w : WireMatrixSemantics) : Prop :=
  w.shape = true ∧ MatrixValid w.image w.relations w.src w.tgt w.matrix

def checkSemanticWire (w : WireMatrixSemantics) : Bool :=
  w.shape && checkMatrix w.image w.relations w.src w.tgt w.matrix
    ⟨fun j => w.terms[j.val]?.getD []⟩

theorem checkSemanticWire_sound (w : WireMatrixSemantics) (h : checkSemanticWire w = true) : w.Valid := by
  simp only [checkSemanticWire, Bool.and_eq_true] at h
  exact ⟨h.1, checkMatrix_sound _ _ _ _ _ _ h.2⟩

instance (w : WireMatrixSemantics) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkSemanticWire w
  sound := fun _ => checkSemanticWire_sound w

def parseSemanticWire (text : String) : Except String WireMatrixSemantics := do
  let w : WireMatrixSemantics ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  if !w.shape then throw "invalid shape, duplicate generator ID, or missing used generator image"
  return w

elab "semantic_map% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseSemanticWire text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end RealMapCertificates

namespace RealMapCertificates
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics

theorem WireMatrixSemantics.allVectors {R S : Type*} [CommRing R] [CharP R 2]
    [CommRing S] [CharP S 2] (w : WireMatrixSemantics) (h : w.Valid)
    (sourceVal : Nat → R) (targetVal : Nat → S) (f : R →+* S)
    (compatible : ∀ g, f (sourceVal g) = evaluate targetVal (w.image g))
    (relationsVanish : ∀ r ∈ w.relations, evaluate targetVal r = 0) (x : Vec w.cols) :
    interpret (fun i => evaluate targetVal (w.tgt i)) (eval w.matrix x) =
      f (interpret (fun j => evaluateMonomial sourceVal (w.src j)) x) :=
  matrixValid_hom w.image w.relations w.src w.tgt w.matrix h.2 sourceVal targetVal f compatible relationsVanish x
end RealMapCertificates
