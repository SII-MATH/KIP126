import ModuleToModuleCertificates.GeneralActual
namespace ModuleToModuleCertificates
open GeneralActual
example : checkWire { s0t0 with images := [] } = false := by decide
example : checkWire { s0t0 with entries := [false] } = false := by decide
end ModuleToModuleCertificates
