import ExtComplexCertificates.GenericFreeComplexImport

namespace ExtComplexCertificates.GenericFreeComplex

def zeroWire : Wire := ⟨1,1,1,[0],[0],[[]],[[]],
  [⟨MilnorCertificates.generate ⟨1,0⟩,0,0⟩]⟩

example : zeroWire.Valid := by lin_cert using ()
example : checkWire {zeroWire with n := 2} = false := by decide
example : checkWire {zeroWire with rank := 2} = false := by decide
example : checkWire {zeroWire with products := []} = false := by decide
example : checkWire {zeroWire with witnesses := []} = false := by decide
example : checkWire {zeroWire with edges := [[],[]]} = false := by decide
example : checkWire {zeroWire with homological := []} = false := by decide
example : checkWire {zeroWire with internal := [0,0]} = false := by decide
example : checkWire {zeroWire with products := [[[0]]]} = false := by decide
example : checkWire {zeroWire with witnesses := [⟨⟨1,⟨1,0⟩,[]⟩,0,0⟩]} = false := by decide

-- Successful elaboration materializes explicit constructor data; lin_cert
-- separately checks the result in the kernel.
def importedEmpty : Wire := generic_complex_json%
  "{\"edges\":[],\"homological\":[],\"internal\":[],\"n\":0,\"products\":[],\"rank\":1,\"version\":1,\"witnesses\":[]}"
example : importedEmpty.Valid := by lin_cert using ()

private def parseFailed (s : String) : Bool :=
  match parseWire s with | .error _ => true | .ok _ => false

#guard parseFailed "{\"edges\":[],\"homological\":[],\"internal\":[],\"n\":0,\"products\":[],\"rank\":1,\"rank\":1,\"version\":1,\"witnesses\":[]}"
#guard parseFailed "{\"edges\":[],\"homological\":[],\"internal\":[],\"n\":0,\"products\":[],\"rank\":1,\"status\":\"unknown\",\"version\":1,\"witnesses\":[]}"
#guard parseFailed "{\"edges\":[[[null]]],\"homological\":[0],\"internal\":[0],\"n\":1,\"products\":[],\"rank\":1,\"version\":1,\"witnesses\":[]}"
#guard parseFailed "{\"edges\":[],\"homological\":[],\"internal\":[],\"n\":\"unknown\",\"products\":[],\"rank\":1,\"version\":1,\"witnesses\":[]}"
#guard (diagnoseWire {zeroWire with rank := 2}).isEmpty == false
#guard (diagnoseWire {zeroWire with n := 2}).isEmpty == false
end ExtComplexCertificates.GenericFreeComplex
