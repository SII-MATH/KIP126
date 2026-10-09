# Row2916 whole-d4 continuation

The proved whole sphere row2916 d4 zero supplies the missing full incoming
column at `(17,140)`. The existing whole row3143 d4 zero supplies the full
outgoing column. These two rules produce three new complete finite
comparisons in each preserved branch:

- `(17,140), d4`, with complete one-dimensional incoming/current/outgoing
  spaces, both differential matrices zero, and identity homology coordinates;
- `(17,140), d5`, with zero-dimensional neighboring spaces;
- `(22,144), d5`, with zero-dimensional current and outgoing spaces.

| Branch | Previous | Added | Full family | Next named obstruction |
| --- | ---: | ---: | ---: | --- |
| zero_a0 | 1355 | 3 | 1358 | row2907 d4, target dimension 2 |
| zero_a1 | 1355 | 3 | 1358 | row2907 d4, target dimension 1 |
| residual_a0 | 1364 | 3 | 1367 | row2907 d4, target dimension 1 |
| residual_a1 | 1367 | 3 | 1370 | row2622 d5, target dimension 1 |

All four finite E2-to-E10 named trajectories are preserved, with the
same input `[true,true]` and output `[true]`. Every block is bound to its
object, bidegree and page by `Branches.trajectory_bound`. The named d10
comparison is still absent. All prior records, provenance, unknown values,
and the residual_a1 row2907 zero-target rebase are preserved exactly.

## Conditional actual semantics

`Actual.Input` contains the frozen `Row2916D4Search.Actual.Input` and its
whole quotient transition, the frozen row3143 rule inputs, full actual
outgoing-target E4 coordinates, source quotient additivity, and the local
E4/E5 zero law. Neither full d4 equation is an input field:

- `whole_incoming` derives all incoming values from the whole sphere
  row2916 theorem and the actual incoming-source equivalence;
- `whole_outgoing` derives all outgoing values from the whole row3143 theorem;
- `Input.whole` assembles complete actual homology coordinates;
- `Input.page5` constructs actual E5 coordinates from the quotient;
- `named5_coordinate` and `named5_nonzero` prove that the same row3143
  actual E4 element has a nonzero E5 quotient, without supplying E5 coordinates.

The inherited actual inputs still include complete Ceta top-cell d2
meanings, whole named product meanings, complete Ceta incoming d3 and
sphere d3 meanings, actual quotient transitions, local zero laws and d4
naturality. Row3143 also retains its known actual ss2149 d4, named factor
and product meanings, and complete actual source d3 interpretation.
None of those mathematical inputs is discharged by a raw label or hash.

The four finite branches remain available as historical conditional data.
`Branches.actual_selects_a0` invokes
`Row2907TargetProduct.Actual.parameter_zero` to prove `a=false` under its
full `TargetMeaning`, including the same nonzero-product witness and
actual quotient/product meanings. The row2994 residual parameter `r`
is not chosen. This package does not insert a row2907 nonzero column.

## Requests and tactics

```lean
import Fact713Row2916Continuation.Request
open Fact713Row2916Continuation
open Fact713Row3143Continuation.Constructed

example (r a : Bool) (P : Prefix10 S pages) :
    RequestedValid r a P ActualTraceRequestsE10.e10 := by
  fact713_row2916_cert using P

example (D : Actual.Input S T pages product action) : SourceSurvives D := by
  fact713_row2916_source_cert using D
```

The first tactic supports both single requests and batches through the
strict existing request schema: version 1, claim `fact-7.13:E10`, input
`[true,true]`, and output `[true]`. It proves family coherence, finite
trajectory binding and the actual E10 request for the supplied complete
`Prefix10`. It does not infer all actual neighboring meanings from family
coherence. The second tactic proves the newly constructed actual source
E5 result with the actual rule premises explicit.

Use `ActualTraceRequests.diagnose` or `diagnoseBatch` with
`ActualTraceRequestsE10.spec` for field/record failures. Use
`IndexedFamilyCertificates.diagnoseFamily` for finite-family failures.
The generic closed evaluator tactic is not an interface for a free actual
prefix. Negative request examples check incorrect input and output vectors.

## Reproduction and audit

`generate.py` retains exact anchored frozen generator logic, adds the two
whole d4 rules, and recomputes the full dependency graph. `package.py`
requires all four sets of new comparisons to agree exactly and emits
stable canonical JSON plus kernel-checked Lean finite leaves. Files in
`branches/` retain theorem provenance and raw NULL records; `wire/` uses
the strict existing version-1 full page-comparison schema. A schema's
hash is only a reproducibility check, never mathematical evidence.

```sh
python3 program/Fact713Row2916Continuation/generate.py
python3 program/Fact713Row2916Continuation/package.py
python3 program/Fact713Row2916Continuation/audit.py
python3 program/Fact713Row2916Continuation/reproduce.py
python3 program/Fact713Row2916Continuation/compile.py
python3 program/Fact713Row2916Continuation/freeze.py
```

The independent finite audit checks every matrix, chain-homotopy identity,
cycle-pair quotient criterion, preceding dimension, adjacent matrix, and
pair of family keys. It also checks exact previous provenance and all
new whole-column rule records. Small independently relabelled carrier
models test the same-input E4/E5 quotient and reject changed columns;
the universal actual proof is the Lean theorem. Direct Lean compilation
is serial, retains all attempts and their input hashes, and accepts only
successful stable-input attempts. Reproduction compares generated bytes.

This package proves finite checks and conditional actual transport. It
does not construct the actual Adams sequence from topology, prove every
old actual interpretation, or assert the unconditional Kervaire result.
Accepted proofs use no proof holes, custom axioms, native evaluator or
implicit trust in C++; the audit permits only the standard `propext`,
`Classical.choice`, and `Quot.sound`.
