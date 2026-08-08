# KIP126/Classical/Adams/Basic.lean

## Strong convergence and spectrum binding

- Added a spectrum-indexed `TwoCompleteStableHomotopy` target and `SpectrumBoundClassicalAdamsSS` wrapper.
- Added coherent eventual-page comparison with the associated graded of the Adams filtration.
- Replaced eventual vanishing in the strong interface by completeness, exhaustiveness, and separatedness, allowing infinite stem-zero filtration.

## Sphere algebra and h4 regression

- Added bilinear, unital, associative, and Leibniz-compatible sphere `E₂` multiplication laws.
- Added bilinear/Leibniz external pairing laws, lawful sphere module actions, and an explicit external-to-internal sphere product comparison.
- Required the named `h_j` representatives and `h₀h₃²` target to be nonzero.
- Added a theorem that consumes a `CataloguedExternalResult` and derives the `(1,16) → (3,17)` h4 calculation.

## Blueprint status (for review agent)

- The tracer-bullet theorem text should describe `cataloguedAdamsOneLine` as a provenance constructor and `cataloguedAdamsOneLine_h₄_degrees` as the consuming theorem.
- The existing `leanok` marker should be reassessed after that prose-only correction.

## Declaration readiness

- `StrongClassicalAdamsConvergence`: fully polished; no `sorry` or project axiom.
- `SpectrumBoundClassicalAdamsSS`: fully polished; binds the abutment filtration to the chosen spectrum.
- `SphereAdamsAlgebraPresentation`: fully polished; includes bilinearity, units, associativity, Leibniz, and nondegeneracy.
- `ExternalAdamsPairingLaws`, `SphereAdamsModuleLaws`, and `SphereAdamsExternalCompatibility`: fully polished.
- `cataloguedAdamsOneLine_proof` and `cataloguedAdamsOneLine_h₄_degrees`: fully polished and ready for Blueprint review.

## Validation

- `lake env lean KIP126/Classical/Adams/Regression.lean`: passed.
- `lake build`: passed all 1841 jobs.
- Axiom verification for both new catalogue-consuming theorems: only `propext`, `Classical.choice`, and `Quot.sound`.
- LSP diagnostics for `Basic.lean`: clean. The LSP restart used to refresh `Regression.lean`'s imported `.olean` cache stalled; the standalone compiler and full Lake build both passed the regression.

## Why I stopped

Real progress: strengthened spectrum binding, strong convergence, sphere algebra laws, nondegeneracy, and located-result consumption without changing existing declaration signatures.
