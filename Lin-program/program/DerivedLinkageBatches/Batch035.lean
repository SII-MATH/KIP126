import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch020
import DerivedMapBatches.Batch022
import DerivedMapBatches.Batch067
import DerivedMapBatches.Batch068
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch035
theorem firstLink1750 : DerivedMapBatches.Batch020.certificate1677.algebra.mat = DerivedMapBatches.Batch067.certificate5438.a := by decide
theorem secondLink1750 : DerivedMapBatches.Batch020.certificate1678.algebra.mat = DerivedMapBatches.Batch067.certificate5438.b := by decide
theorem firstValid1750 : DerivedMapBatches.Batch020.certificate1677.Valid := DerivedMapBatches.Batch020.certificate1677valid
theorem secondValid1750 : DerivedMapBatches.Batch020.certificate1678.Valid := DerivedMapBatches.Batch020.certificate1678valid
theorem outputValid1750 : DerivedMapBatches.Batch067.certificate5438.Valid := DerivedMapBatches.Batch067.certificate5438valid
theorem linkedComposition1750 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5438.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5438.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1677.algebra.mat x) := by
  rw [firstLink1750, secondLink1750]
  exact DerivedMapBatches.Batch067.certificate5438valid.2 x
theorem rhsLink1750 : DerivedMapBatches.Batch067.certificate5438.c = DerivedMapBatches.Batch020.certificate1679.c := by decide
theorem rhsValid1750 : DerivedMapBatches.Batch020.certificate1679.Valid := DerivedMapBatches.Batch020.certificate1679valid
theorem linkedCommutativity1750 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5438.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1677.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1679.c x := by
  exact (linkedComposition1750 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1750)
theorem firstLink1751 : DerivedMapBatches.Batch022.certificate1777.algebra.mat = DerivedMapBatches.Batch067.certificate5439.a := by decide
theorem secondLink1751 : DerivedMapBatches.Batch022.certificate1778.algebra.mat = DerivedMapBatches.Batch067.certificate5439.b := by decide
theorem firstValid1751 : DerivedMapBatches.Batch022.certificate1777.Valid := DerivedMapBatches.Batch022.certificate1777valid
theorem secondValid1751 : DerivedMapBatches.Batch022.certificate1778.Valid := DerivedMapBatches.Batch022.certificate1778valid
theorem outputValid1751 : DerivedMapBatches.Batch067.certificate5439.Valid := DerivedMapBatches.Batch067.certificate5439valid
theorem linkedComposition1751 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5439.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5439.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1777.algebra.mat x) := by
  rw [firstLink1751, secondLink1751]
  exact DerivedMapBatches.Batch067.certificate5439valid.2 x
theorem rhsLink1751 : DerivedMapBatches.Batch067.certificate5439.c = DerivedMapBatches.Batch022.certificate1779.c := by decide
theorem rhsValid1751 : DerivedMapBatches.Batch022.certificate1779.Valid := DerivedMapBatches.Batch022.certificate1779valid
theorem linkedCommutativity1751 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5439.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1777.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1779.c x := by
  exact (linkedComposition1751 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1751)
theorem firstLink1752 : DerivedMapBatches.Batch022.certificate1780.algebra.mat = DerivedMapBatches.Batch068.certificate5440.a := by decide
theorem secondLink1752 : DerivedMapBatches.Batch022.certificate1781.algebra.mat = DerivedMapBatches.Batch068.certificate5440.b := by decide
theorem firstValid1752 : DerivedMapBatches.Batch022.certificate1780.Valid := DerivedMapBatches.Batch022.certificate1780valid
theorem secondValid1752 : DerivedMapBatches.Batch022.certificate1781.Valid := DerivedMapBatches.Batch022.certificate1781valid
theorem outputValid1752 : DerivedMapBatches.Batch068.certificate5440.Valid := DerivedMapBatches.Batch068.certificate5440valid
theorem linkedComposition1752 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5440.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5440.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1781.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1780.algebra.mat x) := by
  rw [firstLink1752, secondLink1752]
  exact DerivedMapBatches.Batch068.certificate5440valid.2 x
theorem rhsLink1752 : DerivedMapBatches.Batch068.certificate5440.c = DerivedMapBatches.Batch022.certificate1782.c := by decide
theorem rhsValid1752 : DerivedMapBatches.Batch022.certificate1782.Valid := DerivedMapBatches.Batch022.certificate1782valid
theorem linkedCommutativity1752 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5440.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1781.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1780.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1782.c x := by
  exact (linkedComposition1752 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1752)
theorem firstLink1753 : DerivedMapBatches.Batch022.certificate1783.algebra.mat = DerivedMapBatches.Batch068.certificate5441.a := by decide
theorem secondLink1753 : DerivedMapBatches.Batch022.certificate1784.algebra.mat = DerivedMapBatches.Batch068.certificate5441.b := by decide
theorem firstValid1753 : DerivedMapBatches.Batch022.certificate1783.Valid := DerivedMapBatches.Batch022.certificate1783valid
theorem secondValid1753 : DerivedMapBatches.Batch022.certificate1784.Valid := DerivedMapBatches.Batch022.certificate1784valid
theorem outputValid1753 : DerivedMapBatches.Batch068.certificate5441.Valid := DerivedMapBatches.Batch068.certificate5441valid
theorem linkedComposition1753 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5441.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5441.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1783.algebra.mat x) := by
  rw [firstLink1753, secondLink1753]
  exact DerivedMapBatches.Batch068.certificate5441valid.2 x
theorem rhsLink1753 : DerivedMapBatches.Batch068.certificate5441.c = DerivedMapBatches.Batch022.certificate1785.c := by decide
theorem rhsValid1753 : DerivedMapBatches.Batch022.certificate1785.Valid := DerivedMapBatches.Batch022.certificate1785valid
theorem linkedCommutativity1753 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5441.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1783.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1785.c x := by
  exact (linkedComposition1753 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1753)
theorem firstLink1754 : DerivedMapBatches.Batch022.certificate1786.algebra.mat = DerivedMapBatches.Batch068.certificate5442.a := by decide
theorem secondLink1754 : DerivedMapBatches.Batch022.certificate1787.algebra.mat = DerivedMapBatches.Batch068.certificate5442.b := by decide
theorem firstValid1754 : DerivedMapBatches.Batch022.certificate1786.Valid := DerivedMapBatches.Batch022.certificate1786valid
theorem secondValid1754 : DerivedMapBatches.Batch022.certificate1787.Valid := DerivedMapBatches.Batch022.certificate1787valid
theorem outputValid1754 : DerivedMapBatches.Batch068.certificate5442.Valid := DerivedMapBatches.Batch068.certificate5442valid
theorem linkedComposition1754 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5442.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5442.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1787.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1786.algebra.mat x) := by
  rw [firstLink1754, secondLink1754]
  exact DerivedMapBatches.Batch068.certificate5442valid.2 x
theorem rhsLink1754 : DerivedMapBatches.Batch068.certificate5442.c = DerivedMapBatches.Batch022.certificate1788.c := by decide
theorem rhsValid1754 : DerivedMapBatches.Batch022.certificate1788.Valid := DerivedMapBatches.Batch022.certificate1788valid
theorem linkedCommutativity1754 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5442.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1787.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1786.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1788.c x := by
  exact (linkedComposition1754 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1754)
theorem firstLink1755 : DerivedMapBatches.Batch022.certificate1789.algebra.mat = DerivedMapBatches.Batch068.certificate5443.a := by decide
theorem secondLink1755 : DerivedMapBatches.Batch022.certificate1790.algebra.mat = DerivedMapBatches.Batch068.certificate5443.b := by decide
theorem firstValid1755 : DerivedMapBatches.Batch022.certificate1789.Valid := DerivedMapBatches.Batch022.certificate1789valid
theorem secondValid1755 : DerivedMapBatches.Batch022.certificate1790.Valid := DerivedMapBatches.Batch022.certificate1790valid
theorem outputValid1755 : DerivedMapBatches.Batch068.certificate5443.Valid := DerivedMapBatches.Batch068.certificate5443valid
theorem linkedComposition1755 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5443.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1790.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1789.algebra.mat x) := by
  rw [firstLink1755, secondLink1755]
  exact DerivedMapBatches.Batch068.certificate5443valid.2 x
theorem rhsLink1755 : DerivedMapBatches.Batch068.certificate5443.c = DerivedMapBatches.Batch022.certificate1791.c := by decide
theorem rhsValid1755 : DerivedMapBatches.Batch022.certificate1791.Valid := DerivedMapBatches.Batch022.certificate1791valid
theorem linkedCommutativity1755 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1790.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1789.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1791.c x := by
  exact (linkedComposition1755 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1755)
theorem firstLink1756 : DerivedMapBatches.Batch022.certificate1792.algebra.mat = DerivedMapBatches.Batch068.certificate5444.a := by decide
theorem secondLink1756 : DerivedMapBatches.Batch022.certificate1793.algebra.mat = DerivedMapBatches.Batch068.certificate5444.b := by decide
theorem firstValid1756 : DerivedMapBatches.Batch022.certificate1792.Valid := DerivedMapBatches.Batch022.certificate1792valid
theorem secondValid1756 : DerivedMapBatches.Batch022.certificate1793.Valid := DerivedMapBatches.Batch022.certificate1793valid
theorem outputValid1756 : DerivedMapBatches.Batch068.certificate5444.Valid := DerivedMapBatches.Batch068.certificate5444valid
theorem linkedComposition1756 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5444.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5444.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1793.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1792.algebra.mat x) := by
  rw [firstLink1756, secondLink1756]
  exact DerivedMapBatches.Batch068.certificate5444valid.2 x
theorem rhsLink1756 : DerivedMapBatches.Batch068.certificate5444.c = DerivedMapBatches.Batch022.certificate1794.c := by decide
theorem rhsValid1756 : DerivedMapBatches.Batch022.certificate1794.Valid := DerivedMapBatches.Batch022.certificate1794valid
theorem linkedCommutativity1756 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5444.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1793.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1792.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1794.c x := by
  exact (linkedComposition1756 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1756)
theorem firstLink1757 : DerivedMapBatches.Batch022.certificate1795.algebra.mat = DerivedMapBatches.Batch068.certificate5445.a := by decide
theorem secondLink1757 : DerivedMapBatches.Batch022.certificate1796.algebra.mat = DerivedMapBatches.Batch068.certificate5445.b := by decide
theorem firstValid1757 : DerivedMapBatches.Batch022.certificate1795.Valid := DerivedMapBatches.Batch022.certificate1795valid
theorem secondValid1757 : DerivedMapBatches.Batch022.certificate1796.Valid := DerivedMapBatches.Batch022.certificate1796valid
theorem outputValid1757 : DerivedMapBatches.Batch068.certificate5445.Valid := DerivedMapBatches.Batch068.certificate5445valid
theorem linkedComposition1757 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5445.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5445.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1796.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1795.algebra.mat x) := by
  rw [firstLink1757, secondLink1757]
  exact DerivedMapBatches.Batch068.certificate5445valid.2 x
theorem rhsLink1757 : DerivedMapBatches.Batch068.certificate5445.c = DerivedMapBatches.Batch022.certificate1797.c := by decide
theorem rhsValid1757 : DerivedMapBatches.Batch022.certificate1797.Valid := DerivedMapBatches.Batch022.certificate1797valid
theorem linkedCommutativity1757 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5445.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1796.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1795.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1797.c x := by
  exact (linkedComposition1757 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1757)
theorem firstLink1758 : DerivedMapBatches.Batch022.certificate1798.algebra.mat = DerivedMapBatches.Batch068.certificate5446.a := by decide
theorem secondLink1758 : DerivedMapBatches.Batch010.certificate807.algebra.mat = DerivedMapBatches.Batch068.certificate5446.b := by decide
theorem firstValid1758 : DerivedMapBatches.Batch022.certificate1798.Valid := DerivedMapBatches.Batch022.certificate1798valid
theorem secondValid1758 : DerivedMapBatches.Batch010.certificate807.Valid := DerivedMapBatches.Batch010.certificate807valid
theorem outputValid1758 : DerivedMapBatches.Batch068.certificate5446.Valid := DerivedMapBatches.Batch068.certificate5446valid
theorem linkedComposition1758 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5446.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1798.algebra.mat x) := by
  rw [firstLink1758, secondLink1758]
  exact DerivedMapBatches.Batch068.certificate5446valid.2 x
theorem rhsLink1758 : DerivedMapBatches.Batch068.certificate5446.c = DerivedMapBatches.Batch022.certificate1799.c := by decide
theorem rhsValid1758 : DerivedMapBatches.Batch022.certificate1799.Valid := DerivedMapBatches.Batch022.certificate1799valid
theorem linkedCommutativity1758 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1798.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1799.c x := by
  exact (linkedComposition1758 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1758)
theorem firstLink1759 : DerivedMapBatches.Batch022.certificate1800.algebra.mat = DerivedMapBatches.Batch068.certificate5447.a := by decide
theorem secondLink1759 : DerivedMapBatches.Batch022.certificate1801.algebra.mat = DerivedMapBatches.Batch068.certificate5447.b := by decide
theorem firstValid1759 : DerivedMapBatches.Batch022.certificate1800.Valid := DerivedMapBatches.Batch022.certificate1800valid
theorem secondValid1759 : DerivedMapBatches.Batch022.certificate1801.Valid := DerivedMapBatches.Batch022.certificate1801valid
theorem outputValid1759 : DerivedMapBatches.Batch068.certificate5447.Valid := DerivedMapBatches.Batch068.certificate5447valid
theorem linkedComposition1759 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5447.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5447.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1800.algebra.mat x) := by
  rw [firstLink1759, secondLink1759]
  exact DerivedMapBatches.Batch068.certificate5447valid.2 x
theorem rhsLink1759 : DerivedMapBatches.Batch068.certificate5447.c = DerivedMapBatches.Batch022.certificate1802.c := by decide
theorem rhsValid1759 : DerivedMapBatches.Batch022.certificate1802.Valid := DerivedMapBatches.Batch022.certificate1802valid
theorem linkedCommutativity1759 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5447.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1800.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1802.c x := by
  exact (linkedComposition1759 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1759)
theorem firstLink1760 : DerivedMapBatches.Batch022.certificate1803.algebra.mat = DerivedMapBatches.Batch068.certificate5448.a := by decide
theorem secondLink1760 : DerivedMapBatches.Batch022.certificate1804.algebra.mat = DerivedMapBatches.Batch068.certificate5448.b := by decide
theorem firstValid1760 : DerivedMapBatches.Batch022.certificate1803.Valid := DerivedMapBatches.Batch022.certificate1803valid
theorem secondValid1760 : DerivedMapBatches.Batch022.certificate1804.Valid := DerivedMapBatches.Batch022.certificate1804valid
theorem outputValid1760 : DerivedMapBatches.Batch068.certificate5448.Valid := DerivedMapBatches.Batch068.certificate5448valid
theorem linkedComposition1760 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5448.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5448.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1803.algebra.mat x) := by
  rw [firstLink1760, secondLink1760]
  exact DerivedMapBatches.Batch068.certificate5448valid.2 x
theorem rhsLink1760 : DerivedMapBatches.Batch068.certificate5448.c = DerivedMapBatches.Batch022.certificate1805.c := by decide
theorem rhsValid1760 : DerivedMapBatches.Batch022.certificate1805.Valid := DerivedMapBatches.Batch022.certificate1805valid
theorem linkedCommutativity1760 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5448.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1803.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1805.c x := by
  exact (linkedComposition1760 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1760)
theorem firstLink1761 : DerivedMapBatches.Batch022.certificate1806.algebra.mat = DerivedMapBatches.Batch068.certificate5449.a := by decide
theorem secondLink1761 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch068.certificate5449.b := by decide
theorem firstValid1761 : DerivedMapBatches.Batch022.certificate1806.Valid := DerivedMapBatches.Batch022.certificate1806valid
theorem secondValid1761 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid1761 : DerivedMapBatches.Batch068.certificate5449.Valid := DerivedMapBatches.Batch068.certificate5449valid
theorem linkedComposition1761 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5449.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1806.algebra.mat x) := by
  rw [firstLink1761, secondLink1761]
  exact DerivedMapBatches.Batch068.certificate5449valid.2 x
theorem rhsLink1761 : DerivedMapBatches.Batch068.certificate5449.c = DerivedMapBatches.Batch022.certificate1807.c := by decide
theorem rhsValid1761 : DerivedMapBatches.Batch022.certificate1807.Valid := DerivedMapBatches.Batch022.certificate1807valid
theorem linkedCommutativity1761 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1806.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1807.c x := by
  exact (linkedComposition1761 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1761)
theorem firstLink1762 : DerivedMapBatches.Batch022.certificate1808.algebra.mat = DerivedMapBatches.Batch068.certificate5450.a := by decide
theorem secondLink1762 : DerivedMapBatches.Batch022.certificate1809.algebra.mat = DerivedMapBatches.Batch068.certificate5450.b := by decide
theorem firstValid1762 : DerivedMapBatches.Batch022.certificate1808.Valid := DerivedMapBatches.Batch022.certificate1808valid
theorem secondValid1762 : DerivedMapBatches.Batch022.certificate1809.Valid := DerivedMapBatches.Batch022.certificate1809valid
theorem outputValid1762 : DerivedMapBatches.Batch068.certificate5450.Valid := DerivedMapBatches.Batch068.certificate5450valid
theorem linkedComposition1762 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5450.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5450.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1808.algebra.mat x) := by
  rw [firstLink1762, secondLink1762]
  exact DerivedMapBatches.Batch068.certificate5450valid.2 x
theorem rhsLink1762 : DerivedMapBatches.Batch068.certificate5450.c = DerivedMapBatches.Batch022.certificate1810.c := by decide
theorem rhsValid1762 : DerivedMapBatches.Batch022.certificate1810.Valid := DerivedMapBatches.Batch022.certificate1810valid
theorem linkedCommutativity1762 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5450.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1808.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1810.c x := by
  exact (linkedComposition1762 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1762)
theorem firstLink1763 : DerivedMapBatches.Batch022.certificate1811.algebra.mat = DerivedMapBatches.Batch068.certificate5451.a := by decide
theorem secondLink1763 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch068.certificate5451.b := by decide
theorem firstValid1763 : DerivedMapBatches.Batch022.certificate1811.Valid := DerivedMapBatches.Batch022.certificate1811valid
theorem secondValid1763 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid1763 : DerivedMapBatches.Batch068.certificate5451.Valid := DerivedMapBatches.Batch068.certificate5451valid
theorem linkedComposition1763 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5451.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5451.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1811.algebra.mat x) := by
  rw [firstLink1763, secondLink1763]
  exact DerivedMapBatches.Batch068.certificate5451valid.2 x
theorem rhsLink1763 : DerivedMapBatches.Batch068.certificate5451.c = DerivedMapBatches.Batch022.certificate1812.c := by decide
theorem rhsValid1763 : DerivedMapBatches.Batch022.certificate1812.Valid := DerivedMapBatches.Batch022.certificate1812valid
theorem linkedCommutativity1763 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5451.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1811.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1812.c x := by
  exact (linkedComposition1763 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1763)
theorem firstLink1764 : DerivedMapBatches.Batch022.certificate1813.algebra.mat = DerivedMapBatches.Batch068.certificate5452.a := by decide
theorem secondLink1764 : DerivedMapBatches.Batch022.certificate1814.algebra.mat = DerivedMapBatches.Batch068.certificate5452.b := by decide
theorem firstValid1764 : DerivedMapBatches.Batch022.certificate1813.Valid := DerivedMapBatches.Batch022.certificate1813valid
theorem secondValid1764 : DerivedMapBatches.Batch022.certificate1814.Valid := DerivedMapBatches.Batch022.certificate1814valid
theorem outputValid1764 : DerivedMapBatches.Batch068.certificate5452.Valid := DerivedMapBatches.Batch068.certificate5452valid
theorem linkedComposition1764 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5452.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1814.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1813.algebra.mat x) := by
  rw [firstLink1764, secondLink1764]
  exact DerivedMapBatches.Batch068.certificate5452valid.2 x
theorem rhsLink1764 : DerivedMapBatches.Batch068.certificate5452.c = DerivedMapBatches.Batch022.certificate1815.c := by decide
theorem rhsValid1764 : DerivedMapBatches.Batch022.certificate1815.Valid := DerivedMapBatches.Batch022.certificate1815valid
theorem linkedCommutativity1764 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1814.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1813.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1815.c x := by
  exact (linkedComposition1764 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1764)
theorem firstLink1765 : DerivedMapBatches.Batch022.certificate1816.algebra.mat = DerivedMapBatches.Batch068.certificate5453.a := by decide
theorem secondLink1765 : DerivedMapBatches.Batch022.certificate1817.algebra.mat = DerivedMapBatches.Batch068.certificate5453.b := by decide
theorem firstValid1765 : DerivedMapBatches.Batch022.certificate1816.Valid := DerivedMapBatches.Batch022.certificate1816valid
theorem secondValid1765 : DerivedMapBatches.Batch022.certificate1817.Valid := DerivedMapBatches.Batch022.certificate1817valid
theorem outputValid1765 : DerivedMapBatches.Batch068.certificate5453.Valid := DerivedMapBatches.Batch068.certificate5453valid
theorem linkedComposition1765 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5453.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5453.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1817.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1816.algebra.mat x) := by
  rw [firstLink1765, secondLink1765]
  exact DerivedMapBatches.Batch068.certificate5453valid.2 x
theorem rhsLink1765 : DerivedMapBatches.Batch068.certificate5453.c = DerivedMapBatches.Batch022.certificate1818.c := by decide
theorem rhsValid1765 : DerivedMapBatches.Batch022.certificate1818.Valid := DerivedMapBatches.Batch022.certificate1818valid
theorem linkedCommutativity1765 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5453.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1817.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1816.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1818.c x := by
  exact (linkedComposition1765 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1765)
theorem firstLink1766 : DerivedMapBatches.Batch022.certificate1819.algebra.mat = DerivedMapBatches.Batch068.certificate5454.a := by decide
theorem secondLink1766 : DerivedMapBatches.Batch022.certificate1820.algebra.mat = DerivedMapBatches.Batch068.certificate5454.b := by decide
theorem firstValid1766 : DerivedMapBatches.Batch022.certificate1819.Valid := DerivedMapBatches.Batch022.certificate1819valid
theorem secondValid1766 : DerivedMapBatches.Batch022.certificate1820.Valid := DerivedMapBatches.Batch022.certificate1820valid
theorem outputValid1766 : DerivedMapBatches.Batch068.certificate5454.Valid := DerivedMapBatches.Batch068.certificate5454valid
theorem linkedComposition1766 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5454.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5454.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1820.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1819.algebra.mat x) := by
  rw [firstLink1766, secondLink1766]
  exact DerivedMapBatches.Batch068.certificate5454valid.2 x
theorem rhsLink1766 : DerivedMapBatches.Batch068.certificate5454.c = DerivedMapBatches.Batch022.certificate1821.c := by decide
theorem rhsValid1766 : DerivedMapBatches.Batch022.certificate1821.Valid := DerivedMapBatches.Batch022.certificate1821valid
theorem linkedCommutativity1766 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5454.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1820.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1819.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1821.c x := by
  exact (linkedComposition1766 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1766)
theorem firstLink1767 : DerivedMapBatches.Batch022.certificate1822.algebra.mat = DerivedMapBatches.Batch068.certificate5455.a := by decide
theorem secondLink1767 : DerivedMapBatches.Batch022.certificate1823.algebra.mat = DerivedMapBatches.Batch068.certificate5455.b := by decide
theorem firstValid1767 : DerivedMapBatches.Batch022.certificate1822.Valid := DerivedMapBatches.Batch022.certificate1822valid
theorem secondValid1767 : DerivedMapBatches.Batch022.certificate1823.Valid := DerivedMapBatches.Batch022.certificate1823valid
theorem outputValid1767 : DerivedMapBatches.Batch068.certificate5455.Valid := DerivedMapBatches.Batch068.certificate5455valid
theorem linkedComposition1767 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5455.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1823.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1822.algebra.mat x) := by
  rw [firstLink1767, secondLink1767]
  exact DerivedMapBatches.Batch068.certificate5455valid.2 x
theorem rhsLink1767 : DerivedMapBatches.Batch068.certificate5455.c = DerivedMapBatches.Batch022.certificate1824.c := by decide
theorem rhsValid1767 : DerivedMapBatches.Batch022.certificate1824.Valid := DerivedMapBatches.Batch022.certificate1824valid
theorem linkedCommutativity1767 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1823.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1822.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1824.c x := by
  exact (linkedComposition1767 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1767)
theorem firstLink1768 : DerivedMapBatches.Batch022.certificate1825.algebra.mat = DerivedMapBatches.Batch068.certificate5456.a := by decide
theorem secondLink1768 : DerivedMapBatches.Batch022.certificate1826.algebra.mat = DerivedMapBatches.Batch068.certificate5456.b := by decide
theorem firstValid1768 : DerivedMapBatches.Batch022.certificate1825.Valid := DerivedMapBatches.Batch022.certificate1825valid
theorem secondValid1768 : DerivedMapBatches.Batch022.certificate1826.Valid := DerivedMapBatches.Batch022.certificate1826valid
theorem outputValid1768 : DerivedMapBatches.Batch068.certificate5456.Valid := DerivedMapBatches.Batch068.certificate5456valid
theorem linkedComposition1768 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5456.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5456.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1826.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1825.algebra.mat x) := by
  rw [firstLink1768, secondLink1768]
  exact DerivedMapBatches.Batch068.certificate5456valid.2 x
theorem rhsLink1768 : DerivedMapBatches.Batch068.certificate5456.c = DerivedMapBatches.Batch022.certificate1827.c := by decide
theorem rhsValid1768 : DerivedMapBatches.Batch022.certificate1827.Valid := DerivedMapBatches.Batch022.certificate1827valid
theorem linkedCommutativity1768 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5456.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1826.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1825.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1827.c x := by
  exact (linkedComposition1768 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1768)
theorem firstLink1769 : DerivedMapBatches.Batch022.certificate1828.algebra.mat = DerivedMapBatches.Batch068.certificate5457.a := by decide
theorem secondLink1769 : DerivedMapBatches.Batch022.certificate1829.algebra.mat = DerivedMapBatches.Batch068.certificate5457.b := by decide
theorem firstValid1769 : DerivedMapBatches.Batch022.certificate1828.Valid := DerivedMapBatches.Batch022.certificate1828valid
theorem secondValid1769 : DerivedMapBatches.Batch022.certificate1829.Valid := DerivedMapBatches.Batch022.certificate1829valid
theorem outputValid1769 : DerivedMapBatches.Batch068.certificate5457.Valid := DerivedMapBatches.Batch068.certificate5457valid
theorem linkedComposition1769 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5457.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5457.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1828.algebra.mat x) := by
  rw [firstLink1769, secondLink1769]
  exact DerivedMapBatches.Batch068.certificate5457valid.2 x
theorem rhsLink1769 : DerivedMapBatches.Batch068.certificate5457.c = DerivedMapBatches.Batch022.certificate1830.c := by decide
theorem rhsValid1769 : DerivedMapBatches.Batch022.certificate1830.Valid := DerivedMapBatches.Batch022.certificate1830valid
theorem linkedCommutativity1769 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5457.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1828.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1830.c x := by
  exact (linkedComposition1769 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1769)
theorem firstLink1770 : DerivedMapBatches.Batch022.certificate1831.algebra.mat = DerivedMapBatches.Batch068.certificate5458.a := by decide
theorem secondLink1770 : DerivedMapBatches.Batch022.certificate1832.algebra.mat = DerivedMapBatches.Batch068.certificate5458.b := by decide
theorem firstValid1770 : DerivedMapBatches.Batch022.certificate1831.Valid := DerivedMapBatches.Batch022.certificate1831valid
theorem secondValid1770 : DerivedMapBatches.Batch022.certificate1832.Valid := DerivedMapBatches.Batch022.certificate1832valid
theorem outputValid1770 : DerivedMapBatches.Batch068.certificate5458.Valid := DerivedMapBatches.Batch068.certificate5458valid
theorem linkedComposition1770 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5458.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1832.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1831.algebra.mat x) := by
  rw [firstLink1770, secondLink1770]
  exact DerivedMapBatches.Batch068.certificate5458valid.2 x
theorem rhsLink1770 : DerivedMapBatches.Batch068.certificate5458.c = DerivedMapBatches.Batch022.certificate1833.c := by decide
theorem rhsValid1770 : DerivedMapBatches.Batch022.certificate1833.Valid := DerivedMapBatches.Batch022.certificate1833valid
theorem linkedCommutativity1770 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1832.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1831.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1833.c x := by
  exact (linkedComposition1770 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1770)
theorem firstLink1771 : DerivedMapBatches.Batch022.certificate1834.algebra.mat = DerivedMapBatches.Batch068.certificate5459.a := by decide
theorem secondLink1771 : DerivedMapBatches.Batch022.certificate1835.algebra.mat = DerivedMapBatches.Batch068.certificate5459.b := by decide
theorem firstValid1771 : DerivedMapBatches.Batch022.certificate1834.Valid := DerivedMapBatches.Batch022.certificate1834valid
theorem secondValid1771 : DerivedMapBatches.Batch022.certificate1835.Valid := DerivedMapBatches.Batch022.certificate1835valid
theorem outputValid1771 : DerivedMapBatches.Batch068.certificate5459.Valid := DerivedMapBatches.Batch068.certificate5459valid
theorem linkedComposition1771 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5459.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch068.certificate5459.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1835.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1834.algebra.mat x) := by
  rw [firstLink1771, secondLink1771]
  exact DerivedMapBatches.Batch068.certificate5459valid.2 x
theorem rhsLink1771 : DerivedMapBatches.Batch068.certificate5459.c = DerivedMapBatches.Batch022.certificate1836.c := by decide
theorem rhsValid1771 : DerivedMapBatches.Batch022.certificate1836.Valid := DerivedMapBatches.Batch022.certificate1836valid
theorem linkedCommutativity1771 (x : LinearCertificates.Vec DerivedMapBatches.Batch068.certificate5459.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1835.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1834.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1836.c x := by
  exact (linkedComposition1771 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1771)
end DerivedLinkageBatches.Batch035
