# Fact 7.6(1): constructed actual E6 class

This package connects the complete finite comparisons in
`NamedPageComparison.ConditionalHigherData` to an actual quotient trace for
the fixed E2 element in sphere bidegree (8,134). The named E2 vector is
`[true,false,false,true,false,false]`, staircase row 2702. Its constructed
coordinates have dimensions 6 -> 4 -> 2 -> 2 -> 2 on E2 through E6.
`Certificate.sound` proves that this same input has a nonzero actual E6
representative. `Certificate.nonboundaries` checks the complete incoming
images on pages 2, 3, 4 and 5.

## What is constructed

`Basic`, `Trace` and `Tactic` construct the main quotient trace from a
single initial additive chart and full local differential interpretations.
Every later chart and quotient formula is a theorem of the checked complete
homology comparison, including its injectivity, surjectivity and additive
law. Local zero and addition laws of the actual page identification are
explicit, since `CertifiedAdamsPages` by itself only identifies types.

`Row2858` derives the previously unknown whole d3 at (10,136). Both actual
E3 charts are constructed from complete E2 meanings. The actual differential
is transported to the finite quotient, where the existing g, h1 and h3
annihilator argument and complete detection theorem force the named image
to be zero. The complete source E3 has dimension one, so its whole d3 is
zero. The input consists of three full quotient Leibniz squares and their
zero laws; the desired zero map is not an input. `Binding` proves that
the transported quotient class has exactly the same E2 representative.
This matters because the complete target comparison and the product
comparison choose different valid quotient bases.

`Targets` constructs E3(17,141)=0 from its complete E2 complex. It follows
that the unknown row 3080 d3 is zero on its whole source. The next page at
(17,141) stays zero by the actual quotient equivalence. Together with the
derived row 2858 incoming map and the interpreted recorded maps at
(13,138), this constructs E5(13,138)=0. The d4 target E4(12,137)=0 is
constructed from its full E2 and E3 complexes. The actual d4 and d5 from
(8,134) therefore vanish without supplying their values as premises.

`Incoming` constructs empty incoming sources for the main d3 and d4.
For d5 it constructs E3 through E5 of the one-dimensional source (3,130).
`SourceTrace` proves that each named source is descended from E2 basis 2438,
monomial `1,1,69,2`, along the same actual quotient path. Its finite d3,
d4 and d5 cycle meanings remain explicit mathematical inputs. Row 2438 has
raw `NULL`, level 9986, and that future marker supplies no such proof.

`Assembly.Certificate` combines these constructions. Its d4 and d5
steps do not ask for the main outgoing map, and its main d3, d4 and d5
steps derive their complete incoming maps from the preceding source
constructions. The recorded main d3 outgoing map remains a full interpreted
map, with all four columns, including the two nonzero ones.

## Trust and remaining mathematical inputs

All 36 finite comparisons, raw database rows and E2 basis rows are retained
in `source.json`, with the source document and database SHA256. Hashes only
track consistency. The complete finite comparison certificates were
produced by the existing C++ page-transition exporter and are rechecked
by Lean; the C++ computation is not trusted.

Actual E2 basis interpretations, recorded differential meanings, the three
full quotient Leibniz squares, and local actual quotient zero/addition laws
remain mathematical premises. So do the named row 2438 finite d3/d4/d5
cycles. No original topological construction, unconditional paper theorem,
all-page permanence, or complete Step 4 result is claimed here. Raw unknown
rows 2858 and 3080 remain NULL9000; their zero differentials are derived by
the specified proofs, rather than by interpreting the marker as zero.

## Use and diagnostics

```lean
example (c : Certificate S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = named2) :
    ResultValid S pages initial input := by
  fact761_cert using c.prefix named binding
```

For `raw initial`, `fact761_cert using c.prefix` supplies the canonical
binding. A missing actual interpretation is a typed certificate field that
must be filled with a proof. A wrong goal triggers a diagnostic naming
`Fact761ConstructedActual.ResultValid`; a wrong input binding is rejected
by Lean. `Tests` rejects a forged incoming E5 boundary and an incorrect
raw vector, retains all three unknown markers, and checks incorrect-goal
and incorrect-input tactic failures.

## Reproduction

From the repository root, compile only this scope serially:

```text
python3 program/Fact761ConstructedActual/compile.py
python3 program/Fact761ConstructedActual/review.py
```

`modules.txt` lists the 11 modules in dependency order. `compile.py` retains
every attempt, including unsuccessful development attempts, separately in
`evidence/`. The current `*-compile.json` records must all report exit 0,
stable inputs and matching direct dependency hashes. Only the current
successful records are acceptance evidence. `review.json` records an
independent source snapshot replay, all-vector complete quotient checks,
both named traces and current axiom reports. No custom axiom, admitted
proof, native proof evaluator or implicit trust in C++ is used. The only
permitted kernel axiom reports are `propext`, `Classical.choice` and
`Quot.sound`.

The accepted replay checks 36 comparisons, 258 cycle vectors, 7,218
quotient pairs, 325 source rows across 108 queries, four main trace steps
and three incoming-source trace steps. The 11 successful modules produce
59 reports with standard axioms and one report with no axioms.
