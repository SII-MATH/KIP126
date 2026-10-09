# Actual Fact 7.6(4) branch slice

`relevant-records.json` preserves all 26 matching records from the fixed
proof release for S0 at (stem,s)=(126,21) and (125,25), including original
file, ID, depth, reason, source/target and full diagnostic text.

The source basis at (s,t)=(21,147) has local vectors 0,1,2 (global IDs
3748--3750). The queried source is local 0. The target (25,150) has local
0,1,2,3 (global IDs 3992--3995). The two first d2 columns agree and are
nonzero; the latter two are zero. Thus a target cycle has first two bits
equal. There are eight possible cycle vectors.

Depth-one records 154532--154537 exclude respectively {}, {3}, {2},
{2,3}, {0,1}, {0,1,3}. The remaining values are {0,1,2} and {0,1,2,3},
the affine line with base {0,1,2} and uncertainty span {3}. Record 154545
is a D conclusion for source local 1, not local 0. Later record 2425016
still records an unknown differential for local 0. None of these facts
licenses treating a T record as an unconditional theorem.

`CandidateReduction.lean` proves exhaustive reduction of the eight actual
bit patterns under the cycle constraint and six explicit refutation
hypotheses; the resulting affine membership and affine nonzero statement
are kernel checked. The six refutations are NOT discharged by this file.

Required missing branch premises:

- 154532: Leibniz multiplication by S0(30,12) local0, its cycle through d7,
  the existing d4 on S0(156,33) local1, and the residual target local0
  not in B3 at (155,37). The hypothetical d4=0 is promoted to d7=0
  inside the branch; this additionally needs intervening target-space
  vanishing and cannot be obtained from ordinary d4 naturality alone.
- 154533--154535: the corresponding d4 product map and an existing d4,
  plus nonmembership of the difference in B3. Polynomial monomial names
  alone do not prove the multiplication table or Leibniz law.
- 154536--154537: the S0->tmf map on the actual E4 source/target,
  source-image information, and nonmembership of tmf(125,25) local1
  in B3. An N tag or the number 999 is not sufficient.

Even after those six refutations, proving the sole E5 survivor requires
the existing source-local1 d4 hitting target local3, complete boundaries,
and quotient independence of the named survivor. The affine reduction
is a finite checked component, not a completed proof of Fact7.6(4).

## Whole quotient conclusion

`QuotientConclusion.lean` supplies the next completely checked algebraic
step. With target differential row [1,1,0,0] and boundary columns
e3 and (1,1,1,optional), it constructs a comparison for both Boolean
values of optional. The inclusion is e2, projection is x0+x2, and explicit
up/down homotopies verify the identity on the entire four-dimensional
space. `whole_quotient` is an equivalence of the actual cycle/boundary
quotient with one F2 coordinate; `survivor_not_boundary` and
`survivor_generates` identify local2 as the nonzero generator. Removing
either boundary fails the comparison checker.

To identify this finite quotient with the requested E5 group still requires:

1. Establish d4(source local1)=target local3 from a sound replay of
   D154545 and its seven refutations T154538--154544 (the log's D tag is
   not itself evidence). This supplies the first boundary column e3.
2. Establish the six scoped refutations T154532--154537, with the
   complete-cycle constraint and candidate reduction. This supplies
   the second boundary column (1,1,1,optional) for source local0.
3. Prove that these columns together with previously killed classes
   give exactly all boundaries, and that the complete E5 cycle space
   at this degree is represented by x0=x1. Inclusion of two boundaries
   alone would not rule out an additional boundary killing e2.
4. Bind local2 to the named element g^4 Delta h1 g using the release
   generator/monomial identity. The inspected E2 row is global ID3994,
   monomial `13,4,51,1`, at (25,150).

The theorem is unconditional about its explicitly defined finite matrices;
these four dataset/topology identifications remain separate obligations.

## D154545 leaves now checked

`d154545-leaf-data.json` contains read-only SQLite extracts for all nine
bidegrees mentioned in T154538--154544. `D154545Leaves.lean` proves three
actual finite nonmembership leaves using all stored incoming columns of
length <4:

- S0(139,29): B3=span(e2,e1), residual=e0, separator=e0.
- CW_2_eta(131,26): B3=span(e2), residual=e1, separator=e1.
- RP3_6(132,26): B3=span(e3+e5,e2,e4+e5), residual=e5,
  separator=e3+e4+e5.

These are checked statements about the extracted matrices. Their
identification with the complete true Adams B3 still requires the page
bridge; no differential log is trusted. The extra sphere example verifies
that including the incoming d4 kills the residual, so the B3/B4 distinction
matters mathematically.

`D154545.lean` proves exhaustive reduction of the seven actual tried values
to e3. It also proves a compressed obstruction version: cycle condition,
vanishing of two residual-coordinate functionals (bit0 and bit2), and
nonzero value force e3. Finally `supplies_boundary` maps the conditional
matrix-differential conclusion into `InImage d4 e3` for the quotient bridge.

Still missing are the actual product-map identifications that pull the
three checked residual obstructions back to these seven source-candidate
contradictions, and the cycle/Leibniz/known-d4 premises. In particular the
zero candidate T154538 relies on an already supported d4 in RP3_6 after
hypothetical promotion to d7; neither that promotion nor the Leibniz law
is inferred from the stored prose. D154545 is therefore not yet an
unconditional Adams theorem, despite these now-closed linear leaves.

## Reproducible batch extraction

Run `python3 program/BranchReplayCertificates/export_leaves.py` from the
repository root. It scans all 26 selected events for actual `not in B_k`
diagnostics, groups 13 references into five unique leaves, queries the
released SQLite files read-only, and takes every stored incoming column
with 2 <= level <= k. It invokes the existing C++ linear exporter for
separators and the existing strict Lean generator for `GeneratedLeaves.lean`.

All five generated nonimage theorems compile by kernel `lin_cert`:
CW_2_eta(131,26) residual1, RP3_6(132,26) residual5,
S0(139,29) residual0, S0(155,37) residual0, and tmf(125,25) residual1.
The last two extend the earlier three manually inspected leaves and cover
all residual nonmembership diagnostics in the relevant Fact7.6(4) slice.

`leaves.matrix` and `leaves.jsonl` are executable exporter inputs/outputs;
`leaves-provenance.json` binds each theorem number to exact proof events,
database SHA-256, E2 basis rows, selected boundary rows, all staircase
rows, and unknown-differential row flags. Unknown vectors are rejected,
not converted to zeros. Known boundary vectors do not require that their
source representative be known: missing source information is retained.

This batch closes precisely the finite linear nonmembership leaves.
It does not establish completeness of true B_k, product/map identities,
Leibniz premises or scoped branch contradiction derivations. All those
obligations remain explicit, so 13 log references are not 13 proved
topological conclusions.

## Actual sphere multiplication columns

`export_products.py` multiplies every local basis monomial at (21,147)
and (25,150) by S0(30,12) local0 (global basis181). It reduces products
against the actual S0 relation table while retaining every relation row
and polynomial multiplier. Seven kernel-checked `EqualModuloRelations`
theorems in `Products.lean` certify the products, including zero products.
The resulting source matrix columns are e1,0,0 in dimension5; the target
columns are e0,0,e1,e2 in dimension3. `products-provenance.json` and
`products/` bind all source/target basis IDs and relation witnesses.
The claims are actual polynomial-ideal congruences, not merely matrix
column definitions. Identification of the imported relations with Ext
remains explicit external mathematics.

`ProductRefutation.lean` proves that compatibility of a candidate product
with the stored known product differential e0 modulo span(e1,e2) forces
candidate bit0=1. Hence the four candidates with bit0=0 are impossible
under that differential/Leibniz compatibility premise. This connects the
checked multiplication matrix to the nonmembership obstruction.

Important new source caveat: factor181 itself has staircase level4,
base0 and diff `0,1` at (12,42): it is a known incoming d4 boundary in
the FINAL database. The hypothetical branch treats its outgoing d4/d7
as zero. It is not legitimate to infer from the final database that it
is a nonzero E5 factor, or to use the final state as the proof-time state.
The ordinary Leibniz compatibility must be supplied at the precise page
and scoped historical state; the current product theorem does not erase
this obligation.

## The remaining two map exclusions

`MapColumns.lean` independently kernel-checks seven existing RealMap
relation certificates (basis3748--3750 and basis3992--3995), without
editing that exporter. Each theorem asserts `IsMapEvaluation`, so the
column is linked to actual generator substitution and ideal reduction.
At source degree (21,147), the tmf basis is empty and all three images
are zero. At target degree (25,150), the actual two-row map is
[[0,0,1,0],[1,0,0,0]], with tmf basis IDs5427,5428. Its B3 column is
(1,1), from staircase row5427, incoming length3.

`MapRefutation.lean` proves the source map zero, and that naturality
compatibility of a candidate image with this B3 forces candidate bit0
to equal bit2. This rejects {0,1} and {0,1,3}. `combined_affine` combines
this with the checked product residual condition (bit0=1) and the
target cycle condition (bit0=bit1), and proves membership in the exact
remaining affine line. Thus all six finite exclusions now arise from
two actual obstruction matrices, rather than six separate assumed
non-equalities.

The two compatibility hypotheses are still explicit: identifying the
E2 substitution with the induced map on E4, and establishing the exact
Leibniz/product differential modulo B3, are not consequences of the
polynomial relations alone. In particular, the final known target B3
must be tied to the historically justified page. No raw N/T tag is
used as a theorem.

## E4 finite quotient descent

`E4Descent.lean` checks complete comparison certificates for the finite
spaces selected from the final staircase at page4:

- Sphere source (21,147): three-dimensional cycle space, boundary e2,
  quotient with two coordinates e0,e1.
- Sphere target (25,150): cycle equation x0=x1, no incoming length<4
  boundaries, quotient with three representatives e0+e1,e2,e3.
- tmf target (25,150): all two-dimensional vectors are cycles, boundary
  e0+e1, one quotient coordinate represented by e1.

The actual target map is checked to preserve cycles and boundaries;
`onQuotients` is a well-defined map of the actual quotients, and
`quotient_coordinates` proves its coordinate formula on every class.
The induced coordinate matrix is [1,1,0]. This removes the need to
assume descent for these finite spaces. The already-checked source map
has zero-dimensional codomain, so it vanishes.

What is still missing is the S0 d4 matrix on source coordinate e0:
the corresponding raw row has diff=NULL at level9996. The row for
source e1 is known but its prior derivation has the D154545 obligations.
Thus no complete d4 chain-map square can yet be checked without filling
the unknown column. Quotient descent of the map does not itself imply
that an arbitrary missing differential commutes with that map. Authentic
Adams naturality, or a complete justified differential matrix, is the
remaining link. No unknown is filled with zero in this construction.

## Kernel-checked matrix interpretation

`BasisSemantics.lean` defines `decodedBasisVector` and proves its valuation
equals linear interpretation, then proves interpretation commutes with
matrix evaluation for every Boolean coefficient vector. `all_products`
and `all_maps` lift column equations to arbitrary combinations.

`ProductBasisSemantics.lean` checks all seven actual column decodings
against their relation-certificate outputs inside Lean, then proves their
valuation equals the actual scalar product. Its `allCoefficients21` and
`allCoefficients25` instantiate the complete 3-column and 4-column product
matrices: for every coefficient vector, decoding the product matrix agrees
with multiplying the decoded source by factor31.

`MapBasisSemantics.lean` checks all seven actual map-column decodings and
links them to generator substitution. Its `allCoefficients21` and
`allCoefficients25` prove the complete matrices agree with substituted
source valuation for every coefficient vector. All four named whole-matrix
theorems compile. The relation-vanishing premises are explicit per-column
lists; no basis independence is assumed or proved.

This closes the earlier Python-only matrix/column interpretation gap for
these four matrices. It still does not show the named monomials are an
independent Ext basis, or identify the relations and valuations with the
topological Adams objects. The mathematical naturality/Leibniz obligations
remain separate from this now-proved algebraic interpretation.

`export_basis_semantics.py` writes only `GeneratedProductColumns.lean`;
it never reads a previous generated file. `ProductBasisSemantics.lean`
is maintained source importing those columns and supplying the whole-matrix
proofs. `MapBasisSemantics.lean` is maintained source, not an output of any
regeneration script. Regenerating the product columns cannot overwrite
either set of whole-matrix proofs. Compile `GeneratedProductColumns`
before `ProductBasisSemantics` in direct sequential builds.
