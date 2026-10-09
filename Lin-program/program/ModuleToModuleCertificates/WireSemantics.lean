import ModuleToModuleCertificates.Import
namespace ModuleToModuleCertificates
open NamedElementCertificates LinearCertificates
open ModuleMapCertificates (interpretModule)

theorem Wire.allVectors {R M N : Type} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
    (w : Wire) (h : w.Valid) (f : M →ₗ[R] N) (v : Nat → R)
    (source : Fin w.sourceGenerators → M) (target : Fin w.targetGenerators → N)
    (compatible : ∀ i, f (source i) = ModuleExpressions.evaluate v target (w.img i))
    (relationsVanish : ∀ r ∈ w.rels, ModuleExpressions.evaluate v target r = 0)
    (x : Vec w.cols) :
    interpretModule (fun i => ModuleExpressions.evaluate v target (w.tgt i)) (eval w.mat x) =
      f (interpretModule (fun j => ModuleExpressions.evaluate v source (w.src j)) x) := by
  rw [interpretModule_matrix (R:=R)]
  have hc (j : Fin w.cols) :
      interpretModule (fun i => ModuleExpressions.evaluate v target (w.tgt i)) (fun i => w.mat i j) =
        f (ModuleExpressions.evaluate v source (w.src j)) := by
    rw [← decode_evaluate, substitute_linear f v source target w.img compatible]
    exact (h.2 j R N v target relationsVanish).symm
  rw [funext hc]
  exact interpret_linear f _ x

/-- Report the first exact failing column, relation index or target coordinate. -/
def diagnose (w : Wire) : Option String := Id.run do
  if !w.shape then return some "shape/version/degree or generator-expression dimensions"
  for j in List.finRange w.cols do
    let ts := w.terms[j.val]?.getD []
    for t in ts do
      if t.relation ≥ w.relations.length then
        return some s!"column {j.val}: relation index {t.relation} out of bounds"
    let input := substitute w.img (w.src j)
    let output := decode w.tgt (fun i => w.mat i j)
    let combined := ModuleExpressions.combine w.rels ts
    for i in List.finRange w.targetGenerators do
      if !NamedElementCertificates.check [] (input i ++ output i) (combined i) [] then
        return some s!"column {j.val}: target generator {i.val} polynomial coefficients disagree"
  return none
end ModuleToModuleCertificates
