# NULL targets 2696 and 2852

The two raw staircase rows do **not** assert nonzero outgoing differentials.
They record the next unresolved page. Neither SQL NULL nor levels 9993/9995
prove eventual death. Existing frozen inventories are preserved; their
`outgoing` labels must be read as a software-state classification until an
independently checked nonzero event and actual mathematical interpretation
are supplied.

| Staircase row | Raw state | Exact requested-page proof row | Meaning |
| --- | --- | --- | --- |
| 2696 | S0 `(9,134)`, local `3`, NULL, 9993 | 2422885, part3 physical line 935536 | Grey hint `d7[3]=?` |
| 2852 | S0 `(11,136)`, local `3`, NULL, 9995 | 2423248, part3 physical line 935913 | Grey hint `d5[3]=?` |

The audit scans all 2,672,275 records in the three pinned proof CSV files,
retains 11,998 relevant degree/info records, and then filters by the exact
S0 degree and source vector. There are 14/13 direct rows at the respective
degrees, and 3/5 with the exact source `3`. At the requested page the only
exact rows are the two NULL hints. No selected info statement contains the
exact outgoing `S0 (125,9) d_7[3]` or `S0 (125,11) d_5[3]` pattern. This is
a precise statement about the searched syntax, not a proof that no other
mathematical route exists.

## Source semantics

All paths in this paragraph are relative to
`upstream/release-source/SSeqCpp-master/`.

- `ss/main.h:20` sets `LEVEL_MAX=10000`; line 25 defines `NULL_DIFF={-1}`.
  `SerializeDiff` at line 1156 serializes this to SQL NULL, distinctly from
  the empty vector.
- `ss/ss.cpp:314` inserts an unknown target at level `10000-r`.
  Lines 321-324 handle a **zero** target by incrementing `r` and inserting
  NULL at the new level. Thus a proved zero d4 can create NULL level 9995,
  and a proved zero d6 can create NULL level 9993.
- `ss/staircase.cpp:126` prints an outgoing NULL as `d_r[x]=[?]`.
- `ss/mylog.cpp:55` inserts NULL log fields. `LogNullDiff` at line 219
  prints a grey hint, not a deduction; `LogGreyDiff` line 215 explicitly
  calls its analogous record "A hint of what is used".
- `ss/deduce.cpp:423` enumerates all `2^count` candidate vectors, including
  zero. Only one surviving candidate produces a deduction (line 444).
  Therefore an unresolved state cannot itself exclude zero.

`audit.json` pins each source file hash and the exact numbered excerpts.
Source-code behavior explains the data format; it is not a trusted Lean
mathematical rule.

## Earlier exclusions and zero records

For 2852, T153714/T153715/T153716 reject the d4 candidates `1,3`, `0`,
and `0,1,3` at physical lines 149556/149558/149560 in part1. Their info
fields record naturality/product contradictions. D153717 at line 149562
then records `d4[3]=[]`. This is exactly the zero-update case that can
leave a NULL d5 state. It supplies no nonzero d5 value.

For 2696, T153577 rejects a d3 candidate and D153578 at part1 line149299
records `d3[3]=[]`. Later depth-zero product info at proof2570083 refers
to `S0 (125,9) d_6[3]=[]`; this is a use of a zero d6, not a nonzero d7.
The later-page `x=2` records are different source vectors and cannot be
substituted for `x=3`.

`TryDiff` in `ss/deduce.cpp:332` creates a hypothetical node and pops it.
If no contradiction occurs, lines383-384 delete its logs; failed trials
can remain. Logging at positive depth deliberately omits many propagation
steps (`ss/mylog.cpp:156`). Chronological trial anchors are therefore only
context, not a reconstructed proof tree. The archived text is insufficient
to certify the full earlier contradiction derivations without additional
state/dependency interpretation. All records remain provenance.

## Current candidate window

Both unresolved targets have degree `(16,140)`. Reimplementing precisely
`CountPossDrTgt`, `GetFirstIndexOfFixedLevels`, `IsPossTgt`, and the ordered
staircase helpers on the pinned final database gives the same window:
indices `[2,3)`, the sole row3147 (local `4`, NULL, level9000).
The raw software candidates are therefore **zero and local4** for both
pages. Zero is retained. This is the current search window, not a replay of
the historical state and not a proof of the actual E5/E7 target basis.
In particular row3147 still requires its own whole-page differential and
quotient meaning.

## Effect on certificates

Earlier-page zero projections based on `r < 10000-level` remain compatible
with these source semantics. A checker must reject an event **at** the
unknown page until its target is supplied and mathematically interpreted.
No nonzero event is added by this audit, and no frozen aggregate or Lean
module is modified. The two records must not be counted as established
obstructions to a stem125 permanent class merely because their level is
above 9000. Distinguish pending outgoing states from nonzero outgoing events
in new reports. The parent review separately audits the accepted95 events.

## Reproduction

Run from `program/`:

```sh
python3 NullTargetProofAudit/scan.py
python3 NullTargetProofAudit/analyze.py
```

`scan.json` records full input hashes, physical line counts and record
counts. `matches.jsonl` retains raw fields and physical start/end lines.
`source2696.json` and `source2852.json` give exact direct records with
classification. `audit.json` contains raw database rows, precise source
excerpts, candidate enumeration, assertions and hashes. All hashes are
provenance checks only. No Lean axiom, admission, C++ trust, or newly
asserted Adams differential is introduced.
