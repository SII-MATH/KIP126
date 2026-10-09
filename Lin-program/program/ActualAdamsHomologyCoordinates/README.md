# Actual next-page coordinates

`Basic.lean` constructs coordinates on an actual Adams homology quotient and
on the actual next-page carrier. No next-page coordinate function or quotient
projection formula is a premise.

The minimal `Meaning` inputs are:

- One actual `AdamsSpectralSequence`, one page and one bidegree.
- A complete current-page coordinate equivalence preserving zero and addition.
- An injective outgoing coordinate function preserving zero and interpreting
  the whole actual outgoing differential.
- A surjective incoming coordinate function interpreting the whole actual
  incoming differential, using `ActualAdamsIncomingBridge.Source`.
- A valid finite `WireComparison`, obtained from `checkWire_sound` when used
  through the adapter.

These assumptions prove actual cycles correspond exactly to the finite
kernel and actual boundaries correspond exactly to the finite image. The
actual quotient coordinates are a bijection with `Vec w.h`, with representatives
provided by the checked inclusion matrix. Composing this bijection with the
given `CertifiedAdamsPages` constructs `Meaning.nextEquiv`. Its quotient
projection formula is a theorem.

`CertifiedAdamsPages` only specifies an equivalence of types. A local
`Meaning.LocalZeroMeaning` is therefore needed to package the constructed map
as zero-preserving `Row3151ActualTransport.Coordinates`. It is only required
at this page and degree. `Adapter.lean` additionally proves that the constructed
coordinates preserve addition under `LocalAddMeaning`, the corresponding local
law for the actual homology identification.

`WholeCoordinates.stepMeaning` constructs the existing
`Row3151ActualTransport.Named.StepMeaning`. This adapter explicitly requires
equivalences on the outgoing and incoming carriers because that existing
interface requires both; the minimal quotient construction does not.

The modules do not realize these data for the sphere or establish an actual
Kervaire survival theorem. Actual current coordinates and differential
interpretations remain mathematical inputs. The finite matrix certificate
checks do not supply them. No database rows, hashes, or C++ outputs are trusted
as mathematical premises.

Run `python3 program/ActualAdamsHomologyCoordinates/compile.py` from the
repository root. Compilation is serial and preserves unsuccessful logs.
The two final leaves compile with exit code zero and emit 14 axiom reports,
all using only `propext`, `Classical.choice`, and `Quot.sound`.
