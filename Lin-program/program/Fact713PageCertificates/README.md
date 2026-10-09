# Fact7.13 named survivor: finite d2 homology

The pre-existing `StaircaseCertificates.FiniteClaims.case5FiniteFilteredSurvival`
checks selection in an imported filtered basis through page12. It does
not construct the actual d2 cycle/boundary quotient or identify the named
polynomial inside that quotient. This directory supplies that distinct step.

At S0(s,t)=(9,132), the exact basis is global2569=monomial366 and
global2570=monomial(0,352). The named sum x123,9+h0 x123,8 has vector(1,1).
The full incoming (7,131) block has three zero d2 columns; the full outgoing
block has two zero columns into dimension2 at(11,133). Each zero is a
non-NULL empty SQLite TEXT value, and `source.json` preserves all seven
basis rows and the database hash. No unknown was promoted to zero.

`Survivor.lean` canonically imports `comparison.json` produced by the
existing C++ page-transition exporter. It proves cycle, nonboundary,
two-dimensional quotient comparison, named class coordinate(1,1), and
nonzero of the actual quotient class. `expression_decode` connects the
vector's polynomial decoding to namedCase5; `named_expression_evaluation`
proves equality to the named expression under every characteristic-two
valuation satisfying the explicitly imported relations. It is not merely
a coordinate label. Checkers run through `lin_cert`.

```
python3 program/Fact713PageCertificates/review.py --check
```

The default/`--check` verifies all three exact source blocks and
byte-identical C++ output read-only, and tests four unknown-value rejection
cases. `--regenerate` explicitly replaces the wire certificate after those
source checks. Recompile Survivor.lean after regeneration.

This establishes nonzero finite d2 homology (E3 in the imported complex),
not survival to the true E12 Adams page. Relation-to-Ext identification,
topological d2 comparison, and higher-page differential provenance remain
separate; no higher NULL differential was read or filled.
