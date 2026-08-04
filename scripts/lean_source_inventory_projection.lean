import KIP126.External.Claims

/-!
This tiny executable-facing module exports the projection which is shared by
the Lean catalogue and `reference/source-inventory.json`.  It is intentionally
kept outside the library namespace so the Python checker can invoke it with
`lake env lean` without adding an I/O dependency to the formalization.
-/

open KIP126.External

def printProjection : IO Unit := do
  for row in SourceInventory.projectionManifest do
    IO.println ("KIP126_SOURCE|" ++ row)
  for row in externalClaimProjectionManifest do
    IO.println ("KIP126_CLAIM|" ++ row)

#eval printProjection
