# Current KIPBase → KIP126 gap inventory

This is a source-level migration inventory at `origin/main` commit `110f643`
plus the changes in PR #113. It is not a claim that historical declarations are
proved or that the Blueprint nodes are complete. The old snapshot ledger is
not a current-source inventory: the active `KIPBase/` tree has changed since
that snapshot, especially in commutativity and bounded extension.

The repository's `scripts/kipbase-migration.py` parser finds **38 historical
Lean modules, 87 explicit `axiom` declarations, and 35 `sorry` occurrences**
in the current `KIPBase/` tree (excluding the root `KIPBase.lean`). These are
historical-source counts, not the number of axioms or sorry dependencies in
canonical KIP126. The current canonical library still has no `KIPBase` import.

| Historical area | Canonical coverage | Still missing or deliberately not copied |
| --- | --- | --- |
| `SpectralSequence/{Basic,FilteredComplex,Convergence,Crossing,Truncation,Completion}` | Mathlib spectral sequences, the canonical filtered-complex quotient pages, finite-page assembly, filtration and completion interfaces, and some crossing/detection laws are in `KIP126/Def`. | Four representative/lift relation proofs, canonical page functoriality and reindexing, coherent `E∞`/abutment comparison, and the historical representative-coset comparison. The old `SSData`/`PreSS` are not a second authority. |
| `SpectralSequence/{BoundedExtension,UnboundedExtension,Commutativity}` | Two-term extension objects, bounded-extension helpers, and the axiom-free square/detection fragment have canonical ports. | Full ESS differential and convergence construction, unbounded stabilization, and Section 2.12–2.19 consequences on the canonical model. Current historical sources contain 9, 5, and 12 `sorry` occurrences respectively; unbounded extension also has one explicit axiom. The historical `ConvergenceMorphism`/`PreSS` statements cannot be pasted into the Mathlib-based API. |
| `StableHomotopy/{Basic,TensorTriangulatedCategory,Cohomology,Adams}` | Category, cofiber, mapping-spectrum, cohomology, Adams tower/page and convergence witness interfaces exist in KIP126. | Concrete model construction, some exactness and sign laws, Adams mapping/composition and convergence results. The 40 explicit axioms in these historical files are not automatically valid as global assertions on every abstract stable category. |
| `Synthetic/{Basic,Sphere,Nu,Adams,Lift,Rigidity}` | Bigraded suspension, λ-cofibers, spheres, ν witness data, synthetic page and classical/synthetic comparison interfaces are partly present. | Concrete ν/cofiber/enrichment instances, normalized lifts, λ-Bockstein and rigidity, and synthetic convergence. The 32 historical explicit axioms must be separated into model data, sourced external inputs, and internal proof obligations before any canonical port. |
| `multiplicativeSS/{DGA,MasseyProduct,TodaBracket,CategoricalTodaBracket,TriangulatedTodaBracket}` | PR #113 starts the cone-based shifted Toda relation and four proved basic laws under `Def/StableHomotopy/Toda/`. | Most of the axiom-free DGA/homology product and Massey-product development; full Toda indeterminacy, juggling and canonical construction. The new Toda fragment does not complete the Blueprint Toda node. |
| `multiplicativeSS/{Basic,Monoidal,ModuleCat,Adams,AdamsDetection,AdamsEnriched,AdamsMasseyProduct,Moss,MossCrossing,adamsdata/*}` | KIP126 has some Adams E₂ algebra/table and permanence interfaces, but no general multiplicative spectral-sequence or Moss implementation. | Page pairings and Leibniz law on Mathlib spectral sequences, multiplicative convergence, Adams comparison, Massey/Toda detection and Moss crossing. The old `Adams` and `AdamsEnriched` files have 14 explicit axioms and 9 `sorry` occurrences, and still depend on the retired historical convergence model. Open PR #110 is not part of `main` and must be assessed separately. |
| `Basic`, `Mathlib`, `Compatibility/FilteredComplex` | Historical aggregate/import wrappers and the isolated compatibility bridge remain available as migration evidence. | No direct canonical import is intended; preserve the no-`KIPBase` dependency boundary. |

## Axiom placement decision

`Axiom.lean` is for a deliberately assumed **internal statement on the chosen
canonical objects**, with source and mathematical meaning recorded. It is not
a license to copy all 87 historical axioms. For example, a globally selected
synthetic `ν` or cofiber structure on every abstract category is better kept
as explicit model data; literature rigidity or computation inputs belong in
`External/`; unfinished proofs remain theorems with `by sorry` in `Proofs.lean`.
The first canonical axiom, if one is justified by a statement-level comparison,
must be audited by name and downstream cone, and every project axiom must be
eliminated for final acceptance.

## Next dependency order

1. Finish and review the PR #113 audit gate and the small proved Toda fragment.
2. Port the historical axiom-free DGA and Massey core into concept-specific
   `Data`/`Predicates`/`Proofs` layers without introducing a parallel
   spectral-sequence type.
3. Build page pairings and Leibniz compatibility on Mathlib's canonical
   `SpectralSequence`; only then translate Adams and Moss statements from the
   historical convergence model.
4. Audit each remaining old axiom against the target paper and canonical
   interface. Put only genuine development-stage internal assumptions in a
   component `Axiom.lean`; keep external and model-data boundaries explicit.

The relevant Blueprint nodes (`def:multiplicative-ss`, `def:toda-bracket`,
`def:massey-product`) remain `\notready` until their full stated interfaces
and proofs are implemented.
