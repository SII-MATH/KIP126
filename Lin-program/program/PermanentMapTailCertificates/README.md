# Permanence from vanishing full maps

This extension replaces zero-space tail premises with proved equations for
the full actual incoming and outgoing differential maps. It is useful when
the incoming type has redundant encodings of zero, including the
`ActualAdamsSystemBridge.Incoming` sum type.

## Mathematical statement

`MapTail s cutoff` requires, for every `n >= cutoff`,
`s.incoming n y = s.zero n` for **all** actual incoming elements `y`, and
`s.outgoing n x = s.zeroOutgoing n` for **all** actual page elements `x`.
The spaces themselves may be nontrivial. These are proved Lean fields, not
Booleans read from a certificate file or assertions inferred from missing rows.

`tail_good` excludes incoming hits on a nonzero class. `tail_stability` then
uses the existing `System.homology_zero` law to preserve nonzeroness and good
representatives at all subsequent pages. `permanent_of_prefix` obtains the
initial tail nonzeroness from the last checked prefix page. The resulting
conclusion is the original strong `System.Permanent`, with both outgoing
cycle and no-incoming-boundary conditions on every page.

`OutgoingMapTail` retains only the full outgoing-map equations.
`alwaysCycle_of_prefix` derives `OutgoingCycleCertificates.AlwaysCycle`;
it does not exclude death by an incoming differential or assert nonzeroness.

`of_subsingleton` converts the older `TailVanishing` premise into `MapTail`:
the incoming conversion uses `System.incoming_zero`; the outgoing conversion
uses codomain subsingleton directly. No extra zero-preservation assumption is
needed for a map into a subsingleton codomain.

## Certificates, import, and tactics

`Certificate` and `CycleCertificate` carry the finite stages, actual
`PrefixMeaning` proofs, and the appropriate full-map tail proof. The strong
checker is exactly `PermanentCycleCertificates.checkPrefix`; its dimensions,
full comparison, cycle, and nonboundary checks are unchanged. The weaker
checker is exactly `OutgoingCycleCertificates.checkPrefix`.

```lean
theorem result : s.Permanent x := by
  permanent_map_cert using certificate

theorem outgoingOnly : OutgoingCycleCertificates.AlwaysCycle s x := by
  outgoing_map_cert using cycleCertificate
```

The tactics apply explicit soundness theorems and discharge finite checks
using kernel-checked reduction (`rfl` or `decide`). They do not install a
competing `CertificateVerifier` instance for goals already served by the
older certificate type. Both certificate families support batch checking and
batch soundness. `diagnose` and `diagnoseCycle` reuse the existing stage/page
failure messages.

`Import.lean` reuses the existing canonical `lin.permanent-prefix` and
`lin.outgoing-cycle-prefix` JSON formats, C++ exporters, strict Lean parsers,
and `permanent_prefix%` / `outgoing_prefix%` import syntax. `assemble` and
`assembleCycle` attach actual semantic and map-tail proofs to imported data.
No new wire format or unchecked source of mathematical premises is added.

## Validation

From the repository root:

```sh
python3 program/PermanentMapTailCertificates/compile.py
python3 program/PermanentMapTailCertificates/review.py
python3 program/PermanentMapTailCertificates/assert_current.py
```

The four leaves compile serially: `Basic`, `Certificate`, `Import`,
`Examples`. Nineteen printed theorem reports contain only standard Lean
axioms or no axioms. Compilation failures, if any, are retained separately;
only successful source/log records count as success evidence.

`Examples.lean` gives a full actual model with Boolean page, incoming, and
outgoing spaces and zero incoming/outgoing maps. Its complete finite
coordinates certify a nonzero permanent class. It also proves that the old
subsingleton-space tail condition cannot hold for this model. Single tactics,
both batch checks, and reuse of an imported canonical prefix compile.
A zero representative is rejected by the strong checker but accepted by the
outgoing-only checker. An incoming-death counterexample confirms that
outgoing-map tails alone do not prove strong permanence.

The review script checks successful source/log hashes and independently
enumerates finite Boolean systems satisfying the actual homology-zero law;
this finite replay supplements the general Lean proofs. An integrated Lake
build can replace historical direct `.olean` files without changing those
source/log records.

## Scope

No tail equation for a particular paper spectrum is manufactured here.
Actual coordinate meanings, complete differential maps, homology laws, and
infinite full-map tail equations remain explicit mathematical proof inputs.
The finite data format and C++ code are outside the trust root. This module
does not establish convergence or identify a stable homotopy group.
