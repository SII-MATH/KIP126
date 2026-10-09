# Independent review

No correctness findings in `Basic.lean`, `Examples.lean`, or the use of
`check_key_order_sound` in `Fact713ComparisonBatches/Imported.lean`.

The adjacent strict-order test is sufficient for uniqueness. The inductive
proof correctly extends `a < b` across the already ordered tail by
transitivity. Pairwise strict inequality gives distinct codes; a repeated
original key would repeat its code under any function. Thus the code does not
need to be globally injective. In particular, ignoring the object name or
clamping negative integers with `Int.toNat` cannot create a false acceptance.
Either can reject distinct keys, which is allowed by the one-way soundness
theorem. The test is an evaluation optimization, not a necessary condition for
unique keys; the examples and README explicitly preserve that distinction.

`independent-review.py` separately checks 97,656 natural-number lists of lengths
0 through 7 over five values, including the first failure index and an offset
failure index. It checks 110,565 list/encoding combinations using every map
from four keys to three codes and lists of length at most 5. All 801 accepted
combinations have unique original keys despite their globally noninjective
encodings. The 4,464 unique-but-rejected combinations confirm that the checker
does not implement the converse of its soundness theorem.

The exact 31 batch JSON files concatenate to the supplied family JSON and
match all 1234 saved comparisons. For the actual Imported encoding
`(page*256+(s+64).toNat)*256+t.toNat`, all 1233 adjacent comparisons are strictly
increasing. Codes range from 133710 to 487334 with minimum gap 1. Page values
range from 2 to 7, filtration coordinates from -54 to 72, and internal degrees
from 78 to 186. Thus neither natural conversion clamps a component in this
family, and both lower radix components lie below 256. Every object is `S0`.

The recorded direct compilations of Basic, Examples, and Imported all have
exit code zero. Current source, logs, and object files match their recorded
hashes. Six printed theorem reports contain only standard Lean axioms
`propext` and `Quot.sound`. This review does not rerun Lake or alter any Lean
source or registered dependency.

Uniqueness is the only conclusion of the new generic theorem. Matrix validity,
neighbor coherence, requested-window coverage and interpretations as actual
Adams data remain separate obligations. Finite enumeration supports this
review; the Lean proof supplies the unrestricted soundness statement.
