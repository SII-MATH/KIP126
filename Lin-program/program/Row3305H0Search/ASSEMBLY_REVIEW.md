# Independent Assembly review

No correctness findings. The two new lemmas compile successfully, with
matching source/log hashes and only standard axioms. The earlier failed
type-transparency attempt remains separate.

`actual_parameter_zero` derives the named row3305 differential from the
existing product theorem. The explicit binding identifies that same actual
element with e0 in the complete `TargetMeaning` coordinate system. Applying
the whole target differential equation to e0 then proves u=false. The
binding is necessary: the independent finite model check finds 48 cases
where an unrelated element has zero differential while u=true.

`actual_two_candidates` retains the full target meaning and the named
product/binding premises. It invokes the independent actual square-zero
candidate theorem and substitutes the derived u=false. Its conclusion
covers every actual source element and gives exactly zero or e0; it does
not select either value or supply a desired row3136 differential premise.

The review tests all 96 relabeled complete target maps; all 48 compatible
named-zero models force u=false. No Lean source or compile record was
modified by the review.
