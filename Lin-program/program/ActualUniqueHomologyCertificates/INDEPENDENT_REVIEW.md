# Independent semantic review

No correctness findings in `Basic.lean` or `Examples.lean`.

The reverse direction of `image_iff` explicitly obtains an actual incoming
element from the finite boundary witness using incoming-coordinate
surjectivity. Current-coordinate injectivity then proves equality in the
actual carrier. `transport` applies the finite theorem to every actual
cycle and uses the proved addition equation to transport its boundary
dichotomy. It does not assume actual uniqueness or a quotient equivalence.

The certificate type fixes the wire, actual page data, actual addition,
and caller's element. Its `named` equation prevents checking a different
survivor and applying that result to the goal. The tactic uses the soundness
theorem and kernel reduction; the meaning and naming fields require Lean
proofs independently of imported finite data.

Independent exhaustive replay covered 260 Boolean complexes and 1159
named candidates, transporting to separately renamed complete actual
carriers. All actual predicates agreed with direct finite quotient
enumeration; 159 candidates satisfy uniqueness. A two-dimensional
counterexample confirms that omitting incoming-coordinate coverage can
invalidate the result. Current-coordinate surjectivity and next-page
meaning are stronger hypotheses than this transport alone needs.

The two direct builds have exit code zero and five standard-only axiom
reports. Source, log and object hashes matched when reviewed; the detailed
record is `independent-review.json`. Actual Adams realization and the
Fact7.6(4) differential premises remain explicit obligations.
