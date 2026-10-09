import RepresentativeSquareCertificates.Import

namespace RepresentativeSquareCertificates.Examples
open LinearCertificates GeneralizedLeibnizAudit

def pair (a b : Bool) : Vec 2 := fun i => if i.val = 0 then a else b
def swap : Matrix 2 2 := fun i j => decide (i != j)
def one : Matrix 1 1 := fun _ _ => true
def e0 : Matrix 2 1 := fun i _ => decide (i.val = 0)
def e1 : Matrix 2 1 := fun i _ => decide (i.val = 1)

/-- Every map is nonzero, the composite is the identity, and each higher subgroup
is proper and nonzero. The three independently chosen representatives differ. -/
def nonzeroData : Data where
  a := 2; b := 2; c := 2; d := 2
  ha := 1; hb := 1; hc := 1; hd := 1
  f := swap; p := swap; q := swap; g := swap
  higherA := e1; higherB := e0; higherC := e0; higherD := e1
  x := pair true false
  y := pair false true
  z := pair true true
  w := pair true true

def nonzeroCertificate : Certificate nonzeroData where
  firstRep := pair true true
  firstSource := fun _ => true
  firstTarget := fun _ => true
  secondRep := pair true false
  secondSource := fun _ => false
  secondTarget := fun _ => true
  thirdRep := pair false true
  thirdSource := fun _ => true
  thirdTarget := fun _ => true
  firstStable := .alongF one
  lastStable := one

theorem nonzero_transfer : Transfer nonzeroData := by
  representative_square_cert using nonzeroCertificate

theorem nonzero_transfer_other_branch : Transfer nonzeroData := by
  representative_square_cert using
    { nonzeroCertificate with firstStable := .alongP one }

theorem composite_nonzero : eval nonzeroData.q (eval nonzeroData.f nonzeroData.x) != zero := by
  decide

theorem target_leading_nonzero : (⟨nonzeroData.w⟩ : Vector 2) ∉ higher nonzeroData.higherD := by
  rintro ⟨v,hv⟩
  have h := congrArg (fun v : Vector 2 => v.bits 0) hv
  change false = true at h
  cases h

def missingLastData : Data where
  a := 1; b := 1; c := 1; d := 1
  ha := 0; hb := 0; hc := 1; hd := 0
  f := one; p := one; q := one; g := one
  higherA := fun _ i => Fin.elim0 i
  higherB := fun _ i => Fin.elim0 i
  higherC := one
  higherD := fun _ i => Fin.elim0 i
  x := fun _ => true
  y := fun _ => true
  z := fun _ => false
  w := fun _ => false

def missingLastCertificate : Certificate missingLastData where
  firstRep := fun _ => true
  firstSource := Fin.elim0
  firstTarget := Fin.elim0
  secondRep := fun _ => true
  secondSource := Fin.elim0
  secondTarget := fun _ => true
  thirdRep := fun _ => false
  thirdSource := fun _ => false
  thirdTarget := Fin.elim0
  firstStable := .alongF (fun i => Fin.elim0 i)
  lastStable := fun i => Fin.elim0 i

theorem missing_last_other_checks :
    checkChainMap missingLastData.p missingLastData.q missingLastData.f missingLastData.g = true ∧
    checkExtension missingLastData.f missingLastData.higherA missingLastData.higherB
      missingLastData.x missingLastData.y missingLastCertificate.firstRep
      missingLastCertificate.firstSource missingLastCertificate.firstTarget = true ∧
    checkExtension missingLastData.p missingLastData.higherA missingLastData.higherC
      missingLastData.x missingLastData.z missingLastCertificate.secondRep
      missingLastCertificate.secondSource missingLastCertificate.secondTarget = true ∧
    checkExtension missingLastData.g missingLastData.higherC missingLastData.higherD
      missingLastData.z missingLastData.w missingLastCertificate.thirdRep
      missingLastCertificate.thirdSource missingLastCertificate.thirdTarget = true ∧
    checkFirst missingLastData missingLastCertificate.firstStable = true := by decide

theorem missing_last_rejected : check missingLastData missingLastCertificate = false := by decide

theorem missing_last_false : ¬ Transfer missingLastData := by
  rintro ⟨a,⟨s,hs⟩,⟨t,ht⟩⟩
  have h1 := congrArg (fun v : Vector 1 => v.bits 0) hs
  have h0 := congrArg (fun v : Vector 1 => v.bits 0) ht
  change false = xor (a.bits (0 : Fin 1)) true at h1
  change false = xor (xor (a.bits (0 : Fin 1)) false) false at h0
  cases h : a.bits (0 : Fin 1) <;> simp [h] at h1 h0

example : (diagnose missingLastData missingLastCertificate).map (·.location) =
    some "lastStable: row 0, column 0" := by decide

def nonzeroWireData : WireData where
  a := 2; b := 2; c := 2; d := 2
  ha := 1; hb := 1; hc := 1; hd := 1
  f := [false,true,true,false]; p := [false,true,true,false]
  q := [false,true,true,false]; g := [false,true,true,false]
  higherA := [false,true]; higherB := [true,false]
  higherC := [true,false]; higherD := [false,true]
  x := [true,false]; y := [false,true]; z := [true,true]; w := [true,true]

def nonzeroWire : WireCertificate where
  version := 1
  data := nonzeroWireData
  firstRep := [true,true]; firstSource := [true]; firstTarget := [true]
  secondRep := [true,false]; secondSource := [false]; secondTarget := [true]
  thirdRep := [false,true]; thirdSource := [true]; thirdTarget := [true]
  firstBranch := "f"; firstFactor := [true]; lastFactor := [true]

theorem wire_transfer : WireValid nonzeroWire := by representative_square_cert using ()

theorem batch_transfers : ∀ w ∈ [nonzeroWire, {nonzeroWire with firstBranch := "p"}],
    WireValid w := checkBatch_sound _ (by decide)

example : decode {nonzeroWire with version := 2} = .error "version: expected 1" := by rfl
example : (checkWire {nonzeroWire with lastFactor := [false]}) = .ok false := by decide
example : (diagnoseWire {nonzeroWire with firstRep := [true]}) =
    .error "firstRep: vector: expected 2 bits, got 1" := by decide
example : (diagnoseWire {nonzeroWire with firstFactor := [false]}) =
    .ok (some ⟨"representative-square","firstStable.f: row 0, column 0",
      "matrix composite bits differ"⟩) := by decide

#print axioms nonzero_transfer
#print axioms nonzero_transfer_other_branch
#print axioms composite_nonzero
#print axioms target_leading_nonzero
#print axioms missing_last_other_checks
#print axioms missing_last_false
#print axioms missing_last_rejected
#print axioms wire_transfer
#print axioms batch_transfers
end RepresentativeSquareCertificates.Examples
