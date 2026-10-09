# Whole row3143 d4 continuation and the same-input E10 trace

This package extends each frozen `Fact713Row2431Continuation` finite
family using `ActualRule.whole_d4_zero`. The theorem derives the whole
actual d4 from the row3143 named product theorem and complete constructed
one-dimensional actual E4 source coordinates. The complete source d3
comparison is checked against the previous family. Its all-element E3
coordinate agreement, quotient meaning, named product inputs and known
nonzero actual ss2149 d4 remain explicit hypotheses.

| Branch | Prior entries | Added | Complete family | Graph available | Missing |
| --- | ---: | ---: | ---: | ---: | ---: |
| Zero | 1333 | 17 | 1350 | 1347 | 73 |
| Residual, rebased | 1341 | 18 | 1359 | 1356 | 64 |

There are 18 distinct new wires. All previous wire and provenance records
are preserved exactly. Both named finite trajectories now contain d2
through d9 and end at the nonzero E10 coordinate `[true]` from the same
E2 coordinate `[true,true]`. Family checks include unique keys, matching
adjacent differential matrices, and consecutive page dimensions.

The new rule supplies the incoming d4 column at `(21,143)`. The complete
d4 comparison at source `(17,140)` is still absent: its incoming d4 from
row2916 at `(13,137)` is unresolved. A whole outgoing theorem is not a
certificate for that missing incoming map. Lean proves the missing key.
The d10 and d11 roots still require row3136 d3 at `(20,140)`, with target
dimension2. The row2994 split, named Cnu E3 cycle assumptions and all raw
NULLs remain in the inherited signature.

`Constructed.Prefix10` extends the checked `Fact713ConstructedE9.Prefix9`
of one actual spectral sequence. It constructs the E10 coordinates and
endpoint from the actual E9 quotient. `assemble` accepts complete empty
actual neighboring E9 spaces plus local zero and addition laws, and
derives the entire incoming and outgoing d9 equations. These actual
neighboring meanings are not inferred from the finite family alone.

The requested input and output are length checked and tied to the same
actual trace. The tactic also supports batches:

```lean
import Fact713Row3143Continuation.Request
open Fact713Row3143Continuation.Constructed

example (P : Prefix10 S pages) : RequestedValid P [true,true] [true] := by
  fact713_e10_cert using P
```

`diagnoseRequest` locates failures at `source.length`, `source`,
`output.length`, or `output`. Use `fact713_e10_cert` for a goal with a
free actual `Prefix10` parameter. The generic `lin_cert_diagnose` currently
requires a closed check and does not handle this parameterized goal.
Unsupported input or output vectors are rejected. This interface certifies the named request, not arbitrary
spectral-sequence computations.

All 11 Lean leaves are compiled serially with retained attempts in
`evidence/`. Current successful logs allow only Lean's standard
`propext`, `Classical.choice`, and `Quot.sound`. Historical failed logs
are retained and are not accepted proof evidence. No source uses `sorry`,
custom axioms, `native_decide`, or C++ trust. JSON hashes record provenance
and build inputs; they establish no mathematical conclusion.

```sh
python3 program/Fact713Row3143Continuation/generate.py
python3 program/Fact713Row3143Continuation/package.py
python3 program/Fact713Row3143Continuation/audit_branches.py
python3 program/Fact713Row3143Continuation/audit_families.py
python3 program/Fact713Row3143Continuation/audit_provenance.py
python3 program/Fact713Row3143Continuation/compile.py
python3 program/Fact713Row3143Continuation/audit_models.py
python3 program/Fact713Row3143Continuation/audit_source_bridge.py
python3 program/Fact713Row3143Continuation/reproduce.py
python3 program/Fact713Row3143Continuation/freeze.py
```

The model audit enumerates 73,728 carrier relabelings and 589,824
same-input quotient transitions, including relabelings where zero has a
nonzero label. It tests 465 requests and 216,225 ordered request pairs.
The source bridge audit separately checks all local E3/E4 source naming
relabelings and rejects a nonzero counterfeit d4 column. These independent
finite computations supplement the Lean proof. They do not prove that
the supplied actual interpretation hypotheses hold for the sphere.
