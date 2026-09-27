# CI latency and recovery

## Measured baseline (2026-09-26)

These timings are observations before the queue-cache change, not speedup claims.

| Run | Wall time | Where the time went |
| --- | --- | --- |
| [PR #120 build](https://github.com/SII-MATH/KIP126/actions/runs/36225152182) | 13m 19s | Required PR producer |
| [PR #120 merge group](https://github.com/SII-MATH/KIP126/actions/runs/36225840615) | 12m 54s | Mathlib setup 1m 38s; sandbox build/audit 11m; main cache miss |
| [Main strict CI](https://github.com/SII-MATH/KIP126/actions/runs/36226517679) | 9m 27s, failed | `--iofail` rejects existing warning/proof debt; compilation cache was formerly saved only after this step |
| [Main documentation](https://github.com/SII-MATH/KIP126/actions/runs/36226517685) | 28m 13s | Separate documentation pipeline |

The main ruleset requires `build` and `bump-guard`. At inspection, the merge queue
allowed two concurrent builds, required one entry to merge, and had zero batching
wait. Its 360-minute response timeout is a maximum, not a deliberate delay.
Increasing queue concurrency would not remove the repeated compilation above.

## Execution and trust

1. **Automation checks** runs candidate Python/shell/workflow syntax checks and
   non-Lean regression tests on `pull_request`, with read-only permissions,
   no persisted checkout credentials, and a ten-minute timeout. It tests the
   proposed CI code even though the privileged required workflow continues to
   execute trusted main tooling. A repair PR must inspect this check in addition
   to its required build. This check is not added to the repository ruleset by
   this change.
2. **pr-build** restores the exact main compilation baseline, or the latest
   trusted main baseline when the exact entry is absent. It then prefers an
   exact candidate cache keyed by all committed build inputs and the trusted
   build contract. Cache service failures fall back to compilation. Lake's
   dependency traces decide what must be rebuilt.
3. **merge_group** computes the same candidate identity and restores the same
   exact candidate cache. After its guards and overlay verification, it may reuse a
   completed PR build whose full combined-input digest and trusted build contract
   match, provided exact outputs still exist on main's cache scope. The status must
   come from GitHub Actions and link to a successful pr-build run on that PR head.
   Different combined inputs, changed contracts, newer failures, unavailable API
   evidence, forks, or evicted outputs all fall back to the normal sandbox build.
   Scope and performance routing compare complete Git trees, including removals
   and mode changes. They do not use the compare API's 300-file list. Truncated
   tree responses still fail explicitly rather than hiding changes.
4. **main-validation** compiles and publishes main artifacts, then runs
   repository regression and integrity checks. Development CI does not run
   proof-completion audits or publish proof-debt reports. Its name remains
   distinct from the required `build` status on a queue commit.
5. **Blueprint/API documentation** consumes the producer's exact outputs via
   the #121 handoff. It is not one of the two ruleset-required checks. Missing
   producer outputs are diagnosed instead of triggering another cold build.

## Mixed development PRs and early feedback

`blueprint-pr` mechanically validates Blueprint changes even when the PR also
changes Lean, scripts, docs, or provenance files. Review-scope policy is separate
from running the checks. The renderer and dependency installation come from
trusted configuration; only `blueprint/src/` and the producer-supported Lean
sources are staged from the candidate. Symlinks and mismatches with the producer's
Lake/pin configuration fail with a specific error. Both `KIP126` and `KIPBase`
source trees and their root modules are replaced by the candidate versions,
including deletions, just as in the PR/merge-group Lean producer. Candidate
KIPBase changes still follow the existing human scope-review policy; this does
not prevent their actual source from being compiled. Root Lake configuration
and scripts remain trusted, and candidate Lean code runs only in the sandbox.

Rendering runs in an offline sandbox before waiting for Lean outputs and reports
`blueprint-render` immediately. Declaration validation then consumes exact
producer outputs without rebuilding the root libraries. Candidate TeX cannot
modify `.lake` during rendering, so it cannot poison the subsequent trusted
dependency fetch. Candidate Lean/declaration loading also runs offline without
credentials. Additional helper scripts or Markdown files in a PR do not become
executable trusted tooling.

Only a *pure* Blueprint PR publishes `build`, `scope`, and `bump-guard` from
`blueprint-pr`. Every other PR leaves those contexts to `pr-build`, including
failed/unknown Blueprint classifications. This prevents a render-policy result
from racing with and overwriting a real Lean build result. The existing semantic
review and automatic-merge policy still applies separately.

The Lean producer runs one ordinary build. A compiler error or watchdog timeout
fails the required check without retrying the compilation. Successful outputs
are published, then `--no-build` verifies them before repository checks run.
Development PR, merge-queue, and main CI do not invoke the canonical axiom audit,
promote Lean warnings to failures, publish debt statuses/summaries, or require
proof-debt review. Historical KIPBase CI checks archive hashes and compilation;
its full migration/dependency audit is also explicitly invoked, not automatic.
The retired `warnings` context is ignored by merge projection
and build inheritance, including historical red statuses. Native compiler
diagnostics remain in the build log.

`scripts/Axioms.lean` remains a strict, explicitly invoked proof-completion tool.
It is not a development workflow or report. A compiling PR is not a claim that
its mathematics is fully proved.

The main namespace is written only by main. The candidate namespace is separate,
and its publisher checks that the actual sandbox overlay matches the candidate's
build inputs. Python bytecode is excluded from the trusted-tooling contract;
source changes still invalidate build-status evidence. Compilation may reuse an
older contract's exact-input outputs, but the current sandboxed build and repository checks
always run before publishing current evidence.

Each PR also retains its latest successful compilation in a separate incremental
namespace scoped by PR number and Lake configuration/pins. A source edit can
therefore reuse unaffected modules from that PR rather than falling back only to
main. Lake validates dependency traces and recompiles changed modules. These
partial-match seeds are never accepted by documentation consumers or status
inheritance; only newly validated, exact-input outputs are published for those
consumers. Merge groups validate the combined candidate's identity before reusing
any evidence. Cache eviction always remains possible.

## Diagnose a wait or failure

Open the `pr-build` run's **Required build** summary. It records the event,
candidate SHA, main baseline, exact candidate cache hit/miss, inherited evidence,
sandbox and repository-check outcomes. Step durations distinguish runner/setup
time from compilation.

| Observation | Action |
| --- | --- |
| `build` fails in setup before the sandbox | Inspect the first failed guard/download/API step. Retry a transient service failure; fix a reproducible guard/tooling error. |
| Sandbox compiler or watchdog fails | Read the module/error in that step. Treat timeouts and actual compiler errors as unresolved; do not automatically mark them successful. |
| `build` passes, `scope` fails | This is the automatic source-boundary policy; proof debt is not a development CI status. |
| Documentation says producer completed without outputs | Inspect that exact producer SHA and its cache publication/overlay match. Re-run the producer if outputs expired. |
| Automation checks fails on an infrastructure PR | Fix the candidate CI regression before landing it; a trusted-base `build` success does not validate edited workflows. |

No automatic retries of deterministic compiler/test failures, branch-protection
bypasses, or changes to final proof-completion/performance acceptance thresholds are introduced.
Existing running jobs keep their original workflow. The new trusted PR/queue
path takes effect after merge; one warm producer run is needed for its new
contract before exact candidate reuse can be measured.

## Cache publication permissions

GitHub gives `pull_request_target` read-only cache tokens by default. A denied
cache save logs a warning while the step remains green. The sandboxed producer
therefore explicitly declares job-level `cache-mode: write`. It only publishes
the PR namespaces after the trusted overlay comparison; candidate execution is
still offline and receives neither cache runtime credentials nor GitHub tokens.
The workflow also verifies an exact, nonempty cache entry at the run's ref and
reports confirmed publication in its summary. A transient cache service failure
does not invalidate a successfully checked proof, but must never be reported as
a cache hit or successful publication.

See [GitHub's cache-mode announcement](https://github.blog/changelog/2026-09-10-control-github-actions-cache-access-with-cache-mode/).
The pinned actionlint schema predates this field; only its exact unknown-key
message is suppressed, and the job's permission and cache boundaries have
regression coverage.

## Dependency setup, documentation previews, and routine review events

PR and queue builds restore Lean toolchains and Mathlib packages using an exact key
covering OS, architecture, toolchain, manifest, and root Lake configuration. Cache
misses use the normal trusted dependency fetch. Only complete dependency downloads
are saved, before any candidate Lean executes; candidate outputs never enter this
dependency cache. Save failures do not turn a successful fetch into a failed build.

PRs keep Blueprint rendering and declaration/link checks, but full API generation
requires the `docs-preview` label. Adding the label starts a preview; removing it
cancels the previous run through the existing concurrency group. Main pushes and
manual/scheduled runs retain full site generation.

Automatic Review events that are stale, closed, draft, outside the supported source
scope, waiting for prerequisite checks, or unrelated to an Euler task skip without
dispatching a reviewer. Explicit ineligible review requests and actual API/configuration
errors still fail with a reason. This does not publish a proof-debt report or change
required build/merge checks.
