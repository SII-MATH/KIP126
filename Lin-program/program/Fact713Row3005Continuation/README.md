# Full-family continuation after row3005

Both row2693 branches are preserved exactly and extended from 1413 to 1431
complete finite comparisons. The new source d4 comparison at (14,138) is
one-dimensional with zero outgoing map and complete zero-dimensional
incoming source. The named main E2 vector `[true,true]` at (9,132) has a
finite nonzero trajectory through E11. Its d11 comparison remains unresolved
at `S0:6,132:d3:row2574`, whose target has dimension three.

The eighteen additions include the main d10 comparison, the complete
row3005 source d4 and target d4 comparisons, their higher dependent targets,
and the previously unexported predecessors (10,135) d3 and (7,133) d2.
`branches/*.json` records every conditional rule, exact raw row and required
mathematical premise. Unknown row3005 is never changed in the source
database; its imported finite column is justified conditionally by
`Row3005D4Search.Actual.Certificate.whole_zero4`.

`Closure.lean` binds a compact table of keys and dimensions to each complete
family by definitional equality. The proved compact checker then establishes
`PredecessorClosed` for every family entry. Matrix coefficients are checked
by the existing coherence proofs; projection avoids repeatedly reducing
those large matrices during predecessor lookup without weakening closure.

The actual source proof uses C2 top-cell naturality on complete spaces.
The inherited `Row3005D4Search` certificate constructs the named E4 class
from the original sphere E2 local coordinate 2. It reflects C2 d3 cycles
through the full injective upper E3 map, and uses the complete empty C2 d4
target. `Actual.Input` adds complete d2/d3 meanings at the incoming degree
(10,135). Its d3 comparison has zero homology, providing the whole E4
incoming space. Together with the derived full d4 zero map this constructs
the source E5 chart and proves the same original input remains nonzero.

The main `Constructed.Prefix11` extends the existing `Prefix10` endpoint
directly. Its E11 chart is the quotient of complete E10 outgoing and incoming
maps. The `assemble` helper needs the complete outgoing E10 zero chart and
local quotient zero/add laws; filtration nine excludes all incoming d10
sources without a caller-supplied tail assumption. These actual meanings
remain explicit. Finite family coherence alone does not construct them.

`Target.lean` provides the actual construction of that zero target. Its
complete E2 comparison at (19,141) already has zero homology. `TargetInput`
contains this E2 meaning and quotient zero laws, so `page3` and repeated
`emptyNext` construct the complete E10 zero chart. `assembleFromE2` and
`same_input_E11_from_E2` then extend the same main input. Thus row3005
completes the finite family's dependencies; the actual d10 target vanishing
follows independently from the earlier complete E2 comparison.

## Certificates and tactics

`fact713.json` and `fact713.jsonl` use the strict version-one
`ActualTraceRequests` import format. Both original input coordinates and
output coordinates belong to the same actual E11 trace. For a complete
`Constructed.Prefix11` named `P`, the single request has the form:

```lean
example (b : Bool) (P : Constructed.Prefix11 S pages) :
    RequestedValid b P e11 := by
  fact713_row3005_cert using P
```

The same tactic accepts the imported batch goal over `e11Batch`.
`ActualTraceRequests.diagnose spec request` identifies a bad field;
`diagnoseBatch spec requests 1` also returns the record number. Negative
examples reject wrong source coordinates, wrong lengths, wrong output,
wrong version and E12 requests.

For the row3005 source, use the actual certificate and its original input
binding:

```lean
example (D : Actual.Input C S) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.input.stage2.sphereCoordinates.equivalence input =
      Row3005D4Search.Data.sphereRaw) : SourceValid D input := by
  fact713_row3005_source_cert using D named binding
```

## Reproduction and limits

Run from `program/`:

```sh
python3 Fact713Row3005Continuation/generate.py
python3 Fact713Row3005Continuation/package.py
python3 Fact713Row3005Continuation/audit.py
python3 Fact713Row3005Continuation/reproduce.py
python3 Fact713Row3005Continuation/compile.py
```

The independent audit checks all 9861 ordered quotient-cycle pairs,
1094 adjacent matrix matches, 925 consecutive page matches and 2775
mandatory predecessor dimensions per branch. It checks exact preservation
of all inherited entries, both original finite trajectories, and rejection
of treating a boundary as nonzero. Reproduction compares all 31 generated
artifacts byte for byte. Compilation attempts, including failures, remain
in `evidence/`; accepted records require unchanged inputs and exit zero.

This package does not prove the main E12 result, assign an unresolved
row2574 column, or identify the imported E2 algebra with the Ext algebra of
the original spectrum. The source, map and quotient meanings are explicit
mathematical hypotheses. C++ and Python outputs and hashes are untrusted
input and provenance; only checked Lean theorems establish the stated
conditional conclusions.
