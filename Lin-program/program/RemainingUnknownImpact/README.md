# Shared impact of the14 remaining candidate DAGs

ranking.json ranks all unknown row/page records by the number of unresolved
zero-target candidates whose full predecessor DAG contains them. Counts
include already conditionally resolved row3076 and independently certified
zero-target rows; this is dependency impact, not a new unknown count.

Largest unresolved nonzero-target dependencies are row3147 d3 (7 candidate
DAGs), row3247 d3 (6), row3005 d3, row3143 d3 and row3386 d3 (4 each).
row2994 affects2; row3135 and row3136 each affect1. No exact independent
source was found for the two highest-impact rows in the earlier audit.

The selected next path is row3143 d3: actual C2-to-S0 map data and two
known subsequent C2 d3 columns yield an injective successor. The new
Fact713C2Row3143 module uses square-zero plus that injective successor,
then naturality. It does not assume the desired source zero. Its actual
Adams successor interpretation, square-zero, and naturality premises
remain explicit; the proof is conditional finite algebra.
