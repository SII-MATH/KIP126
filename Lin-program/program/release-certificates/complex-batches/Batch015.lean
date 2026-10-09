import LinearCertificates.Checker
namespace ReleaseComplex15
open LinearCertificates LinProgramCertificates
-- CW_sigma_nu s=14 t=138
def outgoing1500 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1500 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1500 : IsComplex outgoing1500 incoming1500 := by lin_cert using ()
-- CW_sigma_nu s=14 t=139
def outgoing1501 : Matrix 1 8 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1501 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1501 : IsComplex outgoing1501 incoming1501 := by lin_cert using ()
-- CW_sigma_nu s=14 t=140
def outgoing1502 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1502 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1502 : IsComplex outgoing1502 incoming1502 := by lin_cert using ()
-- CW_sigma_nu s=14 t=141
def outgoing1503 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1503 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1503 : IsComplex outgoing1503 incoming1503 := by lin_cert using ()
-- CW_sigma_nu s=15 t=137
def outgoing1504 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1504 : Matrix 5 6 := fun i j => ([false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1504 : IsComplex outgoing1504 incoming1504 := by lin_cert using ()
-- CW_sigma_nu s=15 t=138
def outgoing1505 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1505 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1505 : IsComplex outgoing1505 incoming1505 := by lin_cert using ()
-- CW_sigma_nu s=15 t=139
def outgoing1506 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1506 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1506 : IsComplex outgoing1506 incoming1506 := by lin_cert using ()
-- CW_sigma_nu s=15 t=140
def outgoing1507 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1507 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1507 : IsComplex outgoing1507 incoming1507 := by lin_cert using ()
-- CW_sigma_nu s=15 t=141
def outgoing1508 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1508 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1508 : IsComplex outgoing1508 incoming1508 := by lin_cert using ()
-- CW_sigma_nu s=15 t=142
def outgoing1509 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1509 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1509 : IsComplex outgoing1509 incoming1509 := by lin_cert using ()
-- CW_sigma_nu s=16 t=138
def outgoing1510 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1510 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1510 : IsComplex outgoing1510 incoming1510 := by lin_cert using ()
-- CW_sigma_nu s=16 t=139
def outgoing1511 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1511 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1511 : IsComplex outgoing1511 incoming1511 := by lin_cert using ()
-- CW_sigma_nu s=16 t=140
def outgoing1512 : Matrix 6 1 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1512 : Matrix 1 8 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1512 : IsComplex outgoing1512 incoming1512 := by lin_cert using ()
-- CW_sigma_nu s=16 t=141
def outgoing1513 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1513 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1513 : IsComplex outgoing1513 incoming1513 := by lin_cert using ()
-- CW_sigma_nu s=16 t=142
def outgoing1514 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1514 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1514 : IsComplex outgoing1514 incoming1514 := by lin_cert using ()
-- CW_sigma_nu s=16 t=143
def outgoing1515 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1515 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1515 : IsComplex outgoing1515 incoming1515 := by lin_cert using ()
-- CW_sigma_nu s=17 t=139
def outgoing1516 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, true, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1516 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1516 : IsComplex outgoing1516 incoming1516 := by lin_cert using ()
-- CW_sigma_nu s=17 t=140
def outgoing1517 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1517 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1517 : IsComplex outgoing1517 incoming1517 := by lin_cert using ()
-- CW_sigma_nu s=17 t=141
def outgoing1518 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1518 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1518 : IsComplex outgoing1518 incoming1518 := by lin_cert using ()
-- CW_sigma_nu s=17 t=142
def outgoing1519 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1519 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1519 : IsComplex outgoing1519 incoming1519 := by lin_cert using ()
-- CW_sigma_nu s=17 t=143
def outgoing1520 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1520 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1520 : IsComplex outgoing1520 incoming1520 := by lin_cert using ()
-- CW_sigma_nu s=17 t=144
def outgoing1521 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1521 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1521 : IsComplex outgoing1521 incoming1521 := by lin_cert using ()
-- CW_sigma_nu s=18 t=140
def outgoing1522 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1522 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1522 : IsComplex outgoing1522 incoming1522 := by lin_cert using ()
-- CW_sigma_nu s=18 t=141
def outgoing1523 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1523 : Matrix 6 1 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1523 : IsComplex outgoing1523 incoming1523 := by lin_cert using ()
-- CW_sigma_nu s=18 t=142
def outgoing1524 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1524 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1524 : IsComplex outgoing1524 incoming1524 := by lin_cert using ()
-- CW_sigma_nu s=18 t=143
def outgoing1525 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1525 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1525 : IsComplex outgoing1525 incoming1525 := by lin_cert using ()
-- CW_sigma_nu s=18 t=144
def outgoing1526 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1526 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1526 : IsComplex outgoing1526 incoming1526 := by lin_cert using ()
-- CW_sigma_nu s=18 t=145
def outgoing1527 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1527 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1527 : IsComplex outgoing1527 incoming1527 := by lin_cert using ()
-- CW_sigma_nu s=19 t=141
def outgoing1528 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1528 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1528 : IsComplex outgoing1528 incoming1528 := by lin_cert using ()
-- CW_sigma_nu s=19 t=142
def outgoing1529 : Matrix 9 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1529 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1529 : IsComplex outgoing1529 incoming1529 := by lin_cert using ()
-- CW_sigma_nu s=19 t=143
def outgoing1530 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1530 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1530 : IsComplex outgoing1530 incoming1530 := by lin_cert using ()
-- CW_sigma_nu s=19 t=144
def outgoing1531 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1531 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1531 : IsComplex outgoing1531 incoming1531 := by lin_cert using ()
-- CW_sigma_nu s=19 t=145
def outgoing1532 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, true, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1532 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1532 : IsComplex outgoing1532 incoming1532 := by lin_cert using ()
-- CW_sigma_nu s=19 t=146
def outgoing1533 : Matrix 5 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1533 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1533 : IsComplex outgoing1533 incoming1533 := by lin_cert using ()
-- CW_sigma_nu s=20 t=142
def outgoing1534 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1534 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1534 : IsComplex outgoing1534 incoming1534 := by lin_cert using ()
-- CW_sigma_nu s=20 t=143
def outgoing1535 : Matrix 5 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1535 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1535 : IsComplex outgoing1535 incoming1535 := by lin_cert using ()
-- CW_sigma_nu s=20 t=144
def outgoing1536 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1536 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1536 : IsComplex outgoing1536 incoming1536 := by lin_cert using ()
-- CW_sigma_nu s=20 t=145
def outgoing1537 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1537 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1537 : IsComplex outgoing1537 incoming1537 := by lin_cert using ()
-- CW_sigma_nu s=20 t=146
def outgoing1538 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1538 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1538 : IsComplex outgoing1538 incoming1538 := by lin_cert using ()
-- CW_sigma_nu s=20 t=147
def outgoing1539 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1539 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1539 : IsComplex outgoing1539 incoming1539 := by lin_cert using ()
-- CW_sigma_nu s=21 t=143
def outgoing1540 : Matrix 3 9 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming1540 : Matrix 9 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1540 : IsComplex outgoing1540 incoming1540 := by lin_cert using ()
-- CW_sigma_nu s=21 t=144
def outgoing1541 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1541 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1541 : IsComplex outgoing1541 incoming1541 := by lin_cert using ()
-- CW_sigma_nu s=21 t=145
def outgoing1542 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1542 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1542 : IsComplex outgoing1542 incoming1542 := by lin_cert using ()
-- CW_sigma_nu s=21 t=146
def outgoing1543 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1543 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, true, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1543 : IsComplex outgoing1543 incoming1543 := by lin_cert using ()
-- CW_sigma_nu s=21 t=147
def outgoing1544 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1544 : Matrix 5 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1544 : IsComplex outgoing1544 incoming1544 := by lin_cert using ()
-- CW_sigma_nu s=21 t=148
def outgoing1545 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1545 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1545 : IsComplex outgoing1545 incoming1545 := by lin_cert using ()
-- CW_sigma_nu s=22 t=144
def outgoing1546 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1546 : Matrix 5 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1546 : IsComplex outgoing1546 incoming1546 := by lin_cert using ()
-- CW_sigma_nu s=22 t=145
def outgoing1547 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1547 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1547 : IsComplex outgoing1547 incoming1547 := by lin_cert using ()
-- CW_sigma_nu s=22 t=146
def outgoing1548 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1548 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1548 : IsComplex outgoing1548 incoming1548 := by lin_cert using ()
-- CW_sigma_nu s=22 t=147
def outgoing1549 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1549 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1549 : IsComplex outgoing1549 incoming1549 := by lin_cert using ()
-- CW_sigma_nu s=22 t=148
def outgoing1550 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1550 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1550 : IsComplex outgoing1550 incoming1550 := by lin_cert using ()
-- CW_sigma_nu s=23 t=145
def outgoing1551 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1551 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1551 : IsComplex outgoing1551 incoming1551 := by lin_cert using ()
-- CW_sigma_nu s=23 t=146
def outgoing1552 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1552 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1552 : IsComplex outgoing1552 incoming1552 := by lin_cert using ()
-- CW_sigma_nu s=23 t=147
def outgoing1553 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1553 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1553 : IsComplex outgoing1553 incoming1553 := by lin_cert using ()
-- CW_sigma_nu s=23 t=148
def outgoing1554 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1554 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1554 : IsComplex outgoing1554 incoming1554 := by lin_cert using ()
-- CW_sigma_nu s=24 t=146
def outgoing1555 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1555 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1555 : IsComplex outgoing1555 incoming1555 := by lin_cert using ()
-- CW_sigma_nu s=24 t=147
def outgoing1556 : Matrix 5 2 := fun i j => ([false, false, true, false, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1556 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1556 : IsComplex outgoing1556 incoming1556 := by lin_cert using ()
-- CW_sigma_nu s=24 t=148
def outgoing1557 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1557 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1557 : IsComplex outgoing1557 incoming1557 := by lin_cert using ()
-- CW_sigma_nu s=25 t=147
def outgoing1558 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1558 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1558 : IsComplex outgoing1558 incoming1558 := by lin_cert using ()
-- CW_sigma_nu s=25 t=148
def outgoing1559 : Matrix 4 5 := fun i j => ([true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1559 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1559 : IsComplex outgoing1559 incoming1559 := by lin_cert using ()
-- CW_sigma_nu_eta s=1 t=128
def outgoing1560 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1560 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1560 : IsComplex outgoing1560 incoming1560 := by lin_cert using ()
-- CW_sigma_nu_eta s=2 t=129
def outgoing1561 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1561 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1561 : IsComplex outgoing1561 incoming1561 := by lin_cert using ()
-- CW_sigma_nu_eta s=3 t=129
def outgoing1562 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1562 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1562 : IsComplex outgoing1562 incoming1562 := by lin_cert using ()
-- CW_sigma_nu_eta s=3 t=130
def outgoing1563 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1563 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1563 : IsComplex outgoing1563 incoming1563 := by lin_cert using ()
-- CW_sigma_nu_eta s=4 t=130
def outgoing1564 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1564 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1564 : IsComplex outgoing1564 incoming1564 := by lin_cert using ()
-- CW_sigma_nu_eta s=4 t=131
def outgoing1565 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1565 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1565 : IsComplex outgoing1565 incoming1565 := by lin_cert using ()
-- CW_sigma_nu_eta s=5 t=128
def outgoing1566 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1566 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1566 : IsComplex outgoing1566 incoming1566 := by lin_cert using ()
-- CW_sigma_nu_eta s=5 t=130
def outgoing1567 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1567 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1567 : IsComplex outgoing1567 incoming1567 := by lin_cert using ()
-- CW_sigma_nu_eta s=5 t=131
def outgoing1568 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1568 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1568 : IsComplex outgoing1568 incoming1568 := by lin_cert using ()
-- CW_sigma_nu_eta s=5 t=132
def outgoing1569 : Matrix 6 1 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1569 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1569 : IsComplex outgoing1569 incoming1569 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=128
def outgoing1570 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1570 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1570 : IsComplex outgoing1570 incoming1570 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=129
def outgoing1571 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1571 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1571 : IsComplex outgoing1571 incoming1571 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=130
def outgoing1572 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1572 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1572 : IsComplex outgoing1572 incoming1572 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=131
def outgoing1573 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1573 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1573 : IsComplex outgoing1573 incoming1573 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=132
def outgoing1574 : Matrix 4 2 := fun i j => ([false, false, false, false, true, true, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1574 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1574 : IsComplex outgoing1574 incoming1574 := by lin_cert using ()
-- CW_sigma_nu_eta s=6 t=133
def outgoing1575 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1575 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1575 : IsComplex outgoing1575 incoming1575 := by lin_cert using ()
-- CW_sigma_nu_eta s=7 t=129
def outgoing1576 : Matrix 5 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1576 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1576 : IsComplex outgoing1576 incoming1576 := by lin_cert using ()
-- CW_sigma_nu_eta s=7 t=131
def outgoing1577 : Matrix 4 6 := fun i j => ([true, true, true, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1577 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1577 : IsComplex outgoing1577 incoming1577 := by lin_cert using ()
-- CW_sigma_nu_eta s=7 t=132
def outgoing1578 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming1578 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1578 : IsComplex outgoing1578 incoming1578 := by lin_cert using ()
-- CW_sigma_nu_eta s=7 t=133
def outgoing1579 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1579 : Matrix 6 1 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1579 : IsComplex outgoing1579 incoming1579 := by lin_cert using ()
-- CW_sigma_nu_eta s=7 t=134
def outgoing1580 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1580 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1580 : IsComplex outgoing1580 incoming1580 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=130
def outgoing1581 : Matrix 4 3 := fun i j => ([true, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1581 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1581 : IsComplex outgoing1581 incoming1581 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=131
def outgoing1582 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1582 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1582 : IsComplex outgoing1582 incoming1582 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=132
def outgoing1583 : Matrix 4 6 := fun i j => ([true, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1583 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1583 : IsComplex outgoing1583 incoming1583 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=133
def outgoing1584 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1584 : Matrix 4 2 := fun i j => ([false, false, false, false, true, true, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1584 : IsComplex outgoing1584 incoming1584 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=134
def outgoing1585 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1585 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1585 : IsComplex outgoing1585 incoming1585 := by lin_cert using ()
-- CW_sigma_nu_eta s=8 t=135
def outgoing1586 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1586 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1586 : IsComplex outgoing1586 incoming1586 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=131
def outgoing1587 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1587 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1587 : IsComplex outgoing1587 incoming1587 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=132
def outgoing1588 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1588 : Matrix 4 6 := fun i j => ([true, true, true, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1588 : IsComplex outgoing1588 incoming1588 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=133
def outgoing1589 : Matrix 1 5 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1589 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1589 : IsComplex outgoing1589 incoming1589 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=134
def outgoing1590 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1590 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1590 : IsComplex outgoing1590 incoming1590 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=135
def outgoing1591 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1591 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1591 : IsComplex outgoing1591 incoming1591 := by lin_cert using ()
-- CW_sigma_nu_eta s=9 t=136
def outgoing1592 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1592 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1592 : IsComplex outgoing1592 incoming1592 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=132
def outgoing1593 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1593 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1593 : IsComplex outgoing1593 incoming1593 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=133
def outgoing1594 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1594 : Matrix 4 6 := fun i j => ([true, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1594 : IsComplex outgoing1594 incoming1594 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=134
def outgoing1595 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1595 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1595 : IsComplex outgoing1595 incoming1595 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=135
def outgoing1596 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1596 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1596 : IsComplex outgoing1596 incoming1596 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=136
def outgoing1597 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1597 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1597 : IsComplex outgoing1597 incoming1597 := by lin_cert using ()
-- CW_sigma_nu_eta s=10 t=137
def outgoing1598 : Matrix 5 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1598 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1598 : IsComplex outgoing1598 incoming1598 := by lin_cert using ()
-- CW_sigma_nu_eta s=11 t=133
def outgoing1599 : Matrix 2 2 := fun i j => ([false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1599 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1599 : IsComplex outgoing1599 incoming1599 := by lin_cert using ()
end ReleaseComplex15
