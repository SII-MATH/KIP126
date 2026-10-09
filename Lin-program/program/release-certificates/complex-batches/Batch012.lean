import LinearCertificates.Checker
namespace ReleaseComplex12
open LinearCertificates LinProgramCertificates
-- CW_nu_eta s=19 t=146
def outgoing1200 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1200 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1200 : IsComplex outgoing1200 incoming1200 := by lin_cert using ()
-- CW_nu_eta s=20 t=142
def outgoing1201 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1201 : Matrix 1 5 := fun i j => ([false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1201 : IsComplex outgoing1201 incoming1201 := by lin_cert using ()
-- CW_nu_eta s=20 t=143
def outgoing1202 : Matrix 3 2 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1202 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1202 : IsComplex outgoing1202 incoming1202 := by lin_cert using ()
-- CW_nu_eta s=20 t=144
def outgoing1203 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1203 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1203 : IsComplex outgoing1203 incoming1203 := by lin_cert using ()
-- CW_nu_eta s=20 t=145
def outgoing1204 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1204 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1204 : IsComplex outgoing1204 incoming1204 := by lin_cert using ()
-- CW_nu_eta s=20 t=146
def outgoing1205 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1205 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1205 : IsComplex outgoing1205 incoming1205 := by lin_cert using ()
-- CW_nu_eta s=20 t=147
def outgoing1206 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1206 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1206 : IsComplex outgoing1206 incoming1206 := by lin_cert using ()
-- CW_nu_eta s=21 t=143
def outgoing1207 : Matrix 2 2 := fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1207 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1207 : IsComplex outgoing1207 incoming1207 := by lin_cert using ()
-- CW_nu_eta s=21 t=144
def outgoing1208 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1208 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1208 : IsComplex outgoing1208 incoming1208 := by lin_cert using ()
-- CW_nu_eta s=21 t=146
def outgoing1209 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1209 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1209 : IsComplex outgoing1209 incoming1209 := by lin_cert using ()
-- CW_nu_eta s=21 t=147
def outgoing1210 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1210 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1210 : IsComplex outgoing1210 incoming1210 := by lin_cert using ()
-- CW_nu_eta s=21 t=148
def outgoing1211 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1211 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1211 : IsComplex outgoing1211 incoming1211 := by lin_cert using ()
-- CW_nu_eta s=22 t=144
def outgoing1212 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1212 : Matrix 3 2 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1212 : IsComplex outgoing1212 incoming1212 := by lin_cert using ()
-- CW_nu_eta s=22 t=145
def outgoing1213 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1213 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1213 : IsComplex outgoing1213 incoming1213 := by lin_cert using ()
-- CW_nu_eta s=22 t=146
def outgoing1214 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1214 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1214 : IsComplex outgoing1214 incoming1214 := by lin_cert using ()
-- CW_nu_eta s=22 t=147
def outgoing1215 : Matrix 1 5 := fun i j => ([false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1215 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1215 : IsComplex outgoing1215 incoming1215 := by lin_cert using ()
-- CW_nu_eta s=22 t=148
def outgoing1216 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1216 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1216 : IsComplex outgoing1216 incoming1216 := by lin_cert using ()
-- CW_nu_eta s=23 t=145
def outgoing1217 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1217 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1217 : IsComplex outgoing1217 incoming1217 := by lin_cert using ()
-- CW_nu_eta s=23 t=147
def outgoing1218 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1218 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1218 : IsComplex outgoing1218 incoming1218 := by lin_cert using ()
-- CW_nu_eta s=23 t=148
def outgoing1219 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1219 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1219 : IsComplex outgoing1219 incoming1219 := by lin_cert using ()
-- CW_nu_eta s=24 t=146
def outgoing1220 : Matrix 2 2 := fun i j => ([false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1220 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1220 : IsComplex outgoing1220 incoming1220 := by lin_cert using ()
-- CW_nu_eta s=24 t=147
def outgoing1221 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1221 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1221 : IsComplex outgoing1221 incoming1221 := by lin_cert using ()
-- CW_nu_eta s=24 t=148
def outgoing1222 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1222 : Matrix 1 5 := fun i j => ([false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1222 : IsComplex outgoing1222 incoming1222 := by lin_cert using ()
-- CW_nu_eta s=25 t=147
def outgoing1223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1223 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1223 : IsComplex outgoing1223 incoming1223 := by lin_cert using ()
-- CW_nu_eta s=25 t=148
def outgoing1224 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1224 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1224 : IsComplex outgoing1224 incoming1224 := by lin_cert using ()
-- CW_nu_eta_2 s=1 t=128
def outgoing1225 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1225 : IsComplex outgoing1225 incoming1225 := by lin_cert using ()
-- CW_nu_eta_2 s=2 t=129
def outgoing1226 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1226 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1226 : IsComplex outgoing1226 incoming1226 := by lin_cert using ()
-- CW_nu_eta_2 s=3 t=129
def outgoing1227 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1227 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1227 : IsComplex outgoing1227 incoming1227 := by lin_cert using ()
-- CW_nu_eta_2 s=3 t=130
def outgoing1228 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1228 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1228 : IsComplex outgoing1228 incoming1228 := by lin_cert using ()
-- CW_nu_eta_2 s=4 t=130
def outgoing1229 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1229 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1229 : IsComplex outgoing1229 incoming1229 := by lin_cert using ()
-- CW_nu_eta_2 s=4 t=131
def outgoing1230 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1230 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1230 : IsComplex outgoing1230 incoming1230 := by lin_cert using ()
-- CW_nu_eta_2 s=5 t=130
def outgoing1231 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1231 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1231 : IsComplex outgoing1231 incoming1231 := by lin_cert using ()
-- CW_nu_eta_2 s=5 t=131
def outgoing1232 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1232 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1232 : IsComplex outgoing1232 incoming1232 := by lin_cert using ()
-- CW_nu_eta_2 s=5 t=132
def outgoing1233 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1233 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1233 : IsComplex outgoing1233 incoming1233 := by lin_cert using ()
-- CW_nu_eta_2 s=6 t=130
def outgoing1234 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1234 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1234 : IsComplex outgoing1234 incoming1234 := by lin_cert using ()
-- CW_nu_eta_2 s=6 t=131
def outgoing1235 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1235 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1235 : IsComplex outgoing1235 incoming1235 := by lin_cert using ()
-- CW_nu_eta_2 s=6 t=132
def outgoing1236 : Matrix 3 3 := fun i j => ([false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1236 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1236 : IsComplex outgoing1236 incoming1236 := by lin_cert using ()
-- CW_nu_eta_2 s=6 t=133
def outgoing1237 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1237 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1237 : IsComplex outgoing1237 incoming1237 := by lin_cert using ()
-- CW_nu_eta_2 s=7 t=130
def outgoing1238 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1238 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1238 : IsComplex outgoing1238 incoming1238 := by lin_cert using ()
-- CW_nu_eta_2 s=7 t=131
def outgoing1239 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1239 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1239 : IsComplex outgoing1239 incoming1239 := by lin_cert using ()
-- CW_nu_eta_2 s=7 t=132
def outgoing1240 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1240 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1240 : IsComplex outgoing1240 incoming1240 := by lin_cert using ()
-- CW_nu_eta_2 s=7 t=133
def outgoing1241 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1241 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1241 : IsComplex outgoing1241 incoming1241 := by lin_cert using ()
-- CW_nu_eta_2 s=7 t=134
def outgoing1242 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1242 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1242 : IsComplex outgoing1242 incoming1242 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=130
def outgoing1243 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1243 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1243 : IsComplex outgoing1243 incoming1243 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=131
def outgoing1244 : Matrix 5 4 := fun i j => ([true, true, true, false, false, false, false, false, true, true, true, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1244 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1244 : IsComplex outgoing1244 incoming1244 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=132
def outgoing1245 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1245 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1245 : IsComplex outgoing1245 incoming1245 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=133
def outgoing1246 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1246 : Matrix 3 3 := fun i j => ([false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1246 : IsComplex outgoing1246 incoming1246 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=134
def outgoing1247 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1247 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1247 : IsComplex outgoing1247 incoming1247 := by lin_cert using ()
-- CW_nu_eta_2 s=8 t=135
def outgoing1248 : Matrix 3 3 := fun i j => ([true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1248 : Matrix 3 3 := fun i j => ([false, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1248 : IsComplex outgoing1248 incoming1248 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=131
def outgoing1249 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1249 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1249 : IsComplex outgoing1249 incoming1249 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=132
def outgoing1250 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1250 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1250 : IsComplex outgoing1250 incoming1250 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=133
def outgoing1251 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1251 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1251 : IsComplex outgoing1251 incoming1251 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=134
def outgoing1252 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1252 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1252 : IsComplex outgoing1252 incoming1252 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=135
def outgoing1253 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1253 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1253 : IsComplex outgoing1253 incoming1253 := by lin_cert using ()
-- CW_nu_eta_2 s=9 t=136
def outgoing1254 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1254 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1254 : IsComplex outgoing1254 incoming1254 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=132
def outgoing1255 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1255 : Matrix 5 4 := fun i j => ([true, true, true, false, false, false, false, false, true, true, true, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1255 : IsComplex outgoing1255 incoming1255 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=133
def outgoing1256 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1256 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1256 : IsComplex outgoing1256 incoming1256 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=134
def outgoing1257 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1257 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1257 : IsComplex outgoing1257 incoming1257 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=135
def outgoing1258 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1258 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1258 : IsComplex outgoing1258 incoming1258 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=136
def outgoing1259 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1259 : Matrix 3 3 := fun i j => ([true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1259 : IsComplex outgoing1259 incoming1259 := by lin_cert using ()
-- CW_nu_eta_2 s=10 t=137
def outgoing1260 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1260 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1260 : IsComplex outgoing1260 incoming1260 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=133
def outgoing1261 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1261 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1261 : IsComplex outgoing1261 incoming1261 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=134
def outgoing1262 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1262 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1262 : IsComplex outgoing1262 incoming1262 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=135
def outgoing1263 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1263 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1263 : IsComplex outgoing1263 incoming1263 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=136
def outgoing1264 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1264 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1264 : IsComplex outgoing1264 incoming1264 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=137
def outgoing1265 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1265 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1265 : IsComplex outgoing1265 incoming1265 := by lin_cert using ()
-- CW_nu_eta_2 s=11 t=138
def outgoing1266 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1266 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1266 : IsComplex outgoing1266 incoming1266 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=134
def outgoing1267 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1267 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1267 : IsComplex outgoing1267 incoming1267 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=135
def outgoing1268 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1268 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1268 : IsComplex outgoing1268 incoming1268 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=136
def outgoing1269 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1269 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1269 : IsComplex outgoing1269 incoming1269 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=137
def outgoing1270 : Matrix 4 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1270 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1270 : IsComplex outgoing1270 incoming1270 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=138
def outgoing1271 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1271 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1271 : IsComplex outgoing1271 incoming1271 := by lin_cert using ()
-- CW_nu_eta_2 s=12 t=139
def outgoing1272 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1272 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1272 : IsComplex outgoing1272 incoming1272 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=135
def outgoing1273 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1273 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1273 : IsComplex outgoing1273 incoming1273 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=136
def outgoing1274 : Matrix 4 4 := fun i j => ([true, false, false, false, true, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1274 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1274 : IsComplex outgoing1274 incoming1274 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=137
def outgoing1275 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1275 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1275 : IsComplex outgoing1275 incoming1275 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=138
def outgoing1276 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1276 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1276 : IsComplex outgoing1276 incoming1276 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=139
def outgoing1277 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1277 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1277 : IsComplex outgoing1277 incoming1277 := by lin_cert using ()
-- CW_nu_eta_2 s=13 t=140
def outgoing1278 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1278 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1278 : IsComplex outgoing1278 incoming1278 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=136
def outgoing1279 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1279 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1279 : IsComplex outgoing1279 incoming1279 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=137
def outgoing1280 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1280 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1280 : IsComplex outgoing1280 incoming1280 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=138
def outgoing1281 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1281 : Matrix 4 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1281 : IsComplex outgoing1281 incoming1281 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=139
def outgoing1282 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1282 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1282 : IsComplex outgoing1282 incoming1282 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=140
def outgoing1283 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1283 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1283 : IsComplex outgoing1283 incoming1283 := by lin_cert using ()
-- CW_nu_eta_2 s=14 t=141
def outgoing1284 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1284 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1284 : IsComplex outgoing1284 incoming1284 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=137
def outgoing1285 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1285 : Matrix 4 4 := fun i j => ([true, false, false, false, true, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1285 : IsComplex outgoing1285 incoming1285 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=138
def outgoing1286 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1286 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1286 : IsComplex outgoing1286 incoming1286 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=139
def outgoing1287 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1287 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1287 : IsComplex outgoing1287 incoming1287 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=140
def outgoing1288 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1288 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1288 : IsComplex outgoing1288 incoming1288 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=141
def outgoing1289 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1289 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1289 : IsComplex outgoing1289 incoming1289 := by lin_cert using ()
-- CW_nu_eta_2 s=15 t=142
def outgoing1290 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1290 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1290 : IsComplex outgoing1290 incoming1290 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=138
def outgoing1291 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1291 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1291 : IsComplex outgoing1291 incoming1291 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=139
def outgoing1292 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1292 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1292 : IsComplex outgoing1292 incoming1292 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=140
def outgoing1293 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1293 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1293 : IsComplex outgoing1293 incoming1293 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=141
def outgoing1294 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1294 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1294 : IsComplex outgoing1294 incoming1294 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=142
def outgoing1295 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1295 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1295 : IsComplex outgoing1295 incoming1295 := by lin_cert using ()
-- CW_nu_eta_2 s=16 t=143
def outgoing1296 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1296 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1296 : IsComplex outgoing1296 incoming1296 := by lin_cert using ()
-- CW_nu_eta_2 s=17 t=139
def outgoing1297 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, true, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1297 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1297 : IsComplex outgoing1297 incoming1297 := by lin_cert using ()
-- CW_nu_eta_2 s=17 t=140
def outgoing1298 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1298 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1298 : IsComplex outgoing1298 incoming1298 := by lin_cert using ()
-- CW_nu_eta_2 s=17 t=141
def outgoing1299 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1299 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1299 : IsComplex outgoing1299 incoming1299 := by lin_cert using ()
end ReleaseComplex12
