# Multica agent guidance

Read this file only if you believe you are an agent from Multica. Otherwise,
ignore it.

## Agent roles and scope

Agents running in this repository operate in one of two roles:

1. **General-purpose agents** have broad repository access appropriate to their
   assigned task. They are not restricted by the worker-only source boundaries
   below, but remain governed by their task, higher-priority instructions,
   review and merge authorization, and all other repository policies in
   `AGENTS.md`.
2. **Workers** receive one concrete implementation task: either rewrite or
   complete Lean Blueprint source, or implement Lean code. The worker-only
   contract below applies whenever an agent is assigned in that role.

If the task does not explicitly establish that the agent is a worker, do not
infer worker status solely because the task touches Lean or Blueprint files.

## Worker source boundaries

The bound worker skills define the generic authoring, review, and pull-request
workflow. This repository supplies only the mode-specific editable directories:

- Blueprint-only work may edit only files under `blueprint/src/`.
- Lean-only work may edit only `KIP126.lean` and `.lean` files under `KIP126/`.

If a worker task does not select exactly one mode, or requires a path outside
the selected boundary, stop before editing and request that the task be split or
clarified.
