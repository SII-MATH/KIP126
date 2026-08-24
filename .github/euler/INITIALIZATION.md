## KIP126 trusted-infrastructure generation record

This bundle was generated for `surenny/KIP126` from the TauCeti baseline at
`f9451cdfb137000f0bf6f28f138887db15e65894`. It is intentionally not a raw
template copy. `canonical-workflow-hashes.sha256` and
`generated-workflow-hashes.sha256` pin the workflow generation; the complete
generated inventory is pinned by `generated-file-hashes.sha256`.

## Generated differences and trust boundaries

| Generated file | Required difference | Trust boundary |
| --- | --- | --- |
| `pr-build.yml` | Uses `KIP126/`, `KIP126.lean`, `lakefile.lean`, `surenny/KIP126`, `kip126-public`, KIP126's inventory/unit/Regression commands, and repository-local trusted helpers. It reports the pin-only `bump-guard`, validates the narrow reviewer mixed-sync protocol, builds the Lean side, and dispatches exact-head review after a successful branch-reconciliation build. | Candidate Lean code is overlaid on trusted configuration and elaborated offline under `landrun`. A mixed PR is admitted only when its exact parent, recommendation authorization, same-repository head, and Blueprint-only reviewer delta all agree. |
| `ci.yml` | Builds every KIP126 module, runs the compiled audit and repository-approved tests, saves exact-commit build outputs in GitHub's cache for PR reuse, then optionally publishes KIP126 root-package outputs through `kip126-r2 --repo surenny/KIP126`. | Only successful default-branch CI writes the exact-commit GitHub cache; PR jobs restore it without saving. Upload secrets and private endpoints exist only in the trusted default-branch producer. Missing external cache configuration skips that publication without weakening health. |
| `blueprint-pr.yml` | Builds Blueprint source and declaration mappings, including the Blueprint side of an exactly authorized reviewer mixed synchronization. Blueprint-only PRs publish all mechanical contexts; mixed PRs publish only `blueprint`, leaving shared contexts to `pr-build`. | Candidate rendering and Lean run without credentials. Mixed-sync authorization is validated by workflow-pinned trusted projection code before candidate execution. |
| `review.yml` | Uses the `tauceti-review.request/v1` contract, exact current PR head, newest mechanical evidence, strict `/review` authorization, a branch-reconciliation dispatch path, TauCeti idempotency, and initializer exclusion. It refreshes the status label after each dispatch outcome. | The protected webhook is never exposed to candidate code. The workflow dispatches one pinned TauCeti review; its exact-head scoreboard is the sole semantic verdict. |
| `pr-profile.yml` | Uses KIP126 source paths, cache identity, forward-pin validator, and generated perf/profile helpers. Its `perf` result is advisory and deliberately absent from branch and automatic-merge gates. | Candidate measurement is offline under the same `landrun`/watchdog boundary; host counters and tokens remain outside the sandbox. |
| `pr-labels.yml` | Runs `scripts/pr_status` from the trusted default branch and reconciles the five advisory lifecycle labels from mechanical evidence, mixed-sync authorization, mergeability, and the canonical TauCeti scoreboard. | Labels are idempotent projections of re-read exact-head facts and never authorize merge. No second numeric aggregate, status verdict, or summary comment exists. |
| `auto-merge.yml` | Uses the same repository-local `scripts/pr_status` reducer as label projection on successful mechanical workflows, canonical TauCeti scoreboard updates, or manual dispatch. Without a native queue, every event shares one global coordinator and a persistent `merge-train-head` label. | It reads exact-head mechanical statuses and trusted scoreboard metadata directly, rejects stale or mismatched evidence fail-closed, advances only the single train head, and enables final native auto-merge with `SQUASH`. |
| `merge-sweep.yml` | Advances the fallback merge train immediately after a `main` push, hourly as a missed-event repair, or by dry-run dispatch. This personal private repository has no merge queue, so it serializes candidates instead of speculatively updating every open PR. | It selects at most one exact-head-green candidate (clean before behind, then oldest PR), persists that head across refreshed build/review evidence, evicts terminally blocked heads, explicitly re-dispatches exact-head build/performance evidence after branch updates, and never rewrites forks or conflicts. |

All `actions/checkout` uses are pinned to
`11d5960a326750d5838078e36cf38b85af677262`; `leanprover/lean-action` is pinned
to `38fbc41a8c28c4cbaec22d7f7de508ec2e7c0dd9`; `actions/cache` restore/save
uses are pinned to `0057852bfaa89a56745cba8c7296529d2fc39830`. The generated audit imports
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
