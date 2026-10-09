import LinearCertificates.Checker
namespace ReleaseComplex11
open LinearCertificates LinProgramCertificates
-- CW_eta_nu_sigma s=22 t=145
def outgoing1100 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1100 : Matrix 4 2 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1100 : IsComplex outgoing1100 incoming1100 := by lin_cert using ()
-- CW_eta_nu_sigma s=22 t=146
def outgoing1101 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1101 : Matrix 1 8 := fun i j => ([false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1101 : IsComplex outgoing1101 incoming1101 := by lin_cert using ()
-- CW_eta_nu_sigma s=22 t=147
def outgoing1102 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1102 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1102 : IsComplex outgoing1102 incoming1102 := by lin_cert using ()
-- CW_eta_nu_sigma s=22 t=148
def outgoing1103 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1103 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1103 : IsComplex outgoing1103 incoming1103 := by lin_cert using ()
-- CW_eta_nu_sigma s=23 t=145
def outgoing1104 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1104 : Matrix 6 2 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1104 : IsComplex outgoing1104 incoming1104 := by lin_cert using ()
-- CW_eta_nu_sigma s=23 t=147
def outgoing1105 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1105 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1105 : IsComplex outgoing1105 incoming1105 := by lin_cert using ()
-- CW_eta_nu_sigma s=23 t=148
def outgoing1106 : Matrix 4 7 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1106 : Matrix 7 2 := fun i j => ([false, false, true, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1106 : IsComplex outgoing1106 incoming1106 := by lin_cert using ()
-- CW_eta_nu_sigma s=24 t=146
def outgoing1107 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1107 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1107 : IsComplex outgoing1107 incoming1107 := by lin_cert using ()
-- CW_eta_nu_sigma s=24 t=147
def outgoing1108 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1108 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1108 : IsComplex outgoing1108 incoming1108 := by lin_cert using ()
-- CW_eta_nu_sigma s=24 t=148
def outgoing1109 : Matrix 1 7 := fun i j => ([true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1109 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1109 : IsComplex outgoing1109 incoming1109 := by lin_cert using ()
-- CW_eta_nu_sigma s=25 t=148
def outgoing1110 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1110 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1110 : IsComplex outgoing1110 incoming1110 := by lin_cert using ()
-- CW_nu_eta s=1 t=128
def outgoing1111 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1111 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1111 : IsComplex outgoing1111 incoming1111 := by lin_cert using ()
-- CW_nu_eta s=2 t=129
def outgoing1112 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1112 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1112 : IsComplex outgoing1112 incoming1112 := by lin_cert using ()
-- CW_nu_eta s=3 t=129
def outgoing1113 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1113 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1113 : IsComplex outgoing1113 incoming1113 := by lin_cert using ()
-- CW_nu_eta s=3 t=130
def outgoing1114 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1114 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1114 : IsComplex outgoing1114 incoming1114 := by lin_cert using ()
-- CW_nu_eta s=4 t=130
def outgoing1115 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1115 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1115 : IsComplex outgoing1115 incoming1115 := by lin_cert using ()
-- CW_nu_eta s=4 t=131
def outgoing1116 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1116 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1116 : IsComplex outgoing1116 incoming1116 := by lin_cert using ()
-- CW_nu_eta s=5 t=130
def outgoing1117 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1117 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1117 : IsComplex outgoing1117 incoming1117 := by lin_cert using ()
-- CW_nu_eta s=5 t=131
def outgoing1118 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1118 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1118 : IsComplex outgoing1118 incoming1118 := by lin_cert using ()
-- CW_nu_eta s=5 t=132
def outgoing1119 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1119 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1119 : IsComplex outgoing1119 incoming1119 := by lin_cert using ()
-- CW_nu_eta s=6 t=130
def outgoing1120 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1120 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1120 : IsComplex outgoing1120 incoming1120 := by lin_cert using ()
-- CW_nu_eta s=6 t=131
def outgoing1121 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1121 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1121 : IsComplex outgoing1121 incoming1121 := by lin_cert using ()
-- CW_nu_eta s=6 t=132
def outgoing1122 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1122 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1122 : IsComplex outgoing1122 incoming1122 := by lin_cert using ()
-- CW_nu_eta s=6 t=133
def outgoing1123 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1123 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1123 : IsComplex outgoing1123 incoming1123 := by lin_cert using ()
-- CW_nu_eta s=7 t=130
def outgoing1124 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1124 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1124 : IsComplex outgoing1124 incoming1124 := by lin_cert using ()
-- CW_nu_eta s=7 t=131
def outgoing1125 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1125 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1125 : IsComplex outgoing1125 incoming1125 := by lin_cert using ()
-- CW_nu_eta s=7 t=132
def outgoing1126 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1126 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1126 : IsComplex outgoing1126 incoming1126 := by lin_cert using ()
-- CW_nu_eta s=7 t=133
def outgoing1127 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1127 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1127 : IsComplex outgoing1127 incoming1127 := by lin_cert using ()
-- CW_nu_eta s=7 t=134
def outgoing1128 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1128 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1128 : IsComplex outgoing1128 incoming1128 := by lin_cert using ()
-- CW_nu_eta s=8 t=130
def outgoing1129 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1129 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1129 : IsComplex outgoing1129 incoming1129 := by lin_cert using ()
-- CW_nu_eta s=8 t=131
def outgoing1130 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1130 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1130 : IsComplex outgoing1130 incoming1130 := by lin_cert using ()
-- CW_nu_eta s=8 t=132
def outgoing1131 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1131 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1131 : IsComplex outgoing1131 incoming1131 := by lin_cert using ()
-- CW_nu_eta s=8 t=133
def outgoing1132 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1132 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1132 : IsComplex outgoing1132 incoming1132 := by lin_cert using ()
-- CW_nu_eta s=8 t=134
def outgoing1133 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1133 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1133 : IsComplex outgoing1133 incoming1133 := by lin_cert using ()
-- CW_nu_eta s=8 t=135
def outgoing1134 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1134 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1134 : IsComplex outgoing1134 incoming1134 := by lin_cert using ()
-- CW_nu_eta s=9 t=131
def outgoing1135 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1135 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1135 : IsComplex outgoing1135 incoming1135 := by lin_cert using ()
-- CW_nu_eta s=9 t=132
def outgoing1136 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1136 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1136 : IsComplex outgoing1136 incoming1136 := by lin_cert using ()
-- CW_nu_eta s=9 t=133
def outgoing1137 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1137 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1137 : IsComplex outgoing1137 incoming1137 := by lin_cert using ()
-- CW_nu_eta s=9 t=134
def outgoing1138 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1138 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1138 : IsComplex outgoing1138 incoming1138 := by lin_cert using ()
-- CW_nu_eta s=9 t=135
def outgoing1139 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1139 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1139 : IsComplex outgoing1139 incoming1139 := by lin_cert using ()
-- CW_nu_eta s=9 t=136
def outgoing1140 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1140 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1140 : IsComplex outgoing1140 incoming1140 := by lin_cert using ()
-- CW_nu_eta s=10 t=132
def outgoing1141 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1141 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1141 : IsComplex outgoing1141 incoming1141 := by lin_cert using ()
-- CW_nu_eta s=10 t=133
def outgoing1142 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1142 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1142 : IsComplex outgoing1142 incoming1142 := by lin_cert using ()
-- CW_nu_eta s=10 t=134
def outgoing1143 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1143 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1143 : IsComplex outgoing1143 incoming1143 := by lin_cert using ()
-- CW_nu_eta s=10 t=135
def outgoing1144 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1144 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1144 : IsComplex outgoing1144 incoming1144 := by lin_cert using ()
-- CW_nu_eta s=10 t=136
def outgoing1145 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1145 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1145 : IsComplex outgoing1145 incoming1145 := by lin_cert using ()
-- CW_nu_eta s=10 t=137
def outgoing1146 : Matrix 5 7 := fun i j => ([false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming1146 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1146 : IsComplex outgoing1146 incoming1146 := by lin_cert using ()
-- CW_nu_eta s=11 t=133
def outgoing1147 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1147 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1147 : IsComplex outgoing1147 incoming1147 := by lin_cert using ()
-- CW_nu_eta s=11 t=134
def outgoing1148 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1148 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1148 : IsComplex outgoing1148 incoming1148 := by lin_cert using ()
-- CW_nu_eta s=11 t=135
def outgoing1149 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1149 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1149 : IsComplex outgoing1149 incoming1149 := by lin_cert using ()
-- CW_nu_eta s=11 t=136
def outgoing1150 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1150 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1150 : IsComplex outgoing1150 incoming1150 := by lin_cert using ()
-- CW_nu_eta s=11 t=137
def outgoing1151 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1151 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1151 : IsComplex outgoing1151 incoming1151 := by lin_cert using ()
-- CW_nu_eta s=11 t=138
def outgoing1152 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1152 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1152 : IsComplex outgoing1152 incoming1152 := by lin_cert using ()
-- CW_nu_eta s=12 t=134
def outgoing1153 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1153 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1153 : IsComplex outgoing1153 incoming1153 := by lin_cert using ()
-- CW_nu_eta s=12 t=135
def outgoing1154 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1154 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1154 : IsComplex outgoing1154 incoming1154 := by lin_cert using ()
-- CW_nu_eta s=12 t=136
def outgoing1155 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1155 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1155 : IsComplex outgoing1155 incoming1155 := by lin_cert using ()
-- CW_nu_eta s=12 t=137
def outgoing1156 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, true, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1156 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1156 : IsComplex outgoing1156 incoming1156 := by lin_cert using ()
-- CW_nu_eta s=12 t=138
def outgoing1157 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1157 : Matrix 5 7 := fun i j => ([false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1157 : IsComplex outgoing1157 incoming1157 := by lin_cert using ()
-- CW_nu_eta s=12 t=139
def outgoing1158 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1158 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1158 : IsComplex outgoing1158 incoming1158 := by lin_cert using ()
-- CW_nu_eta s=13 t=135
def outgoing1159 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1159 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1159 : IsComplex outgoing1159 incoming1159 := by lin_cert using ()
-- CW_nu_eta s=13 t=136
def outgoing1160 : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1160 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1160 : IsComplex outgoing1160 incoming1160 := by lin_cert using ()
-- CW_nu_eta s=13 t=137
def outgoing1161 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1161 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1161 : IsComplex outgoing1161 incoming1161 := by lin_cert using ()
-- CW_nu_eta s=13 t=138
def outgoing1162 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1162 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1162 : IsComplex outgoing1162 incoming1162 := by lin_cert using ()
-- CW_nu_eta s=13 t=139
def outgoing1163 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1163 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1163 : IsComplex outgoing1163 incoming1163 := by lin_cert using ()
-- CW_nu_eta s=13 t=140
def outgoing1164 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1164 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1164 : IsComplex outgoing1164 incoming1164 := by lin_cert using ()
-- CW_nu_eta s=14 t=136
def outgoing1165 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1165 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1165 : IsComplex outgoing1165 incoming1165 := by lin_cert using ()
-- CW_nu_eta s=14 t=137
def outgoing1166 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1166 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1166 : IsComplex outgoing1166 incoming1166 := by lin_cert using ()
-- CW_nu_eta s=14 t=138
def outgoing1167 : Matrix 7 6 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1167 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, true, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1167 : IsComplex outgoing1167 incoming1167 := by lin_cert using ()
-- CW_nu_eta s=14 t=139
def outgoing1168 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1168 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1168 : IsComplex outgoing1168 incoming1168 := by lin_cert using ()
-- CW_nu_eta s=14 t=140
def outgoing1169 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1169 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1169 : IsComplex outgoing1169 incoming1169 := by lin_cert using ()
-- CW_nu_eta s=14 t=141
def outgoing1170 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1170 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1170 : IsComplex outgoing1170 incoming1170 := by lin_cert using ()
-- CW_nu_eta s=15 t=137
def outgoing1171 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1171 : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1171 : IsComplex outgoing1171 incoming1171 := by lin_cert using ()
-- CW_nu_eta s=15 t=138
def outgoing1172 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1172 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1172 : IsComplex outgoing1172 incoming1172 := by lin_cert using ()
-- CW_nu_eta s=15 t=139
def outgoing1173 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1173 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1173 : IsComplex outgoing1173 incoming1173 := by lin_cert using ()
-- CW_nu_eta s=15 t=140
def outgoing1174 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1174 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1174 : IsComplex outgoing1174 incoming1174 := by lin_cert using ()
-- CW_nu_eta s=15 t=141
def outgoing1175 : Matrix 4 4 := fun i j => ([false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1175 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1175 : IsComplex outgoing1175 incoming1175 := by lin_cert using ()
-- CW_nu_eta s=15 t=142
def outgoing1176 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1176 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1176 : IsComplex outgoing1176 incoming1176 := by lin_cert using ()
-- CW_nu_eta s=16 t=138
def outgoing1177 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming1177 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1177 : IsComplex outgoing1177 incoming1177 := by lin_cert using ()
-- CW_nu_eta s=16 t=139
def outgoing1178 : Matrix 2 7 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1178 : Matrix 7 6 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1178 : IsComplex outgoing1178 incoming1178 := by lin_cert using ()
-- CW_nu_eta s=16 t=140
def outgoing1179 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1179 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1179 : IsComplex outgoing1179 incoming1179 := by lin_cert using ()
-- CW_nu_eta s=16 t=141
def outgoing1180 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1180 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1180 : IsComplex outgoing1180 incoming1180 := by lin_cert using ()
-- CW_nu_eta s=16 t=142
def outgoing1181 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1181 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1181 : IsComplex outgoing1181 incoming1181 := by lin_cert using ()
-- CW_nu_eta s=16 t=143
def outgoing1182 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1182 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1182 : IsComplex outgoing1182 incoming1182 := by lin_cert using ()
-- CW_nu_eta s=17 t=139
def outgoing1183 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1183 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1183 : IsComplex outgoing1183 incoming1183 := by lin_cert using ()
-- CW_nu_eta s=17 t=140
def outgoing1184 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1184 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1184 : IsComplex outgoing1184 incoming1184 := by lin_cert using ()
-- CW_nu_eta s=17 t=141
def outgoing1185 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1185 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1185 : IsComplex outgoing1185 incoming1185 := by lin_cert using ()
-- CW_nu_eta s=17 t=142
def outgoing1186 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1186 : Matrix 4 4 := fun i j => ([false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1186 : IsComplex outgoing1186 incoming1186 := by lin_cert using ()
-- CW_nu_eta s=17 t=143
def outgoing1187 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1187 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1187 : IsComplex outgoing1187 incoming1187 := by lin_cert using ()
-- CW_nu_eta s=17 t=144
def outgoing1188 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1188 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1188 : IsComplex outgoing1188 incoming1188 := by lin_cert using ()
-- CW_nu_eta s=18 t=140
def outgoing1189 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1189 : Matrix 2 7 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1189 : IsComplex outgoing1189 incoming1189 := by lin_cert using ()
-- CW_nu_eta s=18 t=141
def outgoing1190 : Matrix 1 5 := fun i j => ([false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1190 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1190 : IsComplex outgoing1190 incoming1190 := by lin_cert using ()
-- CW_nu_eta s=18 t=142
def outgoing1191 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1191 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1191 : IsComplex outgoing1191 incoming1191 := by lin_cert using ()
-- CW_nu_eta s=18 t=143
def outgoing1192 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1192 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1192 : IsComplex outgoing1192 incoming1192 := by lin_cert using ()
-- CW_nu_eta s=18 t=144
def outgoing1193 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1193 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1193 : IsComplex outgoing1193 incoming1193 := by lin_cert using ()
-- CW_nu_eta s=18 t=145
def outgoing1194 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1194 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1194 : IsComplex outgoing1194 incoming1194 := by lin_cert using ()
-- CW_nu_eta s=19 t=141
def outgoing1195 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1195 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1195 : IsComplex outgoing1195 incoming1195 := by lin_cert using ()
-- CW_nu_eta s=19 t=142
def outgoing1196 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1196 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1196 : IsComplex outgoing1196 incoming1196 := by lin_cert using ()
-- CW_nu_eta s=19 t=143
def outgoing1197 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1197 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1197 : IsComplex outgoing1197 incoming1197 := by lin_cert using ()
-- CW_nu_eta s=19 t=144
def outgoing1198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val * 4 + j.val]!
def incoming1198 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1198 : IsComplex outgoing1198 incoming1198 := by lin_cert using ()
-- CW_nu_eta s=19 t=145
def outgoing1199 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1199 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1199 : IsComplex outgoing1199 incoming1199 := by lin_cert using ()
end ReleaseComplex11
