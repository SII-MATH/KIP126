# Associated-graded comparison for the constructed filtered-map pages

This directory compares the actual quotient construction in
`FilteredMapExtension` with the source-subgroup/target-boundary description
of the two-term filtered-map spectral sequence in Kervaire Definition 2.1
and Notation 2.2. The fixed paper text is recorded in
`GeneralizedLeibnizAudit/paper-excerpts.md`, nodes `S2.Thmtheorem1`,
`S2.Thmtheorem2`, and `S2.Thmtheorem3`, extracted from the fixed v2 HTML.

For an additive filtration `F`, `Graded F s` is the actual quotient
`F_s/F_(s+1)`. For a filtered additive map `f : A -> B`, the construction
supplies these explicit comparisons at source degree `s` and length `n`:

```text
SourcePage(s,n)  ≃  survivingLeading(s,n)  <= Graded(F,s)
Graded(G,s+n) / earlierBoundaries(s,n)  ≃  TargetPage(s,n)
```

The source map sends a cycle representative to its leading class; its
injectivity and range equivalence are proved. The target equivalence uses
the third isomorphism theorem for the actual quotient subgroups. Membership
in the survivor subgroup is equivalent to existence of a same-leading
representative whose image lies in `G_(s+n)`. Membership in the earlier
boundary subgroup is equivalent to being, modulo `G_(s+n+1)`, the image of
an element of `F_(s+1)` whose image lies in `G_(s+n)`. Neither comparison is
assumed as a hypothesis or supplied as a soundness field.

`leadingDifferential` transports the constructed differential through those
proved equivalences. `quotient_event_iff_ordinary` proves in both directions
that a differential equation on leading classes is an ordinary corrected
representative extension. This permits an original leading representative
which is not itself a cycle. `essential_target_iff` proves exactly that the
target quotient class is nonzero iff its initial graded class is outside
the earlier-boundary subgroup, matching the algebraic content of Definition
2.3. It does not require nonzero quotient classes for inessential events.

At length zero, both source and target are explicitly isomorphic to their
associated graded groups, and the differential diagram agrees with the
graded map induced by `f`. The source survivor subgroup is the whole initial
graded group and the boundary subgroup is zero.

The recurrence is likewise constructed: survivor membership at length `n+1`
is equivalent to current survivor membership with zero leading differential.
For fixed target degree, target advancement is surjective and its kernel is
the current leading differential range, giving an actual quotient/cokernel
equivalence. The target indices are `(s+1,n)` and `(s,n+1)`, both at target
degree `s+n+1`; keeping this shift is necessary.

## Exact scope

These comparisons establish the algebraic local page, initial map,
successive kernel/cokernel and leading-event descriptions for the actual
two-term filtered additive map. They do not yet package every bidegree into
a single categorical `SpectralSequence`, prove convergence to the filtered
kernel/cokernel, or identify an Adams associated graded group with homotopy.
The internal grading `t` is fixed through `t-s` and is not an extra field
in this additive-group construction.

`AllTargets.lean` extends the local parameterization to every nonnegative
target degree `t` and length `n`. Its relations are explicitly
`G_(t+1) + f(F_(max(t+1-n,0)) intersect inverse_image(f,G_t))`. This models
the bounded-below source filtration: once all nonnegative source degrees
have contributed, the input group is `F_0`. It agrees with the original
local target page when `t=s+n`, includes the final incoming source-degree
zero differential, and proves both the corresponding cokernel equivalence
and stabilization after `n=t+1`. The final relations are exactly
`G_(t+1) + (f(F_0) intersect G_t)`. Identifying `f(F_0)` with the image of
the whole source requires `F_0` to be the entire group; that is not silently
assumed. This gives all nonnegative target groups and their boundary steps,
but a full direct-sum page object is not yet packaged.
No claim of full Definition 2.1 (including convergence),
synthetic ESS, or Kervaire Theorem 6.1 follows from this comparison alone.

The integer examples distinguish essential nonzero targets from nonzero
leading targets which are earlier boundaries, and include corrected
noncycle original representatives. `review.py` independently checks literal
cosets on 1,179 filtered maps over F2 squared: 18,864 source/target comparisons,
18,864 source and target recurrences, 4,716 initial pages, 82,584 event and
essential equivalences, including 2,376 noncycle-original events.
The all-target construction additionally checks 17,685 incoming steps and
23,580 stable steps, including the source-degree-zero endpoint.

Serial direct compilation and replay:

```sh
python3 program/FilteredMapGradedComparison/compile.py Basic Event Recurrence AllTargets Examples
python3 program/FilteredMapGradedComparison/review.py
```

All five leaves have successful direct compilation records and 30
standard-or-no-axiom reports. The records bind source/log/object fingerprints
and observed exits. Failed development logs are retained separately. Hashes
are provenance only; the Lean proof dependencies are restricted to the
standard `propext`, `Classical.choice`, and `Quot.sound`.
