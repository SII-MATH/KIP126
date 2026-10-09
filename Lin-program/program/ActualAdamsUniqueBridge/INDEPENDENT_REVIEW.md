# Independent actual Adams uniqueness review

Reviewer: `/root/certificate_pipeline_next`.

No correctness findings in the frozen `Basic`, `Quotient`, and `Fact764`
modules. All three recorded direct builds exited 0. Source, log, and
current olean hashes matched the build records at review time. Eleven
printed axiom reports contain only `propext`, `Classical.choice`, and
`Quot.sound`. No admitted proof or native evaluator is used.

## Actual semantic interface

`IsUnique` refers to the actual `S.differential`, the actual
`PageBoundary`, and every actual cycle in the specified page and
bidegree. `Incoming` includes `Unit` for zero and the complete sigma of
all actual incoming source degrees satisfying the Adams target equation.
It does not restrict the boundary quantifier to stored rows.

`boundary_iff` needs incoming-coordinate surjectivity to recover an
actual incoming witness from every finite image vector. The complete
incoming differential equation and faithful current coordinates then
prove that its actual image is the required element. The outgoing
coordinate map is faithful and preserves zero, so a finite kernel
equation implies the actual named cycle equation. Current additivity
identifies finite vector addition with the actual expression `y+x`.

Surjectivity of current coordinates is unnecessary: every actual cycle
is sent to a finite cycle, and the named actual nonboundary class is
provided. The review independently checks 549 finite actual-coordinate
models, including 177 proper current-coordinate inclusions. These arise
from 272 small complexes and 372 choices of a named unique class.
The checks cover 2,826 actual cycle cases and 16,596 quotient pairs.
Counterexamples demonstrate the need for incoming surjectivity, current
faithfulness, and outgoing faithfulness.

## Actual quotient and next page

`quotient_zero_iff` uses the actual page equivalence relation.
`quotientEquivBool` constructs a bijection with the actual homology
quotient, distinguishing the named class from its zero class and
representing every quotient class.

`actual_next_cardinality` uses only the two-sided inverse laws of the
supplied next-page identification. This is sufficient for cardinality
2, and the theorem claims nothing about which next-page element is zero.
The review checks 1,098 two-point type identifications, including the
transposition that sends the nonzero homology class to next-page zero.
Any stronger conclusion about the named next-page element would require
an explicit zero-preservation premise.

## Import, tactic, and Fact7.6(4)

The existing canonical JSON importer rejects unrecognized, duplicate,
or noncanonical fields and checks the outer version. The new
`check_sound` theorem directly rechecks the finite comparison and named
vector; it does not use the outer metadata version as a mathematical
hypothesis. A manually assembled wire with different outer metadata
still proves only the same finite semantic proposition, so this is not
a soundness shortcut. `adams_unique_cert` invokes this theorem with
kernel-checked `rfl` or `decide`.

The Fact7.6(4) specialization binds the exact two imported canonical
JSON records to branch8 and branch18, with named vector
`[false,true,false]`, page4, and bidegree `(25,150)`. Independent checks
recompute both full comparison identities and all 128 cycle pairs.
Each branch has eight cycles, four boundaries, and a two-element
quotient. The tactic demonstration uses the actual certificate type;
the branch theorem returns actual page5 cardinality 2 conditionally on
the supplied coordinates and next-page identification.

No actual sphere spectral sequence, actual coordinate realization,
named monomial interpretation, permanence, or convergence theorem is
constructed by these three modules. Those remain mathematical inputs.

Reproduce the finite checks and frozen-build audit with:

```sh
python3 program/ActualAdamsUniqueBridge/independent-review.py
```

The script records dependency hashes in `independent-review.json`.
After a global Lake build, historical direct-build hashes remain
historical; the script reports whether current oleans still match them
without rewriting the original evidence.
