# Row3147 product-detector obstruction

The successor d3 leaves the line represented by e1+e2 in S0(19,142).
Four natural multipliers h0,h1,h3,g all annihilate this line in the actual
finite d2 quotient. The requested source e4 at(16,140) is also annihilated,
so local Leibniz squares for these products cannot separate the remaining
line from zero. No all-class compatibility-to-zero theorem is asserted.

Products_h0/h1/h3/g.lean check36 actual polynomial-ideal product columns.
Obstruction.lean checks8 complete target d2 comparisons and the projected
zero values for all eight relevant product vectors. All five modules
passed direct Lean -j1 compilation. These facts explain why these four
candidate detectors fail; they are not a proof that every possible map or
product fails, and no full quotient multiplication descent is claimed by
this obstruction module.

search_more.py scans175 d2-cycle basis factors with 0<t<=50 and s<=12.
Eighty-six have complete comparison data and all kill the line;89 stop
because a required imported d2 is unknown. No nonzero detector is found.
The broader scan is a Python source audit, not a batch of Lean theorems;
more-detectors.json preserves the89 failures. Unknown d2 is never zeroed.

Reproduce with the four export scripts, search.py, search_more.py and
generate_obstruction.py. All files are independent of existing families.
Register Row3147Detector.Obstruction. No sorry, new axiom, native_decide,
source-zero premise or topology claim is introduced. A different map,
cofiber constraint, higher product or independently proved incoming-image
exclusion is still required to close row3147 structurally.
