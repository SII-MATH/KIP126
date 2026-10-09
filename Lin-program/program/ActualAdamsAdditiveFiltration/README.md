# Additive cycle and boundary filtration

`Basic.lean` makes the missing additive content of a page identification
explicit. `AddMeaning` states that the actual quotient-to-next-page map
preserves sums of all actual cycle representatives. It implies
`ActualAdamsSystemBridge.ZeroMeaning` over F2. The extension of `advance`
to noncycles is never assumed additive.

`Subgroups.lean` constructs genuine `AddSubgroup`s of the fixed E2 space:
`Z n` contains the classes that are cycles at all indices below n; `B n`
contains those whose page n+2 representatives vanish. It proves `B n <= Z n`,
antitonicity of Z, monotonicity of B, and that two Z representatives have
the same page image exactly when their sum belongs to B. The parameter n
corresponds to the paper's subscript n+1, so Z 0 is all of E2 and B 0 is zero.

`Quotient.lean` constructs the additive map from the complete Z subgroup
onto the actual page and proves its surjectivity and kernel characterization.
It also defines addition on the previously constructed full quotient and
proves the sum formula on arbitrary representatives. It supplies no new
wire schema or axioms. Existing finite-checker soundness can use these
mathematical maps; actual input identifications still require Lean proofs.

`Counterexamples.lean` exhibits a zero-preserving full bijection of F2^3
that fails additivity. Thus `AddMeaning` is not redundant with the historical
`PageHomologyIdentification` Type equivalence and zero compatibility.

This proves the additive structure for a caller-supplied actual graded
spectral sequence with compatible homology maps. It does not construct
those maps for the 49 CW spectra or identify their E2 pages with Ext, and
does not prove convergence or any missing named differential value.

Run `python3 program/ActualAdamsAdditiveFiltration/compile.py` for sequential
direct compilation of the four leaves. The successful run prints 16
standard-axiom reports; failed development logs are separately retained.
Root integration and exhaustive axiom audit are recorded in `program/tests/`.
