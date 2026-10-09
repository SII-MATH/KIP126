# Conditional finite exclusion of d3(h1)

H1Zero.lean checks complete d2 comparisons for h1 at(1,2), its target(4,4),
h0's d3 target(4,3), the product source(2,3), and product target(5,5).
In particular h0's target and h0*h1's source are zero spaces. The proposed
(3,2) is not the d3 target of h0 in the (s,t) convention.

Products_h0.lean contains actual relation certificates h0*h1=0 and
h0*h0^4=h0^5. The valuation and full-coordinate multiplication bridge are
proved; the complete d2 comparison proves h0^5 is outside the whole boundary
image. Therefore the explicit LeibnizCompatible candidate premise forces
its single h0^4 coordinate to be zero. This proves a conditional finite
candidate exclusion without assuming independence of the target class.

It does not assert the true Adams Leibniz premise or replace any NULL by zero.
The remaining task is to instantiate that premise in an independently
verified page model. Both new Lean files compile; review_h1_zero.py checks all
five complete neighboring d2 inputs and the pinned database hash.
