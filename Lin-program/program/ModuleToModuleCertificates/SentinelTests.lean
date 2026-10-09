import ModuleToModuleCertificates.Actual
import ModuleToModuleCertificates.ShiftedActual
namespace ModuleToModuleCertificates
example : checkWire { Actual.s0t0 with images := [[[[4294967295]]]] } = false := by decide
example : checkWire { Actual.s0t0 with source := [[[[4294967295]]]] } = false := by decide
example : checkWire { Actual.s0t0 with target := [[[[4294967295]]]] } = false := by decide
example : checkWire { Actual.s0t0 with relations := [[[[4294967295]]]] } = false := by decide
example : checkShifted { ShiftedActual.s0t0 with algebra :=
    { ShiftedActual.s0t0.algebra with images := [[[[4294967295]]]] } } = false := by decide
end ModuleToModuleCertificates
