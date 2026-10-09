import ExtComplexCertificates.ActualResolution

namespace ExtComplexCertificates.ActualResolution
set_option maxRecDepth 20000
set_option maxHeartbeats 10000000

def actualRows : List RawGenerator := raw_resolution% "ExtComplexCertificates/actual-s0/resolution.jsonl"

theorem actualResolutionSquareZero : RawValid actualRows :=
  checkRaw_sound actualRows (by decide)

example : rawCheck [] = false := by decide
example : rawCheck (actualRows.filter fun r => r.id != 524288) = false := by decide
example : rawCheck (actualRows.map fun r => if r.id = 524288 then {r with t := 2} else r) = false := by decide

#print axioms actualResolutionSquareZero

end ExtComplexCertificates.ActualResolution
