import ExtComplexCertificates.GenericComponentExamples
import ExtComplexCertificates.GenericComponentDiagnostics

namespace ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0

example : checkExactComponent producedT4.data {component15 with status := "unknown"} = false := by decide
example : checkExactComponent producedT4.data
    {component15 with incoming := {component15.incoming with target := []}} = false := by decide
example : checkExactComponent producedT4.data
    {component15 with outgoing := {component15.outgoing with source := []}} = false := by decide
example : checkExactComponent producedT4.data
    {component15 with outgoing := {component15.outgoing with products := []}} = false := by decide
example : checkExactComponent producedT4.data
    {component15 with outgoing := {component15.outgoing with witnesses := []}} = false := by decide
example : checkExactComponent producedT4.data
    {component15 with outgoing := {component15.outgoing with entries := []}} = false := by decide
example : checkExactComponent producedT4.data {component15 with down := []} = false := by decide
example : checkExactComponent producedT4.data {component1 with status := "exact"} = false := by decide

#eval diagnoseComponent producedT4.data
  {component15 with outgoing := {component15.outgoing with source := []}}
#eval diagnoseComponent producedT4.data {component15 with down := []}
#eval diagnoseComponent producedT4.data {component1 with status := "exact"}

private def rejects (text : String) : Bool :=
  match parseComponent text with | .error _ => true | .ok _ => false
#guard rejects "{\"status\":\"unknown\"}"
#guard rejects ((Lean.toJson component15).compress.dropEnd 1 |>.toString.append ",\"version\":1}")
#guard rejects ((Lean.toJson component15).compress.dropEnd 1 |>.toString.append ",\"external_input\":true}")

end ExtComplexCertificates.GenericFreeComplex
