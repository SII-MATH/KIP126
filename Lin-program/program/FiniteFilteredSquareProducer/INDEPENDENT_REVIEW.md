# Independent C++ producer review

Root independently read the C++ implementation and checked its output against
a separate tuple-vector subgroup oracle which does not import the producer's
test code. `independent_review.py` records 10,610 inputs, 4,600 acceptances,
6,010 rejections, and 67 malformed physical-record recovery tests. Three
accepted cases require correcting the original fourth input to obtain a
cycle. The oracle checks the actual fourth cycle/quotient equation separately
after testing all hypotheses; it does not infer the conclusion solely from
the producer accepting the input.

No correctness finding was found. The source validates exact field sets,
Boolean bit vectors, dimensions bounded by 64, length `n <= m+l`, whole
commutativity, decreasing full filtrations and all four filtered maps. It
solves the three representative equations and the complete first/final
subgroup stability conditions. For `auto`, it deterministically chooses `f`
if available and otherwise `p`; an explicit unavailable side is rejected.
All indices have bounded sums, and the declared finite zero tail is explicit.

The independent input mutation tests cover maps and requested vectors as well
as both first-side choices. Strict parser tests cover embedded NUL, trailing
JSON, duplicate fields, leading-zero and noninteger version forms, every
bounded dimension/index, unknown values and numeric values in Boolean fields.
Bad records retain their physical line while subsequent valid records are
processed and the process reports failure overall.

The producer never proves a theorem. Its 863 regular output fixtures require
the separate Lean batch proof, and its dimension-64 output is not claimed
kernel-verified. The source-level Lean square checker review is in
`../FiniteFilteredSquareCertificates/INDEPENDENT_REVIEW.md`.
