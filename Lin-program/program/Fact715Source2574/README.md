# Fact 7.15: the source at (6,132) vanishes before d5

`Certificate.sound` proves that the entire actual incoming d5 map to
sphere degree (11,136) is zero. Its source at (6,132) has E3 dimension one
and E4 dimension zero, proved without choosing the missing source d3
value from the database. `Certificate.source_empty` proves every actual
E5 element of that source is zero, and `Certificate.no_boundary` excludes
d5 boundaries for every nonzero actual target.

## Detection and complete quotients

The surviving source has E2 basis ID 2573, monomial `368,1`. Its staircase
ID is 2574, base `0`, level 9997 and NULL differential. E2 basis 2574 is a
different class, `0,4,69,2`, which is an earlier d2 boundary. This distinction
is checked in `Finite.other_source_boundary`.

Multiplication by h2, E2 basis 7 at (1,4), sends the full two-dimensional
source to (7,136) by the matrix `[1,0]`. The second column reduces to zero
using the relation h0^3*h2=0. `Data` imports both polynomial reductions,
the complete d2 comparisons and the product certificate; `Semantics`
proves the full matrix equation in any characteristic-two commutative ring
whose valuation satisfies those relations. `Finite.descended_product`
checks every input pair after the complete boundary quotients.

The product is E2 basis/staircase 2866 and supports the recorded
d3[0]=[3]. Its target representative is E2 basis 3025 at (10,138),
staircase 3023. The complete target d2 quotient has dimension two and
sends that representative to e1, which is nonzero. The h2 d3 target at
(4,6) is already empty on E2, so h2 is an actual d3 cycle.

`Actual.Stage2` constructs all E3 charts from complete actual E2 meanings.
The complete E3 multiplication equation is derived using the actual
multiplicative quotient transition. `Recorded` constructs both sides of
the recorded product differential from their exact E2 inputs and retains
their quotient traces. `recordedKnown` derives the interpreted nonzero
product map from that equation.

If the surviving source supported zero d3, the actual Leibniz law would
make the product's d3 zero, contradicting its checked nonzero target.
`named_d3_nonzero` proves this contradiction. Since the source E3 is
one-dimensional, `cycle_is_zero` proves that every actual d3 cycle there
is zero. `Vanishing` then uses the actual quotient equivalence to construct
the zero E4 and E5 charts. No outgoing column for the unknown source d3
is guessed or imported.

## Inputs and limits

Complete actual E2 basis/d2 meanings, the full E2 product interpretation,
the multiplicative quotient transition, local quotient zero laws, and the
recorded ss2866 differential remain mathematical inputs. That recorded
equation is explicitly bound to the constructed E2-to-E3 representatives;
an unexplained nonzero-source assumption is never requested. The raw
source NULL9997 marker is preserved, and no finite prefix is inferred
from it. The conclusion is conditional on these actual interpretations;
original topological realization is outside this package.

The two deduction events 2047477 and 2047478 in `source.json` are retained
as provenance, not used as proof. They suggested the h2 detector. C++
produces finite comparison and product certificates; Lean rechecks them.
SHA256 tracks only source consistency. No admitted proof, custom axiom,
native proof evaluator or implicit C++ trust is used.

## Use and verification

```lean
example (c : Certificate S pages P) : ResultValid S := by
  source2574_cert using c
```

The tactic requires the exact whole incoming-map goal; incorrect goals
report its expected name and degree. Certificate fields identify missing
mathematical interpretations by type. Tests also distinguish the named
source from its earlier boundary and the known nonzero target from an
earlier target boundary.

```text
python3 program/Fact715Source2574/generate.py
python3 program/Fact715Source2574/compile.py
python3 program/Fact715Source2574/review.py
```

The eight modules in `modules.txt` compile serially. Every development
attempt is retained in `evidence/`; only the current successful records
are acceptance evidence. `review.py` independently checks the raw rows,
all d2 columns, complete quotient identities, polynomial reductions and
the full product, and exhausts small linear detector models to verify
that a nonzero product image excludes a zero source map.

The accepted run checks five complete comparisons, 17 cycle vectors,
89 quotient pairs, 12 d2 columns, two product columns and eight input
pairs. It exhausts 585 finite detector models, of which 125 satisfy the
specified nonzero product equation; each has zero source kernel. All
eight modules compile with 58 standard-axiom reports and one report with
no axioms. The allowed standard axioms are `propext`, `Classical.choice`
and `Quot.sound`.
