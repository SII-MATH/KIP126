# Finite event consequences and h6² page bounds

StageBasic proves once that a nonzero matrix value makes its source fail
the kernel condition. When the following matrix forms a complex, the
value is a cycle and its class in the next finite homology quotient is
zero, with the original source as the boundary witness.

EliminationStage instantiates source-not-kernel for all87 verified events.
For57 events with a complete adjacent comparison already available, it
also proves target-cycle and next-homology-zero. The actual incoming and
outgoing matrices are linked explicitly. Among those57,23 are incoming
rows of the original stem125 inventory; for outgoing inventory rows the
boundary conclusion concerns the differential target in stem124.
Thirty events lack an available complete adjacent comparison in this
batch; no next-quotient statement is invented for them.

For an inventory target filtration s, a possible h6² differential has
page s-2. Of the87 known events,85 occur STRICTLY EARLIER,2 occur on that
same page, and none occur later. The two equal-page cases are outgoing
staircase rows2492 and2493 at filtration6, both event d4. They are not
counted as earlier elimination. The event source filtration for an
incoming row is different from the inventory target filtration; the audit
uses the latter consistently.

stage-audit.json retains event page, inventory filtration, potential page,
relative timing, adjacent availability and existing conditional uses.
These finite kernel/image consequences still require actual Adams page
transport and the relevant induction bridge before excluding any
h6² target. No aggregate topological exclusion theorem is asserted.

Register AggregateTargetInventory.EventAudit.EliminationStage.
review_stage.py checks all87/57 theorem counts, exact equal-page IDs,
filtration bounds and byte-stable regeneration. Only new files are added.

StageBasic and EliminationStage passed direct Lean -j1 compilation. The
proofs use the existing checked comparison theorems, ordinary kernel
reasoning and Quot.sound; no sorry, new axiom or native_decide is added.
