# Event3152 after the eta constraint

This directory constructs two complete finite predecessor paths for the
single stored d5 event3152, one for each remaining first bit `b` of the
unknown row2925 d4 column `(b,0)`. The second bit is forced zero by the
ordinary eta-product argument in `Row2925EtaD4`; the first bit stays free.
The shared 358-comparison/95-event aggregate is not modified.

The raw source is S0 `(15,140)`, E2 local index2, global basis3152. Its
stored d5 target is `(20,144)`, E2 local index0, global basis3484. Staircase
row3485 is the matching incoming record; it is not the target E2 basis ID.
The raw unknown rows2925,2708,2858 remain unknown in the source database.

Both d2/d3 source comparisons are exactly the existing aggregate blocks.
The new d4 source comparison has zero outgoing row and incoming matrix
`[b,1;0,0]`, so both branches have a one-dimensional E5 quotient with
projection `[0,1]`. The named source projects to `[1]`. Its outgoing d4 row
is zero because the known3151 boundary is killed by `d4^2=0` and the named
3152 class has a separately interpreted d4 zero prefix. The later d5 target
value is not used by the eta restriction or that matrix-completion lemma.
All three target predecessor comparisons already exist in the aggregate,
and the raw target projects to `[1]`. Each branch checks six full comparison
matrices, cycle conditions, nonboundary conditions, and every successive
representative equality before checking the d5 value `[1] -> [1]`.

## Deliberate incoming-dimension boundary

The actual E5 incoming source at `(10,136)` has no supplied dimension in
this construction. A zero incoming image is not evidence that this source
group is zero. Consequently `PathEvent` is a new type with no `n`,
`incoming`, or full event `WireComparison` field. It contains a whole
outgoing matrix, the endpoint vectors, the complete predecessor paths, and
all contiguous d2/d3/d4 bidegree labels. The C++ strict packager rejects an
attempt to add an incoming-dimension field. These objects are not inserted
into an indexed family as full event comparison entries.

`Generic.complete n` proves a full homology comparison of the identity
outgoing map and zero incoming map for every natural-number dimension `n`.
`Generic.complex_forces_incoming_zero` separately proves that every matrix
forming a complex with the identity has zero image. The actual counterpart
quantifies over the entire actual incoming carrier without assuming it is
finite or assigning a dimension.

`PathEvent.Valid` proves the finite path and outgoing-value semantics,
including fixed raw source/target and all Adams degree labels. For the
specific imported branches, `Semantics.both_pinned` additionally proves
that all six full stage wires are exactly the five named aggregate blocks
and the newly constructed branch d4 block. Merely attaching bidegree labels
to arbitrary matrices would not provide that binding. Neither this binding
nor a correct finite path provides an actual Adams interpretation by itself.

`ResultValid input source target` states the semantic raw-to-page paths,
the caller's fixed matrix equation, and nonzero output directly. Its input
contains the full predecessor matrices and representatives, raw endpoint
vectors, branch and outgoing matrix. Certificate matching uses exact Lean
structure equality, not JSON strings or hashes. The tactic checks that
every supplied input and result agrees with this goal:

```lean
import Row3152BranchCertificates.Branch0
open Row3152BranchCertificates

example : ResultValid Branch0.path.input [true] [true] := by
  row3152_cert using Branch0.path
```

`row3152_cert` invokes the proved checker through `lin_cert_diagnose`.
`DiagnosticCertificateVerifier` reports `result.source`, `result.target`,
`result.input`, or the failing predecessor path/stage. Both branches include
checks rejecting a different output and the exact target-mismatch diagnostic.

## Typed mathematical interpretation

`Actual.source4_nonboundary` uses the actual ordinary Leibniz theorem via
`Row2925EtaD4.Actual.ProductMeaning`, a full interpretation of all actual d4
incoming values, and the fixed3152 source coordinates. The resulting source
nonboundary statement includes all actual incoming elements, not just
listed rows. `nextEndpoint` constructs the actual E5 endpoint through the
certified homology quotient map, preserving the actual prior trace.

`Event5Meaning` explicitly interprets the whole stored d5 identity matrix
using faithful actual source/target coordinates and zero equations.
`Quotient5Meaning` interprets the entire actual next-page map by the exact
checked branch d4 projection, not just the named desired endpoint.
`actual_event_from_eta` combines these inputs with actual earlier traces
and the target coordinate into the actual d5 equation and nonzero endpoints.
The d5 matrix interpretation remains a mathematical input: eta establishes
the missing source nonboundary constraint, not the stored d5 value itself.

`actual_d5_injective` and `all_actual_incoming_zero` then prove that the
entire actual incoming d5 image vanishes from injectivity and `d5^2=0`.
No incoming dimension is inferred from this conclusion. No theorem here
resolves row2708, identifies the sphere's actual Ext basis, or proves the
full Kervaire theorem.

## Build and evidence

```sh
make -C program/Row3152BranchCertificates all
python3 program/Row3152BranchCertificates/prepare.py
python3 program/Row3152BranchCertificates/review.py
# After the parent dependency build is stable:
python3 program/Row3152BranchCertificates/compile.py
python3 program/Row3152BranchCertificates/assert_current.py
```

The C++ build and independent path/wire replay have observed exit0. Replay
checks 12 complete predecessor comparisons, 16 modified-path rejections,
511 arbitrary incoming matrices through dimension8, 12 malformed schema
rejections, mixed-stream recovery and three byte-identical exports.
`provenance.json` preserves every reused conditional/stored dependency,
raw SQL identity and source hash. C++ and Python computations are untrusted
diagnostics and producers; hashes are provenance only.

All six Lean modules now have observed successful serial direct compiler
exits and 24 standard-or-no-axiom reports. `current-audit.json` checks current sources, inputs and logs against
the individual compilation records and reports current object hashes
separately from historical ones. Failed development logs are preserved.
There are no `sorry`, custom axiom declarations or `native_decide` calls;
reported dependencies are restricted to standard `propext`, `Classical.choice`
and `Quot.sound`.
