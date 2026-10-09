# Proposition 7.9 incoming dependency search

The input is the Cnu E2 class `h1 h4 x109,12[0]` at `(s,t)=(14,139)`,
global basis ID 4412 and local index 2 in dimension 4. Its staircase
representative is row 4411 with base `2`, raw `NULL`, level 9000. The basis
ID and staircase row ID are different namespaces.

`search.py` reads the pinned Cnu database and searches every incoming
source for pages 2 through 5. The minimal predecessor closure has 24
comparisons; 22 are available. The exact missing blocks are
`Cnu:14,139:d3` and `Cnu:14,139:d4`. The first has two unresolved columns:

| Role | Degree/page | Staircase row | Raw | Verified target dimension |
|---|---|---|---|---|
| Named outgoing | (14,139), d3 | 4411, base 2 | NULL, level 9000 | 2 |
| Incoming | (11,137), d3 | 4180, base 1,2 | NULL, level 9000 | 2 |

The direct d2 check succeeds. Direct d3 no-hit is unresolved at row 4180;
d4 and d5 additionally need the tracked target's earlier quotient. Their
complete source quotients are available: the d4 source has dimension zero,
and the d5 source has dimension one, represented by row 3994 (future d16,
raw NULL). That future-event prefix is an explicit interpretation
obligation, not proof from the database alone.

The optional stronger target d5 quotient closure has 36 comparisons,
31 available. It introduces another frontier `(23,146),d3`, with rows
5265, 5027 and 5028. This optional outgoing-target work is not silently
counted as necessary for no-hit through d5.

All available finite comparison wires are exported, and `Finite.lean`
checks all 31. Unknowns are never assigned zero because of level 9000.
The only numerical unknown elimination is a verified complete zero
codomain; the raw row and supporting quotient remain recorded. Standard
stored-event, incoming-boundary and future-event prefix uses retain their
separate actual differential interpretation obligations.

## Conditional resolution of the d3 incoming column

`bottom_inclusion.py` exports six complete coefficient matrices for the
bottom-cell inclusion `S0__Cnu`, 29 source columns and eight explicit
relation reductions. Four complete d2 quotients and both adjacent chain
squares identify the full induced E3 maps. The S0 quotients equal the
existing `Row2925Detector` quotients exactly.

The induced source map is `[[0,0],[1,0],[0,1]]`; its input `[1,1]` maps to
canonical Cnu coordinates `[0,1,1]`. `CoordinateBridge.lean` binds that
class to staircase coordinate `e1` and checks the coordinate change for
all classes. The named target is canonical `[0,1]`, or staircase `e0`.
The complete Cnu target quotient equals `CnuPageCertificates.wire`.

`Naturality.lean` transports the existing conditional S0 row 2925 d3-zero
result along the full bottom-cell map. `Actual.lean` proves the actual
Cnu differential of the named input is zero, given full coordinate
meanings, faithful maps, and the eta and bottom-cell naturality squares.
No desired differential value is a field of `Meaning`.
`MapSemantics.lean` interprets every checked coefficient matrix on arbitrary
vectors in modules satisfying the imported generator and relation meanings.

`Incoming.lean` accounts for all three incoming E3 basis columns: row 4179
with its boundary-zero premise, derived row 4180, and row 4181 with its
future-event prefix premise. Additivity and zero preservation extend these
three values to every source vector. `complete_no_hit` excludes the actual
finite quotient class `CnuPageCertificates.targetClass` from the image.
It does not assume the named target's outgoing d3 vanishes.

## Reproduction and boundaries

From the repository root:

```sh
python3 program/Prop79IncomingSearch/search.py
python3 program/Prop79IncomingSearch/bottom_inclusion.py
python3 program/Prop79IncomingSearch/compile.py
python3 program/Prop79IncomingSearch/audit.py
```

The numerical audit independently replays SQL, all polynomial reductions,
all full quotient identities, adjacent family identities, complete induced
maps and exact named coordinates using integer bit vectors. Two producer
runs were byte-identical across 45 data files. Compilation records preserve
actual failed attempts; only successful final records count as verification.

This package does not prove Proposition 7.9, a Cnu realization theorem,
target survival, or no-hit through all four pages without premises. The
named target's raw row 4411 remains unresolved. The new conditional incoming
theorem does not mutate `search.json` into an unconditional complete search.
The Proposition 7.8 synthetic detection and extension obstruction remain
outside this package. Hashes identify source bytes, never mathematical truth.
