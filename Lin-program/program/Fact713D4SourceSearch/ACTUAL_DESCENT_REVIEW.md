# Actual quotient map descent

`ActualDescent.lean` constructs complete next-page coordinates from the two
current-page coordinate meanings and the actual homology identifications.
Neither next-page coordinates nor a next-page coordinate formula are inputs.

`Input` retains the complete current differential and incoming meanings,
zero-preserving current coordinates, both finite chain-map squares, and the
whole current-map equation. `Input.mappedCycle` derives cycle preservation
from these premises. `Input.Transition` explicitly requires the actual map's
quotient transition law on every actual cycle. Surjectivity of the actual
homology identification then covers every next-page element.

The main theorem, `next_map_coordinates`, proves the full next-page matrix
formula using `induced_coordinates_all`. `next_all_zero` and
`next_reflects_zero` transfer the corresponding whole finite map properties
to actual next-page elements. Zero laws for the actual quotient transitions
remain explicit, because the underlying identification is an equivalence
of types and does not by itself preserve zero.

The corrected module compiles successfully with four axiom reports, each
containing only `propext`, `Classical.choice`, and `Quot.sound`. The original
ambiguous `Cycle` compile failure remains in a separate failed log. Its
elaboration-generated `sorryAx` is absent from the successful build and is
not part of any accepted declaration.

`actual_descent_model_check.py` independently exercises 256 complete actual
models over the 32 parameter choices. It checks 1,024 cycle transitions,
512 representative-independence comparisons, 512 next-coordinate equations,
256 source-zero instances and 256 target-zero-reflection instances. The
current carriers use transported addition and nontrivial relabelings, with
zero labels allowed to differ from numeric zero. Another 128 countermodels
show why omitting the actual transition law would invalidate zero reflection.

This construction remains conditional on mathematical interpretations of
the complete imported current-page data and actual page transitions. It
does not assert that the database is a sphere realization.

```sh
python3 program/Fact713D4SourceSearch/actual_descent_model_check.py
```
