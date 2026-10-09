# Representative-square witness producer

This C++ program solves finite F2 representative and subgroup-factorization
equations and exports certificates for `RepresentativeSquareCertificates`.
Lean checks the resulting ordinary additive-group/coset transfer theorem.
This is an algebraic substep, not an instance or proof of the paper's
generalized Leibniz Theorem6.1. Actual filtered products, crossing
conditions, and spectral-sequence interpretations are not supplied.

## Build and run

```sh
make -C program/RepresentativeSquareProducer all test
program/RepresentativeSquareProducer/representative-square-export INPUT.jsonl > OUTPUT.jsonl
python3 program/RepresentativeSquareProducer/compile.py
python3 program/RepresentativeSquareProducer/assert_current.py
```

Omitting the input path, or passing `-`, reads standard input. Each
nonempty physical input line is one independent input. Successful lines
produce one certificate each, in input order. Failed lines produce no
certificate and report `path:line: reason` on standard error. Processing
continues after an invalid line; any failure makes the process exit1.
Consumers must check the exit status. Output line numbers can differ
from input line numbers after rejection.

## Input protocol

Each input has exactly these fields:

```json
{"data":{},"firstBranch":"auto","version":1}
```

The `data` object must contain all 20 fields from `WireData`:

| Field | Type or dimensions |
| --- | --- |
| `a,b,c,d,ha,hb,hc,hd` | Natural dimensions, each 0 through64 |
| `f,p,q,g` | Matrices `b*a,c*a,d*b,d*c` |
| `higherA,higherB,higherC,higherD` | Matrices `a*ha,b*hb,c*hc,d*hd` |
| `x,y,z,w` | Vectors of lengths `a,b,c,d` |

Matrices are flattened row-major arrays of JSON Booleans. Vectors are
Boolean arrays. Numeric 0/1 are not accepted as Booleans. The first
branch is `f`, `p`, or `auto`; auto prefers `f` whenever its complete
factorization exists and otherwise tries `p`.

Whitespace and field ordering are allowed on input. Unknown and
duplicate fields, missing fields, nulls, wrong lengths, wrong types,
unsupported versions, unknown branches and trailing JSON are rejected.
Markers such as `?`, `[NULL]`, `possibly`, and `external_input` cannot
become Boolean zero. Zero-dimensional groups and redundant higher
generators are supported. The parser bounds records at 10MB and nesting
at depth32; dimensions are capped at64 to bound elimination work.

## Deterministic synthesis

The producer first checks the complete square `q*f = g*p`. For each of
the three extensions it solves

```text
[f*H | K] * [source; target] = y + f*x
rep = x + H*source
```

This yields the checked equations `H*source = rep+x` and
`K*target = f*rep+y`. The three applications are `(f,x,y)`, `(p,x,z)`,
and `(g,z,w)` with their corresponding higher-generator matrices.

Each first factor solves either `higherB*F = f*higherA` or
`higherC*F = p*higherA` on every generator. The last factor solves
`higherD*L = g*higherC`. Whole-subgroup preservation follows in Lean
from these equations and linearity. No completeness is inferred from a
sample of named vectors.

Gaussian elimination selects columns from left to right and pivot rows
from top to bottom, then sets all free variables to zero. This fixes all
representatives and factors reproducibly. Rank-deficient and empty
systems are handled explicitly. No solution produces a diagnostic
naming the first/second/third extension or the first/last stability
condition. A square failure reports its exact row and column.

## Output and Lean import

Output is exactly the version1 `WireCertificate` protocol in
`RepresentativeSquareCertificates/Import.lean`: the unchanged mathematical
data, all nine witness vectors, `firstBranch` equal to `f` or `p`, and
the two complete factor matrices. Keys are sorted, whitespace omitted,
and Booleans serialized as `true`/`false`. Every record ends in a newline.
No source labels or hashes are used as mathematical evidence.

`Imported.lean` imports the generated `case_f.json`, `case_p.json`, and
`case_zero.json` through the strict elaborator, then proves their
`WireValid` propositions using `lin_cert`. It also imports all 1,480
successful test outputs and proves every record valid by a kernel
decision and a proved batch-checker soundness theorem. The local batch
elaborator reports the file and physical line of malformed or rejected records.
It preserves all physical lines and removes only one optional terminal LF.
Leading, interior, or additional trailing empty lines are rejected at their
original line number. CRLF is rejected explicitly; canonical batches use LF.
The pure `parseBatch` has compiled regression checks for these cases and
for valid batches with or without a terminal LF.
The elaborator builds literal data; final proofs recheck the Boolean
checker using the Lean kernel.

The companion `representative_square_cert using certificate` tactic
proves `Transfer data` directly from an in-memory typed certificate;
`Transfer` has additive-homomorphism and coset semantics.

## Verification and trust

`test.py` independently enumerates every scalar configuration of four
maps, four higher maps, and four named values: 4,096 cases. Another
1,200 reproducibly generated cases include dimensions0,1,2. It decides
existence by enumerating all representatives and complete correction
subgroups, independently of Gaussian elimination. For every accepted
certificate it checks all witness equations, both factors, and the
final transfer conclusion directly.

The results are 1,480 accepted cases (1,230 branchf and250 branchp)
and3,816 rejected cases. Three full successful runs are byte-identical.
The regression also covers 21 malformed/unknown inputs, numeric bits,
and a nonsingular dimension64 example. `audit.json` records inputs,
results, and content hashes; hashes provide reproducibility only.

The C++ producer and Python regression are outside Lean's trust root.
The compiled Lean import proves the finite transfer claims using only
standard Lean axioms. It supplies no actual Kervaire filtered topology,
no unknown differential values, and no evidence that all source data
represent the intended mathematical objects.
