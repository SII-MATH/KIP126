import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch015
import DerivedMapBatches.Batch016
import DerivedMapBatches.Batch017
import DerivedMapBatches.Batch066
import DerivedMapBatches.Batch067
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch033
theorem firstLink1650 : DerivedMapBatches.Batch015.certificate1201.algebra.mat = DerivedMapBatches.Batch066.certificate5338.a := by decide
theorem secondLink1650 : DerivedMapBatches.Batch011.certificate923.algebra.mat = DerivedMapBatches.Batch066.certificate5338.b := by decide
theorem firstValid1650 : DerivedMapBatches.Batch015.certificate1201.Valid := DerivedMapBatches.Batch015.certificate1201valid
theorem secondValid1650 : DerivedMapBatches.Batch011.certificate923.Valid := DerivedMapBatches.Batch011.certificate923valid
theorem outputValid1650 : DerivedMapBatches.Batch066.certificate5338.Valid := DerivedMapBatches.Batch066.certificate5338valid
theorem linkedComposition1650 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5338.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5338.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1201.algebra.mat x) := by
  rw [firstLink1650, secondLink1650]
  exact DerivedMapBatches.Batch066.certificate5338valid.2 x
theorem rhsLink1650 : DerivedMapBatches.Batch066.certificate5338.c = DerivedMapBatches.Batch015.certificate1202.c := by decide
theorem rhsValid1650 : DerivedMapBatches.Batch015.certificate1202.Valid := DerivedMapBatches.Batch015.certificate1202valid
theorem linkedCommutativity1650 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5338.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1201.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1202.c x := by
  exact (linkedComposition1650 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1650)
theorem firstLink1651 : DerivedMapBatches.Batch015.certificate1203.algebra.mat = DerivedMapBatches.Batch066.certificate5339.a := by decide
theorem secondLink1651 : DerivedMapBatches.Batch015.certificate1204.algebra.mat = DerivedMapBatches.Batch066.certificate5339.b := by decide
theorem firstValid1651 : DerivedMapBatches.Batch015.certificate1203.Valid := DerivedMapBatches.Batch015.certificate1203valid
theorem secondValid1651 : DerivedMapBatches.Batch015.certificate1204.Valid := DerivedMapBatches.Batch015.certificate1204valid
theorem outputValid1651 : DerivedMapBatches.Batch066.certificate5339.Valid := DerivedMapBatches.Batch066.certificate5339valid
theorem linkedComposition1651 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5339.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5339.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1204.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1203.algebra.mat x) := by
  rw [firstLink1651, secondLink1651]
  exact DerivedMapBatches.Batch066.certificate5339valid.2 x
theorem rhsLink1651 : DerivedMapBatches.Batch066.certificate5339.c = DerivedMapBatches.Batch015.certificate1205.c := by decide
theorem rhsValid1651 : DerivedMapBatches.Batch015.certificate1205.Valid := DerivedMapBatches.Batch015.certificate1205valid
theorem linkedCommutativity1651 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5339.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1204.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1203.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1205.c x := by
  exact (linkedComposition1651 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1651)
theorem firstLink1652 : DerivedMapBatches.Batch015.certificate1206.algebra.mat = DerivedMapBatches.Batch066.certificate5340.a := by decide
theorem secondLink1652 : DerivedMapBatches.Batch011.certificate929.algebra.mat = DerivedMapBatches.Batch066.certificate5340.b := by decide
theorem firstValid1652 : DerivedMapBatches.Batch015.certificate1206.Valid := DerivedMapBatches.Batch015.certificate1206valid
theorem secondValid1652 : DerivedMapBatches.Batch011.certificate929.Valid := DerivedMapBatches.Batch011.certificate929valid
theorem outputValid1652 : DerivedMapBatches.Batch066.certificate5340.Valid := DerivedMapBatches.Batch066.certificate5340valid
theorem linkedComposition1652 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5340.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5340.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1206.algebra.mat x) := by
  rw [firstLink1652, secondLink1652]
  exact DerivedMapBatches.Batch066.certificate5340valid.2 x
theorem rhsLink1652 : DerivedMapBatches.Batch066.certificate5340.c = DerivedMapBatches.Batch015.certificate1207.c := by decide
theorem rhsValid1652 : DerivedMapBatches.Batch015.certificate1207.Valid := DerivedMapBatches.Batch015.certificate1207valid
theorem linkedCommutativity1652 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5340.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1206.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1207.c x := by
  exact (linkedComposition1652 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1652)
theorem firstLink1653 : DerivedMapBatches.Batch015.certificate1208.algebra.mat = DerivedMapBatches.Batch066.certificate5341.a := by decide
theorem secondLink1653 : DerivedMapBatches.Batch011.certificate932.algebra.mat = DerivedMapBatches.Batch066.certificate5341.b := by decide
theorem firstValid1653 : DerivedMapBatches.Batch015.certificate1208.Valid := DerivedMapBatches.Batch015.certificate1208valid
theorem secondValid1653 : DerivedMapBatches.Batch011.certificate932.Valid := DerivedMapBatches.Batch011.certificate932valid
theorem outputValid1653 : DerivedMapBatches.Batch066.certificate5341.Valid := DerivedMapBatches.Batch066.certificate5341valid
theorem linkedComposition1653 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5341.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5341.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1208.algebra.mat x) := by
  rw [firstLink1653, secondLink1653]
  exact DerivedMapBatches.Batch066.certificate5341valid.2 x
theorem rhsLink1653 : DerivedMapBatches.Batch066.certificate5341.c = DerivedMapBatches.Batch015.certificate1209.c := by decide
theorem rhsValid1653 : DerivedMapBatches.Batch015.certificate1209.Valid := DerivedMapBatches.Batch015.certificate1209valid
theorem linkedCommutativity1653 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5341.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1208.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1209.c x := by
  exact (linkedComposition1653 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1653)
theorem firstLink1654 : DerivedMapBatches.Batch015.certificate1210.algebra.mat = DerivedMapBatches.Batch066.certificate5342.a := by decide
theorem secondLink1654 : DerivedMapBatches.Batch015.certificate1211.algebra.mat = DerivedMapBatches.Batch066.certificate5342.b := by decide
theorem firstValid1654 : DerivedMapBatches.Batch015.certificate1210.Valid := DerivedMapBatches.Batch015.certificate1210valid
theorem secondValid1654 : DerivedMapBatches.Batch015.certificate1211.Valid := DerivedMapBatches.Batch015.certificate1211valid
theorem outputValid1654 : DerivedMapBatches.Batch066.certificate5342.Valid := DerivedMapBatches.Batch066.certificate5342valid
theorem linkedComposition1654 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5342.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5342.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1210.algebra.mat x) := by
  rw [firstLink1654, secondLink1654]
  exact DerivedMapBatches.Batch066.certificate5342valid.2 x
theorem rhsLink1654 : DerivedMapBatches.Batch066.certificate5342.c = DerivedMapBatches.Batch015.certificate1212.c := by decide
theorem rhsValid1654 : DerivedMapBatches.Batch015.certificate1212.Valid := DerivedMapBatches.Batch015.certificate1212valid
theorem linkedCommutativity1654 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5342.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1210.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1212.c x := by
  exact (linkedComposition1654 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1654)
theorem firstLink1655 : DerivedMapBatches.Batch015.certificate1213.algebra.mat = DerivedMapBatches.Batch066.certificate5343.a := by decide
theorem secondLink1655 : DerivedMapBatches.Batch011.certificate935.algebra.mat = DerivedMapBatches.Batch066.certificate5343.b := by decide
theorem firstValid1655 : DerivedMapBatches.Batch015.certificate1213.Valid := DerivedMapBatches.Batch015.certificate1213valid
theorem secondValid1655 : DerivedMapBatches.Batch011.certificate935.Valid := DerivedMapBatches.Batch011.certificate935valid
theorem outputValid1655 : DerivedMapBatches.Batch066.certificate5343.Valid := DerivedMapBatches.Batch066.certificate5343valid
theorem linkedComposition1655 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5343.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5343.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1213.algebra.mat x) := by
  rw [firstLink1655, secondLink1655]
  exact DerivedMapBatches.Batch066.certificate5343valid.2 x
theorem rhsLink1655 : DerivedMapBatches.Batch066.certificate5343.c = DerivedMapBatches.Batch015.certificate1214.c := by decide
theorem rhsValid1655 : DerivedMapBatches.Batch015.certificate1214.Valid := DerivedMapBatches.Batch015.certificate1214valid
theorem linkedCommutativity1655 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5343.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1213.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1214.c x := by
  exact (linkedComposition1655 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1655)
theorem firstLink1656 : DerivedMapBatches.Batch015.certificate1215.algebra.mat = DerivedMapBatches.Batch066.certificate5344.a := by decide
theorem secondLink1656 : DerivedMapBatches.Batch015.certificate1216.algebra.mat = DerivedMapBatches.Batch066.certificate5344.b := by decide
theorem firstValid1656 : DerivedMapBatches.Batch015.certificate1215.Valid := DerivedMapBatches.Batch015.certificate1215valid
theorem secondValid1656 : DerivedMapBatches.Batch015.certificate1216.Valid := DerivedMapBatches.Batch015.certificate1216valid
theorem outputValid1656 : DerivedMapBatches.Batch066.certificate5344.Valid := DerivedMapBatches.Batch066.certificate5344valid
theorem linkedComposition1656 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5344.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5344.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1216.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1215.algebra.mat x) := by
  rw [firstLink1656, secondLink1656]
  exact DerivedMapBatches.Batch066.certificate5344valid.2 x
theorem rhsLink1656 : DerivedMapBatches.Batch066.certificate5344.c = DerivedMapBatches.Batch015.certificate1217.c := by decide
theorem rhsValid1656 : DerivedMapBatches.Batch015.certificate1217.Valid := DerivedMapBatches.Batch015.certificate1217valid
theorem linkedCommutativity1656 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5344.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1216.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1215.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1217.c x := by
  exact (linkedComposition1656 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1656)
theorem firstLink1657 : DerivedMapBatches.Batch015.certificate1218.algebra.mat = DerivedMapBatches.Batch066.certificate5345.a := by decide
theorem secondLink1657 : DerivedMapBatches.Batch011.certificate941.algebra.mat = DerivedMapBatches.Batch066.certificate5345.b := by decide
theorem firstValid1657 : DerivedMapBatches.Batch015.certificate1218.Valid := DerivedMapBatches.Batch015.certificate1218valid
theorem secondValid1657 : DerivedMapBatches.Batch011.certificate941.Valid := DerivedMapBatches.Batch011.certificate941valid
theorem outputValid1657 : DerivedMapBatches.Batch066.certificate5345.Valid := DerivedMapBatches.Batch066.certificate5345valid
theorem linkedComposition1657 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5345.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5345.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1218.algebra.mat x) := by
  rw [firstLink1657, secondLink1657]
  exact DerivedMapBatches.Batch066.certificate5345valid.2 x
theorem rhsLink1657 : DerivedMapBatches.Batch066.certificate5345.c = DerivedMapBatches.Batch015.certificate1219.c := by decide
theorem rhsValid1657 : DerivedMapBatches.Batch015.certificate1219.Valid := DerivedMapBatches.Batch015.certificate1219valid
theorem linkedCommutativity1657 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5345.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1218.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1219.c x := by
  exact (linkedComposition1657 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1657)
theorem firstLink1658 : DerivedMapBatches.Batch015.certificate1220.algebra.mat = DerivedMapBatches.Batch066.certificate5346.a := by decide
theorem secondLink1658 : DerivedMapBatches.Batch011.certificate944.algebra.mat = DerivedMapBatches.Batch066.certificate5346.b := by decide
theorem firstValid1658 : DerivedMapBatches.Batch015.certificate1220.Valid := DerivedMapBatches.Batch015.certificate1220valid
theorem secondValid1658 : DerivedMapBatches.Batch011.certificate944.Valid := DerivedMapBatches.Batch011.certificate944valid
theorem outputValid1658 : DerivedMapBatches.Batch066.certificate5346.Valid := DerivedMapBatches.Batch066.certificate5346valid
theorem linkedComposition1658 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5346.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5346.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1220.algebra.mat x) := by
  rw [firstLink1658, secondLink1658]
  exact DerivedMapBatches.Batch066.certificate5346valid.2 x
theorem rhsLink1658 : DerivedMapBatches.Batch066.certificate5346.c = DerivedMapBatches.Batch015.certificate1221.c := by decide
theorem rhsValid1658 : DerivedMapBatches.Batch015.certificate1221.Valid := DerivedMapBatches.Batch015.certificate1221valid
theorem linkedCommutativity1658 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5346.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1220.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1221.c x := by
  exact (linkedComposition1658 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1658)
theorem firstLink1659 : DerivedMapBatches.Batch015.certificate1222.algebra.mat = DerivedMapBatches.Batch066.certificate5347.a := by decide
theorem secondLink1659 : DerivedMapBatches.Batch015.certificate1223.algebra.mat = DerivedMapBatches.Batch066.certificate5347.b := by decide
theorem firstValid1659 : DerivedMapBatches.Batch015.certificate1222.Valid := DerivedMapBatches.Batch015.certificate1222valid
theorem secondValid1659 : DerivedMapBatches.Batch015.certificate1223.Valid := DerivedMapBatches.Batch015.certificate1223valid
theorem outputValid1659 : DerivedMapBatches.Batch066.certificate5347.Valid := DerivedMapBatches.Batch066.certificate5347valid
theorem linkedComposition1659 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5347.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5347.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1222.algebra.mat x) := by
  rw [firstLink1659, secondLink1659]
  exact DerivedMapBatches.Batch066.certificate5347valid.2 x
theorem rhsLink1659 : DerivedMapBatches.Batch066.certificate5347.c = DerivedMapBatches.Batch015.certificate1224.c := by decide
theorem rhsValid1659 : DerivedMapBatches.Batch015.certificate1224.Valid := DerivedMapBatches.Batch015.certificate1224valid
theorem linkedCommutativity1659 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5347.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1222.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1224.c x := by
  exact (linkedComposition1659 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1659)
theorem firstLink1660 : DerivedMapBatches.Batch015.certificate1225.algebra.mat = DerivedMapBatches.Batch066.certificate5348.a := by decide
theorem secondLink1660 : DerivedMapBatches.Batch015.certificate1226.algebra.mat = DerivedMapBatches.Batch066.certificate5348.b := by decide
theorem firstValid1660 : DerivedMapBatches.Batch015.certificate1225.Valid := DerivedMapBatches.Batch015.certificate1225valid
theorem secondValid1660 : DerivedMapBatches.Batch015.certificate1226.Valid := DerivedMapBatches.Batch015.certificate1226valid
theorem outputValid1660 : DerivedMapBatches.Batch066.certificate5348.Valid := DerivedMapBatches.Batch066.certificate5348valid
theorem linkedComposition1660 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5348.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5348.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1226.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1225.algebra.mat x) := by
  rw [firstLink1660, secondLink1660]
  exact DerivedMapBatches.Batch066.certificate5348valid.2 x
theorem rhsLink1660 : DerivedMapBatches.Batch066.certificate5348.c = DerivedMapBatches.Batch015.certificate1227.c := by decide
theorem rhsValid1660 : DerivedMapBatches.Batch015.certificate1227.Valid := DerivedMapBatches.Batch015.certificate1227valid
theorem linkedCommutativity1660 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5348.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1226.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1225.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1227.c x := by
  exact (linkedComposition1660 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1660)
theorem firstLink1661 : DerivedMapBatches.Batch015.certificate1228.algebra.mat = DerivedMapBatches.Batch066.certificate5349.a := by decide
theorem secondLink1661 : DerivedMapBatches.Batch011.certificate950.algebra.mat = DerivedMapBatches.Batch066.certificate5349.b := by decide
theorem firstValid1661 : DerivedMapBatches.Batch015.certificate1228.Valid := DerivedMapBatches.Batch015.certificate1228valid
theorem secondValid1661 : DerivedMapBatches.Batch011.certificate950.Valid := DerivedMapBatches.Batch011.certificate950valid
theorem outputValid1661 : DerivedMapBatches.Batch066.certificate5349.Valid := DerivedMapBatches.Batch066.certificate5349valid
theorem linkedComposition1661 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5349.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5349.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1228.algebra.mat x) := by
  rw [firstLink1661, secondLink1661]
  exact DerivedMapBatches.Batch066.certificate5349valid.2 x
theorem rhsLink1661 : DerivedMapBatches.Batch066.certificate5349.c = DerivedMapBatches.Batch015.certificate1229.c := by decide
theorem rhsValid1661 : DerivedMapBatches.Batch015.certificate1229.Valid := DerivedMapBatches.Batch015.certificate1229valid
theorem linkedCommutativity1661 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5349.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1228.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1229.c x := by
  exact (linkedComposition1661 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1661)
theorem firstLink1662 : DerivedMapBatches.Batch015.certificate1230.algebra.mat = DerivedMapBatches.Batch066.certificate5350.a := by decide
theorem secondLink1662 : DerivedMapBatches.Batch011.certificate953.algebra.mat = DerivedMapBatches.Batch066.certificate5350.b := by decide
theorem firstValid1662 : DerivedMapBatches.Batch015.certificate1230.Valid := DerivedMapBatches.Batch015.certificate1230valid
theorem secondValid1662 : DerivedMapBatches.Batch011.certificate953.Valid := DerivedMapBatches.Batch011.certificate953valid
theorem outputValid1662 : DerivedMapBatches.Batch066.certificate5350.Valid := DerivedMapBatches.Batch066.certificate5350valid
theorem linkedComposition1662 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5350.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5350.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1230.algebra.mat x) := by
  rw [firstLink1662, secondLink1662]
  exact DerivedMapBatches.Batch066.certificate5350valid.2 x
theorem rhsLink1662 : DerivedMapBatches.Batch066.certificate5350.c = DerivedMapBatches.Batch015.certificate1231.c := by decide
theorem rhsValid1662 : DerivedMapBatches.Batch015.certificate1231.Valid := DerivedMapBatches.Batch015.certificate1231valid
theorem linkedCommutativity1662 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5350.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1230.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1231.c x := by
  exact (linkedComposition1662 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1662)
theorem firstLink1663 : DerivedMapBatches.Batch015.certificate1232.algebra.mat = DerivedMapBatches.Batch066.certificate5351.a := by decide
theorem secondLink1663 : DerivedMapBatches.Batch015.certificate1233.algebra.mat = DerivedMapBatches.Batch066.certificate5351.b := by decide
theorem firstValid1663 : DerivedMapBatches.Batch015.certificate1232.Valid := DerivedMapBatches.Batch015.certificate1232valid
theorem secondValid1663 : DerivedMapBatches.Batch015.certificate1233.Valid := DerivedMapBatches.Batch015.certificate1233valid
theorem outputValid1663 : DerivedMapBatches.Batch066.certificate5351.Valid := DerivedMapBatches.Batch066.certificate5351valid
theorem linkedComposition1663 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5351.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5351.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1233.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1232.algebra.mat x) := by
  rw [firstLink1663, secondLink1663]
  exact DerivedMapBatches.Batch066.certificate5351valid.2 x
theorem rhsLink1663 : DerivedMapBatches.Batch066.certificate5351.c = DerivedMapBatches.Batch015.certificate1234.c := by decide
theorem rhsValid1663 : DerivedMapBatches.Batch015.certificate1234.Valid := DerivedMapBatches.Batch015.certificate1234valid
theorem linkedCommutativity1663 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5351.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1233.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1232.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1234.c x := by
  exact (linkedComposition1663 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1663)
theorem firstLink1664 : DerivedMapBatches.Batch015.certificate1235.algebra.mat = DerivedMapBatches.Batch066.certificate5352.a := by decide
theorem secondLink1664 : DerivedMapBatches.Batch011.certificate956.algebra.mat = DerivedMapBatches.Batch066.certificate5352.b := by decide
theorem firstValid1664 : DerivedMapBatches.Batch015.certificate1235.Valid := DerivedMapBatches.Batch015.certificate1235valid
theorem secondValid1664 : DerivedMapBatches.Batch011.certificate956.Valid := DerivedMapBatches.Batch011.certificate956valid
theorem outputValid1664 : DerivedMapBatches.Batch066.certificate5352.Valid := DerivedMapBatches.Batch066.certificate5352valid
theorem linkedComposition1664 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5352.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5352.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1235.algebra.mat x) := by
  rw [firstLink1664, secondLink1664]
  exact DerivedMapBatches.Batch066.certificate5352valid.2 x
theorem rhsLink1664 : DerivedMapBatches.Batch066.certificate5352.c = DerivedMapBatches.Batch015.certificate1236.c := by decide
theorem rhsValid1664 : DerivedMapBatches.Batch015.certificate1236.Valid := DerivedMapBatches.Batch015.certificate1236valid
theorem linkedCommutativity1664 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5352.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1235.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1236.c x := by
  exact (linkedComposition1664 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1664)
theorem firstLink1665 : DerivedMapBatches.Batch015.certificate1237.algebra.mat = DerivedMapBatches.Batch066.certificate5353.a := by decide
theorem secondLink1665 : DerivedMapBatches.Batch011.certificate959.algebra.mat = DerivedMapBatches.Batch066.certificate5353.b := by decide
theorem firstValid1665 : DerivedMapBatches.Batch015.certificate1237.Valid := DerivedMapBatches.Batch015.certificate1237valid
theorem secondValid1665 : DerivedMapBatches.Batch011.certificate959.Valid := DerivedMapBatches.Batch011.certificate959valid
theorem outputValid1665 : DerivedMapBatches.Batch066.certificate5353.Valid := DerivedMapBatches.Batch066.certificate5353valid
theorem linkedComposition1665 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5353.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5353.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1237.algebra.mat x) := by
  rw [firstLink1665, secondLink1665]
  exact DerivedMapBatches.Batch066.certificate5353valid.2 x
theorem rhsLink1665 : DerivedMapBatches.Batch066.certificate5353.c = DerivedMapBatches.Batch015.certificate1238.c := by decide
theorem rhsValid1665 : DerivedMapBatches.Batch015.certificate1238.Valid := DerivedMapBatches.Batch015.certificate1238valid
theorem linkedCommutativity1665 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5353.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1237.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1238.c x := by
  exact (linkedComposition1665 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1665)
theorem firstLink1666 : DerivedMapBatches.Batch015.certificate1239.algebra.mat = DerivedMapBatches.Batch066.certificate5354.a := by decide
theorem secondLink1666 : DerivedMapBatches.Batch015.certificate1240.algebra.mat = DerivedMapBatches.Batch066.certificate5354.b := by decide
theorem firstValid1666 : DerivedMapBatches.Batch015.certificate1239.Valid := DerivedMapBatches.Batch015.certificate1239valid
theorem secondValid1666 : DerivedMapBatches.Batch015.certificate1240.Valid := DerivedMapBatches.Batch015.certificate1240valid
theorem outputValid1666 : DerivedMapBatches.Batch066.certificate5354.Valid := DerivedMapBatches.Batch066.certificate5354valid
theorem linkedComposition1666 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5354.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5354.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1240.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1239.algebra.mat x) := by
  rw [firstLink1666, secondLink1666]
  exact DerivedMapBatches.Batch066.certificate5354valid.2 x
theorem rhsLink1666 : DerivedMapBatches.Batch066.certificate5354.c = DerivedMapBatches.Batch015.certificate1241.c := by decide
theorem rhsValid1666 : DerivedMapBatches.Batch015.certificate1241.Valid := DerivedMapBatches.Batch015.certificate1241valid
theorem linkedCommutativity1666 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5354.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1240.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1239.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1241.c x := by
  exact (linkedComposition1666 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1666)
theorem firstLink1667 : DerivedMapBatches.Batch015.certificate1242.algebra.mat = DerivedMapBatches.Batch066.certificate5355.a := by decide
theorem secondLink1667 : DerivedMapBatches.Batch012.certificate962.algebra.mat = DerivedMapBatches.Batch066.certificate5355.b := by decide
theorem firstValid1667 : DerivedMapBatches.Batch015.certificate1242.Valid := DerivedMapBatches.Batch015.certificate1242valid
theorem secondValid1667 : DerivedMapBatches.Batch012.certificate962.Valid := DerivedMapBatches.Batch012.certificate962valid
theorem outputValid1667 : DerivedMapBatches.Batch066.certificate5355.Valid := DerivedMapBatches.Batch066.certificate5355valid
theorem linkedComposition1667 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5355.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5355.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1242.algebra.mat x) := by
  rw [firstLink1667, secondLink1667]
  exact DerivedMapBatches.Batch066.certificate5355valid.2 x
theorem rhsLink1667 : DerivedMapBatches.Batch066.certificate5355.c = DerivedMapBatches.Batch015.certificate1243.c := by decide
theorem rhsValid1667 : DerivedMapBatches.Batch015.certificate1243.Valid := DerivedMapBatches.Batch015.certificate1243valid
theorem linkedCommutativity1667 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5355.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1242.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1243.c x := by
  exact (linkedComposition1667 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1667)
theorem firstLink1668 : DerivedMapBatches.Batch015.certificate1244.algebra.mat = DerivedMapBatches.Batch066.certificate5356.a := by decide
theorem secondLink1668 : DerivedMapBatches.Batch015.certificate1245.algebra.mat = DerivedMapBatches.Batch066.certificate5356.b := by decide
theorem firstValid1668 : DerivedMapBatches.Batch015.certificate1244.Valid := DerivedMapBatches.Batch015.certificate1244valid
theorem secondValid1668 : DerivedMapBatches.Batch015.certificate1245.Valid := DerivedMapBatches.Batch015.certificate1245valid
theorem outputValid1668 : DerivedMapBatches.Batch066.certificate5356.Valid := DerivedMapBatches.Batch066.certificate5356valid
theorem linkedComposition1668 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5356.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5356.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1245.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1244.algebra.mat x) := by
  rw [firstLink1668, secondLink1668]
  exact DerivedMapBatches.Batch066.certificate5356valid.2 x
theorem rhsLink1668 : DerivedMapBatches.Batch066.certificate5356.c = DerivedMapBatches.Batch015.certificate1246.c := by decide
theorem rhsValid1668 : DerivedMapBatches.Batch015.certificate1246.Valid := DerivedMapBatches.Batch015.certificate1246valid
theorem linkedCommutativity1668 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5356.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1245.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1244.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1246.c x := by
  exact (linkedComposition1668 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1668)
theorem firstLink1669 : DerivedMapBatches.Batch015.certificate1247.algebra.mat = DerivedMapBatches.Batch066.certificate5357.a := by decide
theorem secondLink1669 : DerivedMapBatches.Batch012.certificate968.algebra.mat = DerivedMapBatches.Batch066.certificate5357.b := by decide
theorem firstValid1669 : DerivedMapBatches.Batch015.certificate1247.Valid := DerivedMapBatches.Batch015.certificate1247valid
theorem secondValid1669 : DerivedMapBatches.Batch012.certificate968.Valid := DerivedMapBatches.Batch012.certificate968valid
theorem outputValid1669 : DerivedMapBatches.Batch066.certificate5357.Valid := DerivedMapBatches.Batch066.certificate5357valid
theorem linkedComposition1669 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5357.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5357.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1247.algebra.mat x) := by
  rw [firstLink1669, secondLink1669]
  exact DerivedMapBatches.Batch066.certificate5357valid.2 x
theorem rhsLink1669 : DerivedMapBatches.Batch066.certificate5357.c = DerivedMapBatches.Batch015.certificate1248.c := by decide
theorem rhsValid1669 : DerivedMapBatches.Batch015.certificate1248.Valid := DerivedMapBatches.Batch015.certificate1248valid
theorem linkedCommutativity1669 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5357.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1247.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1248.c x := by
  exact (linkedComposition1669 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1669)
theorem firstLink1670 : DerivedMapBatches.Batch015.certificate1249.algebra.mat = DerivedMapBatches.Batch066.certificate5358.a := by decide
theorem secondLink1670 : DerivedMapBatches.Batch015.certificate1250.algebra.mat = DerivedMapBatches.Batch066.certificate5358.b := by decide
theorem firstValid1670 : DerivedMapBatches.Batch015.certificate1249.Valid := DerivedMapBatches.Batch015.certificate1249valid
theorem secondValid1670 : DerivedMapBatches.Batch015.certificate1250.Valid := DerivedMapBatches.Batch015.certificate1250valid
theorem outputValid1670 : DerivedMapBatches.Batch066.certificate5358.Valid := DerivedMapBatches.Batch066.certificate5358valid
theorem linkedComposition1670 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5358.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5358.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1249.algebra.mat x) := by
  rw [firstLink1670, secondLink1670]
  exact DerivedMapBatches.Batch066.certificate5358valid.2 x
theorem rhsLink1670 : DerivedMapBatches.Batch066.certificate5358.c = DerivedMapBatches.Batch015.certificate1251.c := by decide
theorem rhsValid1670 : DerivedMapBatches.Batch015.certificate1251.Valid := DerivedMapBatches.Batch015.certificate1251valid
theorem linkedCommutativity1670 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5358.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1249.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1251.c x := by
  exact (linkedComposition1670 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1670)
theorem firstLink1671 : DerivedMapBatches.Batch015.certificate1252.algebra.mat = DerivedMapBatches.Batch066.certificate5359.a := by decide
theorem secondLink1671 : DerivedMapBatches.Batch012.certificate974.algebra.mat = DerivedMapBatches.Batch066.certificate5359.b := by decide
theorem firstValid1671 : DerivedMapBatches.Batch015.certificate1252.Valid := DerivedMapBatches.Batch015.certificate1252valid
theorem secondValid1671 : DerivedMapBatches.Batch012.certificate974.Valid := DerivedMapBatches.Batch012.certificate974valid
theorem outputValid1671 : DerivedMapBatches.Batch066.certificate5359.Valid := DerivedMapBatches.Batch066.certificate5359valid
theorem linkedComposition1671 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5359.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5359.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1252.algebra.mat x) := by
  rw [firstLink1671, secondLink1671]
  exact DerivedMapBatches.Batch066.certificate5359valid.2 x
theorem rhsLink1671 : DerivedMapBatches.Batch066.certificate5359.c = DerivedMapBatches.Batch015.certificate1253.c := by decide
theorem rhsValid1671 : DerivedMapBatches.Batch015.certificate1253.Valid := DerivedMapBatches.Batch015.certificate1253valid
theorem linkedCommutativity1671 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5359.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1252.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1253.c x := by
  exact (linkedComposition1671 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1671)
theorem firstLink1672 : DerivedMapBatches.Batch015.certificate1254.algebra.mat = DerivedMapBatches.Batch067.certificate5360.a := by decide
theorem secondLink1672 : DerivedMapBatches.Batch015.certificate1255.algebra.mat = DerivedMapBatches.Batch067.certificate5360.b := by decide
theorem firstValid1672 : DerivedMapBatches.Batch015.certificate1254.Valid := DerivedMapBatches.Batch015.certificate1254valid
theorem secondValid1672 : DerivedMapBatches.Batch015.certificate1255.Valid := DerivedMapBatches.Batch015.certificate1255valid
theorem outputValid1672 : DerivedMapBatches.Batch067.certificate5360.Valid := DerivedMapBatches.Batch067.certificate5360valid
theorem linkedComposition1672 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5360.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5360.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1255.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1254.algebra.mat x) := by
  rw [firstLink1672, secondLink1672]
  exact DerivedMapBatches.Batch067.certificate5360valid.2 x
theorem rhsLink1672 : DerivedMapBatches.Batch067.certificate5360.c = DerivedMapBatches.Batch015.certificate1256.c := by decide
theorem rhsValid1672 : DerivedMapBatches.Batch015.certificate1256.Valid := DerivedMapBatches.Batch015.certificate1256valid
theorem linkedCommutativity1672 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5360.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1255.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1254.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1256.c x := by
  exact (linkedComposition1672 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1672)
theorem firstLink1673 : DerivedMapBatches.Batch015.certificate1257.algebra.mat = DerivedMapBatches.Batch067.certificate5361.a := by decide
theorem secondLink1673 : DerivedMapBatches.Batch012.certificate977.algebra.mat = DerivedMapBatches.Batch067.certificate5361.b := by decide
theorem firstValid1673 : DerivedMapBatches.Batch015.certificate1257.Valid := DerivedMapBatches.Batch015.certificate1257valid
theorem secondValid1673 : DerivedMapBatches.Batch012.certificate977.Valid := DerivedMapBatches.Batch012.certificate977valid
theorem outputValid1673 : DerivedMapBatches.Batch067.certificate5361.Valid := DerivedMapBatches.Batch067.certificate5361valid
theorem linkedComposition1673 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5361.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5361.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1257.algebra.mat x) := by
  rw [firstLink1673, secondLink1673]
  exact DerivedMapBatches.Batch067.certificate5361valid.2 x
theorem rhsLink1673 : DerivedMapBatches.Batch067.certificate5361.c = DerivedMapBatches.Batch015.certificate1258.c := by decide
theorem rhsValid1673 : DerivedMapBatches.Batch015.certificate1258.Valid := DerivedMapBatches.Batch015.certificate1258valid
theorem linkedCommutativity1673 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5361.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1257.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1258.c x := by
  exact (linkedComposition1673 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1673)
theorem firstLink1674 : DerivedMapBatches.Batch015.certificate1259.algebra.mat = DerivedMapBatches.Batch067.certificate5362.a := by decide
theorem secondLink1674 : DerivedMapBatches.Batch015.certificate1260.algebra.mat = DerivedMapBatches.Batch067.certificate5362.b := by decide
theorem firstValid1674 : DerivedMapBatches.Batch015.certificate1259.Valid := DerivedMapBatches.Batch015.certificate1259valid
theorem secondValid1674 : DerivedMapBatches.Batch015.certificate1260.Valid := DerivedMapBatches.Batch015.certificate1260valid
theorem outputValid1674 : DerivedMapBatches.Batch067.certificate5362.Valid := DerivedMapBatches.Batch067.certificate5362valid
theorem linkedComposition1674 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5362.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5362.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1260.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1259.algebra.mat x) := by
  rw [firstLink1674, secondLink1674]
  exact DerivedMapBatches.Batch067.certificate5362valid.2 x
theorem rhsLink1674 : DerivedMapBatches.Batch067.certificate5362.c = DerivedMapBatches.Batch015.certificate1261.c := by decide
theorem rhsValid1674 : DerivedMapBatches.Batch015.certificate1261.Valid := DerivedMapBatches.Batch015.certificate1261valid
theorem linkedCommutativity1674 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5362.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1260.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1259.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1261.c x := by
  exact (linkedComposition1674 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1674)
theorem firstLink1675 : DerivedMapBatches.Batch015.certificate1262.algebra.mat = DerivedMapBatches.Batch067.certificate5363.a := by decide
theorem secondLink1675 : DerivedMapBatches.Batch015.certificate1263.algebra.mat = DerivedMapBatches.Batch067.certificate5363.b := by decide
theorem firstValid1675 : DerivedMapBatches.Batch015.certificate1262.Valid := DerivedMapBatches.Batch015.certificate1262valid
theorem secondValid1675 : DerivedMapBatches.Batch015.certificate1263.Valid := DerivedMapBatches.Batch015.certificate1263valid
theorem outputValid1675 : DerivedMapBatches.Batch067.certificate5363.Valid := DerivedMapBatches.Batch067.certificate5363valid
theorem linkedComposition1675 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5363.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5363.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1263.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1262.algebra.mat x) := by
  rw [firstLink1675, secondLink1675]
  exact DerivedMapBatches.Batch067.certificate5363valid.2 x
theorem rhsLink1675 : DerivedMapBatches.Batch067.certificate5363.c = DerivedMapBatches.Batch015.certificate1264.c := by decide
theorem rhsValid1675 : DerivedMapBatches.Batch015.certificate1264.Valid := DerivedMapBatches.Batch015.certificate1264valid
theorem linkedCommutativity1675 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5363.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1263.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1262.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1264.c x := by
  exact (linkedComposition1675 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1675)
theorem firstLink1676 : DerivedMapBatches.Batch016.certificate1318.algebra.mat = DerivedMapBatches.Batch067.certificate5364.a := by decide
theorem secondLink1676 : DerivedMapBatches.Batch016.certificate1319.algebra.mat = DerivedMapBatches.Batch067.certificate5364.b := by decide
theorem firstValid1676 : DerivedMapBatches.Batch016.certificate1318.Valid := DerivedMapBatches.Batch016.certificate1318valid
theorem secondValid1676 : DerivedMapBatches.Batch016.certificate1319.Valid := DerivedMapBatches.Batch016.certificate1319valid
theorem outputValid1676 : DerivedMapBatches.Batch067.certificate5364.Valid := DerivedMapBatches.Batch067.certificate5364valid
theorem linkedComposition1676 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5364.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5364.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1319.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1318.algebra.mat x) := by
  rw [firstLink1676, secondLink1676]
  exact DerivedMapBatches.Batch067.certificate5364valid.2 x
theorem rhsLink1676 : DerivedMapBatches.Batch067.certificate5364.c = DerivedMapBatches.Batch016.certificate1320.c := by decide
theorem rhsValid1676 : DerivedMapBatches.Batch016.certificate1320.Valid := DerivedMapBatches.Batch016.certificate1320valid
theorem linkedCommutativity1676 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5364.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1319.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1318.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1320.c x := by
  exact (linkedComposition1676 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1676)
theorem firstLink1677 : DerivedMapBatches.Batch016.certificate1321.algebra.mat = DerivedMapBatches.Batch067.certificate5365.a := by decide
theorem secondLink1677 : DerivedMapBatches.Batch016.certificate1322.algebra.mat = DerivedMapBatches.Batch067.certificate5365.b := by decide
theorem firstValid1677 : DerivedMapBatches.Batch016.certificate1321.Valid := DerivedMapBatches.Batch016.certificate1321valid
theorem secondValid1677 : DerivedMapBatches.Batch016.certificate1322.Valid := DerivedMapBatches.Batch016.certificate1322valid
theorem outputValid1677 : DerivedMapBatches.Batch067.certificate5365.Valid := DerivedMapBatches.Batch067.certificate5365valid
theorem linkedComposition1677 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5365.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5365.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1322.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1321.algebra.mat x) := by
  rw [firstLink1677, secondLink1677]
  exact DerivedMapBatches.Batch067.certificate5365valid.2 x
theorem rhsLink1677 : DerivedMapBatches.Batch067.certificate5365.c = DerivedMapBatches.Batch016.certificate1323.c := by decide
theorem rhsValid1677 : DerivedMapBatches.Batch016.certificate1323.Valid := DerivedMapBatches.Batch016.certificate1323valid
theorem linkedCommutativity1677 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5365.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1322.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1321.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1323.c x := by
  exact (linkedComposition1677 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1677)
theorem firstLink1678 : DerivedMapBatches.Batch016.certificate1324.algebra.mat = DerivedMapBatches.Batch067.certificate5366.a := by decide
theorem secondLink1678 : DerivedMapBatches.Batch016.certificate1325.algebra.mat = DerivedMapBatches.Batch067.certificate5366.b := by decide
theorem firstValid1678 : DerivedMapBatches.Batch016.certificate1324.Valid := DerivedMapBatches.Batch016.certificate1324valid
theorem secondValid1678 : DerivedMapBatches.Batch016.certificate1325.Valid := DerivedMapBatches.Batch016.certificate1325valid
theorem outputValid1678 : DerivedMapBatches.Batch067.certificate5366.Valid := DerivedMapBatches.Batch067.certificate5366valid
theorem linkedComposition1678 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5366.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5366.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1325.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1324.algebra.mat x) := by
  rw [firstLink1678, secondLink1678]
  exact DerivedMapBatches.Batch067.certificate5366valid.2 x
theorem rhsLink1678 : DerivedMapBatches.Batch067.certificate5366.c = DerivedMapBatches.Batch016.certificate1326.c := by decide
theorem rhsValid1678 : DerivedMapBatches.Batch016.certificate1326.Valid := DerivedMapBatches.Batch016.certificate1326valid
theorem linkedCommutativity1678 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5366.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1325.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1324.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1326.c x := by
  exact (linkedComposition1678 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1678)
theorem firstLink1679 : DerivedMapBatches.Batch016.certificate1327.algebra.mat = DerivedMapBatches.Batch067.certificate5367.a := by decide
theorem secondLink1679 : DerivedMapBatches.Batch016.certificate1328.algebra.mat = DerivedMapBatches.Batch067.certificate5367.b := by decide
theorem firstValid1679 : DerivedMapBatches.Batch016.certificate1327.Valid := DerivedMapBatches.Batch016.certificate1327valid
theorem secondValid1679 : DerivedMapBatches.Batch016.certificate1328.Valid := DerivedMapBatches.Batch016.certificate1328valid
theorem outputValid1679 : DerivedMapBatches.Batch067.certificate5367.Valid := DerivedMapBatches.Batch067.certificate5367valid
theorem linkedComposition1679 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5367.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5367.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1328.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1327.algebra.mat x) := by
  rw [firstLink1679, secondLink1679]
  exact DerivedMapBatches.Batch067.certificate5367valid.2 x
theorem rhsLink1679 : DerivedMapBatches.Batch067.certificate5367.c = DerivedMapBatches.Batch016.certificate1329.c := by decide
theorem rhsValid1679 : DerivedMapBatches.Batch016.certificate1329.Valid := DerivedMapBatches.Batch016.certificate1329valid
theorem linkedCommutativity1679 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5367.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1328.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1327.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1329.c x := by
  exact (linkedComposition1679 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1679)
theorem firstLink1680 : DerivedMapBatches.Batch016.certificate1330.algebra.mat = DerivedMapBatches.Batch067.certificate5368.a := by decide
theorem secondLink1680 : DerivedMapBatches.Batch016.certificate1331.algebra.mat = DerivedMapBatches.Batch067.certificate5368.b := by decide
theorem firstValid1680 : DerivedMapBatches.Batch016.certificate1330.Valid := DerivedMapBatches.Batch016.certificate1330valid
theorem secondValid1680 : DerivedMapBatches.Batch016.certificate1331.Valid := DerivedMapBatches.Batch016.certificate1331valid
theorem outputValid1680 : DerivedMapBatches.Batch067.certificate5368.Valid := DerivedMapBatches.Batch067.certificate5368valid
theorem linkedComposition1680 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5368.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5368.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1331.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1330.algebra.mat x) := by
  rw [firstLink1680, secondLink1680]
  exact DerivedMapBatches.Batch067.certificate5368valid.2 x
theorem rhsLink1680 : DerivedMapBatches.Batch067.certificate5368.c = DerivedMapBatches.Batch016.certificate1332.c := by decide
theorem rhsValid1680 : DerivedMapBatches.Batch016.certificate1332.Valid := DerivedMapBatches.Batch016.certificate1332valid
theorem linkedCommutativity1680 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5368.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1331.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1330.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1332.c x := by
  exact (linkedComposition1680 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1680)
theorem firstLink1681 : DerivedMapBatches.Batch016.certificate1333.algebra.mat = DerivedMapBatches.Batch067.certificate5369.a := by decide
theorem secondLink1681 : DerivedMapBatches.Batch016.certificate1334.algebra.mat = DerivedMapBatches.Batch067.certificate5369.b := by decide
theorem firstValid1681 : DerivedMapBatches.Batch016.certificate1333.Valid := DerivedMapBatches.Batch016.certificate1333valid
theorem secondValid1681 : DerivedMapBatches.Batch016.certificate1334.Valid := DerivedMapBatches.Batch016.certificate1334valid
theorem outputValid1681 : DerivedMapBatches.Batch067.certificate5369.Valid := DerivedMapBatches.Batch067.certificate5369valid
theorem linkedComposition1681 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5369.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5369.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1334.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1333.algebra.mat x) := by
  rw [firstLink1681, secondLink1681]
  exact DerivedMapBatches.Batch067.certificate5369valid.2 x
theorem rhsLink1681 : DerivedMapBatches.Batch067.certificate5369.c = DerivedMapBatches.Batch016.certificate1335.c := by decide
theorem rhsValid1681 : DerivedMapBatches.Batch016.certificate1335.Valid := DerivedMapBatches.Batch016.certificate1335valid
theorem linkedCommutativity1681 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5369.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1334.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1333.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1335.c x := by
  exact (linkedComposition1681 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1681)
theorem firstLink1682 : DerivedMapBatches.Batch016.certificate1336.algebra.mat = DerivedMapBatches.Batch067.certificate5370.a := by decide
theorem secondLink1682 : DerivedMapBatches.Batch016.certificate1337.algebra.mat = DerivedMapBatches.Batch067.certificate5370.b := by decide
theorem firstValid1682 : DerivedMapBatches.Batch016.certificate1336.Valid := DerivedMapBatches.Batch016.certificate1336valid
theorem secondValid1682 : DerivedMapBatches.Batch016.certificate1337.Valid := DerivedMapBatches.Batch016.certificate1337valid
theorem outputValid1682 : DerivedMapBatches.Batch067.certificate5370.Valid := DerivedMapBatches.Batch067.certificate5370valid
theorem linkedComposition1682 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5370.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5370.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1337.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1336.algebra.mat x) := by
  rw [firstLink1682, secondLink1682]
  exact DerivedMapBatches.Batch067.certificate5370valid.2 x
theorem rhsLink1682 : DerivedMapBatches.Batch067.certificate5370.c = DerivedMapBatches.Batch016.certificate1338.c := by decide
theorem rhsValid1682 : DerivedMapBatches.Batch016.certificate1338.Valid := DerivedMapBatches.Batch016.certificate1338valid
theorem linkedCommutativity1682 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5370.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1337.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1336.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1338.c x := by
  exact (linkedComposition1682 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1682)
theorem firstLink1683 : DerivedMapBatches.Batch016.certificate1339.algebra.mat = DerivedMapBatches.Batch067.certificate5371.a := by decide
theorem secondLink1683 : DerivedMapBatches.Batch016.certificate1340.algebra.mat = DerivedMapBatches.Batch067.certificate5371.b := by decide
theorem firstValid1683 : DerivedMapBatches.Batch016.certificate1339.Valid := DerivedMapBatches.Batch016.certificate1339valid
theorem secondValid1683 : DerivedMapBatches.Batch016.certificate1340.Valid := DerivedMapBatches.Batch016.certificate1340valid
theorem outputValid1683 : DerivedMapBatches.Batch067.certificate5371.Valid := DerivedMapBatches.Batch067.certificate5371valid
theorem linkedComposition1683 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5371.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5371.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1340.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1339.algebra.mat x) := by
  rw [firstLink1683, secondLink1683]
  exact DerivedMapBatches.Batch067.certificate5371valid.2 x
theorem rhsLink1683 : DerivedMapBatches.Batch067.certificate5371.c = DerivedMapBatches.Batch016.certificate1341.c := by decide
theorem rhsValid1683 : DerivedMapBatches.Batch016.certificate1341.Valid := DerivedMapBatches.Batch016.certificate1341valid
theorem linkedCommutativity1683 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5371.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1340.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1339.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1341.c x := by
  exact (linkedComposition1683 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1683)
theorem firstLink1684 : DerivedMapBatches.Batch016.certificate1342.algebra.mat = DerivedMapBatches.Batch067.certificate5372.a := by decide
theorem secondLink1684 : DerivedMapBatches.Batch016.certificate1343.algebra.mat = DerivedMapBatches.Batch067.certificate5372.b := by decide
theorem firstValid1684 : DerivedMapBatches.Batch016.certificate1342.Valid := DerivedMapBatches.Batch016.certificate1342valid
theorem secondValid1684 : DerivedMapBatches.Batch016.certificate1343.Valid := DerivedMapBatches.Batch016.certificate1343valid
theorem outputValid1684 : DerivedMapBatches.Batch067.certificate5372.Valid := DerivedMapBatches.Batch067.certificate5372valid
theorem linkedComposition1684 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5372.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5372.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1343.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1342.algebra.mat x) := by
  rw [firstLink1684, secondLink1684]
  exact DerivedMapBatches.Batch067.certificate5372valid.2 x
theorem rhsLink1684 : DerivedMapBatches.Batch067.certificate5372.c = DerivedMapBatches.Batch016.certificate1344.c := by decide
theorem rhsValid1684 : DerivedMapBatches.Batch016.certificate1344.Valid := DerivedMapBatches.Batch016.certificate1344valid
theorem linkedCommutativity1684 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5372.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1343.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1342.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1344.c x := by
  exact (linkedComposition1684 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1684)
theorem firstLink1685 : DerivedMapBatches.Batch016.certificate1345.algebra.mat = DerivedMapBatches.Batch067.certificate5373.a := by decide
theorem secondLink1685 : DerivedMapBatches.Batch016.certificate1346.algebra.mat = DerivedMapBatches.Batch067.certificate5373.b := by decide
theorem firstValid1685 : DerivedMapBatches.Batch016.certificate1345.Valid := DerivedMapBatches.Batch016.certificate1345valid
theorem secondValid1685 : DerivedMapBatches.Batch016.certificate1346.Valid := DerivedMapBatches.Batch016.certificate1346valid
theorem outputValid1685 : DerivedMapBatches.Batch067.certificate5373.Valid := DerivedMapBatches.Batch067.certificate5373valid
theorem linkedComposition1685 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5373.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5373.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1346.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1345.algebra.mat x) := by
  rw [firstLink1685, secondLink1685]
  exact DerivedMapBatches.Batch067.certificate5373valid.2 x
theorem rhsLink1685 : DerivedMapBatches.Batch067.certificate5373.c = DerivedMapBatches.Batch016.certificate1347.c := by decide
theorem rhsValid1685 : DerivedMapBatches.Batch016.certificate1347.Valid := DerivedMapBatches.Batch016.certificate1347valid
theorem linkedCommutativity1685 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5373.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1346.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1345.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1347.c x := by
  exact (linkedComposition1685 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1685)
theorem firstLink1686 : DerivedMapBatches.Batch016.certificate1348.algebra.mat = DerivedMapBatches.Batch067.certificate5374.a := by decide
theorem secondLink1686 : DerivedMapBatches.Batch016.certificate1349.algebra.mat = DerivedMapBatches.Batch067.certificate5374.b := by decide
theorem firstValid1686 : DerivedMapBatches.Batch016.certificate1348.Valid := DerivedMapBatches.Batch016.certificate1348valid
theorem secondValid1686 : DerivedMapBatches.Batch016.certificate1349.Valid := DerivedMapBatches.Batch016.certificate1349valid
theorem outputValid1686 : DerivedMapBatches.Batch067.certificate5374.Valid := DerivedMapBatches.Batch067.certificate5374valid
theorem linkedComposition1686 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5374.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5374.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1349.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1348.algebra.mat x) := by
  rw [firstLink1686, secondLink1686]
  exact DerivedMapBatches.Batch067.certificate5374valid.2 x
theorem rhsLink1686 : DerivedMapBatches.Batch067.certificate5374.c = DerivedMapBatches.Batch016.certificate1350.c := by decide
theorem rhsValid1686 : DerivedMapBatches.Batch016.certificate1350.Valid := DerivedMapBatches.Batch016.certificate1350valid
theorem linkedCommutativity1686 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5374.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1349.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1348.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1350.c x := by
  exact (linkedComposition1686 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1686)
theorem firstLink1687 : DerivedMapBatches.Batch016.certificate1351.algebra.mat = DerivedMapBatches.Batch067.certificate5375.a := by decide
theorem secondLink1687 : DerivedMapBatches.Batch016.certificate1352.algebra.mat = DerivedMapBatches.Batch067.certificate5375.b := by decide
theorem firstValid1687 : DerivedMapBatches.Batch016.certificate1351.Valid := DerivedMapBatches.Batch016.certificate1351valid
theorem secondValid1687 : DerivedMapBatches.Batch016.certificate1352.Valid := DerivedMapBatches.Batch016.certificate1352valid
theorem outputValid1687 : DerivedMapBatches.Batch067.certificate5375.Valid := DerivedMapBatches.Batch067.certificate5375valid
theorem linkedComposition1687 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5375.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5375.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1352.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1351.algebra.mat x) := by
  rw [firstLink1687, secondLink1687]
  exact DerivedMapBatches.Batch067.certificate5375valid.2 x
theorem rhsLink1687 : DerivedMapBatches.Batch067.certificate5375.c = DerivedMapBatches.Batch016.certificate1353.c := by decide
theorem rhsValid1687 : DerivedMapBatches.Batch016.certificate1353.Valid := DerivedMapBatches.Batch016.certificate1353valid
theorem linkedCommutativity1687 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5375.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1352.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1351.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1353.c x := by
  exact (linkedComposition1687 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1687)
theorem firstLink1688 : DerivedMapBatches.Batch016.certificate1354.algebra.mat = DerivedMapBatches.Batch067.certificate5376.a := by decide
theorem secondLink1688 : DerivedMapBatches.Batch016.certificate1355.algebra.mat = DerivedMapBatches.Batch067.certificate5376.b := by decide
theorem firstValid1688 : DerivedMapBatches.Batch016.certificate1354.Valid := DerivedMapBatches.Batch016.certificate1354valid
theorem secondValid1688 : DerivedMapBatches.Batch016.certificate1355.Valid := DerivedMapBatches.Batch016.certificate1355valid
theorem outputValid1688 : DerivedMapBatches.Batch067.certificate5376.Valid := DerivedMapBatches.Batch067.certificate5376valid
theorem linkedComposition1688 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5376.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5376.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1355.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1354.algebra.mat x) := by
  rw [firstLink1688, secondLink1688]
  exact DerivedMapBatches.Batch067.certificate5376valid.2 x
theorem rhsLink1688 : DerivedMapBatches.Batch067.certificate5376.c = DerivedMapBatches.Batch016.certificate1356.c := by decide
theorem rhsValid1688 : DerivedMapBatches.Batch016.certificate1356.Valid := DerivedMapBatches.Batch016.certificate1356valid
theorem linkedCommutativity1688 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5376.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1355.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1354.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1356.c x := by
  exact (linkedComposition1688 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1688)
theorem firstLink1689 : DerivedMapBatches.Batch016.certificate1357.algebra.mat = DerivedMapBatches.Batch067.certificate5377.a := by decide
theorem secondLink1689 : DerivedMapBatches.Batch016.certificate1358.algebra.mat = DerivedMapBatches.Batch067.certificate5377.b := by decide
theorem firstValid1689 : DerivedMapBatches.Batch016.certificate1357.Valid := DerivedMapBatches.Batch016.certificate1357valid
theorem secondValid1689 : DerivedMapBatches.Batch016.certificate1358.Valid := DerivedMapBatches.Batch016.certificate1358valid
theorem outputValid1689 : DerivedMapBatches.Batch067.certificate5377.Valid := DerivedMapBatches.Batch067.certificate5377valid
theorem linkedComposition1689 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5377.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5377.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1358.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1357.algebra.mat x) := by
  rw [firstLink1689, secondLink1689]
  exact DerivedMapBatches.Batch067.certificate5377valid.2 x
theorem rhsLink1689 : DerivedMapBatches.Batch067.certificate5377.c = DerivedMapBatches.Batch016.certificate1359.c := by decide
theorem rhsValid1689 : DerivedMapBatches.Batch016.certificate1359.Valid := DerivedMapBatches.Batch016.certificate1359valid
theorem linkedCommutativity1689 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5377.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1358.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch016.certificate1357.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1359.c x := by
  exact (linkedComposition1689 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1689)
theorem firstLink1690 : DerivedMapBatches.Batch017.certificate1360.algebra.mat = DerivedMapBatches.Batch067.certificate5378.a := by decide
theorem secondLink1690 : DerivedMapBatches.Batch017.certificate1361.algebra.mat = DerivedMapBatches.Batch067.certificate5378.b := by decide
theorem firstValid1690 : DerivedMapBatches.Batch017.certificate1360.Valid := DerivedMapBatches.Batch017.certificate1360valid
theorem secondValid1690 : DerivedMapBatches.Batch017.certificate1361.Valid := DerivedMapBatches.Batch017.certificate1361valid
theorem outputValid1690 : DerivedMapBatches.Batch067.certificate5378.Valid := DerivedMapBatches.Batch067.certificate5378valid
theorem linkedComposition1690 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5378.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5378.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1361.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1360.algebra.mat x) := by
  rw [firstLink1690, secondLink1690]
  exact DerivedMapBatches.Batch067.certificate5378valid.2 x
theorem rhsLink1690 : DerivedMapBatches.Batch067.certificate5378.c = DerivedMapBatches.Batch017.certificate1362.c := by decide
theorem rhsValid1690 : DerivedMapBatches.Batch017.certificate1362.Valid := DerivedMapBatches.Batch017.certificate1362valid
theorem linkedCommutativity1690 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5378.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1361.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1360.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1362.c x := by
  exact (linkedComposition1690 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1690)
theorem firstLink1691 : DerivedMapBatches.Batch017.certificate1363.algebra.mat = DerivedMapBatches.Batch067.certificate5379.a := by decide
theorem secondLink1691 : DerivedMapBatches.Batch017.certificate1364.algebra.mat = DerivedMapBatches.Batch067.certificate5379.b := by decide
theorem firstValid1691 : DerivedMapBatches.Batch017.certificate1363.Valid := DerivedMapBatches.Batch017.certificate1363valid
theorem secondValid1691 : DerivedMapBatches.Batch017.certificate1364.Valid := DerivedMapBatches.Batch017.certificate1364valid
theorem outputValid1691 : DerivedMapBatches.Batch067.certificate5379.Valid := DerivedMapBatches.Batch067.certificate5379valid
theorem linkedComposition1691 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5379.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5379.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1364.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1363.algebra.mat x) := by
  rw [firstLink1691, secondLink1691]
  exact DerivedMapBatches.Batch067.certificate5379valid.2 x
theorem rhsLink1691 : DerivedMapBatches.Batch067.certificate5379.c = DerivedMapBatches.Batch017.certificate1365.c := by decide
theorem rhsValid1691 : DerivedMapBatches.Batch017.certificate1365.Valid := DerivedMapBatches.Batch017.certificate1365valid
theorem linkedCommutativity1691 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5379.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1364.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1363.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1365.c x := by
  exact (linkedComposition1691 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1691)
theorem firstLink1692 : DerivedMapBatches.Batch017.certificate1366.algebra.mat = DerivedMapBatches.Batch067.certificate5380.a := by decide
theorem secondLink1692 : DerivedMapBatches.Batch017.certificate1367.algebra.mat = DerivedMapBatches.Batch067.certificate5380.b := by decide
theorem firstValid1692 : DerivedMapBatches.Batch017.certificate1366.Valid := DerivedMapBatches.Batch017.certificate1366valid
theorem secondValid1692 : DerivedMapBatches.Batch017.certificate1367.Valid := DerivedMapBatches.Batch017.certificate1367valid
theorem outputValid1692 : DerivedMapBatches.Batch067.certificate5380.Valid := DerivedMapBatches.Batch067.certificate5380valid
theorem linkedComposition1692 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5380.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5380.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1367.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1366.algebra.mat x) := by
  rw [firstLink1692, secondLink1692]
  exact DerivedMapBatches.Batch067.certificate5380valid.2 x
theorem rhsLink1692 : DerivedMapBatches.Batch067.certificate5380.c = DerivedMapBatches.Batch017.certificate1368.c := by decide
theorem rhsValid1692 : DerivedMapBatches.Batch017.certificate1368.Valid := DerivedMapBatches.Batch017.certificate1368valid
theorem linkedCommutativity1692 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5380.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1367.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1366.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1368.c x := by
  exact (linkedComposition1692 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1692)
theorem firstLink1693 : DerivedMapBatches.Batch017.certificate1369.algebra.mat = DerivedMapBatches.Batch067.certificate5381.a := by decide
theorem secondLink1693 : DerivedMapBatches.Batch017.certificate1370.algebra.mat = DerivedMapBatches.Batch067.certificate5381.b := by decide
theorem firstValid1693 : DerivedMapBatches.Batch017.certificate1369.Valid := DerivedMapBatches.Batch017.certificate1369valid
theorem secondValid1693 : DerivedMapBatches.Batch017.certificate1370.Valid := DerivedMapBatches.Batch017.certificate1370valid
theorem outputValid1693 : DerivedMapBatches.Batch067.certificate5381.Valid := DerivedMapBatches.Batch067.certificate5381valid
theorem linkedComposition1693 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5381.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5381.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1370.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1369.algebra.mat x) := by
  rw [firstLink1693, secondLink1693]
  exact DerivedMapBatches.Batch067.certificate5381valid.2 x
theorem rhsLink1693 : DerivedMapBatches.Batch067.certificate5381.c = DerivedMapBatches.Batch017.certificate1371.c := by decide
theorem rhsValid1693 : DerivedMapBatches.Batch017.certificate1371.Valid := DerivedMapBatches.Batch017.certificate1371valid
theorem linkedCommutativity1693 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5381.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1370.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1369.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1371.c x := by
  exact (linkedComposition1693 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1693)
theorem firstLink1694 : DerivedMapBatches.Batch017.certificate1372.algebra.mat = DerivedMapBatches.Batch067.certificate5382.a := by decide
theorem secondLink1694 : DerivedMapBatches.Batch017.certificate1373.algebra.mat = DerivedMapBatches.Batch067.certificate5382.b := by decide
theorem firstValid1694 : DerivedMapBatches.Batch017.certificate1372.Valid := DerivedMapBatches.Batch017.certificate1372valid
theorem secondValid1694 : DerivedMapBatches.Batch017.certificate1373.Valid := DerivedMapBatches.Batch017.certificate1373valid
theorem outputValid1694 : DerivedMapBatches.Batch067.certificate5382.Valid := DerivedMapBatches.Batch067.certificate5382valid
theorem linkedComposition1694 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5382.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5382.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1373.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1372.algebra.mat x) := by
  rw [firstLink1694, secondLink1694]
  exact DerivedMapBatches.Batch067.certificate5382valid.2 x
theorem rhsLink1694 : DerivedMapBatches.Batch067.certificate5382.c = DerivedMapBatches.Batch017.certificate1374.c := by decide
theorem rhsValid1694 : DerivedMapBatches.Batch017.certificate1374.Valid := DerivedMapBatches.Batch017.certificate1374valid
theorem linkedCommutativity1694 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5382.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1373.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1372.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1374.c x := by
  exact (linkedComposition1694 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1694)
theorem firstLink1695 : DerivedMapBatches.Batch017.certificate1375.algebra.mat = DerivedMapBatches.Batch067.certificate5383.a := by decide
theorem secondLink1695 : DerivedMapBatches.Batch017.certificate1376.algebra.mat = DerivedMapBatches.Batch067.certificate5383.b := by decide
theorem firstValid1695 : DerivedMapBatches.Batch017.certificate1375.Valid := DerivedMapBatches.Batch017.certificate1375valid
theorem secondValid1695 : DerivedMapBatches.Batch017.certificate1376.Valid := DerivedMapBatches.Batch017.certificate1376valid
theorem outputValid1695 : DerivedMapBatches.Batch067.certificate5383.Valid := DerivedMapBatches.Batch067.certificate5383valid
theorem linkedComposition1695 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5383.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5383.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1376.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1375.algebra.mat x) := by
  rw [firstLink1695, secondLink1695]
  exact DerivedMapBatches.Batch067.certificate5383valid.2 x
theorem rhsLink1695 : DerivedMapBatches.Batch067.certificate5383.c = DerivedMapBatches.Batch017.certificate1377.c := by decide
theorem rhsValid1695 : DerivedMapBatches.Batch017.certificate1377.Valid := DerivedMapBatches.Batch017.certificate1377valid
theorem linkedCommutativity1695 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5383.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1376.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1375.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1377.c x := by
  exact (linkedComposition1695 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1695)
theorem firstLink1696 : DerivedMapBatches.Batch017.certificate1378.algebra.mat = DerivedMapBatches.Batch067.certificate5384.a := by decide
theorem secondLink1696 : DerivedMapBatches.Batch017.certificate1379.algebra.mat = DerivedMapBatches.Batch067.certificate5384.b := by decide
theorem firstValid1696 : DerivedMapBatches.Batch017.certificate1378.Valid := DerivedMapBatches.Batch017.certificate1378valid
theorem secondValid1696 : DerivedMapBatches.Batch017.certificate1379.Valid := DerivedMapBatches.Batch017.certificate1379valid
theorem outputValid1696 : DerivedMapBatches.Batch067.certificate5384.Valid := DerivedMapBatches.Batch067.certificate5384valid
theorem linkedComposition1696 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5384.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5384.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1379.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1378.algebra.mat x) := by
  rw [firstLink1696, secondLink1696]
  exact DerivedMapBatches.Batch067.certificate5384valid.2 x
theorem rhsLink1696 : DerivedMapBatches.Batch067.certificate5384.c = DerivedMapBatches.Batch017.certificate1380.c := by decide
theorem rhsValid1696 : DerivedMapBatches.Batch017.certificate1380.Valid := DerivedMapBatches.Batch017.certificate1380valid
theorem linkedCommutativity1696 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5384.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1379.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1378.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1380.c x := by
  exact (linkedComposition1696 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1696)
theorem firstLink1697 : DerivedMapBatches.Batch017.certificate1381.algebra.mat = DerivedMapBatches.Batch067.certificate5385.a := by decide
theorem secondLink1697 : DerivedMapBatches.Batch017.certificate1382.algebra.mat = DerivedMapBatches.Batch067.certificate5385.b := by decide
theorem firstValid1697 : DerivedMapBatches.Batch017.certificate1381.Valid := DerivedMapBatches.Batch017.certificate1381valid
theorem secondValid1697 : DerivedMapBatches.Batch017.certificate1382.Valid := DerivedMapBatches.Batch017.certificate1382valid
theorem outputValid1697 : DerivedMapBatches.Batch067.certificate5385.Valid := DerivedMapBatches.Batch067.certificate5385valid
theorem linkedComposition1697 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5385.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5385.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1382.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1381.algebra.mat x) := by
  rw [firstLink1697, secondLink1697]
  exact DerivedMapBatches.Batch067.certificate5385valid.2 x
theorem rhsLink1697 : DerivedMapBatches.Batch067.certificate5385.c = DerivedMapBatches.Batch017.certificate1383.c := by decide
theorem rhsValid1697 : DerivedMapBatches.Batch017.certificate1383.Valid := DerivedMapBatches.Batch017.certificate1383valid
theorem linkedCommutativity1697 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5385.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1382.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1381.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1383.c x := by
  exact (linkedComposition1697 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1697)
theorem firstLink1698 : DerivedMapBatches.Batch017.certificate1384.algebra.mat = DerivedMapBatches.Batch067.certificate5386.a := by decide
theorem secondLink1698 : DerivedMapBatches.Batch017.certificate1385.algebra.mat = DerivedMapBatches.Batch067.certificate5386.b := by decide
theorem firstValid1698 : DerivedMapBatches.Batch017.certificate1384.Valid := DerivedMapBatches.Batch017.certificate1384valid
theorem secondValid1698 : DerivedMapBatches.Batch017.certificate1385.Valid := DerivedMapBatches.Batch017.certificate1385valid
theorem outputValid1698 : DerivedMapBatches.Batch067.certificate5386.Valid := DerivedMapBatches.Batch067.certificate5386valid
theorem linkedComposition1698 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5386.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5386.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1385.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1384.algebra.mat x) := by
  rw [firstLink1698, secondLink1698]
  exact DerivedMapBatches.Batch067.certificate5386valid.2 x
theorem rhsLink1698 : DerivedMapBatches.Batch067.certificate5386.c = DerivedMapBatches.Batch017.certificate1386.c := by decide
theorem rhsValid1698 : DerivedMapBatches.Batch017.certificate1386.Valid := DerivedMapBatches.Batch017.certificate1386valid
theorem linkedCommutativity1698 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5386.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1385.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1384.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1386.c x := by
  exact (linkedComposition1698 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1698)
theorem firstLink1699 : DerivedMapBatches.Batch017.certificate1387.algebra.mat = DerivedMapBatches.Batch067.certificate5387.a := by decide
theorem secondLink1699 : DerivedMapBatches.Batch017.certificate1388.algebra.mat = DerivedMapBatches.Batch067.certificate5387.b := by decide
theorem firstValid1699 : DerivedMapBatches.Batch017.certificate1387.Valid := DerivedMapBatches.Batch017.certificate1387valid
theorem secondValid1699 : DerivedMapBatches.Batch017.certificate1388.Valid := DerivedMapBatches.Batch017.certificate1388valid
theorem outputValid1699 : DerivedMapBatches.Batch067.certificate5387.Valid := DerivedMapBatches.Batch067.certificate5387valid
theorem linkedComposition1699 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5387.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch067.certificate5387.c x = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1388.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1387.algebra.mat x) := by
  rw [firstLink1699, secondLink1699]
  exact DerivedMapBatches.Batch067.certificate5387valid.2 x
theorem rhsLink1699 : DerivedMapBatches.Batch067.certificate5387.c = DerivedMapBatches.Batch017.certificate1389.c := by decide
theorem rhsValid1699 : DerivedMapBatches.Batch017.certificate1389.Valid := DerivedMapBatches.Batch017.certificate1389valid
theorem linkedCommutativity1699 (x : LinearCertificates.Vec DerivedMapBatches.Batch067.certificate5387.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch017.certificate1388.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch017.certificate1387.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch017.certificate1389.c x := by
  exact (linkedComposition1699 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1699)
end DerivedLinkageBatches.Batch033
