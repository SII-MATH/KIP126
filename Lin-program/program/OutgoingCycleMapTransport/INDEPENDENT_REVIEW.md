# Root independent review

No correctness findings. The independent model checker enumerates all four
one-dimensional linear homology-step models, 256 four-step systems, and all
compatible two-stage linear maps. It checks zero after a hit, all outgoing
cycles from the checked preceding prefix, cycle transport and faithful
reflection. All 25 direct compiler reports use only standard axioms.

The Lean induction quantifies over every later stage; the finite model check
is an additional review, not the basis of the all-page proof. A genuine
incoming hit makes the representative zero at the next page. It establishes
outgoing-only AlwaysCycle when every earlier differential vanishes, and
explicitly contradicts strong nonboundary permanence. The paper's no-hit
branch and any actual incoming hit remain unproved.

Reproduce with `python3 program/OutgoingCycleMapTransport/independent_review.py`.
