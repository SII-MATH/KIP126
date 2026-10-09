# Next finite comparison family

This directory appends the eight entries from
`Fact713NextSourceSearch.Overlay` to the exact 1249-entry family. Its 1257
entries comprise 1254 comparisons in the original 1420-key E12 dependency
graph and three supporting comparisons outside that graph. There are still
166 missing graph comparisons. Original entries and coordinates are kept.

`Extra.lean` binds the eight keys to the imported checked wires.
`Cross.lean` checks disjoint keys and both directions of compatibility for
each old/new pair. `Coherence.lean` reuses the 1249-entry coherence theorem
and the existing `coherent_append` soundness theorem. Matrix comparisons
are guarded by the appropriate adjacent keys; missing neighbors impose no
equation and are not interpreted as zero.

`Coverage.lean` proves the named class at `(9,132)` has all five supplied
comparisons d2 through d6. It also proves the named d7 lookup is absent and
that the full requested d2-through-d11 list is not covered. The positive
prefix theorem and the negative full-coverage theorem prevent family
coherence from being mistaken for a complete E12 computation.

The imported overlay has a finite nonzero E7 coordinate trajectory and
conditional actual-column transport. No actual Adams E7 theorem follows
from this family alone. Full actual page meanings, the detector map and
naturality meanings, inherited unknown-prefix interpretations, and
topological realization remain separate obligations. Raw NULL values are
retained in the source snapshot.

## Reproduction

After building the preceding family and the imported overlay, run from
`program/`:

```sh
python3 Fact713NextComparisonFamily/package.py
python3 Fact713NextComparisonFamily/compile.py
python3 Fact713NextComparisonFamily/audit.py
```

The canonical `family.json` and `extra.json` mirror the typed Lean
definitions. `manifest.json` binds all inputs and outputs by hashes; hashes
establish identity and do not prove the comparisons. The Python audit
checks the exact appended package, all 1,580,049 ordered pairs, the graph
counts, the supplied prefix and the missing d7. It supplements Lean without
becoming a proof dependency.

Every direct compile attempt records its final source and imported-object
hashes, log, observed status and output hash. Historical failures remain
separate evidence. The full audit requires successful current source
records; packaging-only audit does not claim successful Lean compilation.
At source preparation time the root build was running, so no direct
compilation was started. Final direct evidence is added only after the root
build releases its dependency objects.

After the root build completed, all four direct compilations returned zero
and the full audit passed. Ten printed axiom reports use only standard Lean
axioms, including concrete theorems with no axiom dependency. The complete
pair audit has 954 adjacent and 757 consecutive matches.
