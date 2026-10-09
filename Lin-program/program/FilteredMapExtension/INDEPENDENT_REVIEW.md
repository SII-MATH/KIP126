# Independent review of filtered-map pages and crossings

All six frozen Lean leaves pass review. The definitions use actual additive
subgroups and quotient homomorphisms. Well-definedness uses the full source
relation subgroup. The next-source map is injective and surjects onto the
kernel by an explicitly corrected representative. The target step keeps
target filtration fixed through the necessary `(s+1,n)` to `(s,n+1)` shift;
its entire kernel is the current differential range. The resulting source
and target equivalences are actual additive equivalences.

`independent-review.py` uses literal finite sets and cosets of F2 squared,
independently of the existing review scripts. Across 1,179 filtered maps it
checks 18,864 source-kernel and 18,864 target-cokernel steps, 73,872
differential/extension pairs, and 4,716 length-zero pages. There are 1,530
cases requiring nonzero higher correction. Integer examples separately
establish nonzero source classes, nonzero differential, corrected survivor,
and target classes which are killed or retained by target advancement.

The crossing review checks 29,475 points and 76,896 all-representative
stability cases, including 1,134 length-zero and 432 positive-length
crossings. Among the latter, 108 have zero quotient differential. The Lean
finite-filtration exit argument proves the stated equivalence without an
infinite convergence assumption. The interval endpoints and filtered-map
lower bound are retained. The square transfer still requires the stated
first-side disjunction and final-side no-crossing hypothesis.

All six direct records match source and log hashes, exit zero, and a total
of 34 standard-or-no-axiom reports. Their current object hashes match the
direct records at review time. No production files were edited and no
global build was run.

These results concern the constructed two-term filtered additive-map pages.
The source correction quotient does not contain a preceding chain term.
Crossings need not be essential/nonzero on the quotient page. No identification
with the paper's ESS, synthetic comparison, or topological sphere instance
is proved here; the documentation states those limits accurately.
