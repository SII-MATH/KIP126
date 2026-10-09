# Next Fact713 source: row 2684 through C2h5

The shortest missing path after the previous finite E6 prefix was
`(9,132):d6 -> (3,127):d5 -> (8,131):d4 -> (12,134):d3`.
The final raw record is `[2684,12,134,"0",null,9000]`. Its representative is
E2 local basis 0, database basis id 2682, monomial `h5*x_(91,11)`. The two
monomial factors both have nonzero d2, so treating them as E3 factors would
be invalid. This implementation instead proves a naturality consequence.

## Complete detector

The configured map `S0__C2h5` has shift zero and bottom generator 0. Six full
coefficient matrices, covering both three-term d2 complexes, have 15 columns
and six explicit polynomial reductions. Four complete comparisons and both
adjacent squares for each map are checked. Thus both maps descend to the
full cycle/boundary quotients.

The source quotient map is zero on the entire two-dimensional source. The
target quotient map has columns `(0,1,0)` and `(0,0,1)`, so it reflects zero
on every element of the two-dimensional target. `Naturality.named_d3_zero`
proves the finite quotient consequence. `Actual.actual_row2684_d3_zero`
proves the typed actual-Adams consequence using the supplied actual map
meanings, faithful coordinates, zero meanings and actual d3 naturality.
No desired d3 value appears in its premises, and raw NULL is retained.

The matrix algebra's `MapSemantics.actual_all_vectors` applies to every vector
over any characteristic-two commutative coefficient ring whose imported
relations vanish. Actual Adams interpretations remain explicit mathematical
inputs, not consequences of the source-file hashes.

## Search and reconstruction

`search_maps.py` covers all 70 configured S0 maps, using the named source and
all three nonzero target directions. 49 maps have all four requested quotient
computations; 21 retain explicit failures. 26 annihilate the named source.
The sole full-target single-map candidate is C2h5; 68 map pairs also jointly
detect the target. `review_maps.py` independently replays every direction and
`reproducibility.json` records a byte-identical rerun. Search bounds remain
10,000 reduction steps and 100,000 intermediate terms with mandatory coverage
metadata.

`refine.py` adds only the proved conditional row-2684 d3 rule. All previous
1249 distinct comparisons are unchanged. Eight new comparisons give 1254
available E12-graph blocks, 166 blocked blocks, and 1257 distinct blocks
including the three external successor-closure blocks. `Overlay.finite_E7`
checks the named finite trajectory through d6. It is not an actual E7 theorem:
all inherited actual interpretations, including stored NULL-prefix meanings,
remain explicit. Later d4/d5/d6 values of row 2684 are not filled by its d3
theorem.

`frontier.json` lists the next two shortest d7 gaps: row 2622 at `(11,133):d3`
and row 2994 at `(17,138):d3`. Raw row 2622 is `h6*Md0`, but h6 has nonzero d2;
an ordinary E3 product proof cannot use that factorization without more
mathematics. No later missing value is guessed.

## Files and verification

- `Maps.lean`, `wire/*.json`, `source.json`, `export_maps.py`: strict full
  polynomial/module map certificates and exact SQL provenance.
- `Comparison.lean`, `comparison-source.json`, `generate_comparison.py`:
  four complete d2 comparisons and two full compatible maps.
- `Naturality.lean`, `MapSemantics.lean`, `Actual.lean`: finite quotient proof,
  all-vector algebra semantics, and actual-Adams conditional transport.
- `Overlay.lean`, `wires/*.json`, `generate_overlay.py`, `refined.json`:
  eight new comparison certificates and finite E7 trajectory.
- `audit_detector.py`, `detector-audit.json`, `audit_overlay.py`,
  `overlay-audit.json`: independent raw and finite verification.
- `CoordinateBridge.lean`: whole changes between the detector coordinates and
  staircase coordinates. Their common source representative has coordinates
  `(1,0)` and `(0,1)` respectively; column 1 in the overlay is intentional.
- `compile.py`, successful logs and `*-compile.json`: direct compiler evidence.
  Historical failed logs are retained separately, not successful artifacts.

All seven leaves compile successfully. Their eighteen axiom reports use only
standard Lean axioms, including six reports for the separate full-coordinate
bridge. Independent overlay replay checks 2531 vectors, 9453 cycle
pairs, 954 adjacent maps and 2271 predecessor dimensions. No custom axiom,
`sorry`, native proof evaluator or C++ trust is used.

Run from the repository root, with registered dependencies already built:

```sh
python3 program/Fact713NextSourceSearch/search_maps.py
python3 program/Fact713NextSourceSearch/review_maps.py
python3 program/Fact713NextSourceSearch/export_maps.py
python3 program/Fact713NextSourceSearch/generate_comparison.py
python3 program/Fact713NextSourceSearch/audit_detector.py
python3 program/Fact713NextSourceSearch/refine.py
python3 program/Fact713NextSourceSearch/generate_overlay.py
python3 program/Fact713NextSourceSearch/audit_overlay.py
python3 program/Fact713NextSourceSearch/compile.py
```
