# Event 3151: all four possible unknown columns

This directory constructs four separate finite certificate families for one
event, 3151. It leaves the unknown first d4 column free to take every value
in a two-dimensional vector space over F2. In row-major notation, the outgoing
matrix is `[b,1,c,0]` and the incoming matrix is `[0,0]`, for all four choices
of `b,c`. Every choice sends the named source `[0,1]` to `[1,0]`. The resulting
homology dimension is one when `c=0` and zero when `c=1`.

The original source row is 2926 at S0 (11,137), with base local index 2,
stored target local index 1, and level 9996. The matching incoming row is
3151 at (15,140), with base local index 1, source local index 2, and level 4.
The raw E2 source basis ID is 2925 and target basis ID is 3151. The separately
unknown staircase row 2925 has base `"1,2"`, `null`, and level 9000. These
staircase and E2 basis identifiers are distinguished explicitly.

Each branch contains a complete homology comparison, finite event, indexed
event and bound event, produced through the existing C++ exporters. Its
five-key family contains the source and target d2/d3 blocks and the source
d4 block. All four prior stages are checked as cycles and nonboundaries, with
exact raw-to-final projections. `window_complete` checks precisely those
five keys and rejects a request that also asks for the missing target d4
block. The four branches are alternatives, not four new accepted events in
the aggregate of 95 events.

```lean
import Row3151BranchCertificates.Branch00
open IndexedFamilyCertificates Row3151BranchCertificates.Branch00

example : DifferentialAt family ⟨"S0",4,11,137⟩ [false,true] [true,false] := by
  indexed_family_cert using certificate
```

`Semantics.exhaustive` proves that every matrix with the specified named
value occurs in one branch. `actual_comparison_exists` gives a complete
comparison for supplied outgoing/incoming matrices, assuming the known
named d4 value and the row2707 zero-prefix value. It does not select a
branch, infer an unknown column is zero, or establish the incoming source
page's completeness. In particular the complete-kernel and survivor-cycle
premises used in a row2708 realization remain separate, as do inherited d3
meanings and a full Adams interpretation.

From `program/`, run `python3 Row3151BranchCertificates/review.py` for the
independent SQL, matrix, canonical-byte and provenance audit. It verifies
all four unknown column possibilities exhaustively, all four families, all
raw endpoint projections, and the retained conditional dependency uses.
`compile.py` records actual per-module compiler exits in `compile-audit.json`;
all five modules now have actual exit code 0. The dependent `witness` type
retains the different homology dimensions of the four branches. No `sorry`, custom
axiom, `native_decide`, or mathematical trust in C++ or hashes is used.
