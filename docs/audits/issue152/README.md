# Issue #152 feasibility exploration (2026-10-06)

## Actual-object replay exploration

The current objective is to generate proofs about the fixed sphere Adams
spectral sequence, not only proofs about a database or its quotient algebra.
Record 152098 is the first nontrivial replay target: the retained trial 152097
assumes `d4(h0^2 h3 h5) = e0 g`, multiplies by h1 and obtains a contradiction
because the resulting target `h0^3 x_{38,6}` is not in the earlier boundary
space. This row is **not yet certified** on the actual fixed sphere.

### Mathematical rules proved

- `Def/SpectralSequence/Computation/State/Proofs.lean` proves actual
  quotient zero iff boundary membership, uniqueness of continuations,
  `RepresentsOnPage.eq_zero_iff_isBoundaryBy`, and assembly of a zero
  differential from actual coverage and refutation.
- `LinProgram/Interpretation/Branch/Proofs.lean` proves soundness of the
  existing candidate-elimination, exhaustion and contextual-refutation
  predicates. The equations in these predicates concern the actual internal
  differential. The rules do not infer coverage from retained log rows.
- `Def/ClassicalAdams/MilnorCohomology/Hi/Proofs.lean` proves standard h_i
  nonzero on the actual sphere E2, from the cobar quotient and its canonical
  comparison, with explicit generic foundation arguments.
- `LinProgram/Certificates/H1.lean` proves exhaustion of the fixed quotient's
  (1,2) component directly from generator degrees, without assuming a CSV
  basis. `Interface/Solution/LinProgram/H1.lean` then proves that the image of
  dataH1 under any supplied `LinE2Presentation` is the actual standard h1.

The generic rules, primitive-class nonvanishing and data exhaustion have only
`propext`, `Classical.choice`, `Quot.sound`. The fixed h1 application and the
older row5432 below still inherit `sorryAx` from the existing fixed model;
no new axiom or admitted theorem is introduced. `LinReplayRules` and
`LinH1Producer` audit these distinctions and reject forbidden consumer imports.

### Mechanical prototype and measured scope

`KIP126/LinProgram/Translate/replay-lowstem.py` resolves the pinned LFS inputs
also in a Git worktree, verifies the canonical raw manifest, selects a retained
trial for a closed zero deduction, parses the supported single Leibniz
contradiction, and searches the archived relations for both product witnesses.
It emits Lean polynomial identities and JSON evidence. No row-specific
monomial or reduction path is hardcoded. Both 152098 and 152095 use this script.

Without `--certificate-only`, the script exits 2: it refuses to claim an
actual `DifferentialStatement` while mathematical obligations are unresolved.
Certificate-only success is deliberately narrower than row certification.
Seeds, trial rows, missing records, unsupported diagnostics, inconsistent
pages/degrees, and nonzero multiplier differentials are rejected.

Initial baseline measurements: 2.67 million log rows scanned in 4.5 seconds;
146,663 prior rows indexed in 0.73 seconds; 212 low-degree relations and 617
monomial-divisibility checks found the two product witnesses in about 0.10
seconds (including local data indexing). Full input loading/hashing plus
certificate generation took about 2.8 seconds; Lean checked the two witnesses
in about 2.2 seconds. These are local certificate timings, not a complete
mathematical replay benchmark. Worktree reruns benefit from cached file reads.
An intentionally changed target was rejected by Lean.

### Remaining mathematical roots

`automatic-replay/dependency-roots.json` stores 23 exact log records and local
CSV evidence, explicitly labeled as research, not completed proofs.

1. Seed 5487: `d2(x_{38,6}) = h0^3 x_{37,5}`. The existing literature
   `adamsOneLine_d2` is about h_j and does not supply this differential. A
   bottom-level algorithm certificate or independent mathematical proof is
   still needed.
2. Source continuation: historical rows 97918 -> 97919 -> 97921 pass through
   C2h6/Ctheta5 and identify `h3 h5`; multiplying by h0^2 gives the source.
   The degree argument and actual object/map comparisons need certification.
   A direct C2h6 top-cell map may bypass the intermediate Ctheta5, but is not
   yet constructed here.
3. Actual E4 multiplication and Leibniz: current long-layer pairing theorems
   require compatibility and relative-boundary proofs. There is no existing
   fixed E4 sphere instance. Assuming `RelativeBoundaryFormula` merely
   restates the missing law and is not a solution.
4. Exhaustive coordinates and actual earlier boundaries: raw basis slices
   and a program's boundary span cannot replace proofs of spanning,
   independence, page passage and equality with the actual boundary space.

The historical z/e0g cycle chains can potentially be bypassed: a candidate
actual differential itself supplies the needed page representatives. The new
zero/boundary theorem explains precisely why the contradiction then needs
actual nonmembership in B3. This does not discharge that nonmembership.
Zero-byte local RP3_6 and Ctheta5 basis files were observed during ancestry
research; they are missing local data, never evidence that those groups vanish.

Issue #152 remains open. No complete row152098 theorem, new Challenge2 field,
new project axiom, or Blueprint completion status is generated.

### Reproduction

With the pinned toolchain and dependencies available:

```sh
lake build KIP126.Checks.ClassicalAdams.LinReplayRules
lake build KIP126.Checks.ClassicalAdams.LinH1Producer
lake build KIP126.Checks.ClassicalAdams.LinLowStemProducer
python KIP126/LinProgram/Translate/test-replay-lowstem.py
python KIP126/LinProgram/Translate/replay-lowstem.py --row 152098 \
  --certificate-only --output-dir /tmp/issue152-certificates
lake env lean /tmp/issue152-certificates/GeneratedProductWitnesses.lean
```

Validation in the exploration worktree used the exact pinned Lean binary and
an isolated compilation overlay with already-built dependencies. All three
imported declaration audits and both generated algebra examples were checked.
The Python regression suite checks the separation between local certificates
and missing actual-row obligations.

## Earlier vanishing-line producer slice

`KIP126/Interface/Solution/LinProgram/Differentials.lean:row5432` proves the
exact `Challenge2.DifferentialStatement` of database record 5432, conditional
on an explicit `LiteratureInterface` and `LinE2Presentation`. The source is
CSV coordinate 0 at (5,14), and the page-two target at (7,15) is zero.
The only literature result used in its body is the existing `sphereVanishing`
field: 0 < 15 - 7 = 8 < 2*7 - 3 = 11. Its provenance remains the existing
Ravenel Theorem 3.4.5(a) entry in `docs/external-inputs.json`; applicability to
the fixed tower is still a literature-production obligation.

This is a producer-side derivation of one existing computation obligation,
not an assertion of the database's correctness. It uses neither Main's
`axiom challenge2`, the `sphereTable_sound` being constructed, the admitted
`basisTable_correct`, nor the aggregate Interface producer. No new boundary
field, project axiom, or admitted proof was added.

The source coordinate is independently checked against the original CSV
parser. `BasisCatalogue` proves parser success and preservation of membership;
`BasisCatalogue/Archive` certifies all 24 original chunks via small kernel
leaves and proved composition. This does not certify a mathematical basis.
`LowStem.ph1Row_mem` and `LowStem.ph1_value` establish the exact row membership
and value in the data quotient. The row theorem then transports that source
through the supplied comparison and uses actual sphere target vanishing.
It does not assert source nonvanishing or permanence.

Dependency audit results:

- Independent parser/source certificates and the generic zero-target lemma:
  `propext`, `Classical.choice`, `Quot.sound` only.
- Full fixed-model `row5432`:
  `propext`, `sorryAx`, `Classical.choice`, `Quot.sound`.
  The fixed Def model itself has admitted construction dependencies. The
  producer audit rejects axioms beyond that model's existing set and rejects
  Main imports and admitted aggregate/basis producers. The result is not an
  axiom-free or fully completed proof of the project's final mathematical model.

`Checks/ClassicalAdams/LinLowStemProducer.lean` checks exact database lookup,
independent-certificate axioms, producer imports and model-relative axioms.
It also checks that a changed local coordinate is rejected by the raw-line
certificate tool. The verification target is:

```sh
lake build KIP126.Checks.ClassicalAdams.LinLowStemProducer
```

Challenge2's aggregate construction and bulk `sphereTable_sound` remain
unfinished. #152 is still open; no Blueprint completion status or canonical
external-input entry was changed. The standalone cobar probes below are
historical exploratory examples and did not supply this row proof.

## Next mathematical slice

Close the roots of the nontrivial 152098 replay above. Extending the earlier
vanishing-line pattern to more rows does not establish database derivation
replay. Completed metadata and polynomial certificates must stay distinct
from actual Interface deliveries.

## Evidence checked

- Read [issue #152](https://github.com/SII-MATH/KIP126/issues/152); the initial inventory preceded later comments.
- Opened the full database read-only from its local Git LFS object. Verified
  SHA-256 `3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248`.
- Verified the basis CSV hash
  `6a337964ad3ac02b729a46fd839dced7cb6764d14d4cea413163987eba8de871`.
- Queried S0 records with depth = 0 and raw stem <= 20: 15 rows, of which
  11 are accepted by the existing finite-page differential classifier.
  Three permanence-sentinel rows and one unsupported-reason row are excluded.
- `low-stem-rows.json` records all 15 raw rows, classifier outcomes and
  source/target CSV basis rows. It records data, not proof completion.

## Concrete candidates

| DB id | Normalized (s,t), page | Recorded mathematical equation | Assessment |
| --- | --- | --- | --- |
| 5432 | (5,14), 2 | d₂(Ph₁) = 0 | First zero-target candidate; target (7,15) has no CSV basis rows. |
| 5435 | (5,16), 2 | d₂(Ph₂) = 0 | Same pattern; target (7,17) has no CSV basis rows. |
| 5441 | (7,23), 2 | d₂(Pc₀) = 0 | Same pattern; target (9,24) has no CSV basis rows. |
| 5443 | (9,26), 2 | d₂(P²h₁) = 0 | Same pattern; target (11,27) has no CSV basis rows. |
| 5445 | (9,28), 2 | d₂(P²h₂) = 0 | Same pattern; target (11,29) has no CSV basis rows. |
| 5434 | (1,16), 2 | d₂(h₄) = h₀h₃² | Existing `LiteratureResults.adamsOneLine_d2` at j=4 supplies the standard-class equation; coordinate/label identification is still required. |
| 5437 | (4,21), 2 | d₂(e₀) = h₁²d₀ | Needs an independent seed or derivation; reason `d2` is not a proof. |
| 5439 | (4,22), 2 | d₂([f₀]) = h₀²e₀ | Same limitation. Source has a second basis vector, so index 0 must be preserved. |
| 245131 | (2,17), 3 | d₃(h₀h₄) = h₀d₀ | Record info names Ceta__S0; a replay following that route needs its comparison and naturality premises. |
| 245124 | (3,18), 3 | d₃(h₀²h₄) = h₀²d₀ | Record info names CW_eta_nu__Q_CW_2_eta_nu; those objects alone do not supply a proof. |
| 141198 | (1,16), 5 | Empty source coordinates, target h₀²d₀ | Inverse GI record, not evidence of a nonzero differential from zero; the target can represent zero on that later page. Needs boundary semantics, not a fresh seed. |

Class names above are decoded from generator names and basis monomials. They
are recorded labels, not proved identifications with standard sphere classes.
String `"0"` is basis index zero, whereas `""` is the zero coordinate vector.
Inverse-row normalization changes the source degree; e.g. 141198 has raw
stem 14 but normalized source stem 15.

## What is already genuinely proved

`KIP126/LinProgram/Model/Classes/Proofs.lean` proves three small relations in
the CSV-defined quotient (h₀h₁=0, h₁h₂=0, h₁³=h₀²h₂). These use defining-ideal
membership and do not establish that the quotient is the sphere E₂ page.
The separate `coordinateCheck_sound` and `basisTable_correct` remain admitted.
The bulk differential consumer projects `sphereTable_sound` from Challenge2;
using it in an Interface producer would be circular.

`LowCobarProbe.lean` adds two hand-written exploration certificates directly
against the existing Milnor polynomial differential:

- d(ξ₂) = [ξ₁² | ξ₁].
- d(ξ₁³ + ξ₂) = [ξ₁ | ξ₁²].

Lean 4.32.2 accepts both. Their collected axiom sets are exactly
`propext`, `Classical.choice`, `Quot.sound`. The file also contains an
allowlist audit that rejects any other axiom. These raw polynomial identities
are a useful boundary-certificate pattern, but are not normalized cohomology
quotient proofs, sphere-class comparisons or database-row certificates.
A negative check changing the first target exponent from 2 to 3 was rejected.

## Initial implementation options (before the producer slice above)

1. Start with row 5434 for a literature-backed nonzero differential, keeping
   the existing correlated literature delivery explicit. Prove both CSV class
   identifications and the exact `DifferentialStatement` for the same
   presentation. Do not import Main's Challenge2 consumer axiom.
2. In parallel as a mathematical route (not a new interface field), start with
   row 5432 for target vanishing. Prove the local (7,15) quotient component is
   zero from actual ideal-membership certificates, or certify cobar homology
   vanishing. Transport this through the bounded sphere comparison once that
   comparison is available. An empty CSV list is insufficient.
3. Package reusable lemmas for zero targets, proved seed instantiation, linear
   combinations and explicit boundary witnesses. The generator selects a
   theorem and supplies checkable certificates; it never asserts a log reason.
4. Accept only closed, known-coordinate, in-range rows supported by those
   lemmas. Emit explicit unsupported outcomes for other rows and missing
   premises. Check the final theorem type against the exact decoded record;
   audit its transitive axioms and require Lean to reject altered certificates.
5. Only then attempt product rules or naturality. Permanent survival requires
   incoming-boundary exclusion and nonzero witnesses in addition to lifts;
   it cannot be inferred from a 999 sentinel.

The first two steps require mathematics that is currently unfinished. A local
prototype can expose the comparison and prior literature as explicit,
tracked hypotheses, but must report the result as conditional. Constructing
the full Interface delivery remains a separate unfinished obligation.

## Computational size warning

Low stem alone does not imply a small cobar calculation. Counting normalized
Milnor words by positive slot weight gives dimensions of C^(s-1,t), C^(s,t),
C^(s+1,t) as follows (counts only; no rank or vanishing proof):

| Target (s,t) | Cochain dimensions |
| --- | --- |
| (7,15) | 13,748 / 16,023 / 13,984 |
| (7,17) | 46,398 / 67,340 / 74,656 |
| (9,24) | 7,437,320 / 11,972,574 / 15,772,400 |
| (11,27) | 116,242,550 / 156,792,460 / 178,549,484 |
| (11,29) | 392,873,260 / 599,683,810 / 776,710,932 |

These are computed from the Milnor polynomial generator weights 1,3,7,15,...
and nonempty tensor slots. They argue for sparse certificates, reusable
vanishing results or a smaller resolution, rather than naive dense matrices.

## Reproduce the Lean probe

After building the imported module with the repository's pinned toolchain:

```sh
lake env lean docs/audits/issue152/LowCobarProbe.lean
```

In this desktop sandbox the Lean launcher cannot locate its executable;
validation used the same installed 4.32.2 binary outside the sandbox with
`LEAN_PATH` pointing at the current project and dependency build directories.
No toolchain was installed and no existing user edits were overwritten.
