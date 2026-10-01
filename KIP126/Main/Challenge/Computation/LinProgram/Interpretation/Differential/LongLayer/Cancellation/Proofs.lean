import KIP126.LinProgram.Interpretation.Differential.LongLayer.Cancellation.Proofs

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Classical.Adams

noncomputable section

/-- In the covered target degree, the two cross products cancel by the Lin
quotient's commutativity and characteristic two. No differential rule is
used: the first input may in particular be the actual differential of h₆. -/
theorem Challenge.LinE2Presentation.h6_cross_products_add_eq_zero (P : LinE2Presentation)
    (x : sphereAdamsData.Page 2 (3, 65)) (y : sphereAdamsData.Page 2 (1, 64)) :
    P.product 3 65 1 64 x y + P.product 1 64 3 65 y x = 0 := by
  sorry

end
end KIP126.Classical.Adams
