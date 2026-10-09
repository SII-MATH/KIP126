# Second review: actual source naming and E3 coordinates

No correctness findings. `second_review.py` checks the four successful
compile records and frozen sources, then independently verifies every
canonical/staircase E3 coordinate in both directions and on every cycle.
It tests all 24 relabellings of each complete E3 carrier, for 48 named
actual-element bindings. Incorrectly swapping the detector interpretation
violates the explicit binding in all 48 tested cases.

For the first class, canonical `(a,b)` becomes staircase `(a,a+b)`;
the named `(0,1)` remains `(0,1)`. For the second, the coordinate change
swaps both coordinates, sending named `(1,0)` to staircase `(0,1)`.
Both initial E2 inputs, raw staircase IDs and distinct global basis IDs
are verified against SQL.

The detector input supplies an equation identifying the actual element
represented by the derived staircase coordinate with the detector's named
finite homology class. That equation contains no differential value. The
actual detector theorem applies to precisely this source element, uses
faithful target interpretations and full naturality, and derives the named
zero differential. The other actual source basis column is still a separate
premise; additivity uses both before claiming the whole map is zero.

The finite coordinate bridge does not automatically identify an arbitrary
actual `meaning.source` map. The explicit `binding` field is therefore a
necessary compatibility obligation and remains visible. This is consistent
with the documented conditional scope. The first E4 and second E5 endpoints
come from the same initial inputs; neither is a permanence theorem.

No frozen Lean source or registered object was modified. The review writes
only `second_review.py`, `second-review.json`, `second-review.log` and this
file. Earlier independent review evidence remains intact.
