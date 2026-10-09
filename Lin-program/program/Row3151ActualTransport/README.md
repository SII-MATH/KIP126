# Actual transport for the complete row3151 neighborhood

This adds typed, conditional transport from the six finite neighborhoods to
one actual `AdamsSpectralSequence S` and its `CertifiedAdamsPages S`.
It does not supply a realization of the imported sphere data.

`Basic.lean` interprets the entire actual source and target carriers with
zero-preserving coordinate equivalences. `IncomingMeaning` binds the
unknown d3 bit `a` at `(7,134)` to the full differential, all actual incoming
d3 values, and the actual quotient map. The dimension is two for `a=false`
and one for `a=true`. The actual E3 prefix cycle, nonboundary, actual E4
endpoint, its exact coordinate and its nonzero value are proved. An E2-to-E3
`Endpoint` is supplied as an explicit mathematical trace.

`EventMeaning` interprets both full d4 matrices at `(11,137)` and its full
incoming degree `(7,134)`. The complex equation is derived from the actual
`S.differentialSq`; it is not an independent Boolean assumption. Actual
`PageBoundary` is equivalent to membership in the entire incoming matrix
image. The actual next-page quotient-zero equivalence additionally requires
the explicit `ActualAdamsSystemBridge.ZeroMeaning` property.

`Transport.lean` applies the actual eta product theorem to eliminate only
the second unknown d4 coordinate. The known second column and the actual
prefix d4 cycle remain explicit mathematical premises. Its
`six_actual_branches` theorem retains exactly the existing six cases;
`a=true` forces `q=false`, while the first bit `b` remains free. The kernel
vector `(1,b)` is an actual d4 cycle, and its actual E5 class is zero
exactly when `!a && q`. Thus cases001/011 with nonzero extra incoming image
are retained and have their actual quotient consequence proved.

`actual_event` uses actual source and target `Endpoint` values at page4,
their exact coordinates and the independently interpreted known matrix
column. It proves the actual d4 equation, nonzero target, and actual target
boundary. `checked_and_actual` combines the complete finite family window,
the finite event, the full actual boundary equivalence and this actual
event. Actual endpoint traces are not synthesized from SQL row identifiers.

The mathematical interpretation hypotheses are intentionally visible:
whole-carrier coordinate meanings, whole differential meanings, actual
quotient correspondence, eta multiplication meaning, the actual prefix
cycle, the known event column, and actual endpoint coordinate identities.
None is discharged by parsing, hashes or C++ output. In particular eta
constrains the unknown column; it does not independently prove the stored
nonzero event column or choose either remaining bit.

## Verification

Run direct serial leaf compilation from `program/`:

```sh
python3 Row3151ActualTransport/compile.py Basic Transport
```

Both leaves compile with the pinned Lean4.32.2 toolchain. Current compile
records contain source/log/object hashes and actual return codes. There
are 13 printed theorem axiom reports, containing only the standard
`propext`, `Classical.choice`, and `Quot.sound` axioms. Historical failed
compile logs are preserved with a `failed-` filename and are not successful
evidence. No registered dependency is rebuilt by this command.

`frozen-source.json` records the completed source and imported-source hashes.
Later Lake object hashes may differ and must be recorded separately without
overwriting the historical direct compilation evidence. Existing
`Row3151FullNeighborhood`, its six finite branches and the shared
`AggregateD5Conditional` are unchanged.
