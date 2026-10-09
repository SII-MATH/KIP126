# Independent review

No correctness findings. The three accepted modules, source hashes and
compile evidence were checked without editing or recompiling a source.

For a block at `(object,r,s,t)`, the required preceding comparisons are
at page `r-1`, with centers `(s-r,t-r+1)`, `(s,t)`, and `(s+r,t+r-1)`.
The degree shift is the current differential's `r`, not `r-1`. Their
homology dimensions are respectively the current block's `n`, `m`, and
`k`. Integer degrees preserve negative auxiliary sources. Object names
and page numbers are part of the exact lookup key.

`checkPredecessors` and `PredecessorClosed` assert only this closure and
dimension property. `checkFamily` supplies uniqueness, valid comparison
matrices, valid keys, and compatibility of supplied overlapping maps.
`Valid` and `check` require both. The compiled missing-source example
correctly demonstrates that a coherent family need not be closed.
Because every family member is checked, required preceding blocks also
need their own predecessors until page two.

`diagnose` checks only predecessor closure. Its theorem matches
`checkPredecessors`, rather than the combined checker, and reports the
first failing family member with a one-based index, prioritizing incoming,
current, then outgoing. Thus a successful predecessor diagnosis alone
does not establish valid comparison matrices or unique keys.

The independent oracle tests distinct dimensions `(1,2,3)`, both object
names, positive and negative degrees, every missing predecessor, wrong
dimensions, changed object/page/degree keys, recursive closures through
page eight, and all eight diagnostic Boolean combinations. It also checks
that duplicate keys, invalid base-page keys, and malformed comparisons may
satisfy closure alone, demonstrating why the combined check is necessary.

An empty family is vacuously closed. A caller needing specific data must
also use the existing requested-key coverage check. Finite closure does
not prove an actual Adams realization or complete mathematical E2 meanings.

Run `python3 program/IndexedPredecessorClosure/independent_review.py` for
exact counts and accepted-source hashes in `independent-review.json`.
