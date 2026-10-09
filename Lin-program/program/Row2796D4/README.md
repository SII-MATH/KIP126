# Row2796 d4 input and detector audit

This is a reproducible source audit and prototype, not a registered Lean
proof or certificate of a d4 value. Run `python3 Row2796D4/audit.py` from
program. Only files in this directory are generated. Products_h3.lean and
Products_d0.lean are generated proposed relation proofs, not claimed compiled
theorems. The database and reused exact conditional generator are hashed.

After the conditional row2796 d3 zero and row2861 Csigma d3 zero, the complete
finite E4 comparison inputs have source (8,135) dimension2 and d4 target
(12,138) dimension1. Both multipliers h3 and generator8 have E4 dimension1.
The target is a different degree and quotient from the earlier d3 detector.

Three complete product quotient inputs remain blocked: h3 source product
(9,143) by incoming unknown row3283 at (6,141)d3; generator8 source product
(12,153) by outgoing unknown row4306d3; generator8 target product (16,156)
by incoming unknown row4364 at (13,154)d3. The h3 target product (13,146)
does have a complete finite E4 comparison of dimension2. No d3 compatibility
certificate for a full E4 product descent is claimed for the blocked inputs.

There is also an independent obstruction to this choice of detectors. The
one-dimensional E4 d4 target is represented by E2local3 at (12,138). Fresh
ordinary polynomial relation reductions give literally zero for both its
h3 product and its generator8 product, before any quotient. Consequently
these two multipliers cannot jointly reflect zero on this target, even if
the missing product comparisons and descent compatibility were supplied.
Reusing the E3 detection theorem would have the wrong target degree and
would be invalid. The audit gives no d4 zero, no global survival claim, and
no reduction of the aggregate unresolved event count.

## Alternative detector search

`search.py` screens all 95 ordinary S0 E2 basis factors with 0 < t <= 30,
without a filtration bound. There are 93 factors with both named source and
target products literally zero and two with nonzero source products; no
literal-source-zero, nonzero-target candidate remains. All these reductions
succeeded. This criterion does not search sources that become zero only
after taking a quotient.

`search_maps.py` screens all 70 configured maps/maps_v2 records from S0.
There are 25 target-zero cases, 24 source-nonzero cases, 20 unavailable
reductions or inputs, and one candidate. The unavailable cases are retained
with their reasons, not counted as zero. The candidate is maps_v2 ordinal25,
S0__CW_nu_eta_by_2, factor [6,1,0], shift (1,7). It sends the source to zero
using module relation12228, and the d4 target to E2local5 at (13,145) using
relation13591.

`map_e4.py` checks full comparison availability for this candidate. Its
target has a complete three-dimensional E4 quotient, and the image has E4
coordinates [0,1,0], with zero d3 image. Its factor quotient is complete
and one-dimensional. Its source product at (9,142) is blocked by unknown
row5232 d3. These numerical audits do not yet prove that the actual map
descends through d2 and d3, nor prove source annihilation on an actual E4
quotient. A semantic detector theorem therefore remains to be constructed;
no conditional d4 replacement is made here.

## Coverage correction and registered detector

`search-coverage-review.json` audits the existing search outputs against the
database coverage metadata without rerunning the numerical searches. The 95
ordinary factors have product degrees at most t=168, within S0 E2 t_max=261;
their literal E2 classifications have no coverage correction.

The historical configured-map counts above need one correction:
`S0__S0_by_theta5sq` requests t=263 and t=266, beyond S0 E2 t_max=261.
Its old `target_literal_zero` search status is conservatively changed to
unknown. Five additional maps request some out-of-window E2 data and were
already unknown. The coverage-corrected totals are 24 target-zero, 24
source-nonzero, 21 unknown, and one candidate. The historical JSON is retained;
the correction is recorded separately with exact degrees and source hashes.
Neither empty query results outside the declared window nor an empty factor
can justify a complete target-basis assertion there.

The sole candidate `S0__CW_nu_eta_by_2` is within coverage. The later registered
development in `Row2796D4Detector` has 12 actual matrices / 56 columns, all
inside E2 coverage. Its exact comparison dependency closure contains 8 S0
blocks and 5 CW_nu_eta blocks. S0 d2 centers reach t=140 (limit177), with E2
basis groups through t=141 (limit261); CW_nu_eta d2 centers reach t=147
(limit150), with E2 groups through t=148 (limit200). All complete d2 columns
in this closure were re-read and compared with the recorded matrices. No
registered detector input is affected by the search coverage error.

Unlike the earlier numerical prototype described above, that separate
development proves a finite conditional detector and handles unknown row5232
using the zero E3 map and arbitrary compatible source-target matrices. Its
local d4 naturality, preservation of zero, earlier conditional d3 inputs,
and topological interpretation remain explicit; this coverage audit adds no
mathematical theorem or unconditional d4 conclusion.
