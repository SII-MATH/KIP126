# Same named input and unique actual E5 element for Fact 7.6(4)

This package joins the existing actual multiplicative E2-to-E4 trace to
the full actual E5 uniqueness theorem. It proves a conditional theorem
about one supplied graded Adams system; no sphere realization is inferred.

`Input` holds the existing actual system data: zero-compatible homology
quotients, a certified graded product, the six local multiplicativity
squares, five empty actual E2 factor targets, and the named E2 factors.
`Input.initial` is the actual product `g^4 * delta`, with the exact degree
`(25,150)`. It is not a database string.

`Witness` holds complete E4 coordinates, both incoming columns, and the
existing candidate-cycle, product, and map obstruction equations. In
particular, incoming coordinates cover every actual incoming source and
are surjective onto all two-dimensional finite incoming vectors. The
current chart is injective and additive; outgoing coordinates reflect zero.
It does not assume the named d4 cycle or nonboundary, an E4 trace, a
nonzero E5 element, outgoing zero, or a finite complex law.

`coordinates_complex` derives the last condition from the actual differential
square-zero law. `Input.cycle4` derives the named cycle by the actual product
construction. Full finite uniqueness follows from the existing two source
obstructions. `Witness.unique5` transports it to the actual homology quotient.
`Input.endpoint5` uses that same E4 representative and its actual quotient.

```lean
theorem fixed (W : Witness I) :
    ResultValid I I.initial I.endpoint5.value := by
  fact764_named_cert using W

theorem requested (W : Witness I) (hi : input = I.initial)
    (ho : result = I.endpoint5.value) : ResultValid I input result := by
  fact764_named_cert using W named hi yielding ho
```

`ResultValid` binds both the caller's E2 input and E5 output, includes the
actual trace, and states that this same output is the unique nonzero element
of the whole actual E5 group. Both zero input and zero output are formally
rejected. Negative tactic tests reject a different context as well.

This is a mathematical assembly, not a new external wire protocol. It reuses
the finite uniqueness and imported matrices already in
`Fact764ConstrainedE5`; their strict importer is `unique_homology%`.
Complete actual meanings and source-obstruction equations are Lean proof
inputs and cannot be read from JSON flags. The existing finite importer
remains useful independently; this tactic additionally requires those
explicit mathematical meanings. No claim about later pages or all-page
survival is made.

Validation: three new direct modules with pinned Lean v4.32.2 and `-j1`;
18 standard-only axiom reports. Historical failing attempts are retained
under `evidence/`. `audit.py` independently exhausts all 8192 candidate/full
matrix combinations, including two countermodels if the derived named
cycle is omitted. It also checks 4032 relabeled local quotient models,
258048 representative pairs, and 64512 fixed input/output requests.
These local quotient models do not claim to instantiate a global graded
multiplicative Adams system or its topological sphere meaning.

Only `propext`, `Classical.choice`, and `Quot.sound` occur in accepted theorem
reports. Source hashes and build records track reproducibility, not
mathematical truth. The root agent owns integration and exhaustive auditing.
