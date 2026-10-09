# All-claim finite trajectory readiness

This is a read-only dependency audit, not a proof of the listed paper claims. Unknowns remain unknown. Zero selected targets require complete quotient verification; no theorem is generated.

| Claim | Scope | Blocks | Unknown | Zero-target candidates | Residual |
|---|---|---:|---:|---:|---:|
| strategy-e2 | not_applicable_to_single_trajectory | 0 | 0 | 0 | 0 |
| strategy-d2 | not_applicable_to_single_trajectory | 0 | 0 | 0 | 0 |
| strategy-propagation | not_applicable_to_single_trajectory | 0 | 0 | 0 | 0 |
| strategy-101-105 | aggregate_elimination_math_missing | 0 | 0 | 0 | 0 |
| fact-7.6-1 | bounded_dependency_audit | 36 | 2 | 1 | 1 |
| fact-7.6-2 | unbounded_no_finite_cutoff | 1 | 0 | 0 | 0 |
| fact-7.6-3 | unbounded_no_finite_cutoff | 1 | 0 | 0 | 0 |
| fact-7.6-4 | bounded_dependency_audit | 18 | 6 | 2 | 4 |
| remark-7.7 | bounded_dependency_audit | 4 | 2 | 1 | 1 |
| fact-7.13 | bounded_dependency_audit | 1420 | 57 | 26 | 31 |
| fact-7.15 | bounded_dependency_audit | 13 | 1 | 0 | 1 |
| fact-7.19 | bounded_dependency_audit | 36 | 0 | 0 | 0 |
| fact-7.21 | unbounded_no_finite_cutoff | 2 | 0 | 0 | 0 |
| prop-7.9 | bounded_dependency_audit | 36 | 10 | 3 | 7 |
| manual-1 | external_input_no_source_proof | 0 | 0 | 0 | 0 |
| manual-2 | external_input_no_source_proof | 0 | 0 | 0 | 0 |
| manual-3 | external_input_no_source_proof | 0 | 0 | 0 | 0 |

Fact7.6(4) includes both the (21,147) source and (25,150) target windows through d4; historical branch identification remains missing. Prop7.9 audits Cnu through d5 only, not its all-r conclusion. Remark7.7 audits the h1*h4*x109,12 target vicinity through d3, not the whole affine-source argument. Permanent claims have no invented finite cutoff; their d2 seed comparisons are retained only. Strategies, aggregate101 elimination and manual3 inputs need other certificate families and missing mathematics, not an artificial trajectory.

All blocks and raw degree data are shared in shared-dag.json; claims.json stores per-claim references and existing missing-mathematics inventory. Use `python3 AllClaimTrajectoryAudit/audit.py` for all17 or repeat `--claim ID` for selected roots. A restricted run replaces the output with that explicit subset.

{
  "claims": 17,
  "shared_blocks": 1507,
  "shared_degrees": 772,
  "shared_row_values": 1069,
  "shared_unknown": 75,
  "shared_zero_target_candidates": 31,
  "database_sha256": {
    "Cnu": "e1274528151c3391f5e5f4de72f8428a68b5e145a07bb3cc946781efd9bfdbbe",
    "S0": "518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed"
  },
  "status": "read_only_data_audit_no_zero_theorems"
}
