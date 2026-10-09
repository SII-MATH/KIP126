import FilteredExtensionCertificates.Import

namespace FilteredExtensionReview
open FilteredExtensionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

elab "negative_filtered_extensions% " path:str : term => do
  let text <- IO.FS.readFile path.getString
  let ws <- (physicalLines text).zipIdx.mapM fun (line, i) => do
    match parse line with
    | .ok w => pure w
    | .error e => throwError "{path.getString}: line {i+1}: {e}"
  return Lean.toExpr ws

def negative : List WireCertificate :=
  negative_filtered_extensions% "FilteredExtensionReview/negative.jsonl"

theorem negative_count : negative.length = 112 := by decide

theorem every_mutation_rejected :
    negative.all (fun w => decide (checkWire w = .ok false)) = true := by decide

theorem selected_mutations_rejected (w : WireCertificate) (hw : List.Mem w negative) :
    checkWire w = .ok false := by
  have all := List.all_eq_true.mp every_mutation_rejected
  exact of_decide_eq_true (all w hw)

#print axioms negative_count
#print axioms every_mutation_rejected
#print axioms selected_mutations_rejected
end FilteredExtensionReview
