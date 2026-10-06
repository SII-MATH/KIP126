# CI operations

This is a reading and recovery guide for the checked-in workflows. Workflow files
and scripts define execution; branch protection and queue settings are configured
separately on GitHub.

## Workflow entry points

| Workflow | Responsibility |
| --- | --- |
| [Automation checks](../.github/workflows/automation-checks.yml) | Check proposed automation syntax and non-Lean regressions with read-only permissions and no persisted checkout credentials. Inspect it when changing CI tooling. |
| [pr-build](../.github/workflows/pr-build.yml) | Validate candidate sources and pins, compile offline in the sandbox, run repository checks, and publish build statuses and exact-input outputs for PRs and merge groups. Executable tooling comes from the trusted workflow configuration. |
| [CI](../.github/workflows/ci.yml) | Compile main, publish its compilation baseline, and run repository checks under the `main-validation` job name. |
| [blueprint-pr](../.github/workflows/blueprint-pr.yml) | Render candidate Blueprint source offline, then validate declaration mappings against exact producer outputs. Mixed PRs are checked too; only pure Blueprint PRs publish this workflow's `build`, `scope`, and `bump-guard` statuses. |
| [Blueprint frontier](../.github/workflows/blueprint-frontier.yml) | Optional manual generation of scheduling reports with read-only permissions. Only a manual run on main updates the single bot-owned issue comment; it is not a required merge check. |
| [Blueprint and API docs](../.github/workflows/pages.yml) | Build and check documentation. PR API previews require `docs-preview`; main, manual and scheduled runs retain full site generation. |

Candidate Lean sources include both KIP126 and KIPBase. Root configuration,
renderer and executable scripts remain trusted; candidate execution receives no
GitHub credentials. Source-scope review is a separate policy from compilation.

Frontier generation does not run on PRs or pushes, and its regression tests are
not part of the required automation suite. Use the local command documented in
[ISSUE_WORKFLOW.md](ISSUE_WORKFLOW.md) or dispatch the optional workflow when a
fresh scheduling report is useful. External-input classification follows the
explicit `proof_status` in [external-inputs.json](external-inputs.json); a
`data:` or `evidence:` label prefix, or a source citation on an internal
application, does not make that node an external input.

## Build outputs and caches

- Main compilation, exact candidate outputs, PR incremental outputs and pinned
  dependency environments use separate caches. Lake traces determine rebuilds.
- Incremental caches can seed compilation; documentation and inherited build
  evidence require the exact combined build inputs and the trusted producer
  contract. Partial cache matches cannot establish a successful build status.
- Merge groups may reuse a successful PR build only after validating its matching
  identity, status evidence and available exact outputs. Otherwise they compile.
- Candidate cache publication follows overlay verification. A green cache-save
  step alone does not establish publication; the producer checks availability.
- Cache service failures fall back to compilation or dependency fetching. Missing
  producer outputs are diagnosed by documentation consumers rather than silently
  starting another full compilation.

The PR producer performs one ordinary build; compiler failures and watchdog
failures require investigation. After successful compilation, `--no-build` checks
outputs before repository checks run. Development workflows do not run the strict
proof-completion audit or turn proof debt into a required status.
[scripts/Axioms.lean](../scripts/Axioms.lean) remains an explicitly invoked audit.
Compilation and cache publication do not certify mathematical completion.

## Diagnose a wait or failure

Start with the producer's **Required build** summary: candidate identity, baseline,
cache hit/miss, inherited evidence, sandbox result and repository-check result.

| Observation | Action |
| --- | --- |
| Failure before the sandbox | Inspect the first failed guard, download or API step. Retry a transient service failure; fix reproducible tooling errors. |
| Compiler error or watchdog timeout | Read the failing module and diagnostic. Resolve the failure before treating the build as successful. |
| `build` passes, `scope` fails | Inspect the source-boundary policy result. |
| Documentation reports missing producer outputs | Check that producer's identity and cache publication. Re-run the producer if outputs expired. |
| Automation checks fails | Fix the candidate regression; a build using trusted tooling does not validate edited workflows. |

## Documentation producer coverage

Every main push path that starts the documentation workflow also starts CI.
This includes Blueprint-only changes and documentation tooling/configuration:
a previous exact-input cache may have expired. CI restores the usual baseline
and uses Lake's incremental build, so an unchanged warm Lean graph does not
need recompilation; consumers continue waiting for the explicit producer and
never silently start a second build. A regression checks coverage of all docs
push patterns by the main producer.

KIPBase candidate sources are now overlaid by the trusted PR producer. Arbitrary
candidate root Lake configuration remains outside that automatic overlay: a PR
changing lakefile.lean still needs an infrastructure reviewer to arrange and
validate an appropriate trusted producer. An exact-input publication mismatch
must fail; it is not fixed by dropping the equality check or executing arbitrary
candidate build configuration with credentials. Blueprint-only PRs referencing
an old base whose cache has expired, and service failures after publication,
still require producer/cache recovery. Issue #122 tracks these remaining cases.
