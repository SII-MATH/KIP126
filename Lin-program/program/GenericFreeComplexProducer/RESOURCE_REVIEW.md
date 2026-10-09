# Producer resource and input review

Reviewed `export.cpp` and `components.cpp` without changing their JSON schema or mathematical checking model.

Fixed:

- Component input previously lacked the 10MB record bound.
- Both executables previously checked size after `getline` had allocated the entire record. Shared bounded line reading now stores at most 10MB and discards the remainder of an oversized line before continuing.
- Component output previously had no cumulative witness-byte limit. It now stops at 100MB per arrow.
- Contraction search rejects a dense linear system above 100 million stored bits before allocating it.
- Product generation errors now include source-column and target-generator indices.
- Component input grading is checked globally, including edges outside the requested component range.

Integer reasoning: the parser checks the previous accumulator <=1,000,000 before multiplying by ten and adding one digit, so parsed values never exceed 10,000,009; no unsigned overflow occurs. Exponents are independently limited to 32, rank to 8, and all shifts use rank indices <=8. Thus Milnor weights are at most 32*(1+3+7+15+31+63+127+255)=16,384. Generator degrees plus such weights remain far below 32-bit overflow. Dimensions are limited to n<=32 and component dimension<=64 before matrix products and contraction storage are allocated. Window degree<=12 is checked before expensive coproduct generation. Coproduct Cartesian products enforce the million-term limit.

Unknown, negative, null, floating-point, malformed, leading-zero, duplicate and unknown-key inputs are rejected. Empty polynomial means zero; unsupported or out-of-window data causes explicit failure rather than zero. Coefficient multiplication order remains left coefficient times differential edge. Enumeration is increasing generator and lexicographic monomial order, independently checked against complete weight-filtered coordinates.

Regression coverage now includes huge integers, nesting depth, bounded input lines, leading zeros and negatives, in addition to rank/dimension/grading/cancellation errors, unknown fields and streaming recovery. `make ... all test` passes. The conservative caps remain unchanged for the t<=8 actual example; it does not require a larger window.
