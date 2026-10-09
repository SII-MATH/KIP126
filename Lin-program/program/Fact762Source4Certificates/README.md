# Fact7.6(2) page4: conditional complete-kernel route

`KernelBranch.lean` extends the already checked row2708 complete-kernel
consequence to the entire possible d4 source at `(10,136)`.

The full E3 source of row2708 at `(7,134)` has dimension2; its d3 target
at `(10,136)` has dimension1. The earlier theorem requires an explicit
survivor-cycle premise and an explicit `KernelSpanned` premise: every d3
cycle lies in the span of the proposed survivor plus incoming boundaries.
Those hypotheses force d3 to be the nonzero row `[false,true]`, so its
image is the entire one-dimensional target. They are not proved from raw
row2708 `(2708,7,134,"0,1",NULL,9997)`.

`sourceE4_zero_under_complete_kernel` proves every class in the complete
next-page homology quotient at `(10,136)` is zero, for any outgoing target
dimension and any outgoing matrix satisfying the complex condition.
`d3_outgoing_zero_under_complete_kernel` also shows that complex condition
forces the outgoing d3 on `(10,136)` to be zero.

`page4_incoming_vanishes` transports the full zero quotient by an explicitly
faithful actual source-coordinate map, with a zero-meaning equation. It
concludes `VanishesAt (sys.differential 4) (sys.zeroTarget 4)`, exactly the
all-source page4 obligation in `Fact762IncomingCertificates`.

This route deliberately does not preserve the old proposed E4 basis:
row2858 `(2858,10,136,"2",NULL,9000)` is a boundary under these hypotheses.
The existing theorem `Row2708KernelConditional.incompatible_with_nonboundary`
shows that asserting it is also nonboundary would be inconsistent. No such
nonboundary premise appears in `KernelBranch.lean`.

The full incoming-source complete-kernel hypothesis remains a substantive
unproved mathematical input. This is a conditional implication, not a
verification of the actual row2708 value or an unconditional proof of
Fact7.6(2). Actual bidegree, full matrix, and page realization must be given
when applying the coordinate transport; the arbitrary matrix dimensions
do not supply those interpretations.

The separate `Fact762Source4Search` directory screens all 70 configured S0
maps for a different d4-zero route. None currently supplies a complete E4
detector. That search is not used in this Lean proof.

```sh
python3 program/Fact762Source4Certificates/compile.py
python3 program/Fact762Source4Certificates/review.py
python3 program/Fact762Source4Certificates/assert_current.py
```

The sole Lean module compiles with three standard-only axiom reports.
It uses no `sorry`, `native_decide`, custom axiom or C++ trust. The accepted
95-event snapshot and previous comparison bases are unchanged.
