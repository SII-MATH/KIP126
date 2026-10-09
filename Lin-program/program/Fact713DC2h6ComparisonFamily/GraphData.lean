import Fact713DC2h6ComparisonFamily.Coverage

namespace Fact713DC2h6ComparisonFamily.GraphCoverage
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

structure Envelope where
  version : Nat
  requested : List Key
  available : List Key
  missing : List Key
  outside : List Key
  familyKeys : List Key
  cachedFamily : List (Nat × Key)
  cachedRequest : List (Nat × Key)
  cachedPartition : List (Nat × Key)
  cachedSupplied : List (Nat × Key)
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def parseEnvelope (text : String) : Except String Envelope := do
  let input : Envelope ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson input).compress != text then
    throw "graph: noncanonical JSON or unknown/duplicate field"
  if input.version != 1 then throw "graph.version: expected 1"
  return input

elab "graph_keys% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseEnvelope text.trimAscii.toString with
  | .error error => throwError "{path.getString}: {error}"
  | .ok input => return Lean.toExpr input

def input : Envelope := graph_keys% "Fact713DC2h6ComparisonFamily/graph-proof.json"
def requested : List Key := input.requested
def available : List Key := input.available
def missing : List Key := input.missing
def outside : List Key := input.outside
def familyKeys : List Key := input.familyKeys
theorem familyKeys_eq : familyKeys = family.map Entry.key := by decide
def code (key : Key) : Nat := Fact713ComparisonBatches.keyCode key

/-- Fuel controls reduction cost, never which elements are retained. -/
def mergeFuel (le : α → α → Bool) : Nat → List α → List α → List α
  | 0, xs, ys => xs ++ ys
  | _ + 1, [], ys => ys
  | _ + 1, xs, [] => xs
  | n + 1, a :: xs, b :: ys =>
    if le a b then a :: mergeFuel le n xs (b :: ys)
    else b :: mergeFuel le n (a :: xs) ys

theorem mergeFuel_perm (le : α → α → Bool) (n : Nat) (xs ys : List α) :
    (mergeFuel le n xs ys).Perm (xs ++ ys) := by
  induction n generalizing xs ys with
  | zero => exact .refl _
  | succ n ih =>
    cases xs with
    | nil => exact .refl _
    | cons a xs =>
      cases ys with
      | nil => simp [mergeFuel]
      | cons b ys =>
        simp only [mergeFuel]
        split
        · exact (ih xs (b :: ys)).cons a
        · exact ((ih (a :: xs) ys).cons b).trans List.perm_middle.symm

def sortFuel (le : α → α → Bool) : Nat → List α → List α
  | 0, xs => xs
  | _ + 1, [] => []
  | _ + 1, [x] => [x]
  | n + 1, a :: b :: rest =>
    let xs := a :: b :: rest
    let half := xs.length / 2
    mergeFuel le xs.length (sortFuel le n (xs.take half)) (sortFuel le n (xs.drop half))

theorem sortFuel_perm (le : α → α → Bool) (n : Nat) (xs : List α) :
    (sortFuel le n xs).Perm xs := by
  induction n generalizing xs with
  | zero => exact .refl _
  | succ n ih =>
    cases xs with
    | nil => exact .refl _
    | cons a rest =>
      cases rest with
      | nil => exact .refl _
      | cons b rest =>
        exact (mergeFuel_perm le (a :: b :: rest).length _ _).trans
          (((ih ((a :: b :: rest).take ((a :: b :: rest).length / 2))).append
            (ih ((a :: b :: rest).drop ((a :: b :: rest).length / 2)))).trans
              (List.Perm.of_eq (List.take_append_drop _ _)))

def sortBy (le : α → α → Bool) (xs : List α) : List α := sortFuel le 12 xs
theorem sortBy_perm (le : α → α → Bool) (xs : List α) : (sortBy le xs).Perm xs :=
  sortFuel_perm le 12 xs

def ordered (keys : List Key) : List Key := sortBy (fun a b => code a ≤ code b) keys

theorem mem_of_ordered_eq (left right : List Key) (h : ordered left = ordered right)
    (key : Key) : key ∈ left ↔ key ∈ right := by
  have hl : key ∈ ordered left ↔ key ∈ left :=
    (sortBy_perm (fun a b => code a ≤ code b) left).mem_iff
  have hr : key ∈ ordered right ↔ key ∈ right :=
    (sortBy_perm (fun a b => code a ≤ code b) right).mem_iff
  rw [h] at hl
  exact hl.symm.trans hr

end Fact713DC2h6ComparisonFamily.GraphCoverage
