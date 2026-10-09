# Derived maps and commutativity certificates

This module covers all 115 `maps_v2` records in `upstream/kervaire-49/ss.json`, with **all source basis degree blocks having t <= 12**. Targets and intermediate objects use their actual shifted degrees, up to t = 140; an absent degree outside the database truncation is never zero.

## Current artifacts

- `Basic.lean`: factor substitution, signed shifts, intermediate truncation, binary matrix composition and semantic soundness. `CompositionWire.transport` transports composite coordinates through explicit interpretations of the two component maps.
- `Import.lean`: canonical JSON import (`derived_factor%`, `derived_composition%`), dimension/unknown/duplicate/sentinel rejection and row/column diagnostics.
- `Tests.lean`: kernel mutation tests, executable parser assertions and axiom reports.
- `Counterexample.lean`: kernel-checked nonzero E2 composite for `2*sigmasq` at input degree `(0,0)`, using its actual two factor certificates.
- `export.py`: untrusted SQLite/JSON producer; source scope and zero-vs-unknown distinctions explicit. Reduction follows the first monomial of the exported relation, with cycle detection and a 10,000-step limit. No termination or correctness of this producer is assumed by Lean.
- `audit_sources.py`: independent SQLite parsing, factor index lookup, source/target basis coverage, direct images, original relations and algebra identity audit.
- `generate_batches.py`, `compile.py`: kernel goals and strictly serial, content-fingerprinted compilation.
- `generation_audit.json`: all original ordinals, exact certificate dependencies, reduction provenance, duplicate identities and page-level obligations.
- `data/*.json`: stable canonical sorted-key JSON certificates.
- `../DerivedMapBatches/Batch*.lean`: generated kernel goals, excluded from the default small library.

The Lean composition checker proves composition of the supplied matrices, with typed signed bidegrees. Factor degree declarations also check the signed source-to-target equation, but homogeneity of imported generators/relations and identification with database bidegrees require the source audit; the Lean factor theorem is algebraic substitution, not a theorem deriving grading from topology. Database identity and dependency file references are verified by the independent source audit, not inferred from strings by the kernel. Applying the coordinate theorem to actual maps requires the explicit component-interpretation hypotheses of `CompositionWire.transport`.

## Coverage and interpretation

There are 2,849 complete degree blocks (2,892 source basis columns, counting preserved duplicate records) for the 115 original derived records. Shared dependencies and intermediate degrees produce 5,460 certificates: 2,300 factors, 1,388 direct dependency maps, 891 binary composites and 881 commutativity equalities. All 69 batches (5,460 certificate theorems) and all five support modules compiled successfully. The final current audit reports 74 fresh files, zero remaining, zero stale source files and zero stale certificate files; consult `compile_audit.json` and current fingerprints, never infer kernel verification from generation.

All 36 commutativity declarations are enumerated across 907 degree blocks. 881 are genuine E2 matrix equalities. **26 are not E2 equalities:** their exact nonzero matrices and differing coordinates are retained as `page_level_obligation`, without a false theorem. They involve `2*sigmasq`, `2*theta4`, `2*theta5` and the reverse orders. Their upstream meaning requires later-page or homotopy information. An empty RHS `g` means zero in these declarations, not identity.

115 is a record count, not a distinct-name count. The identical `CW_sigma_nu__S0` derived record appears twice; the derived `C2_Ceta__C2` also collides with a different direct-map definition. Original ordinals are preserved, and references resolve to the first definition, as in the upstream loader. Internal ordinal aliases identify the later records unambiguously.

`factor=[stem,s,indices]` uses degree `(s,stem+s)`. Numeric 0 means the singleton coordinate `[0]`, not zero. Only `[]` is zero. Ring targets are represented as rank-one modules with generator 1, and ring-source factors use the single source unit. General module factors multiply each generator by the declared scalar. The imported polynomial/module relations remain explicit valuation hypotheses; no theorem silently identifies them with actual Ext relations.

The upstream loader additionally marks **69 S0-origin factor records permanent**. Their list is preserved as `permanence_external_obligations`. Multiplication verification does not justify permanence.

## Commands

Run from the repository root:

```sh
python3 program/DerivedMapCertificates/export.py
python3 program/DerivedMapCertificates/audit_sources.py
python3 program/DerivedMapCertificates/generate_batches.py
python3 program/DerivedMapCertificates/compile.py
python3 program/DerivedMapCertificates/assert_current.py
python3 program/DerivedMapCertificates/test_runtime.py
```

Compilation must run after the shared dependency build, with no concurrent build replacing dependency oleans. The module uses `lin_cert using ()`; no `sorry`, custom axiom, `native_decide`, or C++ trust is introduced. SHA-256 is only provenance/freshness bookkeeping.

`FactorWire.column_semantics` and `FactorWire.allVectors` prove evaluation of the actual checked factor substitution, for each column and every F2 linear combination, in every module over a commutative characteristic-two ring satisfying the imported relations. These do not assert that an arbitrary independent named map equals the factor map. `CompositionWire.transport` makes the corresponding component interpretation assumptions explicit.

`CheckFile.lean` is an executable entrypoint for one certificate: under the configured Lean environment, `lean --run DerivedMapCertificates/CheckFile.lean factor PATH` or `... composition PATH` returns nonzero with exact file and column/row diagnostics on failure. Proof-producing use remains:

```lean
def cert : FactorWire := derived_factor% "DerivedMapCertificates/data/00000.json"
theorem checked : cert.Valid := by
  lin_cert using ()
```

`coverage.md` enumerates every original derived record and every commutativity declaration. The independent source audit snapshots 99 upstream files and all 5,460 certificate JSON files; these hashes preserve identity and do not establish mathematics.

Source-first truncation conservatively honors an explicit factor `t_max` if present; upstream factor construction derives its limit from the target database and ignores that extra JSON field. In this bounded range the difference does not remove any required degree block.

The two actual `Counterexample.lean` factor paths are refreshed by semantic lookup in `generate_batches.py`; neither source coordinates nor nonzero output are inferred from a hardcoded file ordinal.

Validation completed: all 5,460 SQL/algebra audits pass; all 69 kernel batches pass; all eight executable valid/malformed-certificate tests pass. JSON parsing rejection is tested by executable IO assertions because the JSON parser is opaque to kernel reduction; all mathematical soundness and certificate acceptance proofs use kernel-checked terms.

## Kernel composition DAG linkage

`generate_linkage.py` covers all 891 generated composition wires and all 881 successful commutativity wires. `../DerivedLinkageBatches/` imports their original certified dependency definitions, proves both input matrix identities by kernel reduction, references dependency and output validity proofs, and proves composition for every F2 vector. Commutativity also has an explicit link to its certified RHS matrix or a kernel proof that its output matrix is zero.

This links every intermediate DAG edge numerically inside Lean. `Linkage.lean` supplies `CompositionWire.transport_linked` for actual interpretations of the dependency matrices. Source names, SQL identifiers and hashes do not prove these matrix identities; actual topology/Ext interpretations remain explicit compatibility premises.

```sh
python3 program/DerivedMapCertificates/generate_linkage.py
python3 program/DerivedMapCertificates/compile_linkage.py
python3 program/DerivedMapCertificates/assert_linkage.py
```

The 26 E2-unequal commutativity positions remain later-page obligations; no equality is generated for those failures. All generated composition wires, including intermediate degree blocks outside the source t <= 12 reporting region, are covered by the linkage batch.

Among the 881 commutativity links, 543 compare with another certified map and 338 compare with zero. Thus 4,425 matrix identity/zero proofs link the 1,772 composite/commutativity wires, in addition to their original arithmetic checks.

All 36 linkage batches and `Linkage.lean` have compiled successfully. The linkage audit reports 37 fresh files, zero remaining, all 37 original composition records covered, 891 composition links and 881 commutativity links. The original 74-file certificate audit also remains fresh with no stale sources or certificates.
