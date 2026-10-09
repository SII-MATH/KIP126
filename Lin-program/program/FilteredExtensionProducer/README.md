# Filtered-extension certificate producer

This untrusted C++ program synthesizes the finite matrix witnesses consumed
by `FilteredExtensionCertificates`. The Lean checker constructs whole finite
filtered F2 groups and proves an equation for the actual quotient differential
from `FilteredMapExtension`. No C++ value or hash is treated as a theorem.

## Build and run

```sh
make -C program/FilteredExtensionProducer all test
program/FilteredExtensionProducer/filtered-extension-export INPUT.jsonl > OUTPUT.jsonl
python3 program/FilteredExtensionProducer/assert_current.py
```

Omit the path or use `-` to read standard input. Every physical line is a
separate query. Successful lines produce one canonical JSON certificate in
order. Rejected lines produce no certificate and report `path:line: reason`
on standard error; processing continues and the final exit status is 1.
Consumers must check that status. Blank lines are errors, so rejection can
make output line numbers differ from input line numbers.

## Input

The query object has exactly `version:1` and `data`. `data` contains:

| Field | Meaning |
| --- | --- |
| a,b | Source and target vector dimensions |
| ha,hb | Number of source and target subgroup generators per level |
| depth | Number of explicitly listed filtration levels |
| s,n | Source filtration and extension length |
| f | b by a matrix |
| source | depth many a by ha generator matrices |
| target | depth many b by hb generator matrices |
| x,y | Vectors of length a and b |

Matrices are flattened row-major arrays of JSON booleans; numeric 0/1 do not
represent booleans. Levels at or beyond `depth` are the zero matrix and zero
subgroup by the protocol definition. This is an explicit eventually-zero
filtration, not an interpretation of missing mathematical data. All dimensions,
`depth`, `s`, and `n` must be natural numbers at most64. Zero dimensions, empty
filtrations, redundant generators, and indices after the last level are
supported. `s+n` can be128.

Input field order and JSON whitespace are accepted. Missing/duplicate/unknown
fields, nulls, unknown markers, wrong array sizes and types, trailing JSON or
NUL bytes are rejected. Records are limited to10MB and parser depth to32.
No `?`, `[NULL]`, `possibly`, or `external_input` is converted to a bit.

## Deterministic witness synthesis

For each explicit level i the generator matrices are denoted F_i and G_i.
Gaussian elimination constructs factors proving the complete matrix equations

```
F_i * sourceFactors_i = F_(i+1)
G_i * targetFactors_i = G_(i+1)
G_i * mapFactors_i = f * F_i.
```

Thus the entire generated subgroup decreases and the actual map preserves it.
The final descent factors are zero, since the next subgroup is zero. The
producer then solves full subgroup membership for x in F_s, f(x) in G_(s+n),
and y in G_(s+n). It solves the representative equation

```
[f * F_(s+1) | G_(s+n+1)] * [u;v] = f(x)+y
representative = x + F_(s+1)*u.
```

This supplies `sourceCorrection=u` and `targetCorrection=v`, with
`F_(s+1)u=representative+x` and
`G_(s+n+1)v=f(representative)+y`. The quotient equation may be inessential;
there is no artificial demand that its source or target quotient be nonzero.
Pivots are selected left-to-right and top-to-bottom, all free variables are
zero, and every produced witness is checked again by its explicit equation.

## Output and validation

The output retains exactly the input `data` and contains `version`,
`sourceFactors`, `targetFactors`, `mapFactors`, `sourceMember`, `imageMember`,
`targetMember`, `representative`, `sourceCorrection`, and `targetCorrection`.
These are the version1 wire fields in `FilteredExtensionCertificates`.
Factor matrices have sizes ha by ha, hb by hb, and hb by ha respectively.
All output keys are sorted; there is no optional whitespace; each record
ends with LF.

`test.py` compares acceptance against a separate exhaustive subgroup-image
and quotient-equation oracle, not another elimination routine. It checks
every output factor on all small generator vectors and verifies every
membership and correction equation. It includes all 1,152 scalar cases at
several lengths, 1,400 random small cases, three named semantic examples,
three byte-identical repeat runs, strict malformed records, batch recovery,
the64-dimensional limit, and an empty depth0 query at s=n=64.

The604 accepted small certificates are saved in `valid.jsonl`, with inputs
in `valid.input.jsonl`. `case_correction.json` requires a nonzero correction;
`case_nonzero.json` has a nonzero differential value; `case_empty.json`
exercises zero dimensions, and `case_dimension64.json` exercises the bound.
The cooperating Lean examples import these data and prove their semantic
validity by kernel reduction. `audit.json` records the exact C++ test inputs
and executable; separate Lean compile records establish kernel verification.

This is finite filtered additive algebra. It does not identify these groups
with a particular topological spectrum or the paper's ESS, prove actual
database basis completeness, or establish the Kervaire theorem.
