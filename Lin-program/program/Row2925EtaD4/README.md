# Eta restriction on row2925 and the source of event3152

The previously numerical eta route now has actual polynomial certificates,
complete adjacent comparison matrices, and quotient-map proofs. It restricts
the unknown d4 column of staircase row2925 to `(b,0)`, where `b` remains
unknown, under the ordinary Adams multiplication meanings and Leibniz law.
The exact raw row remains `(2925,11,137,"1,2",NULL,9000)`.

## Concrete algebra

The source is S0 `(11,137)` and d4 target is S0 `(15,140)`. Eta has degree
`(1,2)`, so their products have degrees `(12,139)` and `(16,142)`.
Seventy certified eta product columns cover all six d2 neighborhoods needed
for both adjacent d3 squares. Twelve complete d2 comparisons and all six
chain maps give actual induced E3 maps. Four complete d3 comparisons and
both adjacent squares then give the actual E4 quotient maps.

The source combination E2 local1+local2, bases2924+2925, multiplies to literal
zero. It projects to E4 coordinate `(1,0)`. The target E4 quotient has two
coordinates, and multiplication by eta has the complete matrix `(0,1)`.
Thus a zero eta product detects exactly the second coordinate, not the whole
d4 value. `Naturality` proves this for all quotient classes.

The left Leibniz term is also checked, so no vanishing differential or
permanence of eta is assumed. The entire possible d4(eta) group at `(5,5)`
has a complete one-dimensional E4 comparison, represented by h0^5. Six
additional h0^5 product columns and both quotient product certificates show
that its product with every class in the source E4 space vanishes.
`LeftTerm.all_zero` quantifies over every possible left differential value.

`Restriction.from_full_leibniz` proves the second coordinate vanishes from
the full two-term ordinary Leibniz formula. It uses an actual zero product
and a checked vanishing left term, with no higher event as a premise.
`event3152_source_nonboundary` connects that restriction to the previously
proved four-column analysis: the named `(0,1)` source at `(15,140)` is a d4
boundary exactly when the second unknown bit is true. The two forbidden
branches are therefore excluded; the first bit remains free.

`Actual.lean` is the typed bridge to `CertifiedAdamsProduct`. It specifies
full multiplication meanings and faithful source/target product coordinates,
and uses the actual degree-transported Leibniz formula. Both its
`actual_second_coordinate_zero` and `actual_source_nonboundary` theorems
compile successfully without fixing the value of d4(eta).

`TwoBranches.lean` constructs both remaining finite quotient operators and
proves that each satisfies the whole ordinary Leibniz equation with arbitrary
left differential value. This checks that the retained assumptions do admit
both first-bit choices. It is a finite compatibility example, not a globally
realized Adams sequence.

`Links.lean` pins the original3152 E2 local2 representative to the second E4
coordinate and proves that the two relevant d3 comparisons agree exactly
with the aggregate. It separately proves every zero-row outgoing d3 matrix
vanishes, making the absence of a later-event dependency explicit.

## No circular use of event3152

The target E3 space of d3 out of `(15,140)` has dimension zero. Consequently
its full d3 outgoing matrix has zero rows independently of the later d5
value recorded for3152. The copied provenance retains a prefix-use record,
but that record contributes no bit to this zero-row matrix. The proof does
not use the value of d5 on3152, a source E5 nonboundary premise, or the desired
second-coordinate restriction as a multiplication hypothesis.

Earlier imported d3 values, polynomial relations, E2 basis completeness and
actual Adams multiplication meanings remain mathematical interpretation
obligations. This development does not resolve row2708, choose the remaining
first bit of row2925, complete the source's entire E5 trajectory, or add
event3152 to the shared95 accepted events. It supplies one concrete missing
constraint. Raw unknown values and the shared aggregate remain unchanged.

The d3 provenance retains the conditional row2796 `h3/d0` detector and
row2925 `Cnu/eta` detector, stored event rows2937 and3162, and the listed
prefix/boundary interpretations. `comparison-source.json` enumerates every
use by exact row and page; none is silently promoted to an unconditional
topological fact. In particular the h0^5 comparison is complete because its
d2/d3 target groups are zero, not because its raw NULL is read as zero.

## Reproduction and evidence

```sh
python3 program/Row2925EtaD4/export.py
python3 program/Row2925EtaD4/export_h05.py
python3 program/Row2925EtaD4/generate_comparison.py
python3 program/Row2925EtaD4/generate_product_semantics.py
python3 program/Row2925EtaD4/generate_h05_semantics.py
python3 program/Row2925EtaD4/prepare_products.py
python3 program/Row2925EtaD4/review.py
python3 program/Row2925EtaD4/compile.py
python3 program/Row2925EtaD4/assert_current.py
```

All generated files stay in this directory. The read-only SQL replay checks
each basis identity and polynomial reduction, all raw d2 matrices, all
complete comparison identities, both adjacent squares at each stage, the
whole eta target matrix, h0^5 annihilation and all four remaining branches.
It uses separate polynomial and F2 code from the producer. Compilation logs
and object hashes record actual runs; historical failures remain evidence
of development failures and are not successful theorem checks. Digests and
Python/C++ outputs are outside the Lean trust root.

All 12 Lean leaves have observed successful direct compiler exits and print
45 reports using only `propext`, `Classical.choice`, and `Quot.sound`.
`current-audit.json` checks current source, logs, inputs and standard axioms,
while reporting current-versus-direct object hashes separately. Supplemental
input identities preserve the original H05 and LeftTerm compilation records
without retroactively editing their metadata. The producer coverage-guard
regression regenerates 89 artifacts byte-identically.

`INDEPENDENT_REVIEW.md` and `independent-review.json` record a separate
read-only review of the first nine frozen leaves: all 76 polynomial columns,
80 relation reductions, 12+4 comparisons, 1,324 cycle pairs, 6+2 chain maps,
four remaining bit branches, and 36 standard-only axiom reports. That review
does not silently count subsequently added leaves as already reviewed.
