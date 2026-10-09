# Representative-square matrix certificates

This library checks a commuting square of finite elementary abelian 2-groups,
three extension witnesses modulo explicitly generated higher subgroups, stability
of either first edge, and stability of the final edge. It derives the fourth
extension by the proved `GeneralizedLeibnizAudit.square_transfer` theorem.

`Vector n` is an actual `AddCommGroup` with `n` bit coordinates and XOR addition;
`hom M` is its matrix `AddMonoidHom`. `higher H` is the entire image subgroup
of `hom H`, including all linear combinations. `Transfer D` means an actual
existential representative for `q : B -> D` has leading source `y` and leading
image `w`. The certificate does not contain this fourth witness or assume its
existence. A witness is constructed by the underlying theorem.

## Checks and format

Version 1 uses canonical, whitespace-free JSON. All vectors and matrices contain
JSON booleans. Matrices are flattened row-major. Parsing rejects duplicate,
unknown, noncanonical and ill-typed fields; decoding rejects wrong dimensions,
unknown branches and versions. Zero dimensions are supported, with empty arrays.
No unknown or null entry can become a zero bit.

`WireCertificate` fields: `version`, `data`, `firstRep`, `firstSource`,
`firstTarget`, `secondRep`, `secondSource`, `secondTarget`, `thirdRep`,
`thirdSource`, `thirdTarget`, `firstBranch`, `firstFactor`, `lastFactor`.
`data` is a `WireData` object with dimension fields `a,b,c,d,ha,hb,hc,hd`, maps
`f,p,q,g`, subgroup generators `higherA,higherB,higherC,higherD`, and points
`x,y,z,w`. The typed sizes are:

| Field | Rows | Columns |
| --- | --- | --- |
| f | b | a |
| p | c | a |
| q | d | b |
| g | d | c |
| higherA | a | ha |
| higherB | b | hb |
| higherC | c | hc |
| higherD | d | hd |
| firstFactor, branch f | hb | ha |
| firstFactor, branch p | hc | ha |
| lastFactor | hd | hc |

The first and second representatives have length `a`; the third has length `c`.
Their source/target preimages have lengths `ha/hb`, `ha/hc`, and `hc/hd`.
`firstBranch` is exactly `f` or `p`.

The checker verifies all basis columns of `q*f = g*p`. Each extension verifies
`H*source = rep+x` and `K*target = f(rep)+y`. The first factor satisfies either
`f*higherA = higherB*firstFactor` or
`p*higherA = higherC*firstFactor`; the last satisfies
`g*higherC = higherD*lastFactor`. These are full matrix equations, implying the
required properties on every vector. `check_sound`, `checkWire_sound`, and
`checkBatch_sound` prove the corresponding semantic conclusions.

## Use

```lean
import RepresentativeSquareCertificates.Import
open RepresentativeSquareCertificates

example (D : Data) (c : Certificate D) (h : check D c = true) : Transfer D :=
  check_sound D c h

-- For concrete D and c:
-- example : Transfer D := by representative_square_cert using c
-- def wire := representative_square_certificate% "path/to/certificate.json"
-- example : WireValid wire := by representative_square_cert using ()
```

`Examples.lean` contains concrete compiled tactic proofs for both first branches,
a nonzero composite and nonzero target leading class with proper nonzero higher
subgroups, strict decoding failures, semantic mutations, and a batch theorem.
Its one-dimensional counterexample proves that the other five conditions can
hold while the fourth extension is false if the last stability condition is
removed. The implemented checker rejects that certificate.

`diagnose` reports the first semantic failure, with stage and row/column or
extension-preimage row. `diagnoseWire` also reports named malformed fields;
`diagnoseBatch` adds a one-based record number. File elaboration constructs data
only; a tactic invokes the checker again through kernel reduction. External
files must be registered as build dependencies or regenerated into explicit
Lean data when they change.

The separate `RepresentativeSquareProducer` directory supplies deterministic
C++ witness search, canonical export, and batch/import regression fixtures.

## Scope and trust

The subgroup preservation tests are structural representative-stability
conditions. They are not the paper's no-crossing definitions. This library does
not prove Kervaire Theorem 6.1, build its synthetic/extension spectral sequences,
or identify its page classes and lambda powers with these finite cosets. The
exact paper/source audit and the remaining comparisons are documented in
`GeneralizedLeibnizAudit/README.md`.

The producer, hashes, JSON parser, diagnostics and elaborator are not trusted
mathematical oracles. The conclusions follow from the typed checker and its
proved soundness. There are no admitted proofs, added axioms, or native-decision
axioms. Direct audits allow only the standard `propext`, `Classical.choice`, and
`Quot.sound` dependencies.

Run serial direct verification with:

```sh
python3 program/RepresentativeSquareCertificates/compile.py
python3 program/RepresentativeSquareCertificates/review.py
python3 program/RepresentativeSquareCertificates/assert_current.py
```

The audit fingerprints source files, direct logs, and the actual compiled
objects. After a global Lake rebuild the direct object hash can differ; retain
the direct audit and record a separate Lake checkpoint instead of rewriting it.
