import HighFiltrationD2Certificates.Comparisons

namespace HighFiltrationD2Certificates.Tests
open LinearCertificates Data

example : check { d55_180 with basis := [false] } = false := by decide
example : check { d55_180 with inverse := [false] } = false := by decide
example : check { d55_180 with matrix := [false] } = false := by decide
example : check { d55_180 with images := [] } = false := by decide
example : check { d55_180 with matrix := [true, false] } = false := by decide
example : check { d55_180 with version := 2 } = false := by decide
example : check { d49_177 with basis := [true, false, true, false] } = false := by decide
example : check d51_176 = true := by decide

example : diagnose { d55_180 with inverse := [false] } = some "basis*inverse[0,0]" := by decide
example : diagnose { d55_180 with matrix := [false] } = some "matrix[0,0]" := by decide
example : diagnose { d55_180 with images := [] } = some "images.length" := by decide
example : diagnose d55_180 = none := by decide

private def rejected (s : String) : Bool :=
  match HighFiltrationD2Certificates.parse s with
  | .error _ => true
  | .ok _ => false

#guard !(rejected (Lean.toJson d55_180).compress)
#guard rejected "{\"basis\":[true],\"cols\":1,\"images\":[],\"inverse\":[true],\"matrix\":[true],\"rows\":1,\"version\":1}"
#guard rejected "{\"basis\":[true],\"cols\":1,\"images\":[true],\"inverse\":[true],\"matrix\":[true],\"rows\":1,\"version\":1,\"version\":1}"
#guard rejected "{\"basis\":[true],\"cols\":1,\"images\":[true],\"inverse\":[true],\"matrix\":[true],\"rows\":1,\"unknown\":1,\"version\":1}"
#guard rejected "{\"basis\":[true],\"cols\":1,\"images\":[true],\"inverse\":[true],\"matrix\":[null],\"rows\":1,\"version\":1}"
#guard rejected "{}"

theorem reconstructed_nonzero (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d55_180.basisMatrix i j) = (fun i => d55_180.imageMatrix i j)) :
    d (fun _ => true) = (fun _ => true) := by
  rw [d55_180_reconstruct d hz ha values]
  funext i
  exact (show ∀ i : Fin 1, eval d55_180.outputMatrix (fun _ => true) i = true from by decide) i

#print axioms reconstructed_nonzero
end HighFiltrationD2Certificates.Tests
