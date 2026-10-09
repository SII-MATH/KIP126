# Independent full graph review

The root review independently reconstructs the complete predecessor graph:
1420 nodes and 2763 edges from the ten named d2-d11 roots. All stored edges and
all typed requested keys agree. The actual family has 1272 distinct keys;
exactly 1269 occur in the graph, 151 requested keys are absent, and three family
keys lie outside. No correctness findings were found.

`independent_graph_review.py` checks the full family-key identity, every cached
numeric code together with its typed key, duplicate freedom, exact intersections
and differences, and all five graph-module successful compiler records. The
closed ordering checks reject any code collision in their actual domains;
the proofs never assume global injectivity of the code function.

The Lean proof uses a permutation-preserving fuel sort and a generic lemma to
transport the checked order to duplicate freedom. The fuel cannot discard
elements. Separating the generic proof from the large concrete lists resolves
elaboration cost without weakening the statements. Failed and interrupted
attempts remain preserved as failed evidence.

The parser accepted the canonical envelope and rejected duplicate fields,
unknown fields, a wrong version, and noncanonical whitespace. Parser execution
is diagnostic; the kernel proofs establish the finite mathematical claims.
No actual sphere or E12 conclusion follows from graph coverage alone.
