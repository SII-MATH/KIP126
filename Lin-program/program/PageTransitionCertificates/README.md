# Checked finite homology transitions

`Basic.lean` defines a `Comparison k m n h` for
`F2^n --incoming--> F2^m --outgoing--> F2^k` with candidate homology `F2^h`.
Its matrices are inclusion `m x h`, projection `h x m`, up `n x m`, and down
`m x k`. `checkComparison` checks all entries of:

- outgoing incoming = 0;
- outgoing inclusion = 0;
- projection incoming = 0;
- projection inclusion = identity;
- inclusion projection + incoming up + down outgoing = identity.

`checkComparison_sound` proves `HomologyComparison`: inclusion gives cycles,
projection is its left inverse, every cycle differs from its projected
representative by a boundary, and two cycles have equal projected coordinates
if and only if their difference is a boundary. The homotopy provides the
explicit boundary preimage; no exhaustive search over all vectors is used.

`Quotient.lean` defines `Homology` as the actual quotient of cycles by boundary
difference. `homologyEquivalence` constructs maps to/from `Vec h` and proves
both inverse identities. This derives the finite algebraic page comparison
from checkable matrices rather than assuming an arbitrary transport predicate.

```lean
example : HomologyComparison outgoing incoming comparison := by
  lin_cert using ()
```

`Examples.lean` verifies a 4-dimensional middle space with one boundary,
one outgoing direction, and two independent homology generators. It rejects
missing inclusion, missing homotopy, and missing projection coordinates; it
also checks the empty-dimensional case. All three modules compile directly.
Axiom audits print only standard `propext` and `Quot.sound`.

These are finite F2 algebra statements. The certificate does not identify a
matrix with an actual Adams differential, prove a truncation is complete, or
identify the chosen coordinate basis with a named class in the paper. Those
bridges require complete source data and independent topology/algebra proofs.
`export.cpp` supplies a deterministic Gaussian producer. It chooses independent
boundary columns, extends them to a kernel basis, extends that to the middle
space, and constructs all four witness matrices. It rejects noncomplex input.
The dense reference implementation limits each dimension to 256.

```sh
g++ -std=c++17 -O2 -Wall -Wextra -Werror PageTransitionCertificates/export.cpp -o PageTransitionCertificates/page-transition-export
PageTransitionCertificates/page-transition-export 1 4 1 0100 1000
PageTransitionCertificates/page-transition-export --batch input.txt
python3 PageTransitionCertificates/test_export.py
lake env lean --run PageTransitionCertificates/CheckFile.lean PageTransitionCertificates/sample.json
```

Each batch line is `K M N OUTGOING_BITS INCOMING_BITS`, with dense row-major
bit strings and `-` for an empty matrix. Blank/empty batches are rejected.
The output is canonical JSONL with version, dimensions k/m/n/h, outgoing,
incoming, inclusion, projection, up and down; entries are JSON Boolean lists.

`Import.lean` rejects unknown/duplicate/noncanonical fields, wrong version,
and every wrong matrix size. `WireComparison.Valid` includes the shape checks
and the mathematical comparison; `checkWire_sound` proves both. The file
term `page_comparison% "path.json"` constructs data and `lin_cert using ()`
proves its validity. `ImportExamples.lean` checks this end to end and rejects
wrong version, truncated matrices, and a corrupted inclusion. The elaborator
does not register external file dependencies: regenerate/rebuild explicitly
after changing a source file. The CLI streams lines and reports file, line,
failed identity and matrix coordinate. It rejects empty and blank input.

Independent Python tests enumerate all small complexes, compare all cycle
cosets to the returned coordinates, and check every matrix identity. The suite
accepts 75 complexes and rejects 230 noncomplexes, including empty dimensions,
malformed arguments and deterministic-output checks.

Trajectory.lean checks consecutive representatives using the actual projection
of each verified homology comparison. Every stage is a cycle outside the full
boundary image, and a mismatched next coordinate is rejected. TrajectoryImport
provides version1 canonical JSON, trajectory_bundle%, lin_cert, and indexed
stage/link diagnostics. firstPage is a declared starting index, not proof that
the input matrices are Adams differentials; that comparison remains external.

`trajectory-export FIRST_PAGE STAGES_FILE` produces a trajectory using the
comparison solver on every line `K M N OUT IN REPRESENTATIVE`. It rejects
malformed shapes and noncomplexes. Lean additionally checks each representative
and all links; the producer never licenses a survival claim on its own.
`TrajectoryGenerated.lean` checks the actual C++ output.
