import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch020
import DerivedMapBatches.Batch021
import DerivedMapBatches.Batch022
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch008
theorem firstLink400 : DerivedMapBatches.Batch020.certificate1650.algebra.mat = DerivedMapBatches.Batch020.certificate1652.a := by decide
theorem secondLink400 : DerivedMapBatches.Batch020.certificate1651.algebra.mat = DerivedMapBatches.Batch020.certificate1652.b := by decide
theorem firstValid400 : DerivedMapBatches.Batch020.certificate1650.Valid := DerivedMapBatches.Batch020.certificate1650valid
theorem secondValid400 : DerivedMapBatches.Batch020.certificate1651.Valid := DerivedMapBatches.Batch020.certificate1651valid
theorem outputValid400 : DerivedMapBatches.Batch020.certificate1652.Valid := DerivedMapBatches.Batch020.certificate1652valid
theorem linkedComposition400 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1652.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1652.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1650.algebra.mat x) := by
  rw [firstLink400, secondLink400]
  exact DerivedMapBatches.Batch020.certificate1652valid.2 x
theorem firstLink401 : DerivedMapBatches.Batch013.certificate1074.algebra.mat = DerivedMapBatches.Batch020.certificate1653.a := by decide
theorem secondLink401 : DerivedMapBatches.Batch014.certificate1142.algebra.mat = DerivedMapBatches.Batch020.certificate1653.b := by decide
theorem firstValid401 : DerivedMapBatches.Batch013.certificate1074.Valid := DerivedMapBatches.Batch013.certificate1074valid
theorem secondValid401 : DerivedMapBatches.Batch014.certificate1142.Valid := DerivedMapBatches.Batch014.certificate1142valid
theorem outputValid401 : DerivedMapBatches.Batch020.certificate1653.Valid := DerivedMapBatches.Batch020.certificate1653valid
theorem linkedComposition401 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1653.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1653.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat x) := by
  rw [firstLink401, secondLink401]
  exact DerivedMapBatches.Batch020.certificate1653valid.2 x
theorem firstLink402 : DerivedMapBatches.Batch020.certificate1654.algebra.mat = DerivedMapBatches.Batch020.certificate1656.a := by decide
theorem secondLink402 : DerivedMapBatches.Batch020.certificate1655.algebra.mat = DerivedMapBatches.Batch020.certificate1656.b := by decide
theorem firstValid402 : DerivedMapBatches.Batch020.certificate1654.Valid := DerivedMapBatches.Batch020.certificate1654valid
theorem secondValid402 : DerivedMapBatches.Batch020.certificate1655.Valid := DerivedMapBatches.Batch020.certificate1655valid
theorem outputValid402 : DerivedMapBatches.Batch020.certificate1656.Valid := DerivedMapBatches.Batch020.certificate1656valid
theorem linkedComposition402 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1656.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1656.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1655.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1654.algebra.mat x) := by
  rw [firstLink402, secondLink402]
  exact DerivedMapBatches.Batch020.certificate1656valid.2 x
theorem firstLink403 : DerivedMapBatches.Batch020.certificate1657.algebra.mat = DerivedMapBatches.Batch020.certificate1659.a := by decide
theorem secondLink403 : DerivedMapBatches.Batch020.certificate1658.algebra.mat = DerivedMapBatches.Batch020.certificate1659.b := by decide
theorem firstValid403 : DerivedMapBatches.Batch020.certificate1657.Valid := DerivedMapBatches.Batch020.certificate1657valid
theorem secondValid403 : DerivedMapBatches.Batch020.certificate1658.Valid := DerivedMapBatches.Batch020.certificate1658valid
theorem outputValid403 : DerivedMapBatches.Batch020.certificate1659.Valid := DerivedMapBatches.Batch020.certificate1659valid
theorem linkedComposition403 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1659.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1659.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1658.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1657.algebra.mat x) := by
  rw [firstLink403, secondLink403]
  exact DerivedMapBatches.Batch020.certificate1659valid.2 x
theorem firstLink404 : DerivedMapBatches.Batch013.certificate1083.algebra.mat = DerivedMapBatches.Batch020.certificate1660.a := by decide
theorem secondLink404 : DerivedMapBatches.Batch014.certificate1148.algebra.mat = DerivedMapBatches.Batch020.certificate1660.b := by decide
theorem firstValid404 : DerivedMapBatches.Batch013.certificate1083.Valid := DerivedMapBatches.Batch013.certificate1083valid
theorem secondValid404 : DerivedMapBatches.Batch014.certificate1148.Valid := DerivedMapBatches.Batch014.certificate1148valid
theorem outputValid404 : DerivedMapBatches.Batch020.certificate1660.Valid := DerivedMapBatches.Batch020.certificate1660valid
theorem linkedComposition404 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1660.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1660.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat x) := by
  rw [firstLink404, secondLink404]
  exact DerivedMapBatches.Batch020.certificate1660valid.2 x
theorem firstLink405 : DerivedMapBatches.Batch020.certificate1661.algebra.mat = DerivedMapBatches.Batch020.certificate1663.a := by decide
theorem secondLink405 : DerivedMapBatches.Batch020.certificate1662.algebra.mat = DerivedMapBatches.Batch020.certificate1663.b := by decide
theorem firstValid405 : DerivedMapBatches.Batch020.certificate1661.Valid := DerivedMapBatches.Batch020.certificate1661valid
theorem secondValid405 : DerivedMapBatches.Batch020.certificate1662.Valid := DerivedMapBatches.Batch020.certificate1662valid
theorem outputValid405 : DerivedMapBatches.Batch020.certificate1663.Valid := DerivedMapBatches.Batch020.certificate1663valid
theorem linkedComposition405 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1663.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1663.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1662.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1661.algebra.mat x) := by
  rw [firstLink405, secondLink405]
  exact DerivedMapBatches.Batch020.certificate1663valid.2 x
theorem firstLink406 : DerivedMapBatches.Batch013.certificate1092.algebra.mat = DerivedMapBatches.Batch020.certificate1664.a := by decide
theorem secondLink406 : DerivedMapBatches.Batch014.certificate1154.algebra.mat = DerivedMapBatches.Batch020.certificate1664.b := by decide
theorem firstValid406 : DerivedMapBatches.Batch013.certificate1092.Valid := DerivedMapBatches.Batch013.certificate1092valid
theorem secondValid406 : DerivedMapBatches.Batch014.certificate1154.Valid := DerivedMapBatches.Batch014.certificate1154valid
theorem outputValid406 : DerivedMapBatches.Batch020.certificate1664.Valid := DerivedMapBatches.Batch020.certificate1664valid
theorem linkedComposition406 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1664.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1664.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat x) := by
  rw [firstLink406, secondLink406]
  exact DerivedMapBatches.Batch020.certificate1664valid.2 x
theorem firstLink407 : DerivedMapBatches.Batch013.certificate1098.algebra.mat = DerivedMapBatches.Batch020.certificate1665.a := by decide
theorem secondLink407 : DerivedMapBatches.Batch014.certificate1158.algebra.mat = DerivedMapBatches.Batch020.certificate1665.b := by decide
theorem firstValid407 : DerivedMapBatches.Batch013.certificate1098.Valid := DerivedMapBatches.Batch013.certificate1098valid
theorem secondValid407 : DerivedMapBatches.Batch014.certificate1158.Valid := DerivedMapBatches.Batch014.certificate1158valid
theorem outputValid407 : DerivedMapBatches.Batch020.certificate1665.Valid := DerivedMapBatches.Batch020.certificate1665valid
theorem linkedComposition407 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1665.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1665.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat x) := by
  rw [firstLink407, secondLink407]
  exact DerivedMapBatches.Batch020.certificate1665valid.2 x
theorem firstLink408 : DerivedMapBatches.Batch013.certificate1104.algebra.mat = DerivedMapBatches.Batch020.certificate1666.a := by decide
theorem secondLink408 : DerivedMapBatches.Batch014.certificate1162.algebra.mat = DerivedMapBatches.Batch020.certificate1666.b := by decide
theorem firstValid408 : DerivedMapBatches.Batch013.certificate1104.Valid := DerivedMapBatches.Batch013.certificate1104valid
theorem secondValid408 : DerivedMapBatches.Batch014.certificate1162.Valid := DerivedMapBatches.Batch014.certificate1162valid
theorem outputValid408 : DerivedMapBatches.Batch020.certificate1666.Valid := DerivedMapBatches.Batch020.certificate1666valid
theorem linkedComposition408 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1666.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1666.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat x) := by
  rw [firstLink408, secondLink408]
  exact DerivedMapBatches.Batch020.certificate1666valid.2 x
theorem firstLink409 : DerivedMapBatches.Batch013.certificate1110.algebra.mat = DerivedMapBatches.Batch020.certificate1667.a := by decide
theorem secondLink409 : DerivedMapBatches.Batch014.certificate1166.algebra.mat = DerivedMapBatches.Batch020.certificate1667.b := by decide
theorem firstValid409 : DerivedMapBatches.Batch013.certificate1110.Valid := DerivedMapBatches.Batch013.certificate1110valid
theorem secondValid409 : DerivedMapBatches.Batch014.certificate1166.Valid := DerivedMapBatches.Batch014.certificate1166valid
theorem outputValid409 : DerivedMapBatches.Batch020.certificate1667.Valid := DerivedMapBatches.Batch020.certificate1667valid
theorem linkedComposition409 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1667.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1667.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat x) := by
  rw [firstLink409, secondLink409]
  exact DerivedMapBatches.Batch020.certificate1667valid.2 x
theorem firstLink410 : DerivedMapBatches.Batch020.certificate1668.algebra.mat = DerivedMapBatches.Batch020.certificate1670.a := by decide
theorem secondLink410 : DerivedMapBatches.Batch020.certificate1669.algebra.mat = DerivedMapBatches.Batch020.certificate1670.b := by decide
theorem firstValid410 : DerivedMapBatches.Batch020.certificate1668.Valid := DerivedMapBatches.Batch020.certificate1668valid
theorem secondValid410 : DerivedMapBatches.Batch020.certificate1669.Valid := DerivedMapBatches.Batch020.certificate1669valid
theorem outputValid410 : DerivedMapBatches.Batch020.certificate1670.Valid := DerivedMapBatches.Batch020.certificate1670valid
theorem linkedComposition410 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1670.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1670.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1668.algebra.mat x) := by
  rw [firstLink410, secondLink410]
  exact DerivedMapBatches.Batch020.certificate1670valid.2 x
theorem firstLink411 : DerivedMapBatches.Batch020.certificate1671.algebra.mat = DerivedMapBatches.Batch020.certificate1673.a := by decide
theorem secondLink411 : DerivedMapBatches.Batch020.certificate1672.algebra.mat = DerivedMapBatches.Batch020.certificate1673.b := by decide
theorem firstValid411 : DerivedMapBatches.Batch020.certificate1671.Valid := DerivedMapBatches.Batch020.certificate1671valid
theorem secondValid411 : DerivedMapBatches.Batch020.certificate1672.Valid := DerivedMapBatches.Batch020.certificate1672valid
theorem outputValid411 : DerivedMapBatches.Batch020.certificate1673.Valid := DerivedMapBatches.Batch020.certificate1673valid
theorem linkedComposition411 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1673.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1673.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1671.algebra.mat x) := by
  rw [firstLink411, secondLink411]
  exact DerivedMapBatches.Batch020.certificate1673valid.2 x
theorem firstLink412 : DerivedMapBatches.Batch020.certificate1674.algebra.mat = DerivedMapBatches.Batch020.certificate1676.a := by decide
theorem secondLink412 : DerivedMapBatches.Batch020.certificate1675.algebra.mat = DerivedMapBatches.Batch020.certificate1676.b := by decide
theorem firstValid412 : DerivedMapBatches.Batch020.certificate1674.Valid := DerivedMapBatches.Batch020.certificate1674valid
theorem secondValid412 : DerivedMapBatches.Batch020.certificate1675.Valid := DerivedMapBatches.Batch020.certificate1675valid
theorem outputValid412 : DerivedMapBatches.Batch020.certificate1676.Valid := DerivedMapBatches.Batch020.certificate1676valid
theorem linkedComposition412 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1676.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1676.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1674.algebra.mat x) := by
  rw [firstLink412, secondLink412]
  exact DerivedMapBatches.Batch020.certificate1676valid.2 x
theorem firstLink413 : DerivedMapBatches.Batch020.certificate1677.algebra.mat = DerivedMapBatches.Batch020.certificate1679.a := by decide
theorem secondLink413 : DerivedMapBatches.Batch020.certificate1678.algebra.mat = DerivedMapBatches.Batch020.certificate1679.b := by decide
theorem firstValid413 : DerivedMapBatches.Batch020.certificate1677.Valid := DerivedMapBatches.Batch020.certificate1677valid
theorem secondValid413 : DerivedMapBatches.Batch020.certificate1678.Valid := DerivedMapBatches.Batch020.certificate1678valid
theorem outputValid413 : DerivedMapBatches.Batch020.certificate1679.Valid := DerivedMapBatches.Batch020.certificate1679valid
theorem linkedComposition413 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1679.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1679.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1677.algebra.mat x) := by
  rw [firstLink413, secondLink413]
  exact DerivedMapBatches.Batch020.certificate1679valid.2 x
theorem firstLink414 : DerivedMapBatches.Batch021.certificate1680.algebra.mat = DerivedMapBatches.Batch021.certificate1682.a := by decide
theorem secondLink414 : DerivedMapBatches.Batch021.certificate1681.algebra.mat = DerivedMapBatches.Batch021.certificate1682.b := by decide
theorem firstValid414 : DerivedMapBatches.Batch021.certificate1680.Valid := DerivedMapBatches.Batch021.certificate1680valid
theorem secondValid414 : DerivedMapBatches.Batch021.certificate1681.Valid := DerivedMapBatches.Batch021.certificate1681valid
theorem outputValid414 : DerivedMapBatches.Batch021.certificate1682.Valid := DerivedMapBatches.Batch021.certificate1682valid
theorem linkedComposition414 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1682.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1682.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1680.algebra.mat x) := by
  rw [firstLink414, secondLink414]
  exact DerivedMapBatches.Batch021.certificate1682valid.2 x
theorem firstLink415 : DerivedMapBatches.Batch021.certificate1683.algebra.mat = DerivedMapBatches.Batch021.certificate1685.a := by decide
theorem secondLink415 : DerivedMapBatches.Batch021.certificate1684.algebra.mat = DerivedMapBatches.Batch021.certificate1685.b := by decide
theorem firstValid415 : DerivedMapBatches.Batch021.certificate1683.Valid := DerivedMapBatches.Batch021.certificate1683valid
theorem secondValid415 : DerivedMapBatches.Batch021.certificate1684.Valid := DerivedMapBatches.Batch021.certificate1684valid
theorem outputValid415 : DerivedMapBatches.Batch021.certificate1685.Valid := DerivedMapBatches.Batch021.certificate1685valid
theorem linkedComposition415 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1685.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1685.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1683.algebra.mat x) := by
  rw [firstLink415, secondLink415]
  exact DerivedMapBatches.Batch021.certificate1685valid.2 x
theorem firstLink416 : DerivedMapBatches.Batch021.certificate1686.algebra.mat = DerivedMapBatches.Batch021.certificate1688.a := by decide
theorem secondLink416 : DerivedMapBatches.Batch021.certificate1687.algebra.mat = DerivedMapBatches.Batch021.certificate1688.b := by decide
theorem firstValid416 : DerivedMapBatches.Batch021.certificate1686.Valid := DerivedMapBatches.Batch021.certificate1686valid
theorem secondValid416 : DerivedMapBatches.Batch021.certificate1687.Valid := DerivedMapBatches.Batch021.certificate1687valid
theorem outputValid416 : DerivedMapBatches.Batch021.certificate1688.Valid := DerivedMapBatches.Batch021.certificate1688valid
theorem linkedComposition416 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1688.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1688.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1686.algebra.mat x) := by
  rw [firstLink416, secondLink416]
  exact DerivedMapBatches.Batch021.certificate1688valid.2 x
theorem firstLink417 : DerivedMapBatches.Batch021.certificate1689.algebra.mat = DerivedMapBatches.Batch021.certificate1690.a := by decide
theorem secondLink417 : DerivedMapBatches.Batch009.certificate735.algebra.mat = DerivedMapBatches.Batch021.certificate1690.b := by decide
theorem firstValid417 : DerivedMapBatches.Batch021.certificate1689.Valid := DerivedMapBatches.Batch021.certificate1689valid
theorem secondValid417 : DerivedMapBatches.Batch009.certificate735.Valid := DerivedMapBatches.Batch009.certificate735valid
theorem outputValid417 : DerivedMapBatches.Batch021.certificate1690.Valid := DerivedMapBatches.Batch021.certificate1690valid
theorem linkedComposition417 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1690.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1690.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1689.algebra.mat x) := by
  rw [firstLink417, secondLink417]
  exact DerivedMapBatches.Batch021.certificate1690valid.2 x
theorem firstLink418 : DerivedMapBatches.Batch021.certificate1691.algebra.mat = DerivedMapBatches.Batch021.certificate1693.a := by decide
theorem secondLink418 : DerivedMapBatches.Batch021.certificate1692.algebra.mat = DerivedMapBatches.Batch021.certificate1693.b := by decide
theorem firstValid418 : DerivedMapBatches.Batch021.certificate1691.Valid := DerivedMapBatches.Batch021.certificate1691valid
theorem secondValid418 : DerivedMapBatches.Batch021.certificate1692.Valid := DerivedMapBatches.Batch021.certificate1692valid
theorem outputValid418 : DerivedMapBatches.Batch021.certificate1693.Valid := DerivedMapBatches.Batch021.certificate1693valid
theorem linkedComposition418 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1693.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1693.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1692.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1691.algebra.mat x) := by
  rw [firstLink418, secondLink418]
  exact DerivedMapBatches.Batch021.certificate1693valid.2 x
theorem firstLink419 : DerivedMapBatches.Batch021.certificate1694.algebra.mat = DerivedMapBatches.Batch021.certificate1696.a := by decide
theorem secondLink419 : DerivedMapBatches.Batch021.certificate1695.algebra.mat = DerivedMapBatches.Batch021.certificate1696.b := by decide
theorem firstValid419 : DerivedMapBatches.Batch021.certificate1694.Valid := DerivedMapBatches.Batch021.certificate1694valid
theorem secondValid419 : DerivedMapBatches.Batch021.certificate1695.Valid := DerivedMapBatches.Batch021.certificate1695valid
theorem outputValid419 : DerivedMapBatches.Batch021.certificate1696.Valid := DerivedMapBatches.Batch021.certificate1696valid
theorem linkedComposition419 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1696.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1696.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1695.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1694.algebra.mat x) := by
  rw [firstLink419, secondLink419]
  exact DerivedMapBatches.Batch021.certificate1696valid.2 x
theorem firstLink420 : DerivedMapBatches.Batch021.certificate1697.algebra.mat = DerivedMapBatches.Batch021.certificate1699.a := by decide
theorem secondLink420 : DerivedMapBatches.Batch021.certificate1698.algebra.mat = DerivedMapBatches.Batch021.certificate1699.b := by decide
theorem firstValid420 : DerivedMapBatches.Batch021.certificate1697.Valid := DerivedMapBatches.Batch021.certificate1697valid
theorem secondValid420 : DerivedMapBatches.Batch021.certificate1698.Valid := DerivedMapBatches.Batch021.certificate1698valid
theorem outputValid420 : DerivedMapBatches.Batch021.certificate1699.Valid := DerivedMapBatches.Batch021.certificate1699valid
theorem linkedComposition420 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1699.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1699.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1698.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1697.algebra.mat x) := by
  rw [firstLink420, secondLink420]
  exact DerivedMapBatches.Batch021.certificate1699valid.2 x
theorem firstLink421 : DerivedMapBatches.Batch021.certificate1700.algebra.mat = DerivedMapBatches.Batch021.certificate1702.a := by decide
theorem secondLink421 : DerivedMapBatches.Batch021.certificate1701.algebra.mat = DerivedMapBatches.Batch021.certificate1702.b := by decide
theorem firstValid421 : DerivedMapBatches.Batch021.certificate1700.Valid := DerivedMapBatches.Batch021.certificate1700valid
theorem secondValid421 : DerivedMapBatches.Batch021.certificate1701.Valid := DerivedMapBatches.Batch021.certificate1701valid
theorem outputValid421 : DerivedMapBatches.Batch021.certificate1702.Valid := DerivedMapBatches.Batch021.certificate1702valid
theorem linkedComposition421 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1702.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1702.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1701.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1700.algebra.mat x) := by
  rw [firstLink421, secondLink421]
  exact DerivedMapBatches.Batch021.certificate1702valid.2 x
theorem firstLink422 : DerivedMapBatches.Batch021.certificate1703.algebra.mat = DerivedMapBatches.Batch021.certificate1704.a := by decide
theorem secondLink422 : DerivedMapBatches.Batch009.certificate744.algebra.mat = DerivedMapBatches.Batch021.certificate1704.b := by decide
theorem firstValid422 : DerivedMapBatches.Batch021.certificate1703.Valid := DerivedMapBatches.Batch021.certificate1703valid
theorem secondValid422 : DerivedMapBatches.Batch009.certificate744.Valid := DerivedMapBatches.Batch009.certificate744valid
theorem outputValid422 : DerivedMapBatches.Batch021.certificate1704.Valid := DerivedMapBatches.Batch021.certificate1704valid
theorem linkedComposition422 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1704.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1704.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1703.algebra.mat x) := by
  rw [firstLink422, secondLink422]
  exact DerivedMapBatches.Batch021.certificate1704valid.2 x
theorem firstLink423 : DerivedMapBatches.Batch021.certificate1705.algebra.mat = DerivedMapBatches.Batch021.certificate1707.a := by decide
theorem secondLink423 : DerivedMapBatches.Batch021.certificate1706.algebra.mat = DerivedMapBatches.Batch021.certificate1707.b := by decide
theorem firstValid423 : DerivedMapBatches.Batch021.certificate1705.Valid := DerivedMapBatches.Batch021.certificate1705valid
theorem secondValid423 : DerivedMapBatches.Batch021.certificate1706.Valid := DerivedMapBatches.Batch021.certificate1706valid
theorem outputValid423 : DerivedMapBatches.Batch021.certificate1707.Valid := DerivedMapBatches.Batch021.certificate1707valid
theorem linkedComposition423 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1707.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1707.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1706.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1705.algebra.mat x) := by
  rw [firstLink423, secondLink423]
  exact DerivedMapBatches.Batch021.certificate1707valid.2 x
theorem firstLink424 : DerivedMapBatches.Batch021.certificate1708.algebra.mat = DerivedMapBatches.Batch021.certificate1709.a := by decide
theorem secondLink424 : DerivedMapBatches.Batch009.certificate747.algebra.mat = DerivedMapBatches.Batch021.certificate1709.b := by decide
theorem firstValid424 : DerivedMapBatches.Batch021.certificate1708.Valid := DerivedMapBatches.Batch021.certificate1708valid
theorem secondValid424 : DerivedMapBatches.Batch009.certificate747.Valid := DerivedMapBatches.Batch009.certificate747valid
theorem outputValid424 : DerivedMapBatches.Batch021.certificate1709.Valid := DerivedMapBatches.Batch021.certificate1709valid
theorem linkedComposition424 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1709.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1709.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1708.algebra.mat x) := by
  rw [firstLink424, secondLink424]
  exact DerivedMapBatches.Batch021.certificate1709valid.2 x
theorem firstLink425 : DerivedMapBatches.Batch021.certificate1710.algebra.mat = DerivedMapBatches.Batch021.certificate1712.a := by decide
theorem secondLink425 : DerivedMapBatches.Batch021.certificate1711.algebra.mat = DerivedMapBatches.Batch021.certificate1712.b := by decide
theorem firstValid425 : DerivedMapBatches.Batch021.certificate1710.Valid := DerivedMapBatches.Batch021.certificate1710valid
theorem secondValid425 : DerivedMapBatches.Batch021.certificate1711.Valid := DerivedMapBatches.Batch021.certificate1711valid
theorem outputValid425 : DerivedMapBatches.Batch021.certificate1712.Valid := DerivedMapBatches.Batch021.certificate1712valid
theorem linkedComposition425 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1712.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1712.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1710.algebra.mat x) := by
  rw [firstLink425, secondLink425]
  exact DerivedMapBatches.Batch021.certificate1712valid.2 x
theorem firstLink426 : DerivedMapBatches.Batch021.certificate1713.algebra.mat = DerivedMapBatches.Batch021.certificate1715.a := by decide
theorem secondLink426 : DerivedMapBatches.Batch021.certificate1714.algebra.mat = DerivedMapBatches.Batch021.certificate1715.b := by decide
theorem firstValid426 : DerivedMapBatches.Batch021.certificate1713.Valid := DerivedMapBatches.Batch021.certificate1713valid
theorem secondValid426 : DerivedMapBatches.Batch021.certificate1714.Valid := DerivedMapBatches.Batch021.certificate1714valid
theorem outputValid426 : DerivedMapBatches.Batch021.certificate1715.Valid := DerivedMapBatches.Batch021.certificate1715valid
theorem linkedComposition426 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1715.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1715.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1713.algebra.mat x) := by
  rw [firstLink426, secondLink426]
  exact DerivedMapBatches.Batch021.certificate1715valid.2 x
theorem firstLink427 : DerivedMapBatches.Batch021.certificate1716.algebra.mat = DerivedMapBatches.Batch021.certificate1717.a := by decide
theorem secondLink427 : DerivedMapBatches.Batch009.certificate759.algebra.mat = DerivedMapBatches.Batch021.certificate1717.b := by decide
theorem firstValid427 : DerivedMapBatches.Batch021.certificate1716.Valid := DerivedMapBatches.Batch021.certificate1716valid
theorem secondValid427 : DerivedMapBatches.Batch009.certificate759.Valid := DerivedMapBatches.Batch009.certificate759valid
theorem outputValid427 : DerivedMapBatches.Batch021.certificate1717.Valid := DerivedMapBatches.Batch021.certificate1717valid
theorem linkedComposition427 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1717.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1717.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1716.algebra.mat x) := by
  rw [firstLink427, secondLink427]
  exact DerivedMapBatches.Batch021.certificate1717valid.2 x
theorem firstLink428 : DerivedMapBatches.Batch021.certificate1718.algebra.mat = DerivedMapBatches.Batch021.certificate1720.a := by decide
theorem secondLink428 : DerivedMapBatches.Batch021.certificate1719.algebra.mat = DerivedMapBatches.Batch021.certificate1720.b := by decide
theorem firstValid428 : DerivedMapBatches.Batch021.certificate1718.Valid := DerivedMapBatches.Batch021.certificate1718valid
theorem secondValid428 : DerivedMapBatches.Batch021.certificate1719.Valid := DerivedMapBatches.Batch021.certificate1719valid
theorem outputValid428 : DerivedMapBatches.Batch021.certificate1720.Valid := DerivedMapBatches.Batch021.certificate1720valid
theorem linkedComposition428 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1720.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1720.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1719.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1718.algebra.mat x) := by
  rw [firstLink428, secondLink428]
  exact DerivedMapBatches.Batch021.certificate1720valid.2 x
theorem firstLink429 : DerivedMapBatches.Batch021.certificate1721.algebra.mat = DerivedMapBatches.Batch021.certificate1723.a := by decide
theorem secondLink429 : DerivedMapBatches.Batch021.certificate1722.algebra.mat = DerivedMapBatches.Batch021.certificate1723.b := by decide
theorem firstValid429 : DerivedMapBatches.Batch021.certificate1721.Valid := DerivedMapBatches.Batch021.certificate1721valid
theorem secondValid429 : DerivedMapBatches.Batch021.certificate1722.Valid := DerivedMapBatches.Batch021.certificate1722valid
theorem outputValid429 : DerivedMapBatches.Batch021.certificate1723.Valid := DerivedMapBatches.Batch021.certificate1723valid
theorem linkedComposition429 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1723.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1723.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1722.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1721.algebra.mat x) := by
  rw [firstLink429, secondLink429]
  exact DerivedMapBatches.Batch021.certificate1723valid.2 x
theorem firstLink430 : DerivedMapBatches.Batch021.certificate1724.algebra.mat = DerivedMapBatches.Batch021.certificate1725.a := by decide
theorem secondLink430 : DerivedMapBatches.Batch009.certificate762.algebra.mat = DerivedMapBatches.Batch021.certificate1725.b := by decide
theorem firstValid430 : DerivedMapBatches.Batch021.certificate1724.Valid := DerivedMapBatches.Batch021.certificate1724valid
theorem secondValid430 : DerivedMapBatches.Batch009.certificate762.Valid := DerivedMapBatches.Batch009.certificate762valid
theorem outputValid430 : DerivedMapBatches.Batch021.certificate1725.Valid := DerivedMapBatches.Batch021.certificate1725valid
theorem linkedComposition430 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1725.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1725.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1724.algebra.mat x) := by
  rw [firstLink430, secondLink430]
  exact DerivedMapBatches.Batch021.certificate1725valid.2 x
theorem firstLink431 : DerivedMapBatches.Batch021.certificate1726.algebra.mat = DerivedMapBatches.Batch021.certificate1728.a := by decide
theorem secondLink431 : DerivedMapBatches.Batch021.certificate1727.algebra.mat = DerivedMapBatches.Batch021.certificate1728.b := by decide
theorem firstValid431 : DerivedMapBatches.Batch021.certificate1726.Valid := DerivedMapBatches.Batch021.certificate1726valid
theorem secondValid431 : DerivedMapBatches.Batch021.certificate1727.Valid := DerivedMapBatches.Batch021.certificate1727valid
theorem outputValid431 : DerivedMapBatches.Batch021.certificate1728.Valid := DerivedMapBatches.Batch021.certificate1728valid
theorem linkedComposition431 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1728.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1728.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1727.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1726.algebra.mat x) := by
  rw [firstLink431, secondLink431]
  exact DerivedMapBatches.Batch021.certificate1728valid.2 x
theorem firstLink432 : DerivedMapBatches.Batch021.certificate1729.algebra.mat = DerivedMapBatches.Batch021.certificate1731.a := by decide
theorem secondLink432 : DerivedMapBatches.Batch021.certificate1730.algebra.mat = DerivedMapBatches.Batch021.certificate1731.b := by decide
theorem firstValid432 : DerivedMapBatches.Batch021.certificate1729.Valid := DerivedMapBatches.Batch021.certificate1729valid
theorem secondValid432 : DerivedMapBatches.Batch021.certificate1730.Valid := DerivedMapBatches.Batch021.certificate1730valid
theorem outputValid432 : DerivedMapBatches.Batch021.certificate1731.Valid := DerivedMapBatches.Batch021.certificate1731valid
theorem linkedComposition432 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1731.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1731.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1730.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1729.algebra.mat x) := by
  rw [firstLink432, secondLink432]
  exact DerivedMapBatches.Batch021.certificate1731valid.2 x
theorem firstLink433 : DerivedMapBatches.Batch021.certificate1732.algebra.mat = DerivedMapBatches.Batch021.certificate1733.a := by decide
theorem secondLink433 : DerivedMapBatches.Batch009.certificate771.algebra.mat = DerivedMapBatches.Batch021.certificate1733.b := by decide
theorem firstValid433 : DerivedMapBatches.Batch021.certificate1732.Valid := DerivedMapBatches.Batch021.certificate1732valid
theorem secondValid433 : DerivedMapBatches.Batch009.certificate771.Valid := DerivedMapBatches.Batch009.certificate771valid
theorem outputValid433 : DerivedMapBatches.Batch021.certificate1733.Valid := DerivedMapBatches.Batch021.certificate1733valid
theorem linkedComposition433 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1733.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1733.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1732.algebra.mat x) := by
  rw [firstLink433, secondLink433]
  exact DerivedMapBatches.Batch021.certificate1733valid.2 x
theorem firstLink434 : DerivedMapBatches.Batch021.certificate1734.algebra.mat = DerivedMapBatches.Batch021.certificate1736.a := by decide
theorem secondLink434 : DerivedMapBatches.Batch021.certificate1735.algebra.mat = DerivedMapBatches.Batch021.certificate1736.b := by decide
theorem firstValid434 : DerivedMapBatches.Batch021.certificate1734.Valid := DerivedMapBatches.Batch021.certificate1734valid
theorem secondValid434 : DerivedMapBatches.Batch021.certificate1735.Valid := DerivedMapBatches.Batch021.certificate1735valid
theorem outputValid434 : DerivedMapBatches.Batch021.certificate1736.Valid := DerivedMapBatches.Batch021.certificate1736valid
theorem linkedComposition434 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1736.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1736.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1734.algebra.mat x) := by
  rw [firstLink434, secondLink434]
  exact DerivedMapBatches.Batch021.certificate1736valid.2 x
theorem firstLink435 : DerivedMapBatches.Batch021.certificate1737.algebra.mat = DerivedMapBatches.Batch021.certificate1739.a := by decide
theorem secondLink435 : DerivedMapBatches.Batch021.certificate1738.algebra.mat = DerivedMapBatches.Batch021.certificate1739.b := by decide
theorem firstValid435 : DerivedMapBatches.Batch021.certificate1737.Valid := DerivedMapBatches.Batch021.certificate1737valid
theorem secondValid435 : DerivedMapBatches.Batch021.certificate1738.Valid := DerivedMapBatches.Batch021.certificate1738valid
theorem outputValid435 : DerivedMapBatches.Batch021.certificate1739.Valid := DerivedMapBatches.Batch021.certificate1739valid
theorem linkedComposition435 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1739.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1739.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1737.algebra.mat x) := by
  rw [firstLink435, secondLink435]
  exact DerivedMapBatches.Batch021.certificate1739valid.2 x
theorem firstLink436 : DerivedMapBatches.Batch021.certificate1740.algebra.mat = DerivedMapBatches.Batch021.certificate1742.a := by decide
theorem secondLink436 : DerivedMapBatches.Batch021.certificate1741.algebra.mat = DerivedMapBatches.Batch021.certificate1742.b := by decide
theorem firstValid436 : DerivedMapBatches.Batch021.certificate1740.Valid := DerivedMapBatches.Batch021.certificate1740valid
theorem secondValid436 : DerivedMapBatches.Batch021.certificate1741.Valid := DerivedMapBatches.Batch021.certificate1741valid
theorem outputValid436 : DerivedMapBatches.Batch021.certificate1742.Valid := DerivedMapBatches.Batch021.certificate1742valid
theorem linkedComposition436 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1742.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1742.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1740.algebra.mat x) := by
  rw [firstLink436, secondLink436]
  exact DerivedMapBatches.Batch021.certificate1742valid.2 x
theorem firstLink437 : DerivedMapBatches.Batch021.certificate1743.algebra.mat = DerivedMapBatches.Batch021.certificate1744.a := by decide
theorem secondLink437 : DerivedMapBatches.Batch009.certificate777.algebra.mat = DerivedMapBatches.Batch021.certificate1744.b := by decide
theorem firstValid437 : DerivedMapBatches.Batch021.certificate1743.Valid := DerivedMapBatches.Batch021.certificate1743valid
theorem secondValid437 : DerivedMapBatches.Batch009.certificate777.Valid := DerivedMapBatches.Batch009.certificate777valid
theorem outputValid437 : DerivedMapBatches.Batch021.certificate1744.Valid := DerivedMapBatches.Batch021.certificate1744valid
theorem linkedComposition437 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1744.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1744.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1743.algebra.mat x) := by
  rw [firstLink437, secondLink437]
  exact DerivedMapBatches.Batch021.certificate1744valid.2 x
theorem firstLink438 : DerivedMapBatches.Batch021.certificate1745.algebra.mat = DerivedMapBatches.Batch021.certificate1747.a := by decide
theorem secondLink438 : DerivedMapBatches.Batch021.certificate1746.algebra.mat = DerivedMapBatches.Batch021.certificate1747.b := by decide
theorem firstValid438 : DerivedMapBatches.Batch021.certificate1745.Valid := DerivedMapBatches.Batch021.certificate1745valid
theorem secondValid438 : DerivedMapBatches.Batch021.certificate1746.Valid := DerivedMapBatches.Batch021.certificate1746valid
theorem outputValid438 : DerivedMapBatches.Batch021.certificate1747.Valid := DerivedMapBatches.Batch021.certificate1747valid
theorem linkedComposition438 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1747.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1747.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1746.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1745.algebra.mat x) := by
  rw [firstLink438, secondLink438]
  exact DerivedMapBatches.Batch021.certificate1747valid.2 x
theorem firstLink439 : DerivedMapBatches.Batch021.certificate1748.algebra.mat = DerivedMapBatches.Batch021.certificate1750.a := by decide
theorem secondLink439 : DerivedMapBatches.Batch021.certificate1749.algebra.mat = DerivedMapBatches.Batch021.certificate1750.b := by decide
theorem firstValid439 : DerivedMapBatches.Batch021.certificate1748.Valid := DerivedMapBatches.Batch021.certificate1748valid
theorem secondValid439 : DerivedMapBatches.Batch021.certificate1749.Valid := DerivedMapBatches.Batch021.certificate1749valid
theorem outputValid439 : DerivedMapBatches.Batch021.certificate1750.Valid := DerivedMapBatches.Batch021.certificate1750valid
theorem linkedComposition439 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1750.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1750.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1749.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1748.algebra.mat x) := by
  rw [firstLink439, secondLink439]
  exact DerivedMapBatches.Batch021.certificate1750valid.2 x
theorem firstLink440 : DerivedMapBatches.Batch021.certificate1751.algebra.mat = DerivedMapBatches.Batch021.certificate1752.a := by decide
theorem secondLink440 : DerivedMapBatches.Batch009.certificate780.algebra.mat = DerivedMapBatches.Batch021.certificate1752.b := by decide
theorem firstValid440 : DerivedMapBatches.Batch021.certificate1751.Valid := DerivedMapBatches.Batch021.certificate1751valid
theorem secondValid440 : DerivedMapBatches.Batch009.certificate780.Valid := DerivedMapBatches.Batch009.certificate780valid
theorem outputValid440 : DerivedMapBatches.Batch021.certificate1752.Valid := DerivedMapBatches.Batch021.certificate1752valid
theorem linkedComposition440 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1752.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1752.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1751.algebra.mat x) := by
  rw [firstLink440, secondLink440]
  exact DerivedMapBatches.Batch021.certificate1752valid.2 x
theorem firstLink441 : DerivedMapBatches.Batch021.certificate1753.algebra.mat = DerivedMapBatches.Batch021.certificate1755.a := by decide
theorem secondLink441 : DerivedMapBatches.Batch021.certificate1754.algebra.mat = DerivedMapBatches.Batch021.certificate1755.b := by decide
theorem firstValid441 : DerivedMapBatches.Batch021.certificate1753.Valid := DerivedMapBatches.Batch021.certificate1753valid
theorem secondValid441 : DerivedMapBatches.Batch021.certificate1754.Valid := DerivedMapBatches.Batch021.certificate1754valid
theorem outputValid441 : DerivedMapBatches.Batch021.certificate1755.Valid := DerivedMapBatches.Batch021.certificate1755valid
theorem linkedComposition441 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1755.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1755.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1754.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1753.algebra.mat x) := by
  rw [firstLink441, secondLink441]
  exact DerivedMapBatches.Batch021.certificate1755valid.2 x
theorem firstLink442 : DerivedMapBatches.Batch021.certificate1756.algebra.mat = DerivedMapBatches.Batch021.certificate1758.a := by decide
theorem secondLink442 : DerivedMapBatches.Batch021.certificate1757.algebra.mat = DerivedMapBatches.Batch021.certificate1758.b := by decide
theorem firstValid442 : DerivedMapBatches.Batch021.certificate1756.Valid := DerivedMapBatches.Batch021.certificate1756valid
theorem secondValid442 : DerivedMapBatches.Batch021.certificate1757.Valid := DerivedMapBatches.Batch021.certificate1757valid
theorem outputValid442 : DerivedMapBatches.Batch021.certificate1758.Valid := DerivedMapBatches.Batch021.certificate1758valid
theorem linkedComposition442 (x : LinearCertificates.Vec DerivedMapBatches.Batch021.certificate1758.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch021.certificate1758.c x = LinearCertificates.eval DerivedMapBatches.Batch021.certificate1757.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1756.algebra.mat x) := by
  rw [firstLink442, secondLink442]
  exact DerivedMapBatches.Batch021.certificate1758valid.2 x
theorem firstLink443 : DerivedMapBatches.Batch021.certificate1759.algebra.mat = DerivedMapBatches.Batch022.certificate1761.a := by decide
theorem secondLink443 : DerivedMapBatches.Batch022.certificate1760.algebra.mat = DerivedMapBatches.Batch022.certificate1761.b := by decide
theorem firstValid443 : DerivedMapBatches.Batch021.certificate1759.Valid := DerivedMapBatches.Batch021.certificate1759valid
theorem secondValid443 : DerivedMapBatches.Batch022.certificate1760.Valid := DerivedMapBatches.Batch022.certificate1760valid
theorem outputValid443 : DerivedMapBatches.Batch022.certificate1761.Valid := DerivedMapBatches.Batch022.certificate1761valid
theorem linkedComposition443 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1761.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1761.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1760.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch021.certificate1759.algebra.mat x) := by
  rw [firstLink443, secondLink443]
  exact DerivedMapBatches.Batch022.certificate1761valid.2 x
theorem firstLink444 : DerivedMapBatches.Batch022.certificate1762.algebra.mat = DerivedMapBatches.Batch022.certificate1764.a := by decide
theorem secondLink444 : DerivedMapBatches.Batch022.certificate1763.algebra.mat = DerivedMapBatches.Batch022.certificate1764.b := by decide
theorem firstValid444 : DerivedMapBatches.Batch022.certificate1762.Valid := DerivedMapBatches.Batch022.certificate1762valid
theorem secondValid444 : DerivedMapBatches.Batch022.certificate1763.Valid := DerivedMapBatches.Batch022.certificate1763valid
theorem outputValid444 : DerivedMapBatches.Batch022.certificate1764.Valid := DerivedMapBatches.Batch022.certificate1764valid
theorem linkedComposition444 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1764.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1764.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1763.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1762.algebra.mat x) := by
  rw [firstLink444, secondLink444]
  exact DerivedMapBatches.Batch022.certificate1764valid.2 x
theorem firstLink445 : DerivedMapBatches.Batch022.certificate1765.algebra.mat = DerivedMapBatches.Batch022.certificate1767.a := by decide
theorem secondLink445 : DerivedMapBatches.Batch022.certificate1766.algebra.mat = DerivedMapBatches.Batch022.certificate1767.b := by decide
theorem firstValid445 : DerivedMapBatches.Batch022.certificate1765.Valid := DerivedMapBatches.Batch022.certificate1765valid
theorem secondValid445 : DerivedMapBatches.Batch022.certificate1766.Valid := DerivedMapBatches.Batch022.certificate1766valid
theorem outputValid445 : DerivedMapBatches.Batch022.certificate1767.Valid := DerivedMapBatches.Batch022.certificate1767valid
theorem linkedComposition445 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1767.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1767.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1766.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1765.algebra.mat x) := by
  rw [firstLink445, secondLink445]
  exact DerivedMapBatches.Batch022.certificate1767valid.2 x
theorem firstLink446 : DerivedMapBatches.Batch022.certificate1768.algebra.mat = DerivedMapBatches.Batch022.certificate1770.a := by decide
theorem secondLink446 : DerivedMapBatches.Batch022.certificate1769.algebra.mat = DerivedMapBatches.Batch022.certificate1770.b := by decide
theorem firstValid446 : DerivedMapBatches.Batch022.certificate1768.Valid := DerivedMapBatches.Batch022.certificate1768valid
theorem secondValid446 : DerivedMapBatches.Batch022.certificate1769.Valid := DerivedMapBatches.Batch022.certificate1769valid
theorem outputValid446 : DerivedMapBatches.Batch022.certificate1770.Valid := DerivedMapBatches.Batch022.certificate1770valid
theorem linkedComposition446 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1770.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1770.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1769.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1768.algebra.mat x) := by
  rw [firstLink446, secondLink446]
  exact DerivedMapBatches.Batch022.certificate1770valid.2 x
theorem firstLink447 : DerivedMapBatches.Batch022.certificate1771.algebra.mat = DerivedMapBatches.Batch022.certificate1773.a := by decide
theorem secondLink447 : DerivedMapBatches.Batch022.certificate1772.algebra.mat = DerivedMapBatches.Batch022.certificate1773.b := by decide
theorem firstValid447 : DerivedMapBatches.Batch022.certificate1771.Valid := DerivedMapBatches.Batch022.certificate1771valid
theorem secondValid447 : DerivedMapBatches.Batch022.certificate1772.Valid := DerivedMapBatches.Batch022.certificate1772valid
theorem outputValid447 : DerivedMapBatches.Batch022.certificate1773.Valid := DerivedMapBatches.Batch022.certificate1773valid
theorem linkedComposition447 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1773.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1773.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1772.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1771.algebra.mat x) := by
  rw [firstLink447, secondLink447]
  exact DerivedMapBatches.Batch022.certificate1773valid.2 x
theorem firstLink448 : DerivedMapBatches.Batch022.certificate1774.algebra.mat = DerivedMapBatches.Batch022.certificate1776.a := by decide
theorem secondLink448 : DerivedMapBatches.Batch022.certificate1775.algebra.mat = DerivedMapBatches.Batch022.certificate1776.b := by decide
theorem firstValid448 : DerivedMapBatches.Batch022.certificate1774.Valid := DerivedMapBatches.Batch022.certificate1774valid
theorem secondValid448 : DerivedMapBatches.Batch022.certificate1775.Valid := DerivedMapBatches.Batch022.certificate1775valid
theorem outputValid448 : DerivedMapBatches.Batch022.certificate1776.Valid := DerivedMapBatches.Batch022.certificate1776valid
theorem linkedComposition448 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1776.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1776.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1775.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1774.algebra.mat x) := by
  rw [firstLink448, secondLink448]
  exact DerivedMapBatches.Batch022.certificate1776valid.2 x
theorem firstLink449 : DerivedMapBatches.Batch022.certificate1777.algebra.mat = DerivedMapBatches.Batch022.certificate1779.a := by decide
theorem secondLink449 : DerivedMapBatches.Batch022.certificate1778.algebra.mat = DerivedMapBatches.Batch022.certificate1779.b := by decide
theorem firstValid449 : DerivedMapBatches.Batch022.certificate1777.Valid := DerivedMapBatches.Batch022.certificate1777valid
theorem secondValid449 : DerivedMapBatches.Batch022.certificate1778.Valid := DerivedMapBatches.Batch022.certificate1778valid
theorem outputValid449 : DerivedMapBatches.Batch022.certificate1779.Valid := DerivedMapBatches.Batch022.certificate1779valid
theorem linkedComposition449 (x : LinearCertificates.Vec DerivedMapBatches.Batch022.certificate1779.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch022.certificate1779.c x = LinearCertificates.eval DerivedMapBatches.Batch022.certificate1778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch022.certificate1777.algebra.mat x) := by
  rw [firstLink449, secondLink449]
  exact DerivedMapBatches.Batch022.certificate1779valid.2 x
end DerivedLinkageBatches.Batch008
