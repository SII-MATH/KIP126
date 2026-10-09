# Row 2431: complete three-dimensional d3 target detection

`Actual.actual_row2431_whole_d3_zero` proves that the whole actual d3 from
sphere degree `(9,130)` is zero, conditional on complete actual d2 meanings,
actual map interpretations, quotient transition laws and d3 naturality for
the detector `S0__DC2h6`. The target is `(12,132)` and has three E3
coordinates. All three are detected; no one-column test substitutes for
injectivity of this entire target map.

## Search and finite evidence

`search.py` screens all 70 configured maps from S0. It evaluates the named
source and each canonical basis element of the complete three-dimensional
target. The result has one full detector (`S0__DC2h6`), 15 partial detectors,
13 nonzero source images, 24 zero target images, and 17 unknown maps.
Partial detectors are explicitly distinguished from full detectors. All
eight target vectors, including every nontrivial linear combination, enter
the kernel test. No product route is needed for this successful full map
detector.

`review_search.py` independently replays all available raw reductions and
complete quotients. It checks 212 complete cycle quotients, 462 reduction
steps and 193 explicit lifted ring relations. It reruns the whole search
and requires byte-identical output. Unknown results and NULL differentials
are never converted into zero.

`Maps.lean` checks six complete E2 matrices with 13 columns and three
explicit module-relation reductions. `Comparison.lean` checks all four
complete d2 homology quotients and both adjacent squares of each map.
The source E3 map is 1 to 1 and zero. The target E3 map is 3 to 4, with
columns `(0,1,0,0)`, `(0,0,1,0)`, `(0,0,0,1)`.

`Naturality.lean` proves the finite quotient argument.
`MapSemantics.lean` interprets a whole checked matrix as an actual module
map under the supplied generator compatibility and vanishing relations.
`Actual.lean` constructs its E3 map coordinates from two complete
`ActualDescent.Input` values and their actual quotient transition laws.
The whole actual vanishing theorem needs neither a desired d3 value nor
a supplied formula for the E3 map coordinates.

## Coordinate and input binding

The named ss row 2431 has `base = 1`, hence represents **E2 basis row 2432**,
whose monomial is `0,2,68,1,69,1` (`h0^2 D2 h6`). Basis row 2431 is a
different class. `CoordinateBridge.named_basis_row` preserves this binding
and `raw_unknown` preserves the original NULL d3.

The source canonical-to-staircase transformation is identity. The complete
target transformation is `(v0,v1,v2) -> (v0,v0 xor v2,v1)`. Both full
quotient-coordinate agreement theorems are proved in `CoordinateBridge.lean`.
The conditional source d3 wire has dimensions `k=3,m=1,n=0,h=1` and an
entire zero outgoing map. Its comparison is finite evidence; actual
incoming-source completeness still needs an actual interpretation when
this comparison is attached to a spectral-sequence trace.

## Tactic

```lean
example (C : Fact713Row2431Search.Certificate sphere detector)
    (input : (sphere.element 3 Fact713Row2431Search.Actual.sourceDegree).carrier)
    (binding : C.meaning.lower.nextSource.equivalence input =
      Fact713Row2431Search.Actual.named3) :
    Fact713Row2431Search.ResultValid sphere detector C input := by
  row2431_d3_cert using C named binding
```

The result predicate retains the exact named input and actual d3 vanishing.
The tactic reports a specific wrong-goal diagnostic and relies on Lean's
type checking for certificate and binding mismatches. Negative examples
reject a zero named input and an unrelated goal. The underlying whole d3
theorem also applies to every other element of the source carrier.

## Validation

Run from the repository root:

```sh
python3 program/Fact713Row2431Search/review_search.py
python3 program/Fact713Row2431Search/export_maps.py
python3 program/Fact713Row2431Search/generate_comparison.py
python3 program/Fact713Row2431Search/audit_matrices.py
python3 program/Fact713Row2431Search/audit.py
python3 program/Fact713Row2431Search/compile.py
```

The audit files record raw SQL checks, full quotient and chain-map checks,
all target basis combinations, coordinate changes and carrier-label models.
The carrier tests vary zero labels explicitly. They supplement the Lean
proofs; they do not realize an Adams spectral sequence.

All seven leaves compile with `lean -j1`. The 34 axiom reports contain only
the standard foundational axioms `propext`, `Classical.choice`, and
`Quot.sound`, or no axioms. There is no `sorry`, custom axiom, or native
proof evaluator. Source hashes track provenance and reproducibility only.
`reproducibility.json` records byte-identical regeneration of the ten
matrix, source, and comparison files; successful compilation records and
`frozen-source.json` bind the source to the observed evidence.

The package does not prove the supplied actual d2 homology meanings,
module-map interpretations, actual quotient laws, or d3 naturality from
the original topological objects. It establishes this conditional d3
vanishing step, rather than asserting later survival or permanence.
