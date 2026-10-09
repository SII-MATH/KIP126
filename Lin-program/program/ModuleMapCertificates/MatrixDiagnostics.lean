import ModuleMapCertificates.MatrixImport

namespace ModuleMapCertificates
open NamedElementCertificates BranchReplayCertificates.BasisSemantics

def diagnoseMatrix (w : MatrixWire) : List String := Id.run do
  let mut errors := []
  if w.version != 1 then errors := errors ++ ["unsupported matrix version"]
  if w.sourceS != w.targetS || w.sourceT != w.targetT + 4 then
    errors := errors ++ ["degree shift must be (s,t) -> (s,t-4)"]
  if w.source.length != w.cols then errors := errors ++ ["source basis length"]
  if w.target.length != w.rows then errors := errors ++ ["target basis length"]
  if w.entries.length != w.rows * w.cols then errors := errors ++ ["matrix entry count"]
  if w.terms.length != w.cols then errors := errors ++ ["relation witness column count"]
  if !(decide (w.images.map Prod.fst).Nodup) then errors := errors ++ ["duplicate generator image"]
  for j in List.finRange w.cols do
    let m := w.src j
    if !w.images.any (fun p => p.1 == m.generator) then
      errors := errors ++ [s!"column {j.val}: missing module generator {m.generator}"]
    if !NamedElementCertificates.check w.relations (substitute w.image m)
        (decodedBasisVector w.tgt (fun i => w.matrix i j)) (w.terms[j.val]?.getD []) then
      errors := errors ++ [s!"column {j.val}: substitution/relation witness mismatch"]
  return errors

end ModuleMapCertificates
