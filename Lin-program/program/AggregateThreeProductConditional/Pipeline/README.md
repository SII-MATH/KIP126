# Two complete finite event paths

`Trace3744.lean` and `Trace3745.lean` prove all earlier d2/d3 cycle and
nonboundary conditions for both endpoints of the two new page-4 events.
There are eight cycle proofs, eight nonboundary proofs from the complete
homology comparisons, and four raw-to-final full projection identities.
The generated trace JSON records every intermediate coordinate.

`Executable3744.lean` and `Executable3745.lean` import one-record fixtures
extracted from the actual C++ finite/indexed output. Each proves
`finite.Valid` and `indexed.Valid` with `lin_cert using ()`, using the
general checkers' soundness theorems and kernel-checked Boolean evaluation.
The modules identify every event/stage comparison with the actual
333-block conditional dataset, identify raw and final vectors with the
named event vectors, and derive that each event source is not a cycle.
They also reject a wrong page, an empty raw source, and a zero target.

These are precise finite linear algebra statements. The dependency
`conditional_three_products` remains explicit in the trace and producer
provenance. Neither database metadata nor certificate acceptance proves
that these matrices are the genuine Adams differentials of the original
topological objects. The conditional semantic bridge belongs to the
parent `Matches.lean`; no additional source axiom is introduced here.

After the parent `Data`, `Events`, and `Matches` modules are compiled, run
from the repository root:

```sh
python3 program/AggregateThreeProductConditional/Pipeline/generate.py
python3 program/AggregateThreeProductConditional/Pipeline/review.py
python3 program/AggregateThreeProductConditional/Pipeline/compile.py
python3 program/AggregateThreeProductConditional/Pipeline/assert_current.py
```

The direct build is serial and writes per-module logs and a compile audit
with actual exit codes and input fingerprints. The logs print the axioms
of all finite/indexed validity proofs and representative nonboundary
proofs. `review.py` checks deterministic generation and complete linkage
to the C++ fixtures. No `sorry`, native evaluation shortcut, custom axiom,
or trust in C++ is used.

All four direct Lean modules pass. The eight printed axiom reports contain
only the documented standard Lean axioms; both finite/indexed validity
theorems for each event use only `propext` and `Quot.sound`.
`assert_current.py` requires the exact four successful module records,
current source and JSON/JSONL fingerprints, unchanged logs, and two
standard-only axiom reports per module.
