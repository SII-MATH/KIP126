# Complete available Fact 7.13 comparison subset

This directory packages all 1234 available finite comparisons from the
unchanged `Fact713E12Search/successor-search.json` snapshot. Its complete
requested graph has 1420 nodes; the remaining 186 nodes are not silently
filled with zero. The snapshot includes two explicit injective-successor
conditions and earlier conditional source rules. Those assumptions and
every raw source use remain in `manifest.json`.

`generate.py` writes 31 canonical family input files, each with at most 40
entries. Every entry keeps its object, page, signed bidegree, both complete
matrices and all homology-comparison witnesses. `Batch00.lean` through
`Batch30.lean` import these exact files and prove entry validity with kernel
reduction. `Imported.lean` combines the proofs and checks the count and
unique keys. Key uniqueness uses the proved `FamilyKeyOrder` reduction to
strictly increasing natural-number codes, with one comparison per adjacent
pair. Global injectivity of the code is unnecessary for this implication. This extends the previous 85-block Lean subset to all available
blocks; it does not supply an actual E12 trajectory or topology comparison.

```sh
python3 program/Fact713ComparisonBatches/generate.py
python3 program/Fact713ComparisonBatches/compile.py
```

Generation is not acceptance: each successful compiler record must be
collected before treating that batch as verified. `compile.py` runs one
Lean process at a time and retains failed logs separately. Root Lake and
exhaustive axiom audits provide later independent build evidence.

The existing strict `family_input%` importer rejects malformed canonical
JSON, duplicate keys and unknown fields. The existing comparison checker
validates every matrix identity, including the complete homotopy identity,
so accepted homology statements quantify over every vector. Its diagnostic
function identifies the failing matrix equation and coordinate. No hash or
external computation serves as a mathematical proof.

`Neighbors00.lean` through `Neighbors30.lean` check the two possible neighbors
for every entry. `Coherence.lean` combines them with all entry proofs via
`IndexedFamilyNeighborCheck.coherent_of_entries`, establishing the original
`Coherent family` property. Missing neighbors are still permitted by that
property; requested-window coverage remains a separate proposition. These
proofs certify consistency of the complete available subset, not completeness
of the 1420-node requested E12 graph.

The first `Imported` attempt was explicitly terminated during a quadratic
uniqueness reduction; its exit was -15 and the wrapper exit was 1. Its
separately successful 31 batch compilations remain valid evidence. A later
actual exit0 for `Imported` uses linear adjacent-code uniqueness and a
structured append proof. `entry-proof-checkpoint.json` keeps these distinct.
