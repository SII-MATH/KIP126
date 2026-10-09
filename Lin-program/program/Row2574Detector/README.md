# Row2574 ordinary h2 nonzero detector

Row2574 is the staircase record S0(6,132), base local E2 index0,
NULL differential at level9997. The E2 basis database id2574 is instead
local index1: the two id spaces must not be confused. The source used
here is E2 id2573. Its ordinary h2 product is S0(7,136) local0.
Staircase row2866 stores the latter's d3 value as local3 in S0(10,138).
The target of row2574 is S0(9,134), with full E3 quotient dimension3;
its h2 product target S0(10,138) has full E3 quotient dimension2.

`Products_h2.lean` proves all seven actual polynomial-ideal multiplication
columns using explicit relation witnesses. `ann.json` and `detect.json`
contain two full bilinear page-product certificates, with complete d2
comparisons, not partial source-cycle lists. `Quotient.lean` checks them
and defines multiplication on the actual cycle/boundary quotients.

`named_product` identifies the actual source product. `knownValue_nonzero`
checks that local3 is nonzero in the target quotient. `affine_fiber` proves
that an arbitrary target class has this h2 product if and only if its
third complete quotient coordinate is true. Thus precisely four of eight
quotient coordinate vectors remain: (0,0,1), (0,1,1), (1,0,1), (1,1,1).
`rejected_product_zero` checks the logged trial candidate local E2 index2
has zero product in the quotient (its raw E2 product is a d2 boundary).

`differential_restricted` assumes an all-class local h2 Leibniz square and
that the product differential takes the named source to the stored row2866
value. It concludes the affine constraint, nonzero source differential,
and exclusion of local index2. It does not assume or conclude that the
row2574 differential is zero and does not choose among the four remaining
classes. The row2866 differential and the local square remain explicit
mathematical premises requiring Adams interpretation; database and logs
are not proofs of them. Logs T2047477/2047478 only provide provenance for
the rejected trials and are preserved in `review.json`.

Reproduce data with `python3 Row2574Detector/export_h2.py`, then
`python3 Row2574Detector/prepare.py` from program/. `review.py` checks exact
source id conventions, both raw staircase records, seven product outputs,
byte-stable bilinear certificates, and all eight quotient coordinate cases.
Both Lean modules passed direct `lake env lean -j1` compilation, with
only propext, Classical.choice and Quot.sound in the main theorem audit.
No sorry, new axiom, native_decide, unknown-as-zero or C++ trust is used.
