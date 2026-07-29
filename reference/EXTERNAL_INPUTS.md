# External-input ledger

Only the sources below contribute an external theorem or external evidence
that the formalization must expose through `Exterresult` or `Exterevidence`.
References used only for historical context, notation, motivation, or a
survey are intentionally not archived in this project.

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
