import ExtComplexCertificates.GenericAugmentedImportTests

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Keep all lengths intact while corrupting actual incoming multiplication.
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with incoming := {augmentedT4.incoming with
      products := augmentedT4.incoming.products.map (fun _ => [])}} = false := by decide
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with incoming := {augmentedT4.incoming with
      entries := augmentedT4.incoming.entries.map (fun b => !b)}} = false := by decide
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with t := 3} = false := by decide
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with incoming := {augmentedT4.incoming with targetKind := "zero"}} = false := by decide
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with up := []} = false := by decide
example : checkAugmented producedT4.data actualAugmentation
    {augmentedT4 with down := [true]} = false := by decide
example : checkAugmented producedT4.data
    {actualAugmentation with values := [false,true,false,false,false,false,false,false]} augmentedT0 = false := by decide
example : checkAugmented producedT4.data
    {actualAugmentation with values := [true,false,false,false,false,false,false]} augmentedT0 = false := by decide

private def parseFails (s : String) : Bool :=
  match parseAugmented s with | .error _ => true | .ok _ => false
#guard parseFails ((Lean.toJson augmentedT4).compress.dropEnd 1 |>.toString.append ",\"unknown\":true}")
#guard parseFails ((Lean.toJson augmentedT4).compress.replace "\"rank\":3" "\"rank\":3,\"rank\":3")
#guard parseFails ((Lean.toJson augmentedT4).compress.replace "\"targetKind\":\"component\"" "\"targetKind\":null")
#guard !(diagnoseAugmented producedT4.data actualAugmentation
    {augmentedT4 with incoming := {augmentedT4.incoming with
      products := augmentedT4.incoming.products.map (fun _ => [])}}).isEmpty
end ExtComplexCertificates.GenericFreeComplex.GenericHom
