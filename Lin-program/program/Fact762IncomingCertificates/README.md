# Fact 7.6(2): all incoming pages

This directory audits the named S0 class recorded by staircase row 3080 at
`(s,t)=(14,139)`. Its E2 local coordinate is 1, basis ID 3080, monomial
`1,1,7,1,275,1` (h1 h4 x109,12). The database row has `diff=NULL` and level
9000; neither field supplies a differential or survival theorem.

Every possible nonnegative-filtration incoming page is listed below. The
source of d_r is `(14-r,140-r)`, with integer filtration in the tail argument.
The finite conclusions concern externally supplied full matrices and their
checked kernel/image quotients. They require actual page/basis, differential,
prefix and product interpretations before use as Adams spectral sequence
conclusions.

| r | Source (s,t) | Checked finite information / remaining obligation |
|---|---|---|
| 2 | (12,138) | Full raw d2 matrix does not hit the named E2 vector; `Data.page2_nonimage`. |
| 3 | (11,137) | Full E3 source dimension 2 and both outgoing columns zero; row2925 detector and stored row2926 prefix still need their mathematical interpretations. |
| 4 | (10,136) | E3 dimension 1. Complete E4 comparison blocked by incoming row2708 d3. Row2858 d4 is unknown. Full-source vanishing remains an explicit obligation. |
| 5 | (9,135) | Complete d2,d3,d4 comparisons; d4 is the 2 by 2 identity and E5 quotient is zero. |
| 6 | (8,134) | Complete prefix through E6, dimension 2. Row2702 d6 has NULL target. Retained as a possible exception. |
| 7 | (7,133) | Complete prefix through E5, dimension 1. Further complete comparison blocked by row2574. Row2632 level9982 is prefix metadata requiring semantics. Full-source vanishing remains an explicit obligation. |
| 8 | (6,132) | Full E3 source dimension 1. Existing h2 quotient Leibniz detector forces its d3 column nonzero. `Source8` proves zero kernel/quotient for that column, without choosing the unknown value. Requires full linear-column interpretation and zero propagation E4 to E8. |
| 9 | (5,131) | Full E3 quotient zero. Requires actual zero propagation E3 to E9. |
| 10 | (4,130) | Full E3 dimension 1; stored nonzero row2437 d3 gives E4 quotient zero. Requires actual zero propagation E4 to E10. |
| 11 | (3,129) | Full E3 quotient zero. Requires actual zero propagation E3 to E11. |
| 12 | (2,128) | Complete prefix through E6, dimension 1; later comparison blocked by row2574. Selected list at page12 is empty, but raw row2314 has level9993 and NULL target. No source-zero inference. Retained as a possible exception. |
| 13 | (1,127) | Empty full E2 basis within declared database window; finite coordinates Vec0. Requires full mathematical E2 basis realization and zero propagation. |
| 14 | (0,126) | Same as page13. |
| >14 | negative filtration | Requires actual nonnegative-filtration absence; an empty SQL query is insufficient. |

The target `(14,139)` has complete finite comparisons through E4, dimension
1. Its d4 comparison is blocked by a predecessor involving row2708. This
directory does not supply an actual target realization on all later pages.

## Lean interfaces

- `Data.lean`: finite full quotient-zero results for pages5,9,10,11;
  full d2 nonimage, full d3 zero map and named target projection;
  one-dimensional source8 zero kernel from an arbitrary nonzero column;
  Vec0 facts for pages13,14. The source8 quotient accepts an arbitrary
  incoming matrix and dimension. The actual incoming E3 dimension is 1.
- `Source8.lean`: invokes `Row2574Detector.Quotient.differential_restricted`
  using the existing full h2 quotient product and explicit known product
  differential/Leibniz hypotheses. The output is a zero quotient for the
  matrix whose column is the coordinates of the named differential. An
  arbitrary function `d` is not automatically linear. Identifying this
  whole matrix with the actual differential requires a full linear-column
  interpretation; the theorem does not infer it from one named value.
- `ZeroPropagation.lean`: `PageTower` explicitly requires that each next
  page is covered by current cycles and that zero maps to zero. Proves
  `zero_next`, `zero_later`, faithful coordinate transport, and no preimage
  of a nonzero target from a zero source.
- `Incoming.lean`: `IncomingSystem` describes full sources and targets on
  queried pages. The target carriers and named elements on different pages
  are not automatically related. `only_six_or_twelve` is a conditional
  assembly theorem requiring all-source vanishing at pages4 and7, actual
  source-zero realizations at pages5,8,9,10,11,13,14, nonnegative-filtration
  absence, and the existing page2/page3 exclusions. Target nonzero is an
  explicit parameter for the queried page only. No permanent-survival
  hypothesis is hidden in the system structure. `ProvedZeroSourcePage`
  names the set of pages whose finite zero arguments still need transport
  to actual sources; it does not assert that transport.
- `Tests.lean`: local Bool examples where page4 or page7 hits a nonzero
  target, showing why their vanishing cannot be assumed from the interface.
  These local examples do not claim to satisfy all other premises of the
  assembly theorem. Integer negative-filtration arithmetic is also checked.

## Source review and reproduction

Run from the repository root, with no simultaneous global Lake build:

```sh
python3 program/Fact762IncomingCertificates/audit.py
python3 program/Fact762IncomingCertificates/review.py
python3 program/Fact762IncomingCertificates/compile.py
python3 program/Fact762IncomingCertificates/assert_current.py
```

`audit.py` reads the raw SQLite database in read-only mode. It extends an
in-memory copy of the existing aggregate DAG and never changes the accepted
95-event dataset. `audit.json` records all 13 incoming source degrees, every
raw staircase row, selected-status information, failed pages and reasons,
51 complete comparisons (13 new), and source hashes. The selected statuses
are provenance diagnostics, not mathematical predicates.

`review.py` independently checks raw SQL degree contents and reconstructs
all full columns and selected basis representatives across a 123-comparison
predecessor closure. It checks all complete comparison matrix identities,
244 raw d2 columns, 69 higher columns and 58 cycle projections. Inherited
conditional detector columns remain explicitly listed with their source
metadata. Negative-degree dependencies remain explicit semantic obligations.
`review.json` records this arithmetic/source replay; Python is not trusted
as a Lean theorem prover.

`compile.py` runs the five modules sequentially with Lean4.32.2 and records
source/log/olean digests and exit codes in `compile-audit.json`. All five
modules pass. The 11 printed axiom reports contain only `propext`,
`Classical.choice`, `Quot.sound`, or no axioms. The finite theorems are
checked by Lean's kernel; no `sorry`, `native_decide`, custom axiom or C++
trust is introduced here. Digests verify artifact consistency only.

This is a complete incoming-page inventory with proved finite exclusions
and explicit conditional semantic interfaces. It is not a proof of
Fact7.6(2) from the original topological spectra: pages4/7, actual page and
column realizations, target meaning/nonzeroness, and the stated transition
and negative-filtration assumptions remain to be supplied.
