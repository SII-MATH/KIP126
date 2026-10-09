import ModuleToModuleCertificates.ShiftedActual
namespace ModuleToModuleCertificates
open ShiftedActual
example : checkShifted { s0t0 with suspension := 1 } = false := by decide
example : checkShifted { s0t0 with filtration := 0 } = false := by decide
example : checkShifted { s0t0 with targetT := 0 } = false := by decide
example : checkShifted { s0t0 with algebra := { s0t0.algebra with images := [] } } = false := by decide
end ModuleToModuleCertificates
