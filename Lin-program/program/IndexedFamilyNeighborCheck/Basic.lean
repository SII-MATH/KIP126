import IndexedFamilyCertificates.Coherence

namespace IndexedFamilyNeighborCheck
open IndexedFamilyCertificates PageTransitionCertificates

def differentialKey (a : Entry) : Key :=
  ⟨a.key.object,a.key.page,a.key.s+(a.key.page : Int),a.key.t+(a.key.page : Int)-1⟩

def nextKey (a : Entry) : Key :=
  ⟨a.key.object,a.key.page+1,a.key.s,a.key.t⟩

theorem adjacent_key (a b : Entry) (h : Adjacent a b) : differentialKey a = b.key := by
  cases a with | mk ak aw =>
    cases b with | mk bk bw =>
      cases ak
      cases bk
      simp only [Adjacent] at h
      cases h.1
      cases h.2.1
      cases h.2.2.1
      cases h.2.2.2
      rfl

theorem consecutive_key (a b : Entry) (h : Consecutive a b) : nextKey a = b.key := by
  cases a with | mk ak aw =>
    cases b with | mk bk bw =>
      cases ak
      cases bk
      simp only [Consecutive] at h
      cases h.1
      cases h.2.1
      cases h.2.2.1
      cases h.2.2.2
      rfl

theorem lookup_member (family : Family) (unique : UniqueKeys family)
    (b : Entry) (member : b ∈ family) : lookup family b.key = some b.wire := by
  induction family with
  | nil => simp at member
  | cons a rest ih =>
    have hu : a.key ∉ rest.map Entry.key ∧ (rest.map Entry.key).Nodup := by
      simpa only [UniqueKeys,List.map_cons,List.nodup_cons] using unique
    rcases List.mem_cons.mp member with rfl | hb
    · simp [lookup]
    · have ne : a.key ≠ b.key := by
        intro h
        exact hu.1 (h ▸ List.mem_map.mpr ⟨b,hb,rfl⟩)
      simpa [lookup,ne] using ih hu.2 hb

/-- Missing neighbors impose no equation, exactly as PairCompatible.
Coverage of a requested window remains a separate check. -/
def checkOne (family : Family) (a : Entry) : Bool :=
  (match lookup family (differentialKey a) with
    | none => true
    | some target => decide (a.wire.k = target.m ∧ a.wire.m = target.n ∧ a.wire.outgoing = target.incoming)) &&
  (match lookup family (nextKey a) with
    | none => true
    | some next => decide (a.wire.h = next.m))

theorem checkOne_sound (family : Family) (unique : UniqueKeys family)
    (a : Entry) (checked : checkOne family a = true)
    (b : Entry) (member : b ∈ family) : PairCompatible a b := by
  have h := checked
  simp only [checkOne,Bool.and_eq_true] at h
  constructor
  · intro adjacent
    have found := lookup_member family unique b member
    rw [← adjacent_key a b adjacent] at found
    have left := h.1
    change (match lookup family (differentialKey a) with
      | none => true
      | some target => decide (a.wire.k = target.m ∧ a.wire.m = target.n ∧ a.wire.outgoing = target.incoming)) = true at left
    rw [found] at left
    exact of_decide_eq_true left
  · intro consecutive
    have found := lookup_member family unique b member
    rw [← consecutive_key a b consecutive] at found
    have right := h.2
    change (match lookup family (nextKey a) with
      | none => true
      | some next => decide (a.wire.h = next.m)) = true at right
    rw [found] at right
    exact of_decide_eq_true right

def checkPairs (family : Family) : Bool := family.all (checkOne family)

theorem pairs_sound (family : Family) (unique : UniqueKeys family)
    (checked : checkPairs family = true) :
    ∀ a ∈ family, ∀ b ∈ family, PairCompatible a b := by
  intro a ha b hb
  exact checkOne_sound family unique a (List.all_eq_true.mp checked a ha) b hb

/-- Large generated families may prove checkOne independently in small batches
and supply the already verified entry-validity theorems. -/
theorem coherent_of_entries (family : Family) (unique : UniqueKeys family)
    (entries : ∀ entry ∈ family, KeyValid entry.key ∧ entry.wire.Valid)
    (neighbors : ∀ entry ∈ family, checkOne family entry = true) : Coherent family :=
  ⟨unique,entries,fun a ha b hb => checkOne_sound family unique a (neighbors a ha) b hb⟩

def checker (family : Family) : Bool :=
  decide (UniqueKeys family) &&
  family.all (fun entry => decide (KeyValid entry.key) && checkWire entry.wire) && checkPairs family

theorem checker_sound (family : Family) (h : checker family = true) : Coherent family := by
  simp only [checker,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true] at h
  refine ⟨h.1.1,?_,pairs_sound family h.1.1 h.2⟩
  intro e he
  exact ⟨(h.1.2 e he).1,checkWire_sound e.wire (h.1.2 e he).2⟩

def checkWindow (family : Family) (requested : List Key) : Bool :=
  checker family && checkCoverage family requested

theorem window_sound (family : Family) (requested : List Key)
    (h : checkWindow family requested = true) : Coherent family ∧ CoversKeys family requested := by
  simp only [checkWindow,Bool.and_eq_true] at h
  exact ⟨checker_sound family h.1,checkCoverage_sound family requested h.2⟩

def diagnose (family : Family) : Option String := Id.run do
  if !decide (UniqueKeys family) then return some "family.entries: duplicate key"
  for (entry,i) in family.zipIdx do
    if !decide (KeyValid entry.key) then return some s!"family.entries[{i}].key: invalid object/page"
    if !checkWire entry.wire then return some s!"family.entries[{i}].wire: comparison rejected"
    if !checkOne family entry then return some s!"family.entries[{i}]: differential or next-page neighbor mismatch"
  return none

#print axioms lookup_member
#print axioms checkOne_sound
#print axioms coherent_of_entries
#print axioms checker_sound
#print axioms window_sound
end IndexedFamilyNeighborCheck
