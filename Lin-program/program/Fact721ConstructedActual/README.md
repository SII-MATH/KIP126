# Fact 7.21 constructed finite actual prefixes

This package constructs two fixed-input actual quotient traces, using only
one initial tracked additive coordinate system for each class:

| Class | Degree | Actual endpoint | Coordinate dimensions |
| --- | --- | --- | --- |
| `h6 M d0` | `(11,133)` | E4 | 2, 2, 1 |
| `h5 x91,11` | `(12,134)` | E5 | 3, 2, 1, 1 |

Later tracked coordinate equivalences, addition laws and quotient formulas
are derived by `ActualAdamsHomologyCoordinates`. The resulting theorem fixes
the caller's exact initial E2 element and constructs a nonzero endpoint.
The initial vectors equal the existing `Fact721PageCertificates` named
vectors, whose literal polynomial semantics remain available there.

`First.DetectorInput.assemble` obtains the named d3 zero from the existing
actual DC2h6 detector theorem. `Second.DetectorInput.assemble` similarly uses
the actual S0-to-C2h6 source detector. In each case the other basis column
retains its known-boundary mathematical premise, and derived additivity
extends both columns to the whole outgoing map. The complete incoming map
and actual quotient laws remain explicit.

The detector's naming field identifies the actual element represented by
the derived staircase coordinate with the detector's named finite homology
class. It is an equation about the source class, not its differential value.
The independent oracle checks the whole initial canonical/staircase changes
in both directions; first `(0,1)` remains `(0,1)`, while second `(1,0)` becomes
staircase `(0,1)`. No target zero is included in that naming field.

`Second.D4Input.assemble` applies the existing C2h5 theorem to the whole actual
d4 map. Its `meaning` may be constructed by
`Fact713D4SourceSearch.Assembly.assemble`, which derives the incoming unknown
using row-2773 naturality. This yields the main class's nonzero E5 endpoint
without assuming a selected unknown differential value.

## Tactic

```lean
theorem result
    (P : First.Prefix3 S pages initial)
    (D : First.DetectorInput P)
    (input : (S.element 2 First.degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    First.ResultValid S pages initial input := by
  fact721_cert using D.assemble named binding
```

The second result uses `Second.ResultValid` and its assembled E5 certificate.
`fact721_cert using certificate` accepts the canonical `raw initial`, or an
input with a matching local binding. The tactic dispatches only on the two
exact result families; it cannot solve a permanence goal. `Tactic.lean`
contains compiled applications of both detector assemblies, both fixed-input
forms, and two negative checks. Both semantic result definitions reject a
zero initial element.

## Verification and limitations

All four leaves compile serially with the pinned Lean toolchain. The separate
model audit checks exact raw and basis IDs, all initial input rows, full
finite quotients, both initial coordinate changes, nontrivial actual carrier
relabelings, every quotient/addition pair and every incorrect initial input.
It includes countermodels to omitting the other known basis-column premise.

```sh
python3 program/Fact721ConstructedActual/compile.py
python3 program/Fact721ConstructedActual/check_models.py
```

This package proves no permanence statement. The first class's d4 remains
unknown. The second class's d5 target is zero only in a separate conditional
branch, and no actual branch is selected here. Incoming filtration bounds
by 11 or 12 do not bound outgoing differential pages. Actual outgoing tail
vanishing, further known differential meanings and the original Adams
realization remain missing, as recorded in `Fact721Frontier`.

Raw rows 2622 and 2684 remain `NULL`, level 9000. The second named class is
E2 basis row 2682, not basis row 2684. No `sorry`, `admit`, custom `axiom`,
`native_decide`, or `unsafe` occurs in accepted source. Hashes record
provenance and reproducibility; they are not correctness proofs.
