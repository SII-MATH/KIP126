# KIPBase

`KIPBase` is a standalone Lean/Lake project embedded in the KIP126 checkout.
It uses Lean 4.32.2 and Mathlib 4.32.2, matching the parent project.

From this directory, initialize dependencies and build with:

```bash
lake exe cache get
lake build
```

The default target imports the core, synthetic, stable-homotopy, and
multiplicative spectral-sequence developments through
`KIPBase.Standalone`.

`KIPBase.Compatibility.FilteredComplex` is deliberately excluded from the
standalone target. It is an integration adapter whose public types mention
`KIP126.Core`; the parent KIP126 project continues to build that module.

The original migration snapshot is documented in the
[archive guide](../migration/kip-base/README.md). Its proof-debt counts and
validation results describe that snapshot, not this active source tree.
For reuse in KIP126 and the distinction between generic spectral-sequence
constructions and concrete model inputs, see the
[reuse guide](../docs/KIPBASE_GAP_INVENTORY.md).
