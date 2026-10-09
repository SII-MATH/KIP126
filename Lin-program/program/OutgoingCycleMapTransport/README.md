# Outgoing cycles from actual maps and incoming hits

This package supplies two all-page arguments for outgoing-only permanence.
It preserves the distinction in Fact 7.6(2): an outgoing permanent cycle may
be killed by an incoming d6 or d12. It does not assert that either hit occurs,
or prove the no-hit branch for the paper's class.

## Whole-map transport

`CycleMap s t` contains a map on every actual page, a map on every outgoing
target, zero preservation in those targets, the entire differential
naturality equation, and quotient advancement compatibility on cycles.
It contains no field asserting permanence of a named element. Identity and
composition are constructed. The following results hold for all pages:

- `at_naturality` identifies the recursively advanced image with the image
  of the same recursively advanced source element.
- `alwaysCycle` transports an outgoing permanent cycle along the map.
- `reflect_alwaysCycle` reflects it when every outgoing target map is
  injective. The proof derives the necessary source cycles inductively.
- `push_tail` transports a whole outgoing-map tail under full page
  surjectivity; `pull_tail` reflects such a tail under outgoing-target
  injectivity. Neither proof requires a vanishing incoming space.

`map_intersection` and `reflect_intersection` (in the package
namespace) connect these results to the existing full quotient realizations
of initial cycle filtrations and their Z-infinity intersection. The local
cycle-filtration preservation interface also gives direct intersection
transport. These are structural interfaces, not automatically constructed
topological spectrum maps.

## Incoming-hit branch

`zero_after_hit` uses the actual homology-zero law and differential laws
to prove that an actual incoming hit at index k makes every representative
at index n >= k+1 zero. `alwaysCycle_of_hit` combines this with cycles only
before k. The hit page itself is a cycle because incoming images are cycles.
No infinite tail hypothesis is required. `not_permanent_of_hit` proves that
the stronger nonboundary permanence predicate fails on this same branch.

`HitCertificate` packages a finite prefix, its whole actual meanings,
differential laws, and a proved actual incoming hit at the prefix length.
The executable part is the existing outgoing-prefix checker. Its strict
JSON importer, C++ exporter and diagnostics are reused through `assembleHit`;
no JSON flag can provide the actual hit or the meaning proofs. Batch
soundness quantifies over precisely the given request list.

```lean
example : OutgoingCycleCertificates.AlwaysCycle Examples.hitLater true := by
  outgoing_hit_cert using Examples.importedCertificate
```

`Fact762.cycle_of_hit` retains the original exact d2 comparison and named
vector. The allowed indices are k+2=6 or k+2=12, corresponding to Adams d6
or d12. Actual cycles at intervening pages and the actual incoming hit
remain premises. The result proves outgoing permanence, failure of strong
nonboundary permanence, and zero representatives on every subsequent page.
`intersection_of_allowed_hit` converts it to Z-infinity under a full actual
filtration realization. `cycle_of_structural_image` supplies the alternative
all-page image argument with the same exact initial naming constraint.

## Verification and remaining work

The five leaves are Basic, Hit, Filtration, Fact762 and Examples. Direct
compilation records source, dependency, imported-file, log and object hashes,
with observed exit codes. Failed development logs are preserved separately.
The six map-transport reports use no axioms; other reports use only the
standard Lean axioms `propext`, `Classical.choice`, and `Quot.sound`, or none.
No custom axiom, sorry, unsafe evaluation or C++ trust is introduced.

Independent finite models enumerate 1,024 five-stage actual systems and
3,072 two-stage natural maps. They check hit propagation, the same-input
trace, cycle transport and reflection, and whole-map tail push/pull.
Countermodels omit quotient compatibility or outgoing faithfulness. A
kernel-checked family also has an arbitrarily long valid finite prefix and
a later nonzero outgoing differential, so finite checks cannot fill the
remaining all-page gap.

```sh
python3 program/OutgoingCycleMapTransport/compile.py
python3 program/OutgoingCycleMapTransport/check_models.py
```

The unresolved paper mathematics includes the actual Adams realization,
intermediate finite pages on a selected hit branch, proof of a hit or an
all-page structural map argument, and outgoing permanence in the absence
of a hit. No sphere realization, incoming existence, convergence theorem,
unconditional Fact 7.6(2), or full Kervaire theorem is claimed.
