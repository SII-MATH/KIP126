import SemilinearMapCertificates.Actual
namespace SemilinearMapCertificates
open Actual
example : checkWire { basis0 with output := [] } = false := by decide
example : checkWire { basis0 with images := [] } = false := by decide
example : checkWire { basis0 with input := ⟨[0],0⟩ } = false := by decide
example : checkWire { basis0 with images := [(0,[[4294967295]])] } = false := by decide
end SemilinearMapCertificates
