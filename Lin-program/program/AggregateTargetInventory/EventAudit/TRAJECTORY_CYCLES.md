# Cycle-domain checks for every event projection

TrajectoryCycles.lean proves that both raw E2 endpoints of each of the87
verified events are cycles at every preceding finite page before applying
that page's quotient projection. All87 two-endpoint traces pass. There
are78 prior-page cycle instances; d2 events have an empty prior-page range.
No noncycle is silently projected as a surviving class. The exact recursive
Lean expressions match CoordinateLinks, and the final coordinates match
the event source/target literals.

For57 events with a complete adjacent comparison, the target is also proved
a cycle on the event page itself via the checked complex and image witness.
The outgoing event source is intentionally not a cycle on its event page:
EliminationStage already proves that from its nonzero differential.

trajectory-cycles.json retains every degree, raw local vector, page matrix,
projected vector, outgoing value and status. The generator stops a trace
at a missing comparison or noncycle and would report that failure; none
occur in these87 existing events. It does not revisit the14 unresolved
aggregate event roots or promote them to verified status.

These are valid-domain checks for finite quotient transitions, not actual
Adams survival or nonzero-survival theorems. The previously documented
conditional matrix semantics and topological transport obligations remain.
review_cycles.py independently checks every page range, actual matrix
product, final coordinate, theorem count and deterministic regeneration.
All checks and direct Lean -j1 compilation passed. Register
AggregateTargetInventory.EventAudit.TrajectoryCycles. No old Lean file,
new axiom, sorry or native_decide was introduced.
