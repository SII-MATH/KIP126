# Independent source, quotient, tensor and actual-signature review

No correctness findings. `independent_review.py` opens the pinned SQL
database directly and uses its own polynomial and matrix arithmetic.
It does not import the producer or run a source generator.

All six complete d2 neighborhoods match their raw SQL rows and declared
coverage. The review checks 31 vectors, 165 cycle pairs, and every quotient
decomposition. Both product tensors match all six raw polynomial columns;
the two reduction steps use exact source relations of the correct degree.
All 32 tensor inputs, cycle/boundary products and 72 pairs of equivalent
quotient representatives are checked.

The source row naming is precise: staircase row3135 has base1, the global
E2 basis row3135. The right factor is E2 basis3065, whereas the known d3
event is staircase row3066 with base1 and differential local1. That target
is E2 basis3236. Its class is nonzero in the full two-dimensional right
target quotient, and its product with h0 is zero. The source product names
the correct row3135 class. None of these statements confuses a global row
identifier with a local coordinate.

The actual theorem retains full source/right product meanings and injective
source/target interpretations. It first identifies the supplied source
element with the actual product, derives the h0 differential from the entire
zero left target, then uses the explicitly supplied known nonzero right
differential and the proved zero target product in Leibniz. There is no
row3135 differential premise. The known right differential's actual
interpretation remains a mathematical input; SQL does not prove it.

The review also checks all 55,296 independent finite carrier relabelings
and 221,184 proposed source differentials. The known right differential
remains nonzero and Leibniz accepts only the zero source differential in
every model. These tests support the source review and do not replace the
Lean proof.

All four latest direct compilation records have actual exit code zero and
matching source/log hashes. Their axiom reports contain only standard Lean
axioms. Earlier failed Actual iterations remain preserved by the producer.
The review does not modify or compile any of the four Lean source modules.
