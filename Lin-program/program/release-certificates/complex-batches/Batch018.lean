import LinearCertificates.Checker
namespace ReleaseComplex18
open LinearCertificates LinProgramCertificates
-- Ceta s=6 t=132
def outgoing1800 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1800 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1800 : IsComplex outgoing1800 incoming1800 := by lin_cert using ()
-- Ceta s=6 t=133
def outgoing1801 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1801 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1801 : IsComplex outgoing1801 incoming1801 := by lin_cert using ()
-- Ceta s=7 t=131
def outgoing1802 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1802 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1802 : IsComplex outgoing1802 incoming1802 := by lin_cert using ()
-- Ceta s=7 t=133
def outgoing1803 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1803 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1803 : IsComplex outgoing1803 incoming1803 := by lin_cert using ()
-- Ceta s=7 t=134
def outgoing1804 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1804 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1804 : IsComplex outgoing1804 incoming1804 := by lin_cert using ()
-- Ceta s=8 t=131
def outgoing1805 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1805 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1805 : IsComplex outgoing1805 incoming1805 := by lin_cert using ()
-- Ceta s=8 t=132
def outgoing1806 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1806 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1806 : IsComplex outgoing1806 incoming1806 := by lin_cert using ()
-- Ceta s=8 t=133
def outgoing1807 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1807 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1807 : IsComplex outgoing1807 incoming1807 := by lin_cert using ()
-- Ceta s=8 t=134
def outgoing1808 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming1808 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1808 : IsComplex outgoing1808 incoming1808 := by lin_cert using ()
-- Ceta s=8 t=135
def outgoing1809 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true, true, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1809 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1809 : IsComplex outgoing1809 incoming1809 := by lin_cert using ()
-- Ceta s=9 t=132
def outgoing1810 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1810 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1810 : IsComplex outgoing1810 incoming1810 := by lin_cert using ()
-- Ceta s=9 t=133
def outgoing1811 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1811 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1811 : IsComplex outgoing1811 incoming1811 := by lin_cert using ()
-- Ceta s=9 t=134
def outgoing1812 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1812 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1812 : IsComplex outgoing1812 incoming1812 := by lin_cert using ()
-- Ceta s=9 t=135
def outgoing1813 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1813 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1813 : IsComplex outgoing1813 incoming1813 := by lin_cert using ()
-- Ceta s=9 t=136
def outgoing1814 : Matrix 5 9 := fun i j => ([true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming1814 : Matrix 9 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1814 : IsComplex outgoing1814 incoming1814 := by lin_cert using ()
-- Ceta s=10 t=132
def outgoing1815 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1815 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1815 : IsComplex outgoing1815 incoming1815 := by lin_cert using ()
-- Ceta s=10 t=133
def outgoing1816 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1816 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1816 : IsComplex outgoing1816 incoming1816 := by lin_cert using ()
-- Ceta s=10 t=134
def outgoing1817 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1817 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1817 : IsComplex outgoing1817 incoming1817 := by lin_cert using ()
-- Ceta s=10 t=135
def outgoing1818 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1818 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1818 : IsComplex outgoing1818 incoming1818 := by lin_cert using ()
-- Ceta s=10 t=136
def outgoing1819 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1819 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true, true, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1819 : IsComplex outgoing1819 incoming1819 := by lin_cert using ()
-- Ceta s=10 t=137
def outgoing1820 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming1820 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1820 : IsComplex outgoing1820 incoming1820 := by lin_cert using ()
-- Ceta s=11 t=133
def outgoing1821 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1821 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1821 : IsComplex outgoing1821 incoming1821 := by lin_cert using ()
-- Ceta s=11 t=134
def outgoing1822 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1822 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1822 : IsComplex outgoing1822 incoming1822 := by lin_cert using ()
-- Ceta s=11 t=135
def outgoing1823 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1823 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1823 : IsComplex outgoing1823 incoming1823 := by lin_cert using ()
-- Ceta s=11 t=136
def outgoing1824 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1824 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1824 : IsComplex outgoing1824 incoming1824 := by lin_cert using ()
-- Ceta s=11 t=137
def outgoing1825 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1825 : Matrix 5 9 := fun i j => ([true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1825 : IsComplex outgoing1825 incoming1825 := by lin_cert using ()
-- Ceta s=11 t=138
def outgoing1826 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1826 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1826 : IsComplex outgoing1826 incoming1826 := by lin_cert using ()
-- Ceta s=12 t=134
def outgoing1827 : Matrix 4 3 := fun i j => ([true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1827 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1827 : IsComplex outgoing1827 incoming1827 := by lin_cert using ()
-- Ceta s=12 t=135
def outgoing1828 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1828 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1828 : IsComplex outgoing1828 incoming1828 := by lin_cert using ()
-- Ceta s=12 t=136
def outgoing1829 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1829 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1829 : IsComplex outgoing1829 incoming1829 := by lin_cert using ()
-- Ceta s=12 t=137
def outgoing1830 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1830 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1830 : IsComplex outgoing1830 incoming1830 := by lin_cert using ()
-- Ceta s=12 t=138
def outgoing1831 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1831 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1831 : IsComplex outgoing1831 incoming1831 := by lin_cert using ()
-- Ceta s=12 t=139
def outgoing1832 : Matrix 5 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1832 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1832 : IsComplex outgoing1832 incoming1832 := by lin_cert using ()
-- Ceta s=13 t=135
def outgoing1833 : Matrix 4 4 := fun i j => ([false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1833 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1833 : IsComplex outgoing1833 incoming1833 := by lin_cert using ()
-- Ceta s=13 t=136
def outgoing1834 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1834 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1834 : IsComplex outgoing1834 incoming1834 := by lin_cert using ()
-- Ceta s=13 t=137
def outgoing1835 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1835 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1835 : IsComplex outgoing1835 incoming1835 := by lin_cert using ()
-- Ceta s=13 t=138
def outgoing1836 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1836 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1836 : IsComplex outgoing1836 incoming1836 := by lin_cert using ()
-- Ceta s=13 t=139
def outgoing1837 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1837 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1837 : IsComplex outgoing1837 incoming1837 := by lin_cert using ()
-- Ceta s=13 t=140
def outgoing1838 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, true, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1838 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1838 : IsComplex outgoing1838 incoming1838 := by lin_cert using ()
-- Ceta s=14 t=136
def outgoing1839 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1839 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1839 : IsComplex outgoing1839 incoming1839 := by lin_cert using ()
-- Ceta s=14 t=137
def outgoing1840 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1840 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1840 : IsComplex outgoing1840 incoming1840 := by lin_cert using ()
-- Ceta s=14 t=138
def outgoing1841 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1841 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1841 : IsComplex outgoing1841 incoming1841 := by lin_cert using ()
-- Ceta s=14 t=139
def outgoing1842 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1842 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1842 : IsComplex outgoing1842 incoming1842 := by lin_cert using ()
-- Ceta s=14 t=140
def outgoing1843 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1843 : Matrix 5 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1843 : IsComplex outgoing1843 incoming1843 := by lin_cert using ()
-- Ceta s=14 t=141
def outgoing1844 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1844 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1844 : IsComplex outgoing1844 incoming1844 := by lin_cert using ()
-- Ceta s=15 t=137
def outgoing1845 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1845 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1845 : IsComplex outgoing1845 incoming1845 := by lin_cert using ()
-- Ceta s=15 t=138
def outgoing1846 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1846 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1846 : IsComplex outgoing1846 incoming1846 := by lin_cert using ()
-- Ceta s=15 t=139
def outgoing1847 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1847 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1847 : IsComplex outgoing1847 incoming1847 := by lin_cert using ()
-- Ceta s=15 t=140
def outgoing1848 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1848 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1848 : IsComplex outgoing1848 incoming1848 := by lin_cert using ()
-- Ceta s=15 t=141
def outgoing1849 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1849 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, true, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1849 : IsComplex outgoing1849 incoming1849 := by lin_cert using ()
-- Ceta s=15 t=142
def outgoing1850 : Matrix 7 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1850 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1850 : IsComplex outgoing1850 incoming1850 := by lin_cert using ()
-- Ceta s=16 t=138
def outgoing1851 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1851 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1851 : IsComplex outgoing1851 incoming1851 := by lin_cert using ()
-- Ceta s=16 t=139
def outgoing1852 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1852 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1852 : IsComplex outgoing1852 incoming1852 := by lin_cert using ()
-- Ceta s=16 t=140
def outgoing1853 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1853 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1853 : IsComplex outgoing1853 incoming1853 := by lin_cert using ()
-- Ceta s=16 t=141
def outgoing1854 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1854 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1854 : IsComplex outgoing1854 incoming1854 := by lin_cert using ()
-- Ceta s=16 t=142
def outgoing1855 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1855 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1855 : IsComplex outgoing1855 incoming1855 := by lin_cert using ()
-- Ceta s=16 t=143
def outgoing1856 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1856 : Matrix 6 9 := fun i j => ([true, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1856 : IsComplex outgoing1856 incoming1856 := by lin_cert using ()
-- Ceta s=17 t=139
def outgoing1857 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1857 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1857 : IsComplex outgoing1857 incoming1857 := by lin_cert using ()
-- Ceta s=17 t=140
def outgoing1858 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1858 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1858 : IsComplex outgoing1858 incoming1858 := by lin_cert using ()
-- Ceta s=17 t=141
def outgoing1859 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1859 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1859 : IsComplex outgoing1859 incoming1859 := by lin_cert using ()
-- Ceta s=17 t=142
def outgoing1860 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1860 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1860 : IsComplex outgoing1860 incoming1860 := by lin_cert using ()
-- Ceta s=17 t=143
def outgoing1861 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming1861 : Matrix 7 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1861 : IsComplex outgoing1861 incoming1861 := by lin_cert using ()
-- Ceta s=17 t=144
def outgoing1862 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1862 : Matrix 3 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1862 : IsComplex outgoing1862 incoming1862 := by lin_cert using ()
-- Ceta s=18 t=140
def outgoing1863 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1863 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1863 : IsComplex outgoing1863 incoming1863 := by lin_cert using ()
-- Ceta s=18 t=141
def outgoing1864 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1864 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1864 : IsComplex outgoing1864 incoming1864 := by lin_cert using ()
-- Ceta s=18 t=142
def outgoing1865 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1865 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1865 : IsComplex outgoing1865 incoming1865 := by lin_cert using ()
-- Ceta s=18 t=143
def outgoing1866 : Matrix 1 5 := fun i j => ([false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1866 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1866 : IsComplex outgoing1866 incoming1866 := by lin_cert using ()
-- Ceta s=18 t=144
def outgoing1867 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1867 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1867 : IsComplex outgoing1867 incoming1867 := by lin_cert using ()
-- Ceta s=18 t=145
def outgoing1868 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1868 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1868 : IsComplex outgoing1868 incoming1868 := by lin_cert using ()
-- Ceta s=19 t=141
def outgoing1869 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1869 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1869 : IsComplex outgoing1869 incoming1869 := by lin_cert using ()
-- Ceta s=19 t=142
def outgoing1870 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1870 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1870 : IsComplex outgoing1870 incoming1870 := by lin_cert using ()
-- Ceta s=19 t=143
def outgoing1871 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1871 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1871 : IsComplex outgoing1871 incoming1871 := by lin_cert using ()
-- Ceta s=19 t=144
def outgoing1872 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1872 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1872 : IsComplex outgoing1872 incoming1872 := by lin_cert using ()
-- Ceta s=19 t=145
def outgoing1873 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1873 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1873 : IsComplex outgoing1873 incoming1873 := by lin_cert using ()
-- Ceta s=19 t=146
def outgoing1874 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1874 : Matrix 4 6 := fun i j => ([false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1874 : IsComplex outgoing1874 incoming1874 := by lin_cert using ()
-- Ceta s=20 t=142
def outgoing1875 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1875 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1875 : IsComplex outgoing1875 incoming1875 := by lin_cert using ()
-- Ceta s=20 t=143
def outgoing1876 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1876 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1876 : IsComplex outgoing1876 incoming1876 := by lin_cert using ()
-- Ceta s=20 t=144
def outgoing1877 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1877 : Matrix 1 5 := fun i j => ([false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1877 : IsComplex outgoing1877 incoming1877 := by lin_cert using ()
-- Ceta s=20 t=145
def outgoing1878 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming1878 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1878 : IsComplex outgoing1878 incoming1878 := by lin_cert using ()
-- Ceta s=20 t=146
def outgoing1879 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1879 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1879 : IsComplex outgoing1879 incoming1879 := by lin_cert using ()
-- Ceta s=20 t=147
def outgoing1880 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1880 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1880 : IsComplex outgoing1880 incoming1880 := by lin_cert using ()
-- Ceta s=21 t=143
def outgoing1881 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1881 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1881 : IsComplex outgoing1881 incoming1881 := by lin_cert using ()
-- Ceta s=21 t=144
def outgoing1882 : Matrix 3 2 := fun i j => ([true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1882 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1882 : IsComplex outgoing1882 incoming1882 := by lin_cert using ()
-- Ceta s=21 t=145
def outgoing1883 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, true, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1883 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1883 : IsComplex outgoing1883 incoming1883 := by lin_cert using ()
-- Ceta s=21 t=146
def outgoing1884 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1884 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1884 : IsComplex outgoing1884 incoming1884 := by lin_cert using ()
-- Ceta s=21 t=147
def outgoing1885 : Matrix 4 1 := fun i j => ([true, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1885 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1885 : IsComplex outgoing1885 incoming1885 := by lin_cert using ()
-- Ceta s=21 t=148
def outgoing1886 : Matrix 4 6 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1886 : Matrix 6 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1886 : IsComplex outgoing1886 incoming1886 := by lin_cert using ()
-- Ceta s=22 t=144
def outgoing1887 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1887 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1887 : IsComplex outgoing1887 incoming1887 := by lin_cert using ()
-- Ceta s=22 t=145
def outgoing1888 : Matrix 3 3 := fun i j => ([false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1888 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1888 : IsComplex outgoing1888 incoming1888 := by lin_cert using ()
-- Ceta s=22 t=146
def outgoing1889 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1889 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1889 : IsComplex outgoing1889 incoming1889 := by lin_cert using ()
-- Ceta s=22 t=147
def outgoing1890 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1890 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1890 : IsComplex outgoing1890 incoming1890 := by lin_cert using ()
-- Ceta s=22 t=148
def outgoing1891 : Matrix 4 3 := fun i j => ([true, false, false, false, false, true, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1891 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1891 : IsComplex outgoing1891 incoming1891 := by lin_cert using ()
-- Ceta s=22 t=149
def outgoing1892 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1892 : Matrix 6 7 := fun i j => ([false, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1892 : IsComplex outgoing1892 incoming1892 := by lin_cert using ()
-- Ceta s=23 t=145
def outgoing1893 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, true, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1893 : Matrix 3 2 := fun i j => ([true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1893 : IsComplex outgoing1893 incoming1893 := by lin_cert using ()
-- Ceta s=23 t=146
def outgoing1894 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1894 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, true, true, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1894 : IsComplex outgoing1894 incoming1894 := by lin_cert using ()
-- Ceta s=23 t=147
def outgoing1895 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1895 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1895 : IsComplex outgoing1895 incoming1895 := by lin_cert using ()
-- Ceta s=23 t=148
def outgoing1896 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1896 : Matrix 4 1 := fun i j => ([true, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1896 : IsComplex outgoing1896 incoming1896 := by lin_cert using ()
-- Ceta s=23 t=149
def outgoing1897 : Matrix 2 4 := fun i j => ([false, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1897 : Matrix 4 6 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1897 : IsComplex outgoing1897 incoming1897 := by lin_cert using ()
-- Ceta s=23 t=150
def outgoing1898 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1898 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1898 : IsComplex outgoing1898 incoming1898 := by lin_cert using ()
-- Ceta s=24 t=146
def outgoing1899 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1899 : Matrix 3 3 := fun i j => ([false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1899 : IsComplex outgoing1899 incoming1899 := by lin_cert using ()
end ReleaseComplex18
