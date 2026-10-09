# Finite exactness and chain homotopy certificates

This module proves exactness of explicit finite F2 vector-space complexes.
For `F2^n --incoming--> F2^m --outgoing--> F2^k`, a certificate supplies
`up : F2^m -> F2^n` and `down : F2^k -> F2^m`. The checker verifies
both `outgoing incoming = 0` and `incoming up + down outgoing = identity`
on every matrix entry (equivalently every basis vector). This is polynomial
in matrix dimensions. `checkContraction_sound` proves the complex is exact:
for every cycle x, including arbitrary linear combinations, `up x` is a
preimage of x. No exhaustive enumeration of vectors is required.

`checkHomotopy_sound` verifies `f + g = targetIncoming up + down outgoing`
and proves that f(x)+g(x) is a boundary for every cycle x. To describe actual
maps of homology groups the user also needs source and target complexes and
chain-map proofs; this theorem only states the precise boundary-difference
property and does not hide those hypotheses.

```lean
import ResolutionCertificates.Examples
open ResolutionCertificates
example : ExactAt dOut dIn := by
  lin_cert using homotopy
```

`WireContraction` stores a version, dimensions k/m/n and four row-major lists
of Boolean entries. `parse` rejects malformed dimensions, unsupported versions
and noncanonical JSON, including duplicate/unknown fields. `checkWire` repeats
all size/version checks, so missing entries cannot become accepted zero padding.
`checkWire_sound` proves exactness for precisely the decoded matrices.
`resolution_bundle% "path.json"` imports concrete data for the standard
`lin_cert using ()` tactic. Recompile the consuming source when JSON changes;
the importer does not register external files as Lake dependencies.
`diagnose` identifies the matrix row/column where either identity fails.

This is **not** a free resolution over the Steenrod algebra and does not
identify the resulting cohomology with Ext or an Adams E2 page. Algebra-module
linearity, augmentation, graded resolution coverage and the Ext identification
need separate definitions and proofs. There are no custom axioms, `sorry`,
or `native_decide` in this module.

Direct Lean compilation passed for Basic, Import and Examples. The examples
include a nontrivial split exact sequence, a rejected zero contraction, a
homotopy boundary theorem, file import and rejection of a truncated matrix.
Both primary soundness theorems depend only on the standard Lean axioms
`propext` and `Quot.sound`, as checked by `#print axioms`.

## Producer and batch workflow

The untrusted C++ producer uses deterministic Gaussian elimination over F2
to solve for all entries of up/down simultaneously. It first checks the complex
condition, then solves the linear contraction equation and sets free variables
to zero. Inconsistent equations produce an error, never an exactness claim.
Dimensions are restricted to at most 32 for producer resource control.

```sh
c++ -std=c++17 -O2 -Wall -Wextra -Wpedantic ResolutionCertificates/export.cpp -o ResolutionCertificates/resolution-export
ResolutionCertificates/resolution-export 1 2 1 01 10 > ResolutionCertificates/sample.json
ResolutionCertificates/resolution-export --batch ResolutionCertificates/batch.txt > ResolutionCertificates/batch.jsonl
lake env lean --run ResolutionCertificates/CheckFile.lean ResolutionCertificates/batch.jsonl
lake env lean ResolutionCertificates/Examples.lean
python3 ResolutionCertificates/test_export.py
```

Each input line is `K M N OUTGOING_BITS INCOMING_BITS`; matrices use row-major
strings of 0/1 and the zero-size matrix uses `-`. Each output line is a complete
canonical JSON certificate. Batch failures report the input line and exit
nonzero; earlier successful rows may already have been written. The Lean
checker validates every row independently. `Examples.lean` imports the actual
C++-produced `sample.json` and proves its exactness with `lin_cert`.

## One-dimensional homology

`HomologyBasis.lean` extends the contraction identity to
`identity = incoming up + down outgoing + x tensor coefficient`.
The checker also verifies the complex condition, that x is a cycle, and that
the coefficient functional annihilates every boundary while taking value 1
on x. `checkHomologyBasis_sound` proves x is nonboundary and every arbitrary
cycle y is either a boundary or differs from x by a boundary. Thus it proves
that x spans the entire one-dimensional F2 homology, including every linear
combination, rather than a selected candidate list. It has a `lin_cert`
instance and tested positive/negative three-dimensional examples. Its standard
axiom dependencies are `propext` and `Quot.sound`.

`HomologyBasis.lean` additionally checks a rank-one homology decomposition.
The matrix identity I = incoming*up + down*outgoing + x tensor coefficient,
cycle and separator conditions imply EVERY cycle represents either zero or x.
This quantifies all linear combinations, not just a supplied candidate list.
`checkHomologyBasis_sound` and the `lin_cert` instance prove this statement.
