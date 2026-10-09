# Added certificate families and review points

| Family | Mathematical semantics | Executable data path | Sound theorem |
|---|---|---|---|
| Staircase | Invertible basis and selected spans | SQLite C++ exporter, strict JSON, lin_cert | checkBasis_sound, selected_iff_coordinates |
| PageTransition | Cycles modulo boundaries equivalent to coordinates | Gaussian C++ exporter, JSON, page_comparison%, lin_cert | checkComparison_sound, homologyEquivalence |
| NamedElement | Explicit relation ideal plus every characteristic2 valuation | Source-name/coordinate extraction, JSON witness, lin_cert | check_sound, check_sound_evaluate |
| Induced map | Map on the actual homology quotient, compatible with coordinates | C++ Gaussian exporter with two squares; strict JSON, induced_map%, lin_cert | checkCompatibleMap_sound, induced_coordinates_all |
| Matrix naturality | Propagated vector equation on one fixed page | Checked differential square, lin_cert and diagnostics | check_sound |
| Filtration coherence | Boundary inclusion and monotonic spans | Bounded Boolean masks, lin_cert | checkCoherent_sound |
| Module expression | Relations between free-module generators preserve evaluation | C++ explicit witness packer, versioned strict JSON, module_bundle%, module_cert | check_sound_evaluate, checkWire_sound |
| Affine homology | Every candidate is a cycle outside the entire boundary image | Separator plus matrix checks, lin_cert | AffineHomology.check_sound |
| Connecting | Connecting value from exact sequence, independent of lift | Typed witness equations, connecting_cert | checkConnecting_sound, connecting_independent |
| Affine | All allowed unknown linear combinations exclude target | Separator, lin_cert | checkExclude_sound |

Review the exact definitions before applying them to topology. A theorem about
an imported finite filtration is not by itself a theorem about the classical
Adams spectral sequence. The missing comparison must be proved, not assumed
because object labels match. Canonical parsers, hashes and source-row IDs give
traceability only. Both unknown data and missing proof premises remain explicit.
