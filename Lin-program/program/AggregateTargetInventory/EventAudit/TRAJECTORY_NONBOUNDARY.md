# Nonzero finite trajectories before each event

NonboundaryBasic proves that a cycle with nonzero projection under a
complete comparison cannot belong to the full incoming image. This uses
comparison completeness and its boundary-difference characterization;
it is not inferred from a staircase level or a nonzero raw string.

TrajectoryNonboundary checks all78 earlier-page projections in the174
endpoint traces of87 events. Every projection is nonzero, and all78
nonboundary theorems follow from the previously proved cycle facts.
All174 traces pass, including empty prior-page traces for d2 events.
No zero projection or missing earlier stage was reinterpreted as survival.

Together with CoordinateLinks and TrajectoryCycles, this supplies actual
finite nonzero quotient trajectories up to the event page. It deliberately
does not assert nonboundary at the event itself: a target hit at that
page is an image and becomes zero in the next quotient when the adjacent
comparison is available. Actual Adams interpretation/transport and the
previously explicit conditional local premises remain outside this result.

trajectory-nonboundary.json records every stage and its nonzero projected
vector. review_nonboundary.py independently recomputes projections, checks
full coverage against cycle traces, and verifies deterministic regeneration.
Both Lean modules passed direct -j1 compilation and the review passed.
Register AggregateTargetInventory.EventAudit.TrajectoryNonboundary.
No old Lean dependency, sorry, new axiom or native_decide was introduced.
