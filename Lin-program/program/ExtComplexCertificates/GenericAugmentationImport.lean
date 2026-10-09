import ExtComplexCertificates.GenericAugmentationHom

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
open MilnorCertificates

def AugmentationValid (d : Data rank n) (c : AugmentationCertificate) : Prop :=
  c.version = 1 ∧ c.values.length = n ∧ Bidegree d 0 0 (augmentation d c) ∧
  (augmentation d c).comp (differential d) = 0 ∧ Function.Surjective (augmentation d c)

theorem checkAugmentation_sound (d : Data rank n) (c : AugmentationCertificate)
    (h : checkAugmentation d c = true) : AugmentationValid d c := by
  have hb := checkAugmentation_boundary d c h
  have hs := checkAugmentation_surjective d c h
  simp only [checkAugmentation,Bool.and_eq_true,decide_eq_true_eq] at h
  refine ⟨h.2.1,h.2.2.1,?_,hb,hs⟩
  intro i hi
  rw [augmentation,to_from]
  have hf : c.values[i.val]?.getD false = false := by
    cases he : c.values[i.val]?.getD false with
    | false => rfl
    | true =>
      have hg := h.2.2.2.1 i he
      exact False.elim (hi.elim (fun hn => hn hg.1) (fun hn => hn hg.2))
  rw [hf]
  rfl

instance (d : Data rank n) (c : AugmentationCertificate) :
    LinProgramCertificates.CertificateVerifier (AugmentationValid d c) where
  Cert := Unit
  check _ := checkAugmentation d c
  sound _ := checkAugmentation_sound d c

def diagnoseAugmentation (d : Data rank n) (c : AugmentationCertificate) : List String := Id.run do
  let mut errors := []
  if c.version != 1 then errors := errors ++ ["augmentation.version: expected 1"]
  if c.values.length != n then errors := errors ++ ["augmentation.values: expected n values"]
  if !(c.values.any id) then errors := errors ++ ["augmentation: no generator maps to one"]
  for i in List.finRange n do
    if c.values[i.val]?.getD false && !(d.homological i == 0 && d.internal i == 0) then
      errors := errors ++ [s!"augmentation generator {i.val}: nonzero value outside bidegree (0,0)"]
    for j in List.finRange n do
      for m in d.edge i j do
        if m.length != rank || weight m == 0 then
          errors := errors ++ [s!"minimality edge ({i.val},{j.val}): rank mismatch or nonpositive-weight monomial {m}"]
  return errors

def parseAugmentation (text : String) : Except String AugmentationCertificate := do
  let c : AugmentationCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson c).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  if c.version != 1 then throw "augmentation.version: expected 1"
  return c

def decodeAugmentation (d : Data rank n) (text : String) : Except String AugmentationCertificate :=
  match parseAugmentation text with
  | .error e => .error e
  | .ok c => if checkAugmentation d c then .ok c else .error (String.intercalate "; " (diagnoseAugmentation d c))

theorem decodeAugmentation_sound (d : Data rank n) (text : String) (c : AugmentationCertificate)
    (h : decodeAugmentation d text = .ok c) : AugmentationValid d c := by
  unfold decodeAugmentation at h
  split at h <;> try contradiction
  split at h <;> try contradiction
  rename_i hc
  cases h
  exact checkAugmentation_sound d _ hc

/-- Exactness and actual Hom minimality are proved together for the same d;
this conjunction does not assert Ext or a global projective resolution. -/
theorem exact_minimal_hom (d : Data rank n) (w : WireComponent)
    (he : checkExactComponent d w = true) (hm : checkMinimal d = true) :
    ComponentExact d w.s w.t ∧ ∀ f : Hom rank n, f.comp (differential d) = 0 :=
  ⟨checkExactComponent_sound d w he,hom_differential_zero d hm⟩

open Lean Elab Term
elab "generic_augmentation_json% " text:str : term => do
  match parseAugmentation text.getString with
  | .error e => throwError "generic augmentation: {e}"
  | .ok c => return toExpr c

elab "generic_augmentation_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseAugmentation text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok c => return toExpr c

#print axioms checkAugmentation_sound
#print axioms exact_minimal_hom
end ExtComplexCertificates.GenericFreeComplex.GenericHom
