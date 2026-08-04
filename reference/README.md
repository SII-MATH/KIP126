# Primary external references

This directory contains only the external works that were identified in our
formalization-boundary discussion as direct inputs, supporting results, or
Lin-program evidence.  The target paper itself is in
[`../aimpaper/`](../aimpaper/).

Each work directory contains its `citation.bib` and a
`source-status.json`.  When a public copy was available, it also contains the
TeX source, PDF, or extracted text.  The archive does not bypass publisher
access controls.

[`source-inventory.json`](source-inventory.json) is the canonical machine-readable
catalogue.  It assigns stable snake-case IDs (the same codes exposed by the
Lean `SourceId` API), records the intended role of each source, and lists the
local artifacts and SHA-256 digests that can be audited.  The acquisition
claims in each work's `source-status.json` remain authoritative; the inventory
checker rebuilds and executes the Lean source/claim projection exporter,
verifies that the two source views agree, checks acquisition-status grammar and
canonical artifact kinds, and checks that every nonempty
canonical locator artifact path belongs to a `required=true`, existing regular
file in the corresponding JSON artifact list:

```sh
python3 scripts/check_source_inventory.py
```

Claim-level external roots, intended owners, dependencies, and explicit
`SourceRef` metadata are enumerated by
`KIP126.External.externalClaimLedger`; names for future domain declarations
are recorded without asserting that those declarations already exist.  The
ledger also has a kernel-checked decreasing dependency rank.  The stronger
`CataloguedExternalResult` / `CataloguedExternalEvidence` interfaces bind an
actual explicit input to a canonical root.  The JSON catalogue remains the
authority for the canonical claim locator's artifact membership, filesystem
existence, and hashes.  A catalogued evidence artifact must use that locator's
path; Lean also checks its safe source-relative path and digest shape, but does
not automatically compare the wrapper's digest text with the JSON file.  Claim
roots are intentionally families; a downstream Blueprint evidence label may be
covered by an aggregate root instead of receiving a one-to-one row.

The target paper is represented by the separate `aim_paper` entry.  It has no
`source-status.json` because it is a checked-in project source rather than an
external reference.

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
computational evidence (`ExternalEvidence`), not axioms or proved Lean theorems.

## Scope

The 17 external source directories listed above are retained; the target paper
is tracked separately as the `aim_paper` inventory row.  Other bibliography
entries from the target paper were excluded because they do not supply an
external theorem or evidence used by the formalization.

For every retained work, `source-status.json` is authoritative about whether
TeX, PDF, plain text, or only citation/metadata was obtained.
