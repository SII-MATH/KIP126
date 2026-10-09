# Supplemental coordinate bridge review

No correctness findings. The new `CoordinateBridge.lean` compiles successfully
and has six standard axiom reports. The supplemental script independently
checks the full coordinate maps on both quotient spaces, not just the named
column. Both changes are the swap `(a,b) -> (b,a)`, with the same inverse.
The named raw source maps from detector coordinate `(1,0)` to staircase
coordinate `(0,1)`; this selects the certified zero column 1 of the d3 matrix.

The actual-column theorem keeps the actual quotient meanings, the complete
d3 naturality equation, and the named-class identification explicit. It does
not promote the preserved raw NULL to a known value or prove actual E7
survival. `coordinate_bridge_review.py` records the exact final source and
compile hashes and also reruns the earlier independent raw-data review.
