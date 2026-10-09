# Actual Adams interpretation of the constrained stem125 E5 product

The three modules connect the typed actual product trace to the earlier
48-case finite quotient and then to an actual page5 product over the
same 45 recorded stem125 centers. They do not construct the sphere
spectral sequence or prove that these 45 centers exhaust every possible
filtration of an actual stem.

## Typed trace and finite selection

`Basic.TraceData` fixes one actual `AdamsSpectralSequence S`, its page
identifications, zero compatibility, certified graded product, the six
local multiplicativity squares, the five faithful empty E2 factor
targets, initial factors, and the actual initial named product.
The named differential coordinates refer to the same actual recursively
transported initial name at page4. `TraceData.finite_cycle` calls
`ActualAdamsProductTraceBridge.finite_at_cycle`; no named-cycle theorem
is stored as a certificate field.

`Constraints` retains the raw candidate cycle equation, the separate
product and map obstructions, and both full incoming columns. These
obstructions are not automatically identified with the typed product
context. The complex law follows from the already checked comparison
for every one of the original 20 filtration25 branches.

`select` proves that the original choice is exactly an embedding of
branch8 or branch18, preserving the other three choice fields.
`finite_aggregate` and `dimension_bounds` give the 45-center finite
quotient cardinality and the dimension bound 3 through6.

## Actual positive pages and the same coordinates

`degree` uses the exact 45 original filtrations and internal degree
filtration+125. `positiveDegree` and `zeroDegree` use the existing checked
17+28 partition of those original indices. The filtration25 center is
positive index10 and has degree `(25,150)`.

`PageCoordinates` contains only maps. `actualPage` builds `PageData`
whose current, incoming, outgoing, and next types are respectively the
actual page4 group, the complete `Unit` plus all incoming source-degree
groups, the actual page4 target group, and the actual page5 group.
Its maps are the actual incoming differential, `S.differential`, and
the actual homology transition extended to all current elements.

`PositiveMeaning` requires `WholeMeaning` for each of the 17 such pages,
using actual addition. Thus it supplies faithful current/target/next
coordinates, complete current and incoming coordinates, zero/addition
compatibility, the full incoming/outgoing equations, and the next-page
projection equation on every actual cycle. It does not assume a
next-page cardinality, a quotient equivalence, or next-coordinate
surjectivity. Those follow from the checked complete comparisons.

`SameCoordinates` binds the typed trace's source coordinates to the
complete page's current coordinates at positive index10 for every
actual element. `named_current` explicitly derives that the same initial
name has the required coordinates in the complete page. The bound
itself can be proved using both coordinate interpretations separately;
the combined certificate additionally requires their equality so an
application cannot silently substitute a different naming convention.

`positive_cardinality` applies the existing proved
`actual_next_total_card`, yielding the cardinality of the actual page5
product over all 17 positive centers.

## The 28 zero centers and the whole recorded product

`ZeroMeaning` supplies a faithful map from each actual page4 zero center
to `Vec 0`. This is a mathematical hypothesis about every actual element,
not an inference from absent database rows. The actual homology tower
has proved surjectivity from cycles and supplied zero compatibility;
`zero_next` therefore proves that every corresponding actual page5
element is zero. Incoming and outgoing neighbors are not declared empty.

`partition` reindexes the actual product over all 45 original centers.
`wholePositiveEquiv` removes the 28 proved singleton factors.
`whole_bounds` combines this with the positive-page theorem:

```text
3 <= Product.dimension c <= 6
Nat.card (WholeNext S) = 2 ^ Product.dimension c
8 <= Nat.card (WholeNext S) <= 64
```

The result concerns a finite product of actual page5 carriers. It is
neither a later permanence assertion nor a stable homotopy-group
calculation. No joint realization of all 48 choices is claimed.

## Certificate and tactic

`Certificate S c` packages the typed trace, finite constraints, all 17
positive coordinate meanings, the shared naming coordinates, and all
28 zero-center meanings. These semantic proofs must be supplied in
Lean; they are never deserialized from C++ output. The finite comparisons
reuse the already imported and kernel-checked records.

```lean
example {S : AdamsSpectralSequence} {c : Product.Choice}
    (certificate : ActualStem125ConstrainedE5.Certificate S c) :
    And (3 <= Product.dimension c) (And (Product.dimension c <= 6)
      (And (Nat.card (ActualStem125ConstrainedE5.WholeNext S) = 2 ^ Product.dimension c)
      (And (8 <= Nat.card (ActualStem125ConstrainedE5.WholeNext S))
      (Nat.card (ActualStem125ConstrainedE5.WholeNext S) <= 64)))) := by
  actual_stem125_e5_cert using certificate
```

The module contains the compiled `by_tactic` example with this goal.
Failure to provide a coordinate law or typed semantic field produces
the ordinary Lean field/type error at the missing or mismatched input;
upstream finite JSON import supplies its existing field diagnostics.

## Verification

```sh
python3 program/ActualStem125ConstrainedE5/compile.py
python3 program/ActualStem125ConstrainedE5/assert_current.py
```

All three serial direct builds exited 0 and emitted 16 standard-only
axiom reports. Earlier failed elaboration logs are retained separately;
they are not successful proof evidence. No admitted proof, custom axiom,
native evaluator, or trust in C++/hashes is introduced. Hashes identify
the reviewed sources and build records only.
