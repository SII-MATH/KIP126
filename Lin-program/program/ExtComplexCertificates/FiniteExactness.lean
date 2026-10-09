import ExtComplexCertificates.RawResolutionExample
import ResolutionCertificates.Import

namespace ExtComplexCertificates.ActualResolution
open LinearCertificates MilnorCertificates ResolutionCertificates

abbrev FreeBasisTerm := RawGenerator × Monomial

/-- All declared generators and all Milnor monomials of the residual degree. -/
def freeBasis (rows : List RawGenerator) (s t : Nat) : List FreeBasisTerm :=
  rows.flatMap fun r => if r.s = s ∧ r.t ≤ t then
    ((basis 3 8).filter fun m => weight m + r.t = t).map fun m => (r,m)
  else []

/-- Entry of d(a e)=a d(e), recomputed using Milnor dual coproduct pairing. -/
def differentialEntry (target source : FreeBasisTerm) : Bool :=
  (source.1.differential.filter fun term =>
    term.target_local_id == target.1.local_id &&
      pairTensor [source.2] [term.milnor.take 3] (coproduct 3 target.2)).length % 2 == 1

def freeDifferential (rows : List RawGenerator) (s t : Nat) :
    Matrix (freeBasis rows s t).length (freeBasis rows (s+1) t).length :=
  fun i j => differentialEntry (freeBasis rows s t)[i] (freeBasis rows (s+1) t)[j]

def augmentedOutgoing (rows : List RawGenerator) (s t : Nat) :
    Matrix (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length)
      (freeBasis rows s t).length :=
  fun i j => if s = 0 then decide (t = 0) else
    match (freeBasis rows (s-1) t)[i.val]? with
    | some target => differentialEntry target ((freeBasis rows s t)[j])
    | none => false

/-- Exported matrices are accepted only if every entry equals Lean's raw
differential extension, and the contraction proves exactness for those maps. -/
def checkLinked (rows : List RawGenerator) (s t : Nat) (w : WireContraction) : Bool :=
  rawCheck rows && decide (t ≤ 8 ∧ w.m = (freeBasis rows s t).length ∧
    w.n = (freeBasis rows (s+1) t).length ∧
    w.k = (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length)) &&
  decide (w.incoming = (List.finRange (freeBasis rows s t).length).flatMap fun i =>
    (List.finRange (freeBasis rows (s+1) t).length).map fun j => freeDifferential rows s t i j) &&
  decide (w.outgoing = (List.finRange (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length)).flatMap fun i =>
    (List.finRange (freeBasis rows s t).length).map fun j => augmentedOutgoing rows s t i j) &&
  checkWire w

def rawContraction (rows : List RawGenerator) (s t : Nat) (w : WireContraction) :
    Contraction (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length)
      (freeBasis rows s t).length (freeBasis rows (s+1) t).length :=
  ⟨matrixOf (freeBasis rows (s+1) t).length (freeBasis rows s t).length w.up,
   matrixOf (freeBasis rows s t).length
     (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length) w.down⟩

def checkRawExact (rows : List RawGenerator) (s t : Nat) (w : WireContraction) : Bool :=
  checkLinked rows s t w && checkContraction (augmentedOutgoing rows s t)
    (freeDifferential rows s t) (rawContraction rows s t w)

theorem checkRawExact_sound (rows : List RawGenerator) (s t : Nat) (w : WireContraction)
    (h : checkRawExact rows s t w = true) :
    ExactAt (augmentedOutgoing rows s t) (freeDifferential rows s t) := by
  simp only [checkRawExact, Bool.and_eq_true] at h
  exact checkContraction_sound _ _ _ h.2

def LinkedExact (rows : List RawGenerator) (s t : Nat) (w : WireContraction) : Prop :=
  rawCheck rows = true ∧ t ≤ 8 ∧
  w.m = (freeBasis rows s t).length ∧ w.n = (freeBasis rows (s+1) t).length ∧
  w.k = (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length) ∧
  w.incoming = (List.finRange (freeBasis rows s t).length).flatMap (fun i =>
    (List.finRange (freeBasis rows (s+1) t).length).map fun j => freeDifferential rows s t i j) ∧
  w.outgoing = (List.finRange (if s = 0 then if t = 0 then 1 else 0 else (freeBasis rows (s-1) t).length)).flatMap (fun i =>
    (List.finRange (freeBasis rows s t).length).map fun j => augmentedOutgoing rows s t i j) ∧
  w.Valid

theorem checkLinked_sound (rows : List RawGenerator) (s t : Nat) (w : WireContraction)
    (h : checkLinked rows s t w = true) : LinkedExact rows s t w := by
  simp only [checkLinked, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨hr, ⟨ht, hm, hn, hk⟩⟩, hi⟩, ho⟩, hw⟩ := h
  exact ⟨hr, ht, hm, hn, hk, hi, ho, checkWire_sound w hw⟩

end ExtComplexCertificates.ActualResolution
