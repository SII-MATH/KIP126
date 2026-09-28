# Blueprint graph semantics

## Contents

1. Nodes and edges
2. Coverage granularity
3. Readiness and completion
4. Cycles and connectivity
5. Dependency-cone review

## Nodes and edges

A node is a formalizable mathematical declaration identified by `\label`.
`\lean` maps it to Lean. `\uses{dep}` creates a directed dependency from the
node to `dep`: proving or constructing the node requires `dep`.

Record direct dependencies, not every transitive ancestor.

Statement dependencies are needed to formulate or type the declaration.
Proof dependencies are invoked only in the proof. Both affect scheduling.

## Coverage granularity

Blueprint all public or mathematically substantive obligations:

- definitions that determine meaning;
- theorems and interface lemmas used downstream;
- bridge lemmas that carry nontrivial dependencies;
- external and Mathlib facts that are load-bearing.

Private implementation details need entries only when they represent genuine
mathematics, carry scheduling-relevant edges, or are part of the promised
formalization surface. Do not demand a node for every local helper, generated
instance, or syntactic convenience.

## Readiness and completion

Distinguish:

- `statement-ready`: exact mathematical statement and stable Lean interface;
- `roadmap-ready`: statement-ready plus a finite proof sketch and resolved
  direct dependencies;
- `proof-complete`: accepted Lean implementation under project policy.

`\leanok` is evidence for a formal status, not a substitute for semantic review.
A graph tool cannot prove the Blueprint prose matches the Lean type.

## Cycles and connectivity

A dependency cycle usually indicates:

- two results were stated at the wrong granularity;
- a simultaneous construction should be one node;
- an implication was recorded in the wrong direction;
- a convenience lemma was mistaken for a foundation.

Resolve the mathematics instead of deleting an edge arbitrarily.

One connected goal cone is useful for a single-goal project, but it is not a
universal requirement. Multiple goals, independent APIs, and explicit external
roots may yield several legitimate components. Document them.

## Dependency-cone review

For target `T`, walk its dependencies bottom-up:

1. Does every edge name a real direct dependency?
2. Does the proof mention an undeclared lemma or construction?
3. Does Lean use a substantive helper absent from the mathematical account?
4. Is an external root classified as an input rather than a proof?
5. Is a Mathlib root verified against the pinned version?
6. Does every pending node have enough proof detail to avoid blind
   formalization?
