# Fact 7.6(2): finite Csigmasq top-cell transport

This package proves a conditional finite-page result for the sphere class
`h1*h4*x109,12`, in bidegree `(14,139)`. It does not prove sphere realization,
all-page permanence, or all of Step 4. The exact source is Csigmasq E2 basis
7441, with monomial `1,1,7,1,275,1,1`; its staircase row is **7443**, not E2
basis 7443. The top-cell map has suspension 15 and filtration zero.

## New checked data

- Csigmasq has no raw `d2` column. Its 26 complete d2 matrices (172 columns)
  are reconstructed using coefficient d2 and the two-cell module Leibniz
  rule, with 113 explicit module-relation reductions.
- The bottom generator has empty d2 target `(2,1)`. The top generator does
  **not** have zero differential: staircase row31 records its d2 as
  `h3^2 * bottom`, E2 target basis35. This is an explicit mathematical input.
- All 172 Leibniz expansions and reductions are imported and kernel checked.
  `D2Links` identifies their decoded outputs with every matrix column and
  identifies each complete incoming matrix, including centers not in the DAG.
- The complete top-cell map has 36 E2 degree matrices, 235 columns and no
  polynomial reductions in this range. Images are bottom=0, top=1.
- 48 complete homology comparisons and 24 complete commuting chain-map
  squares construct the maps through E5. All selected rows and raw NULL
  markers are preserved in `search.json`.

## Mathematical scope

`D2.differential_value` derives a checked column from an actual additive
module differential with the Leibniz rule, interpreted coefficient value,
the two generator values and module relations. It does not pretend that an
ungraded ring/module interpretation constructs a topological Adams page.
The later actual-page interfaces retain their explicit full meanings.

`Source.Stage2/3/4` and `Target.Stage2/3/4` use complete actual homology
meanings and the actual quotient transition laws. E3/E4/E5 coordinate formulas
are derived by `ActualDescent.next_map_coordinates`, never supplied as later
coordinate fields. `Source.Prefix` identifies the same certified page system
at each step and constructs the six source/sphere E2-to-E5 trace steps from
the same raw inputs. Every incoming element is covered by the complete
meaning, so a truncated list of incoming boundaries is not accepted.

At `(14,154)` the top-cell E3, E4 and E5 map is `[0,1]`. The named vector is
the second source coordinate and maps to the unique nonzero sphere coordinate.
At the d5 target `(19,158)->(19,143)`, the E5 map is `[1]`.

`Actual.named_d5_zero` derives the sphere d5 value from the **named finite
source d5 cycle**, full d5 naturality and the quotient-derived target map's
zero law. `Actual.result_sound` gives a trace of the user-specified raw input,
a nonzero E5 endpoint and its zero d5. `Actual.extends_to_E6` constructs the
E6 endpoint but does not assert that endpoint is nonzero. There is no d48,
all-future zero, or all-page permanence assertion.

## Explicit unresolved finite conditions

These are branch/interpretation inputs, not database theorems. They occur in
the complete actual meanings; `review.json` enumerates each exact raw row:

| Object | Row | Page | Source degree | Required finite value |
|---|---:|---:|---|---|
| Csigmasq | 7137, 7138 | 3 | (11,152) | zero |
| Csigmasq | 7322, 7323 | 3 | (12,153) | zero |
| Csigmasq | 7603 | 3,4 | (15,155) | zero |
| Csigmasq | 8100 | 3,4 | (19,158) | zero |
| S0 | 2708 | 3 | (7,134) | zero branch |
| S0 | 2858 | 4 | (10,136) | zero |

All these entries are raw NULL. Row2708 has level9997; even that marker is
not treated as a proved nonzero differential. The zero branch is explicit.
The inherited finite known-prefix interpretations also remain inputs; for
example Csigmasq row7443 NULL9952 is only associated with the required finite
d3/d4/d5 cycle prefix. Its future d48 marker supplies no all-page theorem.

## Import, tactic and diagnostics

`csigmasq_d2% "...json"` checks canonical JSON, exact fields, rank, expansion
and every polynomial reduction. `shifted_module_map%` and `page_comparison%`
use the existing canonical importers. `lin_cert using ()` checks all finite
certificates. Errors identify the file; `ModuleToModuleCertificates.diagnose`
also reports the exact column/relation/target-generator failure.

For an actual interpretation certificate `c`, a user can write:

```lean
example (c : Actual.Certificate C S) (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    Actual.ResultValid S c.source.stage.input.targetPages input := by
  csigmasq_d5_cert using c
```

This is a conditional theorem with mathematical data and input binding,
not a way to discharge the unresolved conditions from JSON alone.

## Validation and reproduction

```text
python3 program/Fact762CsigmasqD5/search.py
python3 program/Fact762CsigmasqD5/d2.py
python3 program/Fact762CsigmasqD5/search.py
python3 program/Fact762CsigmasqD5/maps.py
python3 program/Fact762CsigmasqD5/package.py
python3 program/Fact762CsigmasqD5/compile.py
python3 program/Fact762CsigmasqD5/review.py
python3 program/Fact762CsigmasqD5/freeze.py
```

The first search creates the degree graph; the second uses the reconstructed
d2 file. The untrusted homology producer is
`PageTransitionCertificates/page-transition-export` (C++). Lean checks all its
complete comparison identities. Python handles SQLite/provenance and module
coefficients; those polynomial reductions are also rechecked in Lean.
SHA256 values identify inputs and reproducibility, not mathematical truth.

The independent replay checks 172 d2 columns, 235 map columns, 48 complete
comparisons, 1,308 homology vectors, 223,392 quotient pairs, 5,136 map vectors
and six same-input trace steps. Lean negative tests reject wrong named input,
zero input, bad d2 expansion/output/rank/relation, and give countermodels when
naturality or quotient compatibility is omitted.

All current successful proofs use only the standard Lean axioms `propext`,
`Classical.choice`, `Quot.sound` as reported; no custom axiom, `sorry`, native
evaluation trust, or implicit trust in C++ is used. Failed development logs
are retained separately and are not successful compilation evidence.
