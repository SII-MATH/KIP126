import LinearCertificates.Checker
namespace ReleaseComplex13
open LinearCertificates LinProgramCertificates
-- CW_nu_eta_2 s=17 t=142
def outgoing1300 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1300 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1300 : IsComplex outgoing1300 incoming1300 := by lin_cert using ()
-- CW_nu_eta_2 s=17 t=143
def outgoing1301 : Matrix 3 2 := fun i j => ([false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1301 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1301 : IsComplex outgoing1301 incoming1301 := by lin_cert using ()
-- CW_nu_eta_2 s=17 t=144
def outgoing1302 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1302 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1302 : IsComplex outgoing1302 incoming1302 := by lin_cert using ()
-- CW_nu_eta_2 s=18 t=140
def outgoing1303 : Matrix 2 2 := fun i j => ([true, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1303 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1303 : IsComplex outgoing1303 incoming1303 := by lin_cert using ()
-- CW_nu_eta_2 s=18 t=141
def outgoing1304 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1304 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1304 : IsComplex outgoing1304 incoming1304 := by lin_cert using ()
-- CW_nu_eta_2 s=18 t=143
def outgoing1305 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1305 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1305 : IsComplex outgoing1305 incoming1305 := by lin_cert using ()
-- CW_nu_eta_2 s=18 t=144
def outgoing1306 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1306 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1306 : IsComplex outgoing1306 incoming1306 := by lin_cert using ()
-- CW_nu_eta_2 s=18 t=145
def outgoing1307 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1307 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1307 : IsComplex outgoing1307 incoming1307 := by lin_cert using ()
-- CW_nu_eta_2 s=19 t=143
def outgoing1308 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1308 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1308 : IsComplex outgoing1308 incoming1308 := by lin_cert using ()
-- CW_nu_eta_2 s=19 t=144
def outgoing1309 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming1309 : Matrix 3 2 := fun i j => ([false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1309 : IsComplex outgoing1309 incoming1309 := by lin_cert using ()
-- CW_nu_eta_2 s=19 t=145
def outgoing1310 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1310 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1310 : IsComplex outgoing1310 incoming1310 := by lin_cert using ()
-- CW_nu_eta_2 s=19 t=146
def outgoing1311 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1311 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1311 : IsComplex outgoing1311 incoming1311 := by lin_cert using ()
-- CW_nu_eta_2 s=20 t=144
def outgoing1312 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1312 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1312 : IsComplex outgoing1312 incoming1312 := by lin_cert using ()
-- CW_nu_eta_2 s=20 t=145
def outgoing1313 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1313 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1313 : IsComplex outgoing1313 incoming1313 := by lin_cert using ()
-- CW_nu_eta_2 s=20 t=146
def outgoing1314 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1314 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1314 : IsComplex outgoing1314 incoming1314 := by lin_cert using ()
-- CW_nu_eta_2 s=20 t=147
def outgoing1315 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1315 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1315 : IsComplex outgoing1315 incoming1315 := by lin_cert using ()
-- CW_nu_eta_2 s=21 t=144
def outgoing1316 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1316 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1316 : IsComplex outgoing1316 incoming1316 := by lin_cert using ()
-- CW_nu_eta_2 s=21 t=147
def outgoing1317 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1317 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1317 : IsComplex outgoing1317 incoming1317 := by lin_cert using ()
-- CW_nu_eta_2 s=21 t=148
def outgoing1318 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1318 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1318 : IsComplex outgoing1318 incoming1318 := by lin_cert using ()
-- CW_nu_eta_2 s=22 t=146
def outgoing1319 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1319 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1319 : IsComplex outgoing1319 incoming1319 := by lin_cert using ()
-- CW_nu_eta_2 s=22 t=147
def outgoing1320 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1320 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1320 : IsComplex outgoing1320 incoming1320 := by lin_cert using ()
-- CW_nu_eta_2 s=23 t=148
def outgoing1321 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1321 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1321 : IsComplex outgoing1321 incoming1321 := by lin_cert using ()
-- CW_nu_eta_2 s=24 t=148
def outgoing1322 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1322 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1322 : IsComplex outgoing1322 incoming1322 := by lin_cert using ()
-- CW_nu_sigma s=1 t=128
def outgoing1323 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1323 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1323 : IsComplex outgoing1323 incoming1323 := by lin_cert using ()
-- CW_nu_sigma s=2 t=129
def outgoing1324 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1324 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1324 : IsComplex outgoing1324 incoming1324 := by lin_cert using ()
-- CW_nu_sigma s=3 t=129
def outgoing1325 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1325 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1325 : IsComplex outgoing1325 incoming1325 := by lin_cert using ()
-- CW_nu_sigma s=3 t=130
def outgoing1326 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1326 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1326 : IsComplex outgoing1326 incoming1326 := by lin_cert using ()
-- CW_nu_sigma s=4 t=130
def outgoing1327 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1327 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1327 : IsComplex outgoing1327 incoming1327 := by lin_cert using ()
-- CW_nu_sigma s=4 t=131
def outgoing1328 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1328 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1328 : IsComplex outgoing1328 incoming1328 := by lin_cert using ()
-- CW_nu_sigma s=5 t=128
def outgoing1329 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1329 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1329 : IsComplex outgoing1329 incoming1329 := by lin_cert using ()
-- CW_nu_sigma s=5 t=130
def outgoing1330 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1330 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1330 : IsComplex outgoing1330 incoming1330 := by lin_cert using ()
-- CW_nu_sigma s=5 t=131
def outgoing1331 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1331 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1331 : IsComplex outgoing1331 incoming1331 := by lin_cert using ()
-- CW_nu_sigma s=5 t=132
def outgoing1332 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1332 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1332 : IsComplex outgoing1332 incoming1332 := by lin_cert using ()
-- CW_nu_sigma s=6 t=128
def outgoing1333 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1333 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1333 : IsComplex outgoing1333 incoming1333 := by lin_cert using ()
-- CW_nu_sigma s=6 t=130
def outgoing1334 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1334 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1334 : IsComplex outgoing1334 incoming1334 := by lin_cert using ()
-- CW_nu_sigma s=6 t=131
def outgoing1335 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1335 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1335 : IsComplex outgoing1335 incoming1335 := by lin_cert using ()
-- CW_nu_sigma s=6 t=132
def outgoing1336 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1336 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1336 : IsComplex outgoing1336 incoming1336 := by lin_cert using ()
-- CW_nu_sigma s=6 t=133
def outgoing1337 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1337 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1337 : IsComplex outgoing1337 incoming1337 := by lin_cert using ()
-- CW_nu_sigma s=7 t=129
def outgoing1338 : Matrix 2 4 := fun i j => ([false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1338 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1338 : IsComplex outgoing1338 incoming1338 := by lin_cert using ()
-- CW_nu_sigma s=7 t=131
def outgoing1339 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1339 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1339 : IsComplex outgoing1339 incoming1339 := by lin_cert using ()
-- CW_nu_sigma s=7 t=132
def outgoing1340 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1340 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1340 : IsComplex outgoing1340 incoming1340 := by lin_cert using ()
-- CW_nu_sigma s=7 t=133
def outgoing1341 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1341 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1341 : IsComplex outgoing1341 incoming1341 := by lin_cert using ()
-- CW_nu_sigma s=7 t=134
def outgoing1342 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1342 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1342 : IsComplex outgoing1342 incoming1342 := by lin_cert using ()
-- CW_nu_sigma s=8 t=130
def outgoing1343 : Matrix 3 2 := fun i j => ([true, true, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1343 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1343 : IsComplex outgoing1343 incoming1343 := by lin_cert using ()
-- CW_nu_sigma s=8 t=131
def outgoing1344 : Matrix 7 5 := fun i j => ([true, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1344 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1344 : IsComplex outgoing1344 incoming1344 := by lin_cert using ()
-- CW_nu_sigma s=8 t=132
def outgoing1345 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1345 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1345 : IsComplex outgoing1345 incoming1345 := by lin_cert using ()
-- CW_nu_sigma s=8 t=133
def outgoing1346 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1346 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1346 : IsComplex outgoing1346 incoming1346 := by lin_cert using ()
-- CW_nu_sigma s=8 t=134
def outgoing1347 : Matrix 9 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1347 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1347 : IsComplex outgoing1347 incoming1347 := by lin_cert using ()
-- CW_nu_sigma s=8 t=135
def outgoing1348 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1348 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1348 : IsComplex outgoing1348 incoming1348 := by lin_cert using ()
-- CW_nu_sigma s=9 t=131
def outgoing1349 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1349 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1349 : IsComplex outgoing1349 incoming1349 := by lin_cert using ()
-- CW_nu_sigma s=9 t=132
def outgoing1350 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1350 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1350 : IsComplex outgoing1350 incoming1350 := by lin_cert using ()
-- CW_nu_sigma s=9 t=133
def outgoing1351 : Matrix 7 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1351 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1351 : IsComplex outgoing1351 incoming1351 := by lin_cert using ()
-- CW_nu_sigma s=9 t=134
def outgoing1352 : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1352 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1352 : IsComplex outgoing1352 incoming1352 := by lin_cert using ()
-- CW_nu_sigma s=9 t=135
def outgoing1353 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1353 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1353 : IsComplex outgoing1353 incoming1353 := by lin_cert using ()
-- CW_nu_sigma s=9 t=136
def outgoing1354 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1354 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1354 : IsComplex outgoing1354 incoming1354 := by lin_cert using ()
-- CW_nu_sigma s=10 t=132
def outgoing1355 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1355 : Matrix 7 5 := fun i j => ([true, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1355 : IsComplex outgoing1355 incoming1355 := by lin_cert using ()
-- CW_nu_sigma s=10 t=133
def outgoing1356 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1356 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1356 : IsComplex outgoing1356 incoming1356 := by lin_cert using ()
-- CW_nu_sigma s=10 t=134
def outgoing1357 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1357 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1357 : IsComplex outgoing1357 incoming1357 := by lin_cert using ()
-- CW_nu_sigma s=10 t=135
def outgoing1358 : Matrix 4 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming1358 : Matrix 9 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1358 : IsComplex outgoing1358 incoming1358 := by lin_cert using ()
-- CW_nu_sigma s=10 t=136
def outgoing1359 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1359 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1359 : IsComplex outgoing1359 incoming1359 := by lin_cert using ()
-- CW_nu_sigma s=10 t=137
def outgoing1360 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1360 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1360 : IsComplex outgoing1360 incoming1360 := by lin_cert using ()
-- CW_nu_sigma s=11 t=133
def outgoing1361 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1361 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1361 : IsComplex outgoing1361 incoming1361 := by lin_cert using ()
-- CW_nu_sigma s=11 t=134
def outgoing1362 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1362 : Matrix 7 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1362 : IsComplex outgoing1362 incoming1362 := by lin_cert using ()
-- CW_nu_sigma s=11 t=135
def outgoing1363 : Matrix 3 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1363 : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1363 : IsComplex outgoing1363 incoming1363 := by lin_cert using ()
-- CW_nu_sigma s=11 t=136
def outgoing1364 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1364 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1364 : IsComplex outgoing1364 incoming1364 := by lin_cert using ()
-- CW_nu_sigma s=11 t=137
def outgoing1365 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1365 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1365 : IsComplex outgoing1365 incoming1365 := by lin_cert using ()
-- CW_nu_sigma s=11 t=138
def outgoing1366 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1366 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1366 : IsComplex outgoing1366 incoming1366 := by lin_cert using ()
-- CW_nu_sigma s=12 t=134
def outgoing1367 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1367 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1367 : IsComplex outgoing1367 incoming1367 := by lin_cert using ()
-- CW_nu_sigma s=12 t=135
def outgoing1368 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming1368 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1368 : IsComplex outgoing1368 incoming1368 := by lin_cert using ()
-- CW_nu_sigma s=12 t=136
def outgoing1369 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1369 : Matrix 4 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1369 : IsComplex outgoing1369 incoming1369 := by lin_cert using ()
-- CW_nu_sigma s=12 t=137
def outgoing1370 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1370 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1370 : IsComplex outgoing1370 incoming1370 := by lin_cert using ()
-- CW_nu_sigma s=12 t=138
def outgoing1371 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1371 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1371 : IsComplex outgoing1371 incoming1371 := by lin_cert using ()
-- CW_nu_sigma s=12 t=139
def outgoing1372 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1372 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1372 : IsComplex outgoing1372 incoming1372 := by lin_cert using ()
-- CW_nu_sigma s=13 t=135
def outgoing1373 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1373 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1373 : IsComplex outgoing1373 incoming1373 := by lin_cert using ()
-- CW_nu_sigma s=13 t=136
def outgoing1374 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1374 : Matrix 3 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1374 : IsComplex outgoing1374 incoming1374 := by lin_cert using ()
-- CW_nu_sigma s=13 t=137
def outgoing1375 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1375 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1375 : IsComplex outgoing1375 incoming1375 := by lin_cert using ()
-- CW_nu_sigma s=13 t=138
def outgoing1376 : Matrix 4 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1376 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1376 : IsComplex outgoing1376 incoming1376 := by lin_cert using ()
-- CW_nu_sigma s=13 t=139
def outgoing1377 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1377 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1377 : IsComplex outgoing1377 incoming1377 := by lin_cert using ()
-- CW_nu_sigma s=13 t=140
def outgoing1378 : Matrix 8 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1378 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1378 : IsComplex outgoing1378 incoming1378 := by lin_cert using ()
-- CW_nu_sigma s=14 t=136
def outgoing1379 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1379 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1379 : IsComplex outgoing1379 incoming1379 := by lin_cert using ()
-- CW_nu_sigma s=14 t=137
def outgoing1380 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1380 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1380 : IsComplex outgoing1380 incoming1380 := by lin_cert using ()
-- CW_nu_sigma s=14 t=138
def outgoing1381 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1381 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1381 : IsComplex outgoing1381 incoming1381 := by lin_cert using ()
-- CW_nu_sigma s=14 t=139
def outgoing1382 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1382 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1382 : IsComplex outgoing1382 incoming1382 := by lin_cert using ()
-- CW_nu_sigma s=14 t=140
def outgoing1383 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1383 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1383 : IsComplex outgoing1383 incoming1383 := by lin_cert using ()
-- CW_nu_sigma s=14 t=141
def outgoing1384 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1384 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1384 : IsComplex outgoing1384 incoming1384 := by lin_cert using ()
-- CW_nu_sigma s=15 t=137
def outgoing1385 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1385 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1385 : IsComplex outgoing1385 incoming1385 := by lin_cert using ()
-- CW_nu_sigma s=15 t=138
def outgoing1386 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1386 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1386 : IsComplex outgoing1386 incoming1386 := by lin_cert using ()
-- CW_nu_sigma s=15 t=139
def outgoing1387 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1387 : Matrix 4 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1387 : IsComplex outgoing1387 incoming1387 := by lin_cert using ()
-- CW_nu_sigma s=15 t=140
def outgoing1388 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1388 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1388 : IsComplex outgoing1388 incoming1388 := by lin_cert using ()
-- CW_nu_sigma s=15 t=141
def outgoing1389 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming1389 : Matrix 8 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1389 : IsComplex outgoing1389 incoming1389 := by lin_cert using ()
-- CW_nu_sigma s=15 t=142
def outgoing1390 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1390 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1390 : IsComplex outgoing1390 incoming1390 := by lin_cert using ()
-- CW_nu_sigma s=16 t=138
def outgoing1391 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1391 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1391 : IsComplex outgoing1391 incoming1391 := by lin_cert using ()
-- CW_nu_sigma s=16 t=139
def outgoing1392 : Matrix 2 8 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1392 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1392 : IsComplex outgoing1392 incoming1392 := by lin_cert using ()
-- CW_nu_sigma s=16 t=140
def outgoing1393 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1393 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1393 : IsComplex outgoing1393 incoming1393 := by lin_cert using ()
-- CW_nu_sigma s=16 t=141
def outgoing1394 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1394 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1394 : IsComplex outgoing1394 incoming1394 := by lin_cert using ()
-- CW_nu_sigma s=16 t=142
def outgoing1395 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1395 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1395 : IsComplex outgoing1395 incoming1395 := by lin_cert using ()
-- CW_nu_sigma s=16 t=143
def outgoing1396 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1396 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1396 : IsComplex outgoing1396 incoming1396 := by lin_cert using ()
-- CW_nu_sigma s=17 t=139
def outgoing1397 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1397 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1397 : IsComplex outgoing1397 incoming1397 := by lin_cert using ()
-- CW_nu_sigma s=17 t=140
def outgoing1398 : Matrix 4 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1398 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1398 : IsComplex outgoing1398 incoming1398 := by lin_cert using ()
-- CW_nu_sigma s=17 t=141
def outgoing1399 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1399 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1399 : IsComplex outgoing1399 incoming1399 := by lin_cert using ()
end ReleaseComplex13
