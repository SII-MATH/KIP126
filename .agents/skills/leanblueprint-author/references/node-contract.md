# Blueprint node contract

## Contents

1. Required fields
2. Node classes
3. Statement and proof dependencies
4. Readiness test
5. Common failure modes

## Required fields

A substantive Blueprint node should carry:

| Field | Requirement |
|---|---|
| Environment | `definition`, `lemma`, `theorem`, `proposition`, or another supported theorem-like environment |
| Human name | Optional short title when it improves navigation |
| Stable label | One unique `\label{kind:slug}` |
| Lean mapping | Exact `\lean{Qualified.name}` when stable; otherwise `\notready` |
| Dependencies | Direct mathematical dependencies through `\uses{...}` |
| Statement | Precise mathematical prose with all hypotheses and quantifiers |
| Proof | A finite, mathematical route or an explicit explanation of why the node is an input |
| Provenance | Exact source or evidence record when the content is not project-original |

Minimal project theorem:

```tex
\begin{theorem}[Human-readable title]
  \label{thm:stable_slug}
  \lean{Project.Namespace.theoremName}
  \uses{def:input,lem:key_step}
  Precise mathematical statement.
\end{theorem}

\begin{proof}
  \uses{lem:proof_only_dependency}
  Step-by-step mathematical proof.
\end{proof}
```

Planned theorem:

```tex
\begin{theorem}
  \label{thm:planned}
  \notready
  Precise statement whose Lean interface is not yet stable.
\end{theorem}
```

Verified Mathlib anchor:

```tex
\begin{lemma}[Imported result]
  \label{lem:mathlib_anchor}
  \lean{Exact.Mathlib.declaration}
  \mathlibok
  \textit{Provided by Mathlib.}
  Faithful restatement in the project's notation.
\end{lemma}
```

## Node classes

### Project obligation

The project owns the Lean declaration and proof. Give it a complete informal
statement and proof route. `\leanok` is earned only by verification.

### Mathlib anchor

Use only when the exact imported declaration has been checked and the Blueprint
statement is equivalent to its type. It is a completed dependency, not a project
proof obligation.

### External input

State the input and its provenance explicitly. Connect it to the project's
formal assumption or input interface, but do not use `\mathlibok` and do not
write a fictitious proof.

### Planned node

Use `\notready` while either the mathematics or Lean interface is unstable.
Planned nodes still need a precise provisional statement and known dependencies.

## Statement and proof dependencies

`\uses{a,b}` means the current node directly depends on `a` and `b`. Prefer
direct dependencies over the full transitive closure.

- Put dependencies required to formulate the statement in the statement block.
- Put facts used only by the proof in the proof block.
- Do not omit a hard dependency to make a node appear ready.
- Do not add unused edges “for completeness”; they obscure the real frontier.
- Break cycles by revisiting the mathematical decomposition, not by deleting an
  inconvenient edge.

## Readiness test

A node is ready for Lean work only when:

1. its statement is precise and believed true;
2. its trust status is explicit;
3. its direct dependencies resolve;
4. its proof route is finite and exposes required intermediate lemmas;
5. its intended Lean name and generality are stable, or the implementation task
   explicitly includes creating them;
6. relevant sources have been checked.

Rendering success alone is not readiness.

## Common failure modes

- The prose omits a hypothesis present in Lean, or adds one Lean does not have.
- A `\lean{...}` target exists but formalizes a weaker or different statement.
- A proof cites a result without a `\uses` edge.
- A helper is omitted even though it is a substantive reusable lemma.
- Every tiny private helper is promoted, turning the Blueprint into source-code
  documentation rather than a mathematical roadmap.
- A paper theorem is marked `\mathlibok`.
- A statement receives `\leanok` because its file compiles even though its
  Blueprint prose has drifted from the Lean type.
