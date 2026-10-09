import IndexedFamilyCertificates.Basic
import LinProgramCertificates.Tactic

namespace IndexedFamilyCertificates
open PageTransitionCertificates

def KeyValid (key : Key) : Prop := key.object ≠ "" ∧ 2 ≤ key.page
instance (key : Key) : Decidable (KeyValid key) := inferInstanceAs (Decidable (_ ∧ _))

/-- The outgoing map at the source is the incoming map at the target.
Negative auxiliary degrees are allowed; the Adams shift is checked in Int. -/
def Adjacent (source target : Entry) : Prop :=
  source.key.object = target.key.object ∧ source.key.page = target.key.page ∧
  target.key.s = source.key.s + (source.key.page : Int) ∧
  target.key.t = source.key.t + (source.key.page : Int) - 1
instance (a b : Entry) : Decidable (Adjacent a b) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _))

def SameDifferential (source target : Entry) : Prop :=
  source.wire.k = target.wire.m ∧ source.wire.m = target.wire.n ∧
  source.wire.outgoing = target.wire.incoming
instance (a b : Entry) : Decidable (SameDifferential a b) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _))

def Consecutive (before after : Entry) : Prop :=
  before.key.object = after.key.object ∧ after.key.page = before.key.page + 1 ∧
  before.key.s = after.key.s ∧ before.key.t = after.key.t
instance (a b : Entry) : Decidable (Consecutive a b) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _))

/-- Compatibility is conditional on both entries being supplied. A missing
neighbor is not implicitly a zero-dimensional page or a zero differential. -/
def PairCompatible (a b : Entry) : Prop :=
  (Adjacent a b → SameDifferential a b) ∧
  (Consecutive a b → a.wire.h = b.wire.m)
instance (a b : Entry) : Decidable (PairCompatible a b) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-- Full supplied-family consistency: every block has a valid comparison,
overlapping differentials agree, and existing consecutive pages have the
homology dimension. This does not realize an actual spectral sequence. -/
structure Coherent (family : Family) : Prop where
  unique : UniqueKeys family
  entries : ∀ entry ∈ family, KeyValid entry.key ∧ entry.wire.Valid
  pairs : ∀ a ∈ family, ∀ b ∈ family, PairCompatible a b

def checkFamily (family : Family) : Bool :=
  decide (UniqueKeys family) &&
  family.all (fun entry => decide (KeyValid entry.key) && checkWire entry.wire) &&
  family.all (fun a => family.all (fun b => decide (PairCompatible a b)))

theorem checkFamily_sound (family : Family) (h : checkFamily family = true) :
    Coherent family := by
  simp only [checkFamily, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  refine ⟨h.1.1, ?_, h.2⟩
  intro entry he
  exact ⟨(h.1.2 entry he).1, checkWire_sound entry.wire (h.1.2 entry he).2⟩

instance (family : Family) : LinProgramCertificates.CertificateVerifier (Coherent family) where
  Cert := Unit
  check := fun _ => checkFamily family
  sound := fun _ => checkFamily_sound family

theorem Coherent.adjacent {family : Family} (h : Coherent family)
    {a b : Entry} (ha : a ∈ family) (hb : b ∈ family) (hab : Adjacent a b) :
    SameDifferential a b := (h.pairs a ha b hb).1 hab

theorem Coherent.consecutive {family : Family} (h : Coherent family)
    {a b : Entry} (ha : a ∈ family) (hb : b ∈ family) (hab : Consecutive a b) :
    a.wire.h = b.wire.m := (h.pairs a ha b hb).2 hab

/-- Completeness is relative to an explicit requested finite window. This
separate premise prevents pairwise consistency from claiming absent pages. -/
def CoversKeys (family : Family) (requested : List Key) : Prop :=
  ∀ key ∈ requested, ∃ entry ∈ family, entry.key = key

def checkCoverage (family : Family) (requested : List Key) : Bool :=
  requested.all (fun key => family.any (fun entry => entry.key == key))

theorem checkCoverage_sound (family : Family) (requested : List Key)
    (h : checkCoverage family requested = true) : CoversKeys family requested := by
  simpa only [checkCoverage, List.all_eq_true, List.any_eq_true, beq_iff_eq,
    CoversKeys] using h

def checkWindow (family : Family) (requested : List Key) : Bool :=
  checkFamily family && checkCoverage family requested

theorem checkWindow_sound (family : Family) (requested : List Key)
    (h : checkWindow family requested = true) :
    Coherent family ∧ CoversKeys family requested := by
  simp only [checkWindow, Bool.and_eq_true] at h
  exact ⟨checkFamily_sound family h.1, checkCoverage_sound family requested h.2⟩

def diagnoseFamily (family : Family) : Option String := Id.run do
  if !decide (UniqueKeys family) then return some "family.entries: duplicate key"
  for (entry, i) in family.zipIdx do
    if !decide (KeyValid entry.key) then
      return some s!"family.entries[{i}].key: empty object or page below 2"
    if !checkWire entry.wire then
      return some s!"family.entries[{i}].wire: complete comparison rejected"
  for (a, i) in family.zipIdx do
    for (b, j) in family.zipIdx do
      if decide (Adjacent a b) && !decide (SameDifferential a b) then
        return some s!"family.entries[{i},{j}]: adjacent outgoing/incoming mismatch"
      if decide (Consecutive a b) && a.wire.h != b.wire.m then
        return some s!"family.entries[{i},{j}]: next-page homology dimension mismatch"
  return none

namespace CoherenceTests
private def zeroBlock : WireComparison := ⟨1, 0, 0, 0, 0, [], [], [], [], [], []⟩
private def lineBlock : WireComparison :=
  ⟨1, 0, 1, 0, 1, [], [], [true], [true], [], []⟩
private def one : Entry := ⟨⟨"S0", 2, -2, -1⟩, zeroBlock⟩
private def next : Entry := ⟨⟨"S0", 3, -2, -1⟩, zeroBlock⟩
private def wrongNext : Entry := ⟨next.key, lineBlock⟩
private def target : Entry := ⟨⟨"S0", 2, 0, 0⟩, zeroBlock⟩
private def wrongTarget : Entry := ⟨target.key, lineBlock⟩
private def identityOutgoing : WireComparison :=
  ⟨1, 1, 1, 0, 0, [true], [], [], [], [], [true]⟩
private def identityIncoming : WireComparison :=
  ⟨1, 0, 1, 1, 0, [], [true], [], [], [true], []⟩
private def zeroIncoming : WireComparison :=
  ⟨1, 0, 1, 1, 1, [], [false], [true], [true], [false], []⟩
private def fromEntry : Entry := ⟨one.key, identityOutgoing⟩
private def intoEntry : Entry := ⟨target.key, identityIncoming⟩
private def differentIntoEntry : Entry := ⟨target.key, zeroIncoming⟩

example : Coherent [one, next, target] := by lin_cert using ()
example : checkWire wrongNext.wire = true := by decide
example : checkFamily [one, wrongNext] = false := by decide
example : checkFamily [one, wrongTarget] = false := by decide
example : checkFamily [one, one] = false := by decide
example : checkFamily [⟨{ one.key with page := 1 }, zeroBlock⟩] = false := by decide
example : checkFamily [⟨{ one.key with object := "" }, zeroBlock⟩] = false := by decide
example : checkFamily [one, ⟨next.key, { lineBlock with inclusion := [] }⟩] = false := by decide
example : diagnoseFamily [one, wrongNext] =
    some "family.entries[0,1]: next-page homology dimension mismatch" := by decide
example : diagnoseFamily [one, wrongTarget] =
    some "family.entries[0,1]: adjacent outgoing/incoming mismatch" := by decide

example : checkFamily [one] = true := by decide
example : checkCoverage [one] [one.key, next.key] = false := by decide
example : checkWindow [one] [one.key, next.key] = false := by decide
example : checkWindow [one, next] [one.key, next.key] = true := by decide
example : checkWire identityOutgoing = true ∧ checkWire zeroIncoming = true := by decide
example : fromEntry.wire.k = differentIntoEntry.wire.m ∧
    fromEntry.wire.m = differentIntoEntry.wire.n := by decide
example : checkFamily [fromEntry, intoEntry] = true := by decide
example : checkFamily [fromEntry, differentIntoEntry] = false := by decide
end CoherenceTests

#print axioms checkFamily_sound
#print axioms checkCoverage_sound
#print axioms checkWindow_sound
end IndexedFamilyCertificates
