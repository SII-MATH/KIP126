# Independent Review: Actual Graded Product Cycle

Reviewer: `/root/map_search_next`; implementation by `/root/source_rules_next`.
The frozen `Basic`, `Zero`, and `Finite` leaves have no identified mathematical
soundness findings. A terminology clarification is required when describing
the imported Leibniz structure: its formula is the ordinary rule on one fixed
page `r`, not a cross-page rule involving differentials of different lengths
or indeterminacy.

`square_cycle` uses exactly that same-page rule. Both Leibniz terms are
transported into the degree of `d_r(x)*x`. The two equality proofs compared by
`Subsingleton.elim` have the same endpoints; proof irrelevance does not
identify unrelated degrees. Graded commutativity makes the two terms equal,
and the F2 space law makes their sum zero. `cast_zero_iff` eliminates an
actual bidegree equality and does not presume an unproved relation between
different graded spaces.

The fourth power has degree `(16,96)` and its product with the supplied E4
delta factor has degree `(25,150)`. The d4 targets are respectively handled
by the actual typed differential; the delta target is `(13,57)`, and the
named product target is `(29,153)`. No cycle or nonboundary assumption about
`g` is used to prove its fourth power is a cycle.

`pageTower` uses the same `S` as the product and differential. It obtains every
next-page representative from the actual homology quotient and its inverse
maps. `ZeroMeaning` identifies quotient zero. Thus the preceding route's
unrelated target tower premise has been removed. A faithful actual E2 map
into `Vec 0` is still required before zero propagation; empty SQL rows do not
establish that faithfulness.

`finite_cycle` follows the direction actual zero to coordinate zero. It
therefore correctly needs the full differential-coordinate equation, target
zero preservation, and the exact named coordinate equation; target
injectivity and source surjectivity are unnecessary for this direction.
The finite uniqueness theorem remains conditional on the two complete
incoming columns, the obstruction equations, and the complex law. It first
derives the named cycle from the actual product argument and then invokes the
finite theorem. It does not reason backward from uniqueness or incoming
constraints to manufacture a cycle. An independent enumeration retains both
nonzero outgoing `[0,1,1]` counterexamples when the named-cycle condition is
removed.

The independent script checks 50,400 exact degree identities, 46,656 Leibniz
monomial pairs in a genuinely graded polynomial algebra with nonzero
`d(g)`, and the two constrained matrix families. Three successful build
records and ten standard-only axiom reports match the frozen sources/logs.

The intended E2 names still need traces to the supplied E4 factors. Actual
spectra, full page products, homology identifications, zero coordinates, and
named coordinate interpretation remain proof inputs. Transporting finite
uniqueness back to **all** actual classes still requires `WholeMeaning` from
the existing actual uniqueness bridge. No cross-page generalized Leibniz
theorem, later permanence, or convergence follows from these three leaves.

Reproduce with
`python3 program/ActualAdamsProductCycleBridge/independent-review.py` from the
repository root.
