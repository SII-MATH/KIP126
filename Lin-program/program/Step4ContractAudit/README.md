# Step-four user-contract audit

This audit checks all 17 CSV claims and tests the distinction between finite
certificate acceptance and the paper's Adams/topological conclusions. It
does not claim step four is complete.

## Concrete findings

1. The original `KervaireProgram.checkBundle` checked data well-formedness
   only inside individual certificates. An empty certificate list therefore
   accepted an invalid dataset. The correction adds an unconditional
   `dataWellFormed` check at bundle level, preserving all per-certificate
   checks and the existing soundness theorem's conclusion. Import regression
   tests require this case to fail at line 37, field `data`.
2. `ResultValid d (.permanent id)` describes the supplied finite table. A
   sparse table and its extension can disagree on permanence. The regression
   explicitly proves sparse-table finite permanence and rejects the same
   result for the complete sample table. This is not an all-pages theorem or
   a test of whether a producer omitted unknown records.
3. Local `Indexed.Wire.Valid` checks page counts, degree shifts, paths and
   finite matrices. It contains no spectrum identity or binding to a particular
   family of source matrices. Consistently shifting all internal-degree
   labels passes this local checker. The separate family binding layer must
   enforce source identity and provenance; this audit retains the example so
   the local contract cannot accidentally be described as that stronger one.
4. Accepted finite data does not identify an arbitrary semantic differential.
   A concrete accepted event has nonzero target, while a zero differential
   gives the opposite value. `DifferentialInterpretation` requires all-source
   coordinate intertwining and target-coordinate injectivity; the transport
   theorem additionally requires actual endpoint/zero coordinate identities.
   None of these interpretation premises is supplied by a status string or
   an imported matrix. The theorem concerns the final differential; actual
   interpretations of earlier pages remain separate obligations.
5. The three-product conditional bridge retains all three zero-preservation
   and three local Leibniz premises. An explicit nonzero constant quotient
   function fails `ColumnMatches`; `lin_cert` cannot prove it. These are
   theorem premises, not new axioms or flags accepted as mathematical facts.
6. The all-claim audit detects stale aggregate counters if present, derives
   actual values from event records, and requires every claim to retain its
   unresolved obligations. The current D5 snapshot has 95 events: 59 outgoing,
   36 incoming, 190 endpoint paths and 102 prior stages. Six stored event slots
   remain unresolved, including two NULL pending pages (2696/2852). These 95 events are not 95 distinct independent
   eliminations, and no 101-of-105 elimination theorem is inferred.

## Regressions

`ImportTests.lean` exercises valid file import/tactic use; absent classes;
incorrect evidence/object; an omitted actual incoming differential; invalid
empty bundles; retained manual claim labels; unknown, external-input and
inventory-only statuses; malformed input; and field/line error locations.
The parser only enforces the supplied status, not an external provenance
oracle: manually relabeling data as `finite_input` cannot establish topology.

`FiniteBoundaryTests.lean` imports the actual row-3744 C++ fixture through
`indexed_event_checked%`, proves finite validity with `lin_cert`, rejects
wrong result/source coordinates and broken stage counts through both tactic
and diagnosed import, and tests malformed JSON. It includes the concrete
countermodel and coherent-relabeling contract examples.

`ConditionalPremiseTests.lean` checks the actual three-product quotient
bridge, all its premises, and the explicit arbitrary-function countermodel.
`SemanticBridge.lean` proves coordinate-based semantic transport.

From the repository root, after other Lean builds have stopped:

```sh
python3 program/Step4ContractAudit/audit_coverage.py
python3 program/Step4ContractAudit/compile.py
python3 program/Step4ContractAudit/assert_current.py
```

All artifacts, logs, exact exit codes and input fingerprints stay here.
No `sorry`, native evaluation shortcut, custom axiom or C++ trust is used.

The direct serial build passed all nine modules, including the changed
checker/importer and their existing examples. The current-build assertion
checks exact module coverage, source/fixture/log hashes, actual exit codes,
and all 15 standard-only printed axiom sets. Runtime import assertions and
the tactic refusal checks executed successfully during those builds.
