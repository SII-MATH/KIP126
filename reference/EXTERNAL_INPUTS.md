# External-input ledger

Only the sources below contribute an external theorem or external evidence
that the formalization must expose through `ExternalResult` or `ExternalEvidence`.
References used only for historical context, notation, motivation, or a
survey are intentionally not archived in this project.

The complete machine-readable ledger, including the target paper row and
artifact digests, is [`source-inventory.json`](source-inventory.json).  The
Lean-side stable keys are exposed by `KIP126.External.SourceId`; acquisition
state is checked with `python3 scripts/check_source_inventory.py`.

The Lean-side claim ledger (`KIP126.External.externalClaimLedger`) gives each
external root an intended owner declaration, a Blueprint label or enumerated
source target, a dependency list,
and explicit `SourceRef` metadata; composite claim rows therefore remain
distinguishable from primitive literature results.  Owners in later, not-yet-
implemented domain layers are recorded as stable names rather than being
pretended to be existing proofs.  Its dependency relation has a checked
strictly decreasing rank, and the source/claim exporter makes locator-artifact
membership part of the JSON validation.  `CataloguedExternalResult` and
`CataloguedExternalEvidence` are the bridge from this metadata ledger to an
actual proposition-bearing wrapper; they still do not prove the external
mathematics or inspect the filesystem.  The closed inventory uses the checked-in
AIM paper as the source of record for claims that cite unarchived primary works
(for example, the Ravenel theorem quoted by the AIM paper); those primary works
are not silently represented as separate source IDs.  Claim roots are
family-level records, so several downstream evidence labels can be covered by
one aggregate root.

For claim roots whose primary work is not archived locally (`MahowaldTangora`,
`BJMtheta5`, `BJMinduction`, `Maythesis`, `May01`, `Moss`, and `BR21`), the
Lean locator description explicitly records that unavailability and names the
exact AIM-paper line or line range where the input is cited.  The source
inventory integration checker rejects a newly added artifact-less claim that
lacks this secondary line locator.

| Source | External input represented in Lean |
| --- | --- |
| `Browder` | The Kervaire-invariant criterion relating survival of \(h_j^2\) to a nonzero Kervaire class, used for the conditional geometric conclusions. |
| `MahowaldTangora` | Earlier Adams differentials and the \(h_4^2\) survival input used in the lower-dimensional Kervaire package. |
| `BJMtheta5` | The \(h_5^2\) survival / dimension-62 input used to supply a \(\theta_5\). |
| `BJMinduction` | The Barratt–Jones–Mahowald inductive criterion for passing from \(\theta_j\) to \(\theta_{j+1}\). |
| `Maythesis` | May's low-page Adams-survival results used by the lower-dimensional external package. |
| `HHR` | Nonexistence of Kervaire-invariant-one classes in the forbidden higher dimensions. |
| `Xu` | Dimension-62 stable-stem and order-two facts for \(\theta_5\). |
| `IWX` | Stable-stem and \(\theta_5\)-indeterminacy/order-two facts used in the final reduction. |
| `tmf` | The Hurewicz-detection input for the possible \(\lambda^{20}g^4\Delta h_1g\) class. |
| `Pst` | Synthetic spectra, the functor \(\nu\), and the deformation/localization interfaces. |
| `BHS` | Rigidity, synthetic Adams/Bockstein comparison, and the extension interfaces. |
| `BHSmot` | The \(E_\infty\)-structure on the \(\lambda^n\)-quotients used by the synthetic constructions. |
| `BurklundXu` | The synthetic extension of the BJM criterion (Proposition 7.19) and the \(\lambda\eta\theta_5^2\) differential relation. |
| `May01` | The triangulated pullback lemma used in the generalized Leibniz argument. |
| `Moss` | The no-crossing/Toda-bracket criterion used in the final extension contradiction. |
| `BR21` | The manually supplied \(tmf\) Adams differential \(d_3(v_2^{16})=\beta^5g\). |
| `LWXMachine` | Lin–Wang–Xu paper, Zenodo proofs/data, `SSeqCpp`, and plots supplying all Appendix table facts and computed differential/extension evidence. |

The final `h_6^2` theorem is conditional on the corresponding structures,
not on project-level Lean axioms.
