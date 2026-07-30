---
name: leanblueprint-dag
description: Design, inspect, and repair the mathematical dependency graph of a classic Lean Blueprint. Use when adding or checking \uses edges, finding broken references, cycles, isolated nodes, missing proof sketches, formalization frontiers, or incomplete dependency cones; when deciding what can be formalized next; or when aligning Blueprint graph structure with project goals.
---

# Lean Blueprint DAG

Make the Blueprint dependency graph an honest model of the mathematics. A node
must not appear ready merely because a hard dependency was omitted.

## Load the graph policy

Read [references/graph-semantics.md](references/graph-semantics.md) before
changing dependency edges or declaring the roadmap complete.

## Select the graph tool

Prefer `leandag` when the project already pins and uses it. Otherwise run the
bundled dependency-only analyzer:

```sh
python3 .agents/skills/leanblueprint-dag/scripts/blueprint_graph.py .
python3 .agents/skills/leanblueprint-dag/scripts/blueprint_graph.py . --format json
python3 .agents/skills/leanblueprint-dag/scripts/blueprint_graph.py . \
  --focus thm:target
```

The bundled analyzer reads the transitive `\input` tree, statement/proof
`\uses`, labels, Lean mappings, markers, cycles, isolated nodes, and a
conservative proof frontier. It does not inspect Lean proof terms; pair it with
`$leanblueprint-audit` for semantic and Lean alignment.

## Workflow

### 1. Identify goals and allowed roots

List the goal nodes whose proofs define project completion. Identify legitimate
roots:

- primitive definitions;
- verified Mathlib anchors;
- explicit external inputs or project assumptions;
- independent goals intentionally outside another goal's dependency cone.

Do not assume every project must be one connected cone. Multiple independent
goals and explicit trust-boundary roots are valid when documented.

### 2. Inspect the target cone

For a target, inspect the node and its transitive dependencies. For each node,
check:

1. the statement exists and has a stable label;
2. every `\uses` target resolves;
3. the proof has a finite mathematical route or the node is an explicit input;
4. the listed dependencies match what the proof actually invokes;
5. each dependency is itself complete or intentionally pending;
6. the intended Lean mapping is exact or explicitly not ready.

### 3. Repair bottom-up

Work from roots toward the target:

- correct stale or misspelled labels;
- add missing mathematical nodes through `$leanblueprint-author`;
- add omitted direct dependencies;
- remove only genuinely unused edges;
- split circular decompositions rather than concealing a cycle;
- write missing proof sketches before sending the node to a prover;
- add verified Mathlib anchors for load-bearing imported facts.

Re-run the graph tool after every substantial batch.

### 4. Triage isolated nodes

Give each isolated substantive node one disposition:

- `wire`: add the missing incoming or outgoing dependency;
- `keep`: document why it is an independent goal or boundary root;
- `remove`: delete only when it is obsolete and no goal or live Lean
  declaration needs it.

Do not infer that isolation always means deletion.

### 5. Compute the formalization frontier

A conservative ready node has:

- a stable non-`\notready` statement;
- a Lean mapping;
- a finite proof sketch;
- no unresolved `\uses`;
- all direct dependencies completed according to project policy.

Before dispatching Lean work, also verify the proposed Lean signature and the
mathematical truth of the node. Graph readiness is necessary, not sufficient.

## Completion criteria

Declare the Blueprint dependency model complete only when:

- every substantive node needed by a goal is represented;
- all direct dependencies are transcribed and resolve;
- no unexplained cycles remain;
- every unproved project node has a finite proof route;
- isolated nodes have explicit dispositions;
- external and Mathlib roots are classified accurately;
- graph structure agrees with the current project goals and trust boundary.

Lean `sorry` counts do not determine roadmap completeness. They determine proof
completion and belong to `$leanblueprint-maintain`.
