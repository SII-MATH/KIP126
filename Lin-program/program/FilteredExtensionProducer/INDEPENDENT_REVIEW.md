# Independent C++ producer review

The frozen C++ producer passes review against an independent integer-bitset
image/coset oracle. `independent-review.py` checks 11,192 queries: all 8,192
scalar depth-three cases across source/length indices 0..3, and 3,000 random
dimension/generator/depth cases through dimension four. The observed 982
accepted and 10,210 rejected records exactly match the oracle. Every accepted
factor matrix and membership/correction equation is checked independently.
The review privately recompiles the current C++ source and obtains identical
stdout, stderr and exit status to the recorded executable.

The existing 604 input/output fixtures are independently checked and replay
byte-for-byte in three runs. Fifty malformed records test schema, sizes,
numeric and Boolean types, unknown markers, depth/byte limits, duplicate
fields, trailing JSON and NUL. Mixed streams retain exact physical error
lines and recover to the final valid record. Whitespace, CRLF and a final
record without LF are accepted by the query parser and emitted canonically.
Dimension-64 full-rank and rank-32 redundant matrices both pass explicit
witness checks; depth zero at `s=n=64` is also checked.

The whole-subgroup factors are solved columnwise and then verified as full
matrix equalities. The query's data and requested vectors are retained
exactly. Missing filtration levels mean zero by the explicit finite-depth
input definition, never by treating an unknown database value as zero.

There is a meaningful API boundary: this producer and
`FilteredExtensionCertificates.ResultValid` require the original input `x`
to lie in the cycle numerator, witnessed by `imageMember`. A noncycle `x`
which can be corrected is rejected at that field, as documented and tested.
The separately defined `FilteredExtensionSquare.HasExtension` permits such
an original representative. These predicates must not be conflated.

This review covers the C++ producer only; the checker receives a separate
independent review. It does not count the interrupted monolithic 604-record
Lean compilation as a successful build. Successful batch leaves must have
their own source/input/log/object records. The producer and this oracle
remain outside the Lean trust root. No production sources were changed.
