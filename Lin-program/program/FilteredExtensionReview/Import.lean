import FilteredExtensionCertificates.Import

namespace FilteredExtensionReview
open FilteredExtensionCertificates

elab "negative_filtered_extensions% " path:str : term => do
  let text <- IO.FS.readFile path.getString
  let ws <- (physicalLines text).zipIdx.mapM fun (line, i) => do
    match parse line with
    | .ok w => pure w
    | .error e => throwError "{path.getString}: line {i+1}: {e}"
  return Lean.toExpr ws

elab "negative_filtered_extension% " path:str : term => do
  let text <- IO.FS.readFile path.getString
  match physicalLines text with
  | [line] =>
    match parse line with
    | .ok w => return Lean.toExpr w
    | .error e => throwError "{path.getString}: {e}"
  | _ => throwError "{path.getString}: expected exactly one record"

end FilteredExtensionReview
