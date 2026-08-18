## KIP126 trusted-infrastructure generation record

This bundle was generated for `surenny/KIP126` from the TauCeti baseline at
`f9451cdfb137000f0bf6f28f138887db15e65894`. It is intentionally not a raw
template copy. `canonical-workflow-hashes.sha256` and
`generated-workflow-hashes.sha256` pin the workflow generation; the complete
generated inventory is pinned by `generated-file-hashes.sha256`.

## Generated differences and trust boundaries

| Generated file | Required difference | Trust boundary |
| --- | --- | --- |
| `pr-build.yml` | Uses `KIP126/`, `KIP126.lean`, `lakefile.lean`, `surenny/KIP126`, `kip126-public`, KIP126's inventory/unit/Regression commands, and repository-local trusted helpers. TauCeti-only roadmap, graph, module-system, and environment-lint commands are absent. | Candidate code is limited to the KIP126 source overlay and a separately validated manifest/toolchain move; every elaborating command runs offline under `landrun`. Only public cache endpoints reach trusted setup, and no endpoint or credential enters the sandbox. |
| `ci.yml` | Builds every KIP126 module, runs the compiled audit and repository-approved tests, then optionally publishes only KIP126 root-package outputs through `kip126-r2 --repo surenny/KIP126`. | Upload secret and private endpoints exist only in the trusted default-branch producer. Missing cache configuration skips publication without weakening health. |
| `review.yml` | Uses the `euler-review.request/v1` contract, `EULER_*` variables, exact `workflow_run.pull_requests[0].head.sha`, newest `scope`/`build`/`bump-guard`, strict `/review` authorization, Euler idempotency, and initializer exclusion. | The protected webhook is never exposed to candidate code. The workflow never runs a model or reusable reviewer and preserves terminal exact-head semantic status. |
| `pr-profile.yml` | Uses KIP126 source paths, cache identity, forward-pin validator, and generated perf/profile helpers. | Candidate measurement is offline under the same `landrun`/watchdog boundary; host counters and tokens remain outside the sandbox. |
| `pr-labels.yml` | Runs the bundled Euler status projection from the trusted default branch with the repository token's narrow read/status and issue-label permissions. | Labels are advisory projections of re-read exact-head facts and never authorize merge. No App credential is required or exposed. |
| `auto-merge.yml` | Uses the repository-local `scripts/merge_gate.py` on successful `pr-build`, verified scoreboard updates, or manual dispatch; it never runs a reviewer. | It reads exact-head KIP126 statuses and trusted scoreboard metadata, routes red `scope` to human review, and enqueues only a ready PR with the repository `GITHUB_TOKEN`; no App credential or cross-repository backend is used. |
| `merge-sweep.yml` | Reconciles all open main-targeting PRs hourly or by dry-run dispatch through the same repository-local merge gate. | It only re-enqueues exact-head-ready PRs, fails closed on ambiguous GitHub state, and uses the repository token; it never reviews, updates branches, or crosses into TauCeti. |

All `actions/checkout` uses are pinned to
`11d5960a326750d5838078e36cf38b85af677262`; `leanprover/lean-action` is pinned
to `38fbc41a8c28c4cbaec22d7f7de508ec2e7c0dd9`. The generated audit imports
every module under `KIP126`, rejects a zero-declaration wiring, and permits only
`propext`, `Classical.choice`, and `Quot.sound`.

The bootstrap change deletes `euler-pr`, `euler-main-health`,
`euler-review-dispatch`, and `euler-auto-merge`; no compatibility listener or
independent `audit` status remains. Existing branches, active worker PRs,
specification, Blueprint, roadmap, provenance, and mathematical source are not
rewritten.

## Deferred substantive formalization

Initialization leaves these specification-owned gaps unchanged. None blocks
the structural build, compiled audit, or later proof dispatch; they block the
named mathematical layers and must be assigned to proof workers in dependency
order.

| Paths / target family | Current boundary | Mathematical/source dependency | Impact and suggested worker order |
| --- | --- | --- | --- |
| `KIP126/Classical/SpectralSequence.lean`; classical Adams instances | Empty aggregation namespace over the existing common spectral-sequence core. | `KIP126.Core.SpectralSequence`, stable/homological interfaces, and Blueprint classical Adams targets. | Blocks the classical Adams construction; dispatch after the common core and stable context are accepted. |
| `KIP126/Classical/FExtension.lean`, `KIP126/Classical/FExtension/Basic.lean`; F-extension API | Explicit empty placeholder modules. | Classical spectral sequence, extension algebra, and the specification's F-extension semantics. | Blocks F-extension/page-extension results; dispatch after classical spectral-sequence foundations, without importing legacy semantic degeneration. |
| `KIP126/Classical/PageExtensions.lean`, `KIP126/Classical/PageExtensions/Basic.lean`; page-extension API | Explicit empty placeholder modules. | F-extension, chosen-page presentations, crossing data, and external evidence contracts. | Blocks page-extension theorems; dispatch after F-extension and provenance APIs. |
| `KIP126/Comparison/ClassicalSynthetic.lean`; reindexing/comparison theorem family | Aggregation placeholder; typed comparison data already lives in `Basic.lean`. | Accepted classical and synthetic spectral-sequence interfaces. | Blocks full classical–synthetic comparison beyond the existing typed regressions; dispatch after both sides stabilize. |
| `KIP126/Synthetic/Adams.lean`, `KIP126/Synthetic/Adams/Basic.lean`; synthetic Adams and lambda-module API | Explicit empty placeholder modules. | Synthetic stable context, lambda quotient, external-result interfaces, and Blueprint synthetic Adams definitions. | Blocks synthetic spectral-sequence construction; dispatch after stable/synthetic foundations. |
| `KIP126/Synthetic/ExtensionSS.lean`, `KIP126/Synthetic/ExtensionSS/Basic.lean`; synthetic ESS | Explicit empty placeholder modules. | Synthetic Adams, classical F-extension, and lambda/rho/delta triangle data. | Blocks synthetic extension results; dispatch after synthetic Adams and classical extension foundations. |
| `KIP126/Synthetic/Rigidity.lean`, `KIP126/Synthetic/Rigidity/Basic.lean`; rigidity/lift interfaces | Explicit empty placeholder modules. | Synthetic ESS, comparison maps, and sourced rigidity hypotheses. | Blocks lift/rigidity theorems; dispatch after synthetic ESS and comparison. |
| `KIP126/Synthetic/SpectralSequence.lean`; remaining synthetic Adams instances | Aggregation placeholder over an existing typed `Basic.lean` API; Blueprint names include `SyntheticAdamsSS.h₄`, `h₀h₃Squared`, `lambdaMap`, and `weightPreserving`. | Synthetic Adams foundations plus catalogued external evidence. | Blocks complete synthetic Adams instances and comparison targets; dispatch after the synthetic Adams API. |
| `KIP126/Kervaire/Assumptions.lean`, `AppendixData.lean`, `MainTheorem.lean`; explicit inputs, appendix encoding, conditional endpoint | Explicit empty placeholder modules. | Completed lower layers, source-inventory/provenance ledgers, Appendix data, and the declared external-result boundary. | Blocks only the Kervaire endpoint. Dispatch assumptions/provenance first, Appendix encoding second, and the conditional main theorem last. |

No new theorem, definition choice, project axiom, `sorry`, or specification edit
is introduced by initialization.
