# Constructing the named actual E8 endpoint

`Basic.lean` extends `Fact713ConstructedNamed.Prefix7` by the complete d7
comparison at `(9,132)`. `Trace.lean` proves `Prefix8.named_E8`: the fixed E2
vector `(1,1)` advances through the same actual Adams system and its actual
homology identifications to a nonzero E8 element with coordinate `(1)`.
Neither the endpoint nor the tracked E3-E8 coordinates are inputs.

The inputs remain substantial: the initial additive E2 coordinate equivalence,
complete neighboring source and target coordinates, the entire differential
equations at d2-d7, and local zero/addition laws for each actual quotient
identification. The theorem does not construct the sphere's Adams spectral
sequence, discharge those meanings, or establish Fact 7.13 at E12.

The final finite comparison is the frozen
`Fact713Row2994Branches.Data.b_S0_9_132_d7`: dimensions `(n,m,k,h)=(0,1,1,1)`,
zero outgoing map, zero-dimensional full incoming source, and identity quotient
coordinates. This certificate can be shared by the two separately checked
row-2994 branches; its acceptance alone does not choose either branch or prove
its actual meaning. The original unknown row remains unknown.

All four modules passed direct Lean compilation (process exit 0), with fifteen axiom
reports using only `propext`, `Classical.choice`, and `Quot.sound`. Direct logs
and source/object hashes are preserved by `compile.py`; a later full Lake
build is recorded separately.

```sh
python3 program/Fact713ConstructedE8/compile.py
```

`Branches.lean` binds the identical d7 wire and finite trajectory to each
separately coherent candidate family. It combines that finite fact with the
conditional actual E8 theorem; it asserts no actual realization of either family.

`Request.lean` binds caller-specified vector lists to the actual initial point
and actual E8 endpoint. It rejects changed vectors and incorrect lengths,
provides field diagnostics and supports batches. The actual interpretation is
still a required Lean term, not external data accepted on trust.

```lean
import Fact713ConstructedE8.Request
open Fact713ConstructedE8
example (P : Prefix8 S pages) : RequestedValid P [true,true] [true] := by
  fact713_e8_cert using P
```

Four negative tactic cases verify that changed input/output coordinates and
extra coordinates fail. `checkRequest_sound` and `checkRequests_sound` connect
the executable request checks to the actual trace theorem. An initial generic
`tactic` attempt with open interpretation parameters failed elaboration; its
failed log is retained, and the dedicated tactic uses the closed finite check.
