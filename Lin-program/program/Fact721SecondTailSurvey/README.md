# Candidate routes after the accepted E18 result

This directory is an untrusted read-only survey, not a Lean certificate
package. It creates no Lean source or compiled object. Existing accepted
proofs currently reach nonzero E18 and exclude all cumulative incoming
boundaries. Permanence still requires all later outgoing cycles.

For outgoing page r from `(12,134)`, the target is `(12+r,133+r)`.
The following are realizable candidate routes using complete earlier
neighborhoods; none has yet been formalized in this directory.

| Pages | Candidate target disappearance |
| --- | --- |
| 18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40,41,42,43 | E2 empty or complete d2 homology zero |
| 20 | row4253 nonzero d3 from one-dimensional E3 into `(35,155)` |
| 23 | row4492 nonzero d4; its source and target have complete E4 dimension one because both d3 neighborhoods vanish |
| 26 | row4495 d4 hits the full target `(38,159)`; both E4 charts have complete zero d3 neighborhoods |
| 29 | row4597 d3 removes one dimension of `(37,159)`; row4757 d4 hits the full target `(41,162)` |
| 32 | row5319 nonzero d4 into `(48,168)`; source and target have empty d3 neighborhoods |
| 35 | row5630 nonzero d3 from one-dimensional E3 into `(50,170)` |
| 38 | split the complete one-dimensional d3 map of `(50,171)`: a nonzero map gives E4 zero; a zero map constructs E4 dimension one, where recorded row5631 d4 hits it |

For page 38, the d3 target `(53,173)` has complete E3 dimension one.
The two-case route must construct the full actual d3 matrix from additive
coordinates and use the same raw representatives in the zero-map branch
when interpreting row5631. It must not assume row5973 or row6197 has a d3
zero prefix merely because of their future d4 event labels. This branch
construction remains work to do; the survey does not claim it is proved.

At pages 44 through 47, basis d2 fields are NULL although staircase rows
record d2 events/boundaries. The existing complete-d2 producer correctly
refuses these neighborhoods. One could build new complete matrices from
recorded staircase meanings, provided all coordinates, completeness, and
actual meanings are proved; copying a staircase label into a zero d2 field
would be unsound.

Pages 48 and 49 have one-dimensional E2 targets `(60,181)` and `(61,182)`
with rows7160 and7245 at NULL level9000. Their disappearance or the named
outgoing differential cannot be inferred from this record. These remain
substantive mathematical gaps. Pages 50 through 128 have empty target E2
bases inside the recorded `t_max = 261` window. Pages 129 onward exceed
that window and need a mathematical vanishing theorem, not a database
absence test.

`survey.json` retains exact rows, finite comparisons when available,
source metadata and a consistency hash. Run
`python3 program/Fact721SecondTailSurvey/survey.py` to reproduce the survey.
Its C++ comparisons are search evidence only until imported into Lean and
connected to the corresponding actual mathematical coordinate meanings.
