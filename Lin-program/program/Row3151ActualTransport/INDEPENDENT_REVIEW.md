# Independent actual-transport review

No correctness findings in the final `Basic.lean` and `Transport.lean`
snapshot. Both recorded direct compilations exit 0, and the final logs
contain thirteen standard-only axiom reports. This review reads those
records and does not claim an independent recompilation.

All actual objects are indexed by the same `AdamsSpectralSequence S` and
the same `CertifiedAdamsPages S`. The eta product data uses that same S.
The degree formulas identify the full incoming carrier at `(7,134)` for
the d4 event at `(11,137)`. `Coordinates.equivalence` is a bijection on the
entire actual carrier; `EventMeaning.incoming` quantifies over every one
of its elements. `full_boundary_iff` consequently uses the entire actual
incoming image, including its non-prefix column in the two-dimensional
case. It does not confuse a known prefix with the whole source.

`IncomingMeaning` explicitly supplies the whole d3 map, all actual d3
incoming values, a whole next-page carrier identification, and equality
between the actual quotient transition and the checked projection. The
page4 coordinate carrier has dimension two or one according to `a`.
That dimension and quotient correspondence are mathematical interpretation
hypotheses; the theorem does not obtain an actual page dimension by parsing
the finite comparison. The prefix endpoint is constructed using the actual
quotient map and preserves the supplied actual trace.

The coordinate bijections only preserve zero explicitly. They are not
claimed to be linear. This suffices for the actual matrix-value and image
statements proved here: surjectivity covers every finite vector and
injectivity reflects equality. `actual_complex` correctly derives the
matrix complex equation from `S.differentialSq`. For next-page zero,
`actual_quotient_zero_iff` additionally requests `ZeroMeaning`; a bare
type equivalence between homology and the next carrier would not suffice.

Eta constrains the second unknown outgoing coordinate using its explicit
actual multiplication meaning. The known event column remains a separate
premise. The event source `(0,1)` and kernel source `(1,b)` are distinct.
`actual_kernel_cycle` proves the latter is a cycle, and
`actual_kernel_quotient` proves that its actual quotient is zero exactly
in the two nonzero-incoming cases `001` and `011`. The named event still
has the specified nonzero target in all six branches.

`actual_event` binds its source and target values to supplied raw E2
elements through typed `Endpoint` traces and page4 coordinate hypotheses.
Those raw inputs are not automatically identified with database row IDs
or topological names. The final `checked_and_actual` theorem combines
finite nine-key coherence and coverage, the finite event, full actual
boundary equivalence, and the actual nonzero event. It does not assert a
realization of every key of the finite nine-key window in S.

## Independent semantic oracle

`independent_oracle.py` models full local actual carriers with group laws
transported along every zero-preserving coordinate bijection. Across all
six branches the observed run exits 0 and checks 936 coordinate models,
3,744 full boundary equivalences, 3,600 actual complex evaluations,
936 named nonzero events, 1,872 quotient-zero comparisons, and 156 d3
quotient/prefix endpoint models.

Separate finite counterexamples show why retaining the full incoming
carrier, the zero-meaning condition, and target coordinate faithfulness
matters. The oracle models local algebraic carriers; it does not construct
a globally realized Adams spectral sequence or prove the external eta
product/known-column interpretations.

`independent_review.py` verifies the reviewed source/log hashes and records
the historical direct object hashes separately from current objects, which
may later change during Lake integration. No Lean source, dependency, or
shared finite-family snapshot was modified by the review.
