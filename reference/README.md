# Primary external references

This directory contains only the external works that were identified in our
formalization-boundary discussion as direct inputs, supporting results, or
Lin-program evidence.  The target paper itself is in
[`../aimpaper/`](../aimpaper/).

Each work directory contains its `citation.bib` and a
`source-status.json`.  When a public copy was available, it also contains the
TeX source, PDF, or extracted text.  The archive does not bypass publisher
access controls.

## Direct theorem and comparison inputs

| Directory | Work |
| --- | --- |
| [`Browder/`](Browder/) | Browder, *The Kervaire invariant of framed manifolds and its generalization* |
| [`MahowaldTangora/`](MahowaldTangora/) | Mahowald–Tangora, *Some differentials in the Adams spectral sequence* |
| [`BJMtheta5/`](BJMtheta5/) | Barratt–Jones–Mahowald, *Relations amongst Toda brackets and the Kervaire invariant in dimension 62* |
| [`BJMinduction/`](BJMinduction/) | Barratt–Jones–Mahowald, *The Kervaire invariant problem* |
| [`Maythesis/`](Maythesis/) | May, *The cohomology of restricted Lie algebras and of Hopf algebras* |
| [`HHR/`](HHR/) | Hill–Hopkins–Ravenel, *On the nonexistence of elements of Kervaire invariant one* |
| [`Xu/`](Xu/) | Xu, *The strong Kervaire invariant problem in dimension 62* |
| [`IWX/`](IWX/) | Isaksen–Wang–Xu, *Stable homotopy groups of spheres: from dimension 0 to 90* |
| [`tmf/`](tmf/) | Behrens–Mahowald–Quigley, *The 2-primary Hurewicz image of tmf* |

## Synthetic and filtered-spectra infrastructure

| Directory | Work |
| --- | --- |
| [`Pst/`](Pst/) | Pstrągowski, *Synthetic spectra and the cellular motivic category* |
| [`BHS/`](BHS/) | Burklund–Hahn–Senger, *On the boundaries of highly connected, almost closed manifolds* |
| [`BHSmot/`](BHSmot/) | Burklund–Hahn–Senger, *Galois reconstruction of Artin–Tate \(\mathbb R\)-motivic spectra* |
| [`BurklundXu/`](BurklundXu/) | Burklund–Xu, *The Adams differentials on the classes \(h_j^3\)* |
| [`May01/`](May01/) | May, *The additivity of traces in triangulated categories* |
| [`Moss/`](Moss/) | Moss, *Secondary compositions and the Adams spectral sequence* |
| [`BR21/`](BR21/) | Bruner–Rognes, *The Adams spectral sequence for topological modular forms* |

## Lin program and secondary-operation evidence

| Directory | Work or artifact |
| --- | --- |
| [`LWXMachine/`](LWXMachine/) | Lin–Wang–Xu, *Machine Proofs for Adams Differentials and Extension Problems Among CW Spectra* |

`LWXMachine/` also groups the corresponding Zenodo record, the `SSeqCpp`
program page, and the interactive Adams spectral-sequence plot.  They are
computational evidence (`Exterevidence`), not axioms or proved Lean theorems.

## Scope

Only the 17 sources listed above are retained.  Other bibliography entries
from the target paper were excluded because they do not supply an external
theorem or evidence used by the formalization.

For every retained work, `source-status.json` is authoritative about whether
TeX, PDF, plain text, or only citation/metadata was obtained.
