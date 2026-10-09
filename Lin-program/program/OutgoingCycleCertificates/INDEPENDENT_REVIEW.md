# Independent review of outgoing-cycle semantics

No soundness finding in the reviewed five Lean modules and C++ wrapper.
The scope is the explicitly conditional actual-page contract, not a proved
realization of the full topological Adams spectral sequence.

The distinction in the code is supported by the supplied paper text.
Fact7.6(2) calls h1 h4 x109,12 a permanent cycle while allowing it to be
killed by the named incoming d6 or d12. Notation3.10 defines Z_r inside E2
by vanishing of d2 through d_r, defines Z_infinity as their intersection,
and explicitly includes B_infinity in Z_infinity. Thus an incoming boundary
can still be a permanent cycle in this sense.

`AlwaysCycle` quantifies only over the actual outgoing value of the
recursively advanced element. It makes no incoming-image, nonzero or
nonboundary assertion. `permanent_alwaysCycle` proves the implication from
the stronger nonboundary predicate. The `killed` model satisfies the stated
System homology law, has all outgoing spaces Unit, advances the named true
element to false, and has true in the incoming image on the first page.
Consequently it satisfies `AlwaysCycle` and fails `System.Permanent`.

The executable finite checker checks the whole comparison, representative
length and outgoing cycle equation. It deliberately has no nonimage test.
`cycle_transport` uses the all-actual-element outgoing equation and faithful
outgoing coordinates; `check_sound` applies it to every finite stage and
uses whole-space `OutgoingTail` for every remaining page. Tail cutoff index
n is Adams page n+2. No incoming-tail premise or assumed selected-element
survival occurs. Proof-bearing meaning and tail terms remain external
mathematics, while `outgoing_cycle_cert` constructs a kernel proof using
the soundness theorem and `rfl`/`decide`.

The JSON importer fixes schema/version/firstPage, rejects noncanonical,
unknown or duplicate fields, checks the full finite prefix, and checks each
adjacent quotient-coordinate link. Importing the wire does not create the
actual meaning or infinite tail. `assemble` carries those proof inputs and
`imported_cycle` uses the checked prefix. The direct certificate's soundness
does not require serialized links because `PrefixMeaning` already names
the same actual trajectory at every stage; imported links additionally
enforce the chosen finite coordinate convention.

The C++ program only exports finite candidates. It reuses the comparison
solver via exec without a shell, changes the controlled schema envelope,
and has streaming batch error locations. It need not prove cycle status;
Lean rejects any output that fails those conditions. The killed prefix is
a genuine boundary example: its first full incoming matrix is [true], its
first representative is [true], and its next quotient is Vec0. Its finite
acceptance does not by itself instantiate PrefixMeaning for the separate
`killed` System example; the review keeps those two tests distinct.

## Remaining Z-infinity identification

To identify `AlwaysCycle s x` with the paper's x in Z_infinity, one still
needs an actual E2 interpretation of `s.Page 0` and of the named element;
the full cycle and boundary subgroups Z_r and B_r; the page identifications
E_r = Z_(r-1)/B_(r-1) at each bidegree; agreement of actual differentials
and their zero values; and compatibility of `s.advance` on cycles with
those quotient maps. These data must handle a representative after it
becomes a boundary, so its zero page class is still related to the original
E2 element. The abstract System law alone does not construct this tower of
graded quotient identifications. No convergence theorem is needed merely
to define membership in the intersection Z_infinity; identifying a nonzero
E_infinity class with a stable homotopy class additionally needs the usual
convergence/filtration mathematics.

`independent-review.py` records source fingerprints, the exact paper
passages, independent full-matrix/cycle replay, deterministic real C++
output, and observed compiler/test evidence. Existing historical failed
logs are not interpreted as current successful proofs.
