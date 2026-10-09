# Row3564 from full quotient Leibniz semantics

The exact source row is `(3564,18,145,"1",NULL,9000)`, E2 basis3562,
monomial h1*x493. The factor x493 is E2 basis3393 at (17,143), stored in
staircase row3395 `(0,NULL,9992)`. Its d3-zero prefix is an explicit semantic
hypothesis; the NULL field is preserved and supplies no proof by itself.

The actual full product tensors are h1 times S0(17,143), h0^4 times
S0(17,143), and h1 times S0(20,145). All 11 polynomial columns have explicit
relation certificates (11 reduction steps total). Six complete d2 quotient
certificates and three bilinear descent certificates verify cycles and
boundaries on the entire input spaces, including linear combinations.
`ProductSemantics` connects every column to multiplication in an arbitrary
commutative characteristic-two ring satisfying the listed relations.

`Quotient.named_d3_zero` uses the full two-term quotient Leibniz law.
No assertion that d3(h1) vanishes is required: the whole possible target
E3(4,4) is represented by h0^4 and its product with x493 is zero, as checked
by the actual relation reduction. The other term vanishes by the supplied
x493 prefix. Thus the theorem concludes d3(h1*x493)=0 without using any
later event, software permanence marker or the desired event3992.

`Matches` connects the exact source/target outgoing and incoming matrices
to the accepted aggregate d2 data and connects E2 local1 to its actual
aggregate E3 coordinates. The aggregate basis uses coordinate1; this is
not confused with the separate local4 vector in the historical CSV event.

Five sequentially compiled modules are Products_h1, Products_h04,
Quotient, ProductSemantics and Matches. `review.py` independently checks
raw SQL, all polynomial reductions, all comparison laws, the full product
cycle/boundary laws and the named products. `assert_current.py` checks
successful compiler exits, source/log/olean fingerprints and seven printed
axiom reports (only propext, Classical.choice, Quot.sound).

```sh
python3 program/Row3564LeibnizDetector/export_h1.py
python3 program/Row3564LeibnizDetector/export_h04.py
python3 program/Row3564LeibnizDetector/prepare.py
python3 program/Row3564LeibnizDetector/generate_product_semantics.py
python3 program/Row3564LeibnizDetector/review.py
python3 program/Row3564LeibnizDetector/compile.py
python3 program/Row3564LeibnizDetector/assert_current.py
```

Imported ring relations, d2 matrices, x493 prefix and the Leibniz law still
need mathematical realization for an unconditional Adams theorem. C++
only generates witnesses; Lean proves their finite checker semantics.
