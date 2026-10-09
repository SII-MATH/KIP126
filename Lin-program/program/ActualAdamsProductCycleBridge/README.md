# Actual graded Adams product-cycle bridge

This extension proves the Fact 7.6(4) product-cycle route directly in the
existing typed `AdamsSpectralSequence`, `CertifiedAdamsProduct`, and
`CertifiedAdamsPages`. It replaces the separate ungraded characteristic-two
ring and unrelated target tower premises in `Fact764CycleFromProduct` with
the actual graded F2 page objects and their certified homology identifications.
It does not build these actual objects from the raw database.

## Graded differential argument

`Basic.square_cycle` expands the actual same-page Leibniz formula for
`x*x`, uses graded commutativity with the exact `pageCast` degree transports,
and cancels the two equal terms using `f2Space_add_self`. The two sides really
lie in the same Adams target bidegree; no ungraded multiplication is assumed.
`fourth_cycle` applies this to `(g*g)*(g*g)`, where `g` has degree `(4,24)`;
the result has degree `(16,96)`. The graded product with `delta` of degree
`(9,54)` has the required named degree `(25,150)` and d4 target `(29,153)`.
The argument needs no nonboundary or nonzero premise about either factor.
The existing type is named `GeneralizedLeibnizRule`, but its field `formula`
expresses the ordinary product rule for one fixed page r. This bridge does not
formalize the paper's possible cross-page or indeterminacy versions of a
generalized Leibniz rule, or compatibility of products with page transitions.

`Zero.pageTower` constructs the entire actual fixed-degree tower using
`CertifiedAdamsPages.nextPage`. Every next element has a cycle representative:
this is proved from the quotient representation and the supplied inverse laws.
Zero preservation is the existing explicit `ActualAdamsSystemBridge.ZeroMeaning`.
There is no independently supplied tower that could refer to another system.

`zero_later_from_coordinates` transports a faithful actual E2 coordinate map
into `Vec 0` to all later actual pages of the same bidegree. At `(13,57)`, this
gives the actual d4 target zero for `delta`, and
`named_cycle_from_empty_target` proves that the specified actual graded product
is a d4 cycle. The empty SQL E2 degree motivates the zero-coordinate premise
but cannot prove its completeness.

## Binding to the finite checker

`Finite.DifferentialCoordinates` provides source and target coordinate maps,
target zero preservation, and the full equation for every actual differential
value. `finite_cycle` also requires the actual named product to have the exact
three-coordinate vector previously checked in `Fact764ConstrainedE5`.
It transports the proved actual cycle into the finite matrix kernel.

`unique_finite` then uses the existing whole-quotient checker soundness route,
the two incoming obstruction conditions, both source columns and the complex
law. `outgoing_zero` proves that the constrained complete incoming matrix and
this named cycle force the full outgoing matrix to vanish. Neither theorem
assumes that full outgoing zero as an input.

For transport in this direction, source-coordinate surjectivity and target
injectivity are unnecessary: the actual cycle equality is mapped into finite
coordinates. To derive a theorem about every actual cycle from the resulting
finite uniqueness, use the previously checked
`ActualUniqueHomologyCertificates.transport` with its full `WholeMeaning`.
This directory does not replace that completeness requirement.

## Remaining premises

The intended actual Adams spectral sequence must still supply certified page
products and Leibniz laws, certified homology identifications with zero
preservation, complete E2 zero coordinates at `(13,57)`, actual E4 factors,
and their named-product coordinate equation. A trace from the intended E2
names to these E4 factors is not manufactured here. The incoming obstruction
proofs must also be connected to the intended actual context. No stable
homotopy or later permanence is claimed.

The prior finite raw-data investigation, 34 complete comparisons, and preserved
unknown rows279/1125/1060 remain in `Fact764CycleFromProduct`; they are not
rewritten to justify the actual-page premises.

## Validation

```text
python3 program/ActualAdamsProductCycleBridge/compile.py
python3 program/ActualAdamsProductCycleBridge/review.py
python3 program/ActualAdamsProductCycleBridge/assert_current.py
```

Only the three new leaves Basic, Zero, Finite are compiled, serially with
`lean -j1`. Ten printed axiom reports are restricted to standard Lean axioms.
The independent arithmetic replay checks exact same-page Leibniz degrees,
graded characteristic-two polynomial cancellation, fourth powers and the
named product degree. All mathematical premises are proof fields or typed
arguments, not Boolean labels or trusted external computation.
