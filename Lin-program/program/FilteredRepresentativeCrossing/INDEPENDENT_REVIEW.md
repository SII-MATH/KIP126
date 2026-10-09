# Independent review of filtered representative crossing

No correctness findings in frozen `Basic.lean` and `Counterexamples.lean`.
Both successful direct source/log hashes match their records, with exit codes 0
and six standard axiom reports. This review changes no Lean sources and runs
no global build. Object status and all inputs are recorded in the JSON report.

`ExactAt` detects membership at filtration p and nonmembership at p+1.
`NoCrossing` ranges over every actual correction in the specified subgroup and
all integers in the half-open interval. The proof that no crossing pushes an
image to the high endpoint is finite induction from the explicit low-end image
inclusion; no stabilization assumption is hidden. The converse uses only the
decreasing filtration. Empty intervals are vacuous, and the low-end hypothesis
is essential even for a nonempty interval, as the frozen Z/2 example proves.

The representative equivalence correctly also requires a genuine extension.
The square theorem uses three extensions, commutation, either first-map
no-crossing condition, and the final-map no-crossing condition, together with
their low-end image hypotheses. It never assumes the desired fourth extension.

The independent replay enumerates all 15 four-level subgroup filtrations of
Z/4, all scalar homomorphisms, source subgroups, and 2,880 intervals (including
empty and reversed ranges). It checks 14,220 all-representative cases and
independently reproduces 370,304 square transfers and 51,264 failures when the
final stability condition is omitted. It also finds missing-low-end failures.
The finite replay supports the review; the arbitrary-group theorem is proved
in Lean.

The README correctly does not identify this all-correction leading-image
predicate with the paper's essential extension-ESS or classical crossing
definitions. Representative detection, essentiality, and boundary quotient
comparison remain separate mathematical work. This is a filtered-algebra
component and is not claimed to prove the paper's Theorem 6.1. No custom axiom,
admitted proof, native evaluator, new wire schema, or C++ trust is introduced.

```sh
python3 program/FilteredRepresentativeCrossing/independent-review.py
```
