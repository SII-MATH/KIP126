# Fixed named actual trace through E6

`Basic.lean` constructs the actual quotient trace of the fixed E2 vector
`(true,true)` at bidegree `(9,132)`, and proves that its E6 value is nonzero.
The theorem is conditional on `Meanings`: complete coordinates for the same
actual Adams spectral sequence at E2 through E6, and four `StepMeaning`
records interpreting every outgoing map, the whole incoming source, and the
actual next-page quotient projection.

The finite coordinates are `(1,1) -> (1,0) -> (1) -> (1) -> (1)`. Each of
the four steps has a proved cycle and nonboundary statement. The endpoint
is constructed by actual quotient operations, not supplied as a premise.
Its E2 vector is definitionally the existing Fact713PageCertificates target;
the earlier polynomial expression interpretation remains available there.

This does not supply these whole-map meanings for the sphere. In particular
the row2569 raw NULL/zero-prefix interpretation and all inherited finite
comparison meanings remain explicit obligations. No E12 or permanence
conclusion follows.

Reproduce sources and direct compilation from the repository root:

```sh
python3 program/Fact713NamedActual/generate.py
python3 program/Fact713NamedActual/compile.py
```

Direct compiler session 82223 returned exit 0 with ten standard-axiom
reports. The first failed transparency attempt is retained as a failed log;
it is not evidence for an accepted theorem. Full Lake and exhaustive axiom
audits are recorded separately under `tests/`.

Files: `Basic.lean`, `generate.py`, `compile.py`, direct compiler JSON/log,
this README, and independent review artifacts. The generator creates proof
source only; Lean rechecks the finite calculations and actual trace proof.
