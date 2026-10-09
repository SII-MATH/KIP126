# Remaining events2696,2852,3152: exact missing information

This audit checks why the three entries are not added to the accepted finite
batch. It supplies counterexamples and conditional necessities, without
choosing an unknown value or assuming the desired higher event.

## Event2696

The stored d7 target is NULL. Under the two independently constrained row2574
affine branches, its source is already a d3 boundary in branch0 and is
nonboundary in branch1. Both source E4 quotients have dimension1 while the
old selected list has2 vectors. A fixed old basis cannot represent either
branch. No all-branch nonzero d7 certificate is possible. A valid continuation
needs an independently justified branch, the full surviving d4/d5/d6 source
trajectory, an explicit target representative and the complete target path.

## Event2852

The stored d5 target is NULL. Its source at (11,136), E2 local3/basis2853,
already has complete d2,d3,d4 cycle/nonboundary checks and nonzero E5 coordinate.
Thus the reported first DAG error at row2574 is not a missing source proof.
The target degree (16,140) instead lacks its complete d3 quotient because
row3147 is unknown in a full two-dimensional codomain.

All four row3147 completions are retained. Values00/01/10/11 give E4
dimensions1/0/1/0. The stored next-page row3147 representative is a cycle
only for00; value10 still has a one-dimensional quotient, but its true
representative is a sum with the known-differential source. Equal dimensions
alone do not justify the old basis. No map in the earlier complete70-map
screen detected its remaining value. A future proof needs actual differential
information, an explicit d5 target and full target d3/d4 semantic paths.

## Event3152

Its exact d5 target, E2 basis3484 at (20,144), has a complete nonzero E5 path.
The four possible row2925 d4 columns give a precise source obstruction:
`Consequences.event3152_source_nonboundary_iff` proves that the named source
at (15,140) is nonboundary exactly when the second unknown coordinate is
false. With that coordinate true, the entire two-dimensional space is hit.
Therefore a nonzero d5 assertion cannot hold uniformly across all four
branches. A source nonboundary proof would exclude two branches; the recorded
d5 value cannot itself be used to supply that prerequisite. The row2708
complete-kernel condition also conflicts with the old retained target basis,
as separately proved in Row2708KernelConditional; it is not silently added.

`audit.py` checks exact SQL rows, every small finite matrix completion and
all available endpoint trajectories. `Consequences.lean` proves the source
boundary obstruction, the target row3147 cycle criterion and the existing
2852 source projection. It is the sole compiled module here. Raw NULL values
remain missing; no new event or Adams conclusion is asserted.
