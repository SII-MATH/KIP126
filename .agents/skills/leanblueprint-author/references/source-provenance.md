# Source and provenance policy

## Contents

1. Provenance classes
2. Literature
3. Computation and data
4. Mathlib
5. Trust-boundary rules

## Provenance classes

Classify non-original content before writing:

- published theorem or definition;
- proof adapted from a source;
- verified Mathlib declaration;
- machine computation or dataset;
- explicit project assumption;
- project-original argument.

Do not let one class masquerade as another.

## Literature

Record the strongest locator available:

- source identifier and bibliographic key;
- theorem, proposition, definition, section, equation, or table number;
- page when stable;
- local file path or URL used for verification.

Use a short exact excerpt only when it materially aids later verification.
Respect copyright limits and do not copy long proofs merely to prove that a
source was opened. The Blueprint body should be a faithful restatement in the
project's notation, not a memory-based paraphrase.

Suggested comments:

```tex
% SOURCE: [Key], Theorem 3.2, p. 17
% VERIFIED-IN: references/key/paper.pdf
```

If the proof route is adapted rather than copied:

```tex
% PROOF-SOURCE: [Key], proof of Theorem 3.2; adapted to the present notation
```

When the source cannot be checked, say so and keep the node not ready.

## Computation and data

Record:

- program or dataset identity and version;
- input parameters;
- output artifact or row identifier;
- whether the result is recomputed, imported, or assumed;
- the Lean interface that consumes it.

Do not describe an imported computation as a theorem proved by Lean.

## Mathlib

Verify the exact declaration with the current pinned Mathlib version. Compare
the complete type, including universes, typeclasses, hypotheses, and conclusion.
Only then use `\mathlibok`.

A naming-convention guess is not verification.

## Trust-boundary rules

Keep external inputs visible as roots or boundary nodes. A project may permit
axioms or assumptions in designated files; that policy must be explicit and
audited by location. Do not generalize “no new axioms” into a false claim that
the project has no external trust boundary.
