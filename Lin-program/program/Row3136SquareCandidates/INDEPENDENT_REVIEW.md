# Independent review

No correctness finding. The root used a separate integer-bitset
implementation to replay all four raw d2 complexes and sixteen local d3
quotient certificates. Source outgoing and target incoming matrices agree
in every branch, including the old row2994 residual incoming column.

All eight coefficient triples were enumerated independently. Square zero
accepts exactly `(0,0,0)`, `(0,1,0)`, `(1,0,0)` and `(1,1,1)` for `(u,a,b)`.
The final diagonal case is essential while u is unknown. The actual theorem
retains the whole target map meaning `[u,1]` and uses the actual
`differentialSq` law on every source element. No branch is chosen by a
database field or a finite checker.

The independent report is `independent-review.json`; reproduce with
`python3 program/Row3136SquareCandidates/independent_review.py`.
This review does not provide an actual sphere interpretation.
