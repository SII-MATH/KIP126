# Second constraint: database generator 8

The multiplier is S0 E2 basis42, monomial generator8, degree(4,18),
with stored d2 empty. It is exactly the generator8 used in Row2796Detector.
The local file/namespace suffix `f0` is only a label; the certified identity
is database generator8, not an independently proved naming convention.

Seven polynomial-ideal product witnesses and two full bilinear E3 quotient
certificates are generated. The named source product is already zero as
a reduced E2 polynomial (relation row14826), so `named_annihilated` needs
neither a source survival prefix nor a stored zero differential. Both
product tensors are explicitly matched to the actual generator8 matrices.

`kernel_fiber` proves, for every target quotient class, that its generator8
product vanishes if and only if its first complete E3 coordinate is false.
`two_candidate_restriction` combines this with the existing ordinary h2
constraint: only coordinates (0,0,1) and (0,1,1) remain. Its explicit
hypotheses are the existing h2 Leibniz square and row2866 differential value,
plus the generator8 local Leibniz square and zero-preservation of the product
differential. It does not require a new stored source differential, select
between the two candidates, or identify these finite quotients with Adams
pages without the existing semantic premises.

The exploratory search first found an apparent h4 constraint, which is
REJECTED: basis35 at(1,16) has d2 equal to local0, so h4 is not an E3 cycle.
`search.json` is preliminary matrix exploration only, not accepted product
certificates. `cycle-search.json` restricts multipliers to actual stored d2
cycles with t<=50,s<=12. It contains three detecting factors and39 unavailable
complete-d2 neighborhoods; unavailable records remain unavailable. No tested
valid factor detected the second remaining free coordinate. This bounded
search does not prove that no other detector exists.

Run `python3 Row2574Detector/Additional/export_f0.py`, then `prepare.py`
and `review.py` from program/. The review verifies database factor identity,
raw source product zero, all seven outputs, two deterministic certificate
hashes, and all eight target coordinate cases. Products_f0.lean and
Combined.lean passed direct `lake env lean -j1` compilation; the main theorem
audit contains only propext, Classical.choice and Quot.sound. No sorry,
new axiom, native_decide or C++ trust is introduced.
