# Crossing of leading images in actual filtered groups

The filtration here consists of decreasing actual additive subgroups.
`ExactAt G p y` means y belongs to filtration p and not p+1.
`NoCrossing f H G low high` quantifies over every higher-source correction
in H and excludes its nonzero leading image in the interval [low,high).
It does not enumerate a stored list of extension rows.

`higher_of_noCrossing` proves, one filtration step at a time, that this
absence forces all corrections into filtration high, provided their
images already lie in filtration low. The reverse implication uses only
decreasingness. Combining this equivalence with the representative-stability
theorem gives `noCrossing_iff_all_representatives` and a commuting-square
transfer stated using these absence conditions.

The lower-image condition is essential. `Counterexamples.lower_bound_needed`
has all images outside the inspected range, so no crossing is observed but
stability fails. The empty interval is checked separately.

These definitions concern actual filtered groups and representatives.
They do not assert equivalence to the paper's three distinct crossing
definitions for essential extension-ESS/classical differentials. Such an
identification still requires representative detection, essentiality and
boundary quotient comparison theorems. Consequently `square_transfer` is
a proved filtered-algebra component, not the paper's Theorem 6.1.

Direct compilation: `python3 program/FilteredRepresentativeCrossing/compile.py`.
The two leaves print six standard-axiom reports. There is no new wire
schema, C++ trust, global convergence assumption or finite-list shortcut.
