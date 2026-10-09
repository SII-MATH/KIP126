import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch022
import DerivedMapBatches.Batch023
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch009
theorem firstLink450 : DerivedMapBatches.Batch022.certificate1780.algebra.mat = DerivedMapBatches.Batch022.certificate1782.a := by decide
theorem secondLink450 : DerivedMapBatches.Batch022.certificate1781.algebra.mat = DerivedMapBatches.Batch022.certificate1782.b := by decide
theorem firstValid450 : DerivedMapBatches.Batch022.certificate1780.Valid := DerivedMapBatches.Batch022.certificate1780valid
theorem secondValid450 : DerivedMapBatches.Batch022.certificate1781.Valid := DerivedMapBatches.Batch022.certificate1781valid
theorem outputValid450 : DerivedMapBatches.Batch022.certificate1782.Valid := DerivedMapBatches.Batch022.certificate1782valid
theorem linkedComposition450 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1782.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1782.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1781.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1780.algebra.mat x) := by
  rw [firstLink450, secondLink450]
  exact DerivedMapBatches.Batch022.certificate1782valid.2 x
theorem firstLink451 : DerivedMapBatches.Batch022.certificate1783.algebra.mat = DerivedMapBatches.Batch022.certificate1785.a := by decide
theorem secondLink451 : DerivedMapBatches.Batch022.certificate1784.algebra.mat = DerivedMapBatches.Batch022.certificate1785.b := by decide
theorem firstValid451 : DerivedMapBatches.Batch022.certificate1783.Valid := DerivedMapBatches.Batch022.certificate1783valid
theorem secondValid451 : DerivedMapBatches.Batch022.certificate1784.Valid := DerivedMapBatches.Batch022.certificate1784valid
theorem outputValid451 : DerivedMapBatches.Batch022.certificate1785.Valid := DerivedMapBatches.Batch022.certificate1785valid
theorem linkedComposition451 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1785.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1785.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1783.algebra.mat x) := by
  rw [firstLink451, secondLink451]
  exact DerivedMapBatches.Batch022.certificate1785valid.2 x
theorem firstLink452 : DerivedMapBatches.Batch022.certificate1786.algebra.mat = DerivedMapBatches.Batch022.certificate1788.a := by decide
theorem secondLink452 : DerivedMapBatches.Batch022.certificate1787.algebra.mat = DerivedMapBatches.Batch022.certificate1788.b := by decide
theorem firstValid452 : DerivedMapBatches.Batch022.certificate1786.Valid := DerivedMapBatches.Batch022.certificate1786valid
theorem secondValid452 : DerivedMapBatches.Batch022.certificate1787.Valid := DerivedMapBatches.Batch022.certificate1787valid
theorem outputValid452 : DerivedMapBatches.Batch022.certificate1788.Valid := DerivedMapBatches.Batch022.certificate1788valid
theorem linkedComposition452 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1788.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1788.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1787.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1786.algebra.mat x) := by
  rw [firstLink452, secondLink452]
  exact DerivedMapBatches.Batch022.certificate1788valid.2 x
theorem firstLink453 : DerivedMapBatches.Batch022.certificate1789.algebra.mat = DerivedMapBatches.Batch022.certificate1791.a := by decide
theorem secondLink453 : DerivedMapBatches.Batch022.certificate1790.algebra.mat = DerivedMapBatches.Batch022.certificate1791.b := by decide
theorem firstValid453 : DerivedMapBatches.Batch022.certificate1789.Valid := DerivedMapBatches.Batch022.certificate1789valid
theorem secondValid453 : DerivedMapBatches.Batch022.certificate1790.Valid := DerivedMapBatches.Batch022.certificate1790valid
theorem outputValid453 : DerivedMapBatches.Batch022.certificate1791.Valid := DerivedMapBatches.Batch022.certificate1791valid
theorem linkedComposition453 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1791.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1791.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1790.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1789.algebra.mat x) := by
  rw [firstLink453, secondLink453]
  exact DerivedMapBatches.Batch022.certificate1791valid.2 x
theorem firstLink454 : DerivedMapBatches.Batch022.certificate1792.algebra.mat = DerivedMapBatches.Batch022.certificate1794.a := by decide
theorem secondLink454 : DerivedMapBatches.Batch022.certificate1793.algebra.mat = DerivedMapBatches.Batch022.certificate1794.b := by decide
theorem firstValid454 : DerivedMapBatches.Batch022.certificate1792.Valid := DerivedMapBatches.Batch022.certificate1792valid
theorem secondValid454 : DerivedMapBatches.Batch022.certificate1793.Valid := DerivedMapBatches.Batch022.certificate1793valid
theorem outputValid454 : DerivedMapBatches.Batch022.certificate1794.Valid := DerivedMapBatches.Batch022.certificate1794valid
theorem linkedComposition454 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1794.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1794.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1793.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1792.algebra.mat x) := by
  rw [firstLink454, secondLink454]
  exact DerivedMapBatches.Batch022.certificate1794valid.2 x
theorem firstLink455 : DerivedMapBatches.Batch022.certificate1795.algebra.mat = DerivedMapBatches.Batch022.certificate1797.a := by decide
theorem secondLink455 : DerivedMapBatches.Batch022.certificate1796.algebra.mat = DerivedMapBatches.Batch022.certificate1797.b := by decide
theorem firstValid455 : DerivedMapBatches.Batch022.certificate1795.Valid := DerivedMapBatches.Batch022.certificate1795valid
theorem secondValid455 : DerivedMapBatches.Batch022.certificate1796.Valid := DerivedMapBatches.Batch022.certificate1796valid
theorem outputValid455 : DerivedMapBatches.Batch022.certificate1797.Valid := DerivedMapBatches.Batch022.certificate1797valid
theorem linkedComposition455 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1797.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1797.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1796.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1795.algebra.mat x) := by
  rw [firstLink455, secondLink455]
  exact DerivedMapBatches.Batch022.certificate1797valid.2 x
theorem firstLink456 : DerivedMapBatches.Batch022.certificate1798.algebra.mat = DerivedMapBatches.Batch022.certificate1799.a := by decide
theorem secondLink456 : DerivedMapBatches.Batch010.certificate807.algebra.mat = DerivedMapBatches.Batch022.certificate1799.b := by decide
theorem firstValid456 : DerivedMapBatches.Batch022.certificate1798.Valid := DerivedMapBatches.Batch022.certificate1798valid
theorem secondValid456 : DerivedMapBatches.Batch010.certificate807.Valid := DerivedMapBatches.Batch010.certificate807valid
theorem outputValid456 : DerivedMapBatches.Batch022.certificate1799.Valid := DerivedMapBatches.Batch022.certificate1799valid
theorem linkedComposition456 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1799.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1799.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1798.algebra.mat x) := by
  rw [firstLink456, secondLink456]
  exact DerivedMapBatches.Batch022.certificate1799valid.2 x
theorem firstLink457 : DerivedMapBatches.Batch022.certificate1800.algebra.mat = DerivedMapBatches.Batch022.certificate1802.a := by decide
theorem secondLink457 : DerivedMapBatches.Batch022.certificate1801.algebra.mat = DerivedMapBatches.Batch022.certificate1802.b := by decide
theorem firstValid457 : DerivedMapBatches.Batch022.certificate1800.Valid := DerivedMapBatches.Batch022.certificate1800valid
theorem secondValid457 : DerivedMapBatches.Batch022.certificate1801.Valid := DerivedMapBatches.Batch022.certificate1801valid
theorem outputValid457 : DerivedMapBatches.Batch022.certificate1802.Valid := DerivedMapBatches.Batch022.certificate1802valid
theorem linkedComposition457 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1802.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1802.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1800.algebra.mat x) := by
  rw [firstLink457, secondLink457]
  exact DerivedMapBatches.Batch022.certificate1802valid.2 x
theorem firstLink458 : DerivedMapBatches.Batch022.certificate1803.algebra.mat = DerivedMapBatches.Batch022.certificate1805.a := by decide
theorem secondLink458 : DerivedMapBatches.Batch022.certificate1804.algebra.mat = DerivedMapBatches.Batch022.certificate1805.b := by decide
theorem firstValid458 : DerivedMapBatches.Batch022.certificate1803.Valid := DerivedMapBatches.Batch022.certificate1803valid
theorem secondValid458 : DerivedMapBatches.Batch022.certificate1804.Valid := DerivedMapBatches.Batch022.certificate1804valid
theorem outputValid458 : DerivedMapBatches.Batch022.certificate1805.Valid := DerivedMapBatches.Batch022.certificate1805valid
theorem linkedComposition458 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1805.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1805.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1803.algebra.mat x) := by
  rw [firstLink458, secondLink458]
  exact DerivedMapBatches.Batch022.certificate1805valid.2 x
theorem firstLink459 : DerivedMapBatches.Batch022.certificate1806.algebra.mat = DerivedMapBatches.Batch022.certificate1807.a := by decide
theorem secondLink459 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch022.certificate1807.b := by decide
theorem firstValid459 : DerivedMapBatches.Batch022.certificate1806.Valid := DerivedMapBatches.Batch022.certificate1806valid
theorem secondValid459 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid459 : DerivedMapBatches.Batch022.certificate1807.Valid := DerivedMapBatches.Batch022.certificate1807valid
theorem linkedComposition459 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1807.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1807.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1806.algebra.mat x) := by
  rw [firstLink459, secondLink459]
  exact DerivedMapBatches.Batch022.certificate1807valid.2 x
theorem firstLink460 : DerivedMapBatches.Batch022.certificate1808.algebra.mat = DerivedMapBatches.Batch022.certificate1810.a := by decide
theorem secondLink460 : DerivedMapBatches.Batch022.certificate1809.algebra.mat = DerivedMapBatches.Batch022.certificate1810.b := by decide
theorem firstValid460 : DerivedMapBatches.Batch022.certificate1808.Valid := DerivedMapBatches.Batch022.certificate1808valid
theorem secondValid460 : DerivedMapBatches.Batch022.certificate1809.Valid := DerivedMapBatches.Batch022.certificate1809valid
theorem outputValid460 : DerivedMapBatches.Batch022.certificate1810.Valid := DerivedMapBatches.Batch022.certificate1810valid
theorem linkedComposition460 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1810.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1810.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1808.algebra.mat x) := by
  rw [firstLink460, secondLink460]
  exact DerivedMapBatches.Batch022.certificate1810valid.2 x
theorem firstLink461 : DerivedMapBatches.Batch022.certificate1811.algebra.mat = DerivedMapBatches.Batch022.certificate1812.a := by decide
theorem secondLink461 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch022.certificate1812.b := by decide
theorem firstValid461 : DerivedMapBatches.Batch022.certificate1811.Valid := DerivedMapBatches.Batch022.certificate1811valid
theorem secondValid461 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid461 : DerivedMapBatches.Batch022.certificate1812.Valid := DerivedMapBatches.Batch022.certificate1812valid
theorem linkedComposition461 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1812.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1812.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1811.algebra.mat x) := by
  rw [firstLink461, secondLink461]
  exact DerivedMapBatches.Batch022.certificate1812valid.2 x
theorem firstLink462 : DerivedMapBatches.Batch022.certificate1813.algebra.mat = DerivedMapBatches.Batch022.certificate1815.a := by decide
theorem secondLink462 : DerivedMapBatches.Batch022.certificate1814.algebra.mat = DerivedMapBatches.Batch022.certificate1815.b := by decide
theorem firstValid462 : DerivedMapBatches.Batch022.certificate1813.Valid := DerivedMapBatches.Batch022.certificate1813valid
theorem secondValid462 : DerivedMapBatches.Batch022.certificate1814.Valid := DerivedMapBatches.Batch022.certificate1814valid
theorem outputValid462 : DerivedMapBatches.Batch022.certificate1815.Valid := DerivedMapBatches.Batch022.certificate1815valid
theorem linkedComposition462 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1815.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1815.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1814.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1813.algebra.mat x) := by
  rw [firstLink462, secondLink462]
  exact DerivedMapBatches.Batch022.certificate1815valid.2 x
theorem firstLink463 : DerivedMapBatches.Batch022.certificate1816.algebra.mat = DerivedMapBatches.Batch022.certificate1818.a := by decide
theorem secondLink463 : DerivedMapBatches.Batch022.certificate1817.algebra.mat = DerivedMapBatches.Batch022.certificate1818.b := by decide
theorem firstValid463 : DerivedMapBatches.Batch022.certificate1816.Valid := DerivedMapBatches.Batch022.certificate1816valid
theorem secondValid463 : DerivedMapBatches.Batch022.certificate1817.Valid := DerivedMapBatches.Batch022.certificate1817valid
theorem outputValid463 : DerivedMapBatches.Batch022.certificate1818.Valid := DerivedMapBatches.Batch022.certificate1818valid
theorem linkedComposition463 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1818.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1818.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1817.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1816.algebra.mat x) := by
  rw [firstLink463, secondLink463]
  exact DerivedMapBatches.Batch022.certificate1818valid.2 x
theorem firstLink464 : DerivedMapBatches.Batch022.certificate1819.algebra.mat = DerivedMapBatches.Batch022.certificate1821.a := by decide
theorem secondLink464 : DerivedMapBatches.Batch022.certificate1820.algebra.mat = DerivedMapBatches.Batch022.certificate1821.b := by decide
theorem firstValid464 : DerivedMapBatches.Batch022.certificate1819.Valid := DerivedMapBatches.Batch022.certificate1819valid
theorem secondValid464 : DerivedMapBatches.Batch022.certificate1820.Valid := DerivedMapBatches.Batch022.certificate1820valid
theorem outputValid464 : DerivedMapBatches.Batch022.certificate1821.Valid := DerivedMapBatches.Batch022.certificate1821valid
theorem linkedComposition464 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1821.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1821.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1820.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1819.algebra.mat x) := by
  rw [firstLink464, secondLink464]
  exact DerivedMapBatches.Batch022.certificate1821valid.2 x
theorem firstLink465 : DerivedMapBatches.Batch022.certificate1822.algebra.mat = DerivedMapBatches.Batch022.certificate1824.a := by decide
theorem secondLink465 : DerivedMapBatches.Batch022.certificate1823.algebra.mat = DerivedMapBatches.Batch022.certificate1824.b := by decide
theorem firstValid465 : DerivedMapBatches.Batch022.certificate1822.Valid := DerivedMapBatches.Batch022.certificate1822valid
theorem secondValid465 : DerivedMapBatches.Batch022.certificate1823.Valid := DerivedMapBatches.Batch022.certificate1823valid
theorem outputValid465 : DerivedMapBatches.Batch022.certificate1824.Valid := DerivedMapBatches.Batch022.certificate1824valid
theorem linkedComposition465 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1824.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1824.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1823.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1822.algebra.mat x) := by
  rw [firstLink465, secondLink465]
  exact DerivedMapBatches.Batch022.certificate1824valid.2 x
theorem firstLink466 : DerivedMapBatches.Batch022.certificate1825.algebra.mat = DerivedMapBatches.Batch022.certificate1827.a := by decide
theorem secondLink466 : DerivedMapBatches.Batch022.certificate1826.algebra.mat = DerivedMapBatches.Batch022.certificate1827.b := by decide
theorem firstValid466 : DerivedMapBatches.Batch022.certificate1825.Valid := DerivedMapBatches.Batch022.certificate1825valid
theorem secondValid466 : DerivedMapBatches.Batch022.certificate1826.Valid := DerivedMapBatches.Batch022.certificate1826valid
theorem outputValid466 : DerivedMapBatches.Batch022.certificate1827.Valid := DerivedMapBatches.Batch022.certificate1827valid
theorem linkedComposition466 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1827.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1827.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1826.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1825.algebra.mat x) := by
  rw [firstLink466, secondLink466]
  exact DerivedMapBatches.Batch022.certificate1827valid.2 x
theorem firstLink467 : DerivedMapBatches.Batch022.certificate1828.algebra.mat = DerivedMapBatches.Batch022.certificate1830.a := by decide
theorem secondLink467 : DerivedMapBatches.Batch022.certificate1829.algebra.mat = DerivedMapBatches.Batch022.certificate1830.b := by decide
theorem firstValid467 : DerivedMapBatches.Batch022.certificate1828.Valid := DerivedMapBatches.Batch022.certificate1828valid
theorem secondValid467 : DerivedMapBatches.Batch022.certificate1829.Valid := DerivedMapBatches.Batch022.certificate1829valid
theorem outputValid467 : DerivedMapBatches.Batch022.certificate1830.Valid := DerivedMapBatches.Batch022.certificate1830valid
theorem linkedComposition467 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1830.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1830.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1828.algebra.mat x) := by
  rw [firstLink467, secondLink467]
  exact DerivedMapBatches.Batch022.certificate1830valid.2 x
theorem firstLink468 : DerivedMapBatches.Batch022.certificate1831.algebra.mat = DerivedMapBatches.Batch022.certificate1833.a := by decide
theorem secondLink468 : DerivedMapBatches.Batch022.certificate1832.algebra.mat = DerivedMapBatches.Batch022.certificate1833.b := by decide
theorem firstValid468 : DerivedMapBatches.Batch022.certificate1831.Valid := DerivedMapBatches.Batch022.certificate1831valid
theorem secondValid468 : DerivedMapBatches.Batch022.certificate1832.Valid := DerivedMapBatches.Batch022.certificate1832valid
theorem outputValid468 : DerivedMapBatches.Batch022.certificate1833.Valid := DerivedMapBatches.Batch022.certificate1833valid
theorem linkedComposition468 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1833.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1833.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1832.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1831.algebra.mat x) := by
  rw [firstLink468, secondLink468]
  exact DerivedMapBatches.Batch022.certificate1833valid.2 x
theorem firstLink469 : DerivedMapBatches.Batch022.certificate1834.algebra.mat = DerivedMapBatches.Batch022.certificate1836.a := by decide
theorem secondLink469 : DerivedMapBatches.Batch022.certificate1835.algebra.mat = DerivedMapBatches.Batch022.certificate1836.b := by decide
theorem firstValid469 : DerivedMapBatches.Batch022.certificate1834.Valid := DerivedMapBatches.Batch022.certificate1834valid
theorem secondValid469 : DerivedMapBatches.Batch022.certificate1835.Valid := DerivedMapBatches.Batch022.certificate1835valid
theorem outputValid469 : DerivedMapBatches.Batch022.certificate1836.Valid := DerivedMapBatches.Batch022.certificate1836valid
theorem linkedComposition469 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1836.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1836.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1835.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1834.algebra.mat x) := by
  rw [firstLink469, secondLink469]
  exact DerivedMapBatches.Batch022.certificate1836valid.2 x
theorem firstLink470 : DerivedMapBatches.Batch022.certificate1777.algebra.mat = DerivedMapBatches.Batch022.certificate1837.a := by decide
theorem secondLink470 : DerivedMapBatches.Batch022.certificate1778.algebra.mat = DerivedMapBatches.Batch022.certificate1837.b := by decide
theorem firstValid470 : DerivedMapBatches.Batch022.certificate1777.Valid := DerivedMapBatches.Batch022.certificate1777valid
theorem secondValid470 : DerivedMapBatches.Batch022.certificate1778.Valid := DerivedMapBatches.Batch022.certificate1778valid
theorem outputValid470 : DerivedMapBatches.Batch022.certificate1837.Valid := DerivedMapBatches.Batch022.certificate1837valid
theorem linkedComposition470 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1837.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1837.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1777.algebra.mat x) := by
  rw [firstLink470, secondLink470]
  exact DerivedMapBatches.Batch022.certificate1837valid.2 x
theorem firstLink471 : DerivedMapBatches.Batch022.certificate1780.algebra.mat = DerivedMapBatches.Batch022.certificate1838.a := by decide
theorem secondLink471 : DerivedMapBatches.Batch022.certificate1781.algebra.mat = DerivedMapBatches.Batch022.certificate1838.b := by decide
theorem firstValid471 : DerivedMapBatches.Batch022.certificate1780.Valid := DerivedMapBatches.Batch022.certificate1780valid
theorem secondValid471 : DerivedMapBatches.Batch022.certificate1781.Valid := DerivedMapBatches.Batch022.certificate1781valid
theorem outputValid471 : DerivedMapBatches.Batch022.certificate1838.Valid := DerivedMapBatches.Batch022.certificate1838valid
theorem linkedComposition471 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1838.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1838.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1781.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1780.algebra.mat x) := by
  rw [firstLink471, secondLink471]
  exact DerivedMapBatches.Batch022.certificate1838valid.2 x
theorem firstLink472 : DerivedMapBatches.Batch022.certificate1783.algebra.mat = DerivedMapBatches.Batch022.certificate1839.a := by decide
theorem secondLink472 : DerivedMapBatches.Batch022.certificate1784.algebra.mat = DerivedMapBatches.Batch022.certificate1839.b := by decide
theorem firstValid472 : DerivedMapBatches.Batch022.certificate1783.Valid := DerivedMapBatches.Batch022.certificate1783valid
theorem secondValid472 : DerivedMapBatches.Batch022.certificate1784.Valid := DerivedMapBatches.Batch022.certificate1784valid
theorem outputValid472 : DerivedMapBatches.Batch022.certificate1839.Valid := DerivedMapBatches.Batch022.certificate1839valid
theorem linkedComposition472 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1839.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1839.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1783.algebra.mat x) := by
  rw [firstLink472, secondLink472]
  exact DerivedMapBatches.Batch022.certificate1839valid.2 x
theorem firstLink473 : DerivedMapBatches.Batch022.certificate1786.algebra.mat = DerivedMapBatches.Batch023.certificate1840.a := by decide
theorem secondLink473 : DerivedMapBatches.Batch022.certificate1787.algebra.mat = DerivedMapBatches.Batch023.certificate1840.b := by decide
theorem firstValid473 : DerivedMapBatches.Batch022.certificate1786.Valid := DerivedMapBatches.Batch022.certificate1786valid
theorem secondValid473 : DerivedMapBatches.Batch022.certificate1787.Valid := DerivedMapBatches.Batch022.certificate1787valid
theorem outputValid473 : DerivedMapBatches.Batch023.certificate1840.Valid := DerivedMapBatches.Batch023.certificate1840valid
theorem linkedComposition473 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1840.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1840.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1787.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1786.algebra.mat x) := by
  rw [firstLink473, secondLink473]
  exact DerivedMapBatches.Batch023.certificate1840valid.2 x
theorem firstLink474 : DerivedMapBatches.Batch022.certificate1789.algebra.mat = DerivedMapBatches.Batch023.certificate1841.a := by decide
theorem secondLink474 : DerivedMapBatches.Batch022.certificate1790.algebra.mat = DerivedMapBatches.Batch023.certificate1841.b := by decide
theorem firstValid474 : DerivedMapBatches.Batch022.certificate1789.Valid := DerivedMapBatches.Batch022.certificate1789valid
theorem secondValid474 : DerivedMapBatches.Batch022.certificate1790.Valid := DerivedMapBatches.Batch022.certificate1790valid
theorem outputValid474 : DerivedMapBatches.Batch023.certificate1841.Valid := DerivedMapBatches.Batch023.certificate1841valid
theorem linkedComposition474 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1841.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1841.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1790.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1789.algebra.mat x) := by
  rw [firstLink474, secondLink474]
  exact DerivedMapBatches.Batch023.certificate1841valid.2 x
theorem firstLink475 : DerivedMapBatches.Batch022.certificate1792.algebra.mat = DerivedMapBatches.Batch023.certificate1842.a := by decide
theorem secondLink475 : DerivedMapBatches.Batch022.certificate1793.algebra.mat = DerivedMapBatches.Batch023.certificate1842.b := by decide
theorem firstValid475 : DerivedMapBatches.Batch022.certificate1792.Valid := DerivedMapBatches.Batch022.certificate1792valid
theorem secondValid475 : DerivedMapBatches.Batch022.certificate1793.Valid := DerivedMapBatches.Batch022.certificate1793valid
theorem outputValid475 : DerivedMapBatches.Batch023.certificate1842.Valid := DerivedMapBatches.Batch023.certificate1842valid
theorem linkedComposition475 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1842.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1842.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1793.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1792.algebra.mat x) := by
  rw [firstLink475, secondLink475]
  exact DerivedMapBatches.Batch023.certificate1842valid.2 x
theorem firstLink476 : DerivedMapBatches.Batch022.certificate1795.algebra.mat = DerivedMapBatches.Batch023.certificate1843.a := by decide
theorem secondLink476 : DerivedMapBatches.Batch022.certificate1796.algebra.mat = DerivedMapBatches.Batch023.certificate1843.b := by decide
theorem firstValid476 : DerivedMapBatches.Batch022.certificate1795.Valid := DerivedMapBatches.Batch022.certificate1795valid
theorem secondValid476 : DerivedMapBatches.Batch022.certificate1796.Valid := DerivedMapBatches.Batch022.certificate1796valid
theorem outputValid476 : DerivedMapBatches.Batch023.certificate1843.Valid := DerivedMapBatches.Batch023.certificate1843valid
theorem linkedComposition476 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1843.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1843.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1796.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1795.algebra.mat x) := by
  rw [firstLink476, secondLink476]
  exact DerivedMapBatches.Batch023.certificate1843valid.2 x
theorem firstLink477 : DerivedMapBatches.Batch022.certificate1798.algebra.mat = DerivedMapBatches.Batch023.certificate1844.a := by decide
theorem secondLink477 : DerivedMapBatches.Batch010.certificate807.algebra.mat = DerivedMapBatches.Batch023.certificate1844.b := by decide
theorem firstValid477 : DerivedMapBatches.Batch022.certificate1798.Valid := DerivedMapBatches.Batch022.certificate1798valid
theorem secondValid477 : DerivedMapBatches.Batch010.certificate807.Valid := DerivedMapBatches.Batch010.certificate807valid
theorem outputValid477 : DerivedMapBatches.Batch023.certificate1844.Valid := DerivedMapBatches.Batch023.certificate1844valid
theorem linkedComposition477 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1844.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1844.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1798.algebra.mat x) := by
  rw [firstLink477, secondLink477]
  exact DerivedMapBatches.Batch023.certificate1844valid.2 x
theorem firstLink478 : DerivedMapBatches.Batch022.certificate1800.algebra.mat = DerivedMapBatches.Batch023.certificate1845.a := by decide
theorem secondLink478 : DerivedMapBatches.Batch022.certificate1801.algebra.mat = DerivedMapBatches.Batch023.certificate1845.b := by decide
theorem firstValid478 : DerivedMapBatches.Batch022.certificate1800.Valid := DerivedMapBatches.Batch022.certificate1800valid
theorem secondValid478 : DerivedMapBatches.Batch022.certificate1801.Valid := DerivedMapBatches.Batch022.certificate1801valid
theorem outputValid478 : DerivedMapBatches.Batch023.certificate1845.Valid := DerivedMapBatches.Batch023.certificate1845valid
theorem linkedComposition478 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1845.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1845.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1800.algebra.mat x) := by
  rw [firstLink478, secondLink478]
  exact DerivedMapBatches.Batch023.certificate1845valid.2 x
theorem firstLink479 : DerivedMapBatches.Batch022.certificate1803.algebra.mat = DerivedMapBatches.Batch023.certificate1846.a := by decide
theorem secondLink479 : DerivedMapBatches.Batch022.certificate1804.algebra.mat = DerivedMapBatches.Batch023.certificate1846.b := by decide
theorem firstValid479 : DerivedMapBatches.Batch022.certificate1803.Valid := DerivedMapBatches.Batch022.certificate1803valid
theorem secondValid479 : DerivedMapBatches.Batch022.certificate1804.Valid := DerivedMapBatches.Batch022.certificate1804valid
theorem outputValid479 : DerivedMapBatches.Batch023.certificate1846.Valid := DerivedMapBatches.Batch023.certificate1846valid
theorem linkedComposition479 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1846.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1846.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1803.algebra.mat x) := by
  rw [firstLink479, secondLink479]
  exact DerivedMapBatches.Batch023.certificate1846valid.2 x
theorem firstLink480 : DerivedMapBatches.Batch022.certificate1806.algebra.mat = DerivedMapBatches.Batch023.certificate1847.a := by decide
theorem secondLink480 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch023.certificate1847.b := by decide
theorem firstValid480 : DerivedMapBatches.Batch022.certificate1806.Valid := DerivedMapBatches.Batch022.certificate1806valid
theorem secondValid480 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid480 : DerivedMapBatches.Batch023.certificate1847.Valid := DerivedMapBatches.Batch023.certificate1847valid
theorem linkedComposition480 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1847.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1847.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1806.algebra.mat x) := by
  rw [firstLink480, secondLink480]
  exact DerivedMapBatches.Batch023.certificate1847valid.2 x
theorem firstLink481 : DerivedMapBatches.Batch022.certificate1808.algebra.mat = DerivedMapBatches.Batch023.certificate1848.a := by decide
theorem secondLink481 : DerivedMapBatches.Batch022.certificate1809.algebra.mat = DerivedMapBatches.Batch023.certificate1848.b := by decide
theorem firstValid481 : DerivedMapBatches.Batch022.certificate1808.Valid := DerivedMapBatches.Batch022.certificate1808valid
theorem secondValid481 : DerivedMapBatches.Batch022.certificate1809.Valid := DerivedMapBatches.Batch022.certificate1809valid
theorem outputValid481 : DerivedMapBatches.Batch023.certificate1848.Valid := DerivedMapBatches.Batch023.certificate1848valid
theorem linkedComposition481 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1848.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1848.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1808.algebra.mat x) := by
  rw [firstLink481, secondLink481]
  exact DerivedMapBatches.Batch023.certificate1848valid.2 x
theorem firstLink482 : DerivedMapBatches.Batch022.certificate1811.algebra.mat = DerivedMapBatches.Batch023.certificate1849.a := by decide
theorem secondLink482 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch023.certificate1849.b := by decide
theorem firstValid482 : DerivedMapBatches.Batch022.certificate1811.Valid := DerivedMapBatches.Batch022.certificate1811valid
theorem secondValid482 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid482 : DerivedMapBatches.Batch023.certificate1849.Valid := DerivedMapBatches.Batch023.certificate1849valid
theorem linkedComposition482 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1849.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1849.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1811.algebra.mat x) := by
  rw [firstLink482, secondLink482]
  exact DerivedMapBatches.Batch023.certificate1849valid.2 x
theorem firstLink483 : DerivedMapBatches.Batch022.certificate1813.algebra.mat = DerivedMapBatches.Batch023.certificate1850.a := by decide
theorem secondLink483 : DerivedMapBatches.Batch022.certificate1814.algebra.mat = DerivedMapBatches.Batch023.certificate1850.b := by decide
theorem firstValid483 : DerivedMapBatches.Batch022.certificate1813.Valid := DerivedMapBatches.Batch022.certificate1813valid
theorem secondValid483 : DerivedMapBatches.Batch022.certificate1814.Valid := DerivedMapBatches.Batch022.certificate1814valid
theorem outputValid483 : DerivedMapBatches.Batch023.certificate1850.Valid := DerivedMapBatches.Batch023.certificate1850valid
theorem linkedComposition483 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1850.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1850.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1814.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1813.algebra.mat x) := by
  rw [firstLink483, secondLink483]
  exact DerivedMapBatches.Batch023.certificate1850valid.2 x
theorem firstLink484 : DerivedMapBatches.Batch022.certificate1816.algebra.mat = DerivedMapBatches.Batch023.certificate1851.a := by decide
theorem secondLink484 : DerivedMapBatches.Batch022.certificate1817.algebra.mat = DerivedMapBatches.Batch023.certificate1851.b := by decide
theorem firstValid484 : DerivedMapBatches.Batch022.certificate1816.Valid := DerivedMapBatches.Batch022.certificate1816valid
theorem secondValid484 : DerivedMapBatches.Batch022.certificate1817.Valid := DerivedMapBatches.Batch022.certificate1817valid
theorem outputValid484 : DerivedMapBatches.Batch023.certificate1851.Valid := DerivedMapBatches.Batch023.certificate1851valid
theorem linkedComposition484 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1851.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1851.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1817.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1816.algebra.mat x) := by
  rw [firstLink484, secondLink484]
  exact DerivedMapBatches.Batch023.certificate1851valid.2 x
theorem firstLink485 : DerivedMapBatches.Batch022.certificate1819.algebra.mat = DerivedMapBatches.Batch023.certificate1852.a := by decide
theorem secondLink485 : DerivedMapBatches.Batch022.certificate1820.algebra.mat = DerivedMapBatches.Batch023.certificate1852.b := by decide
theorem firstValid485 : DerivedMapBatches.Batch022.certificate1819.Valid := DerivedMapBatches.Batch022.certificate1819valid
theorem secondValid485 : DerivedMapBatches.Batch022.certificate1820.Valid := DerivedMapBatches.Batch022.certificate1820valid
theorem outputValid485 : DerivedMapBatches.Batch023.certificate1852.Valid := DerivedMapBatches.Batch023.certificate1852valid
theorem linkedComposition485 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1852.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1852.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1820.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1819.algebra.mat x) := by
  rw [firstLink485, secondLink485]
  exact DerivedMapBatches.Batch023.certificate1852valid.2 x
theorem firstLink486 : DerivedMapBatches.Batch022.certificate1822.algebra.mat = DerivedMapBatches.Batch023.certificate1853.a := by decide
theorem secondLink486 : DerivedMapBatches.Batch022.certificate1823.algebra.mat = DerivedMapBatches.Batch023.certificate1853.b := by decide
theorem firstValid486 : DerivedMapBatches.Batch022.certificate1822.Valid := DerivedMapBatches.Batch022.certificate1822valid
theorem secondValid486 : DerivedMapBatches.Batch022.certificate1823.Valid := DerivedMapBatches.Batch022.certificate1823valid
theorem outputValid486 : DerivedMapBatches.Batch023.certificate1853.Valid := DerivedMapBatches.Batch023.certificate1853valid
theorem linkedComposition486 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1853.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1853.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1823.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1822.algebra.mat x) := by
  rw [firstLink486, secondLink486]
  exact DerivedMapBatches.Batch023.certificate1853valid.2 x
theorem firstLink487 : DerivedMapBatches.Batch022.certificate1825.algebra.mat = DerivedMapBatches.Batch023.certificate1854.a := by decide
theorem secondLink487 : DerivedMapBatches.Batch022.certificate1826.algebra.mat = DerivedMapBatches.Batch023.certificate1854.b := by decide
theorem firstValid487 : DerivedMapBatches.Batch022.certificate1825.Valid := DerivedMapBatches.Batch022.certificate1825valid
theorem secondValid487 : DerivedMapBatches.Batch022.certificate1826.Valid := DerivedMapBatches.Batch022.certificate1826valid
theorem outputValid487 : DerivedMapBatches.Batch023.certificate1854.Valid := DerivedMapBatches.Batch023.certificate1854valid
theorem linkedComposition487 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1854.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1854.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1826.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1825.algebra.mat x) := by
  rw [firstLink487, secondLink487]
  exact DerivedMapBatches.Batch023.certificate1854valid.2 x
theorem firstLink488 : DerivedMapBatches.Batch022.certificate1828.algebra.mat = DerivedMapBatches.Batch023.certificate1855.a := by decide
theorem secondLink488 : DerivedMapBatches.Batch022.certificate1829.algebra.mat = DerivedMapBatches.Batch023.certificate1855.b := by decide
theorem firstValid488 : DerivedMapBatches.Batch022.certificate1828.Valid := DerivedMapBatches.Batch022.certificate1828valid
theorem secondValid488 : DerivedMapBatches.Batch022.certificate1829.Valid := DerivedMapBatches.Batch022.certificate1829valid
theorem outputValid488 : DerivedMapBatches.Batch023.certificate1855.Valid := DerivedMapBatches.Batch023.certificate1855valid
theorem linkedComposition488 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1855.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1855.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1828.algebra.mat x) := by
  rw [firstLink488, secondLink488]
  exact DerivedMapBatches.Batch023.certificate1855valid.2 x
theorem firstLink489 : DerivedMapBatches.Batch022.certificate1831.algebra.mat = DerivedMapBatches.Batch023.certificate1856.a := by decide
theorem secondLink489 : DerivedMapBatches.Batch022.certificate1832.algebra.mat = DerivedMapBatches.Batch023.certificate1856.b := by decide
theorem firstValid489 : DerivedMapBatches.Batch022.certificate1831.Valid := DerivedMapBatches.Batch022.certificate1831valid
theorem secondValid489 : DerivedMapBatches.Batch022.certificate1832.Valid := DerivedMapBatches.Batch022.certificate1832valid
theorem outputValid489 : DerivedMapBatches.Batch023.certificate1856.Valid := DerivedMapBatches.Batch023.certificate1856valid
theorem linkedComposition489 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1856.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1856.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1832.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1831.algebra.mat x) := by
  rw [firstLink489, secondLink489]
  exact DerivedMapBatches.Batch023.certificate1856valid.2 x
theorem firstLink490 : DerivedMapBatches.Batch022.certificate1834.algebra.mat = DerivedMapBatches.Batch023.certificate1857.a := by decide
theorem secondLink490 : DerivedMapBatches.Batch022.certificate1835.algebra.mat = DerivedMapBatches.Batch023.certificate1857.b := by decide
theorem firstValid490 : DerivedMapBatches.Batch022.certificate1834.Valid := DerivedMapBatches.Batch022.certificate1834valid
theorem secondValid490 : DerivedMapBatches.Batch022.certificate1835.Valid := DerivedMapBatches.Batch022.certificate1835valid
theorem outputValid490 : DerivedMapBatches.Batch023.certificate1857.Valid := DerivedMapBatches.Batch023.certificate1857valid
theorem linkedComposition490 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1857.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1857.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1835.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1834.algebra.mat x) := by
  rw [firstLink490, secondLink490]
  exact DerivedMapBatches.Batch023.certificate1857valid.2 x
theorem firstLink491 : DerivedMapBatches.Batch023.certificate1859.algebra.mat = DerivedMapBatches.Batch023.certificate1860.a := by decide
theorem secondLink491 : DerivedMapBatches.Batch010.certificate804.algebra.mat = DerivedMapBatches.Batch023.certificate1860.b := by decide
theorem firstValid491 : DerivedMapBatches.Batch023.certificate1859.Valid := DerivedMapBatches.Batch023.certificate1859valid
theorem secondValid491 : DerivedMapBatches.Batch010.certificate804.Valid := DerivedMapBatches.Batch010.certificate804valid
theorem outputValid491 : DerivedMapBatches.Batch023.certificate1860.Valid := DerivedMapBatches.Batch023.certificate1860valid
theorem linkedComposition491 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1860.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1860.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1859.algebra.mat x) := by
  rw [firstLink491, secondLink491]
  exact DerivedMapBatches.Batch023.certificate1860valid.2 x
theorem firstLink492 : DerivedMapBatches.Batch023.certificate1858.algebra.mat = DerivedMapBatches.Batch023.certificate1861.a := by decide
theorem secondLink492 : DerivedMapBatches.Batch023.certificate1860.c = DerivedMapBatches.Batch023.certificate1861.b := by decide
theorem firstValid492 : DerivedMapBatches.Batch023.certificate1858.Valid := DerivedMapBatches.Batch023.certificate1858valid
theorem secondValid492 : DerivedMapBatches.Batch023.certificate1860.Valid := DerivedMapBatches.Batch023.certificate1860valid
theorem outputValid492 : DerivedMapBatches.Batch023.certificate1861.Valid := DerivedMapBatches.Batch023.certificate1861valid
theorem linkedComposition492 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1861.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1861.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1860.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1858.algebra.mat x) := by
  rw [firstLink492, secondLink492]
  exact DerivedMapBatches.Batch023.certificate1861valid.2 x
theorem firstLink493 : DerivedMapBatches.Batch023.certificate1863.algebra.mat = DerivedMapBatches.Batch023.certificate1864.a := by decide
theorem secondLink493 : DerivedMapBatches.Batch010.certificate819.algebra.mat = DerivedMapBatches.Batch023.certificate1864.b := by decide
theorem firstValid493 : DerivedMapBatches.Batch023.certificate1863.Valid := DerivedMapBatches.Batch023.certificate1863valid
theorem secondValid493 : DerivedMapBatches.Batch010.certificate819.Valid := DerivedMapBatches.Batch010.certificate819valid
theorem outputValid493 : DerivedMapBatches.Batch023.certificate1864.Valid := DerivedMapBatches.Batch023.certificate1864valid
theorem linkedComposition493 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1864.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1864.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1863.algebra.mat x) := by
  rw [firstLink493, secondLink493]
  exact DerivedMapBatches.Batch023.certificate1864valid.2 x
theorem firstLink494 : DerivedMapBatches.Batch023.certificate1862.algebra.mat = DerivedMapBatches.Batch023.certificate1865.a := by decide
theorem secondLink494 : DerivedMapBatches.Batch023.certificate1864.c = DerivedMapBatches.Batch023.certificate1865.b := by decide
theorem firstValid494 : DerivedMapBatches.Batch023.certificate1862.Valid := DerivedMapBatches.Batch023.certificate1862valid
theorem secondValid494 : DerivedMapBatches.Batch023.certificate1864.Valid := DerivedMapBatches.Batch023.certificate1864valid
theorem outputValid494 : DerivedMapBatches.Batch023.certificate1865.Valid := DerivedMapBatches.Batch023.certificate1865valid
theorem linkedComposition494 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1865.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1865.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1864.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1862.algebra.mat x) := by
  rw [firstLink494, secondLink494]
  exact DerivedMapBatches.Batch023.certificate1865valid.2 x
theorem firstLink495 : DerivedMapBatches.Batch023.certificate1867.algebra.mat = DerivedMapBatches.Batch023.certificate1868.a := by decide
theorem secondLink495 : DerivedMapBatches.Batch010.certificate822.algebra.mat = DerivedMapBatches.Batch023.certificate1868.b := by decide
theorem firstValid495 : DerivedMapBatches.Batch023.certificate1867.Valid := DerivedMapBatches.Batch023.certificate1867valid
theorem secondValid495 : DerivedMapBatches.Batch010.certificate822.Valid := DerivedMapBatches.Batch010.certificate822valid
theorem outputValid495 : DerivedMapBatches.Batch023.certificate1868.Valid := DerivedMapBatches.Batch023.certificate1868valid
theorem linkedComposition495 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1868.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1868.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate822.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1867.algebra.mat x) := by
  rw [firstLink495, secondLink495]
  exact DerivedMapBatches.Batch023.certificate1868valid.2 x
theorem firstLink496 : DerivedMapBatches.Batch023.certificate1866.algebra.mat = DerivedMapBatches.Batch023.certificate1869.a := by decide
theorem secondLink496 : DerivedMapBatches.Batch023.certificate1868.c = DerivedMapBatches.Batch023.certificate1869.b := by decide
theorem firstValid496 : DerivedMapBatches.Batch023.certificate1866.Valid := DerivedMapBatches.Batch023.certificate1866valid
theorem secondValid496 : DerivedMapBatches.Batch023.certificate1868.Valid := DerivedMapBatches.Batch023.certificate1868valid
theorem outputValid496 : DerivedMapBatches.Batch023.certificate1869.Valid := DerivedMapBatches.Batch023.certificate1869valid
theorem linkedComposition496 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1869.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1869.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1868.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1866.algebra.mat x) := by
  rw [firstLink496, secondLink496]
  exact DerivedMapBatches.Batch023.certificate1869valid.2 x
theorem firstLink497 : DerivedMapBatches.Batch023.certificate1871.algebra.mat = DerivedMapBatches.Batch023.certificate1873.a := by decide
theorem secondLink497 : DerivedMapBatches.Batch023.certificate1872.algebra.mat = DerivedMapBatches.Batch023.certificate1873.b := by decide
theorem firstValid497 : DerivedMapBatches.Batch023.certificate1871.Valid := DerivedMapBatches.Batch023.certificate1871valid
theorem secondValid497 : DerivedMapBatches.Batch023.certificate1872.Valid := DerivedMapBatches.Batch023.certificate1872valid
theorem outputValid497 : DerivedMapBatches.Batch023.certificate1873.Valid := DerivedMapBatches.Batch023.certificate1873valid
theorem linkedComposition497 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1873.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1873.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1872.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1871.algebra.mat x) := by
  rw [firstLink497, secondLink497]
  exact DerivedMapBatches.Batch023.certificate1873valid.2 x
theorem firstLink498 : DerivedMapBatches.Batch023.certificate1870.algebra.mat = DerivedMapBatches.Batch023.certificate1874.a := by decide
theorem secondLink498 : DerivedMapBatches.Batch023.certificate1873.c = DerivedMapBatches.Batch023.certificate1874.b := by decide
theorem firstValid498 : DerivedMapBatches.Batch023.certificate1870.Valid := DerivedMapBatches.Batch023.certificate1870valid
theorem secondValid498 : DerivedMapBatches.Batch023.certificate1873.Valid := DerivedMapBatches.Batch023.certificate1873valid
theorem outputValid498 : DerivedMapBatches.Batch023.certificate1874.Valid := DerivedMapBatches.Batch023.certificate1874valid
theorem linkedComposition498 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1874.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1874.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1873.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1870.algebra.mat x) := by
  rw [firstLink498, secondLink498]
  exact DerivedMapBatches.Batch023.certificate1874valid.2 x
theorem firstLink499 : DerivedMapBatches.Batch023.certificate1876.algebra.mat = DerivedMapBatches.Batch023.certificate1878.a := by decide
theorem secondLink499 : DerivedMapBatches.Batch023.certificate1877.algebra.mat = DerivedMapBatches.Batch023.certificate1878.b := by decide
theorem firstValid499 : DerivedMapBatches.Batch023.certificate1876.Valid := DerivedMapBatches.Batch023.certificate1876valid
theorem secondValid499 : DerivedMapBatches.Batch023.certificate1877.Valid := DerivedMapBatches.Batch023.certificate1877valid
theorem outputValid499 : DerivedMapBatches.Batch023.certificate1878.Valid := DerivedMapBatches.Batch023.certificate1878valid
theorem linkedComposition499 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1878.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1878.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1877.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1876.algebra.mat x) := by
  rw [firstLink499, secondLink499]
  exact DerivedMapBatches.Batch023.certificate1878valid.2 x
end DerivedLinkageBatches.Batch009
