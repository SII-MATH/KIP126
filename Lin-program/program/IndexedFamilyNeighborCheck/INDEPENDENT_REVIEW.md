# Independent neighbor checker review

No correctness findings in the final two source files. The recorded direct
compilations both exit 0; source/log hashes match and all six printed axiom
reports use only standard dependencies. This review did not independently
recompile or change either Lean module.

For any adjacent pair, the target key is exactly `differentialKey a`; for
any consecutive pair it is exactly `nextKey a`. The degree arithmetic is
performed in Int and preserves negative auxiliary keys. Object and page
components are retained, so a matching degree on a different object cannot
be used as the neighbor.

`lookup_member` requires the whole family's unique-key property and proves
lookup returns the exact member wire. Consequently the two checked lookup
results give `PairCompatible a b` for every actual member b, rather than
just for whichever entry happened to be found first. `coherent_of_entries`
and `checker_sound` retain uniqueness and validity of every entry in
addition to the pair conditions. Equal dimensions alone do not pass the
differential comparison: the entire outgoing/incoming matrices must agree.

The uniqueness requirement is necessary. A first valid neighbor followed
by a different wire with the same key can make `checkOne` pass while the
full pair relation fails. The complete checker explicitly rejects this
case, and the source examples exercise it.

Missing neighbors satisfy the original conditional compatibility contract;
they do not imply an absent zero matrix or complete requested window.
`window_sound` retains the separate existing coverage checker. The key
lookups still use linear list searches, so this optimization does not
claim asymptotically subquadratic key lookup. It reduces unnecessary full
matrix/pair elaboration and permits smaller proof terms.

## Independent oracle

`independent_review.py` compares the lookup implementation against the
literal all-pairs relation on 52,989 small families, including 27,426
unique-key families and 25,563 duplicate-key families. All results agree
after the required uniqueness/key/wire guards; 1,399 families are accepted.
Cases include missing and conflicting neighbors, valid equal-shape unequal
matrices, invalid wires and keys, negative degrees and different objects.

The oracle also checks both lookup-neighbor conditions and all 1,522,756
ordered pairs of the actual 1,234-entry Fact713 finite family. The observed
run exits 0. These executable checks supplement the universal Lean
soundness theorem and do not create a topological interpretation or assert
coverage of the still-missing E12 dependency nodes.

`independent-review.json` preserves the source/log hashes, family counts,
and scope. No C++ result or checksum is used as a proof premise.
