# Refined finite comparison family

This directory appends the five new comparisons from
`Fact713RefinedSourceSearch.Data` to the 1234-entry baseline family. The
result contains 1239 distinct keys. Of these, 1236 belong to the original
1420-key finite E12 dependency graph and three belong to the additional
successor closure. The original graph still has 184 missing comparisons.

`Basic.lean` proves a general append theorem. Both input families must
already be coherent. The executable `checkCross` checks disjoint keys and
both directions of `PairCompatible` for each cross pair. The proof combines
the two existing entry-validity and pair-compatibility theorems; it does not
rerun all baseline matrix checks. Key guards in `PairCompatible` ensure
irrelevant pairs do not inspect differential matrices.

`Extra.lean` gives the exact five keys and previously imported wire
definitions and proves their coherence. `Cross.lean` checks the 6170 cross
pairs in both directions, proves unique keys and the 1239 count, and
preserves membership of every baseline and extra entry. `Coherence.lean`
combines these results with `Fact713ComparisonBatches.family_coherent`.

`Coverage.lean` separates the two new E12 graph keys from the three new
successor keys. It proves coverage of those five entries and the known d2/d3
prefix of the named class at (9,132). It also proves that its requested d4
entry is absent and hence that the complete d2-through-d11 list is not
covered. Thus `coherent_but_incomplete` states a positive finite consistency
result together with a proved failure of coverage. It cannot prove Fact
7.13 or the complete requested E12 computation.

All mathematical conclusions remain about the supplied finite comparisons.
The raw NULL in row 3476 is retained by the imported source module. Its
conditional inferred map and five additional wires do not establish an
unconditional actual Adams realization.

## Reproduction

From `program/`, after the baseline Coherence module has been built:

```sh
python3 Fact713RefinedComparisonFamily/package.py
python3 Fact713RefinedComparisonFamily/compile.py
python3 Fact713RefinedComparisonFamily/audit.py
```

`family.json` and `extra.json` are canonical JSON mirrors of the Lean family
definitions. Their hashes and source bindings are in `manifest.json`.
Hashes check provenance, not mathematics. Lean uses the typed imported
wire definitions, kernel decision procedures, and the append soundness
theorem. No C++ or Python result becomes a Lean theorem without this check.

Every direct compilation attempt has a separate log and record in
`evidence/`; failed attempts remain historical failures. The current
`*-compile.json` records identify the final successful source, direct
dependencies, observed exit status, log and object hash. Later root Lake
object changes do not alter these historical records. The audit separately
reports whether the current object hash still matches.

All five final direct compilations return zero, and the full audit passes.
The twelve printed axiom reports contain only standard Lean axioms (some
small concrete theorems have no axiom dependencies).

The Python audit independently compares the exact appended package with
the refined source snapshot and checks all 1,535,121 ordered pairs, including
937 adjacent and 739 consecutive pairs. It also verifies the missing d4
key and the 184 graph gaps. This executable audit supplements the Lean
proofs and is not part of their trust root.
