# Constructed named actual E7 path

Status: both leaves compile successfully in serial direct compilation. The
17 printed declarations use only `propext`, `Classical.choice`, and `Quot.sound`.
No previously frozen source or compiled dependency has been changed.

The input at the tracked bidegree `(9,132)` is one additive, zero-preserving
coordinate equivalence on E2. Each following `StepInput` supplies complete
incoming/outgoing coordinate meanings for the actual differential and local
zero/addition laws for the given actual homology identification. Accepted
comparisons for d2 through d6 are fixed in the source and checked by `decide`.

`StepInput.next` constructs the next page's coordinate equivalence and proves
it preserves addition. `StepInput.stepMeaning` constructs its quotient
projection law. Nested `Prefix3` through `Prefix7` structures ensure each
following step refers to exactly the coordinates obtained from the preceding
step. Later current-page coordinates, their additivity, and their projection
laws are not fields of the inputs.

`Prefix6.meanings` supplies the earlier `Fact713NamedActual.Meanings` interface
by construction. The raw E2 element is fixed by the initial coordinates and
the existing named vector `(1,1)`; it is not an arbitrary supplied endpoint.
`Prefix7.endpoint7` advances this same raw element through actual quotient
steps, and `Prefix7.named_E7` asserts the constructed endpoint is nonzero with
coordinate `(1)`.

This reduces the coordinate premises of the earlier actual path theorem.
It does not construct actual sphere Adams data. Complete neighboring
differential meanings and the local homology laws remain mathematical inputs;
the preserved unknown rows and inherited zero-prefix interpretations are not
proved by finite matrix checks. No E12 conclusion is made.

Run `python3 program/Fact713ConstructedNamed/compile.py` from the repository
root. Source hashes, final logs, and observed compiler exit codes are recorded
per leaf. Independent review is separate from compilation.
