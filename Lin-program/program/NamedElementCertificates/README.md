# Named polynomial reductions

`name_audit.json` resolves all requested scalar named expressions against real
S0 SQLite generator names, matching UTF-8 CSV records and basis monomials.
It records generator IDs, powers, bidegrees, global basis IDs, degree-local
coordinates, source hashes and any used relation row IDs. In particular `Md_0`
and `\Delta h_1g` are single source generators, not invented products of an
unavailable `M` or `Delta`. Fourteen expressions include Fact 7.13's full
differential target and Remark 7.7's possible summand.

The Prop 7.9 bottom-cell expression is found exactly in the Cnu module basis:
global ID 4412, local coordinate 2, (s,t)=(14,139), encoding
`1,1,7,1,275,1,0`. The last zero is module generator `[0]`. This lookup is
reported as source-coordinate evidence; the module action/topological inclusion
identification is not proved by this ring-polynomial checker.

`Basic.lean` represents commutative monomials by sorted lists of variable IDs,
and F2 polynomials by lists with multiplicities reduced modulo two. A certificate
expresses input+output as an explicit sum of polynomial multiples of imported
relations. `check_sound` establishes equality of **every** monomial coefficient,
including monomials absent from the supplied lists, and hence the stated explicit
relation-ideal membership semantics `EqualModuloRelations`. This is a theorem
relative to the supplied relations; there is no assertion that those relations
have been proved to present Ext, no unverified claim of a Groebner basis, and no
claim that a coordinate lookup proves Adams survival.

`export.py` reads source-oriented leading terms and reduces any non-basis
monomial by a dividing relation, recording the relation multiplier. It checks the
resulting ideal witness independently in Python and emits canonical JSON plus
`Generated.lean`. All named scalar products are already source basis monomials
except the h0*h1 summand in Fact 7.13's target. That summand reduces by actual
relation row 1, `h0*h1=0`, giving degree-local target coordinates [2,4].
Cycle, missing-rule and step-limit failures remain explicitly unresolved.

```sh
python3 NamedElementCertificates/export.py
lake env lean NamedElementCertificates/Basic.lean
lake env lean NamedElementCertificates/Generated.lean
lake env lean NamedElementCertificates/Tests.lean
```

`named_bundle% "path.json"` imports concrete constructor data. Use
`lin_cert using bundle.terms` for a goal
`EqualModuloRelations bundle.relations bundle.input bundle.output`.
Recompile consuming Lean sources when external JSON changes. Strict canonical
JSON parsing rejects unknown/duplicate fields. Checker failures distinguish
invalid relation indices and coefficient mismatches by inspecting the witness;
the producer log reports claim IDs, source coordinates and reduction counts.

All 14 generated proof cases compile, including the nontrivial source relation
reduction. Negative tests reject missing steps, wrong multipliers and invalid
relation indices. Standard Lean axiom dependencies are `propext`,
`Classical.choice`, `Quot.sound`; no custom axioms, `sorry` or `native_decide`.
Fact 7.6(4)'s uniqueness is not inferred from the raw source staircase: its
proof involves excluding possible d4 values, beyond this naming layer.

`Evaluation.lean` supplies the algebraic semantic bridge:
`check_sound_evaluate` proves input and output have equal evaluation for every
valuation into **every commutative ring of characteristic two** satisfying the
imported relations. Sorting invariance, multiplication compatibility, equality
from all coefficient parities and vanishing of ideal combinations are proved.
`EvaluationExamples.lean` applies this to the actual Fact 7.13 target, with the
explicit sole source relation hypothesis `v 0 * v 1 = 0`. This is a mathematical
evaluation theorem, not a claim that the supplied relations already identify Ext.

`ModuleEvaluation.lean` extends this to finite free-module expressions and
polynomial combinations of module relations. Its soundness theorem holds in
every module over every commutative characteristic-two ring. Relations may
connect different generators; they need only evaluate to zero as module elements,
not componentwise. The executable checker verifies every module coefficient.

`CnuBottomCell.lean` binds the actual four source basis records in degree
(14,139), within the actual 1171-generator module presentation. Coordinate 2,
global basis ID 4412, has evaluation `(v 1 * v 7 * v 275) • g 0`, i.e. the
named h1 h4 x109,12 action on bottom-cell generator [0]. The coordinate
certificate and cross-generator module-relation positive/negative tests compile.
Both new principal theorems have only standard `propext`, `Classical.choice`,
`Quot.sound` dependencies. This algebraic expression bridge does not identify
the imported presentation with topological Cnu cohomology or prove survival.

`ModuleImport.lean` provides strict canonical JSON import with rank/shape,
relation-index and coefficient checks, and `module_bundle% "file.json"`.
`ModuleImportExamples.lean` imports `module-example.json` and proves the
cross-generator relation with `module_cert using imported.terms`. This tactic
uses the `CertificateVerifier` for `EvaluationsAgree`, whose statement retains
the explicit assumption that the imported relations evaluate to zero. It reduces
the check to pure certificate data before invoking kernel `decide`, so arbitrary
ring/module valuations do not interfere with computation. Tests reject wrong
shapes, invalid relation indices and unknown JSON fields. No topology is inferred
from a successful module expression check.

Module JSON requires `version: 1`. `Wire.ShapeValid` explicitly records the
version and every input/output/relation rank. `Wire.Valid` also records valid
relation indices and componentwise relation-ideal equality. `checkWire_sound`
proves all these conditions from acceptance, and `lin_cert using ()` proves
`imported.Valid`; thus wire shape is part of the proved conclusion.

The standalone C++ `module_export.cpp` **packages explicitly supplied witnesses**;
it does not solve module relations or claim their truth. Input is one line
`RANK|INPUT|OUTPUT|RELATIONS|WITNESS`. Expressions have slash-separated polynomial
slots; polynomials have semicolon-separated monomials; monomials have
comma-separated variable IDs. `u` means the unit monomial, `-` the zero
polynomial. Relations are colon-separated expressions (or `-`); witness terms
are colon-separated `index@polynomial` (or `-`). Thus variable `1` is distinct
from unit `u`. Whitespace, malformed shapes and bad relation indices are rejected.
Rank zero uses `-` for its empty expression. The output is canonical version-1
JSONL accepted by `module_bundle%`. Batch errors identify the failing line and
exit nonzero; prior valid rows may already have been written.

```sh
c++ -std=c++17 -O2 -Wall -Wextra -Wpedantic NamedElementCertificates/module_export.cpp -o NamedElementCertificates/module-export
NamedElementCertificates/module-export '2|u/-|-/u|u/u|0@u'
NamedElementCertificates/module-export --batch NamedElementCertificates/module-batch.txt
python3 NamedElementCertificates/test_module_export.py
lake env lean NamedElementCertificates/ModuleExported.lean
```

Tests cover deterministic batching, crossing-generator relation, zero rank,
variable/unit distinction and seven malformed inputs. `ModuleExported.lean`
imports the actual C++ output and proves its `Wire.Valid` via kernel checking.

`Fact713.lean` additionally decodes the exact source and target ordered bases,
checks the actual d2 matrix equation, and proves the displayed target expression
is equal modulo the explicit source relation to the decoded differential. List
order is handled by coefficient semantics rather than claiming literal equality.
