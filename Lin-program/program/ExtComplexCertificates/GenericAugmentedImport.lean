import ExtComplexCertificates.GenericAugmentedHomology
import ExtComplexCertificates.GenericComponentDiagnostics

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom

def AugmentedExact (d : Data rank n) (a : AugmentationCertificate) (t : Nat) : Prop :=
  ∀ x, Homogeneous d 0 t x → augmentation d a x = 0 →
    ∃ y, Homogeneous d 1 t y ∧ differential d y = x

instance (d : Data rank n) (a : AugmentationCertificate) (t : Nat) :
    LinProgramCertificates.CertificateVerifier (AugmentedExact d a t) where
  Cert := AugmentedCertificate
  check c := decide (c.t = t) && checkAugmented d a c
  sound c h := by
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    rw [← h.1]
    exact checkAugmented_sound d a c h.2

def parseAugmented (text : String) : Except String AugmentedCertificate := do
  let c : AugmentedCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson c).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  if c.version != 1 then throw "augmented.version: expected 1"
  return c

def diagnoseAugmented (d : Data rank n) (a : AugmentationCertificate)
    (c : AugmentedCertificate) : List String := Id.run do
  let mut errors := diagnoseAugmentation d a ++ (diagnoseArrow d 0 c.t c.incoming).map ("incoming: " ++ ·)
  if c.version != 1 then errors := errors ++ ["augmented.version: expected 1"]
  let k := if c.t = 0 then 1 else 0
  let m := (componentBasisList d 0 c.t).length
  let n' := (componentBasisList d 1 c.t).length
  if c.up.length != n'*m || c.down.length != m*k then errors := errors ++ ["augmented contraction dimensions mismatch"]
  let out := augmentationMatrix d a c.t
  let inc := orderedMatrix d 0 c.t (c.incoming.certificate d 0 c.t)
  let up := ResolutionCertificates.matrixOf n' m c.up
  let down := ResolutionCertificates.matrixOf m k c.down
  for i in List.finRange k do
    for j in List.finRange n' do
      if ResolutionCertificates.compose out inc i j then errors := errors ++ [s!"augmentation boundary failed at ({i.val},{j.val})"]
  for i in List.finRange m do
    for j in List.finRange m do
      if ResolutionCertificates.matrixAdd (ResolutionCertificates.compose inc up)
          (ResolutionCertificates.compose down out) i j != ResolutionCertificates.identityMatrix m i j then
        errors := errors ++ [s!"augmented contraction identity failed at ({i.val},{j.val})"]
  return errors

def decodeAugmented (d : Data rank n) (a : AugmentationCertificate) (text : String) :
    Except String AugmentedCertificate :=
  match parseAugmented text with
  | .error e => .error e
  | .ok c => if checkAugmented d a c then .ok c else .error (String.intercalate "; " (diagnoseAugmented d a c))

theorem decodeAugmented_sound (d : Data rank n) (a : AugmentationCertificate)
    (text : String) (c : AugmentedCertificate) (h : decodeAugmented d a text = .ok c) :
    AugmentedExact d a c.t := by
  unfold decodeAugmented at h
  split at h <;> try contradiction
  split at h <;> try contradiction
  rename_i hc
  cases h
  exact checkAugmented_sound d a _ hc

open Lean Elab Term
elab "generic_augmented_json% " text:str : term => do
  match parseAugmented text.getString with
  | .error e => throwError "generic augmented component: {e}"
  | .ok c => return toExpr c

elab "generic_augmented_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseAugmented text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok c => return toExpr c

#print axioms decodeAugmented_sound
end ExtComplexCertificates.GenericFreeComplex.GenericHom
