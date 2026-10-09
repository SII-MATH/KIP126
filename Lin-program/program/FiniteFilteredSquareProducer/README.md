# C++ certificates for finite filtered quotient squares

`finite-filtered-square-export` reads strict JSONL queries and emits canonical
JSONL certificates for `FiniteFilteredSquareCertificates.Import`.

```sh
make -C program/FiniteFilteredSquareProducer
program/FiniteFilteredSquareProducer/finite-filtered-square-export input.jsonl > certificates.jsonl
make -C program/FiniteFilteredSquareProducer test
```

Each query has exactly `version: 1`, `data`, and `firstBranch`. The branch is
`auto`, `f`, or `p`; `auto` prefers `f` when both full-subgroup factorizations
exist. `data` is the exact `WireData` described in the checker README: four
group dimensions and generator widths, all complete filtration matrices,
four maps, four vectors, and `depth,s,n,m,l`. Every dimension and index is
bounded by 64 for producer resources. Each filtration has `depth` levels
and an explicitly zero tail. Bits must be JSON booleans and matrices are
flat row-major arrays; unknown values and fields are rejected.

The producer checks decreasing filtrations, preservation by all four maps,
the equation `q*f = g*p`, and the inequality `n <= m+l`. It solves membership
for all four input vectors, three representative/correction equations, and
the selected first and final full-subgroup stability factorizations.
The raw fourth source vector need not already be a cycle: the theorem uses
an actual cycle with that same leading class, obtained by a valid correction.

Gaussian elimination selects columns left-to-right and rows top-to-bottom,
with all free variables set to zero. Output retains the exact input data.
Sorted JSON keys and fixed elimination choices make output reproducible.
Input can come from a path, `-`, or stdin. Each malformed or unsolvable
record reports its physical line on stderr; subsequent records are still
processed and the process exits 1 if any record fails. Limits are 10 MB per
line and JSON nesting depth 32.

## Trust and validation

C++ and the Python oracle are untrusted. Only Lean's checker soundness
theorem connects an accepted certificate to the actual quotient extension
result; neither JSON strings nor hashes establish mathematical validity.
No theorem identifies these finite groups with a named spectrum's homotopy
groups.

`test.py` independently enumerates finite subgroups and the actual quotient
extension relation. It covers all 20,736 scalar map/vector/decreasing-range
combinations, 1,500 random small inputs, and four substantive fixtures.
Among 22,240 queries, 863 are accepted and 21,377 rejected. Three complete
runs are byte-identical. The strict negative cases include unknown and
duplicate fields, unknown/null/numeric bits, bad branch values, wrong shapes,
oversized dimensions, trailing NUL, blank records, and excessive JSON depth.
The dimension-64 producer case is a transport/witness-generation test only;
there is no claimed dimension-64 kernel theorem.

`Batch00.lean` through `Batch21.lean` import bounded pieces of the actual C++
output. Each applies the Lean `checkBatch_sound` theorem with a kernel-checked
Boolean result. `Imported.lean` combines the 863 individual results and uses
the tactic on four named examples. The final `proof-audit.json` records
whether these builds have all succeeded; merely generating the files is not
a successful proof.

```sh
python3 program/FiniteFilteredSquareProducer/compile.py
python3 program/FiniteFilteredSquareProducer/assert_current.py
```

Final proof evidence records source, external JSON, log and object hashes,
actual compilation exit codes, and standard axiom reports. Rebuilding the
whole project may change object hashes; historical direct-build records
must not be overwritten to pretend they describe a different compilation.
