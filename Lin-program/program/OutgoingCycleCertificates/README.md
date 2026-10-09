# Outgoing permanent cycles and nonzero survival

The paper uses two different assertions. Fact7.6(2) says the named class
is a permanent cycle **and can be killed by an incoming d6 or d12**.
Fact7.6(3) and Fact7.21 instead say classes survive to E-infinity.
The actual wording is retained in
`AdvancedRuleCertificates/kervaire-v2.txt` from arXiv2412.10879v2.

`AlwaysCycle system element` states that every outgoing differential of
the recursively advanced actual element is zero. It permits an incoming
hit and a subsequently zero representative. In contrast,
`PermanentCycleCertificates.System.Permanent` requires every stage to be
both a cycle and a nonboundary. The theorem `permanent_alwaysCycle` gives
one implication; `Examples.killed_always_cycle` and
`Examples.killed_not_permanent` prove that the converse is false, using an
actual system satisfying its homology law.

The cycle-only checker checks every full comparison, representative
dimension and outgoing value, without a nonboundary test. Complete
`PrefixMeaning` still binds all actual maps and the named element to the
finite coordinates. `OutgoingTail` requires the whole actual outgoing
space to vanish after the cutoff, independently of the chosen element.
It imposes no incoming-space condition. The finite prefix and the tail
give `AlwaysCycle` via `check_sound` and `outgoing_cycle_cert`.
The existing Fact7.6(2) d2 vector is bound in `Examples.Fact762`; its actual
outgoing tail remains a caller proof, not an established paper instance.

## Export, import and diagnostics

`outgoing-prefix-export STAGES_FILE` accepts the existing trajectory
format: one `K M N OUT IN REPRESENTATIVE` line per stage. `--batch PATHS`
accepts one stage-file path per line, preserves physical error lines and
returns nonzero if any row fails. It reuses the deterministic C++ full
comparison solver through an exec call without a shell.

Canonical JSON has `firstPage=2`, `schema="lin.outgoing-cycle-prefix"`,
`version=1` and `stages`. `outgoing_prefix%` rejects unknown or duplicate
fields, noncanonical data, bad comparisons and unlinked representatives.
`CheckFile.lean` checks JSONL batches and reports line/stage locations.
`assemble` requires actual meaning and outgoing-tail proof terms; neither
is serialized into JSON. Runtime acceptance validates a finite prefix.

`killed-prefix.input` is a two-stage example whose nonzero first vector is
an incoming boundary and whose next space is Vec0. It is accepted by this
checker and rejected by the stronger nonboundary-prefix checker.
`test.py` runs actual C++ export, Lean import, malformed-input recovery,
link mismatch, output-write failure and literal metacharacter path tests.
`compile.py` records actual serial compiler exits and preserves failures.

The paper also defines Z-infinity as an intersection of cycle subspaces in
the initial E2 page. Identifying this recursive actual-page contract with
that model still requires a genuine Adams realization and its quotient
compatibility. This library does not infer that identification from SQL.
