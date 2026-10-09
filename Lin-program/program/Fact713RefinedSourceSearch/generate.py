"""Export only five additional comparisons; reference already checked batches."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
baseline = ROOT / 'Fact713E12Search/successor-search.json'
snapshot = HERE / 'refined.json'
old = json.loads(baseline.read_text())['comparisons']
report = json.loads(snapshot.read_text())
blocks = report['comparisons'] | report['successor_closure']
keys = sorted(set(blocks) - set(old))
assert len(keys) == 5
bindings = {'S0:24,144:d2': (8, 8), 'S0:24,144:d3': (17, 38),
            'S0:28,147:d2': (8, 27), 'S0:28,147:d3': (18, 13),
            'S0:32,150:d2': (9, 7)}
tag = lambda key: 'b_' + key.replace(':', '_').replace(',', '_')
lines = ['import Fact713RefinedSourceSearch.Basic']
lines += [f'import Fact713ComparisonBatches.Batch{n:02}' for n in [8, 9, 17, 18]]
lines += ['namespace Fact713RefinedSourceSearch.Data',
          'open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches',
          'set_option maxRecDepth 100000', 'set_option maxHeartbeats 8000000']
(HERE / 'wires').mkdir(exist_ok=True)
for key in keys:
    name = tag(key)
    (HERE / 'wires' / (name + '.json')).write_text(
        json.dumps(blocks[key]['wire'], sort_keys=True, separators=(',', ':')) + '\n')
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
for key, (batch, index) in bindings.items():
    entries = json.loads((ROOT / f'Fact713ComparisonBatches/Batch{batch:02}.json').read_text())['entries']
    assert entries[index]['wire'] == old[key]['wire']
    assert entries[index]['key'] == dict(object='S0', page=old[key]['page'],
                                         s=old[key]['center'][0], t=old[key]['center'][1])
    name = tag(key)
    lines += [f'def {name} : WireComparison := (batch{batch:02}[{index}]).wire',
              f'theorem {name}_valid : {name}.Valid :=',
              f'  (batch{batch:02}_valid _ (List.getElem_mem (show {index} < batch{batch:02}.length from by decide))).2',
              f'theorem {name}_key : (batch{batch:02}[{index}]).key =',
              f'    ⟨"S0", {old[key]["page"]}, {old[key]["center"][0]}, {old[key]["center"][1]}⟩ := by decide']
lines += ['''
structure RawStaircaseRow where
  row : Nat
  base : String
  differential : Option String
  level : Nat
  deriving DecidableEq

def unknownRow : RawStaircaseRow := ⟨3476, "0", none, 9000⟩
def successorRow : RawStaircaseRow := ⟨3728, "2", some "0,2", 9996⟩
theorem unknown_preserved : unknownRow.differential = none := rfl
theorem successor_page : successorRow.level = 10000 - 4 := by decide

/-- Character-list recursion keeps the small raw bindings kernel reducible. -/
def supportIndices : List Char → Option Nat → List Nat → Option (List Nat)
  | [], none, [] => some []
  | [], none, _ :: _ => none
  | [], some value, values => some (values ++ [value])
  | ',' :: rest, some value, values => supportIndices rest none (values ++ [value])
  | ',' :: _, none, _ => none
  | c :: rest, current, values =>
    if '0'.toNat ≤ c.toNat && c.toNat ≤ '9'.toNat then
      if current = some 0 then none
      else supportIndices rest (some (current.getD 0 * 10 + c.toNat - '0'.toNat)) values
    else none

/-- A checked local support decoder. NULL is not an input string. -/
def decodeSupport (n : Nat) (text : String) : Option (List Bool) := do
  let indices ← supportIndices text.toList none []
  if !(indices.all (fun i => i < n)) || !decide indices.Nodup then none
  else some ((List.range n).map (fun i => indices.contains i))

theorem row3476_raw_support : decodeSupport 3 unknownRow.base =
    some [true, false, false] := by decide
theorem row3728_raw_support : decodeSupport 3 successorRow.base =
    some [false, false, true] := by decide
theorem row3728_raw_target_support : successorRow.differential.bind (decodeSupport 3) =
    some [true, false, true] := by decide
theorem row3476_no_raw_value : unknownRow.differential.bind (decodeSupport 1) = none := rfl
example : decodeSupport 3 "0," = none := by decide
example : decodeSupport 3 "0,0" = none := by decide
example : decodeSupport 3 "3" = none := by decide
example : decodeSupport 3 "00" = none := by decide
example : decodeSupport 3 "?" = none := by decide

def raw3476 : Vec 3 := fun i => i.val == 0
def source3476 : Vec 2 := fun i => i.val == 1
def raw3728 : Vec 3 := fun i => i.val == 2
def raw3728Target : Vec 3 := fun i => i.val != 1

theorem row3476_projection :
    eval (matrixOf 2 2 b_S0_24_144_d3.projection)
      (eval (matrixOf 2 3 b_S0_24_144_d2.projection) raw3476) = source3476 := by
  funext i
  exact (show ∀ i, _ = source3476 i from by decide) i

theorem row3728_source_projection :
    eval (matrixOf 1 1 b_S0_28_147_d3.projection)
      (eval (matrixOf 1 3 b_S0_28_147_d2.projection) raw3728) = (fun _ => true) := by
  funext i
  exact (show ∀ i, _ = true from by decide) i

theorem row3728_target_projection :
    eval (matrixOf 1 1 b_S0_32_150_d3.projection)
      (eval (matrixOf 1 3 b_S0_32_150_d2.projection) raw3728Target) = (fun _ => true) := by
  funext i
  exact (show ∀ i, _ = true from by decide) i

theorem row3728_whole_matrix :
    matrixOf 1 1 b_S0_28_147_d4.outgoing = successor := by
  funext i j
  exact (show ∀ i j, _ = successor i j from by decide) i j

theorem adjacent_d4_agrees :
    b_S0_24_144_d4.outgoing = b_S0_28_147_d4.incoming := by decide

theorem row3476_inferred_finite_value :
    eval (matrixOf 1 2 b_S0_24_144_d4.outgoing) source3476 = zero := by
  funext i
  exact (show ∀ i, _ = zero i from by decide) i

/-- The raw record is still unknown. This conditional theorem instead uses
the complete known successor map and actual differential square zero. -/
theorem row3476_actual_value (S : ManualInputObligations.Reference.AdamsSpectralSequence)
    (middle : (S.element 4 middleDegree).carrier → Vec 1)
    (next : (S.element 4 nextDegree).carrier → Vec 1)
    (faithful : Function.Injective middle)
    (values : ∀ y, next (S.differential 4 middleDegree y) =
      eval (matrixOf 1 1 b_S0_28_147_d4.outgoing) (middle y))
    (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = 0 := by
  apply actual_source_d4_zero S
    (⟨middle, next, faithful, ?_⟩ : SuccessorMeaning S) x
  simpa only [row3728_whole_matrix] using values

#print axioms row3476_projection
#print axioms row3476_raw_support
#print axioms row3728_raw_support
#print axioms row3728_raw_target_support
#print axioms row3728_source_projection
#print axioms row3728_target_projection
#print axioms row3728_whole_matrix
#print axioms row3476_inferred_finite_value
#print axioms row3476_actual_value
end Fact713RefinedSourceSearch.Data
''']
(HERE / 'Data.lean').write_text('\n'.join(lines))
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
(HERE / 'manifest.json').write_text(json.dumps(dict(
    additional_comparison_keys=keys, new_e12_keys=report['new_comparison_keys'],
    reused_batch_bindings={k: list(v) for k, v in bindings.items()},
    baseline_comparisons=1234, refined_e12_comparisons=1236,
    successor_closure_comparisons=13, total_distinct_comparisons=len(blocks),
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [baseline, snapshot, Path(__file__)]},
    limitation='Finite conditional reconstruction. Actual complete known successor meaning remains a caller obligation; raw row3476 differential is NULL.'), indent=2) + '\n')
print('5 additional wires; 5 references to existing checked batch entries')
