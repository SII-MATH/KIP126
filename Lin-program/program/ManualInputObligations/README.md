# Three manual inputs: typed theorem obligations

All three manual inputs can be expressed as precise propositions over the
existing actual Adams interfaces. They cannot currently be discharged from
the formalized topology. This directory is an investigation and an explicit
interface design, not a proof of the manual differentials.

| Input | Page | Source (s,t) | Target (s,t) | Source E2 basis ID | Source staircase ID | Target E2 basis ID |
| --- | ---: | --- | --- | ---: | ---: | ---: |
| S0, h0^24 h6 | 5 | (25,88) | (30,92) | 913 | 913 | 1017 |
| S0, h0^55 h7 | 6 | (56,183) | (62,188) | 7371 | 7370 | 7947 |
| tmf, v2^16 | 3 | (16,112) | (19,114) | 2494 | 2494 | 2618 |

`investigation.json` contains every original source/target basis and
staircase row, named-generator degrees, database hashes, the exact paper
excerpt, and the degree checks. It distinguishes E2 basis7371 from
staircase7370, whose `base="1"` names that source. S0 high-filtration raw d2
NULLs remain NULL. The tmf basis table has `repr`, not a d2 column.

The appendix attributes the two sphere inputs to the image of J and the
tmf input to power operations, citing Bruner-Rognes [12]. These statements
are corroborated by the stored differential records but are not proved by
them.

## Available typed interfaces

The existing `Reference/LinProgramReference` definitions supply:

- `AdamsSpectralSequence`: actual F2 vector spaces indexed by page and
  bidegree, actual linear differentials, and a square-zero proof.
- `AdamsPageProduct`: actual graded multiplication with algebraic laws.
- `PageHomologyIdentification`: mutually inverse maps between the actual
  cycle/boundary quotient and the next page.
- `DifferentialChannel`: a typed, degree-correct differential equation.

For a precise implementation, use the concrete homology identification
rather than the uninterpreted `AdamsClass.compatible : Prop` field. A finite
representative trace starts with an actual E2 element; each step supplies an
actual cycle proof and takes its actual quotient class to the next page.
This forces the terminal representative to denote the initial named class.

`Typed.lean` implements the compiled signature and definitions. It
evaluates the sphere source/target products and beta^5 g on E2, carries both
endpoints through those traces, and defines the three fixed propositions as
actual differential equations at pages5,6,3. `ExternalProofs` requires Lean
proofs of those exact equations. Its conditional `consume` theorem extracts
them; no parser, status tag, citation or hash creates such proofs.

## Naming and mathematical obligations

Source monomials must be interpreted on E2 before transportation. Forming
h0^24 h6 directly on E5, or h0^55 h7 directly on E6, can be wrong when an
individual factor has already died. The surviving product's trace does not
require such individual factors to survive.

The database treats P^6d0 as an atomic named E2 generator, degree(28,90).
The design likewise takes that actual E2 class as input; it does not assume
P is itself an E2 element and form an unjustified sixth power. The tmf
database source is w2^2, with w2 degree(8,56). Identifying it with the paper's
v2^16 requires an actual E2 equality; matching degree alone cannot establish
that identity. `V2NameMatches` states this additional obligation explicitly.

The following mathematics is still required: construction/identification
of the actual S0 and tmf Adams spectral sequences; named Ext generator and
finite-basis realization; the endpoint cycle traces; and the image-of-J and
Bruner-Rognes power-operations proofs. Calling a structure field `sphere`
or `tmf` does not establish its topological identity. Nonzero claims, when
required by later checkers, need separate nonzero proofs.

The current program's finite coordinate transport interfaces may consume
these external equations only after the actual endpoint and differential
coordinate interpretations are supplied. Such an interpretation cannot be
inferred from a manual input's database row or JSON string.

## Interface limits

`PageHomologyIdentification` provides mutually inverse functions on the
underlying types. It does not require those functions to preserve zero or
addition. The trace binds each successor to that supplied identification;
it does not derive nonzero, additive, or topological properties. A later
bridge to an actual Adams realization must supply the missing zero and
addition laws as well as identify the supplied pages and elements.

The copied `GeneralizedLeibnizRule` is an ordinary same-page product
Leibniz rule. Its historical name does not make it the paper's generalized
Leibniz Theorem 6.1. No result about that theorem is proved here.

## Validation

Run `python3 program/ManualInputObligations/compile.py` from the repository
root. The six isolated Reference modules and `Typed.lean` compile serially,
with seven exit codes zero in `isolated-compile-audit.json`. Run
`python3 program/ManualInputObligations/audit.py` to inspect the transitive
axioms of every declaration owned by these seven modules, and
`python3 program/ManualInputObligations/assert_current.py` to verify the
saved source, log, object, provenance and audit fingerprints.

`Reference/` copies the existing mathematical bodies exactly, changing
only namespaces and imports. `reference-provenance.json` records the exact
changes, both source hashes, and a check of the normalized mathematical
bodies. Narrow cached imports replace the unavailable `Mathlib.Tactic`
umbrella; topology imports explicitly provide the real topology required
by the existing pointed homotopy definitions. These isolated copies do
not modify the original `Reference/` tree.

The earlier `Typed.lean.txt` remains an uncompiled historical prototype
importing the original Reference modules. Its unsuccessful attempt is
recorded in `compile-audit.json`; that original failure log was overwritten
by the subsequent successful `Typed.lean` build and is not claimed as
available evidence. The current successful source and log hashes are in
`isolated-compile-audit.json`. Neither the prototype nor the compiled typed
interface proves any of the three manual differential equations.
