import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch017
import DerivedMapBatches.Batch018
import DerivedMapBatches.Batch020
import DerivedMapBatches.Batch067
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch034
theorem firstLink1700 : DerivedMapBatches.Batch017.certificate1390.algebra.mat = DerivedMapBatches.Batch067.certificate5388.a := by decide
theorem secondLink1700 : DerivedMapBatches.Batch017.certificate1391.algebra.mat = DerivedMapBatches.Batch067.certificate5388.b := by decide
theorem firstValid1700 : DerivedMapBatches.Batch017.certificate1390.Valid := DerivedMapBatches.Batch017.certificate1390valid
theorem secondValid1700 : DerivedMapBatches.Batch017.certificate1391.Valid := DerivedMapBatches.Batch017.certificate1391valid
theorem outputValid1700 : DerivedMapBatches.Batch067.certificate5388.Valid := DerivedMapBatches.Batch067.certificate5388valid
theorem linkedComposition1700 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5388.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5388.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1391.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1390.algebra.mat x) := by
  rw [firstLink1700, secondLink1700]
  exact DerivedMapBatches.Batch067.certificate5388valid.2 x
theorem rhsLink1700 : DerivedMapBatches.Batch067.certificate5388.c = DerivedMapBatches.Batch017.certificate1392.c := by decide
theorem rhsValid1700 : DerivedMapBatches.Batch017.certificate1392.Valid := DerivedMapBatches.Batch017.certificate1392valid
theorem linkedCommutativity1700 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5388.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1391.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1390.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1392.c x := by
  exact (linkedComposition1700 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1700)
theorem firstLink1701 : DerivedMapBatches.Batch017.certificate1393.algebra.mat = DerivedMapBatches.Batch067.certificate5389.a := by decide
theorem secondLink1701 : DerivedMapBatches.Batch017.certificate1394.algebra.mat = DerivedMapBatches.Batch067.certificate5389.b := by decide
theorem firstValid1701 : DerivedMapBatches.Batch017.certificate1393.Valid := DerivedMapBatches.Batch017.certificate1393valid
theorem secondValid1701 : DerivedMapBatches.Batch017.certificate1394.Valid := DerivedMapBatches.Batch017.certificate1394valid
theorem outputValid1701 : DerivedMapBatches.Batch067.certificate5389.Valid := DerivedMapBatches.Batch067.certificate5389valid
theorem linkedComposition1701 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5389.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5389.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1394.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1393.algebra.mat x) := by
  rw [firstLink1701, secondLink1701]
  exact DerivedMapBatches.Batch067.certificate5389valid.2 x
theorem rhsLink1701 : DerivedMapBatches.Batch067.certificate5389.c = DerivedMapBatches.Batch017.certificate1395.c := by decide
theorem rhsValid1701 : DerivedMapBatches.Batch017.certificate1395.Valid := DerivedMapBatches.Batch017.certificate1395valid
theorem linkedCommutativity1701 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5389.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1394.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1393.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1395.c x := by
  exact (linkedComposition1701 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1701)
theorem firstLink1702 : DerivedMapBatches.Batch017.certificate1396.algebra.mat = DerivedMapBatches.Batch067.certificate5390.a := by decide
theorem secondLink1702 : DerivedMapBatches.Batch017.certificate1397.algebra.mat = DerivedMapBatches.Batch067.certificate5390.b := by decide
theorem firstValid1702 : DerivedMapBatches.Batch017.certificate1396.Valid := DerivedMapBatches.Batch017.certificate1396valid
theorem secondValid1702 : DerivedMapBatches.Batch017.certificate1397.Valid := DerivedMapBatches.Batch017.certificate1397valid
theorem outputValid1702 : DerivedMapBatches.Batch067.certificate5390.Valid := DerivedMapBatches.Batch067.certificate5390valid
theorem linkedComposition1702 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5390.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5390.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1397.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1396.algebra.mat x) := by
  rw [firstLink1702, secondLink1702]
  exact DerivedMapBatches.Batch067.certificate5390valid.2 x
theorem rhsLink1702 : DerivedMapBatches.Batch067.certificate5390.c = DerivedMapBatches.Batch017.certificate1398.c := by decide
theorem rhsValid1702 : DerivedMapBatches.Batch017.certificate1398.Valid := DerivedMapBatches.Batch017.certificate1398valid
theorem linkedCommutativity1702 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5390.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1397.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1396.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1398.c x := by
  exact (linkedComposition1702 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1702)
theorem firstLink1703 : DerivedMapBatches.Batch017.certificate1399.algebra.mat = DerivedMapBatches.Batch067.certificate5391.a := by decide
theorem secondLink1703 : DerivedMapBatches.Batch017.certificate1400.algebra.mat = DerivedMapBatches.Batch067.certificate5391.b := by decide
theorem firstValid1703 : DerivedMapBatches.Batch017.certificate1399.Valid := DerivedMapBatches.Batch017.certificate1399valid
theorem secondValid1703 : DerivedMapBatches.Batch017.certificate1400.Valid := DerivedMapBatches.Batch017.certificate1400valid
theorem outputValid1703 : DerivedMapBatches.Batch067.certificate5391.Valid := DerivedMapBatches.Batch067.certificate5391valid
theorem linkedComposition1703 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5391.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5391.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1400.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1399.algebra.mat x) := by
  rw [firstLink1703, secondLink1703]
  exact DerivedMapBatches.Batch067.certificate5391valid.2 x
theorem rhsLink1703 : DerivedMapBatches.Batch067.certificate5391.c = DerivedMapBatches.Batch017.certificate1401.c := by decide
theorem rhsValid1703 : DerivedMapBatches.Batch017.certificate1401.Valid := DerivedMapBatches.Batch017.certificate1401valid
theorem linkedCommutativity1703 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5391.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1400.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1399.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1401.c x := by
  exact (linkedComposition1703 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1703)
theorem firstLink1704 : DerivedMapBatches.Batch017.certificate1402.algebra.mat = DerivedMapBatches.Batch067.certificate5392.a := by decide
theorem secondLink1704 : DerivedMapBatches.Batch017.certificate1403.algebra.mat = DerivedMapBatches.Batch067.certificate5392.b := by decide
theorem firstValid1704 : DerivedMapBatches.Batch017.certificate1402.Valid := DerivedMapBatches.Batch017.certificate1402valid
theorem secondValid1704 : DerivedMapBatches.Batch017.certificate1403.Valid := DerivedMapBatches.Batch017.certificate1403valid
theorem outputValid1704 : DerivedMapBatches.Batch067.certificate5392.Valid := DerivedMapBatches.Batch067.certificate5392valid
theorem linkedComposition1704 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5392.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5392.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1403.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1402.algebra.mat x) := by
  rw [firstLink1704, secondLink1704]
  exact DerivedMapBatches.Batch067.certificate5392valid.2 x
theorem rhsLink1704 : DerivedMapBatches.Batch067.certificate5392.c = DerivedMapBatches.Batch017.certificate1404.c := by decide
theorem rhsValid1704 : DerivedMapBatches.Batch017.certificate1404.Valid := DerivedMapBatches.Batch017.certificate1404valid
theorem linkedCommutativity1704 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5392.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1403.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1402.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1404.c x := by
  exact (linkedComposition1704 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1704)
theorem firstLink1705 : DerivedMapBatches.Batch017.certificate1405.algebra.mat = DerivedMapBatches.Batch067.certificate5393.a := by decide
theorem secondLink1705 : DerivedMapBatches.Batch017.certificate1406.algebra.mat = DerivedMapBatches.Batch067.certificate5393.b := by decide
theorem firstValid1705 : DerivedMapBatches.Batch017.certificate1405.Valid := DerivedMapBatches.Batch017.certificate1405valid
theorem secondValid1705 : DerivedMapBatches.Batch017.certificate1406.Valid := DerivedMapBatches.Batch017.certificate1406valid
theorem outputValid1705 : DerivedMapBatches.Batch067.certificate5393.Valid := DerivedMapBatches.Batch067.certificate5393valid
theorem linkedComposition1705 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5393.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5393.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1406.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1405.algebra.mat x) := by
  rw [firstLink1705, secondLink1705]
  exact DerivedMapBatches.Batch067.certificate5393valid.2 x
theorem rhsLink1705 : DerivedMapBatches.Batch067.certificate5393.c = DerivedMapBatches.Batch017.certificate1407.c := by decide
theorem rhsValid1705 : DerivedMapBatches.Batch017.certificate1407.Valid := DerivedMapBatches.Batch017.certificate1407valid
theorem linkedCommutativity1705 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5393.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1406.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1405.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1407.c x := by
  exact (linkedComposition1705 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1705)
theorem firstLink1706 : DerivedMapBatches.Batch017.certificate1408.algebra.mat = DerivedMapBatches.Batch067.certificate5394.a := by decide
theorem secondLink1706 : DerivedMapBatches.Batch017.certificate1409.algebra.mat = DerivedMapBatches.Batch067.certificate5394.b := by decide
theorem firstValid1706 : DerivedMapBatches.Batch017.certificate1408.Valid := DerivedMapBatches.Batch017.certificate1408valid
theorem secondValid1706 : DerivedMapBatches.Batch017.certificate1409.Valid := DerivedMapBatches.Batch017.certificate1409valid
theorem outputValid1706 : DerivedMapBatches.Batch067.certificate5394.Valid := DerivedMapBatches.Batch067.certificate5394valid
theorem linkedComposition1706 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5394.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5394.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1409.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1408.algebra.mat x) := by
  rw [firstLink1706, secondLink1706]
  exact DerivedMapBatches.Batch067.certificate5394valid.2 x
theorem rhsLink1706 : DerivedMapBatches.Batch067.certificate5394.c = DerivedMapBatches.Batch017.certificate1410.c := by decide
theorem rhsValid1706 : DerivedMapBatches.Batch017.certificate1410.Valid := DerivedMapBatches.Batch017.certificate1410valid
theorem linkedCommutativity1706 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5394.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1409.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1408.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1410.c x := by
  exact (linkedComposition1706 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1706)
theorem firstLink1707 : DerivedMapBatches.Batch017.certificate1411.algebra.mat = DerivedMapBatches.Batch067.certificate5395.a := by decide
theorem secondLink1707 : DerivedMapBatches.Batch017.certificate1412.algebra.mat = DerivedMapBatches.Batch067.certificate5395.b := by decide
theorem firstValid1707 : DerivedMapBatches.Batch017.certificate1411.Valid := DerivedMapBatches.Batch017.certificate1411valid
theorem secondValid1707 : DerivedMapBatches.Batch017.certificate1412.Valid := DerivedMapBatches.Batch017.certificate1412valid
theorem outputValid1707 : DerivedMapBatches.Batch067.certificate5395.Valid := DerivedMapBatches.Batch067.certificate5395valid
theorem linkedComposition1707 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5395.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5395.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1412.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1411.algebra.mat x) := by
  rw [firstLink1707, secondLink1707]
  exact DerivedMapBatches.Batch067.certificate5395valid.2 x
theorem rhsLink1707 : DerivedMapBatches.Batch067.certificate5395.c = DerivedMapBatches.Batch017.certificate1413.c := by decide
theorem rhsValid1707 : DerivedMapBatches.Batch017.certificate1413.Valid := DerivedMapBatches.Batch017.certificate1413valid
theorem linkedCommutativity1707 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5395.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1412.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1411.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1413.c x := by
  exact (linkedComposition1707 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1707)
theorem firstLink1708 : DerivedMapBatches.Batch017.certificate1414.algebra.mat = DerivedMapBatches.Batch067.certificate5396.a := by decide
theorem secondLink1708 : DerivedMapBatches.Batch017.certificate1415.algebra.mat = DerivedMapBatches.Batch067.certificate5396.b := by decide
theorem firstValid1708 : DerivedMapBatches.Batch017.certificate1414.Valid := DerivedMapBatches.Batch017.certificate1414valid
theorem secondValid1708 : DerivedMapBatches.Batch017.certificate1415.Valid := DerivedMapBatches.Batch017.certificate1415valid
theorem outputValid1708 : DerivedMapBatches.Batch067.certificate5396.Valid := DerivedMapBatches.Batch067.certificate5396valid
theorem linkedComposition1708 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5396.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5396.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1415.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1414.algebra.mat x) := by
  rw [firstLink1708, secondLink1708]
  exact DerivedMapBatches.Batch067.certificate5396valid.2 x
theorem rhsLink1708 : DerivedMapBatches.Batch067.certificate5396.c = DerivedMapBatches.Batch017.certificate1416.c := by decide
theorem rhsValid1708 : DerivedMapBatches.Batch017.certificate1416.Valid := DerivedMapBatches.Batch017.certificate1416valid
theorem linkedCommutativity1708 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5396.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1415.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1414.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1416.c x := by
  exact (linkedComposition1708 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1708)
theorem firstLink1709 : DerivedMapBatches.Batch017.certificate1417.algebra.mat = DerivedMapBatches.Batch067.certificate5397.a := by decide
theorem secondLink1709 : DerivedMapBatches.Batch017.certificate1418.algebra.mat = DerivedMapBatches.Batch067.certificate5397.b := by decide
theorem firstValid1709 : DerivedMapBatches.Batch017.certificate1417.Valid := DerivedMapBatches.Batch017.certificate1417valid
theorem secondValid1709 : DerivedMapBatches.Batch017.certificate1418.Valid := DerivedMapBatches.Batch017.certificate1418valid
theorem outputValid1709 : DerivedMapBatches.Batch067.certificate5397.Valid := DerivedMapBatches.Batch067.certificate5397valid
theorem linkedComposition1709 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5397.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5397.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1418.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1417.algebra.mat x) := by
  rw [firstLink1709, secondLink1709]
  exact DerivedMapBatches.Batch067.certificate5397valid.2 x
theorem rhsLink1709 : DerivedMapBatches.Batch067.certificate5397.c = DerivedMapBatches.Batch017.certificate1419.c := by decide
theorem rhsValid1709 : DerivedMapBatches.Batch017.certificate1419.Valid := DerivedMapBatches.Batch017.certificate1419valid
theorem linkedCommutativity1709 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5397.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1418.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1417.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1419.c x := by
  exact (linkedComposition1709 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1709)
theorem firstLink1710 : DerivedMapBatches.Batch017.certificate1420.algebra.mat = DerivedMapBatches.Batch067.certificate5398.a := by decide
theorem secondLink1710 : DerivedMapBatches.Batch017.certificate1421.algebra.mat = DerivedMapBatches.Batch067.certificate5398.b := by decide
theorem firstValid1710 : DerivedMapBatches.Batch017.certificate1420.Valid := DerivedMapBatches.Batch017.certificate1420valid
theorem secondValid1710 : DerivedMapBatches.Batch017.certificate1421.Valid := DerivedMapBatches.Batch017.certificate1421valid
theorem outputValid1710 : DerivedMapBatches.Batch067.certificate5398.Valid := DerivedMapBatches.Batch067.certificate5398valid
theorem linkedComposition1710 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5398.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5398.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1421.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1420.algebra.mat x) := by
  rw [firstLink1710, secondLink1710]
  exact DerivedMapBatches.Batch067.certificate5398valid.2 x
theorem rhsLink1710 : DerivedMapBatches.Batch067.certificate5398.c = DerivedMapBatches.Batch017.certificate1422.c := by decide
theorem rhsValid1710 : DerivedMapBatches.Batch017.certificate1422.Valid := DerivedMapBatches.Batch017.certificate1422valid
theorem linkedCommutativity1710 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5398.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1421.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1420.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1422.c x := by
  exact (linkedComposition1710 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1710)
theorem firstLink1711 : DerivedMapBatches.Batch017.certificate1423.algebra.mat = DerivedMapBatches.Batch067.certificate5399.a := by decide
theorem secondLink1711 : DerivedMapBatches.Batch017.certificate1424.algebra.mat = DerivedMapBatches.Batch067.certificate5399.b := by decide
theorem firstValid1711 : DerivedMapBatches.Batch017.certificate1423.Valid := DerivedMapBatches.Batch017.certificate1423valid
theorem secondValid1711 : DerivedMapBatches.Batch017.certificate1424.Valid := DerivedMapBatches.Batch017.certificate1424valid
theorem outputValid1711 : DerivedMapBatches.Batch067.certificate5399.Valid := DerivedMapBatches.Batch067.certificate5399valid
theorem linkedComposition1711 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5399.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5399.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1424.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1423.algebra.mat x) := by
  rw [firstLink1711, secondLink1711]
  exact DerivedMapBatches.Batch067.certificate5399valid.2 x
theorem rhsLink1711 : DerivedMapBatches.Batch067.certificate5399.c = DerivedMapBatches.Batch017.certificate1425.c := by decide
theorem rhsValid1711 : DerivedMapBatches.Batch017.certificate1425.Valid := DerivedMapBatches.Batch017.certificate1425valid
theorem linkedCommutativity1711 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5399.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1424.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1423.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1425.c x := by
  exact (linkedComposition1711 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1711)
theorem firstLink1712 : DerivedMapBatches.Batch017.certificate1426.algebra.mat = DerivedMapBatches.Batch067.certificate5400.a := by decide
theorem secondLink1712 : DerivedMapBatches.Batch017.certificate1427.algebra.mat = DerivedMapBatches.Batch067.certificate5400.b := by decide
theorem firstValid1712 : DerivedMapBatches.Batch017.certificate1426.Valid := DerivedMapBatches.Batch017.certificate1426valid
theorem secondValid1712 : DerivedMapBatches.Batch017.certificate1427.Valid := DerivedMapBatches.Batch017.certificate1427valid
theorem outputValid1712 : DerivedMapBatches.Batch067.certificate5400.Valid := DerivedMapBatches.Batch067.certificate5400valid
theorem linkedComposition1712 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5400.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5400.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1427.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1426.algebra.mat x) := by
  rw [firstLink1712, secondLink1712]
  exact DerivedMapBatches.Batch067.certificate5400valid.2 x
theorem rhsLink1712 : DerivedMapBatches.Batch067.certificate5400.c = DerivedMapBatches.Batch017.certificate1428.c := by decide
theorem rhsValid1712 : DerivedMapBatches.Batch017.certificate1428.Valid := DerivedMapBatches.Batch017.certificate1428valid
theorem linkedCommutativity1712 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5400.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1427.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1426.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1428.c x := by
  exact (linkedComposition1712 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1712)
theorem firstLink1713 : DerivedMapBatches.Batch017.certificate1429.algebra.mat = DerivedMapBatches.Batch067.certificate5401.a := by decide
theorem secondLink1713 : DerivedMapBatches.Batch017.certificate1430.algebra.mat = DerivedMapBatches.Batch067.certificate5401.b := by decide
theorem firstValid1713 : DerivedMapBatches.Batch017.certificate1429.Valid := DerivedMapBatches.Batch017.certificate1429valid
theorem secondValid1713 : DerivedMapBatches.Batch017.certificate1430.Valid := DerivedMapBatches.Batch017.certificate1430valid
theorem outputValid1713 : DerivedMapBatches.Batch067.certificate5401.Valid := DerivedMapBatches.Batch067.certificate5401valid
theorem linkedComposition1713 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5401.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5401.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1430.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1429.algebra.mat x) := by
  rw [firstLink1713, secondLink1713]
  exact DerivedMapBatches.Batch067.certificate5401valid.2 x
theorem rhsLink1713 : DerivedMapBatches.Batch067.certificate5401.c = DerivedMapBatches.Batch017.certificate1431.c := by decide
theorem rhsValid1713 : DerivedMapBatches.Batch017.certificate1431.Valid := DerivedMapBatches.Batch017.certificate1431valid
theorem linkedCommutativity1713 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5401.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1430.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1429.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1431.c x := by
  exact (linkedComposition1713 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1713)
theorem firstLink1714 : DerivedMapBatches.Batch017.certificate1432.algebra.mat = DerivedMapBatches.Batch067.certificate5402.a := by decide
theorem secondLink1714 : DerivedMapBatches.Batch017.certificate1433.algebra.mat = DerivedMapBatches.Batch067.certificate5402.b := by decide
theorem firstValid1714 : DerivedMapBatches.Batch017.certificate1432.Valid := DerivedMapBatches.Batch017.certificate1432valid
theorem secondValid1714 : DerivedMapBatches.Batch017.certificate1433.Valid := DerivedMapBatches.Batch017.certificate1433valid
theorem outputValid1714 : DerivedMapBatches.Batch067.certificate5402.Valid := DerivedMapBatches.Batch067.certificate5402valid
theorem linkedComposition1714 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5402.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5402.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1433.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1432.algebra.mat x) := by
  rw [firstLink1714, secondLink1714]
  exact DerivedMapBatches.Batch067.certificate5402valid.2 x
theorem rhsLink1714 : DerivedMapBatches.Batch067.certificate5402.c = DerivedMapBatches.Batch017.certificate1434.c := by decide
theorem rhsValid1714 : DerivedMapBatches.Batch017.certificate1434.Valid := DerivedMapBatches.Batch017.certificate1434valid
theorem linkedCommutativity1714 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5402.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1433.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1432.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1434.c x := by
  exact (linkedComposition1714 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1714)
theorem firstLink1715 : DerivedMapBatches.Batch017.certificate1435.algebra.mat = DerivedMapBatches.Batch067.certificate5403.a := by decide
theorem secondLink1715 : DerivedMapBatches.Batch017.certificate1436.algebra.mat = DerivedMapBatches.Batch067.certificate5403.b := by decide
theorem firstValid1715 : DerivedMapBatches.Batch017.certificate1435.Valid := DerivedMapBatches.Batch017.certificate1435valid
theorem secondValid1715 : DerivedMapBatches.Batch017.certificate1436.Valid := DerivedMapBatches.Batch017.certificate1436valid
theorem outputValid1715 : DerivedMapBatches.Batch067.certificate5403.Valid := DerivedMapBatches.Batch067.certificate5403valid
theorem linkedComposition1715 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5403.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5403.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1436.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1435.algebra.mat x) := by
  rw [firstLink1715, secondLink1715]
  exact DerivedMapBatches.Batch067.certificate5403valid.2 x
theorem rhsLink1715 : DerivedMapBatches.Batch067.certificate5403.c = DerivedMapBatches.Batch017.certificate1437.c := by decide
theorem rhsValid1715 : DerivedMapBatches.Batch017.certificate1437.Valid := DerivedMapBatches.Batch017.certificate1437valid
theorem linkedCommutativity1715 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5403.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1436.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1435.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1437.c x := by
  exact (linkedComposition1715 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1715)
theorem firstLink1716 : DerivedMapBatches.Batch017.certificate1438.algebra.mat = DerivedMapBatches.Batch067.certificate5404.a := by decide
theorem secondLink1716 : DerivedMapBatches.Batch017.certificate1439.algebra.mat = DerivedMapBatches.Batch067.certificate5404.b := by decide
theorem firstValid1716 : DerivedMapBatches.Batch017.certificate1438.Valid := DerivedMapBatches.Batch017.certificate1438valid
theorem secondValid1716 : DerivedMapBatches.Batch017.certificate1439.Valid := DerivedMapBatches.Batch017.certificate1439valid
theorem outputValid1716 : DerivedMapBatches.Batch067.certificate5404.Valid := DerivedMapBatches.Batch067.certificate5404valid
theorem linkedComposition1716 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5404.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5404.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1439.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1438.algebra.mat x) := by
  rw [firstLink1716, secondLink1716]
  exact DerivedMapBatches.Batch067.certificate5404valid.2 x
theorem rhsLink1716 : DerivedMapBatches.Batch067.certificate5404.c = DerivedMapBatches.Batch018.certificate1440.c := by decide
theorem rhsValid1716 : DerivedMapBatches.Batch018.certificate1440.Valid := DerivedMapBatches.Batch018.certificate1440valid
theorem linkedCommutativity1716 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5404.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1439.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1438.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1440.c x := by
  exact (linkedComposition1716 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1716)
theorem firstLink1717 : DerivedMapBatches.Batch018.certificate1441.algebra.mat = DerivedMapBatches.Batch067.certificate5405.a := by decide
theorem secondLink1717 : DerivedMapBatches.Batch018.certificate1442.algebra.mat = DerivedMapBatches.Batch067.certificate5405.b := by decide
theorem firstValid1717 : DerivedMapBatches.Batch018.certificate1441.Valid := DerivedMapBatches.Batch018.certificate1441valid
theorem secondValid1717 : DerivedMapBatches.Batch018.certificate1442.Valid := DerivedMapBatches.Batch018.certificate1442valid
theorem outputValid1717 : DerivedMapBatches.Batch067.certificate5405.Valid := DerivedMapBatches.Batch067.certificate5405valid
theorem linkedComposition1717 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5405.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5405.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1441.algebra.mat x) := by
  rw [firstLink1717, secondLink1717]
  exact DerivedMapBatches.Batch067.certificate5405valid.2 x
theorem rhsLink1717 : DerivedMapBatches.Batch067.certificate5405.c = DerivedMapBatches.Batch018.certificate1443.c := by decide
theorem rhsValid1717 : DerivedMapBatches.Batch018.certificate1443.Valid := DerivedMapBatches.Batch018.certificate1443valid
theorem linkedCommutativity1717 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5405.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1441.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1443.c x := by
  exact (linkedComposition1717 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1717)
theorem firstLink1718 : DerivedMapBatches.Batch018.certificate1444.algebra.mat = DerivedMapBatches.Batch067.certificate5406.a := by decide
theorem secondLink1718 : DerivedMapBatches.Batch018.certificate1445.algebra.mat = DerivedMapBatches.Batch067.certificate5406.b := by decide
theorem firstValid1718 : DerivedMapBatches.Batch018.certificate1444.Valid := DerivedMapBatches.Batch018.certificate1444valid
theorem secondValid1718 : DerivedMapBatches.Batch018.certificate1445.Valid := DerivedMapBatches.Batch018.certificate1445valid
theorem outputValid1718 : DerivedMapBatches.Batch067.certificate5406.Valid := DerivedMapBatches.Batch067.certificate5406valid
theorem linkedComposition1718 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5406.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5406.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1445.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1444.algebra.mat x) := by
  rw [firstLink1718, secondLink1718]
  exact DerivedMapBatches.Batch067.certificate5406valid.2 x
theorem rhsLink1718 : DerivedMapBatches.Batch067.certificate5406.c = DerivedMapBatches.Batch018.certificate1446.c := by decide
theorem rhsValid1718 : DerivedMapBatches.Batch018.certificate1446.Valid := DerivedMapBatches.Batch018.certificate1446valid
theorem linkedCommutativity1718 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5406.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1445.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1444.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1446.c x := by
  exact (linkedComposition1718 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1718)
theorem firstLink1719 : DerivedMapBatches.Batch018.certificate1447.algebra.mat = DerivedMapBatches.Batch067.certificate5407.a := by decide
theorem secondLink1719 : DerivedMapBatches.Batch018.certificate1448.algebra.mat = DerivedMapBatches.Batch067.certificate5407.b := by decide
theorem firstValid1719 : DerivedMapBatches.Batch018.certificate1447.Valid := DerivedMapBatches.Batch018.certificate1447valid
theorem secondValid1719 : DerivedMapBatches.Batch018.certificate1448.Valid := DerivedMapBatches.Batch018.certificate1448valid
theorem outputValid1719 : DerivedMapBatches.Batch067.certificate5407.Valid := DerivedMapBatches.Batch067.certificate5407valid
theorem linkedComposition1719 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5407.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5407.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1447.algebra.mat x) := by
  rw [firstLink1719, secondLink1719]
  exact DerivedMapBatches.Batch067.certificate5407valid.2 x
theorem rhsLink1719 : DerivedMapBatches.Batch067.certificate5407.c = DerivedMapBatches.Batch018.certificate1449.c := by decide
theorem rhsValid1719 : DerivedMapBatches.Batch018.certificate1449.Valid := DerivedMapBatches.Batch018.certificate1449valid
theorem linkedCommutativity1719 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5407.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1447.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1449.c x := by
  exact (linkedComposition1719 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1719)
theorem firstLink1720 : DerivedMapBatches.Batch018.certificate1450.algebra.mat = DerivedMapBatches.Batch067.certificate5408.a := by decide
theorem secondLink1720 : DerivedMapBatches.Batch018.certificate1451.algebra.mat = DerivedMapBatches.Batch067.certificate5408.b := by decide
theorem firstValid1720 : DerivedMapBatches.Batch018.certificate1450.Valid := DerivedMapBatches.Batch018.certificate1450valid
theorem secondValid1720 : DerivedMapBatches.Batch018.certificate1451.Valid := DerivedMapBatches.Batch018.certificate1451valid
theorem outputValid1720 : DerivedMapBatches.Batch067.certificate5408.Valid := DerivedMapBatches.Batch067.certificate5408valid
theorem linkedComposition1720 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5408.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5408.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1450.algebra.mat x) := by
  rw [firstLink1720, secondLink1720]
  exact DerivedMapBatches.Batch067.certificate5408valid.2 x
theorem rhsLink1720 : DerivedMapBatches.Batch067.certificate5408.c = DerivedMapBatches.Batch018.certificate1452.c := by decide
theorem rhsValid1720 : DerivedMapBatches.Batch018.certificate1452.Valid := DerivedMapBatches.Batch018.certificate1452valid
theorem linkedCommutativity1720 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5408.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1450.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1452.c x := by
  exact (linkedComposition1720 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1720)
theorem firstLink1721 : DerivedMapBatches.Batch018.certificate1453.algebra.mat = DerivedMapBatches.Batch067.certificate5409.a := by decide
theorem secondLink1721 : DerivedMapBatches.Batch018.certificate1454.algebra.mat = DerivedMapBatches.Batch067.certificate5409.b := by decide
theorem firstValid1721 : DerivedMapBatches.Batch018.certificate1453.Valid := DerivedMapBatches.Batch018.certificate1453valid
theorem secondValid1721 : DerivedMapBatches.Batch018.certificate1454.Valid := DerivedMapBatches.Batch018.certificate1454valid
theorem outputValid1721 : DerivedMapBatches.Batch067.certificate5409.Valid := DerivedMapBatches.Batch067.certificate5409valid
theorem linkedComposition1721 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5409.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5409.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1454.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1453.algebra.mat x) := by
  rw [firstLink1721, secondLink1721]
  exact DerivedMapBatches.Batch067.certificate5409valid.2 x
theorem rhsLink1721 : DerivedMapBatches.Batch067.certificate5409.c = DerivedMapBatches.Batch018.certificate1455.c := by decide
theorem rhsValid1721 : DerivedMapBatches.Batch018.certificate1455.Valid := DerivedMapBatches.Batch018.certificate1455valid
theorem linkedCommutativity1721 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5409.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1454.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1453.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1455.c x := by
  exact (linkedComposition1721 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1721)
theorem firstLink1722 : DerivedMapBatches.Batch018.certificate1456.algebra.mat = DerivedMapBatches.Batch067.certificate5410.a := by decide
theorem secondLink1722 : DerivedMapBatches.Batch018.certificate1457.algebra.mat = DerivedMapBatches.Batch067.certificate5410.b := by decide
theorem firstValid1722 : DerivedMapBatches.Batch018.certificate1456.Valid := DerivedMapBatches.Batch018.certificate1456valid
theorem secondValid1722 : DerivedMapBatches.Batch018.certificate1457.Valid := DerivedMapBatches.Batch018.certificate1457valid
theorem outputValid1722 : DerivedMapBatches.Batch067.certificate5410.Valid := DerivedMapBatches.Batch067.certificate5410valid
theorem linkedComposition1722 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5410.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5410.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1457.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1456.algebra.mat x) := by
  rw [firstLink1722, secondLink1722]
  exact DerivedMapBatches.Batch067.certificate5410valid.2 x
theorem rhsLink1722 : DerivedMapBatches.Batch067.certificate5410.c = DerivedMapBatches.Batch018.certificate1458.c := by decide
theorem rhsValid1722 : DerivedMapBatches.Batch018.certificate1458.Valid := DerivedMapBatches.Batch018.certificate1458valid
theorem linkedCommutativity1722 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5410.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1457.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1456.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1458.c x := by
  exact (linkedComposition1722 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1722)
theorem firstLink1723 : DerivedMapBatches.Batch018.certificate1459.algebra.mat = DerivedMapBatches.Batch067.certificate5411.a := by decide
theorem secondLink1723 : DerivedMapBatches.Batch018.certificate1460.algebra.mat = DerivedMapBatches.Batch067.certificate5411.b := by decide
theorem firstValid1723 : DerivedMapBatches.Batch018.certificate1459.Valid := DerivedMapBatches.Batch018.certificate1459valid
theorem secondValid1723 : DerivedMapBatches.Batch018.certificate1460.Valid := DerivedMapBatches.Batch018.certificate1460valid
theorem outputValid1723 : DerivedMapBatches.Batch067.certificate5411.Valid := DerivedMapBatches.Batch067.certificate5411valid
theorem linkedComposition1723 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5411.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5411.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1460.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1459.algebra.mat x) := by
  rw [firstLink1723, secondLink1723]
  exact DerivedMapBatches.Batch067.certificate5411valid.2 x
theorem rhsLink1723 : DerivedMapBatches.Batch067.certificate5411.c = DerivedMapBatches.Batch018.certificate1461.c := by decide
theorem rhsValid1723 : DerivedMapBatches.Batch018.certificate1461.Valid := DerivedMapBatches.Batch018.certificate1461valid
theorem linkedCommutativity1723 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5411.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1460.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1459.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1461.c x := by
  exact (linkedComposition1723 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1723)
theorem firstLink1724 : DerivedMapBatches.Batch018.certificate1462.algebra.mat = DerivedMapBatches.Batch067.certificate5412.a := by decide
theorem secondLink1724 : DerivedMapBatches.Batch018.certificate1463.algebra.mat = DerivedMapBatches.Batch067.certificate5412.b := by decide
theorem firstValid1724 : DerivedMapBatches.Batch018.certificate1462.Valid := DerivedMapBatches.Batch018.certificate1462valid
theorem secondValid1724 : DerivedMapBatches.Batch018.certificate1463.Valid := DerivedMapBatches.Batch018.certificate1463valid
theorem outputValid1724 : DerivedMapBatches.Batch067.certificate5412.Valid := DerivedMapBatches.Batch067.certificate5412valid
theorem linkedComposition1724 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5412.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5412.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1463.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1462.algebra.mat x) := by
  rw [firstLink1724, secondLink1724]
  exact DerivedMapBatches.Batch067.certificate5412valid.2 x
theorem rhsLink1724 : DerivedMapBatches.Batch067.certificate5412.c = DerivedMapBatches.Batch018.certificate1464.c := by decide
theorem rhsValid1724 : DerivedMapBatches.Batch018.certificate1464.Valid := DerivedMapBatches.Batch018.certificate1464valid
theorem linkedCommutativity1724 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5412.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1463.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1462.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1464.c x := by
  exact (linkedComposition1724 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1724)
theorem firstLink1725 : DerivedMapBatches.Batch018.certificate1465.algebra.mat = DerivedMapBatches.Batch067.certificate5413.a := by decide
theorem secondLink1725 : DerivedMapBatches.Batch018.certificate1466.algebra.mat = DerivedMapBatches.Batch067.certificate5413.b := by decide
theorem firstValid1725 : DerivedMapBatches.Batch018.certificate1465.Valid := DerivedMapBatches.Batch018.certificate1465valid
theorem secondValid1725 : DerivedMapBatches.Batch018.certificate1466.Valid := DerivedMapBatches.Batch018.certificate1466valid
theorem outputValid1725 : DerivedMapBatches.Batch067.certificate5413.Valid := DerivedMapBatches.Batch067.certificate5413valid
theorem linkedComposition1725 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5413.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5413.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1466.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1465.algebra.mat x) := by
  rw [firstLink1725, secondLink1725]
  exact DerivedMapBatches.Batch067.certificate5413valid.2 x
theorem rhsLink1725 : DerivedMapBatches.Batch067.certificate5413.c = DerivedMapBatches.Batch018.certificate1467.c := by decide
theorem rhsValid1725 : DerivedMapBatches.Batch018.certificate1467.Valid := DerivedMapBatches.Batch018.certificate1467valid
theorem linkedCommutativity1725 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5413.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1466.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1465.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1467.c x := by
  exact (linkedComposition1725 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1725)
theorem firstLink1726 : DerivedMapBatches.Batch018.certificate1468.algebra.mat = DerivedMapBatches.Batch067.certificate5414.a := by decide
theorem secondLink1726 : DerivedMapBatches.Batch018.certificate1469.algebra.mat = DerivedMapBatches.Batch067.certificate5414.b := by decide
theorem firstValid1726 : DerivedMapBatches.Batch018.certificate1468.Valid := DerivedMapBatches.Batch018.certificate1468valid
theorem secondValid1726 : DerivedMapBatches.Batch018.certificate1469.Valid := DerivedMapBatches.Batch018.certificate1469valid
theorem outputValid1726 : DerivedMapBatches.Batch067.certificate5414.Valid := DerivedMapBatches.Batch067.certificate5414valid
theorem linkedComposition1726 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5414.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5414.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1469.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1468.algebra.mat x) := by
  rw [firstLink1726, secondLink1726]
  exact DerivedMapBatches.Batch067.certificate5414valid.2 x
theorem rhsLink1726 : DerivedMapBatches.Batch067.certificate5414.c = DerivedMapBatches.Batch018.certificate1470.c := by decide
theorem rhsValid1726 : DerivedMapBatches.Batch018.certificate1470.Valid := DerivedMapBatches.Batch018.certificate1470valid
theorem linkedCommutativity1726 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5414.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1469.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1468.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1470.c x := by
  exact (linkedComposition1726 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1726)
theorem firstLink1727 : DerivedMapBatches.Batch018.certificate1471.algebra.mat = DerivedMapBatches.Batch067.certificate5415.a := by decide
theorem secondLink1727 : DerivedMapBatches.Batch018.certificate1472.algebra.mat = DerivedMapBatches.Batch067.certificate5415.b := by decide
theorem firstValid1727 : DerivedMapBatches.Batch018.certificate1471.Valid := DerivedMapBatches.Batch018.certificate1471valid
theorem secondValid1727 : DerivedMapBatches.Batch018.certificate1472.Valid := DerivedMapBatches.Batch018.certificate1472valid
theorem outputValid1727 : DerivedMapBatches.Batch067.certificate5415.Valid := DerivedMapBatches.Batch067.certificate5415valid
theorem linkedComposition1727 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5415.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5415.c x = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1472.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1471.algebra.mat x) := by
  rw [firstLink1727, secondLink1727]
  exact DerivedMapBatches.Batch067.certificate5415valid.2 x
theorem rhsLink1727 : DerivedMapBatches.Batch067.certificate5415.c = DerivedMapBatches.Batch018.certificate1473.c := by decide
theorem rhsValid1727 : DerivedMapBatches.Batch018.certificate1473.Valid := DerivedMapBatches.Batch018.certificate1473valid
theorem linkedCommutativity1727 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5415.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch018.certificate1472.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch018.certificate1471.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch018.certificate1473.c x := by
  exact (linkedComposition1727 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1727)
theorem firstLink1728 : DerivedMapBatches.Batch020.certificate1627.algebra.mat = DerivedMapBatches.Batch067.certificate5416.a := by decide
theorem secondLink1728 : DerivedMapBatches.Batch020.certificate1628.algebra.mat = DerivedMapBatches.Batch067.certificate5416.b := by decide
theorem firstValid1728 : DerivedMapBatches.Batch020.certificate1627.Valid := DerivedMapBatches.Batch020.certificate1627valid
theorem secondValid1728 : DerivedMapBatches.Batch020.certificate1628.Valid := DerivedMapBatches.Batch020.certificate1628valid
theorem outputValid1728 : DerivedMapBatches.Batch067.certificate5416.Valid := DerivedMapBatches.Batch067.certificate5416valid
theorem linkedComposition1728 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5416.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5416.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1628.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1627.algebra.mat x) := by
  rw [firstLink1728, secondLink1728]
  exact DerivedMapBatches.Batch067.certificate5416valid.2 x
theorem rhsLink1728 : DerivedMapBatches.Batch067.certificate5416.c = DerivedMapBatches.Batch020.certificate1629.c := by decide
theorem rhsValid1728 : DerivedMapBatches.Batch020.certificate1629.Valid := DerivedMapBatches.Batch020.certificate1629valid
theorem linkedCommutativity1728 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5416.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1628.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1627.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1629.c x := by
  exact (linkedComposition1728 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1728)
theorem firstLink1729 : DerivedMapBatches.Batch020.certificate1630.algebra.mat = DerivedMapBatches.Batch067.certificate5417.a := by decide
theorem secondLink1729 : DerivedMapBatches.Batch020.certificate1631.algebra.mat = DerivedMapBatches.Batch067.certificate5417.b := by decide
theorem firstValid1729 : DerivedMapBatches.Batch020.certificate1630.Valid := DerivedMapBatches.Batch020.certificate1630valid
theorem secondValid1729 : DerivedMapBatches.Batch020.certificate1631.Valid := DerivedMapBatches.Batch020.certificate1631valid
theorem outputValid1729 : DerivedMapBatches.Batch067.certificate5417.Valid := DerivedMapBatches.Batch067.certificate5417valid
theorem linkedComposition1729 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5417.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5417.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1631.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1630.algebra.mat x) := by
  rw [firstLink1729, secondLink1729]
  exact DerivedMapBatches.Batch067.certificate5417valid.2 x
theorem rhsLink1729 : DerivedMapBatches.Batch067.certificate5417.c = DerivedMapBatches.Batch020.certificate1632.c := by decide
theorem rhsValid1729 : DerivedMapBatches.Batch020.certificate1632.Valid := DerivedMapBatches.Batch020.certificate1632valid
theorem linkedCommutativity1729 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5417.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1631.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1630.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1632.c x := by
  exact (linkedComposition1729 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1729)
theorem firstLink1730 : DerivedMapBatches.Batch013.certificate1056.algebra.mat = DerivedMapBatches.Batch067.certificate5418.a := by decide
theorem secondLink1730 : DerivedMapBatches.Batch014.certificate1130.algebra.mat = DerivedMapBatches.Batch067.certificate5418.b := by decide
theorem firstValid1730 : DerivedMapBatches.Batch013.certificate1056.Valid := DerivedMapBatches.Batch013.certificate1056valid
theorem secondValid1730 : DerivedMapBatches.Batch014.certificate1130.Valid := DerivedMapBatches.Batch014.certificate1130valid
theorem outputValid1730 : DerivedMapBatches.Batch067.certificate5418.Valid := DerivedMapBatches.Batch067.certificate5418valid
theorem linkedComposition1730 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5418.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5418.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat x) := by
  rw [firstLink1730, secondLink1730]
  exact DerivedMapBatches.Batch067.certificate5418valid.2 x
theorem rhsLink1730 : DerivedMapBatches.Batch067.certificate5418.c = DerivedMapBatches.Batch020.certificate1633.c := by decide
theorem rhsValid1730 : DerivedMapBatches.Batch020.certificate1633.Valid := DerivedMapBatches.Batch020.certificate1633valid
theorem linkedCommutativity1730 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5418.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1633.c x := by
  exact (linkedComposition1730 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1730)
theorem firstLink1731 : DerivedMapBatches.Batch020.certificate1634.algebra.mat = DerivedMapBatches.Batch067.certificate5419.a := by decide
theorem secondLink1731 : DerivedMapBatches.Batch020.certificate1635.algebra.mat = DerivedMapBatches.Batch067.certificate5419.b := by decide
theorem firstValid1731 : DerivedMapBatches.Batch020.certificate1634.Valid := DerivedMapBatches.Batch020.certificate1634valid
theorem secondValid1731 : DerivedMapBatches.Batch020.certificate1635.Valid := DerivedMapBatches.Batch020.certificate1635valid
theorem outputValid1731 : DerivedMapBatches.Batch067.certificate5419.Valid := DerivedMapBatches.Batch067.certificate5419valid
theorem linkedComposition1731 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5419.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5419.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1635.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1634.algebra.mat x) := by
  rw [firstLink1731, secondLink1731]
  exact DerivedMapBatches.Batch067.certificate5419valid.2 x
theorem rhsLink1731 : DerivedMapBatches.Batch067.certificate5419.c = DerivedMapBatches.Batch020.certificate1636.c := by decide
theorem rhsValid1731 : DerivedMapBatches.Batch020.certificate1636.Valid := DerivedMapBatches.Batch020.certificate1636valid
theorem linkedCommutativity1731 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5419.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1635.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1634.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1636.c x := by
  exact (linkedComposition1731 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1731)
theorem firstLink1732 : DerivedMapBatches.Batch013.certificate1059.algebra.mat = DerivedMapBatches.Batch067.certificate5420.a := by decide
theorem secondLink1732 : DerivedMapBatches.Batch014.certificate1132.algebra.mat = DerivedMapBatches.Batch067.certificate5420.b := by decide
theorem firstValid1732 : DerivedMapBatches.Batch013.certificate1059.Valid := DerivedMapBatches.Batch013.certificate1059valid
theorem secondValid1732 : DerivedMapBatches.Batch014.certificate1132.Valid := DerivedMapBatches.Batch014.certificate1132valid
theorem outputValid1732 : DerivedMapBatches.Batch067.certificate5420.Valid := DerivedMapBatches.Batch067.certificate5420valid
theorem linkedComposition1732 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5420.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5420.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat x) := by
  rw [firstLink1732, secondLink1732]
  exact DerivedMapBatches.Batch067.certificate5420valid.2 x
theorem rhsLink1732 : DerivedMapBatches.Batch067.certificate5420.c = DerivedMapBatches.Batch020.certificate1637.c := by decide
theorem rhsValid1732 : DerivedMapBatches.Batch020.certificate1637.Valid := DerivedMapBatches.Batch020.certificate1637valid
theorem linkedCommutativity1732 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5420.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1637.c x := by
  exact (linkedComposition1732 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1732)
theorem firstLink1733 : DerivedMapBatches.Batch020.certificate1638.algebra.mat = DerivedMapBatches.Batch067.certificate5421.a := by decide
theorem secondLink1733 : DerivedMapBatches.Batch020.certificate1639.algebra.mat = DerivedMapBatches.Batch067.certificate5421.b := by decide
theorem firstValid1733 : DerivedMapBatches.Batch020.certificate1638.Valid := DerivedMapBatches.Batch020.certificate1638valid
theorem secondValid1733 : DerivedMapBatches.Batch020.certificate1639.Valid := DerivedMapBatches.Batch020.certificate1639valid
theorem outputValid1733 : DerivedMapBatches.Batch067.certificate5421.Valid := DerivedMapBatches.Batch067.certificate5421valid
theorem linkedComposition1733 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5421.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5421.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1638.algebra.mat x) := by
  rw [firstLink1733, secondLink1733]
  exact DerivedMapBatches.Batch067.certificate5421valid.2 x
theorem rhsLink1733 : DerivedMapBatches.Batch067.certificate5421.c = DerivedMapBatches.Batch020.certificate1640.c := by decide
theorem rhsValid1733 : DerivedMapBatches.Batch020.certificate1640.Valid := DerivedMapBatches.Batch020.certificate1640valid
theorem linkedCommutativity1733 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5421.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1638.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1640.c x := by
  exact (linkedComposition1733 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1733)
theorem firstLink1734 : DerivedMapBatches.Batch020.certificate1641.algebra.mat = DerivedMapBatches.Batch067.certificate5422.a := by decide
theorem secondLink1734 : DerivedMapBatches.Batch020.certificate1642.algebra.mat = DerivedMapBatches.Batch067.certificate5422.b := by decide
theorem firstValid1734 : DerivedMapBatches.Batch020.certificate1641.Valid := DerivedMapBatches.Batch020.certificate1641valid
theorem secondValid1734 : DerivedMapBatches.Batch020.certificate1642.Valid := DerivedMapBatches.Batch020.certificate1642valid
theorem outputValid1734 : DerivedMapBatches.Batch067.certificate5422.Valid := DerivedMapBatches.Batch067.certificate5422valid
theorem linkedComposition1734 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5422.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5422.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1641.algebra.mat x) := by
  rw [firstLink1734, secondLink1734]
  exact DerivedMapBatches.Batch067.certificate5422valid.2 x
theorem rhsLink1734 : DerivedMapBatches.Batch067.certificate5422.c = DerivedMapBatches.Batch020.certificate1643.c := by decide
theorem rhsValid1734 : DerivedMapBatches.Batch020.certificate1643.Valid := DerivedMapBatches.Batch020.certificate1643valid
theorem linkedCommutativity1734 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5422.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1641.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1643.c x := by
  exact (linkedComposition1734 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1734)
theorem firstLink1735 : DerivedMapBatches.Batch020.certificate1644.algebra.mat = DerivedMapBatches.Batch067.certificate5423.a := by decide
theorem secondLink1735 : DerivedMapBatches.Batch020.certificate1645.algebra.mat = DerivedMapBatches.Batch067.certificate5423.b := by decide
theorem firstValid1735 : DerivedMapBatches.Batch020.certificate1644.Valid := DerivedMapBatches.Batch020.certificate1644valid
theorem secondValid1735 : DerivedMapBatches.Batch020.certificate1645.Valid := DerivedMapBatches.Batch020.certificate1645valid
theorem outputValid1735 : DerivedMapBatches.Batch067.certificate5423.Valid := DerivedMapBatches.Batch067.certificate5423valid
theorem linkedComposition1735 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5423.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5423.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1644.algebra.mat x) := by
  rw [firstLink1735, secondLink1735]
  exact DerivedMapBatches.Batch067.certificate5423valid.2 x
theorem rhsLink1735 : DerivedMapBatches.Batch067.certificate5423.c = DerivedMapBatches.Batch020.certificate1646.c := by decide
theorem rhsValid1735 : DerivedMapBatches.Batch020.certificate1646.Valid := DerivedMapBatches.Batch020.certificate1646valid
theorem linkedCommutativity1735 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5423.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1644.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1646.c x := by
  exact (linkedComposition1735 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1735)
theorem firstLink1736 : DerivedMapBatches.Batch020.certificate1647.algebra.mat = DerivedMapBatches.Batch067.certificate5424.a := by decide
theorem secondLink1736 : DerivedMapBatches.Batch020.certificate1648.algebra.mat = DerivedMapBatches.Batch067.certificate5424.b := by decide
theorem firstValid1736 : DerivedMapBatches.Batch020.certificate1647.Valid := DerivedMapBatches.Batch020.certificate1647valid
theorem secondValid1736 : DerivedMapBatches.Batch020.certificate1648.Valid := DerivedMapBatches.Batch020.certificate1648valid
theorem outputValid1736 : DerivedMapBatches.Batch067.certificate5424.Valid := DerivedMapBatches.Batch067.certificate5424valid
theorem linkedComposition1736 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5424.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5424.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1647.algebra.mat x) := by
  rw [firstLink1736, secondLink1736]
  exact DerivedMapBatches.Batch067.certificate5424valid.2 x
theorem rhsLink1736 : DerivedMapBatches.Batch067.certificate5424.c = DerivedMapBatches.Batch020.certificate1649.c := by decide
theorem rhsValid1736 : DerivedMapBatches.Batch020.certificate1649.Valid := DerivedMapBatches.Batch020.certificate1649valid
theorem linkedCommutativity1736 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5424.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1647.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1649.c x := by
  exact (linkedComposition1736 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1736)
theorem firstLink1737 : DerivedMapBatches.Batch020.certificate1650.algebra.mat = DerivedMapBatches.Batch067.certificate5425.a := by decide
theorem secondLink1737 : DerivedMapBatches.Batch020.certificate1651.algebra.mat = DerivedMapBatches.Batch067.certificate5425.b := by decide
theorem firstValid1737 : DerivedMapBatches.Batch020.certificate1650.Valid := DerivedMapBatches.Batch020.certificate1650valid
theorem secondValid1737 : DerivedMapBatches.Batch020.certificate1651.Valid := DerivedMapBatches.Batch020.certificate1651valid
theorem outputValid1737 : DerivedMapBatches.Batch067.certificate5425.Valid := DerivedMapBatches.Batch067.certificate5425valid
theorem linkedComposition1737 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5425.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5425.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1650.algebra.mat x) := by
  rw [firstLink1737, secondLink1737]
  exact DerivedMapBatches.Batch067.certificate5425valid.2 x
theorem rhsLink1737 : DerivedMapBatches.Batch067.certificate5425.c = DerivedMapBatches.Batch020.certificate1652.c := by decide
theorem rhsValid1737 : DerivedMapBatches.Batch020.certificate1652.Valid := DerivedMapBatches.Batch020.certificate1652valid
theorem linkedCommutativity1737 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5425.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1650.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1652.c x := by
  exact (linkedComposition1737 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1737)
theorem firstLink1738 : DerivedMapBatches.Batch013.certificate1074.algebra.mat = DerivedMapBatches.Batch067.certificate5426.a := by decide
theorem secondLink1738 : DerivedMapBatches.Batch014.certificate1142.algebra.mat = DerivedMapBatches.Batch067.certificate5426.b := by decide
theorem firstValid1738 : DerivedMapBatches.Batch013.certificate1074.Valid := DerivedMapBatches.Batch013.certificate1074valid
theorem secondValid1738 : DerivedMapBatches.Batch014.certificate1142.Valid := DerivedMapBatches.Batch014.certificate1142valid
theorem outputValid1738 : DerivedMapBatches.Batch067.certificate5426.Valid := DerivedMapBatches.Batch067.certificate5426valid
theorem linkedComposition1738 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5426.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5426.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat x) := by
  rw [firstLink1738, secondLink1738]
  exact DerivedMapBatches.Batch067.certificate5426valid.2 x
theorem rhsLink1738 : DerivedMapBatches.Batch067.certificate5426.c = DerivedMapBatches.Batch020.certificate1653.c := by decide
theorem rhsValid1738 : DerivedMapBatches.Batch020.certificate1653.Valid := DerivedMapBatches.Batch020.certificate1653valid
theorem linkedCommutativity1738 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5426.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1653.c x := by
  exact (linkedComposition1738 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1738)
theorem firstLink1739 : DerivedMapBatches.Batch020.certificate1654.algebra.mat = DerivedMapBatches.Batch067.certificate5427.a := by decide
theorem secondLink1739 : DerivedMapBatches.Batch020.certificate1655.algebra.mat = DerivedMapBatches.Batch067.certificate5427.b := by decide
theorem firstValid1739 : DerivedMapBatches.Batch020.certificate1654.Valid := DerivedMapBatches.Batch020.certificate1654valid
theorem secondValid1739 : DerivedMapBatches.Batch020.certificate1655.Valid := DerivedMapBatches.Batch020.certificate1655valid
theorem outputValid1739 : DerivedMapBatches.Batch067.certificate5427.Valid := DerivedMapBatches.Batch067.certificate5427valid
theorem linkedComposition1739 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5427.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5427.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1655.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1654.algebra.mat x) := by
  rw [firstLink1739, secondLink1739]
  exact DerivedMapBatches.Batch067.certificate5427valid.2 x
theorem rhsLink1739 : DerivedMapBatches.Batch067.certificate5427.c = DerivedMapBatches.Batch020.certificate1656.c := by decide
theorem rhsValid1739 : DerivedMapBatches.Batch020.certificate1656.Valid := DerivedMapBatches.Batch020.certificate1656valid
theorem linkedCommutativity1739 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5427.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1655.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1654.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1656.c x := by
  exact (linkedComposition1739 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1739)
theorem firstLink1740 : DerivedMapBatches.Batch020.certificate1657.algebra.mat = DerivedMapBatches.Batch067.certificate5428.a := by decide
theorem secondLink1740 : DerivedMapBatches.Batch020.certificate1658.algebra.mat = DerivedMapBatches.Batch067.certificate5428.b := by decide
theorem firstValid1740 : DerivedMapBatches.Batch020.certificate1657.Valid := DerivedMapBatches.Batch020.certificate1657valid
theorem secondValid1740 : DerivedMapBatches.Batch020.certificate1658.Valid := DerivedMapBatches.Batch020.certificate1658valid
theorem outputValid1740 : DerivedMapBatches.Batch067.certificate5428.Valid := DerivedMapBatches.Batch067.certificate5428valid
theorem linkedComposition1740 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5428.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5428.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1658.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1657.algebra.mat x) := by
  rw [firstLink1740, secondLink1740]
  exact DerivedMapBatches.Batch067.certificate5428valid.2 x
theorem rhsLink1740 : DerivedMapBatches.Batch067.certificate5428.c = DerivedMapBatches.Batch020.certificate1659.c := by decide
theorem rhsValid1740 : DerivedMapBatches.Batch020.certificate1659.Valid := DerivedMapBatches.Batch020.certificate1659valid
theorem linkedCommutativity1740 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5428.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1658.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1657.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1659.c x := by
  exact (linkedComposition1740 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1740)
theorem firstLink1741 : DerivedMapBatches.Batch013.certificate1083.algebra.mat = DerivedMapBatches.Batch067.certificate5429.a := by decide
theorem secondLink1741 : DerivedMapBatches.Batch014.certificate1148.algebra.mat = DerivedMapBatches.Batch067.certificate5429.b := by decide
theorem firstValid1741 : DerivedMapBatches.Batch013.certificate1083.Valid := DerivedMapBatches.Batch013.certificate1083valid
theorem secondValid1741 : DerivedMapBatches.Batch014.certificate1148.Valid := DerivedMapBatches.Batch014.certificate1148valid
theorem outputValid1741 : DerivedMapBatches.Batch067.certificate5429.Valid := DerivedMapBatches.Batch067.certificate5429valid
theorem linkedComposition1741 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5429.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5429.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat x) := by
  rw [firstLink1741, secondLink1741]
  exact DerivedMapBatches.Batch067.certificate5429valid.2 x
theorem rhsLink1741 : DerivedMapBatches.Batch067.certificate5429.c = DerivedMapBatches.Batch020.certificate1660.c := by decide
theorem rhsValid1741 : DerivedMapBatches.Batch020.certificate1660.Valid := DerivedMapBatches.Batch020.certificate1660valid
theorem linkedCommutativity1741 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5429.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1660.c x := by
  exact (linkedComposition1741 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1741)
theorem firstLink1742 : DerivedMapBatches.Batch020.certificate1661.algebra.mat = DerivedMapBatches.Batch067.certificate5430.a := by decide
theorem secondLink1742 : DerivedMapBatches.Batch020.certificate1662.algebra.mat = DerivedMapBatches.Batch067.certificate5430.b := by decide
theorem firstValid1742 : DerivedMapBatches.Batch020.certificate1661.Valid := DerivedMapBatches.Batch020.certificate1661valid
theorem secondValid1742 : DerivedMapBatches.Batch020.certificate1662.Valid := DerivedMapBatches.Batch020.certificate1662valid
theorem outputValid1742 : DerivedMapBatches.Batch067.certificate5430.Valid := DerivedMapBatches.Batch067.certificate5430valid
theorem linkedComposition1742 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5430.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5430.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1662.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1661.algebra.mat x) := by
  rw [firstLink1742, secondLink1742]
  exact DerivedMapBatches.Batch067.certificate5430valid.2 x
theorem rhsLink1742 : DerivedMapBatches.Batch067.certificate5430.c = DerivedMapBatches.Batch020.certificate1663.c := by decide
theorem rhsValid1742 : DerivedMapBatches.Batch020.certificate1663.Valid := DerivedMapBatches.Batch020.certificate1663valid
theorem linkedCommutativity1742 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5430.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1662.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1661.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1663.c x := by
  exact (linkedComposition1742 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1742)
theorem firstLink1743 : DerivedMapBatches.Batch013.certificate1092.algebra.mat = DerivedMapBatches.Batch067.certificate5431.a := by decide
theorem secondLink1743 : DerivedMapBatches.Batch014.certificate1154.algebra.mat = DerivedMapBatches.Batch067.certificate5431.b := by decide
theorem firstValid1743 : DerivedMapBatches.Batch013.certificate1092.Valid := DerivedMapBatches.Batch013.certificate1092valid
theorem secondValid1743 : DerivedMapBatches.Batch014.certificate1154.Valid := DerivedMapBatches.Batch014.certificate1154valid
theorem outputValid1743 : DerivedMapBatches.Batch067.certificate5431.Valid := DerivedMapBatches.Batch067.certificate5431valid
theorem linkedComposition1743 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5431.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5431.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat x) := by
  rw [firstLink1743, secondLink1743]
  exact DerivedMapBatches.Batch067.certificate5431valid.2 x
theorem rhsLink1743 : DerivedMapBatches.Batch067.certificate5431.c = DerivedMapBatches.Batch020.certificate1664.c := by decide
theorem rhsValid1743 : DerivedMapBatches.Batch020.certificate1664.Valid := DerivedMapBatches.Batch020.certificate1664valid
theorem linkedCommutativity1743 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5431.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1664.c x := by
  exact (linkedComposition1743 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1743)
theorem firstLink1744 : DerivedMapBatches.Batch013.certificate1098.algebra.mat = DerivedMapBatches.Batch067.certificate5432.a := by decide
theorem secondLink1744 : DerivedMapBatches.Batch014.certificate1158.algebra.mat = DerivedMapBatches.Batch067.certificate5432.b := by decide
theorem firstValid1744 : DerivedMapBatches.Batch013.certificate1098.Valid := DerivedMapBatches.Batch013.certificate1098valid
theorem secondValid1744 : DerivedMapBatches.Batch014.certificate1158.Valid := DerivedMapBatches.Batch014.certificate1158valid
theorem outputValid1744 : DerivedMapBatches.Batch067.certificate5432.Valid := DerivedMapBatches.Batch067.certificate5432valid
theorem linkedComposition1744 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5432.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5432.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat x) := by
  rw [firstLink1744, secondLink1744]
  exact DerivedMapBatches.Batch067.certificate5432valid.2 x
theorem rhsLink1744 : DerivedMapBatches.Batch067.certificate5432.c = DerivedMapBatches.Batch020.certificate1665.c := by decide
theorem rhsValid1744 : DerivedMapBatches.Batch020.certificate1665.Valid := DerivedMapBatches.Batch020.certificate1665valid
theorem linkedCommutativity1744 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5432.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1665.c x := by
  exact (linkedComposition1744 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1744)
theorem firstLink1745 : DerivedMapBatches.Batch013.certificate1104.algebra.mat = DerivedMapBatches.Batch067.certificate5433.a := by decide
theorem secondLink1745 : DerivedMapBatches.Batch014.certificate1162.algebra.mat = DerivedMapBatches.Batch067.certificate5433.b := by decide
theorem firstValid1745 : DerivedMapBatches.Batch013.certificate1104.Valid := DerivedMapBatches.Batch013.certificate1104valid
theorem secondValid1745 : DerivedMapBatches.Batch014.certificate1162.Valid := DerivedMapBatches.Batch014.certificate1162valid
theorem outputValid1745 : DerivedMapBatches.Batch067.certificate5433.Valid := DerivedMapBatches.Batch067.certificate5433valid
theorem linkedComposition1745 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5433.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5433.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat x) := by
  rw [firstLink1745, secondLink1745]
  exact DerivedMapBatches.Batch067.certificate5433valid.2 x
theorem rhsLink1745 : DerivedMapBatches.Batch067.certificate5433.c = DerivedMapBatches.Batch020.certificate1666.c := by decide
theorem rhsValid1745 : DerivedMapBatches.Batch020.certificate1666.Valid := DerivedMapBatches.Batch020.certificate1666valid
theorem linkedCommutativity1745 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5433.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1666.c x := by
  exact (linkedComposition1745 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1745)
theorem firstLink1746 : DerivedMapBatches.Batch013.certificate1110.algebra.mat = DerivedMapBatches.Batch067.certificate5434.a := by decide
theorem secondLink1746 : DerivedMapBatches.Batch014.certificate1166.algebra.mat = DerivedMapBatches.Batch067.certificate5434.b := by decide
theorem firstValid1746 : DerivedMapBatches.Batch013.certificate1110.Valid := DerivedMapBatches.Batch013.certificate1110valid
theorem secondValid1746 : DerivedMapBatches.Batch014.certificate1166.Valid := DerivedMapBatches.Batch014.certificate1166valid
theorem outputValid1746 : DerivedMapBatches.Batch067.certificate5434.Valid := DerivedMapBatches.Batch067.certificate5434valid
theorem linkedComposition1746 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5434.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5434.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat x) := by
  rw [firstLink1746, secondLink1746]
  exact DerivedMapBatches.Batch067.certificate5434valid.2 x
theorem rhsLink1746 : DerivedMapBatches.Batch067.certificate5434.c = DerivedMapBatches.Batch020.certificate1667.c := by decide
theorem rhsValid1746 : DerivedMapBatches.Batch020.certificate1667.Valid := DerivedMapBatches.Batch020.certificate1667valid
theorem linkedCommutativity1746 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5434.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1667.c x := by
  exact (linkedComposition1746 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1746)
theorem firstLink1747 : DerivedMapBatches.Batch020.certificate1668.algebra.mat = DerivedMapBatches.Batch067.certificate5435.a := by decide
theorem secondLink1747 : DerivedMapBatches.Batch020.certificate1669.algebra.mat = DerivedMapBatches.Batch067.certificate5435.b := by decide
theorem firstValid1747 : DerivedMapBatches.Batch020.certificate1668.Valid := DerivedMapBatches.Batch020.certificate1668valid
theorem secondValid1747 : DerivedMapBatches.Batch020.certificate1669.Valid := DerivedMapBatches.Batch020.certificate1669valid
theorem outputValid1747 : DerivedMapBatches.Batch067.certificate5435.Valid := DerivedMapBatches.Batch067.certificate5435valid
theorem linkedComposition1747 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5435.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5435.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1668.algebra.mat x) := by
  rw [firstLink1747, secondLink1747]
  exact DerivedMapBatches.Batch067.certificate5435valid.2 x
theorem rhsLink1747 : DerivedMapBatches.Batch067.certificate5435.c = DerivedMapBatches.Batch020.certificate1670.c := by decide
theorem rhsValid1747 : DerivedMapBatches.Batch020.certificate1670.Valid := DerivedMapBatches.Batch020.certificate1670valid
theorem linkedCommutativity1747 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5435.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1668.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1670.c x := by
  exact (linkedComposition1747 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1747)
theorem firstLink1748 : DerivedMapBatches.Batch020.certificate1671.algebra.mat = DerivedMapBatches.Batch067.certificate5436.a := by decide
theorem secondLink1748 : DerivedMapBatches.Batch020.certificate1672.algebra.mat = DerivedMapBatches.Batch067.certificate5436.b := by decide
theorem firstValid1748 : DerivedMapBatches.Batch020.certificate1671.Valid := DerivedMapBatches.Batch020.certificate1671valid
theorem secondValid1748 : DerivedMapBatches.Batch020.certificate1672.Valid := DerivedMapBatches.Batch020.certificate1672valid
theorem outputValid1748 : DerivedMapBatches.Batch067.certificate5436.Valid := DerivedMapBatches.Batch067.certificate5436valid
theorem linkedComposition1748 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5436.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5436.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1671.algebra.mat x) := by
  rw [firstLink1748, secondLink1748]
  exact DerivedMapBatches.Batch067.certificate5436valid.2 x
theorem rhsLink1748 : DerivedMapBatches.Batch067.certificate5436.c = DerivedMapBatches.Batch020.certificate1673.c := by decide
theorem rhsValid1748 : DerivedMapBatches.Batch020.certificate1673.Valid := DerivedMapBatches.Batch020.certificate1673valid
theorem linkedCommutativity1748 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5436.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1671.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1673.c x := by
  exact (linkedComposition1748 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1748)
theorem firstLink1749 : DerivedMapBatches.Batch020.certificate1674.algebra.mat = DerivedMapBatches.Batch067.certificate5437.a := by decide
theorem secondLink1749 : DerivedMapBatches.Batch020.certificate1675.algebra.mat = DerivedMapBatches.Batch067.certificate5437.b := by decide
theorem firstValid1749 : DerivedMapBatches.Batch020.certificate1674.Valid := DerivedMapBatches.Batch020.certificate1674valid
theorem secondValid1749 : DerivedMapBatches.Batch020.certificate1675.Valid := DerivedMapBatches.Batch020.certificate1675valid
theorem outputValid1749 : DerivedMapBatches.Batch067.certificate5437.Valid := DerivedMapBatches.Batch067.certificate5437valid
theorem linkedComposition1749 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5437.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5437.c x = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1674.algebra.mat x) := by
  rw [firstLink1749, secondLink1749]
  exact DerivedMapBatches.Batch067.certificate5437valid.2 x
theorem rhsLink1749 : DerivedMapBatches.Batch067.certificate5437.c = DerivedMapBatches.Batch020.certificate1676.c := by decide
theorem rhsValid1749 : DerivedMapBatches.Batch020.certificate1676.Valid := DerivedMapBatches.Batch020.certificate1676valid
theorem linkedCommutativity1749 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5437.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch020.certificate1675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch020.certificate1674.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch020.certificate1676.c x := by
  exact (linkedComposition1749 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1749)
end DerivedLinkageBatches.Batch034
