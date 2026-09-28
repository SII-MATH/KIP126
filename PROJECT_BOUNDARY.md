# Project Boundary

## Status

This document records the agreed scope and acceptance criteria for the Lean
formalization of:

> Weinan Lin, Guozhen Wang, and Zhouli Xu, *On the Last Kervaire Invariant
> Problem*, represented in this repository by `KIP126/Main/Axiom/Literature/MainPaper/main.tex`,
> `KIP126/Main/Axiom/Literature/MainPaper/112.tex`, and `KIP126/Main/Axiom/Literature/MainPaper/2412.10879.pdf`.

The document is normative for the project. Any proposed extension or
relaxation of this boundary must be agreed explicitly and recorded here.

## Staged repository architecture

The canonical source has three mathematical layers:

1. `KIP126/Def/` is the shared mathematical base and the first production
   stage. It contains definitions, predicates, constructions, reusable
   theorems, and the Challenge/Solution pair for `Challenge1`. It contains no
   project `axiom` declarations. An unfinished theorem may remain visibly
   unfinished with `by sorry`; proof debt must not be hidden by changing its
   declaration kind.
2. `KIP126/Interface/` is the first proof stage. Its Challenge/Solution track
   states and eventually proves the stable mathematical and computation
   interfaces that the main paper argument consumes. Its `Axiom/` contains
   stage-zero outputs admitted as inputs to this first proof stage.
3. `KIP126/Main/` is the second proof stage. Its Challenge/Solution track owns
   the near-126 argument and the final conclusions. Its `Axiom/` tree provides
   audited development assumptions so this work can proceed in parallel with
   Interface proofs.

`KIP126/Main/Axiom/Literature/` manages literature sources, claim-level
locators, provenance-carrying wrappers, and the staged assumptions that use
them. `KIP126/Main/Axiom/LinProgram/` manages the program pipeline as distinct
raw, deterministic translation, generated, and mathematical-interpretation
layers. The Mathlib adapter and Checks trees retain their independent roles;
the architecture does not require empty placeholder directories. Retaining the
historical Mathlib adapter does not add a project obligation to identify the
internal spectral-sequence model with Mathlib's spectral sequence.

As clarified in issue #138 on 2026-09-28, `Def` owns reusable mathematical
objects, structures, predicates, constructions and theorems. The root Challenge
files own the project's combinations of backgrounds, data, ranges and
compatibility conditions. Do not duplicate those project combinations as a
second delivery package inside `Def`. Existing wrappers such as
`StandardAdamsFoundation` require a consumer-aware migration, preserving
generic parameters and necessary adapters without reverse imports from the
common mathematical base to a root Challenge or consumer axiom.

Background specifications, theorems for a given background, and existence of
the chosen background are distinct obligations. A record definition or adapter
does not establish existence. The abstract-foundation choice below preserves
the two fixed-witness production obligations; it neither makes the final
theorems permanently parameterized nor expands the task to constructing a
complete model of stable infinity-categories.

The shared root structures `Challenge1` and `Challenge2` are the complete
contracts for the two boundaries. Def and Interface prove respectively
`Nonempty Challenge1` and `Nonempty Challenge2`; the next stage temporarily
assumes that exact proposition and selects one witness. These upstream results
eventually eliminate the assumptions without maintaining a duplicate signature.
Accepted external literature still enters through
explicit `ExternalResult`/`ExternalEvidence` values, so statement alignment
does not turn a cited theorem into an untracked global fact.

The initial reorganization moves existing declarations and preserves their
public statements. The subsequent, explicitly authorized interface refinement
packages each boundary into one shared witness and projects the old public
interfaces from it, preserving dependent choices and conditions. It adds the
missing producer goals but does not fill their proofs, replay a program, or
establish a clean import boundary merely by changing paths. Existing cross-layer
dependencies and unfinished producer proofs remain explicit follow-up work.

## Confirmed design decisions

1. **Homotopy-theoretic foundation.** We use an abstract stable homotopy
   context (option A), not a construction of a complete model of stable
   infinity-categories. The context must expose every operation and property
   needed by the paper's arguments: spectra, maps, homotopy classes,
   suspension, cofibers, distinguished triangles, smash products, homotopy
   groups, and Adams filtrations.

2. **Steenrod algebra and Ext.** We formalize the relevant algebraic
   interfaces and general theorems for the Steenrod algebra, graded objects,
   filtered objects, and Ext/Adams pages. Pinned Lin-program output determines
   the computation statements mechanically; it is not itself a Lean proof of
   those statements. The Interface stage is intended to replay or verify the
   required interpreted high-stem conclusions from the common base and the
   pinned raw artifacts. Until those proofs exist, Main may consume the frozen
   statements through disclosed stage axioms. Concrete raw output and table
   entries retain `ExternalEvidence` provenance throughout this process.

   For the statement of the permanent `h_6^2` target, the confirmed abstract
   foundation may include an explicit mod--2 Eilenberg--Mac Lane object and
   Milnor cooperation coordinates. These coordinates identify the constructed
   first Adams page with the explicitly defined normalized Milnor cobar
   cochains and intertwine the constructed first differential with the Milnor
   coproduct differential. This structural input is not inferred from the
   homotopy groups of the Eilenberg--Mac Lane object alone. The Adams tower,
   quotient pages, later differentials, page passage, standard `h_6`, its
   concatenation square, and pagewise nonzero permanence must be defined from
   these foundations; they must not be supplied as fields. Proof-route results
   such as C3, C4, and C5 are not part of the statement's defining data. This
   statement-only stage does not establish the conditional final theorem or
   relax the project's proof-completion and axiom-audit acceptance criteria.

   The next agreed stage retains the abstract background and moves the
   comparison foundation below the Adams pages: an associative unital
   structure on the specified `H`, its graded cooperations, and the tensor,
   exactness, and Künneth compatibility needed to construct the comparison.
   The first-page coordinates and their differential compatibility must be
   derived from those foundations. Until that derivation is implemented,
   the existing `MilnorCooperations` argument remains an explicit uneliminated
   dependency; merely renaming or rebundling it does not complete this stage.

3. **Appendix data.** Every entry in the Appendix tables is to be encoded,
   not only the entries used directly in the final proof. The encoding records
   the relevant stem, filtration, class names, differential length, target,
   permanence status, and any stated ambiguity.

4. **Examples, remarks, and questions.**
   - A mathematical assertion in an Example is formalized when it is used by
     a later argument or is needed as a regression test.
   - Expository Remarks are not required to become separate declarations.
   - Open Questions are represented as propositions/statements only; they are
     not assumed and are not required to be proved.

5. **Final geometric conclusions.** Both of the following are conditional
   conclusions:
   - existence of a framed smooth manifold with Kervaire invariant one in
     dimension 126;
   - the assertion that the dimensions are exactly
     `2, 6, 14, 30, 62, 126`.

6. **Axiom policy.** The project may use Lean's foundational axioms and the
   axioms already intrinsic to Lean's standard foundational mechanisms.
   During staged development, an internal statement deliberately introduced
   with Lean's `axiom` command belongs under `KIP126/Interface/Axiom/` for
   stage-zero outputs consumed by stage one, or `KIP126/Main/Axiom/` for
   stage-one outputs consumed by Main. Each such declaration must record its
   intended upstream construction or proof, its meaning,
   its provenance or generated input where applicable, and the reason it is
   being assumed. `Def/` and `Mathlib/` must not own project axioms; existing
   declarations there are migration debt to be relocated without silently
   changing their types.

   A Main stage axiom is a parallel-development device. Its presence is not
   evidence that its Interface theorem is proved. An unfinished theorem remains
   in the appropriate `Proofs.lean` or Solution file with `by sorry`; it must
   not be converted into an axiom merely to avoid `sorryAx`. At final
   proof-completion validation, every stage axiom and its downstream dependency
   cone is rejected until the matching upstream result has replaced it.

   By user decision, each stage boundary has one shared witness structure in
   Lean source. `Challenge1` correlates the stable foundation with its Milnor
   coordinates; `Challenge2` correlates the fixed Lin presentation with every
   interpreted table row. The development axiom on each consuming side states
   only `Nonempty ChallengeN`, exactly as the producing Challenge/Solution
   theorem does. Compatibility names are projections from the selected witness.
   This preserves dependent choices but does not construct the selected data,
   prove the assumed properties, or authorize stronger laws.

   Literature results and computational artifacts retain the explicit
   provenance mechanisms specified below. In particular, moving their catalogue
   or wrappers under `Main/Axiom/` does not authorize replacing every
   `ExternalResult` or `ExternalEvidence` parameter by an unconditional global
   fact. Development compilation may tolerate disclosed stage assumptions but
   does not authorize retaining project axioms at final acceptance.

7. **Pinned toolchain.**
   - Lean: `4.32.2`
   - mathlib: `v4.32.2`

   The project must use the matching Lean/mathlib versions and must not depend
   on an unpinned `master` branch or a release candidate.

8. **Fixed, parameter-free h₆² statements (development-stage exception).**
   By explicit user decision, both the computational and standard h₆² targets
   fix the stable foundation, H𝔽₂, Milnor coordinates, SSData model, and Lin
   dataset once. The final signatures have no model or external-evidence
   parameters. The standard sphere sequence and Milnor class still reuse the
   existing tower construction; they are not supplied by the computation table.
   Until the fixed foundations and comparisons are constructed, the two named
   Challenge existence axioms may supply them. This includes the fixed Lin E₂ presentation
   (Zenodo 14875701, v126.3.cw49, internal degree at most 261), as an explicitly
   authorized exception to passing computation evidence as a final theorem
   parameter. Source hashes remain attached to the actual imported data.
   Challenge 1 is consumed under `KIP126/Interface/Axiom/`; Challenge 2 is
   consumed under `KIP126/Main/Axiom/`.
   Their mathematical definitions and adapters remain in `Def/` and `Mathlib/`.
   Relocation does not remove their dependency cones or prove their statements;
   each remains final-acceptance debt until discharged by its upstream result.
   This does not postulate h₆² survival: the computational Solution remains
   open, and the standard Solution reduces to it using the named comparisons.
   A proof body without `sorry` is not a claim that its dependency cone is
   free of `sorryAx`, project axioms, or external computation assumptions.

## In-scope formalization

### Fixed computation-database input (development-stage exception)

By explicit user decision, Lin computation facts are to be imported in bulk
from `proofs.db`, not introduced as one external axiom per row. The named
`KIP126.Computation.LinProofs.sphereTable_sound` in
the Lin-program portion of `KIP126/Main/Axiom/` is the initial single soundness
assumption for the fixed exported table. It links literal CSV coordinates to
the existing tower-derived `sphereAdamsData`; it is not a soundness assertion
for arbitrary tables or arbitrary caller-supplied `Prop`s. The compiled audit
must inventory this exact exception and still reject it at final acceptance.
No `sorryAx` is authorized by the exception.

The Lin-program tree separates four responsibilities. `Raw/` records the
pinned archives, database/CSV schemas, versions, and hashes; `Translate/` owns
the deterministic conversion from those formats; `Generated/` owns the typed
records and coverage manifests; `Interpretation/` states what a generated row
means for the internal mathematical model. The importer scans the entire
pinned database, with per-category coverage counts. The currently interpreted
fragment is **closed, finite-page sphere differential equations** within the
existing E₂ comparison range. Other spectra, extension semantics,
conditional branches, unknown values and permanence sentinels are not yet
covered. Full raw JSONL export is supported without treating every log row as
an unconditional mathematical assertion. See `docs/LIN_PROOFS_IMPORT.md` and
the generated manifest for exact scope.

Deterministic translation, a successful hash check, and a generated Lean row
establish reproducible syntax and provenance, not the row's mathematical
truth. Replaying or verifying the interpreted conclusions from `Def/` is an
Interface Challenge/Solution obligation. The initial migration preserves the
existing bulk assumption and generated declarations; it does not claim that
this verification has already been implemented.

The two current raw formats must remain distinguishable in that pipeline. The
E₂ algebra data comes from the three UTF-16 generator, relation, and basis CSV
files in the pinned `kervaire_csv` archive. Finite-page program conclusions
come from the SQLite `proofs.db` `log` table. A generated Lean table is neither
of these raw sources. If a raw binary is kept outside ordinary Git, its
canonical download, archive digest, extracted-file digest, schema, and version
must still be pinned so the conversion can be reproduced and checked.

### 1. Algebraic and categorical foundations

The project must formalize the interfaces and required laws for:

- `\mathbb F_2`, graded groups, graded modules, and relevant additive
  structures;
- filtrations and filtered maps;
- chain complexes, homology, exactness, kernels, cokernels, and quotients;
- spectra, maps of spectra, homotopy classes, and homotopy groups;
- suspension and desuspension;
- cofibers, distinguished triangles, and the homotopy category;
- smash products and the naturality/compatibility used in the paper;
- Adams filtration of classes and maps.

The implementation may build on mathlib's category-theory, homological
algebra, homotopy-category, triangulated-category, and spectral-object
infrastructure, while supplying the paper-specific interfaces that mathlib
does not provide.

### 2. Classical Adams spectral sequences

The formalization must include:

- pages, bidegrees, cycles, boundaries, and page-to-page differentials;
- the `E_\infty` page and the relationship to filtered homotopy groups;
- convergence assumptions used by the paper;
- the classical Adams differential convention and degree shifts;
- the elements `h_j`, in particular `h_6^2`;
- the classical extension spectral sequence (ESS);
- essential and inessential extensions;
- crossings, no-crossing conditions, and the associated filtration criteria;
- the propositions and corollaries in Section 2, including naturality and
  composition results.

### 3. `H\mathbb F_2`-synthetic spectra

The abstract synthetic context must include:

- the synthetic category and the functor `\nu`;
- the deformation element `\lambda`;
- synthetic spheres and suspensions;
- `\lambda^n`-quotients;
- the maps `\rho` and `\delta`;
- synthetic Adams spectral sequences;
- the `\lambda`-Bockstein viewpoint;
- rigidity and the comparison interfaces needed by the paper;
- synthetic extension spectral sequences;
- the induced classical `(f, E_r)`-extensions;
- synthetic/classical crossing equivalences.

Foundational theorems taken from earlier papers (for example, the
Pstrągowski and BHS results used to justify these interfaces) must be stated
with exact provenance through the external-result mechanism described below.
The Interface track may also formalize or rederive the cited result when it is
part of the frozen interface needed to eliminate a Main stage axiom. A theorem
which remains an accepted literature input is kept as an explicit conditional
premise; cataloguing a citation does not count as its proof.

### 4. The paper's new results

The following must be proved in Lean from the formalized interfaces and
explicit external inputs:

- Section 2 ESS definitions, propositions, and corollaries;
- synthetic extension results in Sections 3–5;
- the definition and properties of classical `(f, E_r)`-extensions;
- crossing and no-crossing lemmas;
- the Generalized Leibniz Rule;
- the Generalized Mahowald Trick;
- page-stretching and extension-propagation results;
- all logical reductions in Section 7 that do not themselves assert an
  external theorem or a computed table value;
- the conditional permanent-cycle theorem for `h_6^2`.

The proofs must preserve the degree conventions in the paper, including the
third synthetic weight and the translation convention using `S^{1,0}`.

In the staged layout, the Generalized Leibniz Rule, Generalized Mahowald Trick,
and page-extension stretching are Interface goals because they form part of
the reusable interface consumed by the second stage. The near-126 reductions
and the final endpoint are Main goals. Accordingly, the former
`Challenge/Tools` and `Solution/Tools` modules migrate to the Interface tracks,
while the former `Challenge/Near126`, `Challenge/Final`, and matching Solution
modules migrate to the Main tracks. This ownership classification does not
assert that every planned result is already represented by a `Challenge2` field.

## External inputs

Results from earlier papers, published computations, Lin's program, and facts
read from the Appendix tables first enter the repository as audited source
material. `KIP126/Main/Axiom/Literature/` owns the literature catalogue and
claim wrappers; `KIP126/Main/Axiom/LinProgram/` owns the raw-to-interpreted
program pipeline. Every accepted external input remains a value of an explicit
structure carrying both the proposition and its provenance.

The staged Main axiom states `Nonempty Challenge2` while Interface is still
constructing that witness. Each field must point to the source records used to
formulate it; the package does not turn arbitrary literature or program output
into an unconditional fact. Claims selected for internal replay or verification
are Interface proof obligations. Claims deliberately retained as external
mathematical inputs stay explicit parameters of conditional theorems.

The project will use the following conceptual interfaces (the exact field
names may be refined during implementation):

```lean
structure SourceRef where
  source  : SourceId
  locator : Locator
  note    : Option String := none

structure ExternalResult (P : Prop) where
  proof : P
  ref   : SourceRef

structure ArtifactRef where
  path   : String
  sha256 : String
  version : Option String := none

structure ExternalEvidence (P : Prop) where
  evidence : P
  ref      : SourceRef
  method   : String
  artifact : Option ArtifactRef := none
```

`ExternalResult` is intended for a theorem imported from the literature.
`ExternalEvidence` is intended for a computation, program output, table fact, or
other finite evidence record. Both are hypotheses to conditional theorems;
neither structure silently installs a project-level axiom.

Every literature claim used as a final premise or to formulate a staged
assumption must have its own auditable claim entry. That entry identifies the
source and a stable theorem, lemma, proposition, equation, table, section,
page, or line locator. When the primary text is unavailable, the inventory
must say so and give the exact secondary locator used. The claim's artifact
path resolves through the source inventory to a required file and its pinned
digest where such an artifact is available; composite claims list their
component claim dependencies instead of hiding them in prose.

The implementation deliberately separates structural and checkout-facing
validity.  `InventoryValid` adds syntactically safe, source-relative locator
and evidence-artifact paths.  `CataloguedExternalResult` and
`CataloguedExternalEvidence` then bind an actual proposition-bearing wrapper
to one canonical claim root and a compatible trust class.  The Lean claim
ledger proves finite completeness, global source coverage, and acyclicity of
its dependency relation, but remains metadata: it does not prove the recorded
external proposition.  The JSON checker is authoritative for artifact-list
membership of canonical claim locators, required existing-file status, and
SHA-256 equality.  Lean's source-relative condition is syntactic (a directory-prefix
check, not a filesystem/symlink traversal check).  For a dynamically attached
evidence artifact, Lean additionally checks a safe source-relative path and
digest shape; a catalogued wrapper also requires its path to equal the
canonical claim locator.  Lean does not silently assert the file's actual
digest, nor compare an arbitrary wrapper digest automatically.  Root coverage is relative
to the explicitly closed, family-level `ExternalRootId` enum.  This describes
the current inventory coverage, not proof that every required result has been
included in Challenge 2 or constructed by Interface. The boundary theorem and
axiom already share one type; field coverage remains a mathematical review task.

Examples of external inputs include:

- Browder's criterion relating Kervaire invariant one manifolds to survival of
  `h_j^2`;
- Barratt--Jones--Mahowald and Burklund--Xu's inductive criterion;
- prior synthetic-spectrum and rigidity theorems;
- May's lemma and other prior-paper results used by the new arguments;
- all concrete Lin-program Ext groups, differentials, extensions, and
  disproofs;
- every entry of the Appendix tables, including entries not used in the final
  proof;
- cited `tmf` detection facts and other prior computational or geometric
  conclusions.

The final proof must make every retained dependency on these values explicit.
For a claim whose Main stage axiom has instead been discharged by an Interface
proof, the proof dependency replaces the axiom while the source and conversion
records remain available for audit.

## Conditional final theorems

The project must expose conditional theorems at two levels.

### Homotopy-theoretic conclusion

Under the required external results and evidence, prove that `h_6^2` is a
permanent cycle in the classical Adams spectral sequence.

### Geometric conclusions

Using the external Browder/Pontryagin-type input as an explicit hypothesis,
prove conditionally:

1. there exists a framed smooth manifold with Kervaire invariant one in
   dimension 126;
2. the dimensions in which framed smooth manifolds with Kervaire invariant one
   exist are exactly `2, 6, 14, 30, 62, 126`.

These are implications from explicit `ExternalResult`/`ExternalEvidence` arguments,
not unconditional declarations of the external mathematics.

## Acceptance criteria

The project is complete only when all of the following hold:

- `lake build` succeeds with the pinned Lean/mathlib versions;
- all canonical KIP126 source outside the intentional Interface and Main
  Challenge statement tracks contains no `sorry` or `admit`, and canonical
  KIP126 declares no project `axiom`; Challenge statements retain their
  required `by sorry` bodies and are excluded from proof-completion evidence,
  while the isolated historical KIPBase component remains subject to its
  separate migration audit;
- both Challenge existence axioms have been eliminated by the matching proved
  producer theorem or removed as unnecessary; directory relocation and shared
  signatures alone do not satisfy this condition;
- every external input is passed through `ExternalResult` or `ExternalEvidence`;
- every Appendix table entry has a Lean encoding;
- the two geometric conclusions are available as conditional theorems;
- the final theorem(s) pass a `#print axioms` audit with:
  - no `sorryAx`;
  - no project-defined or undeclared custom axiom;
  - Lean foundational axioms allowed by this boundary being the only
    remaining axioms.

The `#print axioms` audit is a hard completion requirement, not merely a
documentation check.

## Explicit non-goals

The project does not attempt to:

- construct a complete model of stable infinity-categories;
- reproduce Lin's implementation instruction-for-instruction or treat the
  upstream executable as part of Lean's trusted kernel; the required
  interpreted outputs are nevertheless replay/verification targets in the
  Interface stage;
- formalize every result in every cited paper; only the results selected for
  the frozen project interface become internal proof targets, while the
  remaining accepted results stay explicit provenance-bearing premises;
- treat successful download, hashing, parsing, deterministic translation, or
  generated Lean syntax as a proof of the interpreted mathematical claim;
- treat table values as trusted constants without provenance;
- turn the paper's open Questions into assumptions or claimed results;
- hide external dependencies behind untracked global instances or axioms.
