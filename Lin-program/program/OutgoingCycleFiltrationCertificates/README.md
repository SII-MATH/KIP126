# Cycle-filtration bridge to Z-infinity

This directory proves that membership in the intersection of initial-page
cycle subsets is equivalent to the recursive `AlwaysCycle` predicate,
under explicit actual quotient and differential compatibility hypotheses.
The equivalence is a theorem, not a field of the input structure.

## Exact indexing and hypotheses

`Filtration E2` has subsets `Z n` of a fixed initial E2 type. Index `n`
corresponds to the paper's `Z_(n+1)` and to `System.Page n = E_(n+2)`.
Thus `Z 0` contains every initial element, and `Z (n+1)` imposes the next
zero differential. The subsets decrease, contain a specified zero, and
carry boundary setoids. The initial boundary setoid is equality.

`Realization f s` contains an equivalence from the entire quotient of
`{x // f.Z n x}` by its boundary setoid onto `s.Page n` for every `n`.
Its hypotheses say:

- The initial zero coset maps to the actual page zero.
- For each `x` already in `Z n`, its actual outgoing value is zero exactly
  when `x` belongs to `Z (n+1)`.
- For each `x` in `Z (n+1)`, advancing its previous quotient class gives
  its next quotient class.

These maps are defined only on the appropriate cycle subsets. The quotient
equivalences include all page elements and exactly the boundary fibers;
they do not compare only selected named records. `image_surjective`,
`image_eq_iff`, `image_zero_iff_boundary` and `initial_injective` expose
these consequences. No global `AlwaysCycle` or intersection condition is
assumed by `Realization`.

## Theorems

`Realization.image_eq_at` proves by induction that each defined quotient
image equals the recursively advanced initial element. The central theorem
`Realization.intersection_iff_alwaysCycle` then proves

```lean
f.ZInfinity x <-> OutgoingCycleCertificates.AlwaysCycle s (r.initial x)
```

Both directions use only the local zero criterion, quotient-transition
compatibility and decreasing cycle subsets. `checked_intersection` applies
the existing outgoing-cycle certificate soundness theorem through this
bridge: the finite certificate, actual prefix meaning, actual outgoing
tail, and full filtration realization all remain explicit inputs.

`Boundary.lean` adds optional actual differential laws that zero has zero
outgoing value and every incoming image is a cycle. With the existing
`System.homology_zero` law, it proves zero advances to zero and that the
next boundary subset is exactly the preimage of the actual incoming image.
It derives increasing boundary subsets, then proves
`Realization.BInfinity_subset_ZInfinity`. Here `BInfinity` is the union of
the abstract boundary subsets. No incoming-exclusion or nonzero condition
is needed.

`Examples.lean` realizes a genuine quotient model: the initial E2 type is
Bool with equality as its initial boundary relation. All elements are
cycles. After the incoming identity differential, the boundary relation
identifies all elements and the page quotient becomes a singleton. The
initial true class is nonzero, belongs to Z-infinity and satisfies
AlwaysCycle, but its next representative is zero and it fails the stronger
nonboundary `System.Permanent` predicate.

`Strong.lean` proves the additional equivalence
`System.Permanent (r.initial x)` iff `ZInfinity x` and not `BInfinity x`,
using the explicit `DifferentialLaws` and the already proved exact
incoming-image characterization of next boundaries. It treats the initial
boundary index separately and uses full incoming images at every later
index. It also proves that an element in both Z-infinity and B-infinity is
an outgoing cycle but cannot satisfy strong nonboundary permanence.

## Mathematical boundary

These are conditional general theorems, not an actual Adams realization.
The setoid data do not by themselves define the paper's additive boundary
subgroups, their bidegrees, or the sum-of-differential-images construction.
To instantiate the paper's Notation3.10, one must supply its actual E2
group and Z/B subgroups, identify setoid fibers with boundary cosets, and
prove the full page equivalences and local differential/advance laws.
The optional boundary theorem proves the cumulative behavior of those
abstract fibers once the stated actual differential laws hold; it does
not synthesize the missing topological input.

No convergence premise is needed for the equivalence with membership in
the intersection Z-infinity. Turning a nonzero E-infinity class into a
stable homotopy class requires separate convergence/filtration results.
Nothing here identifies outgoing-cycle membership with nonboundary
survival. The paper explicitly allows B-infinity inside Z-infinity.

## Build and review

Five modules `Basic`, `Certificate`, `Examples`, `Boundary`, `Strong` compile under
Lean4.32.2. The 13 printed axiom reports contain only standard `propext`,
`Classical.choice`, `Quot.sound`, or no axioms. No `sorry`, `native_decide`,
custom axiom, C++ trust, or modification of the frozen outgoing-cycle
modules is used.

```sh
python3 program/OutgoingCycleFiltrationCertificates/compile.py
python3 program/OutgoingCycleFiltrationCertificates/review.py
python3 program/OutgoingCycleFiltrationCertificates/assert_current.py
```

`review.py` records source fingerprints and independently enumerates the
finite quotient example. Its finite sample is regression evidence; the
Lean proofs quantify over all pages. `compile-audit.json` and module logs
record the actual serial compiler results, while the root Lake build has
separate integration evidence.
