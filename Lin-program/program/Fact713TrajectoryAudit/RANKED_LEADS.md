# Fact 7.13 nonzero-target leads

This is a source audit, not a certificate of the logged deductions. The 31
remaining row/page unknowns divide into 9 exact zero naturality events, 4
deduction events with trial leaves, and 18 without an exact resolved event.
`ranked-sources.json` preserves every matching event and the original row.
Priority numbers rank investigation cost, not mathematical validity.

## First feasible path

Reuse the independently constructed Fact715 Ceta naturality argument for
S0 row3076, (s,t)=(15,139), d3, initial vector e1+e3. Its exact log lead is
N80011, preceded by G80010 on Ceta (15,141), vector e0+e2. Unlike the other
leads, the complete finite d2 comparisons, actual map coefficients, quotient
map and zero target already exist in `Fact715TrajectoryCertificates`.
`Naturality.sphere_d3_zero` proves the desired zero from a local naturality
square; `Conditional.finite_E5_from_naturality` links that zero to the
selected finite trajectory override. This reuses an existing argument and
does not assume Fact713, its final E12 trajectory, or a log conclusion.

The next concrete implementation would reuse that same checked override in
Fact713's block b15_139_3, preserving the local naturality hypothesis. This
can discharge one row/page dependency conditionally. It cannot close the
other 30 nonzero-target dependencies, the 26 zero-target candidates, or
prove actual Adams naturality. No Fact713 override has been installed by
this audit.

## Other naturality leads

| Source (s,t) | Page | Event | Map |
|---|---:|---|---|
| (17,138) | 3 | N2149754 | Ctheta4 to S0 |
| (17,140) | 3 | N15640 | C2 to S0 |
| (9,134) | 4 | N531758 | Csigma to S0 |
| (14,138) | 4 | N63444 | C2 to S0 |
| (16,138) | 4 | N82557 | Cnu to S0 |
| (17,138) | 4 | N2149764 | Ctheta4 to S0 |
| (17,140) | 4 | N217850 | C2 to S0 |
| (13,137) | 5 | N93009 | C2 to S0 |

`naturality-predecessors.json` records adjacent prior events only, not proven
dependency edges. In particular N63444 follows a page3 event although its
page is 4; N93009 follows page4 although its page is 5. The Ctheta4 prior
events concern DC2h5, so adjacency does not identify the source premise.
Each lead needs actual map coefficients, full predecessor comparisons and
an independent source-cycle argument before it can become a certificate.

## Smallest trial branch is not yet closed

S0 (11,133), d3, local1 has just T153472 followed by D153473. The trial
proposes target local0. Multiplication by C2 (1,3), local0, produces C2
(12,136), local1, with proposed target C2 (15,138), local2. The log reports
that target is not in B2. That sentence alone is not a contradiction without
the relevant admissibility/persistence condition on the product class.

The multiplier has empty E2 d3 target, so its cycle condition has a finite
zero-codomain route. However the product source local1 is a level9000 NULL
row, not a verified d3-zero value. A complete scan finds N242341 for its
page9 zero, later than D153473, but no exact page3 zero event. This later
event cannot silently supply an earlier cycle or eliminate potential
circularity. The other page3 naturality event N530024 has local0 and cannot
be substituted for local1. Consequently this attractive one-trial lead
still requires independent source persistence/cycle provenance.

The other three trial branches are (10,134)d3, (20,140)d3 and (11,133)d4;
each has three trial leaves. None was promoted to a trusted deduction.

## Locator precision

The older `line` field in ranked-sources and naturality-predecessors is
CSV record ordinal plus one, not a physical text line when fields contain
newlines. `single-trial-leads.json` explicitly distinguishes the 1-based
data `record` from `physical_end_line` reported by csv.DictReader.line_num.
For example T153472 is data record148039, ending at physical line149101.
Event IDs and file names are the stable primary locators.

This audit changes no Lean definition, theorem, override or build artifact.
