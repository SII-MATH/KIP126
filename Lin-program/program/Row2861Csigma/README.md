# Row2861 detected by the Csigma bottom cell

The complete source is S0(9,136), named E2 local1, raw staircase row2861
NULL9000. Its Csigma bottom-cell image is zero. The actual target map from
S0(12,138) to Csigma(12,138) is injective on the full one-dimensional E3
quotients. Thus local d3 naturality and zero preservation force the source
differential to be zero, without assuming that desired zero or a prefix.

Actual.lean checks28 bottom-cell module coefficient columns in six full
matrices via the strict ModuleToModule importer. Ring coefficients act on
the actual Csigma generator0; module relations and their reduction traces
are explicit. Comparison.lean checks four full d2 comparisons and both
chain-map squares. Naturality proves the named source image zero and
reflection of zero for EVERY class by the induced target quotient map.
Matches connects the result to an explicit1-by-1 candidate column.

The proof lead T153702 was used only to choose a detector. Its string and
the following D153703 are not theorem inputs. The bottom-cell map's
identification with the actual Adams map, local naturality and imported
d2 semantics remain external mathematical obligations. In particular no
standalone map database exists for this implicit module action; the
coefficient action and module-generator description are the source.

review.py checks the28 columns, exact raw unknown, pinned hashes and
byte-identical regeneration. Register Row2861Csigma.Matches. No shared
files were modified and no lake build was run.

All four Lean modules passed direct -j1 compilation. The main theorem uses
only propext, Classical.choice and Quot.sound. No sorry, new axiom or
native_decide is introduced.
