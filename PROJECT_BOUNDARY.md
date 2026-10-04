# Project Boundary

## Status

This document records the agreed scope and acceptance criteria for the Lean
formalization of:

> Weinan Lin, Guozhen Wang, and Zhouli Xu, *On the Last Kervaire Invariant
> Problem*, represented in this repository by `MainPaper/main.tex`,
> `MainPaper/112.tex`, and `MainPaper/2412.10879.pdf`.

The document is normative for the project. Any proposed extension or
relaxation of this boundary must be agreed explicitly and recorded here.

## Staged repository architecture

The user's unified-input architecture supersedes earlier migration rules.
See [STAGE_LAYOUT](docs/STAGE_LAYOUT.md) for the directory contract and
[STAGE0_INTERFACES](docs/STAGE0_INTERFACES.md) for mathematical responsibilities.

- Def owns M's objects, operations, properties, concrete implementation/source
  identification and comparisons. Def has no direct or transitive dependency
  on Interface or Main and declares no project axioms.
- Interface/Challenge defines Challenge2's foundation/A/C/comparison delivery
  contract; Interface/Solution constructs it with actual foundation,
  certification, comparison and internal-application proofs. There is no
  independent Challenge1 stage or Interface consumption axiom.
- Main has exactly Axiom, Challenge and Solution directories. Axiom transmits
  Challenge2; Challenge contains the single standard h6-square target with its
  intentional sorry; Solution proves the paper's results and that same target.
- The target's type and entire defining/import dependency cone use Def and
  foundational libraries only. Literature/CSV/certification inputs enter its
  proof, never the standard sphere, Adams tower or standard element definition.
- One Def implementation is fixed independently of the Main consumption
  axiom. Challenge2's foundation applicability refers to it directly;
  Challenge2 correlates all A/C objects, labels and comparisons on that base.
- The independent LinProgram pipeline retains raw provenance and exact
  interpretation. Independent paper-tool proofs may be reused by certification
  only without Main's stage input or the same numerical output as premises.
- The target paper lives under MainPaper and external literature under Source;
  mathematical contract language lives under Interface/Challenge, while
  source metadata and input coverage live in `docs/external-inputs.json`.
  Historical audit files
  retain their original conclusions and are not current architecture rules.

Stage 0 requires accurate statements and responsibilities. Complex construction,
comparison, certification and deduction proofs may remain sorry. Missing
mathematical meanings, object bindings, hypotheses or necessary coverage cannot
be excused by that permission. Later project proof-completion criteria below
remain separate from this milestone.

## Confirmed design decisions

1. **Homotopy-theoretic foundation.** We use an abstract stable homotopy
   context (option A), not a construction of a complete model of stable
   infinity-categories. The context must expose every operation and property
   needed by the paper's arguments: spectra, maps, homotopy classes,
   suspension, cofibers, distinguished triangles, smash products, homotopy
   groups, and Adams filtrations. An explicit implementation/identification
   with a concrete spectrum source is required; an arbitrary abstract model
   or an unspecified actual-spectrum proposition does not supply this binding.

2. **Steenrod algebra and Ext.** We formalize the relevant algebraic
   interfaces and general theorems for the Steenrod algebra, graded objects,
   filtered objects, and Ext/Adams pages. Pinned Lin-program output determines
   the computation statements mechanically; it is not itself a Lean proof of
   those statements. The Interface stage is intended to replay or verify the
   required interpreted high-stem conclusions from the common base and the
   pinned raw artifacts. Until those proofs exist, Main may consume the frozen
   statements through the disclosed Challenge2 axiom. Concrete raw output and
   table entries retain explicit source and artifact records in the external
   manifest throughout this process.

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

   The shared implementation places the comparison foundation below the
   Adams pages: an associative unital
   structure on the specified `H`, its graded cooperations, and the tensor,
   exactness, and Künneth compatibility needed to construct the comparison.
   Its explicit coordinate equality ties the first-page coordinates and their
   differential compatibility to those foundations. Constructing and proving
   this implementation remains a proof-completion obligation. At stage 0,
   its precise construction, source identification and comparison statements
   must be fixed, while their proofs may remain `sorry` as specified above.
   Renaming or rebundling `MilnorCooperations` does not supply those statements
   or discharge their later proof obligations.

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
   with Lean's `axiom` command is limited to the single direct witness
   `Main.Axiom.challenge2 : KIP126.Challenge2` under `KIP126/Main/Axiom/`.
   This declaration must record its
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

   By user decision, `Challenge2` is the single shared witness structure.
   It contains `FoundationInputs.sphereApplicability`, literature, computation,
   shared model bindings, the fixed Lin presentation, and internal applications.
   The former Challenge1 applicability obligation is preserved without a second
   implementation, equality transport, existence axiom or choice step. Local
   fixed-data certificates are transported into the computation delivery by
   Interface. The Interface producer constructs a direct `Challenge2` value;
   the structure itself specifies its construction goal. Only the final Main
   theorem retains a Challenge/Solution placeholder pair. The fixed background
   remains Def-owned; witness projections cannot change it.
   This preserves dependent choices but does not construct the selected data,
   prove the assumed properties, or authorize stronger laws.

   Literature results and computational artifacts retain the explicit
   external-manifest records specified below. Lean interfaces contain only
   their mathematical statements; metadata is not carried in Lean wrappers.
   This does not authorize introducing unconditional global mathematical facts.
   Development compilation may tolerate the disclosed stage assumption but
   does not authorize retaining project axioms at final acceptance.

7. **Pinned toolchain.**
   - Lean: `4.32.2`
   - mathlib: `v4.32.2`

   The project must use the matching Lean/mathlib versions and must not depend
   on an unpinned `master` branch or a release candidate.

8. **One fixed standard h₆² statement.**
   T(M) is `NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`.
   The internal sphere sequence and standard class are Def constructions,
   specialized from the fixed Def implementation in
   `Def/StageInput/StandardSphere`. They do not require C(M).
   `Main/Challenge/h6_sq_permanent.lean` is the sole final target and
   `Main/Solution/h6_sq_permanent.lean` assembles Propositions 7.8 and 7.9
   on the same stage witness. Proposition 7.8 and the local deductions used by
   Proposition 7.9 still contain `sorry`, so the full theorem remains unfinished.
   The duplicate computational final target
   has been removed. CSV/standard identifications remain comparison lemmas
   and may be used in the eventual
   proof; they are not part of the final statement's definition.
   The fixed foundation is defined in Def from its explicit implementation
   construction; Interface cannot choose a replacement foundation. Its model
   construction and source comparison may still have disclosed proof debt. The computation part of Challenge2 supplies the
   currently admitted C(M) slice, including actual E₂ coordinates, presentation,
   square results and closed sphere differential equations. The single stage
   assumption and all preserved foundation obligations must eventually be discharged.

## In-scope formalization

### Fixed computation-database input (development-stage exception)

By explicit user decision, Lin computation facts are to be imported in bulk
from `proofs.db`, not introduced as one external axiom per row. The named
`KIP126.Computation.LinProofs.sphereTable_sound` in
`Main/Solution/Computation/LinProgram/Interpretation/Differentials/Certificate.lean`
is a projection of the selected Challenge2 witness, not an additional standalone axiom. It links literal CSV coordinates to
the existing tower-derived `sphereAdamsData`; it is not a soundness assertion
for arbitrary tables or arbitrary caller-supplied `Prop`s. The compiled audit
must inventory this exact exception and still reject it at final acceptance.
This computational boundary is not a proof of its contents. Stage 0 permits
disclosed unfinished proofs, while the proof-completion audit still rejects
`sorryAx`.

The independent `KIP126/LinProgram/` tree separates the data responsibilities.
`Raw/` records the
pinned archives, database/CSV schemas, versions, and hashes; `Translate/` owns
the deterministic conversion from those formats; `Generated/` owns the typed
records and coverage manifests; `Interpretation/` states what a generated row
means for a supplied mathematical model. `Certificates/` contains local
kernel-checked results about the fixed algebraic data; transporting them to the
chosen model remains an Interface obligation. Main consumes the corresponding
Challenge 2 computation delivery rather than its Interface producer proofs.
`Main/Axiom/` contains only the single direct Challenge2 assumption. Precise
input contracts are in `Interface/Challenge/`, and source artifacts are in
`Source/`. The witness and its projections live in
`Main/Solution/StageInput.lean`. Intermediate deductions and their imports live
only in `Main/Solution/`; only the final target is paired with Main/Challenge.
There are no `Proofs.lean` files in the input directory.
The input entry module must not import Main proofs, Interface producers or
Checks. Source metadata auditing remains external to proving the mathematical
claims carried by those inputs.
Interface's square producer supplies `SphereSquareInterface.standard_class`
from an explicit presentation, fixed-data exhaustion and independent standard
nonvanishing. Main only projects that identification. This does not establish
the full cobar/actual-product compatibility, which remains an Interface
obligation supported by generic Def mathematics.
This import separation is implemented for `Main/Solution/Computation`; other
legacy Main imports remain migration debt. Examples using Main consumer
adapters and explicit provenance stay in `Checks/Examples/LinProgram/`.
The importer scans the entire
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
internal Interface/Solution obligation contributing to the direct `Challenge2` construction. The initial migration preserves the
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

The Generalized Leibniz Rule, Generalized Mahowald Trick and page-extension
stretching are new deductions of the main paper. Their current proposition
definitions live in `Main/Solution/Tools`, not in the external A(M) checklist
or the Challenge2 witness. They still require model compatibility and proofs.
Object-level extension/crossing language remains in Def. A computation verifier
using these rules must consume independently proved rules without a circular
dependency on the very computation facts it certifies.

The near-126 reductions also belong to Main/Solution, grouped into
ChoiceIndependence, DifferentialReduction and ExtensionObstruction. Only the
final endpoint retains a Main Challenge/Solution pair; this also means that
computation, literature-input deductions and route obligations have no
intermediate Challenge mirrors. The final Solution assembles Propositions 7.8
and 7.9, whose proofs still contain `sorry`. This layout change does not
complete the remaining mathematical proof obligations.

Fixed CSV basis independence and spanning is a computation certification:
Interface produces it and Main consumes actual E2 coordinates and CSV values through
the `sphereBasis` field of `Challenge2.ComputationInterface`, in the same witness
as the presentation and differential table. Foundation inputs do not assume
that certificate. Its proof remains unfinished.

## External inputs

Results from earlier papers, published computations, Lin's program, and facts
read from the Appendix tables enter as audited source material. `Source/`
retains original artifacts and acquisition records. The independent
`KIP126/LinProgram/` owns the raw-to-interpreted program pipeline and local
certificates. `KIP126/Main/Solution/Computation/` owns consumer adapters.

The canonical machine-readable manifest is `docs/external-inputs.json`.
It records source IDs, precise locators, artifact paths and hashes, acquisition
status, source roles, and their links to Lean declarations and Blueprint nodes.
The old source inventory and route JSON have been consolidated into it; there
is no parallel Lean source registry or claim ledger.

Lean interfaces contain mathematical statements only. For example a
literature field has type `SphereVanishingLine ...`, rather than a proposition
wrapped with citation metadata. Computation fields retain their precise
interpretation, parameters and certification conditions. Removing metadata
wrappers does not remove any mathematical premise.

The temporary Main axiom directly states `challenge2 : KIP126.Challenge2`
while Interface constructs that witness. It correlates foundation
applicability, model bindings, literature, computation and internal
applications. Each external input has an auditable manifest record; internal
model transports and deductions are classified separately. Claims selected
for replay or verification remain Interface proof obligations. Claims retained
as external mathematical inputs remain explicit conditional hypotheses.

Every literature result used as a final premise or to formulate a development
assumption must have an auditable locator identifying a theorem, lemma,
proposition, equation, table, section, page or line. Unavailable primary text
must be marked explicitly, with the exact secondary locator actually used.
The checker validates declaration and Blueprint links, interface coverage,
source status, artifact membership, safe paths and SHA-256 equality. These
checks do not prove that the source entails the Lean statement. Full coverage
of MainPaper, faithful hypotheses, and the separation of external results
from internal applications remain mathematical-review obligations.

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

These are implications from explicit mathematical literature and computation
hypotheses, with their provenance recorded in the external manifest.

## Final proof-completion criteria

The project is complete only when all of the following hold:

- `lake build` succeeds with the pinned Lean/mathlib versions;
- all canonical KIP126 source outside the intentional Interface and Main
  Challenge statement tracks contains no `sorry` or `admit`, and canonical
  KIP126 declares no project `axiom`; Challenge statements retain their
  required `by sorry` bodies and are excluded from proof-completion evidence,
  while the isolated historical KIPBase component remains subject to its
  separate migration audit;
- the single Challenge2 axiom has been replaced by its proved construction;
  deleting the old Challenge1 pipeline does not discharge its preserved
  foundation applicability obligation;
- every external mathematical input has an explicit Lean hypothesis and a
  corresponding declaration/locator entry in `docs/external-inputs.json`;
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
