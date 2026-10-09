# Independent event-count review

The final hardened `audit_coverage.py` passes the independent boundary
checks. The current inventory has 105 distinct row IDs. Exactly four rows
are sentinel-only candidates (2695, 3080, 3993 and 3994), and the remaining
101 IDs match the stored event slots exactly, without duplicates or omissions.
Of those slots, 99 have canonical nonempty differential-support strings and
two have NULL values: 2696 and 2852. Both NULL slots remain unresolved and
are absent from all 95 accepted event IDs.

The accepted events contain 59 outgoing and 36 incoming events. The six
unresolved slots comprise the two NULL slots and four known-value records
whose finite proofs remain unresolved. Thus 101 stored slots, 99 known
values and 95 complete finite events describe different sets. The previous
label `known_events` would conflate these distinctions.

This independent review additionally reads the actual indexed certificate
file and the producer provenance. Their 95 IDs match the accepted IDs in
order; inventory rows, pages, roots, source/target coordinates and finite
payloads match. Both endpoint stage lists have the required page lengths,
totalling 102 prior stages. The two pending IDs cannot enter through a
different certificate numbering convention.

The script is executed in memory with changed inputs; its report writes
are captured instead of touching source data. Twelve malformed non-NULL
values (including `?`, `[NULL]`, `possibly`, booleans, numbers, empty text,
leading zeros, trailing commas, duplicate and unordered support) are all
rejected. Replacing a missing inventory row by a duplicate is rejected,
as is a duplicate event ID. Promoting a pending event to accepted and
changing its NULL to a known value are also rejected.

The coverage script is a metadata consistency check. It does not recheck
certificate content or read the indexed file itself; a same-length
replacement demonstrates that limited scope. The independent provenance
review and separate producer/Lean checks provide those content bindings.
No metadata count is treated as a mathematical certificate.

`independent_event_review.py` exits zero. Its report pins the final script
and all reviewed inputs in `independent-event-review.json`. The original
script is not edited by this review.
