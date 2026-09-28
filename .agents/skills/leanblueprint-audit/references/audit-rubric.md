# Lean Blueprint audit rubric

## Contents

1. Structural questions
2. Mathematical questions
3. Lean alignment
4. Provenance and trust
5. Coverage and granularity
6. Evidence standard

## Structural questions

- Is every live chapter reachable from the entry file?
- Are labels unique, nonempty, and stable?
- Does every reference resolve?
- Are `\uses` lists syntactically and semantically valid?
- Are theorem-like environments balanced and annotated?
- Are custom macros defined for print and web output?
- Do marker combinations have coherent meanings?

## Mathematical questions

- Is the statement true at the stated generality?
- Are all hypotheses and quantifiers explicit?
- Do definitions match their intended mathematical objects?
- Does the proof follow from the listed dependencies?
- Does “obvious” hide a substantive lemma?
- Are alternative routes distinguished instead of conflated?
- Does the chapter cover every remaining project phase or goal it promises?

## Lean alignment

Compare the entire Lean type, not merely the declaration name.

Check:

- universes and ambient categories;
- typeclass assumptions;
- indices, grading, variance, and coercions;
- explicit versus implicit hypotheses;
- equality versus equivalence/isomorphism;
- existential versus chosen data;
- conclusion strength and direction;
- namespace and declaration visibility.

For definitions, compare mathematical meaning and usable API, not just type.
For proofs, tactic differences are irrelevant when the mathematical route is
the same; different or circular mathematical arguments are relevant.

## Provenance and trust

- Does every external result have a real source and exact locator?
- Was the local source actually checked?
- Is a quotation exact and short enough for its purpose?
- Is a computation reproducible or explicitly imported?
- Does `\mathlibok` name a real declaration with an equivalent type?
- Are allowed axioms confined to documented files?
- Is an external input represented as an input rather than a fake proof?

## Coverage and granularity

Coverage is not raw declaration parity.

Require a node for every substantive mathematical declaration. Usually omit:

- private local helpers with no standalone meaning;
- generated instances that only expose existing structure;
- aliases and abbreviations with no new dependency;
- implementation lemmas that are immediate syntactic normalization.

Include a helper when it is reusable, nontrivial, load-bearing, public, or
needed to make the proof DAG honest.

## Evidence standard

Every drift finding should show:

1. Blueprint label and TeX location;
2. Lean name and source location;
3. relevant Blueprint statement;
4. actual Lean signature or body fact;
5. precise discrepancy and consequence.

Negative results are useful. State how many items were checked and that no
drift was found.
