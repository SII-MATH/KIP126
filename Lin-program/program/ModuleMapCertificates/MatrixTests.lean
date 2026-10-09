import ModuleMapCertificates.MatrixActual
namespace ModuleMapCertificates
open MatrixActual
example : checkMatrixWire { s2t9 with entries := [] } = false := by decide
example : checkMatrixWire { s2t9 with targetT := 6 } = false := by decide
example : checkMatrixWire { s2t9 with source := [] } = false := by decide
example : checkMatrixWire { s2t9 with images := [] } = false := by decide
end ModuleMapCertificates
