# Independent review: actual incoming bridge

P1 finding: `ActualAdamsIncomingBridge/Basic.lean:38` specializes `Page4Route`
to a tagged incoming source for which that route is impossible. The original
bridge's `Conditions S target` is uninhabitable for every actual Adams system.
Consequently its conditional page restriction is vacuous, not an applicable
bridge to Fact 7.6(2).

The source at page4 is `Unit` plus the sigma of every admissible source degree
and its carrier. Both `.inl ()` and the distinct
`.inr <(10,136), rfl, 0>` exist. This remains true when the actual source group
itself is zero. `Page4Route` demands an injective coordinate map from this
tagged source to a homology quotient. Its complete-kernel conditions imply
that the quotient is a singleton. Injectivity then identifies the two sum
constructors, which is impossible.

`Vacuity.lean` proves `conditions_impossible` for arbitrary `S` and `target`,
using only the public route fields and existing proved zero-quotient theorem.
The independent counterproof compiled successfully, with two standard-only
axiom reports. This is an actual Lean contradiction from the input structure,
not a finite approximation or an argument that merely lacks an instance.

The `Unit`-plus-sigma representation remains correct for the image theorem
and tail theorem: zero is always a boundary, and when the filtration is
smaller than the page there is no sigma summand. The error is applying a
faithful zero-source coordinate route to this redundant representation.
For the intended page7 situation the same redundancy also obstructs mapping
a source with at most two elements surjectively onto the tagged set of three
elements. The page4 contradiction already suffices to make all conditions
impossible, so it is the primary finding.

Recommended correction: at nonnegative source filtration use the unique
actual source carrier at `(14-r,140-r)`, and use `Unit` only above filtration.
Alternatively retain the tagged image interface but formulate the page4/page7
routes on the actual carrier and pull only the differential-zero conclusion
back along a surjective collapse map. Do not require injectivity of that
collapse map. The correction should include a nonvacuity example with actual
zero source groups, as well as preservation of `HitAt <-> PageBoundary`.

Other reviewed statements are correctly scoped: all admissible source degrees
are represented, the tail uses the strict actual filtration bound, the page
partition covers every `r >= 2`, and nonzeroness is required only for the
queried target. Local page2/page3, page4/page7, and whole-map hypotheses remain
unproved mathematical inputs; no complete Fact 7.6(2) is claimed.

The original successful source/log/object fingerprints are preserved in the
review report. The earlier `.txt` prototype and failed logs are historical
failures and are excluded from successful proof evidence. No production
Lean source was edited during this review. Any subsequent fix should receive
a separate checkpoint; `conditions_impossible` targets the original frozen
source fingerprint explicitly.
