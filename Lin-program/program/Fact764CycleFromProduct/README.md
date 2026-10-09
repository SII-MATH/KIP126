# Fact 7.6(4): deriving the named outgoing cycle from a product

This directory proves a sufficient actual-algebraic route to the d4-cycle
premise left by `Fact764ConstrainedE5`. It does not construct a common actual
graded Adams realization from the database. All failures in the direct finite
comparison search are retained.

## Input investigation

The full finite search adds 34 complete predecessor comparisons and leaves
the old 358 aggregate blocks unchanged. All are rechecked in `Data.lean`.

- `g`, raw basis72 at `(4,24)`, has complete d2/d3/d4 comparisons. Its d2/d3/d4
  target E2 spaces `(6,25)`, `(7,26)`, `(8,27)` are empty.
- `Delta h1g`, raw basis296 at `(9,54)`, has empty d2/d3/d4 target E2 spaces
  `(11,55)`, `(12,56)`, `(13,57)`. The complete E4 quotient at the source
  remains blocked by unknown incoming staircase279 at `(6,52)` on d3.
  The argument needs this class to be an outgoing cycle, not a nonboundary.
- `g^4`, raw basis1126 at `(16,96)`, has a one-dimensional E3 quotient, but
  direct later comparisons encounter unknown staircase1125 d3 and incoming
  row1060. They are not set to zero.
- The sphere d4 target `(29,153)` is the previous one-dimensional E4 space.
  The tmf target has two E2 basis elements; its staircase has one incoming d2
  boundary and one nonzero outgoing d2 row, leaving zero selected E3 space.
  This is a conditional staircase interpretation (tmf has no E2 d2 column).
  Consequently this proposed zero-target detector cannot be injective on the
  sphere's one-dimensional target. No actual tmf E4 computation is inferred
  from missing d2 data. `no_injective_zero_detector` proves the obstruction
  for any map from one finite coordinate to zero coordinates.

## Actual algebraic route

`fourth_power_cycle` proves `d(g^4)=0` for any characteristic-two commutative
ring with an actual Leibniz differential. Even `d(g)=0` is unnecessary for this
identity. `named_product_cycle` then proves `d(g^4*delta)=0` if `d(delta)=0`.
The raw polynomial is tied to the named monomial by `named_polynomial` and
the previous exact E2-to-E4 coordinate theorem.

`delta_target_zero_from_empty_coordinates` starts from an injective actual E2
target coordinate map into `Vec 0`. It uses `PageTower.nextSurjective` and
`nextZero` to prove the entire actual E4 target is zero. This avoids needing a
complete neighboring differential matrix merely to propagate an already empty
space. Empty SQL rows do not prove injectivity or page completeness.

`Meaning` states every semantic premise: the actual commutative characteristic
two ring, one actual differential and Leibniz law, every source/target matrix
coefficient interpretation, target faithfulness, the named product equality,
and the actual delta-target page tower with its E2 zero-coordinate map. The
target differential value belongs to that actual tower and preserves its zero.
`Meaning.named_cycle` derives the finite named d4 cycle from these assumptions.
`unique_from_product` combines it with the incoming obstruction conditions,
both full source columns, and the complex law to obtain whole-quotient
uniqueness. It does not assume the full outgoing matrix is zero.

The remaining mathematical work is to supply this common graded actual-page
realization and its named product/coordinate interpretation for the intended
Adams spectral sequence. The algebraic theorem is proved; that realization is
not obtained by trusting the generator name, level9000 sentinel or C++ output.
No permanence beyond d4 is claimed.

## Reproduce

```text
python3 program/Fact764CycleFromProduct/search.py
python3 program/Fact764CycleFromProduct/generate.py
python3 program/Fact764CycleFromProduct/compile.py
python3 program/Fact764CycleFromProduct/review.py
python3 program/Fact764CycleFromProduct/assert_current.py
```

The search reuses the untrusted C++ full-comparison producer and only renders
successful complete outputs. `compile.py` compiles the two new leaves serially
with `lean -j1`; the logs report seven standard-only axiom dependencies.
The arithmetic review independently queries raw SQL for every used degree,
checks every d2/higher column, full homotopy identities, all cycle-pair boundary
equivalences, and preservation of unresolved rows279/1125/1060. There are no
admitted proofs, new axioms or native-evaluation trust.
