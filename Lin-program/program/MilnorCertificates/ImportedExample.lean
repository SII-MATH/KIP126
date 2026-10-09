import MilnorCertificates.Import
open MilnorCertificates
def importedExample : Bundle := milnor_json% "{\"certificate\":{\"expansions\":[[[[0,0],[0,0]]],[[[0,1],[0,0]],[[2,0],[1,0]],[[0,0],[0,1]]],[[[1,0],[0,0]],[[0,0],[1,0]]],[[[2,0],[0,0]],[[1,0],[1,0]],[[1,0],[1,0]],[[0,0],[2,0]]],[[[3,0],[0,0]],[[2,0],[1,0]],[[2,0],[1,0]],[[1,0],[2,0]],[[2,0],[1,0]],[[1,0],[2,0]],[[1,0],[2,0]],[[0,0],[3,0]]]],\"version\":1,\"window\":{\"degree\":3,\"rank\":2}},\"left\":[[2,0]],\"output\":[[3,0],[0,1]],\"right\":[[1,0]]}"
example : IsMilnorProduct importedExample.certificate.window importedExample.left importedExample.right importedExample.output := by
  milnor_cert using importedExample.certificate
#print axioms MilnorCertificates.check_sound
#print axioms MilnorCertificates.decode_sound
