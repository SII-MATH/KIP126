# Propagation source and semantic audit

This audit supplements all 17 rows of `doc_data/kervaire_claims.csv`; it does
not turn imported records into mathematical theorems.

## Fixed upstream evidence

`upstream/source-code.zip` was downloaded from the immutable file link in
Zenodo record 14875701 (the version resolved by DOI 14272279):
`https://zenodo.org/api/records/14875701/files/source%20code.zip/content`.
SHA-256: `dd784541626f4d693c35f3ca84d4a67e83758ac463aabe58ab6c9cc92be22a15`.
Extracted `ss` sources are in `upstream/release-source/SSeqCpp-master/ss/`.
The archive and source code are untrusted evidence, never Lean axioms.

`upstream/release-category.json` normalizes the release's `scripts/ss.json`
by removing line comments and trailing commas. It contains 2 rings, 221
modules, 627 maps, 142 derived maps, 93 cofiber sequences, and 83 commuting
relations. It is the broader `mix` category, NOT the paper's exact 49-spectrum
category. Its names cannot replace the latter's configuration without a
selection and identity proof. The release's `ss/ss.json` is only a directory
configuration. `upstream_tree.json` records an additional GitHub tree at
commit `23d12c973db2b294a6c00c15bd106e70b0af3fa6`; the fixed release, not
GitHub head, is used for the rule audit here.

The separately extracted database release now supplies the exact category
at `upstream/kervaire-49/ss.json`: 2 rings and 47 modules, 180 direct maps,
115 derived `maps_v2`, 61 cofiber sequences, and 36 commuting relations.
Consequently the familiar count of 180 does not include all configured
derived maps. Certificates covering propagation must bind these 115 maps
and 36 commuting relations as well. This exact configuration supersedes
ordinal placeholders; the larger `mix` configuration remains only audit
evidence and must not be substituted for it.

The actual source refines an important ambiguity in the preliminary
inventory. `ss/main.h:20` defines `LEVEL_MAX=10000`, `R_PERM=1000`,
`LEVEL_PERM=9000` and `NULL_DIFF={-1}`. `database_ss.cpp:149` loads
`COALESCE(diff,"-1")`: SQL NULL is unknown, whereas an actual empty TEXT
vector denotes zero. `Adams/AdamsExport.cpp:535` selects basis rows with
`t <= t_max_out-1`, and lines 543--550 explicitly write `Serialize(d2)`
even for the zero vector; other rows remain SQL NULL. Therefore an empty
CSV field may be certified as zero only after proving that the exporter
preserves the distinction between SQL NULL and empty TEXT and that the
computation bound covers the row. It must not be promoted to zero solely
because it looks blank. `plot.cpp:465` reads a known forward differential
when `level > 9000` and `diff != NULL_DIFF`, with `r=10000-level`;
line 487 handles the corresponding unknown case separately. These finite
encoding constants are not a proof that all later mathematical pages vanish.

## Actual released proof rows

The archive `upstream/proofs_csv.rar` is downloaded from
`https://zenodo.org/api/records/14875701/files/proofs_csv.rar/content`.
SHA-256: `de0dca647c8a8d51febf4bc43e8dfa56ed9eb2efbc83b042fc060cd00d1198ac`.
Unlike the preliminary inventory's 22 parts / over 20 million rows, this
fixed release contains THREE UTF-8 CSV files and 2,672,275 records, totalling
625,121,723 uncompressed bytes. The published release must not be silently
identified with a different version's much larger proof database.

`PropagationCertificates/audit_proofs.py` streams the full release and writes
`proof_release_audit.json`, including per-file hashes, row counts, depth
counts, ID gaps, field markers, and one example of every observed reason.
There are 17 known reason strings plus `[NULL]`, with these actual counts:

| Reason | Records | Reason | Records |
|---|---:|---|---:|
| CsCm | 2,380 | D | 97,590 |
| DI | 5,811 | G | 135,842 |
| GI | 24,035 | M | 3 |
| N | 263,264 | OutCsI | 5,871 |
| Syn | 573 | SynCs | 3,736 |
| SynCsIn | 306 | T | 2,076,999 |
| TI | 21,357 | ToCs | 368 |
| XX | 178 | XY | 17,746 |
| d2 | 7,836 | [NULL] | 8,380 |

`FX`, `Def`, and `Mg` exist in the source but do not occur in this archive.
The 2,098,356 `T/TI` records are hypothetical branches, not independently
established theorems. Nonzero-depth rows total 2,098,419, including 18,808
depth-two rows. The first recorded ID is 5432; internal ID gaps omit another
12 values. Thus numerical row order does not itself establish complete
dependency closure. `[NULL]` reasons cannot be assigned a rule by guessing.

The three files contain 994,567, 1,000,000, and 677,708 records respectively;
the last ID is 2,677,718. There are 7,916 `[NULL]` differential values in the
third file. Empty differential fields and NULL markers remain distinct in
the audit. The archive includes exactly three manual `M` records, whose
source-row content can be independently located from these files.

`PropagationCertificates/Level.lean` formalizes only the structural encoding:
valid ordinary outgoing levels decode to pages 2--999; incoming levels
decode to their stored page; 9000 is a permanent sentinel. Three proved
theorems establish bounds and sentinel equivalence. The decoder rejects
unsupported level ranges rather than assigning a mathematical permanence
claim. Cofiber extensions may have different allowed lengths and must use
their own typed decoder. `cofseq.cpp:885` also distinguishes the last known
page from the first unknown differential by subtracting one in the unknown
case; treating the unknown page as established would be an off-by-one bug.

## Complete logger reason inventory

The release `ss/mylog.h:40` contains 22 enum entries and 20 distinct
serialized tags. The step-one inventory is incomplete: its `SynIn` is
actually `SynCsIn`, and `M`, `FX`, `Def`, `Mg` are also present.

| Tags | Required semantic evidence | Current replay support |
|---|---|---|
| M | An external theorem proving exactly the supplied differential | Explicit `external` premise, supplied as a Lean proof |
| d2 | Secondary-operation construction or an explicit theorem of the d2 value | Only explicit theorem premise; no secondary-operation implementation |
| G, GI | Complete source/target space and zero-space proof at every permitted page | Requires page/completeness certificates; not inferred from missing log rows |
| D, DI | Exhaustive candidate enumeration and refutation of every alternative | Must reconstruct branches; logger tag alone has no semantic rule |
| T, TI | A hypothetical branch and a contradiction under precisely its assumption | Must preserve scope; not an unconditional differential |
| N | A map commuting with the differential plus the source differential | `naturality` for one explicit commuting transport model |
| XX, XY, FX | Page products, linearity, Leibniz, and any additional unknown-value constraints | Ordinary Leibniz and addition only; no blanket acceptance of these tags |
| ToCs | Exactness/extension premises and complete enumeration in a cofiber sequence | Not implemented by ordinary Leibniz |
| OutCsI | Equality at infinity, convergence/boundary argument, complete range | Requires explicit topological theorem |
| CsCm | Commuting homotopy diagram and filtration/extension premises | Not inferred from source names |
| Syn | Generalized Leibniz with crossing and synthetic-image hypotheses | Not implemented by ordinary Leibniz |
| SynCs, SynCsIn | Generalized Mahowald with synthetic-image and permanent-cycle hypotheses | Not implemented by ordinary naturality |
| Def | A proved definitional identification of the actual objects | No unchecked string aliasing |
| Mg | Identity/transport theorem between the migrated dataset versions | No unchecked data migration |

Concrete source anchors: `category.cpp:476` implements
`SetCwDiffSynthetic`; it calls `GetSynImage` at both source and target,
computes `cross_dfx_tmp` and `cross_fdx_min`, and enforces the filtration
inequality before emitting `Syn`. `deduce.cpp:279` implements synthetic
cofiber deductions and emits `SynCs` or `SynCsIn`. `cofseq.cpp:932` and
following blocks emit `CsCm`. `ss.cpp:583` emits `OutCsI`. `deduce.cpp:342`
and `deduce.cpp:499` show the distinction between hypothetical `T/TI`
branches and deduced `D/DI` conclusions. Source code describes algorithmic
behavior; it does not establish these rules' topological validity.

## All 17 requested dependencies

| CSV identifier | Mathematical witness still needed beyond record parsing |
|---|---|
| strategy-e2 | Resolution exactness, Steenrod-module identity, Ext comparison and map comparison for all 49 spectra |
| strategy-d2 | Secondary Steenrod-algebra operation certificates and comparison with Adams d2 |
| strategy-propagation | Typed DAG premises, all rules above, all actual maps/cofiber sequences, complete dependency closure |
| strategy-101-105 | Exact 105-dimensional target enumeration, 101 distinct eliminated targets and induction hypotheses |
| fact-7.6-1 | Linear combination representing the named class and successive cycle/nonboundary witnesses through E6 |
| fact-7.6-2 | Permanent cycle witness plus complete list of incoming possibilities (d6 and d12); permanent cycle does not assert not-hit |
| fact-7.6-3 | Survival/nonboundary at infinity with a proved finite vanishing cutoff |
| fact-7.6-4 | Complete quotient basis at the stated bidegree on E5 and dimension one, not merely one listed generator |
| remark-7.7 | Affine candidate subspace, nonzero proof for every allowed value, and target exclusion |
| fact-7.13 | E12 cycle/nonboundary witnesses for a sum and exact d2 on the other generator |
| fact-7.15 | E5 witnesses for the product class |
| fact-7.19 | E6 witnesses and the extension needed by Lemma 7.20 |
| fact-7.21 | Both permanent-cycle witnesses and a justified page cutoff |
| prop-7.9 | Complete incoming source spaces through d5 in the actual S0/nu page, plus the separate contradiction theorem |
| manual-1 | External theorem d5(h0^24 h6) = h0^2 P^6 d0 |
| manual-2 | External theorem d6(h0^55 h7) = h0^2 x126,60 |
| manual-3 | Power-operation theorem d3(v2^16) = beta^5 g in tmf |

Appendix tables 1--12, Proposition 7.8, Lemmas 7.14/7.16/7.20, and the
three synthetic conditions consume these dependencies; no additional
string tag turns those consumer arguments into a theorem.

## Proven rule replay interface

`PropagationCertificates/Rules.lean` supplies an executable DAG replay with
zero, addition, ordinary Leibniz, commuting-map naturality, and external
premise nodes. Each edge must reference a previously established full fact;
forward references and missing external facts fail. Theorems
`checkStep_sound`, `replay_sound`, and `check_sound` prove semantic
soundness for `Valid m f`, the equation between the actual interpreted
differential and interpreted expression. `Model` explicitly requires the
algebraic differential laws; `check_sound` additionally requires a Lean
proof for every external fact. None of these hypotheses is manufactured by
the checker. This model is one ungraded semiring with a fixed differential;
instantiation as a particular Adams page needs graded/type/degree comparison
proofs. It does not support different pages merely by changing a string.

`propagation_cert using steps model m premises h` closes a semantic goal by
kernel reduction of the replay plus its soundness theorem. Examples include
both rejection of forward references and rejection of undeclared inputs.
There is no custom axiom, `sorry`, `native_decide`, or trust in a C++ result.

Reference cautions: `Reference/LinProgramReference/AdamsRules.lean` names
an ordinary product differential identity `GeneralizedLeibnizRule`; it does
not encode the paper's crossing-dependent generalized theorem. The filtered
extension definitions likewise are not proofs of cofiber spectral-sequence
exactness. Neither file supplies the missing synthetic/topological bridge.
