> Archived on 8 October 2026 from `docs/BLUEPRINT_MAINTENANCE.md`.
> This preserves the previous maintenance text and dated audit records; it is
> not a current status report. Relative Markdown links were adjusted for this
> location. Source paths and locators retain their original meaning.
> For current guidance, see the active Blueprint source and
> [PROJECT_BOUNDARY.md](../../PROJECT_BOUNDARY.md).

# Blueprint maintenance and source audit

The mathematical Blueprint is `blueprint/src/content.tex`. Its nodes state
mathematical objects, hypotheses, conclusions and proof dependencies. Repository
architecture, delivery assembly, source transcription, export coverage and build
checks are maintained here. This separation preserves Lean declarations and
mathematical claims; it does not promote any proof status.

This document preserves the audit records formerly included as the Blueprint's
provenance and coverage chapters. The single canonical source and input manifest
remains [external-inputs.json](../external-inputs.json); this document is an
explanation and historical audit index, not a second source registry.

## Mathematical reading order

The main text is organized into six themes: mathematical background;
extension spectral sequences and comparison foundations; generalized proof
tools; located literature theorems; interpreted finite computations; and the
proof of nonzero permanent survival of $h_6^2$. The comparison foundations
include the synthetic objects, quotient and page-extension machinery, and Moss
convergence; the generalized proof-tools chapter contains the Leibniz and
Mahowald rules that consume them.
A single mathematical appendix contains detailed algebraic and spectral-sequence
implementation details together with reusable auxiliary lemmas. The general
Adams-tower constructions belong to the mathematical-background chapter;
target-specific
objects used only by the final $h_6^2$ proof are kept with that proof.
The principal $h_6^2$ target appears in the main text. This order serves the
mathematical argument rather than the repository directory structure.

The chapter grouping preserves existing mathematical content, stable labels,
Lean links and proof status. Moving a definition or lemma into the mathematical
appendix does not remove its hypotheses or its place in the dependency graph.
Architecture, metadata inventories and audit procedures stay in this document.

## Architecture and trust boundary

`KIP126/Def/` fixes the mathematical model, route, shared background and reusable
mathematics. `KIP126/Interface/` constructs one correlated `Challenge2` witness:
its root fields are `literature` and `computation`, each with bindings and
results, and computation depends on that same literature delivery. The fixed
program presentation is a computation binding. `KIP126/Main/` consumes one
witness and derives the internal applications, intermediate statements and final
theorem. `KIP126/LinProgram/` supplies pinned program data, parameterized
interpretation and local certificates. Its source-metadata transcription is
independent of the mathematical deliveries.

The route model, shared background and fixed implementation are defined before
the deliveries. Fixed-sphere applicability and sphere-filtration separation are
Def-owned theorems with unfinished proofs. They are not extra witness fields.
Intermediate certification spectra such as `C2` and `Ceta` belong to Interface's
proof process if that process uses them; their absence is not an interface
completeness failure. The current target is standard nonzero permanent survival
of $h_6^2$. Geometry is outside the current project boundary; the classical
$\theta_5$ and $h_5^2$ literature needed for the selected route remains in scope.

The former notation $A(M)=\mathrm{Nonempty}(\mathrm{Inputs})$ described an
internal engineering view. It is not a mathematical object or the current
Challenge2 interface. The `Bindings`–`Statements`–`Application`–`Inputs`
layering describes how source bindings and results are assembled and consumed;
it does not justify a definition node combining those layers. The mathematical
graph now uses the actual located literature theorems, retaining all 48
correlated literature proposition fields and their hypotheses and provenance.
Retiring those assembly nodes changes no declaration, external theorem or
proof status.

During development Main consumes the sole project axiom
`Main.Axiom.challenge2 : KIP126.Challenge2`. Interface must construct its witness
without using this consumer axiom. There is no additional existence wrapper or
choice step. Final acceptance is governed by [PROJECT_BOUNDARY.md](../../PROJECT_BOUNDARY.md):
the development axiom must be replaced by the proved construction and every
relevant `sorry` dependency discharged. The intentional final Main Challenge
placeholder remains a statement mirror and is never proof-completion evidence.

## Sources, interface correspondence and status

Literature statements retain their precise hypotheses and selected model.
Computation statements retain the actual mathematical interpretation and
comparisons they require. The canonical manifest records source identifiers,
theorem/page/table locators, acquisition status, artifact paths and SHA-256
digests, with links to Lean declarations and Blueprint labels. No Lean citation
registry or proposition-with-citation wrapper is introduced.

Source results, computations, model comparisons and internal applications have
distinct roles. An internal consequence or transport of an external theorem
has its own proof obligation. Unavailable primary text and secondary locators
must remain explicit.

The current interface correspondence has 48 direct literature proposition
fields and 29 individual computation result statements plus four binding
comparison statements. Nested proposition records are expanded; coordinate
choices, interpretation data and assembly structures are excluded from the
statement count. The seven top-level computation result fields are structural
coverage records. The count does not assert logical independence or proof
completion. [check_external_inputs.py](../../scripts/check_external_inputs.py)
checks the manifest against active Blueprint inputs and Lean structures,
rejecting missing leaves, duplicate or inactive nodes, wrappers counted as
statements, and incorrect delivery-field links. Mathematical chapter ordering
need not follow that engineering inventory.

[check_source_inventory.py](../../scripts/check_source_inventory.py) checks artifact
paths, statuses and digests. Neither checker proves that a source entails a
Lean statement. Parsing, hash agreement, generated records, interface assembly,
successful compilation and declaration-name checks do not complete source
fidelity, model comparison or computation certification obligations.

Use `\leanok` only when the associated declaration and its mathematical proof
dependencies are complete; compilation alone is insufficient. A declaration
depending on `sorryAx`, a Challenge placeholder or a project axiom cannot be
marked complete. `\mathlibok` requires a matching declaration at the pinned
Mathlib revision. Unfinished paper results, adapters and semantic comparisons
retain their unfinished status. Dependency markers and renderer flags report
status; changing presentation must not strengthen a mathematical statement.

Routine checks are the pinned Blueprint PDF/web build, declaration check,
active-label/dependency check, source and external-input checks, and the Lean
checks appropriate to the affected declarations. Generated `blueprint/print`
and `blueprint/web` files are renderer outputs and must not be edited manually.

## Source coverage navigation

The source line ranges below describe the audited paper snapshot. They are
navigation records, not additional inputs or proofs.

| Paper location | Mathematical coverage |
| --- | --- |
| Introduction, `MainPaper/main.tex:78–252` | Excluded from formalization: geometric consequences, Adams two-line classification and open questions. The $h_6^2$ target and its Section 7 proof route remain in scope. |
| Section 2, lines 253–669 | Filtered two-term construction, essential/inessential extensions, crossings, comparison corollaries and exactness in the middle. Concrete $\eta$ and factorization applications occur after their needed hypotheses. |
| Section 3, lines 670–997 | Stable/synthetic context, $\nu$, $\lambda$, quotients, normalized maps and synthetic Adams objects; located Pstragowski/BHS results are separated from rigidity, $E_\infty$ and triangle deductions. |
| Section 4, lines 998–1272 | Weightwise extension spectral sequences, the $\lambda$–$\rho$–$\delta$ triangle and solution towers; located completeness is separated from finite/infinite formulas and crossing deductions. |
| Section 5, lines 1273–1601 | $\widehat f_{r-1}$ page reduction, exact indeterminacy, crossings and finite/infinite clauses; comparison, inversion and Hopf regressions occur with their required results. |
| Section 6, lines 1602–2101 | Generalized Leibniz rule, generalized Mahowald trick, page loss and stretching; May's two-triangle theorem is a located literature result. |
| Section 7, lines 2102–2782 | BJM/BX literature, high-stem deductions, choice independence, the unique possible $d_{12}$, Toda/two-extension arguments, Hopf-cofiber obstruction and final contradiction. |
| Appendix, lines 2783–3290, and Table 1 in Section 7 | Printed row/status transcription and export coverage, recorded below; these records do not establish actual page statements. |
| Active `MainPaper/112.tex:5–1029` | Figure 9 only. Lines 1031–1919 are commented duplicates and excluded. |

The higher-$\lambda$-power quotient remark at `MainPaper/main.tex:784–786`
was checked against Burklund–Xu Construction 7.7
(`Source/BurklundXu/paper.txt:3017–3039`). That construction cites
Burklund–Hahn–Senger Example C.15 and its surrounding Appendix-C deformation
machinery (`Source/BHSmot/paper.txt:4708–4719`). This is a verified source
remark rather than an isolated formal node or separate readiness obligation.
The mathematical graph retains quotient restriction/cofiber coherence; the
complete $\mathrm{CAlg}$ tower is outside the project boundary.

The Section 7 use at line 2496 is made noncircular by first establishing the
filtration-leading-term lemma `lem:toda-h0-leading-nonvanishing`. After Toda
candidate enumeration, `cor:h02x1259-d5-zero` deduces that the unresolved $d_5$
is zero. Every data-dependent argument uses the same interpreted computation
data. These are mathematical proof obligations, not consequences of source
transcription.

## Recorded source repairs

The following repairs were recorded in the former coverage chapter. Their
mathematical content belongs in the corresponding statements and proofs;
this list records why the Blueprint differs from the paper presentation.

1. At line 604, $z$ lies in $E_\infty(Z)$, not $E_\infty(Y)$.
2. At line 819, the Bockstein variable is $\lambda$, not $\tau$.
3. Proposition 4.6 separates an infinite target from its image in a finite
   $\lambda$-quotient.
4. Line 1522 uses $\widehat f_{r-1}$, as in Definition 5.1.
5. Proposition 6.20 gives typed ranges for the correction classes.
6. Line 2496's backwards dependency is replaced by the filtration-leading-term
   argument described above.
7. Lemma 7.20's lift from modulo $\lambda^3$ to modulo $\lambda^5$ requires
   independent obstruction vanishing.
8. Mapping cones remain triangulated until an explicit homological-functor
   bridge constructs the abelian spectral object.
9. The displayed AIM page is $E_r\cong Z_{r-1}/B_{r-1}$. The quotient $Z_r/B_r$
   appears after taking $d_r$ homology; filtered $E_0$ indices use explicit
   reindexing.
10. Arbitrary Adams spectral sequences have external pairings; internal
    multiplication requires explicit ring-object data.
11. Finite-quotient formulas use exponents at least two, and quotient maps
    retain their suspension and weight shift.
12. The untruncated maps $\lambda^n:\Sigma^{0,-n}\nu X\to\nu X$ and
    $\rho:\nu X\to\nu X/\lambda^n$ have separate boundary-quotient and
    cycle-inclusion formulas. The infinite $\delta$ argument does not
    extrapolate a finite-endpoint theorem.
13. Mahowald survival follows from the compatible lift produced by May's
    diagram, not from a converse for a preselected representative.
14. Page stretching uses a first-obstruction theorem and, at the infinite
    page, a coherent inverse-limit argument rather than objectwise
    completeness alone.
15. The Hopf finite crossing/loss certificate does not assume the $E_\infty$
    relation. It first proves stretching, then proves no crossing for that
    resulting relation.
16. The BJM–BX choice remains distinguished until choice independence extends
    the criterion to every order-two choice. The finite criterion explicitly
    quantifies over every $r\ge1$.
17. The normalized Hopf cofiber is $C([h_2])$, using $\widehat\nu=[h_2]$.
    $C(\lambda[h_2])$ is a comparison source. Its proof first constructs
    zero-tagged exactness and one compatible lifted triangle.

A repair changing a mathematical claim requires explicit review of that claim;
correcting a locator or notation must not silently change its hypotheses or
conclusion.

## Printed appendix transcription and export audit

The twelve printed tables contain 401 nonempty class records and nine zero
bands. Recorded statuses total 178 incoming, 174 known outgoing, 31 permanent
and 18 unresolved. These are statuses printed in the source, not certified
differentials or survival statements on the selected mathematical model.
`KIP126/LinProgram/SourceMetadata/` owns their typed transcription, including
`appendixRows`, row labels and locators. Unique keys, valid metadata and
enumeration checks remain distinct from expression decoding and mathematical
soundness.

The table below preserves both the printed status counts and the numerical
export audit dated 6 October 2026. “Selected” counts whether a paper row's
bidegree appears in the selected slice; it does not certify its expression or
status. Raw counts agree at each bidegree in the printed ranges.

| Printed table | Paper location; PDF page | Filtration | Incoming | Outgoing | Permanent | Unresolved | Rows / raw / selected | Printed zero bands |
| --- | --- | --- | ---: | ---: | ---: | ---: | --- | --- |
| 1: $S^0/\nu$, stem 126 | 2738–2773; 54 | $9\le s\le14$ | 12 | 10 | 1 | 3 | 26 / 26 / 26 | none |
| 2: $S^0$, stem 122 | 2804–2848; 56 | through $s=25$ | 16 | 13 | 5 | 1 | 35 / 35 / 22 | $s=9$–$10$, $s=0$–$7$ |
| 3: $S^0$, stem 123 | 2851–2903; 57 | printed range | 22 | 17 | 2 | 1 | 42 / 42 / 30 | $s=25$, $s=21$–$22$, $s=0$–$7$ |
| 4: $S^0$, stem 124, high | 2908–2958; 58 | $13\le s\le25$ | 24 | 13 | 6 | 0 | 43 / 43 / 43 | none |
| 5: $S^0$, stem 124, low | 2962–2992; 59 | $s\le12$ | 11 | 11 | 1 | 0 | 23 / 23 / 23 | $s=0$–$5$ |
| 6: $S^0$, stem 125, high | 2994–3018; 59 | $20\le s\le25$ | 6 | 10 | 1 | 0 | 17 / 17 / 17 | none |
| 7: $S^0$, stem 125, low | 3020–3078; 60 | $s\le19$ | 18 | 28 | 2 | 2 | 50 / 50 / 50 | $s=0$–$4$ |
| 8: $S^0$, stem 126, high | 3081–3135; 61 | $11\le s\le25$ | 29 | 15 | 1 | 2 | 47 / 47 / 47 | none |
| 9: $S^0$, stem 126, low | 3138–3171; 62 | $s\le10$ | 11 | 10 | 1 | 4 | 26 / 26 / 26 | $s=0$–$1$ |
| 10: $S^0$, stem 127, high | 3173–3197; 62 | $21\le s\le25$ | 5 | 11 | 1 | 0 | 17 / 17 / 17 | none |
| 11: $S^0$, stem 127, middle | 3200–3256; 63 | $10\le s\le20$ | 20 | 22 | 8 | 0 | 50 / 50 / 50 | none |
| 12: $S^0$, stem 127, low | 3258–3290; 64 | $s\le9$ | 4 | 14 | 2 | 5 | 25 / 25 / 25 | $s=0$ |
| Total | `MainPaper/main.tex`; 54, 56–64 | | 178 | 174 | 31 | 18 | 401 / 401 / 376 | nine bands |

Table 6 has one outgoing row with finite “possibly” ambiguity; Tables 8 and 9
each display that same ambiguous relation. They do not determine a unique
target. In particular, Table 9 records the $h_6^2$ row as unresolved, not as a
known nonzero $d_7$.

The hash-pinned raw databases were available in the local LFS object cache at
the dated audit. Selected-route reproduction, full sphere staircase
reproduction and the conservative bulk finite-page importer passed. The full
sphere staircase has 23,822 records; the bulk importer retains 10,907 equations
from 2,672,275 proof-log rows. These checks establish deterministic reproduction,
not correctness on actual Adams towers.

The full sphere staircase covers 375 sphere records; the selected $C\nu$ route
covers its 26 records. There are 321 paper records in the selected core window.
The nine zero bands cover 35 bidegrees, all empty in the full sphere $E_2$ data;
32 occur explicitly in the selected slice. The complete printed-expression to
program-coordinate and actual-page correspondence remains unfinished.

The historical selected-route inventory registered 671 records. The 23,822-row
sphere staircase consists of 7,893 known equations displayed in each
direction, 6,279 unresolved outgoing rows, 136 cumulative-boundary records and
1,621 threshold records. Its recorded SHA-256 was
`518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed`;
current artifact identity is checked against the canonical manifest. The
10,907-record differential export has 86 shards and preserves database IDs
from `proofs.db`'s 2,672,275 log rows. Branches, unknowns, other spectra,
extensions and sentinels have separate coverage accounting and are not
silently counted as certified sphere equations. The low-degree example table
has 86 cells and 27 vectors: 60 cells of dimension zero, 25 of dimension one
and one of dimension two. The Blueprint retains the relevant dimensions and
bases as mathematical statements, without treating these inventory totals as
mathematical theorem nodes.

An unresolved $d_7$ on $h_6^2$ is exported as arrival at $E_7$. A level-9000 row
means arrival at $E_{1000}$. Both permit incoming boundaries and do not assert
nonzero permanence. Deriving the two-target $x_{126,21}$ ambiguity and the
one-dimensional high-filtration $E_5$ component requires six refutations, the
known $d_4$ and complete page-coordinate linear algebra. The raw $(25,150)$
snapshot still retains two independent arrival vectors. The corresponding
mathematical deductions are in `near126.tex`, including
`prop:x_126_21-ambiguity`, rather than extra appendix inputs. The detailed
audit is [linprogram-appendix-20261006.md](../audits/linprogram-appendix-20261006.md).

Transcription checks compare normalized cell tags, expressions, spectrum and
bidegree, source-line coverage, unique row keys, zero bands, paired relation
identifiers and status totals. They must preserve every printed question mark
and the shared finite ambiguity, introduce no unprinted row, and never convert
a printed zero band into a proved page-vanishing statement. A metadata or
row-completeness certificate remains separate from spectral-sequence soundness.

The retired schema nodes `def:appendix-table-id`,
`def:differential-relation-id` and `def:appendix-row-catalogue` described the
twelve table identifiers, differential relation keys and source-shaped
transcription records. Their fields included spectrum, stem, filtration,
typed expressions, recorded status and exact source locators; zero bands were
separate display records. The corresponding Lean declarations and checks
remain in SourceMetadata. Joining incoming and outgoing displays by a common
key is a transcription validation step, not a proof of their differential.

The retained nodes `def:typed-class-expression` and `def:appendix-row-status`
now describe mathematical interpretation of expressions and differential,
arrival, boundary and permanent-survival conditions. They no longer equate a
compiled source-metadata datatype with that mathematical interpretation.
Their former `\leanok` markers have therefore been replaced by `\notready`.
The source transcriptions remain compiled, but the interpreted mathematical
definitions and their soundness are unfinished. This is a correction of the
completion claim, with no proof upgrade or new assumption.

The retired `def:appendix-evidence-record` was a planned schema combining
these metadata with artifact locators, versions, hashes, a method and a proof
of the interpreted status. Recording the schema supplied no such evidence
proof. `def:lin-computation-bundle` combined five catalogues, common archive
identity and reference-consistency checks. `def:near126-computation-input`
described the computation delivery assembly already explained above. None
of these engineering records supplies a new mathematical assumption or a
completed interpretation proof. The four class-label equations in the binding
inventory are definitional comparisons; the 33-field count does not assert
33 independent facts.

### Historical program seeds and archive scope

The paper's manual-input ledger at `MainPaper/main.tex:2785–2792` records

$$
\begin{aligned}
d_5(h_0^{24}h_6)&=h_0^2P^6d_0,\\
d_6(h_0^{55}h_7)&=h_0^2x_{126,60},\\
d_3(v_2^{16})&=\beta^5g\quad\text{in }tmf.
\end{aligned}
$$

These describe historical program seeds, not additional Challenge2 fields or
proved project inputs. Selected outputs depending on an image-of-$J$ seed
require mathematical certification of that seed, with its source or an
independent proof. A program reason code alone proves nothing. Source and
target degrees must be checked; program outputs must not serve circularly as
evidence for the seeds that produced them.

The tmf literature statement is $d_3(w_2^2)=\beta g^4$ from BR21 Table 5.4 /
Theorem 5.18, printed p.196 / PDF p.213. Its Blueprint node is
`thm:external-tmf-br21-d3-slice`. The two endpoint comparisons and the fixed
quotient relation $\beta g^4=\beta^5g$ give its program-coordinate consequence
`thm:main-tmf-br21-coordinate-differential`. This retains the mathematical
deduction separately from the historical ledger and adds no computation
differential field.

The archived computation is Zenodo record 14875701, version `v126.3.cw49`
(paper bibliography entries LWXMachine and LWXZenodo; paper lines 213–240 and
2785–2800). The historical full-archive coverage specification asks for all
49 CW spectra, their $E_2$ generators, relations and bases through their bounds,
all 180 maps, every supplied initial $d_2$, and every imported propagated
differential, extension, disproof or unresolved candidate. Records are to match
archive files and proof keys in both directions, with no omissions or orphan
records, and the three manual inputs are to occur once in their separate
ledger, outside machine output. Relevant degree bounds and foreign keys must
agree. Stable artifact paths, revisions and hashes are canonical-manifest data.

That full-archive specification is historical audit scope, not a field of the
selected sphere/Hopf-$\nu$ computation delivery. Certification remains
unfinished. Any replayed mathematical proof requires the relevant objects,
interpreted data and valid rules; an interactive plot or unversioned generator
name is insufficient provenance.

### Figure 9 and the historical source snapshot

Figure 9 (`MainPaper/112.tex:5–1029`, included at main source line 2152;
PDF p.43) is a derived display over stems 122–127 and filtrations 0–19.
Its left panel has 289 dots, 384 black structural edges and 157 colored known
differentials: 87 $d_2$, 44 $d_3$, 17 $d_4$, seven $d_5$ and two $d_7$.
Its right panel has 42 dots, 21 black edges and 12 dashed shortest-potential
differentials. Dashed arrows are unresolved candidates. The incomplete legend
and layout offsets for multiple classes prevent using the picture as
independent mathematical evidence. Commented duplicate lines 1031–1919 are
excluded.

The historical audited snapshot records 66 PDF pages and the following SHA-256
values. These preserve the former audit record; the current authoritative
artifact hashes remain in the canonical manifest.

| Historical artifact | SHA-256 |
| --- | --- |
| Paper PDF | `7cae269851a88d10dd194651dbf7497b75ef8b8b914bc1901dfa3734cd8096b4` |
| `MainPaper/main.tex` before label normalization | `1125462bcae4a4ec56e3bfcaad15df4febf98757dfb83462b155af162c99c9e0` |
| `MainPaper/112.tex` | `5eb83ef105ce9dbbda87a9f57726bb5c078308fd3718840ea29ee8100cbefabb` |

The normalized main source uses readable labels with original labels retained
as aliases, preserving mathematical text and line numbers. A future audit
must recompute hashes and PDF page count against the canonical manifest rather
than treating this historical table as a current verification result.

### Finite square-detector implementation checks

The mathematical detector evaluates generator 69 at $u$ and the other
generators at zero in $\mathbb F_2[u]/(u^3)$. Its soundness and the resulting
nonzero square in the specified quotient algebra remain mathematical
Blueprint nodes. The following parser and proof-assembly facts explain the
implementation and have been removed from the mathematical graph.

The singleton-separator string splitter agrees with the character-list
splitter. The character-list natural-number parser agrees with the library
parser, including underscore rules and malformed inputs. Consequently the
string and character-list relation/chunk checkers return the same Booleans.
The corresponding declarations are
`KIP126.LinE2.SquareDetection.splitOn_singleton_eq_list`, `toNat?_eq_chars`,
`relationCheck_eq_chars` and `chunkCheck_eq_chars` in that namespace. Their
proofs compare the substring offset recursion with list splitting, rewrite
numeric parsing as character iteration and a fold, and compose the equalities
through monomial and relation checks. These were formerly grouped under
`prop:lin-square-parser-equivalence`.

Certified chunks can be joined by a newline; splitting at that inserted
separator concatenates their split lists, and the universal Boolean test
becomes a conjunction. The declarations `charsChunkCheck_join`,
`charsChunkCheck_append`, `charsChunkCheck_ofList`, `firstRelations_check` and
`allRelationsCheck_of_chunks` in `KIP126.LinE2.SquareDetection` formalize this
assembly. The three initial relations pass by kernel computation. The
conditional assembly lemma says that certificates for the remaining chunks
give the original full-table result; it does not itself construct those
certificates. This was formerly `prop:lin-square-certificate-composition`.

The separate archive certificate does verify all 227 remaining chunks,
which together with the three initial relations cover 231,848 relations.
Small character-list leaf proofs are joined and transported back using
$\operatorname{toList}(\operatorname{ofList}(l))=l$, with types matching the
archived string literals. Eight consecutive batches cover the archive.
`archivedChunks_check` and `allRelationsCheck_eq_true` combine these checks;
`dataH6Sq_ne_zero` then applies mathematical detector soundness. The initial
nonvanishing conclusion does not require additive-basis certification or
the admitted soundness of the general Gröbner reducer. Parser agreement,
batch coverage and this local quotient conclusion must not be presented as
completion of the actual Adams comparison or permanent-survival proof.

## Historical statement traceability index

This index preserves the former frozen source-to-Blueprint table, beginning
with Section 2 of `MainPaper/main.tex`. Source labels are from the audited
aimpaper snapshot; unlabelled statements remain unlabelled. Mathematical
statements and their full hypotheses remain in the paper and Blueprint nodes.
A row's presence supplies navigation, not a proved claim. Blueprint labels are
used rather than rendered theorem numbers, which change with chapter layout.

| Statement | Source label | Mathematical Blueprint label |
| --- | --- | --- |
| $f$-extension spectral sequence | `def:ess` | `def:f-extension-ss` |
| Essential $f$-extension | `def:768fba8a` | `def:f-extension-essential` |
| Representative criterion and competing targets | `prop:8154e6f1` | `prop:fextension-iff-detected`, `prop:fextension-inessential-iff-higher` |
| Map-filtration lower bound and initial vanishing | unlabelled | `cor:fess-below-map-filtration-zero` |
| Crossing hitting filtration $p$ | `def:98skj23` | `def:fess-crossing` |
| No crossing and uniform detection | `prop:i8r47oe` | `prop:no-crossing-iff-uniform-detection` |
| Commutative-square propagation | `thm:4114f70c` | `thm:fess-commutative-square` |
| Unrestricted square propagation | `cor:0012nik` | `cor:fess-square-naturality` |
| Triangle-shaped shift | `cor:166dc180` | `cor:fess-triangle-shift` |
| Composition of extensions | `cor:290d35ce` | `cor:fess-composition` |
| Stable-page maps | `cor:e7b20ae2` | `cor:fess-map-of-stable-pages` |
| Zero composite makes target permanent | `cor:aed3d1a4` | `cor:fess-zero-composite-permanent` |
| Middle exactness makes permanent cycles boundaries | `prop:cfe810af` | `prop:fess-exact-middle-boundary` |
| $\nu$ and cofiber sequences | `prop:1f7950df` | `thm:external-nu-cofiber-criterion` |
| Synthetic spheres $S^{s,w}$ | unlabelled | `def:synthetic-sphere` |
| $\lambda$ and quotients | unlabelled | `def:synthetic-lambda-quotient` |
| Quotient restrictions and coherence | Construction 7.7 | `prop:lambda-quotient-restriction-coherence` |
| Synthetic Adams rigidity | `thm:rigid` | `thm:external-synthetic-rigidity` |
| Adams and $\lambda$-Bockstein comparison | `thm:17e90ac0` | `thm:external-lambda-bockstein` |
| $E_\infty$ of $\nu X$ | `prop:30e8b746` | `thm:external-synthetic-einfty-nu` |
| $E_\infty$ of $\nu X/\lambda^r$ | `prop:59f111f` | `thm:external-synthetic-einfty-quotient` |
| Positive-filtration factorization | `prop:ef21f9bc` | `thm:external-synthetic-lift` |
| Lifted synthetic triangles | `prop:41561db2` | `thm:external-synthetic-triangle-lift` |
| Normalized triangle from homology exactness | unlabelled | `prop:normalized-synthetic-triangle` |
| Only $d_0$ in $\lambda^n$- and $\rho$-ESS | `prop:9770ae6e` | `prop:lambda-rho-ess-only-d0` |
| Classical $d_r$ and $\delta_n$ extensions | `prop:6de7d130` | `prop:delta-ess-formula-infinite`, `prop:delta-ess-formula-finite`, `thm:delta-classical-equivalence` |
| $\lambda$-multiple $\delta$ formula | `cor:2a636737` | `cor:delta-ess-lambda-multiples` |
| Classical differential crossing | `def:classicalcrossdiff` | `def:classical-differential-crossing` |
| Classical and $\delta_n$ crossing equivalence | `prop:cross-dr-En` | `prop:classical-crossing-iff-delta-crossing` |
| $(f,E_r)$-extension | `def:6c076a33` | `def:page-extension` |
| Page-extension crossing | `def:41d51149` | `def:page-extension-crossing` |
| Page and synthetic crossing equivalence | `prop:cross-f-Er` | `prop:page-crossing-iff-synthetic-crossing` |
| Generalized Leibniz rule | `thm:e73f481e` | `thm:generalized-leibniz` |
| Generalized Mahowald trick | `thm:158d451a` | `thm:generalized-mahowald` |
| Restriction and obstruction certificate | `prop:dec738d3` | `prop:page-extension-restrict`, `prop:page-extension-loss-certificate` |
| Page stretching | `cor:dfc6043e` | `cor:page-extension-stretch` |
| $h_6^2$ permanent survival | `thm:126survives` | `thm:h6-square-permanent` |
| BJM/BX criterion and an order-two choice | `thm:bjmbx` | `thm:external-bjm-bx-criterion` |
| $\theta_5^2$ filtration alternatives and killers | `fact:theta5sqAF` | `evidence:near126-core` |
| Permanence/nonzero $d_{12}$ alternative and $C_3,C_4,C_5$ | `prop:possible_h_6_sq` | `prop:possible-h-6-sq` |
| $C_3$ excludes $C_5$ | `prop:state5false` | `prop:near126-c3-not-c5` |
| $x_{123,9}$ survival and incoming exclusion | `fact:x_123_9` | `evidence:x_123_9` |
| $h_0^2x_{125,9,2}$ survives to $E_5$ | `fact:h_0_sq_mul_x_125_9_2` | `evidence:h_0_sq_mul_x_125_9_2` |
| Conditional two-extension relation | `cor:2ext125` | `cor:near126-two-extension` |
| $h_1x_{121,7}$ survives to $E_6$ | `fact:h_1_mul_x_121_7` | `evidence:h_1_mul_x_121_7` |
| $h_6Md_0$ and $h_5x_{91,11}$ permanence | `fact:stem122` | `evidence:stem122-permanent` |

The former graph labels `chap:provenance-audit`, `def:kip126-trust-boundary`,
`chap:coverage-audit`, `sec:appendix-export-coverage`,
`def:near126-figure-contract`, `prop:lin-computation-provenance`,
`prop:appendix-manual-inputs`, `thm:lin-computation-catalogues-complete`,
`data:table-cnu126`, `data:table-s122`, `data:table-s123`,
`data:table-s124-high`, `data:table-s124-low`, `data:table-s125-high`,
`data:table-s125-low`, `data:table-s126-high`, `data:table-s126-low`,
`data:table-s127-high`, `data:table-s127-middle`, `data:table-s127-low`,
`thm:appendix-all-rows-encoded` and `prop:paper-source-snapshot` referred to
engineering or source-transcription records. Their removal from the
mathematical graph does not discharge any unfinished computation or
interpretation proof. Mathematical deductions must depend on the interpreted
results and comparisons they actually use, rather than row counts or hashes.
