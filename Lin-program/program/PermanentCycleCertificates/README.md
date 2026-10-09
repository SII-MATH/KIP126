# Finite certificates and all-page permanence

This library proves a conditional infinite-page theorem from a checked
finite prefix and a genuine mathematical vanishing theorem for all later
incoming and outgoing spaces. No empty database search or missing row is
used as evidence of vanishing.

## Actual paper inputs

The existing files for these four named classes prove d2 cycle and
nonboundary conditions and a nonzero E3 class. The exact SQL identities
are retained in `fact-boundary-audit.json` and independently replayed by
`review.py`.

| Claim | (s,t) | Staircase row / E2 basis | Possible incoming pages |
| --- | --- | --- | --- |
| Fact7.6(2) | (14,139) | 3080 / 3080 | 2 through 14 |
| Fact7.6(3) | (10,134) | 2693 / 2694 | 2 through 10 |
| Fact7.21 first | (11,133) | 2622 / 2622 | 2 through 11 |
| Fact7.21 second | (12,134) | 2684 / 2682 | 2 through 12 |

All four selected staircase differentials remain NULL with level9000.
Those cells are not permanence theorems. The incoming bounds themselves
require the actual Adams groups to vanish in negative filtration: an
incoming d_r has source filtration s-r, so only r<=s can occur. An outgoing
d_r has target filtration s+r, which is always nonnegative. Consequently
nonnegative filtration gives no outgoing-page upper bound.

`AdamsBounds.lean` proves these degree implications. It also shows how an
explicit theorem that all page groups vanish whenever
`A * (t - s) + B < s` supplies an outgoing cutoff at the fixed target stem
`t-s-1`. The theorem is a caller premise over every page and every degree;
this library does not assert such a line for the sphere or the four claims.
Other structural permanence arguments may supply the same tail interface.

## Mathematical contract

`System` gives the actual page types, incoming/outgoing spaces, maps,
zero elements and transition. Index n denotes Adams page n+2. The actual
homology law says, for each cycle, that its next-page image is zero exactly
when it is an incoming boundary. This law is explicit mathematics, not a
claim inferred from a finite comparison.

`PrefixMeaning` identifies all actual incoming, current, outgoing and next
objects with the finite stage coordinates. It reuses the complete
`SemanticTrajectoryCertificates.PageData.Meaning`, including the equation
for every true incoming source. Each named representative is the recursively
constructed actual transition of the original element. For a prefix of
length L, `checkPrefix` validates indices 0 through L-1, namely Adams pages
2 through L+1, and rejects an empty prefix. The tail cutoff is index L,
namely Adams page L+2; the last checked transition supplies its nonzero class.

`TailVanishing` states that the whole actual incoming and outgoing spaces
are subsingletons at every index at or after the cutoff. This is a sufficient
condition stronger than the corresponding maps being zero. It contains no premise
about the future chosen elements, their cycles or their nonzero values.
`tail_stability` obtains the cycle condition from outgoing vanishing,
nonboundary from incoming vanishing, and nonzero next classes from the
actual homology law. Induction proves the property on every later page.
`permanent_of_prefix` derives the initial tail nonzero class from the last
checked finite stage. `checkPermanent_sound` joins both parts.

## Checker and tactic

```lean
theorem stable_permanent : stable.Permanent true := by
  permanent_cert using certificate
```

A `Certificate system element` contains the finite stages plus proved
`PrefixMeaning` and `TailVanishing` terms. The executable part checks only
the finite stages; Lean checks the mathematical terms. There is no
automatic procedure that turns unknown data into these proof terms.
`Request`, `checkBatch` and `checkBatch_sound` reuse the theorem in batches.
`diagnosePrefix` reports the failing page and stage index.

`Examples.lean` constructs an actual infinite constant system whose
incoming/outgoing spaces are Unit, checks a one-page certificate and proves
permanence using the tactic. It does not instantiate a paper class.
`Counterexamples.lean` constructs, for any chosen late page, a system whose
entire earlier finite prefix consists of cycles and nonboundaries, but a
later genuine differential kills the class. Its next-page image is zero,
and the system still satisfies the actual homology law. This proves why
finite checks alone cannot establish permanence and why its tail cannot
satisfy the supplied vanishing contract.
The concrete `hiddenMeaning` additionally supplies every actual coordinate
equation for its accepted finite prefix; the same system still fails
permanence. The failure cannot be blamed on a missing finite interpretation.

## Verification and remaining mathematics

```sh
python3 program/PermanentCycleCertificates/compile.py
python3 program/PermanentCycleCertificates/review.py
python3 program/PermanentCycleCertificates/assert_current.py
```

All five modules compiled serially with actual exit0; ten printed axiom
reports use only the standard `propext`, `Classical.choice`, `Quot.sound`.
No `sorry`, new axiom, native evaluation shortcut or trust in C++ is used.
The direct compile records preserve their original source, log and olean
fingerprints. A subsequent full Lake build replaced those oleans; its
separate successful 2483-job checkpoint is recorded in
`tests/permanence-elimination-lake-checkpoint.json`. Therefore
`assert_current.py` checks a fresh direct compilation, not the later Lake
artifacts. `independent-review.json` records source/log checks, current Lake
artifact checks, the exact four-class source replay and the semantic review
without rewriting historical build evidence.

For the actual paper classes, the later finite prefix, interpretation as
true Adams pages, negative-filtration theorem, and outgoing vanishing or
another permanence argument still need proofs. No all-page permanence
instance for those four classes is claimed, and no convergence-to-stable-
homotopy result follows from this abstract theorem alone.
