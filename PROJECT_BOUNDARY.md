# Project Boundary

The mathematical target is Lin–Wang–Xu, *On the Last Kervaire Invariant Problem*, the pinned v2 source under `KIP126/Main/Axiom/Literature/MainPaper/`. Source material and historical audits are evidence with a version and scope, not axioms or proofs.

## Current architecture

The current user-directed architecture is specified in [STAGE_LAYOUT](docs/STAGE_LAYOUT.md). Definitions, source realizations and comparison interfaces live in `Def/`. The root `Challenge2` is the single correlated delivery: its literature field is A(M), its computation field is C(M), and both share one witness. Production goals and proofs live in `Interface/Challenge` and `Interface/Solution`. `Main/Axiom` contains only the temporary statement `Nonempty Challenge2`; witness selection and projections live in `Main/Solution/StageInput`, while the definition-only Final challenge and paper deductions remain in `Main/Challenge` and `Main/Solution`.

No definition in Def may depend on Interface or Main. No Solution may consume a Challenge placeholder. A certification proof may not consume the result being certified through a Main axiom. Data and all their properties must refer to the same witnesses. Final's type uses only the fixed definition-layer sphere sequence, standard cobar class, and nonzero permanence predicate.

## Scope and mathematical choices

The project permits an abstract stable homotopy background in Mathlib's language, with concrete source realization and identification interfaces. Constructing a complete stable infinity-category library is not a prerequisite. An arbitrary carrier or an unqualified equivalence cannot substitute for the specified sphere, HF₂, its unit, Adams tower, standard Milnor class, or operations used by the paper.

The target is exactly nonzero permanent survival of standard h₆² in bidegree (2,128), stem 126, in the classical mod-2 sphere Adams sequence. It does not assert a stronger order statement or directly incorporate the geometric conclusion. The conditional Solution concludes the identical proposition; an unconditional proof is not yet exported. The proof layer may use explicitly accepted, accurately sourced external results and certified computational facts on the same model.

The broader project also retains all Appendix entries and source provenance, useful examples, and conditional geometric consequences (Kervaire-invariant-one and exotic-sphere statements). These are not additional Step-0 blockers unless used by the proof of the specified T or its computational certification. Open questions are statements, never accepted inputs. The separate KIPBase component remains historical material and does not prove the canonical result.

## Responsibilities and acceptance

Step 0 freezes accurate definitions, statements, degrees, conditions, scope, source applicability, object bindings, and an acyclic mathematical dependency plan. Complex construction and comparison proofs may remain `sorry`; the semantic interface itself may not be omitted or replaced by an unexplained proposition. A model-existence stub is not evidence that a model has been constructed.

Stage 1 proves precisely the finite mathematical output statements from pinned program data and correct algorithms. Successful parsing, hashes, regenerated files, and Lean compilation are partial engineering evidence. Unknown rows, trial branches, and finite sentinels are not zero or permanent survival. Rule soundness must refer to the same mathematical interpretation; any paper rule used in certification must be proved independently before use.

Stage 2 accepts the explicit external A and computed C, proves the paper's new tools and intermediate results, and proves T. BX's source criterion, LWX's normalization, order-two statements, model comparisons, and all-choice conclusions have separate responsibilities. Neither A nor C may contain unsupported strengthened versions or the new conclusions being proved.

Full proof completion additionally requires discharging the relevant `sorry` and temporary computational axioms, verifying all remaining dependencies and provenance, and completing the broader project scope. The strict axiom audit is a final-proof gate, not the Step-0 acceptance test. Current source-model gaps must be reported as gaps even when all architecture checks pass.
