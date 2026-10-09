# Conditional CW_2_eta aggregate extension

This extends the complete `AggregateC2D4Conditional` snapshot with the exact
row2929 d3 argument from `Row2929Detector`. It adds one complete comparison,
`S0:13,139:d3`, whose first incoming column comes from row2929 at S0(10,137).
All 337 previous blocks remain identical; there are now 338 complete blocks.

The new kind `conditional_cw_2_eta` retains the raw unknown record
`[2929,"3",null,9000]`. Its source is the exact E2 local3 class. The aggregate
orders its three source E3 basis vectors as local3, local2+local4, local4;
the detector orders them local2, local3, local4. `CW2Eta.source_coordinates`
proves the complete basis change `[[0,1,0],[1,0,0],[1,0,1]]`, and the named
source is the first aggregate coordinate. The one-dimensional target
comparison agrees exactly with the detector.

`CW2Eta.matched` connects the actual first incoming column to the quotient
differential under the detector's explicit CW_2_eta naturality and
zero-preservation hypotheses. It does not reinterpret the other two stored
columns or claim the entire source outgoing comparison is complete.

All 101 known events are processed. The accepted total remains 90 finite
nonzero events, with 11 unresolved. Event3391 advances beyond row2929 but
now requires `S0:9,136:d4`, unknown row2861 with target dimension1. The
previous row2861 d3 argument is not reused as a d4 proof. No 91st event
certificate is generated.

The event generator requires every earlier source/target representative to
be a cycle with nonzero quotient projection before accepting the final
nonzero differential. `review.py` independently verifies all 338 full
comparison identities, unchanged old blocks, the exact override role,
source basis change, all 90 accepted events and all 90 prior stages,
deterministic generation, and preservation of the new unresolved d4.

From the repository root with no concurrent root Lean build:

```sh
python3 program/AggregateCW2EtaConditional/events.py
python3 program/AggregateCW2EtaConditional/review.py
python3 program/AggregateCW2EtaConditional/compile.py
python3 program/AggregateCW2EtaConditional/assert_current.py
```

The module order is Basic, Data, Events, Matches. Source/data/log/olean
fingerprints and actual compile exits are recorded. Imported finite
presentations and earlier conditional interpretations still need their
mathematical interpretation as actual Adams data. No `sorry`, native
evaluation shortcut, custom axiom, or C++ trust is introduced.

All four modules pass the direct serial build. The current-build assertion
checks exact module coverage and all fingerprints; the 18 printed axiom
reports contain only the documented standard Lean axioms. Independent
deterministic and complete-trajectory reviews also pass after compilation.
