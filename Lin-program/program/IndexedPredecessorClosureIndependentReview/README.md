# Full-family predecessor closure review

Source inspection confirms that the predicate in
`IndexedPredecessorClosure/Basic.lean:47` quantifies over every entry in the
supplied family. For each page after d2 it requires lookup of the incoming,
current and outgoing preceding-page comparisons and equality of their whole
homology dimensions with the current n, m and k dimensions. A missing lookup
is rejected, including when the required dimension is zero.

The actual application in `IndexedPredecessorClosureActual/Fact713.lean:10`
binds the two full `Fact713Row2693Continuation.family` values. The generic
`Valid` predicate conjoins this closure with the existing full-family
coherence predicate. It is not restricted to the requested trajectory keys.

`review.py` independently reads both exact 1413-entry JSON families, checks
all 2724 predecessor dimensions per branch, and mutates copies to verify
that removing the required (1,127) d3 predecessor or changing its homology
dimension is rejected. It also checks the successful retained Lean
compilation records once available. The producer's family sources are not
modified or rebuilt by this review.

The replacement uses `IndexedPredecessorClosureCompact`: a literal table
contains only keys and n/m/k/h dimensions. Each table is bound by `rfl` to
the projection of its whole original family. `check_project` proves equality
with the original checker, including first-match lookup behavior; the
independent replay also checks every literal table row against the JSON
projection. Thus matrices are omitted from repeated searches, not from the
family coherence proof or from the projection's binding obligation.

The first direct application attempt was terminated by the parent after
excessive resource consumption and is retained as Lean exit -15. That
attempt is not accepted evidence. The final `review.json` will be written
only after a source/input-stable successful compilation of the replacement
implementation is available.

This predicate concerns finite coverage and dimensions. The original
spectral sequence interpretation of the imported matrices remains a
separate explicit mathematical obligation.
