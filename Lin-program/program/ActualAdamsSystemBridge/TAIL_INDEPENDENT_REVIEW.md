# Independent review of the incoming tail

No correctness findings in Tail.lean. The complete incoming type includes all
source bidegrees satisfying the actual Adams target equation, plus the explicit
zero summand. Since source filtration is natural, `filtration < r` makes every
nonzero-source summand impossible. The proof removes no valid source and leaves
exactly Unit. The incoming map then equals the actual zero via `zero_is_zero`.

The system index is exactly `r=n+2`; hence `filtration < cutoff+2` gives the
incoming tail for every `n>=cutoff`. The strict inequality matters: at equality,
source filtration zero remains possible. Independent finite enumeration checks
the offset and equality boundary. No outgoing zero or permanent-cycle claim is
made from the filtration bound alone.

The saved successful direct source/log hashes and four standard axiom reports
were independently checked. Replay code lives in the neighboring
PermanentMapTailCertificates/independent-review.py, which writes a separate
Tail-independent-review.json without altering implementation build evidence.
