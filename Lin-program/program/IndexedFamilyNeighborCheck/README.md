# Coherence using the two possible neighbors

`Basic.lean` proves the existing `IndexedFamilyCertificates.Coherent` using
only the differential target and the next-page key of each entry. The
complete matrix comparison is evaluated only after a matching key is found.
The existing `lookup` is a list search, so worst-case key comparisons remain
quadratic. This avoids the expensive all-pairs `PairCompatible` reduction
and permits separate small proof terms for each source entry.

`lookup_member` proves that `UniqueKeys family` forces lookup at any member's
key to return that member's exact wire. `adjacent_key` and `consecutive_key`
show that any relevant pair uses one of the two lookup keys. Consequently
`checkOne_sound` gives the full pairwise contract against every member.
The uniqueness premise is essential: a duplicate key could otherwise hide
a conflicting second neighbor behind the first lookup result.

`checker_sound` includes key validity and complete wire verification.
For large generated families, `coherent_of_entries` accepts existing
`UniqueKeys` and entry-validity proofs plus independently checked
`checkOne family entry = true` for every entry. No whole matrix comparison
or entry-validity requirement is weakened.

A missing neighbor imposes no compatibility equation, exactly as the
existing `PairCompatible` contract. It is not treated as zero. Requested
window completeness still needs `checkCoverage`; `window_sound` proves both
coherence and coverage. No actual Adams interpretation is inferred.

`Examples.lean` checks accepted and rejected next-page/differential matches,
negative degrees, invalid keys, duplicate guards, missing requested pages,
and equal-shaped but unequal matrices. It includes a duplicate-key example
where `checkOne` alone passes but the complete checker correctly rejects.
`diagnose` identifies the offending source entry or duplicate-key guard.

Compile the new leaves serially from `program/`:

```sh
python3 IndexedFamilyNeighborCheck/compile.py Basic Examples
```

Both recorded direct compilations return zero. Six axiom reports contain
only standard Lean axioms. `frozen-source.json` records source/log/object
hashes; failed historical compile logs remain separate. Old modules and
their registered instances are not modified.
