# Fact 7.13: complete E12 dependency search

This directory investigates every predecessor needed by the proposed
`survivesE12` conclusion at S0 `(s,t)=(9,132)`. It preserves the earlier
Fact713 and aggregate snapshots and does not claim a full E12 theorem.

## Complete dependency and NULL accounting

`search.py` independently reconstructs the full predecessor graph, opens
the pinned SQLite database read-only, and compares all 681 raw degrees
and 1420 comparison blocks with the earlier audit. It attempts every
block, even when another branch has failed. The original 358 aggregate
comparisons remain unchanged; 92 lie in this dependency graph.

The first snapshot has 1211 available finite comparisons and 209 blocked
comparisons. The 57 previously identified unknown row/page values divide
into five reused conditional source theorems, 13 complete finite zero
targets, 17 unresolved values with complete nonzero targets and 22 values
whose target predecessor is still blocked. Of the 13 zero targets, six
are already used by an available source comparison and seven await other
source dependencies. `search.json` gives every row, predecessor, affected
root, local use and historical source lead.

There are also 25 raw NULL row/page values classified by the old exporter
as stored earlier-zero prefixes. Thus the full raw NULL count is **82**,
not just 57. `NULL-obligations.json` retains all 82 and explains their
mathematical status. In particular, named row2569 has base `0,1`, NULL
differential and level9988. Its d3 through d11 zero-prefix interpretation
already describes the requested survival; it is not an independent Lean
proof of that survival. Actual trajectories or independent source theorems
must justify those nine steps. Other non-NULL data also need actual Adams
interpretation; hashes only identify the imported records.

The named E2 vector is the dense vector `[true,true]`, supported at local
indices `[0,1]`. It is not the dense vector `[false,true]`.

## New successor deductions

`frontier.py` enumerates all 130 local full-map assignments at the 20
minimal blocked comparison nodes, obtaining 85 complexes. It imposes the
complex law while preserving known imported and explicit conditional
columns. It does not select candidates to match the database's next-page
dimension. These are local choices, not a globally realized Adams family.

Two whole incoming maps are forced to zero by an injective successor:

| Unknown value | Target successor | Raw known target | Complete projected column |
| --- | --- | --- | --- |
| row2999, `(16,138)`, d4 | row3242, `(20,141)`, d4 | local1 in `(24,144)` | `[true,false]` |
| row3386, `(21,143)`, d3 | row3551, `(24,145)`, d3 | local0+local2 in `(27,147)` | `[true,false]` |

`Successor.incoming_zero` proves the general implication from actual
differential square zero, faithful middle coordinates, zero meanings and
the full successor-column equation. `SuccessorData` binds each application
to its exact checked matrix. The known successor equations still require
actual mathematical proofs; the SQL records do not supply them.

`successor_search.py` records a separate snapshot using exactly these two
additional conditional inputs. It has 1234 finite comparisons, an increase
of 23, with 186 still blocked. Its 57 unknowns comprise seven conditional
source deductions, 14 complete zero targets, 15 complete nonzero targets
with unresolved values and 21 blocked target predecessors. Row3386's zero
value does not close its own whole comparison because its incoming row3247
is still unknown. No additional unknown is guessed.

## Checked Lean subset

`Data.lean` imports 78 canonical JSON comparisons: the full predecessor
closure of the original 13 complete zero targets and the named d2/d3
prefix. `all_valid` proves every finite homology comparison by kernel
reduction. `ZeroTargets.lean` proves that every element of each of those
13 finite quotients is zero, and hence every function into that quotient
vanishes. Applying such a result to an actual Adams page still needs its
full quotient interpretation.

`Prefix.lean` checks the two-stage finite trajectory to E4, binds the
initial vector to the existing named expression interface, and records
the coordinate transition `[true,true] -> [true,false] -> [true]`.
The selected d3 zero column retains the row2569 actual-cycle obligation;
`stored_first_column_requires_cycle` exposes that condition explicitly.
This finite E4 theorem is not an independent proof of actual E4 survival.

`SuccessorData.lean` imports seven more comparisons needed by the two
successor applications. In total 85 distinct finite comparisons are
kernel checked in this small subset. The complete numerical search has
1234 comparisons; the remaining ones are independently checked by the
executable audit, and are not reported as new Lean theorems.

## Source theorem obligations

`audit.json` indexes the five reused conditional arguments: Ceta
naturality for row3076; the C2 successor argument for row3143; C2 prefix
meaning and naturality for row3005; the h0/h2 Leibniz argument for row2693;
and the DC2h6 naturality argument for row2695. Their hypotheses remain
explicit. Source lead IDs in the older CSV audit are locators only; the
historical `line` field is a record ordinal, not always a physical line.

The first missing dependency for the named d4 comparison is row2773 d3
at `(13,135)`. Later roots require the other unresolved values and target
predecessors listed in the two snapshots. The local searches and existing
source leads do not close them. The original E2/topological interpretation,
the named zero prefixes, the remaining unknown values and all higher-page
coherence must be proved before an actual E12 theorem can be obtained.

## Reproduction

From the repository root:

```sh
python3 program/Fact713E12Search/search.py
python3 program/Fact713E12Search/audit.py
python3 program/Fact713E12Search/frontier.py
python3 program/Fact713E12Search/generate.py
python3 program/Fact713E12Search/compile.py
python3 program/Fact713E12Search/successor_search.py
python3 program/Fact713E12Search/successor_audit.py
python3 program/Fact713E12Search/generate_successor.py
python3 program/Fact713E12Search/compile_successor.py
python3 program/Fact713E12Search/assert_current.py
```

All dependencies are prebuilt; both compilation scripts use serial
`lean -j1` only for their own new modules. Failed development attempts are
preserved in separately named logs; only current successful logs count.
The first audit checks 9296 cycle pairs and 914 shared differential maps;
the successor audit checks 9349 cycle pairs and 933 shared maps. Full
homotopy identities are checked on every input vector. No admitted proof,
custom axiom, `native_decide` or trust in the C++ producer is introduced.
