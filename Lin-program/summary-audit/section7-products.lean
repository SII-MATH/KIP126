import KIPBase.E2pageCompute
open KIPBase.SphereE2.Compute

def main : IO Unit := do
  let .ok engine := loadEngine | throw (IO.userError "failed to load E2 relations")
  for (label, a, b) in [
    ("h2_h6_Md0", "2,1", "69,1,79,1"),
    ("h2_h5_x91_11", "2,1", "18,1,188,1"),
    ("h1_e0_Delta_h6g", "1,1", "9,1,251,1"),
    ("h5Sq_B", "18,2", "82,1")
  ] do
    let .ok result := engine.multiplyStrings a b | throw (IO.userError s!"failed: {label}")
    IO.println s!"{label}: {displayResult result}"
  for (label, g, tSrc) in [("A_h0_preimages", 0, 138), ("A_h2_preimages", 2, 135)] do
    for ((s, t, i), _) in engine.byCoordinate.toList do
      if s == 13 && t == tSrc then
        let .ok result := engine.multiplyBasis #[(1, if g == 0 then 1 else 4, 0)] #[(s,t,i)]
          | throw (IO.userError s!"failed: {label}")
        IO.println s!"{label} source {i}: {displayResult result}"
