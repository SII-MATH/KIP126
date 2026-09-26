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
