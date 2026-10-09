import LinearCertificates.Checker
namespace ReleaseComplex16
open LinearCertificates LinProgramCertificates
-- CW_sigma_nu_eta s=11 t=134
def outgoing1600 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1600 : Matrix 1 5 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1600 : IsComplex outgoing1600 incoming1600 := by lin_cert using ()
-- CW_sigma_nu_eta s=11 t=135
def outgoing1601 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1601 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1601 : IsComplex outgoing1601 incoming1601 := by lin_cert using ()
-- CW_sigma_nu_eta s=11 t=136
def outgoing1602 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1602 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1602 : IsComplex outgoing1602 incoming1602 := by lin_cert using ()
-- CW_sigma_nu_eta s=11 t=137
def outgoing1603 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1603 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1603 : IsComplex outgoing1603 incoming1603 := by lin_cert using ()
-- CW_sigma_nu_eta s=11 t=138
def outgoing1604 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1604 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1604 : IsComplex outgoing1604 incoming1604 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=134
def outgoing1605 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1605 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1605 : IsComplex outgoing1605 incoming1605 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=135
def outgoing1606 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1606 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1606 : IsComplex outgoing1606 incoming1606 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=136
def outgoing1607 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1607 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1607 : IsComplex outgoing1607 incoming1607 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=137
def outgoing1608 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1608 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1608 : IsComplex outgoing1608 incoming1608 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=138
def outgoing1609 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1609 : Matrix 5 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1609 : IsComplex outgoing1609 incoming1609 := by lin_cert using ()
-- CW_sigma_nu_eta s=12 t=139
def outgoing1610 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1610 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1610 : IsComplex outgoing1610 incoming1610 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=135
def outgoing1611 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1611 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1611 : IsComplex outgoing1611 incoming1611 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=136
def outgoing1612 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1612 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1612 : IsComplex outgoing1612 incoming1612 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=137
def outgoing1613 : Matrix 3 3 := fun i j => ([true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1613 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1613 : IsComplex outgoing1613 incoming1613 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=138
def outgoing1614 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1614 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1614 : IsComplex outgoing1614 incoming1614 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=139
def outgoing1615 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1615 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1615 : IsComplex outgoing1615 incoming1615 := by lin_cert using ()
-- CW_sigma_nu_eta s=13 t=140
def outgoing1616 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1616 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1616 : IsComplex outgoing1616 incoming1616 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=136
def outgoing1617 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1617 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1617 : IsComplex outgoing1617 incoming1617 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=137
def outgoing1618 : Matrix 3 4 := fun i j => ([false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1618 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1618 : IsComplex outgoing1618 incoming1618 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=138
def outgoing1619 : Matrix 6 2 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1619 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1619 : IsComplex outgoing1619 incoming1619 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=139
def outgoing1620 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1620 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1620 : IsComplex outgoing1620 incoming1620 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=140
def outgoing1621 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1621 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1621 : IsComplex outgoing1621 incoming1621 := by lin_cert using ()
-- CW_sigma_nu_eta s=14 t=141
def outgoing1622 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1622 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1622 : IsComplex outgoing1622 incoming1622 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=137
def outgoing1623 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val * 5 + j.val]!
def incoming1623 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1623 : IsComplex outgoing1623 incoming1623 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=138
def outgoing1624 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1624 : Matrix 3 3 := fun i j => ([true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1624 : IsComplex outgoing1624 incoming1624 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=139
def outgoing1625 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1625 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1625 : IsComplex outgoing1625 incoming1625 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=140
def outgoing1626 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1626 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1626 : IsComplex outgoing1626 incoming1626 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=141
def outgoing1627 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1627 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1627 : IsComplex outgoing1627 incoming1627 := by lin_cert using ()
-- CW_sigma_nu_eta s=15 t=142
def outgoing1628 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1628 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1628 : IsComplex outgoing1628 incoming1628 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=138
def outgoing1629 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1629 : Matrix 3 4 := fun i j => ([false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1629 : IsComplex outgoing1629 incoming1629 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=139
def outgoing1630 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1630 : Matrix 6 2 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1630 : IsComplex outgoing1630 incoming1630 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=140
def outgoing1631 : Matrix 6 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1631 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1631 : IsComplex outgoing1631 incoming1631 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=141
def outgoing1632 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1632 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1632 : IsComplex outgoing1632 incoming1632 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=142
def outgoing1633 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1633 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1633 : IsComplex outgoing1633 incoming1633 := by lin_cert using ()
-- CW_sigma_nu_eta s=16 t=143
def outgoing1634 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1634 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1634 : IsComplex outgoing1634 incoming1634 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=139
def outgoing1635 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, true, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1635 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1635 : IsComplex outgoing1635 incoming1635 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=140
def outgoing1636 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1636 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1636 : IsComplex outgoing1636 incoming1636 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=141
def outgoing1637 : Matrix 5 2 := fun i j => ([false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1637 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1637 : IsComplex outgoing1637 incoming1637 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=142
def outgoing1638 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1638 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1638 : IsComplex outgoing1638 incoming1638 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=143
def outgoing1639 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1639 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1639 : IsComplex outgoing1639 incoming1639 := by lin_cert using ()
-- CW_sigma_nu_eta s=17 t=144
def outgoing1640 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1640 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1640 : IsComplex outgoing1640 incoming1640 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=140
def outgoing1641 : Matrix 2 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1641 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1641 : IsComplex outgoing1641 incoming1641 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=141
def outgoing1642 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1642 : Matrix 6 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1642 : IsComplex outgoing1642 incoming1642 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=142
def outgoing1643 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1643 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1643 : IsComplex outgoing1643 incoming1643 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=143
def outgoing1644 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1644 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1644 : IsComplex outgoing1644 incoming1644 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=144
def outgoing1645 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1645 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1645 : IsComplex outgoing1645 incoming1645 := by lin_cert using ()
-- CW_sigma_nu_eta s=18 t=145
def outgoing1646 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1646 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1646 : IsComplex outgoing1646 incoming1646 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=141
def outgoing1647 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1647 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1647 : IsComplex outgoing1647 incoming1647 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=142
def outgoing1648 : Matrix 9 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1648 : Matrix 5 2 := fun i j => ([false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1648 : IsComplex outgoing1648 incoming1648 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=143
def outgoing1649 : Matrix 5 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1649 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1649 : IsComplex outgoing1649 incoming1649 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=144
def outgoing1650 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1650 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1650 : IsComplex outgoing1650 incoming1650 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=145
def outgoing1651 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1651 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1651 : IsComplex outgoing1651 incoming1651 := by lin_cert using ()
-- CW_sigma_nu_eta s=19 t=146
def outgoing1652 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1652 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1652 : IsComplex outgoing1652 incoming1652 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=142
def outgoing1653 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1653 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1653 : IsComplex outgoing1653 incoming1653 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=143
def outgoing1654 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1654 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1654 : IsComplex outgoing1654 incoming1654 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=144
def outgoing1655 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1655 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1655 : IsComplex outgoing1655 incoming1655 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=145
def outgoing1656 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1656 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1656 : IsComplex outgoing1656 incoming1656 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=146
def outgoing1657 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1657 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1657 : IsComplex outgoing1657 incoming1657 := by lin_cert using ()
-- CW_sigma_nu_eta s=20 t=147
def outgoing1658 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1658 : Matrix 5 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1658 : IsComplex outgoing1658 incoming1658 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=143
def outgoing1659 : Matrix 3 9 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming1659 : Matrix 9 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1659 : IsComplex outgoing1659 incoming1659 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=144
def outgoing1660 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1660 : Matrix 5 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1660 : IsComplex outgoing1660 incoming1660 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=145
def outgoing1661 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1661 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1661 : IsComplex outgoing1661 incoming1661 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=146
def outgoing1662 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1662 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1662 : IsComplex outgoing1662 incoming1662 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=147
def outgoing1663 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1663 : Matrix 3 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1663 : IsComplex outgoing1663 incoming1663 := by lin_cert using ()
-- CW_sigma_nu_eta s=21 t=148
def outgoing1664 : Matrix 7 5 := fun i j => ([false, true, false, false, false, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1664 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1664 : IsComplex outgoing1664 incoming1664 := by lin_cert using ()
-- CW_sigma_nu_eta s=22 t=144
def outgoing1665 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1665 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1665 : IsComplex outgoing1665 incoming1665 := by lin_cert using ()
-- CW_sigma_nu_eta s=22 t=145
def outgoing1666 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1666 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1666 : IsComplex outgoing1666 incoming1666 := by lin_cert using ()
-- CW_sigma_nu_eta s=22 t=146
def outgoing1667 : Matrix 1 6 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1667 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1667 : IsComplex outgoing1667 incoming1667 := by lin_cert using ()
-- CW_sigma_nu_eta s=22 t=147
def outgoing1668 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1668 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1668 : IsComplex outgoing1668 incoming1668 := by lin_cert using ()
-- CW_sigma_nu_eta s=22 t=148
def outgoing1669 : Matrix 8 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1669 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1669 : IsComplex outgoing1669 incoming1669 := by lin_cert using ()
-- CW_sigma_nu_eta s=23 t=145
def outgoing1670 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1670 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1670 : IsComplex outgoing1670 incoming1670 := by lin_cert using ()
-- CW_sigma_nu_eta s=23 t=146
def outgoing1671 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1671 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1671 : IsComplex outgoing1671 incoming1671 := by lin_cert using ()
-- CW_sigma_nu_eta s=23 t=147
def outgoing1672 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1672 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1672 : IsComplex outgoing1672 incoming1672 := by lin_cert using ()
-- CW_sigma_nu_eta s=23 t=148
def outgoing1673 : Matrix 7 4 := fun i j => ([true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1673 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1673 : IsComplex outgoing1673 incoming1673 := by lin_cert using ()
-- CW_sigma_nu_eta s=24 t=146
def outgoing1674 : Matrix 2 7 := fun i j => ([true, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1674 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1674 : IsComplex outgoing1674 incoming1674 := by lin_cert using ()
-- CW_sigma_nu_eta s=24 t=147
def outgoing1675 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming1675 : Matrix 1 6 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1675 : IsComplex outgoing1675 incoming1675 := by lin_cert using ()
-- CW_sigma_nu_eta s=24 t=148
def outgoing1676 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1676 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1676 : IsComplex outgoing1676 incoming1676 := by lin_cert using ()
-- CW_sigma_nu_eta s=25 t=147
def outgoing1677 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1677 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1677 : IsComplex outgoing1677 incoming1677 := by lin_cert using ()
-- CW_sigma_nu_eta s=25 t=148
def outgoing1678 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1678 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1678 : IsComplex outgoing1678 incoming1678 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=1 t=128
def outgoing1679 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1679 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1679 : IsComplex outgoing1679 incoming1679 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=2 t=129
def outgoing1680 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1680 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1680 : IsComplex outgoing1680 incoming1680 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=3 t=129
def outgoing1681 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1681 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1681 : IsComplex outgoing1681 incoming1681 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=3 t=130
def outgoing1682 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1682 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1682 : IsComplex outgoing1682 incoming1682 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=4 t=130
def outgoing1683 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1683 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1683 : IsComplex outgoing1683 incoming1683 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=4 t=131
def outgoing1684 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1684 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1684 : IsComplex outgoing1684 incoming1684 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=5 t=130
def outgoing1685 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1685 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1685 : IsComplex outgoing1685 incoming1685 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=5 t=131
def outgoing1686 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1686 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1686 : IsComplex outgoing1686 incoming1686 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=5 t=132
def outgoing1687 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1687 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1687 : IsComplex outgoing1687 incoming1687 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=6 t=128
def outgoing1688 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1688 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1688 : IsComplex outgoing1688 incoming1688 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=6 t=130
def outgoing1689 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1689 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1689 : IsComplex outgoing1689 incoming1689 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=6 t=131
def outgoing1690 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1690 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1690 : IsComplex outgoing1690 incoming1690 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=6 t=132
def outgoing1691 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1691 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1691 : IsComplex outgoing1691 incoming1691 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=6 t=133
def outgoing1692 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1692 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1692 : IsComplex outgoing1692 incoming1692 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=7 t=131
def outgoing1693 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1693 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1693 : IsComplex outgoing1693 incoming1693 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=7 t=132
def outgoing1694 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1694 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1694 : IsComplex outgoing1694 incoming1694 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=7 t=133
def outgoing1695 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1695 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1695 : IsComplex outgoing1695 incoming1695 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=7 t=134
def outgoing1696 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1696 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1696 : IsComplex outgoing1696 incoming1696 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=8 t=130
def outgoing1697 : Matrix 4 2 := fun i j => ([true, false, true, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1697 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1697 : IsComplex outgoing1697 incoming1697 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=8 t=131
def outgoing1698 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1698 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1698 : IsComplex outgoing1698 incoming1698 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=8 t=132
def outgoing1699 : Matrix 2 5 := fun i j => ([true, false, false, false, false, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1699 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1699 : IsComplex outgoing1699 incoming1699 := by lin_cert using ()
end ReleaseComplex16
