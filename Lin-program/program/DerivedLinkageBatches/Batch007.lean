import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch016
import DerivedMapBatches.Batch017
import DerivedMapBatches.Batch019
import DerivedMapBatches.Batch020
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch007
theorem firstLink350 : DerivedMapBatches.Batch019.certificate1532.c = DerivedMapBatches.Batch019.certificate1553.a := by decide
theorem secondLink350 : DerivedMapBatches.Batch012.certificate969.algebra.mat = DerivedMapBatches.Batch019.certificate1553.b := by decide
theorem firstValid350 : DerivedMapBatches.Batch019.certificate1532.Valid := DerivedMapBatches.Batch019.certificate1532valid
theorem secondValid350 : DerivedMapBatches.Batch012.certificate969.Valid := DerivedMapBatches.Batch012.certificate969valid
theorem outputValid350 : DerivedMapBatches.Batch019.certificate1553.Valid := DerivedMapBatches.Batch019.certificate1553valid
theorem linkedComposition350 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1553.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1553.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1532.c x) := by
  rw [firstLink350, secondLink350]
  exact DerivedMapBatches.Batch019.certificate1553valid.2 x
theorem firstLink351 : DerivedMapBatches.Batch019.certificate1533.c = DerivedMapBatches.Batch019.certificate1554.a := by decide
theorem secondLink351 : DerivedMapBatches.Batch012.certificate975.algebra.mat = DerivedMapBatches.Batch019.certificate1554.b := by decide
theorem firstValid351 : DerivedMapBatches.Batch019.certificate1533.Valid := DerivedMapBatches.Batch019.certificate1533valid
theorem secondValid351 : DerivedMapBatches.Batch012.certificate975.Valid := DerivedMapBatches.Batch012.certificate975valid
theorem outputValid351 : DerivedMapBatches.Batch019.certificate1554.Valid := DerivedMapBatches.Batch019.certificate1554valid
theorem linkedComposition351 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1554.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1554.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1533.c x) := by
  rw [firstLink351, secondLink351]
  exact DerivedMapBatches.Batch019.certificate1554valid.2 x
theorem firstLink352 : DerivedMapBatches.Batch016.certificate1319.algebra.mat = DerivedMapBatches.Batch019.certificate1556.a := by decide
theorem secondLink352 : DerivedMapBatches.Batch019.certificate1555.algebra.mat = DerivedMapBatches.Batch019.certificate1556.b := by decide
theorem firstValid352 : DerivedMapBatches.Batch016.certificate1319.Valid := DerivedMapBatches.Batch016.certificate1319valid
theorem secondValid352 : DerivedMapBatches.Batch019.certificate1555.Valid := DerivedMapBatches.Batch019.certificate1555valid
theorem outputValid352 : DerivedMapBatches.Batch019.certificate1556.Valid := DerivedMapBatches.Batch019.certificate1556valid
theorem linkedComposition352 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1556.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1556.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1555.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1319.algebra.mat x) := by
  rw [firstLink352, secondLink352]
  exact DerivedMapBatches.Batch019.certificate1556valid.2 x
theorem firstLink353 : DerivedMapBatches.Batch016.certificate1322.algebra.mat = DerivedMapBatches.Batch019.certificate1558.a := by decide
theorem secondLink353 : DerivedMapBatches.Batch019.certificate1557.algebra.mat = DerivedMapBatches.Batch019.certificate1558.b := by decide
theorem firstValid353 : DerivedMapBatches.Batch016.certificate1322.Valid := DerivedMapBatches.Batch016.certificate1322valid
theorem secondValid353 : DerivedMapBatches.Batch019.certificate1557.Valid := DerivedMapBatches.Batch019.certificate1557valid
theorem outputValid353 : DerivedMapBatches.Batch019.certificate1558.Valid := DerivedMapBatches.Batch019.certificate1558valid
theorem linkedComposition353 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1558.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1558.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1557.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1322.algebra.mat x) := by
  rw [firstLink353, secondLink353]
  exact DerivedMapBatches.Batch019.certificate1558valid.2 x
theorem firstLink354 : DerivedMapBatches.Batch016.certificate1328.algebra.mat = DerivedMapBatches.Batch019.certificate1560.a := by decide
theorem secondLink354 : DerivedMapBatches.Batch019.certificate1559.algebra.mat = DerivedMapBatches.Batch019.certificate1560.b := by decide
theorem firstValid354 : DerivedMapBatches.Batch016.certificate1328.Valid := DerivedMapBatches.Batch016.certificate1328valid
theorem secondValid354 : DerivedMapBatches.Batch019.certificate1559.Valid := DerivedMapBatches.Batch019.certificate1559valid
theorem outputValid354 : DerivedMapBatches.Batch019.certificate1560.Valid := DerivedMapBatches.Batch019.certificate1560valid
theorem linkedComposition354 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1560.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1560.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1559.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1328.algebra.mat x) := by
  rw [firstLink354, secondLink354]
  exact DerivedMapBatches.Batch019.certificate1560valid.2 x
theorem firstLink355 : DerivedMapBatches.Batch019.certificate1561.algebra.mat = DerivedMapBatches.Batch019.certificate1563.a := by decide
theorem secondLink355 : DerivedMapBatches.Batch019.certificate1562.algebra.mat = DerivedMapBatches.Batch019.certificate1563.b := by decide
theorem firstValid355 : DerivedMapBatches.Batch019.certificate1561.Valid := DerivedMapBatches.Batch019.certificate1561valid
theorem secondValid355 : DerivedMapBatches.Batch019.certificate1562.Valid := DerivedMapBatches.Batch019.certificate1562valid
theorem outputValid355 : DerivedMapBatches.Batch019.certificate1563.Valid := DerivedMapBatches.Batch019.certificate1563valid
theorem linkedComposition355 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1563.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1563.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1561.algebra.mat x) := by
  rw [firstLink355, secondLink355]
  exact DerivedMapBatches.Batch019.certificate1563valid.2 x
theorem firstLink356 : DerivedMapBatches.Batch016.certificate1331.algebra.mat = DerivedMapBatches.Batch019.certificate1565.a := by decide
theorem secondLink356 : DerivedMapBatches.Batch019.certificate1564.algebra.mat = DerivedMapBatches.Batch019.certificate1565.b := by decide
theorem firstValid356 : DerivedMapBatches.Batch016.certificate1331.Valid := DerivedMapBatches.Batch016.certificate1331valid
theorem secondValid356 : DerivedMapBatches.Batch019.certificate1564.Valid := DerivedMapBatches.Batch019.certificate1564valid
theorem outputValid356 : DerivedMapBatches.Batch019.certificate1565.Valid := DerivedMapBatches.Batch019.certificate1565valid
theorem linkedComposition356 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1565.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1565.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1564.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1331.algebra.mat x) := by
  rw [firstLink356, secondLink356]
  exact DerivedMapBatches.Batch019.certificate1565valid.2 x
theorem firstLink357 : DerivedMapBatches.Batch016.certificate1337.algebra.mat = DerivedMapBatches.Batch019.certificate1567.a := by decide
theorem secondLink357 : DerivedMapBatches.Batch019.certificate1566.algebra.mat = DerivedMapBatches.Batch019.certificate1567.b := by decide
theorem firstValid357 : DerivedMapBatches.Batch016.certificate1337.Valid := DerivedMapBatches.Batch016.certificate1337valid
theorem secondValid357 : DerivedMapBatches.Batch019.certificate1566.Valid := DerivedMapBatches.Batch019.certificate1566valid
theorem outputValid357 : DerivedMapBatches.Batch019.certificate1567.Valid := DerivedMapBatches.Batch019.certificate1567valid
theorem linkedComposition357 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1567.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1567.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1566.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1337.algebra.mat x) := by
  rw [firstLink357, secondLink357]
  exact DerivedMapBatches.Batch019.certificate1567valid.2 x
theorem firstLink358 : DerivedMapBatches.Batch016.certificate1340.algebra.mat = DerivedMapBatches.Batch019.certificate1569.a := by decide
theorem secondLink358 : DerivedMapBatches.Batch019.certificate1568.algebra.mat = DerivedMapBatches.Batch019.certificate1569.b := by decide
theorem firstValid358 : DerivedMapBatches.Batch016.certificate1340.Valid := DerivedMapBatches.Batch016.certificate1340valid
theorem secondValid358 : DerivedMapBatches.Batch019.certificate1568.Valid := DerivedMapBatches.Batch019.certificate1568valid
theorem outputValid358 : DerivedMapBatches.Batch019.certificate1569.Valid := DerivedMapBatches.Batch019.certificate1569valid
theorem linkedComposition358 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1569.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1569.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1340.algebra.mat x) := by
  rw [firstLink358, secondLink358]
  exact DerivedMapBatches.Batch019.certificate1569valid.2 x
theorem firstLink359 : DerivedMapBatches.Batch016.certificate1343.algebra.mat = DerivedMapBatches.Batch019.certificate1571.a := by decide
theorem secondLink359 : DerivedMapBatches.Batch019.certificate1570.algebra.mat = DerivedMapBatches.Batch019.certificate1571.b := by decide
theorem firstValid359 : DerivedMapBatches.Batch016.certificate1343.Valid := DerivedMapBatches.Batch016.certificate1343valid
theorem secondValid359 : DerivedMapBatches.Batch019.certificate1570.Valid := DerivedMapBatches.Batch019.certificate1570valid
theorem outputValid359 : DerivedMapBatches.Batch019.certificate1571.Valid := DerivedMapBatches.Batch019.certificate1571valid
theorem linkedComposition359 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1571.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1571.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1570.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1343.algebra.mat x) := by
  rw [firstLink359, secondLink359]
  exact DerivedMapBatches.Batch019.certificate1571valid.2 x
theorem firstLink360 : DerivedMapBatches.Batch016.certificate1346.algebra.mat = DerivedMapBatches.Batch019.certificate1573.a := by decide
theorem secondLink360 : DerivedMapBatches.Batch019.certificate1572.algebra.mat = DerivedMapBatches.Batch019.certificate1573.b := by decide
theorem firstValid360 : DerivedMapBatches.Batch016.certificate1346.Valid := DerivedMapBatches.Batch016.certificate1346valid
theorem secondValid360 : DerivedMapBatches.Batch019.certificate1572.Valid := DerivedMapBatches.Batch019.certificate1572valid
theorem outputValid360 : DerivedMapBatches.Batch019.certificate1573.Valid := DerivedMapBatches.Batch019.certificate1573valid
theorem linkedComposition360 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1573.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1573.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1572.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1346.algebra.mat x) := by
  rw [firstLink360, secondLink360]
  exact DerivedMapBatches.Batch019.certificate1573valid.2 x
theorem firstLink361 : DerivedMapBatches.Batch016.certificate1349.algebra.mat = DerivedMapBatches.Batch019.certificate1575.a := by decide
theorem secondLink361 : DerivedMapBatches.Batch019.certificate1574.algebra.mat = DerivedMapBatches.Batch019.certificate1575.b := by decide
theorem firstValid361 : DerivedMapBatches.Batch016.certificate1349.Valid := DerivedMapBatches.Batch016.certificate1349valid
theorem secondValid361 : DerivedMapBatches.Batch019.certificate1574.Valid := DerivedMapBatches.Batch019.certificate1574valid
theorem outputValid361 : DerivedMapBatches.Batch019.certificate1575.Valid := DerivedMapBatches.Batch019.certificate1575valid
theorem linkedComposition361 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1575.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1575.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1349.algebra.mat x) := by
  rw [firstLink361, secondLink361]
  exact DerivedMapBatches.Batch019.certificate1575valid.2 x
theorem firstLink362 : DerivedMapBatches.Batch019.certificate1576.algebra.mat = DerivedMapBatches.Batch019.certificate1578.a := by decide
theorem secondLink362 : DerivedMapBatches.Batch019.certificate1577.algebra.mat = DerivedMapBatches.Batch019.certificate1578.b := by decide
theorem firstValid362 : DerivedMapBatches.Batch019.certificate1576.Valid := DerivedMapBatches.Batch019.certificate1576valid
theorem secondValid362 : DerivedMapBatches.Batch019.certificate1577.Valid := DerivedMapBatches.Batch019.certificate1577valid
theorem outputValid362 : DerivedMapBatches.Batch019.certificate1578.Valid := DerivedMapBatches.Batch019.certificate1578valid
theorem linkedComposition362 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1578.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1578.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1577.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1576.algebra.mat x) := by
  rw [firstLink362, secondLink362]
  exact DerivedMapBatches.Batch019.certificate1578valid.2 x
theorem firstLink363 : DerivedMapBatches.Batch019.certificate1579.algebra.mat = DerivedMapBatches.Batch019.certificate1581.a := by decide
theorem secondLink363 : DerivedMapBatches.Batch019.certificate1580.algebra.mat = DerivedMapBatches.Batch019.certificate1581.b := by decide
theorem firstValid363 : DerivedMapBatches.Batch019.certificate1579.Valid := DerivedMapBatches.Batch019.certificate1579valid
theorem secondValid363 : DerivedMapBatches.Batch019.certificate1580.Valid := DerivedMapBatches.Batch019.certificate1580valid
theorem outputValid363 : DerivedMapBatches.Batch019.certificate1581.Valid := DerivedMapBatches.Batch019.certificate1581valid
theorem linkedComposition363 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1581.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1581.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1579.algebra.mat x) := by
  rw [firstLink363, secondLink363]
  exact DerivedMapBatches.Batch019.certificate1581valid.2 x
theorem firstLink364 : DerivedMapBatches.Batch016.certificate1355.algebra.mat = DerivedMapBatches.Batch019.certificate1583.a := by decide
theorem secondLink364 : DerivedMapBatches.Batch019.certificate1582.algebra.mat = DerivedMapBatches.Batch019.certificate1583.b := by decide
theorem firstValid364 : DerivedMapBatches.Batch016.certificate1355.Valid := DerivedMapBatches.Batch016.certificate1355valid
theorem secondValid364 : DerivedMapBatches.Batch019.certificate1582.Valid := DerivedMapBatches.Batch019.certificate1582valid
theorem outputValid364 : DerivedMapBatches.Batch019.certificate1583.Valid := DerivedMapBatches.Batch019.certificate1583valid
theorem linkedComposition364 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1583.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1583.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1582.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1355.algebra.mat x) := by
  rw [firstLink364, secondLink364]
  exact DerivedMapBatches.Batch019.certificate1583valid.2 x
theorem firstLink365 : DerivedMapBatches.Batch016.certificate1358.algebra.mat = DerivedMapBatches.Batch019.certificate1585.a := by decide
theorem secondLink365 : DerivedMapBatches.Batch019.certificate1584.algebra.mat = DerivedMapBatches.Batch019.certificate1585.b := by decide
theorem firstValid365 : DerivedMapBatches.Batch016.certificate1358.Valid := DerivedMapBatches.Batch016.certificate1358valid
theorem secondValid365 : DerivedMapBatches.Batch019.certificate1584.Valid := DerivedMapBatches.Batch019.certificate1584valid
theorem outputValid365 : DerivedMapBatches.Batch019.certificate1585.Valid := DerivedMapBatches.Batch019.certificate1585valid
theorem linkedComposition365 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1585.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1585.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1584.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1358.algebra.mat x) := by
  rw [firstLink365, secondLink365]
  exact DerivedMapBatches.Batch019.certificate1585valid.2 x
theorem firstLink366 : DerivedMapBatches.Batch019.certificate1586.algebra.mat = DerivedMapBatches.Batch019.certificate1588.a := by decide
theorem secondLink366 : DerivedMapBatches.Batch019.certificate1587.algebra.mat = DerivedMapBatches.Batch019.certificate1588.b := by decide
theorem firstValid366 : DerivedMapBatches.Batch019.certificate1586.Valid := DerivedMapBatches.Batch019.certificate1586valid
theorem secondValid366 : DerivedMapBatches.Batch019.certificate1587.Valid := DerivedMapBatches.Batch019.certificate1587valid
theorem outputValid366 : DerivedMapBatches.Batch019.certificate1588.Valid := DerivedMapBatches.Batch019.certificate1588valid
theorem linkedComposition366 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1588.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1588.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1587.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1586.algebra.mat x) := by
  rw [firstLink366, secondLink366]
  exact DerivedMapBatches.Batch019.certificate1588valid.2 x
theorem firstLink367 : DerivedMapBatches.Batch017.certificate1361.algebra.mat = DerivedMapBatches.Batch019.certificate1590.a := by decide
theorem secondLink367 : DerivedMapBatches.Batch019.certificate1589.algebra.mat = DerivedMapBatches.Batch019.certificate1590.b := by decide
theorem firstValid367 : DerivedMapBatches.Batch017.certificate1361.Valid := DerivedMapBatches.Batch017.certificate1361valid
theorem secondValid367 : DerivedMapBatches.Batch019.certificate1589.Valid := DerivedMapBatches.Batch019.certificate1589valid
theorem outputValid367 : DerivedMapBatches.Batch019.certificate1590.Valid := DerivedMapBatches.Batch019.certificate1590valid
theorem linkedComposition367 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1590.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1590.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1589.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1361.algebra.mat x) := by
  rw [firstLink367, secondLink367]
  exact DerivedMapBatches.Batch019.certificate1590valid.2 x
theorem firstLink368 : DerivedMapBatches.Batch019.certificate1591.algebra.mat = DerivedMapBatches.Batch019.certificate1593.a := by decide
theorem secondLink368 : DerivedMapBatches.Batch019.certificate1592.algebra.mat = DerivedMapBatches.Batch019.certificate1593.b := by decide
theorem firstValid368 : DerivedMapBatches.Batch019.certificate1591.Valid := DerivedMapBatches.Batch019.certificate1591valid
theorem secondValid368 : DerivedMapBatches.Batch019.certificate1592.Valid := DerivedMapBatches.Batch019.certificate1592valid
theorem outputValid368 : DerivedMapBatches.Batch019.certificate1593.Valid := DerivedMapBatches.Batch019.certificate1593valid
theorem linkedComposition368 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1593.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1593.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1592.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1591.algebra.mat x) := by
  rw [firstLink368, secondLink368]
  exact DerivedMapBatches.Batch019.certificate1593valid.2 x
theorem firstLink369 : DerivedMapBatches.Batch019.certificate1594.algebra.mat = DerivedMapBatches.Batch019.certificate1596.a := by decide
theorem secondLink369 : DerivedMapBatches.Batch019.certificate1595.algebra.mat = DerivedMapBatches.Batch019.certificate1596.b := by decide
theorem firstValid369 : DerivedMapBatches.Batch019.certificate1594.Valid := DerivedMapBatches.Batch019.certificate1594valid
theorem secondValid369 : DerivedMapBatches.Batch019.certificate1595.Valid := DerivedMapBatches.Batch019.certificate1595valid
theorem outputValid369 : DerivedMapBatches.Batch019.certificate1596.Valid := DerivedMapBatches.Batch019.certificate1596valid
theorem linkedComposition369 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1596.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1596.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1595.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1594.algebra.mat x) := by
  rw [firstLink369, secondLink369]
  exact DerivedMapBatches.Batch019.certificate1596valid.2 x
theorem firstLink370 : DerivedMapBatches.Batch019.certificate1597.algebra.mat = DerivedMapBatches.Batch019.certificate1599.a := by decide
theorem secondLink370 : DerivedMapBatches.Batch019.certificate1598.algebra.mat = DerivedMapBatches.Batch019.certificate1599.b := by decide
theorem firstValid370 : DerivedMapBatches.Batch019.certificate1597.Valid := DerivedMapBatches.Batch019.certificate1597valid
theorem secondValid370 : DerivedMapBatches.Batch019.certificate1598.Valid := DerivedMapBatches.Batch019.certificate1598valid
theorem outputValid370 : DerivedMapBatches.Batch019.certificate1599.Valid := DerivedMapBatches.Batch019.certificate1599valid
theorem linkedComposition370 (x : LinearCertificates.Vec DerivedMapBatches.Batch019.certificate1599.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch019.certificate1599.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1598.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch019.certificate1597.algebra.mat x) := by
  rw [firstLink370, secondLink370]
  exact DerivedMapBatches.Batch019.certificate1599valid.2 x
theorem firstLink371 : DerivedMapBatches.Batch020.certificate1600.algebra.mat = DerivedMapBatches.Batch020.certificate1602.a := by decide
theorem secondLink371 : DerivedMapBatches.Batch020.certificate1601.algebra.mat = DerivedMapBatches.Batch020.certificate1602.b := by decide
theorem firstValid371 : DerivedMapBatches.Batch020.certificate1600.Valid := DerivedMapBatches.Batch020.certificate1600valid
theorem secondValid371 : DerivedMapBatches.Batch020.certificate1601.Valid := DerivedMapBatches.Batch020.certificate1601valid
theorem outputValid371 : DerivedMapBatches.Batch020.certificate1602.Valid := DerivedMapBatches.Batch020.certificate1602valid
theorem linkedComposition371 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1602.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1602.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1601.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1600.algebra.mat x) := by
  rw [firstLink371, secondLink371]
  exact DerivedMapBatches.Batch020.certificate1602valid.2 x
theorem firstLink372 : DerivedMapBatches.Batch020.certificate1603.algebra.mat = DerivedMapBatches.Batch020.certificate1605.a := by decide
theorem secondLink372 : DerivedMapBatches.Batch020.certificate1604.algebra.mat = DerivedMapBatches.Batch020.certificate1605.b := by decide
theorem firstValid372 : DerivedMapBatches.Batch020.certificate1603.Valid := DerivedMapBatches.Batch020.certificate1603valid
theorem secondValid372 : DerivedMapBatches.Batch020.certificate1604.Valid := DerivedMapBatches.Batch020.certificate1604valid
theorem outputValid372 : DerivedMapBatches.Batch020.certificate1605.Valid := DerivedMapBatches.Batch020.certificate1605valid
theorem linkedComposition372 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1605.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1605.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1604.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1603.algebra.mat x) := by
  rw [firstLink372, secondLink372]
  exact DerivedMapBatches.Batch020.certificate1605valid.2 x
theorem firstLink373 : DerivedMapBatches.Batch016.certificate1318.algebra.mat = DerivedMapBatches.Batch020.certificate1606.a := by decide
theorem secondLink373 : DerivedMapBatches.Batch019.certificate1556.c = DerivedMapBatches.Batch020.certificate1606.b := by decide
theorem firstValid373 : DerivedMapBatches.Batch016.certificate1318.Valid := DerivedMapBatches.Batch016.certificate1318valid
theorem secondValid373 : DerivedMapBatches.Batch019.certificate1556.Valid := DerivedMapBatches.Batch019.certificate1556valid
theorem outputValid373 : DerivedMapBatches.Batch020.certificate1606.Valid := DerivedMapBatches.Batch020.certificate1606valid
theorem linkedComposition373 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1606.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1606.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1556.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1318.algebra.mat x) := by
  rw [firstLink373, secondLink373]
  exact DerivedMapBatches.Batch020.certificate1606valid.2 x
theorem firstLink374 : DerivedMapBatches.Batch016.certificate1321.algebra.mat = DerivedMapBatches.Batch020.certificate1607.a := by decide
theorem secondLink374 : DerivedMapBatches.Batch019.certificate1558.c = DerivedMapBatches.Batch020.certificate1607.b := by decide
theorem firstValid374 : DerivedMapBatches.Batch016.certificate1321.Valid := DerivedMapBatches.Batch016.certificate1321valid
theorem secondValid374 : DerivedMapBatches.Batch019.certificate1558.Valid := DerivedMapBatches.Batch019.certificate1558valid
theorem outputValid374 : DerivedMapBatches.Batch020.certificate1607.Valid := DerivedMapBatches.Batch020.certificate1607valid
theorem linkedComposition374 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1607.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1607.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1558.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1321.algebra.mat x) := by
  rw [firstLink374, secondLink374]
  exact DerivedMapBatches.Batch020.certificate1607valid.2 x
theorem firstLink375 : DerivedMapBatches.Batch016.certificate1325.algebra.mat = DerivedMapBatches.Batch020.certificate1609.a := by decide
theorem secondLink375 : DerivedMapBatches.Batch020.certificate1608.algebra.mat = DerivedMapBatches.Batch020.certificate1609.b := by decide
theorem firstValid375 : DerivedMapBatches.Batch016.certificate1325.Valid := DerivedMapBatches.Batch016.certificate1325valid
theorem secondValid375 : DerivedMapBatches.Batch020.certificate1608.Valid := DerivedMapBatches.Batch020.certificate1608valid
theorem outputValid375 : DerivedMapBatches.Batch020.certificate1609.Valid := DerivedMapBatches.Batch020.certificate1609valid
theorem linkedComposition375 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1609.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1609.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1608.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1325.algebra.mat x) := by
  rw [firstLink375, secondLink375]
  exact DerivedMapBatches.Batch020.certificate1609valid.2 x
theorem firstLink376 : DerivedMapBatches.Batch016.certificate1324.algebra.mat = DerivedMapBatches.Batch020.certificate1610.a := by decide
theorem secondLink376 : DerivedMapBatches.Batch020.certificate1609.c = DerivedMapBatches.Batch020.certificate1610.b := by decide
theorem firstValid376 : DerivedMapBatches.Batch016.certificate1324.Valid := DerivedMapBatches.Batch016.certificate1324valid
theorem secondValid376 : DerivedMapBatches.Batch020.certificate1609.Valid := DerivedMapBatches.Batch020.certificate1609valid
theorem outputValid376 : DerivedMapBatches.Batch020.certificate1610.Valid := DerivedMapBatches.Batch020.certificate1610valid
theorem linkedComposition376 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1610.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1610.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1609.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1324.algebra.mat x) := by
  rw [firstLink376, secondLink376]
  exact DerivedMapBatches.Batch020.certificate1610valid.2 x
theorem firstLink377 : DerivedMapBatches.Batch016.certificate1327.algebra.mat = DerivedMapBatches.Batch020.certificate1611.a := by decide
theorem secondLink377 : DerivedMapBatches.Batch019.certificate1560.c = DerivedMapBatches.Batch020.certificate1611.b := by decide
theorem firstValid377 : DerivedMapBatches.Batch016.certificate1327.Valid := DerivedMapBatches.Batch016.certificate1327valid
theorem secondValid377 : DerivedMapBatches.Batch019.certificate1560.Valid := DerivedMapBatches.Batch019.certificate1560valid
theorem outputValid377 : DerivedMapBatches.Batch020.certificate1611.Valid := DerivedMapBatches.Batch020.certificate1611valid
theorem linkedComposition377 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1611.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1611.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1560.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1327.algebra.mat x) := by
  rw [firstLink377, secondLink377]
  exact DerivedMapBatches.Batch020.certificate1611valid.2 x
theorem firstLink378 : DerivedMapBatches.Batch016.certificate1330.algebra.mat = DerivedMapBatches.Batch020.certificate1612.a := by decide
theorem secondLink378 : DerivedMapBatches.Batch019.certificate1565.c = DerivedMapBatches.Batch020.certificate1612.b := by decide
theorem firstValid378 : DerivedMapBatches.Batch016.certificate1330.Valid := DerivedMapBatches.Batch016.certificate1330valid
theorem secondValid378 : DerivedMapBatches.Batch019.certificate1565.Valid := DerivedMapBatches.Batch019.certificate1565valid
theorem outputValid378 : DerivedMapBatches.Batch020.certificate1612.Valid := DerivedMapBatches.Batch020.certificate1612valid
theorem linkedComposition378 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1612.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1612.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1565.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1330.algebra.mat x) := by
  rw [firstLink378, secondLink378]
  exact DerivedMapBatches.Batch020.certificate1612valid.2 x
theorem firstLink379 : DerivedMapBatches.Batch016.certificate1334.algebra.mat = DerivedMapBatches.Batch020.certificate1614.a := by decide
theorem secondLink379 : DerivedMapBatches.Batch020.certificate1613.algebra.mat = DerivedMapBatches.Batch020.certificate1614.b := by decide
theorem firstValid379 : DerivedMapBatches.Batch016.certificate1334.Valid := DerivedMapBatches.Batch016.certificate1334valid
theorem secondValid379 : DerivedMapBatches.Batch020.certificate1613.Valid := DerivedMapBatches.Batch020.certificate1613valid
theorem outputValid379 : DerivedMapBatches.Batch020.certificate1614.Valid := DerivedMapBatches.Batch020.certificate1614valid
theorem linkedComposition379 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1614.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1614.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1613.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1334.algebra.mat x) := by
  rw [firstLink379, secondLink379]
  exact DerivedMapBatches.Batch020.certificate1614valid.2 x
theorem firstLink380 : DerivedMapBatches.Batch016.certificate1333.algebra.mat = DerivedMapBatches.Batch020.certificate1615.a := by decide
theorem secondLink380 : DerivedMapBatches.Batch020.certificate1614.c = DerivedMapBatches.Batch020.certificate1615.b := by decide
theorem firstValid380 : DerivedMapBatches.Batch016.certificate1333.Valid := DerivedMapBatches.Batch016.certificate1333valid
theorem secondValid380 : DerivedMapBatches.Batch020.certificate1614.Valid := DerivedMapBatches.Batch020.certificate1614valid
theorem outputValid380 : DerivedMapBatches.Batch020.certificate1615.Valid := DerivedMapBatches.Batch020.certificate1615valid
theorem linkedComposition380 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1615.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1615.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1614.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1333.algebra.mat x) := by
  rw [firstLink380, secondLink380]
  exact DerivedMapBatches.Batch020.certificate1615valid.2 x
theorem firstLink381 : DerivedMapBatches.Batch016.certificate1336.algebra.mat = DerivedMapBatches.Batch020.certificate1616.a := by decide
theorem secondLink381 : DerivedMapBatches.Batch019.certificate1567.c = DerivedMapBatches.Batch020.certificate1616.b := by decide
theorem firstValid381 : DerivedMapBatches.Batch016.certificate1336.Valid := DerivedMapBatches.Batch016.certificate1336valid
theorem secondValid381 : DerivedMapBatches.Batch019.certificate1567.Valid := DerivedMapBatches.Batch019.certificate1567valid
theorem outputValid381 : DerivedMapBatches.Batch020.certificate1616.Valid := DerivedMapBatches.Batch020.certificate1616valid
theorem linkedComposition381 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1616.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1616.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1567.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1336.algebra.mat x) := by
  rw [firstLink381, secondLink381]
  exact DerivedMapBatches.Batch020.certificate1616valid.2 x
theorem firstLink382 : DerivedMapBatches.Batch016.certificate1339.algebra.mat = DerivedMapBatches.Batch020.certificate1617.a := by decide
theorem secondLink382 : DerivedMapBatches.Batch019.certificate1569.c = DerivedMapBatches.Batch020.certificate1617.b := by decide
theorem firstValid382 : DerivedMapBatches.Batch016.certificate1339.Valid := DerivedMapBatches.Batch016.certificate1339valid
theorem secondValid382 : DerivedMapBatches.Batch019.certificate1569.Valid := DerivedMapBatches.Batch019.certificate1569valid
theorem outputValid382 : DerivedMapBatches.Batch020.certificate1617.Valid := DerivedMapBatches.Batch020.certificate1617valid
theorem linkedComposition382 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1617.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1617.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1569.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1339.algebra.mat x) := by
  rw [firstLink382, secondLink382]
  exact DerivedMapBatches.Batch020.certificate1617valid.2 x
theorem firstLink383 : DerivedMapBatches.Batch016.certificate1342.algebra.mat = DerivedMapBatches.Batch020.certificate1618.a := by decide
theorem secondLink383 : DerivedMapBatches.Batch019.certificate1571.c = DerivedMapBatches.Batch020.certificate1618.b := by decide
theorem firstValid383 : DerivedMapBatches.Batch016.certificate1342.Valid := DerivedMapBatches.Batch016.certificate1342valid
theorem secondValid383 : DerivedMapBatches.Batch019.certificate1571.Valid := DerivedMapBatches.Batch019.certificate1571valid
theorem outputValid383 : DerivedMapBatches.Batch020.certificate1618.Valid := DerivedMapBatches.Batch020.certificate1618valid
theorem linkedComposition383 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1618.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1618.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1571.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1342.algebra.mat x) := by
  rw [firstLink383, secondLink383]
  exact DerivedMapBatches.Batch020.certificate1618valid.2 x
theorem firstLink384 : DerivedMapBatches.Batch016.certificate1345.algebra.mat = DerivedMapBatches.Batch020.certificate1619.a := by decide
theorem secondLink384 : DerivedMapBatches.Batch019.certificate1573.c = DerivedMapBatches.Batch020.certificate1619.b := by decide
theorem firstValid384 : DerivedMapBatches.Batch016.certificate1345.Valid := DerivedMapBatches.Batch016.certificate1345valid
theorem secondValid384 : DerivedMapBatches.Batch019.certificate1573.Valid := DerivedMapBatches.Batch019.certificate1573valid
theorem outputValid384 : DerivedMapBatches.Batch020.certificate1619.Valid := DerivedMapBatches.Batch020.certificate1619valid
theorem linkedComposition384 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1619.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1619.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1573.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1345.algebra.mat x) := by
  rw [firstLink384, secondLink384]
  exact DerivedMapBatches.Batch020.certificate1619valid.2 x
theorem firstLink385 : DerivedMapBatches.Batch016.certificate1348.algebra.mat = DerivedMapBatches.Batch020.certificate1620.a := by decide
theorem secondLink385 : DerivedMapBatches.Batch019.certificate1575.c = DerivedMapBatches.Batch020.certificate1620.b := by decide
theorem firstValid385 : DerivedMapBatches.Batch016.certificate1348.Valid := DerivedMapBatches.Batch016.certificate1348valid
theorem secondValid385 : DerivedMapBatches.Batch019.certificate1575.Valid := DerivedMapBatches.Batch019.certificate1575valid
theorem outputValid385 : DerivedMapBatches.Batch020.certificate1620.Valid := DerivedMapBatches.Batch020.certificate1620valid
theorem linkedComposition385 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1620.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1620.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1575.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1348.algebra.mat x) := by
  rw [firstLink385, secondLink385]
  exact DerivedMapBatches.Batch020.certificate1620valid.2 x
theorem firstLink386 : DerivedMapBatches.Batch016.certificate1352.algebra.mat = DerivedMapBatches.Batch020.certificate1622.a := by decide
theorem secondLink386 : DerivedMapBatches.Batch020.certificate1621.algebra.mat = DerivedMapBatches.Batch020.certificate1622.b := by decide
theorem firstValid386 : DerivedMapBatches.Batch016.certificate1352.Valid := DerivedMapBatches.Batch016.certificate1352valid
theorem secondValid386 : DerivedMapBatches.Batch020.certificate1621.Valid := DerivedMapBatches.Batch020.certificate1621valid
theorem outputValid386 : DerivedMapBatches.Batch020.certificate1622.Valid := DerivedMapBatches.Batch020.certificate1622valid
theorem linkedComposition386 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1622.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1622.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1621.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1352.algebra.mat x) := by
  rw [firstLink386, secondLink386]
  exact DerivedMapBatches.Batch020.certificate1622valid.2 x
theorem firstLink387 : DerivedMapBatches.Batch016.certificate1351.algebra.mat = DerivedMapBatches.Batch020.certificate1623.a := by decide
theorem secondLink387 : DerivedMapBatches.Batch020.certificate1622.c = DerivedMapBatches.Batch020.certificate1623.b := by decide
theorem firstValid387 : DerivedMapBatches.Batch016.certificate1351.Valid := DerivedMapBatches.Batch016.certificate1351valid
theorem secondValid387 : DerivedMapBatches.Batch020.certificate1622.Valid := DerivedMapBatches.Batch020.certificate1622valid
theorem outputValid387 : DerivedMapBatches.Batch020.certificate1623.Valid := DerivedMapBatches.Batch020.certificate1623valid
theorem linkedComposition387 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1623.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1623.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1622.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1351.algebra.mat x) := by
  rw [firstLink387, secondLink387]
  exact DerivedMapBatches.Batch020.certificate1623valid.2 x
theorem firstLink388 : DerivedMapBatches.Batch016.certificate1354.algebra.mat = DerivedMapBatches.Batch020.certificate1624.a := by decide
theorem secondLink388 : DerivedMapBatches.Batch019.certificate1583.c = DerivedMapBatches.Batch020.certificate1624.b := by decide
theorem firstValid388 : DerivedMapBatches.Batch016.certificate1354.Valid := DerivedMapBatches.Batch016.certificate1354valid
theorem secondValid388 : DerivedMapBatches.Batch019.certificate1583.Valid := DerivedMapBatches.Batch019.certificate1583valid
theorem outputValid388 : DerivedMapBatches.Batch020.certificate1624.Valid := DerivedMapBatches.Batch020.certificate1624valid
theorem linkedComposition388 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1624.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1624.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1583.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1354.algebra.mat x) := by
  rw [firstLink388, secondLink388]
  exact DerivedMapBatches.Batch020.certificate1624valid.2 x
theorem firstLink389 : DerivedMapBatches.Batch016.certificate1357.algebra.mat = DerivedMapBatches.Batch020.certificate1625.a := by decide
theorem secondLink389 : DerivedMapBatches.Batch019.certificate1585.c = DerivedMapBatches.Batch020.certificate1625.b := by decide
theorem firstValid389 : DerivedMapBatches.Batch016.certificate1357.Valid := DerivedMapBatches.Batch016.certificate1357valid
theorem secondValid389 : DerivedMapBatches.Batch019.certificate1585.Valid := DerivedMapBatches.Batch019.certificate1585valid
theorem outputValid389 : DerivedMapBatches.Batch020.certificate1625.Valid := DerivedMapBatches.Batch020.certificate1625valid
theorem linkedComposition389 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1625.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1625.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1585.c (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1357.algebra.mat x) := by
  rw [firstLink389, secondLink389]
  exact DerivedMapBatches.Batch020.certificate1625valid.2 x
theorem firstLink390 : DerivedMapBatches.Batch017.certificate1360.algebra.mat = DerivedMapBatches.Batch020.certificate1626.a := by decide
theorem secondLink390 : DerivedMapBatches.Batch019.certificate1590.c = DerivedMapBatches.Batch020.certificate1626.b := by decide
theorem firstValid390 : DerivedMapBatches.Batch017.certificate1360.Valid := DerivedMapBatches.Batch017.certificate1360valid
theorem secondValid390 : DerivedMapBatches.Batch019.certificate1590.Valid := DerivedMapBatches.Batch019.certificate1590valid
theorem outputValid390 : DerivedMapBatches.Batch020.certificate1626.Valid := DerivedMapBatches.Batch020.certificate1626valid
theorem linkedComposition390 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1626.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1626.c x = LinearCertificates.eval DerivedMapBatches.Batch019.certificate1590.c (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1360.algebra.mat x) := by
  rw [firstLink390, secondLink390]
  exact DerivedMapBatches.Batch020.certificate1626valid.2 x
theorem firstLink391 : DerivedMapBatches.Batch020.certificate1627.algebra.mat = DerivedMapBatches.Batch020.certificate1629.a := by decide
theorem secondLink391 : DerivedMapBatches.Batch020.certificate1628.algebra.mat = DerivedMapBatches.Batch020.certificate1629.b := by decide
theorem firstValid391 : DerivedMapBatches.Batch020.certificate1627.Valid := DerivedMapBatches.Batch020.certificate1627valid
theorem secondValid391 : DerivedMapBatches.Batch020.certificate1628.Valid := DerivedMapBatches.Batch020.certificate1628valid
theorem outputValid391 : DerivedMapBatches.Batch020.certificate1629.Valid := DerivedMapBatches.Batch020.certificate1629valid
theorem linkedComposition391 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1629.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1629.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1628.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1627.algebra.mat x) := by
  rw [firstLink391, secondLink391]
  exact DerivedMapBatches.Batch020.certificate1629valid.2 x
theorem firstLink392 : DerivedMapBatches.Batch020.certificate1630.algebra.mat = DerivedMapBatches.Batch020.certificate1632.a := by decide
theorem secondLink392 : DerivedMapBatches.Batch020.certificate1631.algebra.mat = DerivedMapBatches.Batch020.certificate1632.b := by decide
theorem firstValid392 : DerivedMapBatches.Batch020.certificate1630.Valid := DerivedMapBatches.Batch020.certificate1630valid
theorem secondValid392 : DerivedMapBatches.Batch020.certificate1631.Valid := DerivedMapBatches.Batch020.certificate1631valid
theorem outputValid392 : DerivedMapBatches.Batch020.certificate1632.Valid := DerivedMapBatches.Batch020.certificate1632valid
theorem linkedComposition392 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1632.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1632.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1631.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1630.algebra.mat x) := by
  rw [firstLink392, secondLink392]
  exact DerivedMapBatches.Batch020.certificate1632valid.2 x
theorem firstLink393 : DerivedMapBatches.Batch013.certificate1056.algebra.mat = DerivedMapBatches.Batch020.certificate1633.a := by decide
theorem secondLink393 : DerivedMapBatches.Batch014.certificate1130.algebra.mat = DerivedMapBatches.Batch020.certificate1633.b := by decide
theorem firstValid393 : DerivedMapBatches.Batch013.certificate1056.Valid := DerivedMapBatches.Batch013.certificate1056valid
theorem secondValid393 : DerivedMapBatches.Batch014.certificate1130.Valid := DerivedMapBatches.Batch014.certificate1130valid
theorem outputValid393 : DerivedMapBatches.Batch020.certificate1633.Valid := DerivedMapBatches.Batch020.certificate1633valid
theorem linkedComposition393 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1633.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1633.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat x) := by
  rw [firstLink393, secondLink393]
  exact DerivedMapBatches.Batch020.certificate1633valid.2 x
theorem firstLink394 : DerivedMapBatches.Batch020.certificate1634.algebra.mat = DerivedMapBatches.Batch020.certificate1636.a := by decide
theorem secondLink394 : DerivedMapBatches.Batch020.certificate1635.algebra.mat = DerivedMapBatches.Batch020.certificate1636.b := by decide
theorem firstValid394 : DerivedMapBatches.Batch020.certificate1634.Valid := DerivedMapBatches.Batch020.certificate1634valid
theorem secondValid394 : DerivedMapBatches.Batch020.certificate1635.Valid := DerivedMapBatches.Batch020.certificate1635valid
theorem outputValid394 : DerivedMapBatches.Batch020.certificate1636.Valid := DerivedMapBatches.Batch020.certificate1636valid
theorem linkedComposition394 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1636.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1636.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1635.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1634.algebra.mat x) := by
  rw [firstLink394, secondLink394]
  exact DerivedMapBatches.Batch020.certificate1636valid.2 x
theorem firstLink395 : DerivedMapBatches.Batch013.certificate1059.algebra.mat = DerivedMapBatches.Batch020.certificate1637.a := by decide
theorem secondLink395 : DerivedMapBatches.Batch014.certificate1132.algebra.mat = DerivedMapBatches.Batch020.certificate1637.b := by decide
theorem firstValid395 : DerivedMapBatches.Batch013.certificate1059.Valid := DerivedMapBatches.Batch013.certificate1059valid
theorem secondValid395 : DerivedMapBatches.Batch014.certificate1132.Valid := DerivedMapBatches.Batch014.certificate1132valid
theorem outputValid395 : DerivedMapBatches.Batch020.certificate1637.Valid := DerivedMapBatches.Batch020.certificate1637valid
theorem linkedComposition395 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1637.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1637.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat x) := by
  rw [firstLink395, secondLink395]
  exact DerivedMapBatches.Batch020.certificate1637valid.2 x
theorem firstLink396 : DerivedMapBatches.Batch020.certificate1638.algebra.mat = DerivedMapBatches.Batch020.certificate1640.a := by decide
theorem secondLink396 : DerivedMapBatches.Batch020.certificate1639.algebra.mat = DerivedMapBatches.Batch020.certificate1640.b := by decide
theorem firstValid396 : DerivedMapBatches.Batch020.certificate1638.Valid := DerivedMapBatches.Batch020.certificate1638valid
theorem secondValid396 : DerivedMapBatches.Batch020.certificate1639.Valid := DerivedMapBatches.Batch020.certificate1639valid
theorem outputValid396 : DerivedMapBatches.Batch020.certificate1640.Valid := DerivedMapBatches.Batch020.certificate1640valid
theorem linkedComposition396 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1640.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1640.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1638.algebra.mat x) := by
  rw [firstLink396, secondLink396]
  exact DerivedMapBatches.Batch020.certificate1640valid.2 x
theorem firstLink397 : DerivedMapBatches.Batch020.certificate1641.algebra.mat = DerivedMapBatches.Batch020.certificate1643.a := by decide
theorem secondLink397 : DerivedMapBatches.Batch020.certificate1642.algebra.mat = DerivedMapBatches.Batch020.certificate1643.b := by decide
theorem firstValid397 : DerivedMapBatches.Batch020.certificate1641.Valid := DerivedMapBatches.Batch020.certificate1641valid
theorem secondValid397 : DerivedMapBatches.Batch020.certificate1642.Valid := DerivedMapBatches.Batch020.certificate1642valid
theorem outputValid397 : DerivedMapBatches.Batch020.certificate1643.Valid := DerivedMapBatches.Batch020.certificate1643valid
theorem linkedComposition397 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1643.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1643.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1641.algebra.mat x) := by
  rw [firstLink397, secondLink397]
  exact DerivedMapBatches.Batch020.certificate1643valid.2 x
theorem firstLink398 : DerivedMapBatches.Batch020.certificate1644.algebra.mat = DerivedMapBatches.Batch020.certificate1646.a := by decide
theorem secondLink398 : DerivedMapBatches.Batch020.certificate1645.algebra.mat = DerivedMapBatches.Batch020.certificate1646.b := by decide
theorem firstValid398 : DerivedMapBatches.Batch020.certificate1644.Valid := DerivedMapBatches.Batch020.certificate1644valid
theorem secondValid398 : DerivedMapBatches.Batch020.certificate1645.Valid := DerivedMapBatches.Batch020.certificate1645valid
theorem outputValid398 : DerivedMapBatches.Batch020.certificate1646.Valid := DerivedMapBatches.Batch020.certificate1646valid
theorem linkedComposition398 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1646.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1646.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1644.algebra.mat x) := by
  rw [firstLink398, secondLink398]
  exact DerivedMapBatches.Batch020.certificate1646valid.2 x
theorem firstLink399 : DerivedMapBatches.Batch020.certificate1647.algebra.mat = DerivedMapBatches.Batch020.certificate1649.a := by decide
theorem secondLink399 : DerivedMapBatches.Batch020.certificate1648.algebra.mat = DerivedMapBatches.Batch020.certificate1649.b := by decide
theorem firstValid399 : DerivedMapBatches.Batch020.certificate1647.Valid := DerivedMapBatches.Batch020.certificate1647valid
theorem secondValid399 : DerivedMapBatches.Batch020.certificate1648.Valid := DerivedMapBatches.Batch020.certificate1648valid
theorem outputValid399 : DerivedMapBatches.Batch020.certificate1649.Valid := DerivedMapBatches.Batch020.certificate1649valid
theorem linkedComposition399 (x : LinearCertificates.Vec DerivedMapBatches.Batch020.certificate1649.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1649.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1647.algebra.mat x) := by
  rw [firstLink399, secondLink399]
  exact DerivedMapBatches.Batch020.certificate1649valid.2 x
end DerivedLinkageBatches.Batch007
