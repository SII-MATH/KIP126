import KIP126.External.Computation.LinProofs.Generated.Shard000
import KIP126.External.Computation.LinProofs.Generated.Shard001
import KIP126.External.Computation.LinProofs.Generated.Shard002
import KIP126.External.Computation.LinProofs.Generated.Shard003
import KIP126.External.Computation.LinProofs.Generated.Shard004
import KIP126.External.Computation.LinProofs.Generated.Shard005
import KIP126.External.Computation.LinProofs.Generated.Shard006
import KIP126.External.Computation.LinProofs.Generated.Shard007
import KIP126.External.Computation.LinProofs.Generated.Shard008
import KIP126.External.Computation.LinProofs.Generated.Shard009
import KIP126.External.Computation.LinProofs.Generated.Shard010
import KIP126.External.Computation.LinProofs.Generated.Shard011
import KIP126.External.Computation.LinProofs.Generated.Shard012
import KIP126.External.Computation.LinProofs.Generated.Shard013
import KIP126.External.Computation.LinProofs.Generated.Shard014
import KIP126.External.Computation.LinProofs.Generated.Shard015
import KIP126.External.Computation.LinProofs.Generated.Shard016
import KIP126.External.Computation.LinProofs.Generated.Shard017
import KIP126.External.Computation.LinProofs.Generated.Shard018
import KIP126.External.Computation.LinProofs.Generated.Shard019
import KIP126.External.Computation.LinProofs.Generated.Shard020
import KIP126.External.Computation.LinProofs.Generated.Shard021
import KIP126.External.Computation.LinProofs.Generated.Shard022
import KIP126.External.Computation.LinProofs.Generated.Shard023
import KIP126.External.Computation.LinProofs.Generated.Shard024
import KIP126.External.Computation.LinProofs.Generated.Shard025
import KIP126.External.Computation.LinProofs.Generated.Shard026
import KIP126.External.Computation.LinProofs.Generated.Shard027
import KIP126.External.Computation.LinProofs.Generated.Shard028
import KIP126.External.Computation.LinProofs.Generated.Shard029
import KIP126.External.Computation.LinProofs.Generated.Shard030
import KIP126.External.Computation.LinProofs.Generated.Shard031
import KIP126.External.Computation.LinProofs.Generated.Shard032
import KIP126.External.Computation.LinProofs.Generated.Shard033
import KIP126.External.Computation.LinProofs.Generated.Shard034
import KIP126.External.Computation.LinProofs.Generated.Shard035
import KIP126.External.Computation.LinProofs.Generated.Shard036
import KIP126.External.Computation.LinProofs.Generated.Shard037
import KIP126.External.Computation.LinProofs.Generated.Shard038
import KIP126.External.Computation.LinProofs.Generated.Shard039
import KIP126.External.Computation.LinProofs.Generated.Shard040
import KIP126.External.Computation.LinProofs.Generated.Shard041
import KIP126.External.Computation.LinProofs.Generated.Shard042
import KIP126.External.Computation.LinProofs.Generated.Shard043
import KIP126.External.Computation.LinProofs.Generated.Shard044
import KIP126.External.Computation.LinProofs.Generated.Shard045
import KIP126.External.Computation.LinProofs.Generated.Shard046
import KIP126.External.Computation.LinProofs.Generated.Shard047
import KIP126.External.Computation.LinProofs.Generated.Shard048
import KIP126.External.Computation.LinProofs.Generated.Shard049
import KIP126.External.Computation.LinProofs.Generated.Shard050
import KIP126.External.Computation.LinProofs.Generated.Shard051
import KIP126.External.Computation.LinProofs.Generated.Shard052
import KIP126.External.Computation.LinProofs.Generated.Shard053
import KIP126.External.Computation.LinProofs.Generated.Shard054
import KIP126.External.Computation.LinProofs.Generated.Shard055
import KIP126.External.Computation.LinProofs.Generated.Shard056
import KIP126.External.Computation.LinProofs.Generated.Shard057
import KIP126.External.Computation.LinProofs.Generated.Shard058
import KIP126.External.Computation.LinProofs.Generated.Shard059
import KIP126.External.Computation.LinProofs.Generated.Shard060
import KIP126.External.Computation.LinProofs.Generated.Shard061
import KIP126.External.Computation.LinProofs.Generated.Shard062
import KIP126.External.Computation.LinProofs.Generated.Shard063
import KIP126.External.Computation.LinProofs.Generated.Shard064
import KIP126.External.Computation.LinProofs.Generated.Shard065
import KIP126.External.Computation.LinProofs.Generated.Shard066
import KIP126.External.Computation.LinProofs.Generated.Shard067
import KIP126.External.Computation.LinProofs.Generated.Shard068
import KIP126.External.Computation.LinProofs.Generated.Shard069
import KIP126.External.Computation.LinProofs.Generated.Shard070
import KIP126.External.Computation.LinProofs.Generated.Shard071
import KIP126.External.Computation.LinProofs.Generated.Shard072
import KIP126.External.Computation.LinProofs.Generated.Shard073
import KIP126.External.Computation.LinProofs.Generated.Shard074
import KIP126.External.Computation.LinProofs.Generated.Shard075
import KIP126.External.Computation.LinProofs.Generated.Shard076
import KIP126.External.Computation.LinProofs.Generated.Shard077
import KIP126.External.Computation.LinProofs.Generated.Shard078
import KIP126.External.Computation.LinProofs.Generated.Shard079
import KIP126.External.Computation.LinProofs.Generated.Shard080
import KIP126.External.Computation.LinProofs.Generated.Shard081
import KIP126.External.Computation.LinProofs.Generated.Shard082
import KIP126.External.Computation.LinProofs.Generated.Shard083
import KIP126.External.Computation.LinProofs.Generated.Shard084
import KIP126.External.Computation.LinProofs.Generated.Shard085

namespace KIP126.Computation.LinProofs.RawData

def databaseSha256 : String := "3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248"
def sourceRowCount : Nat := 2672275
def differentialRowCount : Nat := 10907

/-- Lookup is shard-local so kernel checks need not unfold the whole table. -/
def lookup (shard offset : Nat) : Option DifferentialRow :=
  match shard with
  | 0 => shard0[offset]?
  | 1 => shard1[offset]?
  | 2 => shard2[offset]?
  | 3 => shard3[offset]?
  | 4 => shard4[offset]?
  | 5 => shard5[offset]?
  | 6 => shard6[offset]?
  | 7 => shard7[offset]?
  | 8 => shard8[offset]?
  | 9 => shard9[offset]?
  | 10 => shard10[offset]?
  | 11 => shard11[offset]?
  | 12 => shard12[offset]?
  | 13 => shard13[offset]?
  | 14 => shard14[offset]?
  | 15 => shard15[offset]?
  | 16 => shard16[offset]?
  | 17 => shard17[offset]?
  | 18 => shard18[offset]?
  | 19 => shard19[offset]?
  | 20 => shard20[offset]?
  | 21 => shard21[offset]?
  | 22 => shard22[offset]?
  | 23 => shard23[offset]?
  | 24 => shard24[offset]?
  | 25 => shard25[offset]?
  | 26 => shard26[offset]?
  | 27 => shard27[offset]?
  | 28 => shard28[offset]?
  | 29 => shard29[offset]?
  | 30 => shard30[offset]?
  | 31 => shard31[offset]?
  | 32 => shard32[offset]?
  | 33 => shard33[offset]?
  | 34 => shard34[offset]?
  | 35 => shard35[offset]?
  | 36 => shard36[offset]?
  | 37 => shard37[offset]?
  | 38 => shard38[offset]?
  | 39 => shard39[offset]?
  | 40 => shard40[offset]?
  | 41 => shard41[offset]?
  | 42 => shard42[offset]?
  | 43 => shard43[offset]?
  | 44 => shard44[offset]?
  | 45 => shard45[offset]?
  | 46 => shard46[offset]?
  | 47 => shard47[offset]?
  | 48 => shard48[offset]?
  | 49 => shard49[offset]?
  | 50 => shard50[offset]?
  | 51 => shard51[offset]?
  | 52 => shard52[offset]?
  | 53 => shard53[offset]?
  | 54 => shard54[offset]?
  | 55 => shard55[offset]?
  | 56 => shard56[offset]?
  | 57 => shard57[offset]?
  | 58 => shard58[offset]?
  | 59 => shard59[offset]?
  | 60 => shard60[offset]?
  | 61 => shard61[offset]?
  | 62 => shard62[offset]?
  | 63 => shard63[offset]?
  | 64 => shard64[offset]?
  | 65 => shard65[offset]?
  | 66 => shard66[offset]?
  | 67 => shard67[offset]?
  | 68 => shard68[offset]?
  | 69 => shard69[offset]?
  | 70 => shard70[offset]?
  | 71 => shard71[offset]?
  | 72 => shard72[offset]?
  | 73 => shard73[offset]?
  | 74 => shard74[offset]?
  | 75 => shard75[offset]?
  | 76 => shard76[offset]?
  | 77 => shard77[offset]?
  | 78 => shard78[offset]?
  | 79 => shard79[offset]?
  | 80 => shard80[offset]?
  | 81 => shard81[offset]?
  | 82 => shard82[offset]?
  | 83 => shard83[offset]?
  | 84 => shard84[offset]?
  | 85 => shard85[offset]?
  | _ => none

end KIP126.Computation.LinProofs.RawData
