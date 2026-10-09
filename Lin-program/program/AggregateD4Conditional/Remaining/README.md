# Remaining-event audit after conditional d4 integration

rank.py traverses the thirteen unresolved roots, subtracts only exact
already-certified conditional signatures, and streams matching proof rows
with record ordinal and physical ending line. Log text is provenance only.
row2574 impacts three roots; row2576 and row2925 impact two each.

search.py screens all95 S0 E2 basis factors with 0<t<=30 for ordinary E3
products on rows2576,2925,4306. Five factors are not d2 cycles. Row2576 has
five source-annihilating detectors, but their joint kernel remains the
nonzero vector(0,1). Row2925 has no detector in this range. Row4306 has35
unknown quotient inputs and55 factors that kill the target. No zero follows.
search_maps2576.py is only an E2 raw-residual screen; its 21 candidates
require proper quotient projection and are not verified E3 detectors.

search3325.py finds a promising full-quotient numerical candidate at row3325,
source(15,142),base2,NULL9000,target(18,144),E3dim3. Three ordinary factors
suffice numerically: basis3 generator1 degree(1,2), basis42 generator8
(4,18), basis72 generator13(4,24). Their source images vanish and target
maps jointly have zero kernel. These audit computations are not Lean
proofs; Row3325Detector is the separate formalization. The D log record
154115 is not used as mathematical evidence.
