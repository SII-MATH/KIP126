# Row 3143 d4 through a d0 product and differential square zero

`Actual.actual_row3143_d4_zero` proves the d4 vanishing of the actual E4
quotient of the named E3 class in degree `(17,140)`. It derives the named
E4 factorization from the E3 product and the actual multiplicative quotient
square. No row3143 d4 value or E4 factorization is assumed.

The raw ss row3143 has base `0`, hence names E2 basis row3141,
`8,1,280,1 = d0 * basis2030`. It does not name E2 basis row3143.
`Binding.lean` retains this distinction. All original NULL differential
fields are preserved.

## Corrected route

The proposed shortcut that the whole E3 product with the right d4 target
is zero is false. The E3 target `(17,125)` has representative E2 column 2,
not column 1. Column 1 is a d2 boundary. The product on column 2 has E3
coordinate 1. `Basic.right_product_nonzero` is a Lean proof of this
counterexample; `rejected-route.json` records its raw coordinates.

The implemented argument is:

1. The d3 targets of d0 `(7,20)` and the right factor `(16,124)` have
   complete zero-dimensional E3 quotients. Their actual meanings force
   both factors to be d3 cycles; their named product is the named E3 input.
2. At `(17,125)` and `(21,128)`, all four neighboring d3 spaces have
   complete zero-dimensional E3 quotients. `Descent.Prefix` constructs
   both one-dimensional E4 coordinate systems through actual d3 homology.
3. The recorded nonzero d4 at **ss row2149**, base `2`, maps E2 basis2150
   to E2 basis2277 (local target column 1). `KnownDifferential.recorded`
   is its explicit actual mathematical meaning. Its nonzero column and
   full one-dimensional domain imply that this whole d4 is injective.
4. `AdamsSpectralSequence.differentialSq` forces the preceding d4 from
   `(13,122)` to be zero. The other Leibniz term vanishes because d0's
   d4 target `(8,21)` has zero E3 and hence zero E4 by actual quotient
   surjectivity and the local zero law.
5. Leibniz gives zero d4 for every such E4 product. The actual product
   transition transports the named E3 factorization to E4 for the same
   input class.

The recorded d4 meaning is not inferred from a numeric level or CSV value.
`Binding.knownFromNamed` accepts an actual equation between the two named
quotient representatives. `Assembly.DetectorE2.known` further constructs
all six required E3 coordinate systems from complete actual E2 meanings,
then constructs their E4 quotients. No E3/E4 coordinate formula is assumed
by this assembly route.

## Artifacts

- `Data.lean`: 13 complete d2 comparisons, two full product tensors and
  four polynomial reduction certificates, all checked by Lean.
- `Basic.lean`: named finite product, explicit counterexample to the
  rejected shortcut, complete zero-quotient lemmas and d3 comparison.
- `Semantics.lean`: evaluation semantics for every tensor column and
  every right-factor vector, under explicitly vanishing ring relations.
- `Descent.lean`: complete d3 quotient construction, whole d4 injection
  from the known nonzero column, and propagation of an empty actual page.
- `Actual.lean`: actual factor cycles, named product, square-zero and
  Leibniz arguments, and the named row3143 d4 theorem.
- `Binding.lean`: raw row/basis associations and constructed quotient
  representatives for the recorded d4.
- `Assembly.lean`: six complete actual E2 inputs construct the detection
  coordinates and both E4 quotient coordinate systems.
- `Tactic.lean`: certificate, semantic result predicate, soundness and
  wrong-goal/zero-input negative checks.

## Tactic

```lean
example (C : Row3143D0Leibniz.Certificate S pages P)
    (input : (S.element 3 Row3143D0Leibniz.Actual.sourceDegree).carrier)
    (binding : C.meaning.source input = Row3143D0Leibniz.namedSource) :
    Row3143D0Leibniz.ResultValid C input := by
  row3143_d4_cert using C named binding
```

The result retains the exact named E3 input and asserts zero d4 of its E4
quotient. It does not assert nonboundary status or permanence of that
quotient. The tactic checks the goal head; Lean reports certificate and
binding mismatches at their source locations.

## Validation and limits

From the repository root:

```sh
python3 program/Row3143D0Leibniz/generate.py
python3 program/Row3143D0Leibniz/generate_semantics.py
python3 program/Row3143D0Leibniz/audit.py
python3 program/Row3143D0Leibniz/check_models.py
python3 program/Row3143D0Leibniz/compile.py
```

The raw audit checks 13 complete comparisons, 62 comparison vectors,
124 quotient pairs, four product columns, three relation reductions,
12 cycle-product pairs and 12 boundary-product pairs. The model checks
exhaust carrier labels in the square-zero argument and transport the
same input through multiplicative quotient squares. Regeneration is
byte-identical for 22 generated source and certificate files.

All eight modules have successful direct `lean -j1` records. Final axiom
reports contain only `propext`, `Classical.choice`, and `Quot.sound`, or
no axioms. No `sorry`, custom axiom, or native proof evaluator is used.
Earlier failed attempts remain in `evidence/`; only successful final
records constitute current proof evidence. Hashes establish provenance
and reproducibility, not mathematical correctness.

The actual E2 homology meanings, polynomial relation interpretations,
product meanings, local quotient laws, the explicitly known nonzero d4,
and the sphere interpretation remain mathematical caller inputs. The
assembly constructs subsequent coordinates from these meanings; it does
not prove them from the original topological objects or claim a complete
Kervaire formalization.
