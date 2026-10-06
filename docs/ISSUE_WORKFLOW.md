# GitHub tasks and the Blueprint

GitHub Issues are the task inbox: discovery, assignment, discussion and links to
pull requests. The Blueprint remains the mathematical dependency graph and the
record of node status. PROJECT_BOUNDARY.md controls scope and proof acceptance;
Lean source records implemented statements and proofs; docs/external-inputs.json
records external source locators and artifact provenance.

Use the formalization issue form for bounded work. Link stable Blueprint labels,
source locators, Lean targets, direct prerequisites, explicit inputs and concrete
acceptance checks. Engineering tasks may use N/A for mathematical labels.
Assign an issue before working on it. Keep proof attempts, counterexamples,
failed approaches and design decisions in its comments; link the resulting PR.
An issue may accept a corrected statement without demanding its proof, when its
scope explicitly says so. Closing such an issue never marks the Blueprint proof
complete. Development allows explicit unfinished proofs under the project axiom
policy; final acceptance remains strict.

## Path review rules

These rules are the equivalent path review policy requested by issue #82. They
apply through the PR template and maintainer review, alongside the existing
workflow scope/build gates; they do not install a new branch protection rule.
Maintainers select an appropriate reviewer rather than assigning a guessed team.

| Changed paths | Required review responsibility |
| --- | --- |
| blueprint/src/** | Mathematical statement, dependencies, labels and truthful proof status |
| KIP126/**, KIP126.lean | Mathematical interfaces, correlated witnesses and proof/trust boundary |
| MainPaper/**, Source/**, docs/external-inputs.json | Primary-source locators, provenance, hashes and faithful transcription |
| KIP126/LinProgram/** | Deterministic data interpretation plus computation certification boundary |
| .github/**, scripts/**, Lake/toolchain files | Infrastructure, candidate execution isolation and input identity |
| KIPBase/**, docs/migration/kip-base/** | Historical migration isolation and component build contract |

The old reference/** directory has been replaced by MainPaper/ and Source/;
review the actual owned paths above. Mixed PRs need each applicable review.
Do not bypass existing semantic review or scope restrictions.

## Generated frontier

Run `python3 scripts/blueprint_frontier.py --output-dir /tmp/kip126-frontier`.
The generator reads active Blueprint inputs, including proof dependencies, and
rejects unknown dependency labels, duplicate labels, cycles and unsupported
TeX constructs. It never edits Blueprint status. Only unfinished internal nodes
with a Lean target and completed direct prerequisites appear in the frontier.
Completion uses the explicit Blueprint markers; it is not inferred from builds.
The report is a scheduling projection, not an independent proof audit.

External literature inputs and recorded computation evidence are shown
separately, as are open questions and nodes lacking stable Lean targets. Their
presence does not assert truth, certification or acceptance of external premises.
Ranking counts distinct transitive dependents in the existing DAG, then sorts by
label; it measures potential reach, not a promise that those nodes become ready
immediately. Each entry includes its label, declarations, direct prerequisites,
Blueprint location, source locator metadata where present and matching open
issues. An absent matching issue is explicitly reported as unassigned.

The Blueprint frontier workflow regenerates JSON and Markdown artifacts after
relevant main pushes, and updates one bot-owned comment on issue #84. The original
issue body and human comments are preserved; repeated runs update the same
comment. Publication checks the main revision to avoid publishing an obsolete
snapshot. A PR runs generation/tests with read-only permissions and never
publishes. The workflow must be merged before automatic publication becomes
active. The complete report is available as a workflow artifact; the comment is
a bounded preview with a link to that run.
