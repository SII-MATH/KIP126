# Ctheta4 transport of sphere row2994 through E4

This package transports the same named Ctheta4 source to the sphere in
bidegree (17,138), proving its d3 and d4 vanish under explicit actual finite
prefix and map interpretations. The complete sphere d3 vanishing rules out
the residual parameter r=true in Row3136FamilyBranches. It does not prove
Ctheta4 realization or turn its future staircase markers into theorems.

## Correcting the map degree

The raw map database records suspension30. Its generator map, however,
sends the Ctheta4 top generator of degree (0,31) to the sphere unit (0,0).
The unique homogeneous shift is therefore31, as in category-inventory.
`Degrees.forced_suspension` proves this, and `reject_database_metadata`
rejects30. Every complete map wire uses31 and checks its actual source/target
degrees. The raw database remains unchanged and the conflict is retained.
The earlier historical `Fact713Ctheta4Certificates` package analyzed the
metadata30 degrees and established only a finite obstruction there. It is
not reused as a correctly graded map or as a theorem about the present source.

The correct source is Ctheta4(17,169), not (17,168). Staircase8810 has
base0,1,2, NULL9995. The specified E2 vector is the sum of bases8805,8806,8807,
whose top-cell coefficients are sphere bases2993,2994,2995. It maps to the
sphere E2 vector [1,1,1,0], staircase2994. This distinguishes basis IDs from
staircase IDs and fixes the source input before any quotient is taken.

## Complete finite certificates

- Eleven complete Ctheta4 d2 matrices,58 columns,44 module reductions.
  Ctheta4 has no raw d2 column. All columns are derived from coefficient d2,
  module Leibniz and the actual generator values: bottom d2=0 and top d2=h4²
  times bottom (raw staircase99 -> basis105). These are explicit mathematical
  inputs. `D2.differential_value` proves the expansion; `D2Links` binds every
  output to its matrix column and all incoming matrices.
- Sixteen complete E2 top-cell matrices,84 columns, no polynomial reductions.
  Bottom maps to0, top to1. Source/target polynomial expressions and matrix
  columns are all imported and checked.
- Fifteen complete homology comparisons, seven full commuting chain maps.
  Ctheta4(17,169) has E3=E4 dimension5. Its complete outgoing and incoming
  d3 matrices are zero under the specified finite source-prefix meaning.
- The source E3/E4 named vector is e4. The complete top-cell matrix on both
  pages is `[0,0,0,0,1]`, onto the one-dimensional sphere source.

The unresolved Ctheta4 d3 at target(21,172), ss9379, is retained in
`ctheta-search.json`. It is unnecessary here: actual naturality uses an
additive zero-preserving target map and does not assume complete later
coordinates at that target. No unknown target comparison is exported.

## Actual construction order

`Source.Stage2` supplies complete actual E2 homology meanings and the actual
E2 map equation. `Stage2.value3` is constructed from the specified raw source,
and `Stage2.named_image3` derives the sphere E3 name using the actual quotient
transition. At this point there is no sphere E4 input.

`Actual.sphere_d3_zero` uses the finite Ctheta4 d3 prefix and actual naturality
to prove the sphere named d3 is zero. `whole_d3_zero` extends this to the
entire actual one-dimensional page. `sphereMeaning3` and `Constructed.stage3`
then construct the complete sphere d3 meaning using that result, retaining
its full incoming source. Thus the sphere E4 comparison is used only after
its previously unknown outgoing value has been proved.

`Source.Prefix` identifies the E2/E3 page systems and constructs source and
sphere traces of the same raw input to E4. `Actual.sphere_d4_zero` transports
the finite d4 cycle of that constructed source; `result_sound` also proves
its E4 sphere image nonzero. `whole_d4_zero` extends the result to every actual
E4 element without requiring a new coordinate binding.

`Branches.residual_false` combines the whole d3 theorem with the arbitrary
complete incoming matrix `[false,r]` in the existing family and proves
r=false. It does not substitute a different branch's survivor list.

## Explicit mathematical inputs

The complete source d3 meaning includes the finite d3 cycles of rows8806,
8807,8808,8809,8810 in (17,169), and the incoming boundary at row8439.
Their NULL9964/NULL9995 raw markers are preserved and never themselves prove
these finite values. The later conclusion also needs the finite d4 cycle
of the same named row8810 source. `review.json` enumerates these conditions.
The sphere incoming row2841 is an explicitly interpreted boundary event.
All other imported d2, module relations, basis meanings, complete page
quotients, local zero laws and actual naturality remain mathematical inputs.
No topological source realization, all-page permanence or full Step4 result
is claimed by this package.

```lean
example (c : Constructed.Certificate C S) :
    c.transport.stage.input.nextMap c.transport.value4 ≠ 0 ∧
    S.differential 4 Source.sphereDegree
      (c.transport.stage.input.nextMap c.transport.value4) = 0 := by
  ctheta4_d4_cert using c
```

The wrapper accepts a completed `Source.Prefix`; `Constructed.stage3` is the
provided construction that derives the sphere d3 meaning from the source.

## Verification

All11 modules in `modules.txt` compile serially, with141 standard axiom
reports. Tests reject suspension30, a wrong raw source, a wrong d2 expansion,
and a false residual-zero equality. The independent replay checks58 d2
columns,84 map columns,15 complete comparisons,263 cycle vectors,10989
quotient pairs,626 map vectors,48 known staircase d2 values and four
same-input trace steps. No sorry, admit, custom axiom, native proof evaluator
or implicit trust in C++ is used. C++ produces finite comparison certificates;
Lean checks them. SHA256 tracks consistency, not mathematical correctness.

From the repository root:

```text
python3 program/Fact713Ctheta4Transport/search.py
python3 program/Fact713Ctheta4Transport/d2.py
python3 program/Fact713Ctheta4Transport/search.py
python3 program/Fact713Ctheta4Transport/maps.py
python3 program/Fact713Ctheta4Transport/package.py
python3 program/Fact713Ctheta4Transport/compile.py
python3 program/Fact713Ctheta4Transport/review.py
```

The producer explicitly labels the provisional sphere d3zero column
`to_be_derived_by_source_naturality`. Its justification is the preceding Lean
construction, not a database inference or the producer itself.
