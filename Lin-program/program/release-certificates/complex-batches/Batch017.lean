import LinearCertificates.Checker
namespace ReleaseComplex17
open LinearCertificates LinProgramCertificates
-- CW_sigma_nu_eta_2 s=8 t=133
def outgoing1700 : Matrix 3 4 := fun i j => ([false, false, false, false, true, true, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1700 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1700 : IsComplex outgoing1700 incoming1700 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=8 t=134
def outgoing1701 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1701 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1701 : IsComplex outgoing1701 incoming1701 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=8 t=135
def outgoing1702 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, true, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1702 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1702 : IsComplex outgoing1702 incoming1702 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=131
def outgoing1703 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1703 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1703 : IsComplex outgoing1703 incoming1703 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=132
def outgoing1704 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1704 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1704 : IsComplex outgoing1704 incoming1704 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=133
def outgoing1705 : Matrix 1 4 := fun i j => ([false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1705 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1705 : IsComplex outgoing1705 incoming1705 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=134
def outgoing1706 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1706 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1706 : IsComplex outgoing1706 incoming1706 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=135
def outgoing1707 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1707 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1707 : IsComplex outgoing1707 incoming1707 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=9 t=136
def outgoing1708 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1708 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1708 : IsComplex outgoing1708 incoming1708 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=132
def outgoing1709 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1709 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1709 : IsComplex outgoing1709 incoming1709 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=133
def outgoing1710 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1710 : Matrix 2 5 := fun i j => ([true, false, false, false, false, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1710 : IsComplex outgoing1710 incoming1710 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=134
def outgoing1711 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1711 : Matrix 3 4 := fun i j => ([false, false, false, false, true, true, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1711 : IsComplex outgoing1711 incoming1711 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=135
def outgoing1712 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1712 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1712 : IsComplex outgoing1712 incoming1712 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=136
def outgoing1713 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1713 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, true, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1713 : IsComplex outgoing1713 incoming1713 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=10 t=137
def outgoing1714 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1714 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1714 : IsComplex outgoing1714 incoming1714 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=133
def outgoing1715 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1715 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1715 : IsComplex outgoing1715 incoming1715 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=134
def outgoing1716 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1716 : Matrix 1 4 := fun i j => ([false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1716 : IsComplex outgoing1716 incoming1716 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=135
def outgoing1717 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1717 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1717 : IsComplex outgoing1717 incoming1717 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=136
def outgoing1718 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1718 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1718 : IsComplex outgoing1718 incoming1718 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=137
def outgoing1719 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1719 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1719 : IsComplex outgoing1719 incoming1719 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=11 t=138
def outgoing1720 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1720 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1720 : IsComplex outgoing1720 incoming1720 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=12 t=135
def outgoing1721 : Matrix 3 4 := fun i j => ([false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1721 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1721 : IsComplex outgoing1721 incoming1721 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=12 t=136
def outgoing1722 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1722 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1722 : IsComplex outgoing1722 incoming1722 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=12 t=137
def outgoing1723 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1723 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1723 : IsComplex outgoing1723 incoming1723 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=12 t=138
def outgoing1724 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1724 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1724 : IsComplex outgoing1724 incoming1724 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=12 t=139
def outgoing1725 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1725 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1725 : IsComplex outgoing1725 incoming1725 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=135
def outgoing1726 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1726 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1726 : IsComplex outgoing1726 incoming1726 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=136
def outgoing1727 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1727 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1727 : IsComplex outgoing1727 incoming1727 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=137
def outgoing1728 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1728 : Matrix 1 3 := fun i j => ([false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1728 : IsComplex outgoing1728 incoming1728 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=138
def outgoing1729 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1729 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1729 : IsComplex outgoing1729 incoming1729 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=139
def outgoing1730 : Matrix 2 3 := fun i j => ([true, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1730 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1730 : IsComplex outgoing1730 incoming1730 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=13 t=140
def outgoing1731 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1731 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1731 : IsComplex outgoing1731 incoming1731 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=136
def outgoing1732 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1732 : Matrix 3 4 := fun i j => ([false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1732 : IsComplex outgoing1732 incoming1732 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=137
def outgoing1733 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1733 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1733 : IsComplex outgoing1733 incoming1733 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=138
def outgoing1734 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1734 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1734 : IsComplex outgoing1734 incoming1734 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=139
def outgoing1735 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1735 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1735 : IsComplex outgoing1735 incoming1735 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=140
def outgoing1736 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1736 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1736 : IsComplex outgoing1736 incoming1736 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=14 t=141
def outgoing1737 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1737 : Matrix 1 2 := fun i j => ([true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1737 : IsComplex outgoing1737 incoming1737 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=137
def outgoing1738 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming1738 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1738 : IsComplex outgoing1738 incoming1738 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=138
def outgoing1739 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1739 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1739 : IsComplex outgoing1739 incoming1739 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=139
def outgoing1740 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1740 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1740 : IsComplex outgoing1740 incoming1740 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=140
def outgoing1741 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1741 : Matrix 2 3 := fun i j => ([true, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1741 : IsComplex outgoing1741 incoming1741 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=141
def outgoing1742 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1742 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1742 : IsComplex outgoing1742 incoming1742 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=15 t=142
def outgoing1743 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1743 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1743 : IsComplex outgoing1743 incoming1743 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=138
def outgoing1744 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1744 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1744 : IsComplex outgoing1744 incoming1744 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=139
def outgoing1745 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1745 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1745 : IsComplex outgoing1745 incoming1745 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=140
def outgoing1746 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1746 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1746 : IsComplex outgoing1746 incoming1746 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=141
def outgoing1747 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1747 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1747 : IsComplex outgoing1747 incoming1747 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=142
def outgoing1748 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1748 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1748 : IsComplex outgoing1748 incoming1748 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=16 t=143
def outgoing1749 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1749 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1749 : IsComplex outgoing1749 incoming1749 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=17 t=139
def outgoing1750 : Matrix 4 3 := fun i j => ([false, false, true, false, false, true, true, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1750 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1750 : IsComplex outgoing1750 incoming1750 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=17 t=140
def outgoing1751 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1751 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1751 : IsComplex outgoing1751 incoming1751 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=17 t=142
def outgoing1752 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1752 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1752 : IsComplex outgoing1752 incoming1752 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=17 t=143
def outgoing1753 : Matrix 2 3 := fun i j => ([false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1753 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1753 : IsComplex outgoing1753 incoming1753 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=17 t=144
def outgoing1754 : Matrix 5 2 := fun i j => ([false, false, true, false, true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1754 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1754 : IsComplex outgoing1754 incoming1754 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=140
def outgoing1755 : Matrix 1 4 := fun i j => ([false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1755 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1755 : IsComplex outgoing1755 incoming1755 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=141
def outgoing1756 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1756 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1756 : IsComplex outgoing1756 incoming1756 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=142
def outgoing1757 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1757 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1757 : IsComplex outgoing1757 incoming1757 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=143
def outgoing1758 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming1758 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1758 : IsComplex outgoing1758 incoming1758 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=144
def outgoing1759 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1759 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1759 : IsComplex outgoing1759 incoming1759 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=18 t=145
def outgoing1760 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1760 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1760 : IsComplex outgoing1760 incoming1760 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=19 t=141
def outgoing1761 : Matrix 2 3 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1761 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1761 : IsComplex outgoing1761 incoming1761 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=19 t=143
def outgoing1762 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1762 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1762 : IsComplex outgoing1762 incoming1762 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=19 t=144
def outgoing1763 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1763 : Matrix 2 3 := fun i j => ([false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1763 : IsComplex outgoing1763 incoming1763 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=19 t=145
def outgoing1764 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1764 : Matrix 5 2 := fun i j => ([false, false, true, false, true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1764 : IsComplex outgoing1764 incoming1764 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=19 t=146
def outgoing1765 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1765 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1765 : IsComplex outgoing1765 incoming1765 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=20 t=142
def outgoing1766 : Matrix 4 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1766 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1766 : IsComplex outgoing1766 incoming1766 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=20 t=143
def outgoing1767 : Matrix 4 5 := fun i j => ([true, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1767 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1767 : IsComplex outgoing1767 incoming1767 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=20 t=145
def outgoing1768 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1768 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1768 : IsComplex outgoing1768 incoming1768 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=20 t=146
def outgoing1769 : Matrix 2 5 := fun i j => ([false, false, false, true, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1769 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1769 : IsComplex outgoing1769 incoming1769 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=20 t=147
def outgoing1770 : Matrix 2 4 := fun i j => ([false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1770 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1770 : IsComplex outgoing1770 incoming1770 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=143
def outgoing1771 : Matrix 2 6 := fun i j => ([false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1771 : Matrix 6 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1771 : IsComplex outgoing1771 incoming1771 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=144
def outgoing1772 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1772 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1772 : IsComplex outgoing1772 incoming1772 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=145
def outgoing1773 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming1773 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1773 : IsComplex outgoing1773 incoming1773 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=146
def outgoing1774 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1774 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1774 : IsComplex outgoing1774 incoming1774 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=147
def outgoing1775 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1775 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1775 : IsComplex outgoing1775 incoming1775 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=21 t=148
def outgoing1776 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1776 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1776 : IsComplex outgoing1776 incoming1776 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=22 t=144
def outgoing1777 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1777 : Matrix 4 5 := fun i j => ([true, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1777 : IsComplex outgoing1777 incoming1777 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=22 t=146
def outgoing1778 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1778 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1778 : IsComplex outgoing1778 incoming1778 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=22 t=147
def outgoing1779 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1779 : Matrix 2 5 := fun i j => ([false, false, false, true, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1779 : IsComplex outgoing1779 incoming1779 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=22 t=148
def outgoing1780 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1780 : Matrix 2 4 := fun i j => ([false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1780 : IsComplex outgoing1780 incoming1780 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=23 t=145
def outgoing1781 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1781 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1781 : IsComplex outgoing1781 incoming1781 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=23 t=146
def outgoing1782 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1782 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1782 : IsComplex outgoing1782 incoming1782 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=23 t=147
def outgoing1783 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1783 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1783 : IsComplex outgoing1783 incoming1783 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=23 t=148
def outgoing1784 : Matrix 4 2 := fun i j => ([false, false, true, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1784 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1784 : IsComplex outgoing1784 incoming1784 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=24 t=146
def outgoing1785 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1785 : Matrix 4 2 := fun i j => ([true, false, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1785 : IsComplex outgoing1785 incoming1785 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=24 t=147
def outgoing1786 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming1786 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1786 : IsComplex outgoing1786 incoming1786 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=24 t=148
def outgoing1787 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1787 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1787 : IsComplex outgoing1787 incoming1787 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=25 t=147
def outgoing1788 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1788 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1788 : IsComplex outgoing1788 incoming1788 := by lin_cert using ()
-- CW_sigma_nu_eta_2 s=25 t=148
def outgoing1789 : Matrix 3 2 := fun i j => ([true, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1789 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1789 : IsComplex outgoing1789 incoming1789 := by lin_cert using ()
-- Ceta s=1 t=128
def outgoing1790 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1790 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1790 : IsComplex outgoing1790 incoming1790 := by lin_cert using ()
-- Ceta s=2 t=129
def outgoing1791 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1791 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1791 : IsComplex outgoing1791 incoming1791 := by lin_cert using ()
-- Ceta s=3 t=129
def outgoing1792 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1792 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1792 : IsComplex outgoing1792 incoming1792 := by lin_cert using ()
-- Ceta s=3 t=130
def outgoing1793 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1793 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1793 : IsComplex outgoing1793 incoming1793 := by lin_cert using ()
-- Ceta s=4 t=130
def outgoing1794 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1794 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1794 : IsComplex outgoing1794 incoming1794 := by lin_cert using ()
-- Ceta s=4 t=131
def outgoing1795 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1795 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1795 : IsComplex outgoing1795 incoming1795 := by lin_cert using ()
-- Ceta s=5 t=130
def outgoing1796 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1796 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1796 : IsComplex outgoing1796 incoming1796 := by lin_cert using ()
-- Ceta s=5 t=132
def outgoing1797 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1797 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1797 : IsComplex outgoing1797 incoming1797 := by lin_cert using ()
-- Ceta s=6 t=130
def outgoing1798 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1798 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1798 : IsComplex outgoing1798 incoming1798 := by lin_cert using ()
-- Ceta s=6 t=131
def outgoing1799 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming1799 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1799 : IsComplex outgoing1799 incoming1799 := by lin_cert using ()
end ReleaseComplex17
