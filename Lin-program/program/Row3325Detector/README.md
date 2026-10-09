# Row3325 three-product E3 detector

Exact source: S0 (15,142), staircase3325, base="2", diff=NULL, level9000.
Target: S0 (18,144), complete E3 quotient dimension3. This construction
uses ordinary ring products, not the proof log's D154115 conclusion.

The factors are global E2 basis3, monomial1,1, generator1 degree(1,2);
basis42, monomial8,1, generator8 degree(4,18); basis72, monomial13,1,
generator13 degree(4,24). No unverified traditional name is assigned to
last two factors. All are checked d2 cycles in one-dimensional factor
quotients. Twenty-seven exact polynomial-ideal certificates establish all
source/target product columns. Six full bilinear quotient certificates
check cycle and boundary compatibility of the three product pairs.

Every named source product is literally zero before quotient. Target
product maps jointly reflect zero on every quotient class. `Combined`
proves this via the complete three-dimensional homology coordinates.
`differential_zero` assumes three local Leibniz squares on every source
class and preservation of zero for their product differentials. It proves
the named d3 zero without a prefix, without assuming desired zero and
without interpreting NULL as zero. Factor-cycle terms in the d3 Leibniz
rule are part of the explicit local squares; d2 cycle checks do not
establish those d3 premises automatically.

`Matches.matched` links the zero to a three-by-one candidate coordinate
column. All statements concern finite imported algebra. The database
relations and Adams interpretation remain external mathematical inputs;
C++ only provides certificates which Lean checks. No global Kervaire
exclusion follows from this local theorem alone.

All six Lean modules compile with Lean4.32.2. Both final theorem axiom
reports contain only propext, Classical.choice, and Quot.sound. review.py
checks exact factor degrees, target bases, every raw ring relation and
the three literal-zero source products; it passes.
