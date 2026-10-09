# Actual graded Adams data to the certificate system

`Basic.system` constructs `PermanentCycleCertificates.System` from the
existing graded F2-linear `AdamsSpectralSequence`, its actual
`CertifiedAdamsPages` quotient identifications, and one additional explicit
law: `ZeroMeaning` identifies each zero homology class with the next page's
zero vector. A bare equivalence of types cannot supply that law.

For a fixed bidegree, System index n is the actual Adams page n+2.
Outgoing is the full group in `AdamsTarget (n+2) degree`. Incoming contains
every source bidegree whose Adams target is the fixed degree, with its full
carrier and degree equality. A Unit summand supplies the zero boundary
also in negative-source-filtration cases where there is no such bidegree.
`incoming_image` proves that this full source has exactly `PageBoundary`
as image, rather than substituting a selected source list.

The transition agrees with the supplied quotient identification on cycles;
its total extension sends noncycles to zero. `quotient_zero_iff` uses the
checked inverse quotient maps and `ZeroMeaning` to derive the exact
cycle-boundary criterion. This proves the required `homology_zero` field
of System instead of taking that field as another premise.

These are explicit abstract graded spectral-sequence data. No object named
sphere or tmf is thereby identified with a topological spectrum, no finite
basis is automatically complete, and no manual differential becomes a
theorem. The copied Reference definitions and their precise provenance
are in `ManualInputObligations/Reference/`. Its ordinary product Leibniz
interface does not prove the paper's generalized Theorem6.1.

`compile.py` records serial compiler exits, source/log/object fingerprints
and distinct failed logs. Root Lake integration and exhaustive axiom audits
are recorded separately. All proof terms use the Lean kernel and standard
axioms only; C++ plays no role in these mathematical bridges.

`Trace.lean` proves that each `ManualInputObligations.Trace` endpoint on
page n+2 is exactly `system.at initial n`. It handles the page equality
cast explicitly and uses the cycle transition at each step. It also derives
all incoming values being cycles from the true graded differential-square
law, and derives the zero and incoming-cycle laws required by the
cycle-filtration bridge. Independent reviews of Basic and Trace are kept
in separate reports with their respective author/reviewer attribution.

The Unit-plus-source representation may contain multiple encodings of
zero. Thus a whole incoming-source Subsingleton premise can be stronger
than necessary. An all-input zero-map theorem is the appropriate tail
interface when a legitimate source bidegree exists but its map vanishes.
This representation issue does not affect the exact image theorem.
