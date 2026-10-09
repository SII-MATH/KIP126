# Row-2773 refined comparison family

This family appends the ten comparisons from
`Fact713Row2773Refinement.Data` to the exact 1239-entry family. It preserves
every existing key and wire, proves 1249 distinct keys, and checks the
compatibility of all new entries with the old family. The ten additions
belong to the original finite E12 graph, so 1246 of its 1420 keys are now
supplied, while 174 remain absent. Three previously supplied entries lie
outside this graph and support the successor argument.

The family uses `Fact713RefinedComparisonFamily.coherent_append`. The old
coherence theorem is reused, the ten-entry extra family is checked, and
`checkCross` checks 12,390 old/new pairs in both directions. Matrix
equalities are required precisely when the keys are adjacent; consecutive
pages must have matching homology dimension. No missing neighbor is
silently supplied as a zero map.

`Coverage.named_prefix_covered` proves coverage of the named class at
`(9,132)` through all four comparisons d2, d3, d4 and d5.
`coherent_with_named_prefix` combines this coverage with family coherence.
The explicit d6 lookup is still absent, so `coherent_but_incomplete` also
proves that the entire d2-through-d11 request is not covered.

The imported refinement supplies a finite nonzero E6 coordinate trajectory
and a conditional binding of the new row-2773 zero column to an actual
Leibniz theorem. This family does not turn that trajectory into an actual
Adams E6 theorem. The inherited actual page meanings, named factors, raw
unknown-prefix interpretations and topological realization remain separate
obligations. Original raw NULL values are preserved.

## Reproduction

After building the 1239-entry predecessor family, run from `program/`:

```sh
python3 Fact713Row2773ComparisonFamily/package.py
python3 Fact713Row2773ComparisonFamily/compile.py
python3 Fact713Row2773ComparisonFamily/audit.py
```

The canonical `family.json` and `extra.json` mirror the typed Lean family
definitions; `manifest.json` records exact input and output hashes. The
hashes only identify inputs. Certificate validity, uniqueness, cross
compatibility, family coherence and requested prefix coverage are Lean
theorems checked by the kernel.

Each direct compile attempt has an immutable log and evidence record.
The current `*-compile.json` files identify successful final source and
dependency hashes and observed exit statuses. Failed attempts are retained
separately, and later root build object changes are reported separately.
The Python audit also checks all 1,560,001 ordered pairs independently,
the original snapshot bindings, the exact graph counts and the missing d6.
It supplements the Lean proof without joining the trust root.

All four final direct compilations return zero, and the full audit passes.
The ten printed axiom reports contain only standard Lean axioms (some
small concrete theorems have no axiom dependencies).
