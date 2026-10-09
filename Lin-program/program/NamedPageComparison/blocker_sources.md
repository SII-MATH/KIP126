# Sources of the higher-page blockers

This audit does not prove any differential. `trace_blockers.py` streams all
three pinned proof CSV files and retains every S0 event at the two exact
source bidegrees, with physical line numbers and file SHA256 hashes.

## Row2858: an explicit deduction exists, but needs proof replay

Staircase row2858 at(s,t)=(10,136), base2, level9000, diffNULL corresponds
to E2 basis local2/global2857, monomial `0,2,394,1` = h0^2*x_{126,8,3}.
The basis and staircase global row numbers differ and must not be confused.

`proofs-part1.csv` line148281, eventD153713, depth0, records d3[2]=[];
the empty TEXT output is an explicit zero, unlike NULL. It follows seven
depth1 hypothetical trials T153706--T153712 at lines148274--148280,
excluding outputs 0;1;0,1;2;0,2;1,2;0,1,2. Their claimed contradictions use
ordinary Leibniz with g at(4,24), h1 at(1,2), or h3 at(1,8), then nonmembership
of a residual in B2. These are candidate proof instructions, not trusted
facts. The products, earlier-boundary membership, completeness of candidate
coordinates, and factor d3-zero premises still need checking. All three
factor rows themselves have level9000/NULL in the final snapshot; the marker
cannot discharge their zero premises.

Later zero records N410954/r4 and N410960/r5 use map
CW_eta_nu__Q_CW_2_eta_nu; these are not proofs of the r3 statement.
No manual event occurs at this exact source in the pinned logs.

## Row3080: no exact r3 event found

At(s,t)=(14,139), local1/global3080, monomial `1,1,7,1,275,1` is
h1*h4*x_{109,12}. Its exact-degree events include G71862/r4,
N721503/r5 from Csigmasq__S0, and D2397126/r9 preceded by T2397125.
None is an exact r3 proof. G means a zero candidate space in the C++
deduction procedure (`ss/deduce.cpp:499`); it still needs a checked space
comparison. T is hypothetical; N requires checked naturality premises;
D is a deduction outcome that requires replay. No manual input is promoted.

The potential finite shortcut is that the d3 target(17,141) has zero d2
homology: its four E2 outgoing columns are [0,3],[],[3],[], and incoming
boundaries account for the two d2 cycles. An independently checked complete
comparison can prove that this target coordinate space is zero, forcing any
linear map into it to be zero. This does not identify a genuine Adams d3.
Until that explicit bridge is delivered the higher trajectory stays blocked.

No external/manual/hypothetical record is accepted as a theorem by this audit.
