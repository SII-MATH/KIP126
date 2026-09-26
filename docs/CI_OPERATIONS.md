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
   exact candidate cache. It still builds the combined queue tree and runs the
   sandboxed audits and guards. Multiple PRs producing a different combined
   tree get a different identity. An existing green PR status does not by itself
   skip the queue build.
   Scope and performance routing compare complete Git trees, including removals
   and mode changes. They do not use the compare API's 300-file list. Truncated
   tree responses still fail explicitly rather than hiding changes.
4. **main-validation** compiles and publishes main artifacts before strict
   completion checks (introduced in [#121](https://github.com/SII-MATH/KIP126/pull/121)).
   Its check name is distinct from `build`, because a queue SHA can become main
   without changing. Strict post-merge debt must not collide with the queue's
   required status. Publication certifies compilation, not proof completion.
5. **Blueprint/API documentation** consumes the producer's exact outputs via
   the #121 handoff. It is not one of the two ruleset-required checks. Missing
   producer outputs are diagnosed instead of triggering another cold build.

## Mixed development PRs and early feedback

`blueprint-pr` mechanically validates Blueprint changes even when the PR also
changes Lean, scripts, docs, or provenance files. Review-scope policy is separate
from running the checks. The renderer and dependency installation come from
trusted configuration; only `blueprint/src/` and the producer-supported Lean
sources are staged from the candidate. Symlinks and mismatches with the producer's
Lake/pin/KIPBase configuration fail with a specific error.

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

The Lean producer first runs one ordinary build. If compilation fails or a
watchdog expires, it reports that result without retrying the same expensive
build. After successful compilation, `--no-build --iofail` replays diagnostics
to classify warnings. A failed replay must also pass ordinary `--no-build`
validation before it counts as warning debt. Missing/stale outputs and genuine
audit errors remain failures. These options are tested with the pinned Lean
4.32.2, not assumed from a newer Lake release.

The main namespace is written only by main. The candidate namespace is separate,
and its publisher checks that the actual sandbox overlay matches the candidate's
build inputs. Python bytecode is excluded from the trusted-tooling contract;
source changes still invalidate it. Cache eviction always remains possible.

## Diagnose a wait or failure

Open the `pr-build` run's **Required build** summary. It records the event,
candidate SHA, main baseline, exact candidate cache hit/miss, inherited evidence,
sandbox outcome, and classified warning/axiom debt. Step durations distinguish
runner/setup time from compilation and audit time.

| Observation | Action |
| --- | --- |
| `build` fails in setup before the sandbox | Inspect the first failed guard/download/API step. Retry a transient service failure; fix a reproducible guard/tooling error. |
| Sandbox compiler or watchdog fails | Read the module/error in that step. Treat timeouts and actual compiler errors as unresolved; do not automatically mark them successful. |
| `build` passes, `warnings` or `scope` fails | This is a review-policy decision, not an unavailable compiler. Existing policy permits human-reviewed development debt; it does not certify completed proofs. |
| Main strict validation is red on warnings or axioms | Inspect final-proof debt. Successful main compilation remains available to PRs. Do not repair proof debt by weakening the audit. |
| Documentation says producer completed without outputs | Inspect that exact producer SHA and its cache publication/overlay match. Re-run the producer if outputs expired. |
| Automation checks fails on an infrastructure PR | Fix the candidate CI regression before landing it; a trusted-base `build` success does not validate edited workflows. |

No automatic retries of deterministic compiler/test failures, branch-protection
bypasses, or changes to proof/performance acceptance thresholds are introduced.
Existing running jobs keep their original workflow. The new trusted PR/queue
path takes effect after merge; one warm producer run is needed for its new
contract before exact candidate reuse can be measured.
