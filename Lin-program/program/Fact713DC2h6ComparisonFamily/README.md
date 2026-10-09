# DC2h6 finite comparison family

The family appends fifteen comparisons from `Fact713DC2h6Source.Overlay`
to the exact 1257-entry predecessor family. It contains 1272 distinct keys:
1269 in the original 1420-key E12 dependency graph and three supporting
entries outside that graph. Five new keys have negative auxiliary `s`
degrees; these remain signed integers, with `negN` used only in wire names.
No old wire, key or coordinate is replaced.

`Extra.lean` binds all fifteen imported comparisons. `Cross.lean` checks
disjoint keys and both directions of compatibility between every old/new
pair, proves the exact append length and preserves old membership.
`Coherence.lean` reuses the old whole-family theorem and the existing
`coherent_append` theorem. Missing neighbors remain absent, not zero.

`Coverage.lean` proves coverage of all five named comparisons d2 through d6
at `(9,132)`. The named d7 comparison is still missing, and the complete
d2-through-d11 coverage proposition is refuted. The family therefore does
not prove the full E12 calculation or an actual Adams E7 theorem.

`graph-gaps.json` explicitly lists all 1420 requested dependency keys,
the 1269 supplied keys, the remaining 151 keys and the three external
supporting keys. The packaging script reconstructs the graph recursively
from the ten named roots; the separate numerical audit compares its exact
partition with the prior recorded graph and the family.

`GraphData.lean` imports the strict canonical `graph-proof.json` envelope
and proves that its family keys equal the actual typed family keys.
`GraphPartitions.lean` verifies cached code/key pairs and proves both exact
membership partitions. `GraphDisjoint.lean` proves requested-key uniqueness
and the required disjointness. `GraphCoverage.lean` proves, for every
requested key, that availability is equivalent to membership in the family
and missingness is equivalent to absence. It also proves the exact missing
and outside differences, all four counts, and named d7 missingness.
These are kernel-checked statements about the imported finite key lists.
The identification of that requested list with the recursively generated
graph is independently audited by Python; no topology theorem follows
from either result.

The sorting proofs preserve all entries for every fuel value. Cached
numeric codes are checked against the actual keys before use. Membership
partitions compare complete code/key pairs, and uniqueness follows from
verified distinct codes for these concrete lists; no global injectivity
assumption about key codes is used.

`GraphParserTests.lean` and `parser_test.py` execute acceptance and rejection
checks for canonical input, duplicate fields, unknown fields, unsupported
versions and noncanonical whitespace. The recorded execution is a parser
test, not mathematical proof.

The new source overlay uses a conditional detector argument and an explicit
coordinate change for row 2622. The raw NULL remains preserved. Actual
current-page meanings, detector-map and naturality meanings, inherited
unknown-prefix interpretations and topological realization are still
mathematical obligations.

From `program/`, after dependency builds and audits release their objects:

```sh
python3 Fact713DC2h6ComparisonFamily/package.py
python3 Fact713DC2h6ComparisonFamily/compile.py
python3 Fact713DC2h6ComparisonFamily/parser_test.py
python3 Fact713DC2h6ComparisonFamily/audit.py
```

The canonical family and extra files mirror the typed Lean definitions.
Digests in `manifest.json` identify inputs, not mathematical truth. The
numerical audit also checks every ordered pair of the family. Only the
full audit requires successful direct Lean records; packaging-only mode
does not claim compilation. Each direct attempt retains its original log,
source and dependency hashes, actual exit code and resulting object hash.

The nine leaves are listed in `modules.txt`. Parent-controlled root builds
and exhaustive axiom audits are separate from the direct leaf records.
