# Independent root review

The four frozen modules prove exact Boolean and diagnostic equality
between the full-family checker and its compact projection. The projection
retains the key and all four dimensions n/m/k/h. The lookup lemma preserves
first-match behavior even for duplicate keys. Every supplied higher-page
entry still requires all three preceding-page comparisons.

The explicit literal table is bound to the complete projection by a Lean
equality proof. The executable check reads only that table. No hash,
untrusted code evaluation, or matrix-string comparison replaces the
binding proof. Coherence of the matrices is a separate required property;
the negative test deliberately distinguishes closure from coherence.

Independent replay covers 3250 families, 1500 missing/wrong-dimension
mutations, 1500 duplicate-order cases and both actual 1413-entry families.
All 30 frozen producer files match their recorded hashes. Four accepted
compiler records contain 17 standard-only and six empty axiom reports.

Actual large-family kernel runtime remains to be measured. Linear lookup
still makes the compact check quadratic in the number of entries.
