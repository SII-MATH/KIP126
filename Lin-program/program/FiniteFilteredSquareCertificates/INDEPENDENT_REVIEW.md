# Independent review of the finite filtered square

Root reviewed the frozen `Basic.lean`, `Import.lean` and `Examples.lean`
independently of their author. No mathematical soundness finding was found.
The three direct compile records have actual exit zero and nine standard
axiom reports. Root Lake integration and its axiom audit are separate evidence.

The four groups and their generator matrices share fixed dimensions and
filtrations in `Data`; the four maps have the correct source and target types.
Eight complete factor families prove decreasing filtrations and filteredness
for every input level. Above the explicitly specified depth, the proof uses
the zero subgroup, not an absent database record. Full matrix commutativity
is transported to every vector using the existing chain-map soundness theorem.

The four leading-membership checks are at `s`, `s+n`, `s+m`, and `s+m+l`.
The three extension witnesses use the corresponding higher-source and
higher-target subgroups. Their image witnesses imply membership of corrected
representatives in the actual cycle groups through `hasExtension_iff`.
Neither the original source nor the fourth input is assumed to be a cycle.
The fixture `corrected_requested` explicitly proves this distinction is
nonvacuous: its fourth raw image is outside the required target subgroup.

The first stability alternative is checked for the selected whole map `f`
or `p`; the final stability check applies to the entire higher subgroup for
`g`. Both are transported to the actual page-defined no-crossing predicates.
The checker verifies `n <= m+l` before invoking the algebraic square theorem.
Its output has filtration `s+n` and length `m+l-n`, whose target degree is
therefore exactly `s+m+l`. The result binds the fixed `y` and `w`.

The importer checks exact dimensions for every matrix, level list and vector,
requires a supported version and first branch, and compares canonical JSON
to reject duplicate and unknown fields. Physical lines are preserved.
Diagnostics are not used as proofs: `checkWire_sound` first obtains the exact
decoded pair and then applies the mathematical checker soundness theorem.
The independently fixed-input examples decode only witness data and cannot
change the mathematical input from the wire.

Remaining scope: C++ production and broader independent finite enumeration
are separate work. This constructs a concrete finite filtered square and its
actual quotient extension, not a topological or synthetic realization of
the paper's square or Theorem 6.1.
