# Fact 7.13 h2-product continuation

Both retained `Fact713SquareContinuation` families gain 18 complete
comparisons, for 1,403 entries each. All 1,385 previous entries and their
provenance remain byte-identical. The only new mathematical rule is the
derived named row3147 d3 zero from `Row3147H2Product`.

The complete source at `(16,140)` has E3 dimension three. In its inherited
coordinates the full d3 matrix has columns `[(0,0),(0,0),(1,0)]`, and the
full incoming matrix has columns `[(0,0,0),(0,0,0),(1,0,0)]`. The middle
column is the named E2 raw local coordinate 4, not raw basis row 3147.
The raw source record `[3147,"4",null,9000]` is retained as unknown data;
the new zero value is justified conditionally by the actual h2-product
theorem. Other stored columns are not changed.

The main Fact 7.13 trajectory at `(9,132)` still reaches E10 with source
`[true,true]` and output `[true]`. The next obstruction is now the unknown
d5 at sphere staircase row2693, degree `(10,134)`, with target dimension 1.
The main d10 comparison remains absent. This package does not assert E11
or E12, and it does not select the remaining `b` coefficient.

## Actual semantics

`Actual.Input` uses the complete E2 product/source/factor homology meanings
and actual quotient-product transition already provided by
`Row3147H2Product.Actual.Stage2`, plus its explicit right-source d3 prefix
meaning. Source and target E3 coordinates are constructed from the exact
inherited d2 comparisons. The additional fields supply the complete
incoming d3 coordinate equivalence and equation, local quotient addition
and zero laws, and the independently stored nonzero last d3 column.

The first d3 column is derived from the complete incoming equation and
actual `differentialSq`. The middle column is derived from the h2-product
theorem. Additivity extends these results and the last stored column to
the entire three-dimensional source. Thus the desired middle-column zero
is not an input. `Input.whole` constructs the complete actual homology
meaning, and `Input.page4` constructs the next coordinates. The theorem
`same_input_E4` proves that the caller's exact original E2 vector reaches
a nonzero E4 quotient; no future coordinate function, named nonboundary,
or E4 nonzero hypothesis is supplied.

These meanings remain explicit mathematical assumptions about actual
spectral sequences. The finite family does not instantiate every actual
meaning automatically, and no original topological realization is claimed.

## Imports and tactics

`Data.lean` imports and checks all 18 stable version-1 comparison JSON
records. `extra.json`, `zero_b0-family.json`, and `zero_b1-family.json`
support batch processing of complete comparisons.

```lean
import Fact713H2Continuation.Request
open Fact713H2Continuation
open Fact713Row3143Continuation.Constructed

example (b : Bool) (prefix : Prefix10 S pages) :
    RequestedValid b prefix ActualTraceRequestsE10.e10 := by
  fact713_h2_cert using prefix

example (D : Actual.Input S pages product)
    (input : (S.element 2 Actual.degree).carrier)
    (binding : D.product.product.equivalence input =
      Row3147H2Product.Finite.rawProduct) : SourceValid D input := by
  fact713_h2_source_cert using D
```

The E10 request checker accepts single requests and batches using the
existing strict schema; source/output mutations are rejected in examples.
It retains the caller's same-input `Prefix10` actual meanings. Use
`ActualTraceRequests.diagnose` / `diagnoseBatch` with
`ActualTraceRequestsE10.spec` for request field locations, and
`IndexedFamilyCertificates.diagnoseFamily` for family errors.

## Reproduction and checking

```sh
python3 program/Fact713H2Continuation/generate.py
python3 program/Fact713H2Continuation/package.py
python3 program/Fact713H2Continuation/audit.py
python3 program/Fact713H2Continuation/reproduce.py
python3 program/Fact713H2Continuation/compile.py
python3 program/Fact713H2Continuation/freeze.py
```

The independent finite audit checks both full families: every matrix and
homotopy identity, 9,794 cycle pairs, 2,697 predecessor dimensions,
1,968,409 ordered entry pairs, 1,073 adjacent pairs, and 899 consecutive
pairs per family. It also exhausts all 64 possible three-column d3 maps
to the two-dimensional target, rejecting 63; checks 384 relabelled actual
quotient models; and checks 3,072 named-input bindings. These finite tests
support, but do not replace, universal Lean proofs.

All observed compile attempts are retained in `evidence/`; only successful
stable-input compiles enter the freeze manifest. SHA-256 establishes
reproducibility and source consistency, not mathematical truth. No proof
holes, custom axioms, native evaluator, or implicit trust in C++ is used.
The allowed foundational axioms are `propext`, `Classical.choice`, and
`Quot.sound`.
