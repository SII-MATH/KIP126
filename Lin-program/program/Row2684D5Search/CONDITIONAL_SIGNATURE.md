# Conditional signature and family use

```lean
Actual.whole_d5_zero
  {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}
  (W : Actual.Witness S pages P)
  (x : (S.element 5 sourceDegree).carrier) :
  S.differential 5 sourceDegree x = 0
```

`sourceDegree = (12,134)`, `factorDegree = (6,67)`, and the d5 target is
`(17,138)`. No chart for the target is needed for the whole zero statement.
Every complete target chart that preserves zero therefore gives the zero
finite column, independently of its basis choice or dimension.

`W.source` supplies initial complete E2 coordinates and complete d2, d3,
and d4 mathematical meanings, including all incoming sources, additivity,
outgoing zero reflection, and local quotient-zero compatibility. Actual
E3, E4, and E5 coordinate equivalences are constructed, not supplied.

`W.factor` supplies initial complete factor coordinates, complete d2/d3
meanings, and the actual whole d2 meaning at `(10,70)`, whose finite homology
is zero. Actual empty E3 and E4 targets imply the factor's d4 zero. The
factor's E5 representative is then the actual quotient of this cycle.
There is no meaning for its incoming d4 map, no factor E5 nonzero premise,
and no assumption that its d5 is zero.

`W.product2` is the whole E2 product tensor interpretation for every pair
of actual factor elements; `Semantics.all_products` supplies the associated
ring interpretation from the four checked relation certificates. Three
actual full-cycle multiplicativity laws give the E3/E4/E5 product transport.
These interpretation laws are mathematical inputs, not values in a wire.

The source graph's prior d4 meaning is the conditional C2h5-naturality result.
The new theorem is safe to apply to both `zero_b0` and `zero_b1` families;
it does not select either row2907 d4 branch or the unresolved row400 d4.
No E12 result or all-page permanence follows from this leaf alone.
