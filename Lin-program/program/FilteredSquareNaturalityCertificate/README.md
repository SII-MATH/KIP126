# Certified naturality on constructed pages

The existing finite filtered square certificate now also proves naturality
on every page of the two constructed filtered-map sequences. `square D h`
uses the exact maps `D.f`, `D.g`, `D.p`, `D.q` and complete filtrations in
the fixed caller input. No page map or naturality theorem is an input field.

`ResultValid D` states the actual `pageMap`/`pageD` commuting equation for
all nonnegative lengths and filtrations and every element of each page.
The reliable checker reuses `FiniteFilteredSquareCertificates.check`:

```lean
example : FilteredSquareNaturalityCertificate.ResultValid input := by
  filtered_naturality_cert using certificate
```

This checker verifies more than naturality needs: its three extensions and
stability premises are sufficient but unnecessary for the commuting-square
conclusion. No completeness equivalence for this new goal is claimed.
`of_wellFormed` gives the general theorem from only the whole filtered
commuting-square data.

`Examples.lean` transports all 863 existing C++ square certificates to the
all-pages naturality proposition, reusing their actual kernel proofs. It
also uses the tactic on the nonzero and corrected-representative inputs.
The generic quotient construction proves descent, differential compatibility
and identity/composition laws in `FilteredTwoTermNaturality`.

Direct compilation: `python3 program/FilteredSquareNaturalityCertificate/compile.py`.
Both leaves compile successfully, with four standard axiom reports. The
results concern actual algebraic quotient pages of the supplied filtered
maps. Identifying these with the paper's topological spectral sequences
remains a separate mathematical obligation.
