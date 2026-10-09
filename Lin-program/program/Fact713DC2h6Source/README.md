# Fact713 row 2622 through DC2h6

The raw staircase record is `[2622,11,133,"1",null,9000]`. Its named E2
representative is local basis 1, monomial `h6*Md0`. Because h6 has nonzero d2,
ordinary E3 Leibniz cannot use that factorization. This directory supplies a
complete naturality detector using the configured map `S0__DC2h6`.

## Checked detector and mathematical meaning

Six complete shifted module matrices have 11 columns and need no polynomial
reductions. Their degrees are `(9,132)`, `(11,133)`, `(13,134)`, `(12,134)`,
`(14,135)`, `(16,136)`. Four complete d2 comparisons and two full compatible
maps check both adjacent squares and descend to the cycle/boundary quotients.
The source quotient map is `(a,b) -> a`; the full target quotient map sends
`a -> (0,a)` and reflects zero on every target class.

The named source has coordinates `(0,1)`. Its E2 image is nonzero but is a
checked d2 boundary, with incoming preimage `(1,0,0)`. `Naturality.named_maps_zero`
uses this actual boundary witness. The typed theorem
`Actual.actual_row2622_d3_zero` proves d3 vanishing from faithful coordinates,
the complete meanings of the two induced maps, and actual d3 naturality.
No desired differential value is a premise. `MapSemantics.lean` also supplies
the all-vector polynomial interpretation over arbitrary characteristic-two
commutative rings with modules satisfying the supplied relations.

`Overlay.lean` proves the complete change from detector source coordinates to
staircase coordinates: `(a,b) -> (a,a XOR b)`. The named vector stays `(0,1)`.
`CoordinateBridge.lean` proves the full target coordinate change is the
one-dimensional identity and transports the actual result to staircase column
1. These statements concern complete quotients, not just agreement at zero.

## Finite overlay and remaining scope

`refine.py` preserves all previous 1257 distinct blocks exactly and inserts
only the conditional row-2622 d3 rule. Fifteen new comparison certificates give
1269 available blocks in the E12 dependency graph, 151 blocked blocks, and
1272 distinct blocks including three pre-existing successor-closure blocks.
The raw NULL remains present. Later row-2622 differentials are not guessed.

The named finite trajectory still extends only through d6, giving a finite E7
prefix. Its next d7 obstruction is row 2994 at `(17,138):d3`. This directory
does not prove actual E7 survival, E12 survival, or Fact713 from topology.
Actual Adams map meanings, complete comparison meanings, and all inherited
NULL-prefix interpretations remain explicit mathematical obligations.

## Files and verification

- `Maps.lean`, `wire/*.json`, `source.json`, `export_maps.py`: six strict map
  certificates and exact database provenance.
- `Comparison.lean`, `comparison-source.json`, `generate_comparison.py`:
  four full comparisons and two compatible maps.
- `Naturality.lean`, `MapSemantics.lean`, `Actual.lean`: finite quotient
  arguments, arbitrary-vector semantics, and conditional actual transport.
- `Overlay.lean`, `CoordinateBridge.lean`, `wires/*.json`, `refined.json`,
  `refine.py`, `generate_overlay.py`: fifteen new blocks and coordinate binding.
- `audit_detector.py`, `detector-audit.json`, `audit_overlay.py`,
  `overlay-audit.json`: independent SQL/matrix and entire-overlay replay.
- `independent_review.py`, `independent-review.json`, `INDEPENDENT_REVIEW.md`:
  separate seven-leaf review with no findings.
- `row2994-screen/`: read-only all-70-map frontier screen, independent replay,
  byte-identical reproduction, and exact failure locations; no new Lean rule.
- `compile.py`, `*.log`, `*-compile.json`: direct compiler evidence. Historical
  failed logs are retained and are not successful-build evidence.
- `file-list.txt`: recursive artifact inventory, excluding Python bytecode.

All seven Lean leaves compile with exit code 0. The twenty axiom reports use
only standard Lean axioms (`propext`, `Classical.choice`, `Quot.sound`), with
some theorems axiom-free. No custom axiom, `sorry`, native proof evaluator, or
implicit C++ trust is introduced. SHA-256 binds bytes and is not a mathematical
correctness argument. The independent overlay replay checks 2551 vectors,
9489 cycle pairs, 966 adjacent differentials and 2316 predecessor dimensions.

Run from the repository root after dependencies are registered and built:

```sh
python3 program/Fact713DC2h6Source/export_maps.py
python3 program/Fact713DC2h6Source/generate_comparison.py
python3 program/Fact713DC2h6Source/audit_detector.py
python3 program/Fact713DC2h6Source/refine.py
python3 program/Fact713DC2h6Source/generate_overlay.py
python3 program/Fact713DC2h6Source/audit_overlay.py
python3 program/Fact713DC2h6Source/compile.py
```

The prior all-70-map row-2622 search is retained under
`../Fact713NextSourceSearch/row2622-screen/`. It found DC2h6 as the sole complete
source-zero, full-target-injective candidate; 20 searches retain explicit
failure records. Its computational bounds and read-only SQL inputs remain
auditable in the retained search wrapper and shared search engine.
