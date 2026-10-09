import MilnorCertificates.Import

namespace MilnorCertificates

def smallWindow : Window := ⟨2, 3⟩

/-- Sq(1) Sq(1) = 0: the two xi_1 tensor xi_1 contributions cancel. -/
theorem squareOne : IsMilnorProduct smallWindow [[1, 0]] [[1, 0]] [] := by
  milnor_cert using generate smallWindow

/-- The asymmetric xi_2 term detects the multiplication order. -/
theorem squareTwoOne :
    IsMilnorProduct smallWindow [[2, 0]] [[1, 0]] [[3, 0], [0, 1]] := by
  milnor_cert using generate smallWindow

theorem squareOneTwo :
    IsMilnorProduct smallWindow [[1, 0]] [[2, 0]] [[3, 0]] := by
  milnor_cert using generate smallWindow

example : check smallWindow [[2, 0]] [[1, 0]] [[3, 0]] (generate smallWindow) = false := by
  decide

example : check smallWindow [[1, 0]] [[1, 0]] [] ⟨1, smallWindow, []⟩ = false := by
  decide

end MilnorCertificates
