import LinearCertificates.Checker
namespace ReleaseComplex14
open LinearCertificates LinProgramCertificates
-- CW_nu_sigma s=17 t=142
def outgoing1400 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1400 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1400 : IsComplex outgoing1400 incoming1400 := by lin_cert using ()
-- CW_nu_sigma s=17 t=143
def outgoing1401 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1401 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1401 : IsComplex outgoing1401 incoming1401 := by lin_cert using ()
-- CW_nu_sigma s=17 t=144
def outgoing1402 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1402 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1402 : IsComplex outgoing1402 incoming1402 := by lin_cert using ()
-- CW_nu_sigma s=18 t=140
def outgoing1403 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1403 : Matrix 2 8 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1403 : IsComplex outgoing1403 incoming1403 := by lin_cert using ()
-- CW_nu_sigma s=18 t=141
def outgoing1404 : Matrix 4 4 := fun i j => ([true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1404 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1404 : IsComplex outgoing1404 incoming1404 := by lin_cert using ()
-- CW_nu_sigma s=18 t=142
def outgoing1405 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1405 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1405 : IsComplex outgoing1405 incoming1405 := by lin_cert using ()
-- CW_nu_sigma s=18 t=143
def outgoing1406 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1406 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1406 : IsComplex outgoing1406 incoming1406 := by lin_cert using ()
-- CW_nu_sigma s=18 t=144
def outgoing1407 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1407 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1407 : IsComplex outgoing1407 incoming1407 := by lin_cert using ()
-- CW_nu_sigma s=18 t=145
def outgoing1408 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1408 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1408 : IsComplex outgoing1408 incoming1408 := by lin_cert using ()
-- CW_nu_sigma s=19 t=141
def outgoing1409 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1409 : Matrix 4 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1409 : IsComplex outgoing1409 incoming1409 := by lin_cert using ()
-- CW_nu_sigma s=19 t=142
def outgoing1410 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1410 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1410 : IsComplex outgoing1410 incoming1410 := by lin_cert using ()
-- CW_nu_sigma s=19 t=143
def outgoing1411 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1411 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1411 : IsComplex outgoing1411 incoming1411 := by lin_cert using ()
-- CW_nu_sigma s=19 t=144
def outgoing1412 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1412 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1412 : IsComplex outgoing1412 incoming1412 := by lin_cert using ()
-- CW_nu_sigma s=19 t=145
def outgoing1413 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1413 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1413 : IsComplex outgoing1413 incoming1413 := by lin_cert using ()
-- CW_nu_sigma s=19 t=146
def outgoing1414 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1414 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1414 : IsComplex outgoing1414 incoming1414 := by lin_cert using ()
-- CW_nu_sigma s=20 t=142
def outgoing1415 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1415 : Matrix 4 4 := fun i j => ([true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1415 : IsComplex outgoing1415 incoming1415 := by lin_cert using ()
-- CW_nu_sigma s=20 t=143
def outgoing1416 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1416 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1416 : IsComplex outgoing1416 incoming1416 := by lin_cert using ()
-- CW_nu_sigma s=20 t=144
def outgoing1417 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1417 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1417 : IsComplex outgoing1417 incoming1417 := by lin_cert using ()
-- CW_nu_sigma s=20 t=145
def outgoing1418 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1418 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1418 : IsComplex outgoing1418 incoming1418 := by lin_cert using ()
-- CW_nu_sigma s=20 t=146
def outgoing1419 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1419 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1419 : IsComplex outgoing1419 incoming1419 := by lin_cert using ()
-- CW_nu_sigma s=20 t=147
def outgoing1420 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1420 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1420 : IsComplex outgoing1420 incoming1420 := by lin_cert using ()
-- CW_nu_sigma s=21 t=143
def outgoing1421 : Matrix 2 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1421 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1421 : IsComplex outgoing1421 incoming1421 := by lin_cert using ()
-- CW_nu_sigma s=21 t=144
def outgoing1422 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1422 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1422 : IsComplex outgoing1422 incoming1422 := by lin_cert using ()
-- CW_nu_sigma s=21 t=145
def outgoing1423 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1423 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1423 : IsComplex outgoing1423 incoming1423 := by lin_cert using ()
-- CW_nu_sigma s=21 t=146
def outgoing1424 : Matrix 2 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1424 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1424 : IsComplex outgoing1424 incoming1424 := by lin_cert using ()
-- CW_nu_sigma s=21 t=147
def outgoing1425 : Matrix 5 4 := fun i j => ([false, false, false, false, true, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1425 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1425 : IsComplex outgoing1425 incoming1425 := by lin_cert using ()
-- CW_nu_sigma s=21 t=148
def outgoing1426 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1426 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1426 : IsComplex outgoing1426 incoming1426 := by lin_cert using ()
-- CW_nu_sigma s=22 t=144
def outgoing1427 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1427 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1427 : IsComplex outgoing1427 incoming1427 := by lin_cert using ()
-- CW_nu_sigma s=22 t=145
def outgoing1428 : Matrix 7 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1428 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1428 : IsComplex outgoing1428 incoming1428 := by lin_cert using ()
-- CW_nu_sigma s=22 t=146
def outgoing1429 : Matrix 3 7 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1429 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1429 : IsComplex outgoing1429 incoming1429 := by lin_cert using ()
-- CW_nu_sigma s=22 t=147
def outgoing1430 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1430 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1430 : IsComplex outgoing1430 incoming1430 := by lin_cert using ()
-- CW_nu_sigma s=22 t=148
def outgoing1431 : Matrix 7 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1431 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1431 : IsComplex outgoing1431 incoming1431 := by lin_cert using ()
-- CW_nu_sigma s=23 t=145
def outgoing1432 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1432 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1432 : IsComplex outgoing1432 incoming1432 := by lin_cert using ()
-- CW_nu_sigma s=23 t=146
def outgoing1433 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1433 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1433 : IsComplex outgoing1433 incoming1433 := by lin_cert using ()
-- CW_nu_sigma s=23 t=147
def outgoing1434 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1434 : Matrix 2 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1434 : IsComplex outgoing1434 incoming1434 := by lin_cert using ()
-- CW_nu_sigma s=23 t=148
def outgoing1435 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1435 : Matrix 5 4 := fun i j => ([false, false, false, false, true, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1435 : IsComplex outgoing1435 incoming1435 := by lin_cert using ()
-- CW_nu_sigma s=24 t=146
def outgoing1436 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1436 : Matrix 7 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1436 : IsComplex outgoing1436 incoming1436 := by lin_cert using ()
-- CW_nu_sigma s=24 t=147
def outgoing1437 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1437 : Matrix 3 7 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1437 : IsComplex outgoing1437 incoming1437 := by lin_cert using ()
-- CW_nu_sigma s=24 t=148
def outgoing1438 : Matrix 8 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1438 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1438 : IsComplex outgoing1438 incoming1438 := by lin_cert using ()
-- CW_nu_sigma s=25 t=147
def outgoing1439 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1439 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1439 : IsComplex outgoing1439 incoming1439 := by lin_cert using ()
-- CW_nu_sigma s=25 t=148
def outgoing1440 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1440 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1440 : IsComplex outgoing1440 incoming1440 := by lin_cert using ()
-- CW_sigma_nu s=1 t=128
def outgoing1441 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1441 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1441 : IsComplex outgoing1441 incoming1441 := by lin_cert using ()
-- CW_sigma_nu s=2 t=129
def outgoing1442 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1442 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1442 : IsComplex outgoing1442 incoming1442 := by lin_cert using ()
-- CW_sigma_nu s=3 t=129
def outgoing1443 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1443 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1443 : IsComplex outgoing1443 incoming1443 := by lin_cert using ()
-- CW_sigma_nu s=3 t=130
def outgoing1444 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1444 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1444 : IsComplex outgoing1444 incoming1444 := by lin_cert using ()
-- CW_sigma_nu s=4 t=130
def outgoing1445 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1445 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1445 : IsComplex outgoing1445 incoming1445 := by lin_cert using ()
-- CW_sigma_nu s=4 t=131
def outgoing1446 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1446 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1446 : IsComplex outgoing1446 incoming1446 := by lin_cert using ()
-- CW_sigma_nu s=5 t=128
def outgoing1447 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1447 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1447 : IsComplex outgoing1447 incoming1447 := by lin_cert using ()
-- CW_sigma_nu s=5 t=130
def outgoing1448 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1448 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1448 : IsComplex outgoing1448 incoming1448 := by lin_cert using ()
-- CW_sigma_nu s=5 t=131
def outgoing1449 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1449 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1449 : IsComplex outgoing1449 incoming1449 := by lin_cert using ()
-- CW_sigma_nu s=5 t=132
def outgoing1450 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1450 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1450 : IsComplex outgoing1450 incoming1450 := by lin_cert using ()
-- CW_sigma_nu s=6 t=128
def outgoing1451 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1451 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1451 : IsComplex outgoing1451 incoming1451 := by lin_cert using ()
-- CW_sigma_nu s=6 t=129
def outgoing1452 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1452 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1452 : IsComplex outgoing1452 incoming1452 := by lin_cert using ()
-- CW_sigma_nu s=6 t=130
def outgoing1453 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1453 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1453 : IsComplex outgoing1453 incoming1453 := by lin_cert using ()
-- CW_sigma_nu s=6 t=131
def outgoing1454 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1454 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1454 : IsComplex outgoing1454 incoming1454 := by lin_cert using ()
-- CW_sigma_nu s=6 t=132
def outgoing1455 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1455 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1455 : IsComplex outgoing1455 incoming1455 := by lin_cert using ()
-- CW_sigma_nu s=6 t=133
def outgoing1456 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1456 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1456 : IsComplex outgoing1456 incoming1456 := by lin_cert using ()
-- CW_sigma_nu s=7 t=129
def outgoing1457 : Matrix 5 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1457 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1457 : IsComplex outgoing1457 incoming1457 := by lin_cert using ()
-- CW_sigma_nu s=7 t=131
def outgoing1458 : Matrix 4 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1458 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1458 : IsComplex outgoing1458 incoming1458 := by lin_cert using ()
-- CW_sigma_nu s=7 t=132
def outgoing1459 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming1459 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1459 : IsComplex outgoing1459 incoming1459 := by lin_cert using ()
-- CW_sigma_nu s=7 t=133
def outgoing1460 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1460 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1460 : IsComplex outgoing1460 incoming1460 := by lin_cert using ()
-- CW_sigma_nu s=7 t=134
def outgoing1461 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1461 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1461 : IsComplex outgoing1461 incoming1461 := by lin_cert using ()
-- CW_sigma_nu s=8 t=130
def outgoing1462 : Matrix 6 3 := fun i j => ([false, false, false, false, true, false, true, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1462 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1462 : IsComplex outgoing1462 incoming1462 := by lin_cert using ()
-- CW_sigma_nu s=8 t=131
def outgoing1463 : Matrix 4 2 := fun i j => ([true, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1463 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1463 : IsComplex outgoing1463 incoming1463 := by lin_cert using ()
-- CW_sigma_nu s=8 t=132
def outgoing1464 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1464 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1464 : IsComplex outgoing1464 incoming1464 := by lin_cert using ()
-- CW_sigma_nu s=8 t=133
def outgoing1465 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1465 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1465 : IsComplex outgoing1465 incoming1465 := by lin_cert using ()
-- CW_sigma_nu s=8 t=134
def outgoing1466 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1466 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1466 : IsComplex outgoing1466 incoming1466 := by lin_cert using ()
-- CW_sigma_nu s=8 t=135
def outgoing1467 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1467 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1467 : IsComplex outgoing1467 incoming1467 := by lin_cert using ()
-- CW_sigma_nu s=9 t=131
def outgoing1468 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1468 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1468 : IsComplex outgoing1468 incoming1468 := by lin_cert using ()
-- CW_sigma_nu s=9 t=132
def outgoing1469 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1469 : Matrix 4 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1469 : IsComplex outgoing1469 incoming1469 := by lin_cert using ()
-- CW_sigma_nu s=9 t=133
def outgoing1470 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming1470 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1470 : IsComplex outgoing1470 incoming1470 := by lin_cert using ()
-- CW_sigma_nu s=9 t=134
def outgoing1471 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1471 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1471 : IsComplex outgoing1471 incoming1471 := by lin_cert using ()
-- CW_sigma_nu s=9 t=135
def outgoing1472 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1472 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1472 : IsComplex outgoing1472 incoming1472 := by lin_cert using ()
-- CW_sigma_nu s=9 t=136
def outgoing1473 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1473 : Matrix 7 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1473 : IsComplex outgoing1473 incoming1473 := by lin_cert using ()
-- CW_sigma_nu s=10 t=132
def outgoing1474 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1474 : Matrix 4 2 := fun i j => ([true, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1474 : IsComplex outgoing1474 incoming1474 := by lin_cert using ()
-- CW_sigma_nu s=10 t=133
def outgoing1475 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1475 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1475 : IsComplex outgoing1475 incoming1475 := by lin_cert using ()
-- CW_sigma_nu s=10 t=134
def outgoing1476 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1476 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1476 : IsComplex outgoing1476 incoming1476 := by lin_cert using ()
-- CW_sigma_nu s=10 t=135
def outgoing1477 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1477 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1477 : IsComplex outgoing1477 incoming1477 := by lin_cert using ()
-- CW_sigma_nu s=10 t=136
def outgoing1478 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1478 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1478 : IsComplex outgoing1478 incoming1478 := by lin_cert using ()
-- CW_sigma_nu s=10 t=137
def outgoing1479 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1479 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1479 : IsComplex outgoing1479 incoming1479 := by lin_cert using ()
-- CW_sigma_nu s=11 t=133
def outgoing1480 : Matrix 2 2 := fun i j => ([true, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1480 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1480 : IsComplex outgoing1480 incoming1480 := by lin_cert using ()
-- CW_sigma_nu s=11 t=134
def outgoing1481 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1481 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1481 : IsComplex outgoing1481 incoming1481 := by lin_cert using ()
-- CW_sigma_nu s=11 t=135
def outgoing1482 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1482 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1482 : IsComplex outgoing1482 incoming1482 := by lin_cert using ()
-- CW_sigma_nu s=11 t=136
def outgoing1483 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1483 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1483 : IsComplex outgoing1483 incoming1483 := by lin_cert using ()
-- CW_sigma_nu s=11 t=137
def outgoing1484 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1484 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1484 : IsComplex outgoing1484 incoming1484 := by lin_cert using ()
-- CW_sigma_nu s=11 t=138
def outgoing1485 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1485 : Matrix 5 6 := fun i j => ([true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1485 : IsComplex outgoing1485 incoming1485 := by lin_cert using ()
-- CW_sigma_nu s=12 t=134
def outgoing1486 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1486 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1486 : IsComplex outgoing1486 incoming1486 := by lin_cert using ()
-- CW_sigma_nu s=12 t=135
def outgoing1487 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1487 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1487 : IsComplex outgoing1487 incoming1487 := by lin_cert using ()
-- CW_sigma_nu s=12 t=136
def outgoing1488 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1488 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1488 : IsComplex outgoing1488 incoming1488 := by lin_cert using ()
-- CW_sigma_nu s=12 t=137
def outgoing1489 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1489 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1489 : IsComplex outgoing1489 incoming1489 := by lin_cert using ()
-- CW_sigma_nu s=12 t=138
def outgoing1490 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1490 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1490 : IsComplex outgoing1490 incoming1490 := by lin_cert using ()
-- CW_sigma_nu s=12 t=139
def outgoing1491 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1491 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1491 : IsComplex outgoing1491 incoming1491 := by lin_cert using ()
-- CW_sigma_nu s=13 t=135
def outgoing1492 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1492 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1492 : IsComplex outgoing1492 incoming1492 := by lin_cert using ()
-- CW_sigma_nu s=13 t=136
def outgoing1493 : Matrix 5 6 := fun i j => ([false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1493 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1493 : IsComplex outgoing1493 incoming1493 := by lin_cert using ()
-- CW_sigma_nu s=13 t=137
def outgoing1494 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1494 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1494 : IsComplex outgoing1494 incoming1494 := by lin_cert using ()
-- CW_sigma_nu s=13 t=138
def outgoing1495 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1495 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1495 : IsComplex outgoing1495 incoming1495 := by lin_cert using ()
-- CW_sigma_nu s=13 t=139
def outgoing1496 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1496 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1496 : IsComplex outgoing1496 incoming1496 := by lin_cert using ()
-- CW_sigma_nu s=13 t=140
def outgoing1497 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1497 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1497 : IsComplex outgoing1497 incoming1497 := by lin_cert using ()
-- CW_sigma_nu s=14 t=136
def outgoing1498 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1498 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1498 : IsComplex outgoing1498 incoming1498 := by lin_cert using ()
-- CW_sigma_nu s=14 t=137
def outgoing1499 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1499 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1499 : IsComplex outgoing1499 incoming1499 := by lin_cert using ()
end ReleaseComplex14
