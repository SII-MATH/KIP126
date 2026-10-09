import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch015
import DerivedMapBatches.Batch016
import DerivedMapBatches.Batch066
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch032
theorem firstLink1600 : DerivedMapBatches.Batch013.certificate1114.c = DerivedMapBatches.Batch066.certificate5288.a := by decide
theorem secondLink1600 : DerivedMapBatches.Batch014.certificate1168.algebra.mat = DerivedMapBatches.Batch066.certificate5288.b := by decide
theorem firstValid1600 : DerivedMapBatches.Batch013.certificate1114.Valid := DerivedMapBatches.Batch013.certificate1114valid
theorem secondValid1600 : DerivedMapBatches.Batch014.certificate1168.Valid := DerivedMapBatches.Batch014.certificate1168valid
theorem outputValid1600 : DerivedMapBatches.Batch066.certificate5288.Valid := DerivedMapBatches.Batch066.certificate5288valid
theorem linkedComposition1600 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5288.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5288.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1114.c x) := by
  rw [firstLink1600, secondLink1600]
  exact DerivedMapBatches.Batch066.certificate5288valid.2 x
theorem rhsLink1600 : DerivedMapBatches.Batch066.certificate5288.c = DerivedMapBatches.Batch014.certificate1169.c := by decide
theorem rhsValid1600 : DerivedMapBatches.Batch014.certificate1169.Valid := DerivedMapBatches.Batch014.certificate1169valid
theorem linkedCommutativity1600 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5288.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1114.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1169.c x := by
  exact (linkedComposition1600 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1600)
theorem firstLink1601 : DerivedMapBatches.Batch013.certificate1117.c = DerivedMapBatches.Batch066.certificate5289.a := by decide
theorem secondLink1601 : DerivedMapBatches.Batch014.certificate1170.algebra.mat = DerivedMapBatches.Batch066.certificate5289.b := by decide
theorem firstValid1601 : DerivedMapBatches.Batch013.certificate1117.Valid := DerivedMapBatches.Batch013.certificate1117valid
theorem secondValid1601 : DerivedMapBatches.Batch014.certificate1170.Valid := DerivedMapBatches.Batch014.certificate1170valid
theorem outputValid1601 : DerivedMapBatches.Batch066.certificate5289.Valid := DerivedMapBatches.Batch066.certificate5289valid
theorem linkedComposition1601 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5289.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5289.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1117.c x) := by
  rw [firstLink1601, secondLink1601]
  exact DerivedMapBatches.Batch066.certificate5289valid.2 x
theorem rhsLink1601 : DerivedMapBatches.Batch066.certificate5289.c = DerivedMapBatches.Batch014.certificate1171.c := by decide
theorem rhsValid1601 : DerivedMapBatches.Batch014.certificate1171.Valid := DerivedMapBatches.Batch014.certificate1171valid
theorem linkedCommutativity1601 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5289.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1117.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1171.c x := by
  exact (linkedComposition1601 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1601)
theorem firstLink1602 : DerivedMapBatches.Batch014.certificate1120.c = DerivedMapBatches.Batch066.certificate5290.a := by decide
theorem secondLink1602 : DerivedMapBatches.Batch014.certificate1172.algebra.mat = DerivedMapBatches.Batch066.certificate5290.b := by decide
theorem firstValid1602 : DerivedMapBatches.Batch014.certificate1120.Valid := DerivedMapBatches.Batch014.certificate1120valid
theorem secondValid1602 : DerivedMapBatches.Batch014.certificate1172.Valid := DerivedMapBatches.Batch014.certificate1172valid
theorem outputValid1602 : DerivedMapBatches.Batch066.certificate5290.Valid := DerivedMapBatches.Batch066.certificate5290valid
theorem linkedComposition1602 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5290.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5290.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1172.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1120.c x) := by
  rw [firstLink1602, secondLink1602]
  exact DerivedMapBatches.Batch066.certificate5290valid.2 x
theorem rhsLink1602 : DerivedMapBatches.Batch066.certificate5290.c = DerivedMapBatches.Batch014.certificate1173.c := by decide
theorem rhsValid1602 : DerivedMapBatches.Batch014.certificate1173.Valid := DerivedMapBatches.Batch014.certificate1173valid
theorem linkedCommutativity1602 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5290.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1172.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1120.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1173.c x := by
  exact (linkedComposition1602 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1602)
theorem firstLink1603 : DerivedMapBatches.Batch014.certificate1123.c = DerivedMapBatches.Batch066.certificate5291.a := by decide
theorem secondLink1603 : DerivedMapBatches.Batch014.certificate1174.algebra.mat = DerivedMapBatches.Batch066.certificate5291.b := by decide
theorem firstValid1603 : DerivedMapBatches.Batch014.certificate1123.Valid := DerivedMapBatches.Batch014.certificate1123valid
theorem secondValid1603 : DerivedMapBatches.Batch014.certificate1174.Valid := DerivedMapBatches.Batch014.certificate1174valid
theorem outputValid1603 : DerivedMapBatches.Batch066.certificate5291.Valid := DerivedMapBatches.Batch066.certificate5291valid
theorem linkedComposition1603 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5291.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5291.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1174.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1123.c x) := by
  rw [firstLink1603, secondLink1603]
  exact DerivedMapBatches.Batch066.certificate5291valid.2 x
theorem rhsLink1603 : DerivedMapBatches.Batch066.certificate5291.c = DerivedMapBatches.Batch014.certificate1175.c := by decide
theorem rhsValid1603 : DerivedMapBatches.Batch014.certificate1175.Valid := DerivedMapBatches.Batch014.certificate1175valid
theorem linkedCommutativity1603 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5291.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1174.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1123.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1175.c x := by
  exact (linkedComposition1603 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1603)
theorem firstLink1604 : DerivedMapBatches.Batch014.certificate1178.c = DerivedMapBatches.Batch066.certificate5292.a := by decide
theorem secondLink1604 : DerivedMapBatches.Batch015.certificate1265.algebra.mat = DerivedMapBatches.Batch066.certificate5292.b := by decide
theorem firstValid1604 : DerivedMapBatches.Batch014.certificate1178.Valid := DerivedMapBatches.Batch014.certificate1178valid
theorem secondValid1604 : DerivedMapBatches.Batch015.certificate1265.Valid := DerivedMapBatches.Batch015.certificate1265valid
theorem outputValid1604 : DerivedMapBatches.Batch066.certificate5292.Valid := DerivedMapBatches.Batch066.certificate5292valid
theorem linkedComposition1604 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5292.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5292.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1265.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1178.c x) := by
  rw [firstLink1604, secondLink1604]
  exact DerivedMapBatches.Batch066.certificate5292valid.2 x
theorem rhsLink1604 : DerivedMapBatches.Batch066.certificate5292.c = DerivedMapBatches.Batch015.certificate1266.c := by decide
theorem rhsValid1604 : DerivedMapBatches.Batch015.certificate1266.Valid := DerivedMapBatches.Batch015.certificate1266valid
theorem linkedCommutativity1604 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5292.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1265.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1178.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1266.c x := by
  exact (linkedComposition1604 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1604)
theorem firstLink1605 : DerivedMapBatches.Batch014.certificate1181.c = DerivedMapBatches.Batch066.certificate5293.a := by decide
theorem secondLink1605 : DerivedMapBatches.Batch015.certificate1267.algebra.mat = DerivedMapBatches.Batch066.certificate5293.b := by decide
theorem firstValid1605 : DerivedMapBatches.Batch014.certificate1181.Valid := DerivedMapBatches.Batch014.certificate1181valid
theorem secondValid1605 : DerivedMapBatches.Batch015.certificate1267.Valid := DerivedMapBatches.Batch015.certificate1267valid
theorem outputValid1605 : DerivedMapBatches.Batch066.certificate5293.Valid := DerivedMapBatches.Batch066.certificate5293valid
theorem linkedComposition1605 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5293.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5293.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1267.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1181.c x) := by
  rw [firstLink1605, secondLink1605]
  exact DerivedMapBatches.Batch066.certificate5293valid.2 x
theorem rhsLink1605 : DerivedMapBatches.Batch066.certificate5293.c = DerivedMapBatches.Batch015.certificate1268.c := by decide
theorem rhsValid1605 : DerivedMapBatches.Batch015.certificate1268.Valid := DerivedMapBatches.Batch015.certificate1268valid
theorem linkedCommutativity1605 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5293.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1267.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1181.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1268.c x := by
  exact (linkedComposition1605 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1605)
theorem firstLink1606 : DerivedMapBatches.Batch014.certificate1183.c = DerivedMapBatches.Batch066.certificate5294.a := by decide
theorem secondLink1606 : DerivedMapBatches.Batch011.certificate903.algebra.mat = DerivedMapBatches.Batch066.certificate5294.b := by decide
theorem firstValid1606 : DerivedMapBatches.Batch014.certificate1183.Valid := DerivedMapBatches.Batch014.certificate1183valid
theorem secondValid1606 : DerivedMapBatches.Batch011.certificate903.Valid := DerivedMapBatches.Batch011.certificate903valid
theorem outputValid1606 : DerivedMapBatches.Batch066.certificate5294.Valid := DerivedMapBatches.Batch066.certificate5294valid
theorem linkedComposition1606 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5294.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5294.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1183.c x) := by
  rw [firstLink1606, secondLink1606]
  exact DerivedMapBatches.Batch066.certificate5294valid.2 x
theorem rhsLink1606 : DerivedMapBatches.Batch066.certificate5294.c = DerivedMapBatches.Batch015.certificate1269.c := by decide
theorem rhsValid1606 : DerivedMapBatches.Batch015.certificate1269.Valid := DerivedMapBatches.Batch015.certificate1269valid
theorem linkedCommutativity1606 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5294.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1183.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1269.c x := by
  exact (linkedComposition1606 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1606)
theorem firstLink1607 : DerivedMapBatches.Batch014.certificate1185.c = DerivedMapBatches.Batch066.certificate5295.a := by decide
theorem secondLink1607 : DerivedMapBatches.Batch011.certificate906.algebra.mat = DerivedMapBatches.Batch066.certificate5295.b := by decide
theorem firstValid1607 : DerivedMapBatches.Batch014.certificate1185.Valid := DerivedMapBatches.Batch014.certificate1185valid
theorem secondValid1607 : DerivedMapBatches.Batch011.certificate906.Valid := DerivedMapBatches.Batch011.certificate906valid
theorem outputValid1607 : DerivedMapBatches.Batch066.certificate5295.Valid := DerivedMapBatches.Batch066.certificate5295valid
theorem linkedComposition1607 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5295.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5295.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1185.c x) := by
  rw [firstLink1607, secondLink1607]
  exact DerivedMapBatches.Batch066.certificate5295valid.2 x
theorem rhsLink1607 : DerivedMapBatches.Batch066.certificate5295.c = DerivedMapBatches.Batch015.certificate1270.c := by decide
theorem rhsValid1607 : DerivedMapBatches.Batch015.certificate1270.Valid := DerivedMapBatches.Batch015.certificate1270valid
theorem linkedCommutativity1607 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5295.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1185.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1270.c x := by
  exact (linkedComposition1607 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1607)
theorem firstLink1608 : DerivedMapBatches.Batch014.certificate1187.c = DerivedMapBatches.Batch066.certificate5296.a := by decide
theorem secondLink1608 : DerivedMapBatches.Batch011.certificate909.algebra.mat = DerivedMapBatches.Batch066.certificate5296.b := by decide
theorem firstValid1608 : DerivedMapBatches.Batch014.certificate1187.Valid := DerivedMapBatches.Batch014.certificate1187valid
theorem secondValid1608 : DerivedMapBatches.Batch011.certificate909.Valid := DerivedMapBatches.Batch011.certificate909valid
theorem outputValid1608 : DerivedMapBatches.Batch066.certificate5296.Valid := DerivedMapBatches.Batch066.certificate5296valid
theorem linkedComposition1608 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5296.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5296.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1187.c x) := by
  rw [firstLink1608, secondLink1608]
  exact DerivedMapBatches.Batch066.certificate5296valid.2 x
theorem rhsLink1608 : DerivedMapBatches.Batch066.certificate5296.c = DerivedMapBatches.Batch015.certificate1271.c := by decide
theorem rhsValid1608 : DerivedMapBatches.Batch015.certificate1271.Valid := DerivedMapBatches.Batch015.certificate1271valid
theorem linkedCommutativity1608 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5296.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1187.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1271.c x := by
  exact (linkedComposition1608 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1608)
theorem firstLink1609 : DerivedMapBatches.Batch014.certificate1190.c = DerivedMapBatches.Batch066.certificate5297.a := by decide
theorem secondLink1609 : DerivedMapBatches.Batch015.certificate1272.algebra.mat = DerivedMapBatches.Batch066.certificate5297.b := by decide
theorem firstValid1609 : DerivedMapBatches.Batch014.certificate1190.Valid := DerivedMapBatches.Batch014.certificate1190valid
theorem secondValid1609 : DerivedMapBatches.Batch015.certificate1272.Valid := DerivedMapBatches.Batch015.certificate1272valid
theorem outputValid1609 : DerivedMapBatches.Batch066.certificate5297.Valid := DerivedMapBatches.Batch066.certificate5297valid
theorem linkedComposition1609 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5297.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5297.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1272.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1190.c x) := by
  rw [firstLink1609, secondLink1609]
  exact DerivedMapBatches.Batch066.certificate5297valid.2 x
theorem rhsLink1609 : DerivedMapBatches.Batch066.certificate5297.c = DerivedMapBatches.Batch015.certificate1273.c := by decide
theorem rhsValid1609 : DerivedMapBatches.Batch015.certificate1273.Valid := DerivedMapBatches.Batch015.certificate1273valid
theorem linkedCommutativity1609 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5297.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1272.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1190.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1273.c x := by
  exact (linkedComposition1609 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1609)
theorem firstLink1610 : DerivedMapBatches.Batch014.certificate1192.c = DerivedMapBatches.Batch066.certificate5298.a := by decide
theorem secondLink1610 : DerivedMapBatches.Batch011.certificate915.algebra.mat = DerivedMapBatches.Batch066.certificate5298.b := by decide
theorem firstValid1610 : DerivedMapBatches.Batch014.certificate1192.Valid := DerivedMapBatches.Batch014.certificate1192valid
theorem secondValid1610 : DerivedMapBatches.Batch011.certificate915.Valid := DerivedMapBatches.Batch011.certificate915valid
theorem outputValid1610 : DerivedMapBatches.Batch066.certificate5298.Valid := DerivedMapBatches.Batch066.certificate5298valid
theorem linkedComposition1610 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5298.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5298.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1192.c x) := by
  rw [firstLink1610, secondLink1610]
  exact DerivedMapBatches.Batch066.certificate5298valid.2 x
theorem rhsLink1610 : DerivedMapBatches.Batch066.certificate5298.c = DerivedMapBatches.Batch015.certificate1274.c := by decide
theorem rhsValid1610 : DerivedMapBatches.Batch015.certificate1274.Valid := DerivedMapBatches.Batch015.certificate1274valid
theorem linkedCommutativity1610 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5298.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1192.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1274.c x := by
  exact (linkedComposition1610 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1610)
theorem firstLink1611 : DerivedMapBatches.Batch014.certificate1195.c = DerivedMapBatches.Batch066.certificate5299.a := by decide
theorem secondLink1611 : DerivedMapBatches.Batch015.certificate1275.algebra.mat = DerivedMapBatches.Batch066.certificate5299.b := by decide
theorem firstValid1611 : DerivedMapBatches.Batch014.certificate1195.Valid := DerivedMapBatches.Batch014.certificate1195valid
theorem secondValid1611 : DerivedMapBatches.Batch015.certificate1275.Valid := DerivedMapBatches.Batch015.certificate1275valid
theorem outputValid1611 : DerivedMapBatches.Batch066.certificate5299.Valid := DerivedMapBatches.Batch066.certificate5299valid
theorem linkedComposition1611 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5299.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5299.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1275.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1195.c x) := by
  rw [firstLink1611, secondLink1611]
  exact DerivedMapBatches.Batch066.certificate5299valid.2 x
theorem rhsLink1611 : DerivedMapBatches.Batch066.certificate5299.c = DerivedMapBatches.Batch015.certificate1276.c := by decide
theorem rhsValid1611 : DerivedMapBatches.Batch015.certificate1276.Valid := DerivedMapBatches.Batch015.certificate1276valid
theorem linkedCommutativity1611 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5299.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1275.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1195.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1276.c x := by
  exact (linkedComposition1611 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1611)
theorem firstLink1612 : DerivedMapBatches.Batch014.certificate1198.c = DerivedMapBatches.Batch066.certificate5300.a := by decide
theorem secondLink1612 : DerivedMapBatches.Batch015.certificate1277.algebra.mat = DerivedMapBatches.Batch066.certificate5300.b := by decide
theorem firstValid1612 : DerivedMapBatches.Batch014.certificate1198.Valid := DerivedMapBatches.Batch014.certificate1198valid
theorem secondValid1612 : DerivedMapBatches.Batch015.certificate1277.Valid := DerivedMapBatches.Batch015.certificate1277valid
theorem outputValid1612 : DerivedMapBatches.Batch066.certificate5300.Valid := DerivedMapBatches.Batch066.certificate5300valid
theorem linkedComposition1612 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5300.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5300.c x = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1198.c x) := by
  rw [firstLink1612, secondLink1612]
  exact DerivedMapBatches.Batch066.certificate5300valid.2 x
theorem rhsLink1612 : DerivedMapBatches.Batch066.certificate5300.c = DerivedMapBatches.Batch015.certificate1278.c := by decide
theorem rhsValid1612 : DerivedMapBatches.Batch015.certificate1278.Valid := DerivedMapBatches.Batch015.certificate1278valid
theorem linkedCommutativity1612 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5300.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch015.certificate1277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1198.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1278.c x := by
  exact (linkedComposition1612 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1612)
theorem firstLink1613 : DerivedMapBatches.Batch015.certificate1200.c = DerivedMapBatches.Batch066.certificate5301.a := by decide
theorem secondLink1613 : DerivedMapBatches.Batch011.certificate921.algebra.mat = DerivedMapBatches.Batch066.certificate5301.b := by decide
theorem firstValid1613 : DerivedMapBatches.Batch015.certificate1200.Valid := DerivedMapBatches.Batch015.certificate1200valid
theorem secondValid1613 : DerivedMapBatches.Batch011.certificate921.Valid := DerivedMapBatches.Batch011.certificate921valid
theorem outputValid1613 : DerivedMapBatches.Batch066.certificate5301.Valid := DerivedMapBatches.Batch066.certificate5301valid
theorem linkedComposition1613 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5301.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5301.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1200.c x) := by
  rw [firstLink1613, secondLink1613]
  exact DerivedMapBatches.Batch066.certificate5301valid.2 x
theorem rhsLink1613 : DerivedMapBatches.Batch066.certificate5301.c = DerivedMapBatches.Batch015.certificate1279.c := by decide
theorem rhsValid1613 : DerivedMapBatches.Batch015.certificate1279.Valid := DerivedMapBatches.Batch015.certificate1279valid
theorem linkedCommutativity1613 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5301.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1200.c x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1279.c x := by
  exact (linkedComposition1613 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1613)
theorem firstLink1614 : DerivedMapBatches.Batch015.certificate1202.c = DerivedMapBatches.Batch066.certificate5302.a := by decide
theorem secondLink1614 : DerivedMapBatches.Batch011.certificate924.algebra.mat = DerivedMapBatches.Batch066.certificate5302.b := by decide
theorem firstValid1614 : DerivedMapBatches.Batch015.certificate1202.Valid := DerivedMapBatches.Batch015.certificate1202valid
theorem secondValid1614 : DerivedMapBatches.Batch011.certificate924.Valid := DerivedMapBatches.Batch011.certificate924valid
theorem outputValid1614 : DerivedMapBatches.Batch066.certificate5302.Valid := DerivedMapBatches.Batch066.certificate5302valid
theorem linkedComposition1614 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5302.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5302.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1202.c x) := by
  rw [firstLink1614, secondLink1614]
  exact DerivedMapBatches.Batch066.certificate5302valid.2 x
theorem rhsLink1614 : DerivedMapBatches.Batch066.certificate5302.c = DerivedMapBatches.Batch016.certificate1280.c := by decide
theorem rhsValid1614 : DerivedMapBatches.Batch016.certificate1280.Valid := DerivedMapBatches.Batch016.certificate1280valid
theorem linkedCommutativity1614 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5302.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1202.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1280.c x := by
  exact (linkedComposition1614 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1614)
theorem firstLink1615 : DerivedMapBatches.Batch015.certificate1205.c = DerivedMapBatches.Batch066.certificate5303.a := by decide
theorem secondLink1615 : DerivedMapBatches.Batch016.certificate1281.algebra.mat = DerivedMapBatches.Batch066.certificate5303.b := by decide
theorem firstValid1615 : DerivedMapBatches.Batch015.certificate1205.Valid := DerivedMapBatches.Batch015.certificate1205valid
theorem secondValid1615 : DerivedMapBatches.Batch016.certificate1281.Valid := DerivedMapBatches.Batch016.certificate1281valid
theorem outputValid1615 : DerivedMapBatches.Batch066.certificate5303.Valid := DerivedMapBatches.Batch066.certificate5303valid
theorem linkedComposition1615 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5303.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5303.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1281.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1205.c x) := by
  rw [firstLink1615, secondLink1615]
  exact DerivedMapBatches.Batch066.certificate5303valid.2 x
theorem rhsLink1615 : DerivedMapBatches.Batch066.certificate5303.c = DerivedMapBatches.Batch016.certificate1282.c := by decide
theorem rhsValid1615 : DerivedMapBatches.Batch016.certificate1282.Valid := DerivedMapBatches.Batch016.certificate1282valid
theorem linkedCommutativity1615 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5303.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1281.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1205.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1282.c x := by
  exact (linkedComposition1615 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1615)
theorem firstLink1616 : DerivedMapBatches.Batch015.certificate1207.c = DerivedMapBatches.Batch066.certificate5304.a := by decide
theorem secondLink1616 : DerivedMapBatches.Batch011.certificate930.algebra.mat = DerivedMapBatches.Batch066.certificate5304.b := by decide
theorem firstValid1616 : DerivedMapBatches.Batch015.certificate1207.Valid := DerivedMapBatches.Batch015.certificate1207valid
theorem secondValid1616 : DerivedMapBatches.Batch011.certificate930.Valid := DerivedMapBatches.Batch011.certificate930valid
theorem outputValid1616 : DerivedMapBatches.Batch066.certificate5304.Valid := DerivedMapBatches.Batch066.certificate5304valid
theorem linkedComposition1616 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5304.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5304.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1207.c x) := by
  rw [firstLink1616, secondLink1616]
  exact DerivedMapBatches.Batch066.certificate5304valid.2 x
theorem rhsLink1616 : DerivedMapBatches.Batch066.certificate5304.c = DerivedMapBatches.Batch016.certificate1283.c := by decide
theorem rhsValid1616 : DerivedMapBatches.Batch016.certificate1283.Valid := DerivedMapBatches.Batch016.certificate1283valid
theorem linkedCommutativity1616 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5304.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1207.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1283.c x := by
  exact (linkedComposition1616 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1616)
theorem firstLink1617 : DerivedMapBatches.Batch015.certificate1209.c = DerivedMapBatches.Batch066.certificate5305.a := by decide
theorem secondLink1617 : DerivedMapBatches.Batch011.certificate933.algebra.mat = DerivedMapBatches.Batch066.certificate5305.b := by decide
theorem firstValid1617 : DerivedMapBatches.Batch015.certificate1209.Valid := DerivedMapBatches.Batch015.certificate1209valid
theorem secondValid1617 : DerivedMapBatches.Batch011.certificate933.Valid := DerivedMapBatches.Batch011.certificate933valid
theorem outputValid1617 : DerivedMapBatches.Batch066.certificate5305.Valid := DerivedMapBatches.Batch066.certificate5305valid
theorem linkedComposition1617 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5305.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5305.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1209.c x) := by
  rw [firstLink1617, secondLink1617]
  exact DerivedMapBatches.Batch066.certificate5305valid.2 x
theorem rhsLink1617 : DerivedMapBatches.Batch066.certificate5305.c = DerivedMapBatches.Batch016.certificate1284.c := by decide
theorem rhsValid1617 : DerivedMapBatches.Batch016.certificate1284.Valid := DerivedMapBatches.Batch016.certificate1284valid
theorem linkedCommutativity1617 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5305.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1209.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1284.c x := by
  exact (linkedComposition1617 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1617)
theorem firstLink1618 : DerivedMapBatches.Batch015.certificate1212.c = DerivedMapBatches.Batch066.certificate5306.a := by decide
theorem secondLink1618 : DerivedMapBatches.Batch016.certificate1285.algebra.mat = DerivedMapBatches.Batch066.certificate5306.b := by decide
theorem firstValid1618 : DerivedMapBatches.Batch015.certificate1212.Valid := DerivedMapBatches.Batch015.certificate1212valid
theorem secondValid1618 : DerivedMapBatches.Batch016.certificate1285.Valid := DerivedMapBatches.Batch016.certificate1285valid
theorem outputValid1618 : DerivedMapBatches.Batch066.certificate5306.Valid := DerivedMapBatches.Batch066.certificate5306valid
theorem linkedComposition1618 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5306.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5306.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1285.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1212.c x) := by
  rw [firstLink1618, secondLink1618]
  exact DerivedMapBatches.Batch066.certificate5306valid.2 x
theorem rhsLink1618 : DerivedMapBatches.Batch066.certificate5306.c = DerivedMapBatches.Batch016.certificate1286.c := by decide
theorem rhsValid1618 : DerivedMapBatches.Batch016.certificate1286.Valid := DerivedMapBatches.Batch016.certificate1286valid
theorem linkedCommutativity1618 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5306.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1285.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1212.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1286.c x := by
  exact (linkedComposition1618 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1618)
theorem firstLink1619 : DerivedMapBatches.Batch015.certificate1214.c = DerivedMapBatches.Batch066.certificate5307.a := by decide
theorem secondLink1619 : DerivedMapBatches.Batch011.certificate936.algebra.mat = DerivedMapBatches.Batch066.certificate5307.b := by decide
theorem firstValid1619 : DerivedMapBatches.Batch015.certificate1214.Valid := DerivedMapBatches.Batch015.certificate1214valid
theorem secondValid1619 : DerivedMapBatches.Batch011.certificate936.Valid := DerivedMapBatches.Batch011.certificate936valid
theorem outputValid1619 : DerivedMapBatches.Batch066.certificate5307.Valid := DerivedMapBatches.Batch066.certificate5307valid
theorem linkedComposition1619 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5307.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5307.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1214.c x) := by
  rw [firstLink1619, secondLink1619]
  exact DerivedMapBatches.Batch066.certificate5307valid.2 x
theorem rhsLink1619 : DerivedMapBatches.Batch066.certificate5307.c = DerivedMapBatches.Batch016.certificate1287.c := by decide
theorem rhsValid1619 : DerivedMapBatches.Batch016.certificate1287.Valid := DerivedMapBatches.Batch016.certificate1287valid
theorem linkedCommutativity1619 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5307.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1214.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1287.c x := by
  exact (linkedComposition1619 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1619)
theorem firstLink1620 : DerivedMapBatches.Batch015.certificate1217.c = DerivedMapBatches.Batch066.certificate5308.a := by decide
theorem secondLink1620 : DerivedMapBatches.Batch016.certificate1288.algebra.mat = DerivedMapBatches.Batch066.certificate5308.b := by decide
theorem firstValid1620 : DerivedMapBatches.Batch015.certificate1217.Valid := DerivedMapBatches.Batch015.certificate1217valid
theorem secondValid1620 : DerivedMapBatches.Batch016.certificate1288.Valid := DerivedMapBatches.Batch016.certificate1288valid
theorem outputValid1620 : DerivedMapBatches.Batch066.certificate5308.Valid := DerivedMapBatches.Batch066.certificate5308valid
theorem linkedComposition1620 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5308.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5308.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1288.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1217.c x) := by
  rw [firstLink1620, secondLink1620]
  exact DerivedMapBatches.Batch066.certificate5308valid.2 x
theorem rhsLink1620 : DerivedMapBatches.Batch066.certificate5308.c = DerivedMapBatches.Batch016.certificate1289.c := by decide
theorem rhsValid1620 : DerivedMapBatches.Batch016.certificate1289.Valid := DerivedMapBatches.Batch016.certificate1289valid
theorem linkedCommutativity1620 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5308.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1288.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1217.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1289.c x := by
  exact (linkedComposition1620 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1620)
theorem firstLink1621 : DerivedMapBatches.Batch015.certificate1219.c = DerivedMapBatches.Batch066.certificate5309.a := by decide
theorem secondLink1621 : DerivedMapBatches.Batch011.certificate942.algebra.mat = DerivedMapBatches.Batch066.certificate5309.b := by decide
theorem firstValid1621 : DerivedMapBatches.Batch015.certificate1219.Valid := DerivedMapBatches.Batch015.certificate1219valid
theorem secondValid1621 : DerivedMapBatches.Batch011.certificate942.Valid := DerivedMapBatches.Batch011.certificate942valid
theorem outputValid1621 : DerivedMapBatches.Batch066.certificate5309.Valid := DerivedMapBatches.Batch066.certificate5309valid
theorem linkedComposition1621 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5309.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5309.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1219.c x) := by
  rw [firstLink1621, secondLink1621]
  exact DerivedMapBatches.Batch066.certificate5309valid.2 x
theorem rhsLink1621 : DerivedMapBatches.Batch066.certificate5309.c = DerivedMapBatches.Batch016.certificate1290.c := by decide
theorem rhsValid1621 : DerivedMapBatches.Batch016.certificate1290.Valid := DerivedMapBatches.Batch016.certificate1290valid
theorem linkedCommutativity1621 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5309.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1219.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1290.c x := by
  exact (linkedComposition1621 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1621)
theorem firstLink1622 : DerivedMapBatches.Batch015.certificate1221.c = DerivedMapBatches.Batch066.certificate5310.a := by decide
theorem secondLink1622 : DerivedMapBatches.Batch011.certificate945.algebra.mat = DerivedMapBatches.Batch066.certificate5310.b := by decide
theorem firstValid1622 : DerivedMapBatches.Batch015.certificate1221.Valid := DerivedMapBatches.Batch015.certificate1221valid
theorem secondValid1622 : DerivedMapBatches.Batch011.certificate945.Valid := DerivedMapBatches.Batch011.certificate945valid
theorem outputValid1622 : DerivedMapBatches.Batch066.certificate5310.Valid := DerivedMapBatches.Batch066.certificate5310valid
theorem linkedComposition1622 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5310.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5310.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1221.c x) := by
  rw [firstLink1622, secondLink1622]
  exact DerivedMapBatches.Batch066.certificate5310valid.2 x
theorem rhsLink1622 : DerivedMapBatches.Batch066.certificate5310.c = DerivedMapBatches.Batch016.certificate1291.c := by decide
theorem rhsValid1622 : DerivedMapBatches.Batch016.certificate1291.Valid := DerivedMapBatches.Batch016.certificate1291valid
theorem linkedCommutativity1622 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5310.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1221.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1291.c x := by
  exact (linkedComposition1622 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1622)
theorem firstLink1623 : DerivedMapBatches.Batch015.certificate1224.c = DerivedMapBatches.Batch066.certificate5311.a := by decide
theorem secondLink1623 : DerivedMapBatches.Batch016.certificate1292.algebra.mat = DerivedMapBatches.Batch066.certificate5311.b := by decide
theorem firstValid1623 : DerivedMapBatches.Batch015.certificate1224.Valid := DerivedMapBatches.Batch015.certificate1224valid
theorem secondValid1623 : DerivedMapBatches.Batch016.certificate1292.Valid := DerivedMapBatches.Batch016.certificate1292valid
theorem outputValid1623 : DerivedMapBatches.Batch066.certificate5311.Valid := DerivedMapBatches.Batch066.certificate5311valid
theorem linkedComposition1623 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5311.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5311.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1292.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1224.c x) := by
  rw [firstLink1623, secondLink1623]
  exact DerivedMapBatches.Batch066.certificate5311valid.2 x
theorem rhsLink1623 : DerivedMapBatches.Batch066.certificate5311.c = DerivedMapBatches.Batch016.certificate1293.c := by decide
theorem rhsValid1623 : DerivedMapBatches.Batch016.certificate1293.Valid := DerivedMapBatches.Batch016.certificate1293valid
theorem linkedCommutativity1623 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5311.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1292.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1224.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1293.c x := by
  exact (linkedComposition1623 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1623)
theorem firstLink1624 : DerivedMapBatches.Batch015.certificate1227.c = DerivedMapBatches.Batch066.certificate5312.a := by decide
theorem secondLink1624 : DerivedMapBatches.Batch016.certificate1294.algebra.mat = DerivedMapBatches.Batch066.certificate5312.b := by decide
theorem firstValid1624 : DerivedMapBatches.Batch015.certificate1227.Valid := DerivedMapBatches.Batch015.certificate1227valid
theorem secondValid1624 : DerivedMapBatches.Batch016.certificate1294.Valid := DerivedMapBatches.Batch016.certificate1294valid
theorem outputValid1624 : DerivedMapBatches.Batch066.certificate5312.Valid := DerivedMapBatches.Batch066.certificate5312valid
theorem linkedComposition1624 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5312.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5312.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1294.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1227.c x) := by
  rw [firstLink1624, secondLink1624]
  exact DerivedMapBatches.Batch066.certificate5312valid.2 x
theorem rhsLink1624 : DerivedMapBatches.Batch066.certificate5312.c = DerivedMapBatches.Batch016.certificate1295.c := by decide
theorem rhsValid1624 : DerivedMapBatches.Batch016.certificate1295.Valid := DerivedMapBatches.Batch016.certificate1295valid
theorem linkedCommutativity1624 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5312.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1294.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1227.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1295.c x := by
  exact (linkedComposition1624 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1624)
theorem firstLink1625 : DerivedMapBatches.Batch015.certificate1229.c = DerivedMapBatches.Batch066.certificate5313.a := by decide
theorem secondLink1625 : DerivedMapBatches.Batch011.certificate951.algebra.mat = DerivedMapBatches.Batch066.certificate5313.b := by decide
theorem firstValid1625 : DerivedMapBatches.Batch015.certificate1229.Valid := DerivedMapBatches.Batch015.certificate1229valid
theorem secondValid1625 : DerivedMapBatches.Batch011.certificate951.Valid := DerivedMapBatches.Batch011.certificate951valid
theorem outputValid1625 : DerivedMapBatches.Batch066.certificate5313.Valid := DerivedMapBatches.Batch066.certificate5313valid
theorem linkedComposition1625 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5313.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5313.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1229.c x) := by
  rw [firstLink1625, secondLink1625]
  exact DerivedMapBatches.Batch066.certificate5313valid.2 x
theorem rhsLink1625 : DerivedMapBatches.Batch066.certificate5313.c = DerivedMapBatches.Batch016.certificate1296.c := by decide
theorem rhsValid1625 : DerivedMapBatches.Batch016.certificate1296.Valid := DerivedMapBatches.Batch016.certificate1296valid
theorem linkedCommutativity1625 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5313.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1229.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1296.c x := by
  exact (linkedComposition1625 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1625)
theorem firstLink1626 : DerivedMapBatches.Batch015.certificate1231.c = DerivedMapBatches.Batch066.certificate5314.a := by decide
theorem secondLink1626 : DerivedMapBatches.Batch011.certificate954.algebra.mat = DerivedMapBatches.Batch066.certificate5314.b := by decide
theorem firstValid1626 : DerivedMapBatches.Batch015.certificate1231.Valid := DerivedMapBatches.Batch015.certificate1231valid
theorem secondValid1626 : DerivedMapBatches.Batch011.certificate954.Valid := DerivedMapBatches.Batch011.certificate954valid
theorem outputValid1626 : DerivedMapBatches.Batch066.certificate5314.Valid := DerivedMapBatches.Batch066.certificate5314valid
theorem linkedComposition1626 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5314.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5314.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1231.c x) := by
  rw [firstLink1626, secondLink1626]
  exact DerivedMapBatches.Batch066.certificate5314valid.2 x
theorem rhsLink1626 : DerivedMapBatches.Batch066.certificate5314.c = DerivedMapBatches.Batch016.certificate1297.c := by decide
theorem rhsValid1626 : DerivedMapBatches.Batch016.certificate1297.Valid := DerivedMapBatches.Batch016.certificate1297valid
theorem linkedCommutativity1626 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5314.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1231.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1297.c x := by
  exact (linkedComposition1626 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1626)
theorem firstLink1627 : DerivedMapBatches.Batch015.certificate1234.c = DerivedMapBatches.Batch066.certificate5315.a := by decide
theorem secondLink1627 : DerivedMapBatches.Batch016.certificate1298.algebra.mat = DerivedMapBatches.Batch066.certificate5315.b := by decide
theorem firstValid1627 : DerivedMapBatches.Batch015.certificate1234.Valid := DerivedMapBatches.Batch015.certificate1234valid
theorem secondValid1627 : DerivedMapBatches.Batch016.certificate1298.Valid := DerivedMapBatches.Batch016.certificate1298valid
theorem outputValid1627 : DerivedMapBatches.Batch066.certificate5315.Valid := DerivedMapBatches.Batch066.certificate5315valid
theorem linkedComposition1627 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5315.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5315.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1298.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1234.c x) := by
  rw [firstLink1627, secondLink1627]
  exact DerivedMapBatches.Batch066.certificate5315valid.2 x
theorem rhsLink1627 : DerivedMapBatches.Batch066.certificate5315.c = DerivedMapBatches.Batch016.certificate1299.c := by decide
theorem rhsValid1627 : DerivedMapBatches.Batch016.certificate1299.Valid := DerivedMapBatches.Batch016.certificate1299valid
theorem linkedCommutativity1627 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5315.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1298.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1234.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1299.c x := by
  exact (linkedComposition1627 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1627)
theorem firstLink1628 : DerivedMapBatches.Batch015.certificate1236.c = DerivedMapBatches.Batch066.certificate5316.a := by decide
theorem secondLink1628 : DerivedMapBatches.Batch011.certificate957.algebra.mat = DerivedMapBatches.Batch066.certificate5316.b := by decide
theorem firstValid1628 : DerivedMapBatches.Batch015.certificate1236.Valid := DerivedMapBatches.Batch015.certificate1236valid
theorem secondValid1628 : DerivedMapBatches.Batch011.certificate957.Valid := DerivedMapBatches.Batch011.certificate957valid
theorem outputValid1628 : DerivedMapBatches.Batch066.certificate5316.Valid := DerivedMapBatches.Batch066.certificate5316valid
theorem linkedComposition1628 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5316.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5316.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1236.c x) := by
  rw [firstLink1628, secondLink1628]
  exact DerivedMapBatches.Batch066.certificate5316valid.2 x
theorem rhsLink1628 : DerivedMapBatches.Batch066.certificate5316.c = DerivedMapBatches.Batch016.certificate1300.c := by decide
theorem rhsValid1628 : DerivedMapBatches.Batch016.certificate1300.Valid := DerivedMapBatches.Batch016.certificate1300valid
theorem linkedCommutativity1628 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5316.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1236.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1300.c x := by
  exact (linkedComposition1628 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1628)
theorem firstLink1629 : DerivedMapBatches.Batch015.certificate1238.c = DerivedMapBatches.Batch066.certificate5317.a := by decide
theorem secondLink1629 : DerivedMapBatches.Batch012.certificate960.algebra.mat = DerivedMapBatches.Batch066.certificate5317.b := by decide
theorem firstValid1629 : DerivedMapBatches.Batch015.certificate1238.Valid := DerivedMapBatches.Batch015.certificate1238valid
theorem secondValid1629 : DerivedMapBatches.Batch012.certificate960.Valid := DerivedMapBatches.Batch012.certificate960valid
theorem outputValid1629 : DerivedMapBatches.Batch066.certificate5317.Valid := DerivedMapBatches.Batch066.certificate5317valid
theorem linkedComposition1629 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5317.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5317.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1238.c x) := by
  rw [firstLink1629, secondLink1629]
  exact DerivedMapBatches.Batch066.certificate5317valid.2 x
theorem rhsLink1629 : DerivedMapBatches.Batch066.certificate5317.c = DerivedMapBatches.Batch016.certificate1301.c := by decide
theorem rhsValid1629 : DerivedMapBatches.Batch016.certificate1301.Valid := DerivedMapBatches.Batch016.certificate1301valid
theorem linkedCommutativity1629 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5317.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1238.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1301.c x := by
  exact (linkedComposition1629 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1629)
theorem firstLink1630 : DerivedMapBatches.Batch015.certificate1241.c = DerivedMapBatches.Batch066.certificate5318.a := by decide
theorem secondLink1630 : DerivedMapBatches.Batch016.certificate1302.algebra.mat = DerivedMapBatches.Batch066.certificate5318.b := by decide
theorem firstValid1630 : DerivedMapBatches.Batch015.certificate1241.Valid := DerivedMapBatches.Batch015.certificate1241valid
theorem secondValid1630 : DerivedMapBatches.Batch016.certificate1302.Valid := DerivedMapBatches.Batch016.certificate1302valid
theorem outputValid1630 : DerivedMapBatches.Batch066.certificate5318.Valid := DerivedMapBatches.Batch066.certificate5318valid
theorem linkedComposition1630 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5318.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5318.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1302.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1241.c x) := by
  rw [firstLink1630, secondLink1630]
  exact DerivedMapBatches.Batch066.certificate5318valid.2 x
theorem rhsLink1630 : DerivedMapBatches.Batch066.certificate5318.c = DerivedMapBatches.Batch016.certificate1303.c := by decide
theorem rhsValid1630 : DerivedMapBatches.Batch016.certificate1303.Valid := DerivedMapBatches.Batch016.certificate1303valid
theorem linkedCommutativity1630 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5318.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1302.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1241.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1303.c x := by
  exact (linkedComposition1630 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1630)
theorem firstLink1631 : DerivedMapBatches.Batch015.certificate1243.c = DerivedMapBatches.Batch066.certificate5319.a := by decide
theorem secondLink1631 : DerivedMapBatches.Batch012.certificate963.algebra.mat = DerivedMapBatches.Batch066.certificate5319.b := by decide
theorem firstValid1631 : DerivedMapBatches.Batch015.certificate1243.Valid := DerivedMapBatches.Batch015.certificate1243valid
theorem secondValid1631 : DerivedMapBatches.Batch012.certificate963.Valid := DerivedMapBatches.Batch012.certificate963valid
theorem outputValid1631 : DerivedMapBatches.Batch066.certificate5319.Valid := DerivedMapBatches.Batch066.certificate5319valid
theorem linkedComposition1631 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5319.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5319.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1243.c x) := by
  rw [firstLink1631, secondLink1631]
  exact DerivedMapBatches.Batch066.certificate5319valid.2 x
theorem rhsLink1631 : DerivedMapBatches.Batch066.certificate5319.c = DerivedMapBatches.Batch016.certificate1304.c := by decide
theorem rhsValid1631 : DerivedMapBatches.Batch016.certificate1304.Valid := DerivedMapBatches.Batch016.certificate1304valid
theorem linkedCommutativity1631 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5319.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1243.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1304.c x := by
  exact (linkedComposition1631 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1631)
theorem firstLink1632 : DerivedMapBatches.Batch015.certificate1246.c = DerivedMapBatches.Batch066.certificate5320.a := by decide
theorem secondLink1632 : DerivedMapBatches.Batch016.certificate1305.algebra.mat = DerivedMapBatches.Batch066.certificate5320.b := by decide
theorem firstValid1632 : DerivedMapBatches.Batch015.certificate1246.Valid := DerivedMapBatches.Batch015.certificate1246valid
theorem secondValid1632 : DerivedMapBatches.Batch016.certificate1305.Valid := DerivedMapBatches.Batch016.certificate1305valid
theorem outputValid1632 : DerivedMapBatches.Batch066.certificate5320.Valid := DerivedMapBatches.Batch066.certificate5320valid
theorem linkedComposition1632 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5320.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5320.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1305.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1246.c x) := by
  rw [firstLink1632, secondLink1632]
  exact DerivedMapBatches.Batch066.certificate5320valid.2 x
theorem rhsLink1632 : DerivedMapBatches.Batch066.certificate5320.c = DerivedMapBatches.Batch016.certificate1306.c := by decide
theorem rhsValid1632 : DerivedMapBatches.Batch016.certificate1306.Valid := DerivedMapBatches.Batch016.certificate1306valid
theorem linkedCommutativity1632 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5320.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1305.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1246.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1306.c x := by
  exact (linkedComposition1632 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1632)
theorem firstLink1633 : DerivedMapBatches.Batch015.certificate1248.c = DerivedMapBatches.Batch066.certificate5321.a := by decide
theorem secondLink1633 : DerivedMapBatches.Batch012.certificate969.algebra.mat = DerivedMapBatches.Batch066.certificate5321.b := by decide
theorem firstValid1633 : DerivedMapBatches.Batch015.certificate1248.Valid := DerivedMapBatches.Batch015.certificate1248valid
theorem secondValid1633 : DerivedMapBatches.Batch012.certificate969.Valid := DerivedMapBatches.Batch012.certificate969valid
theorem outputValid1633 : DerivedMapBatches.Batch066.certificate5321.Valid := DerivedMapBatches.Batch066.certificate5321valid
theorem linkedComposition1633 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5321.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5321.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1248.c x) := by
  rw [firstLink1633, secondLink1633]
  exact DerivedMapBatches.Batch066.certificate5321valid.2 x
theorem rhsLink1633 : DerivedMapBatches.Batch066.certificate5321.c = DerivedMapBatches.Batch016.certificate1307.c := by decide
theorem rhsValid1633 : DerivedMapBatches.Batch016.certificate1307.Valid := DerivedMapBatches.Batch016.certificate1307valid
theorem linkedCommutativity1633 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5321.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1248.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1307.c x := by
  exact (linkedComposition1633 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1633)
theorem firstLink1634 : DerivedMapBatches.Batch015.certificate1251.c = DerivedMapBatches.Batch066.certificate5322.a := by decide
theorem secondLink1634 : DerivedMapBatches.Batch016.certificate1308.algebra.mat = DerivedMapBatches.Batch066.certificate5322.b := by decide
theorem firstValid1634 : DerivedMapBatches.Batch015.certificate1251.Valid := DerivedMapBatches.Batch015.certificate1251valid
theorem secondValid1634 : DerivedMapBatches.Batch016.certificate1308.Valid := DerivedMapBatches.Batch016.certificate1308valid
theorem outputValid1634 : DerivedMapBatches.Batch066.certificate5322.Valid := DerivedMapBatches.Batch066.certificate5322valid
theorem linkedComposition1634 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5322.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5322.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1308.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1251.c x) := by
  rw [firstLink1634, secondLink1634]
  exact DerivedMapBatches.Batch066.certificate5322valid.2 x
theorem rhsLink1634 : DerivedMapBatches.Batch066.certificate5322.c = DerivedMapBatches.Batch016.certificate1309.c := by decide
theorem rhsValid1634 : DerivedMapBatches.Batch016.certificate1309.Valid := DerivedMapBatches.Batch016.certificate1309valid
theorem linkedCommutativity1634 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5322.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1308.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1251.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1309.c x := by
  exact (linkedComposition1634 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1634)
theorem firstLink1635 : DerivedMapBatches.Batch015.certificate1253.c = DerivedMapBatches.Batch066.certificate5323.a := by decide
theorem secondLink1635 : DerivedMapBatches.Batch012.certificate975.algebra.mat = DerivedMapBatches.Batch066.certificate5323.b := by decide
theorem firstValid1635 : DerivedMapBatches.Batch015.certificate1253.Valid := DerivedMapBatches.Batch015.certificate1253valid
theorem secondValid1635 : DerivedMapBatches.Batch012.certificate975.Valid := DerivedMapBatches.Batch012.certificate975valid
theorem outputValid1635 : DerivedMapBatches.Batch066.certificate5323.Valid := DerivedMapBatches.Batch066.certificate5323valid
theorem linkedComposition1635 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5323.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5323.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1253.c x) := by
  rw [firstLink1635, secondLink1635]
  exact DerivedMapBatches.Batch066.certificate5323valid.2 x
theorem rhsLink1635 : DerivedMapBatches.Batch066.certificate5323.c = DerivedMapBatches.Batch016.certificate1310.c := by decide
theorem rhsValid1635 : DerivedMapBatches.Batch016.certificate1310.Valid := DerivedMapBatches.Batch016.certificate1310valid
theorem linkedCommutativity1635 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5323.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1253.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1310.c x := by
  exact (linkedComposition1635 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1635)
theorem firstLink1636 : DerivedMapBatches.Batch015.certificate1256.c = DerivedMapBatches.Batch066.certificate5324.a := by decide
theorem secondLink1636 : DerivedMapBatches.Batch016.certificate1311.algebra.mat = DerivedMapBatches.Batch066.certificate5324.b := by decide
theorem firstValid1636 : DerivedMapBatches.Batch015.certificate1256.Valid := DerivedMapBatches.Batch015.certificate1256valid
theorem secondValid1636 : DerivedMapBatches.Batch016.certificate1311.Valid := DerivedMapBatches.Batch016.certificate1311valid
theorem outputValid1636 : DerivedMapBatches.Batch066.certificate5324.Valid := DerivedMapBatches.Batch066.certificate5324valid
theorem linkedComposition1636 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5324.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5324.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1311.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1256.c x) := by
  rw [firstLink1636, secondLink1636]
  exact DerivedMapBatches.Batch066.certificate5324valid.2 x
theorem rhsLink1636 : DerivedMapBatches.Batch066.certificate5324.c = DerivedMapBatches.Batch016.certificate1312.c := by decide
theorem rhsValid1636 : DerivedMapBatches.Batch016.certificate1312.Valid := DerivedMapBatches.Batch016.certificate1312valid
theorem linkedCommutativity1636 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5324.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1311.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1256.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1312.c x := by
  exact (linkedComposition1636 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1636)
theorem firstLink1637 : DerivedMapBatches.Batch015.certificate1258.c = DerivedMapBatches.Batch066.certificate5325.a := by decide
theorem secondLink1637 : DerivedMapBatches.Batch012.certificate978.algebra.mat = DerivedMapBatches.Batch066.certificate5325.b := by decide
theorem firstValid1637 : DerivedMapBatches.Batch015.certificate1258.Valid := DerivedMapBatches.Batch015.certificate1258valid
theorem secondValid1637 : DerivedMapBatches.Batch012.certificate978.Valid := DerivedMapBatches.Batch012.certificate978valid
theorem outputValid1637 : DerivedMapBatches.Batch066.certificate5325.Valid := DerivedMapBatches.Batch066.certificate5325valid
theorem linkedComposition1637 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5325.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5325.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1258.c x) := by
  rw [firstLink1637, secondLink1637]
  exact DerivedMapBatches.Batch066.certificate5325valid.2 x
theorem rhsLink1637 : DerivedMapBatches.Batch066.certificate5325.c = DerivedMapBatches.Batch016.certificate1313.c := by decide
theorem rhsValid1637 : DerivedMapBatches.Batch016.certificate1313.Valid := DerivedMapBatches.Batch016.certificate1313valid
theorem linkedCommutativity1637 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5325.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1258.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1313.c x := by
  exact (linkedComposition1637 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1637)
theorem firstLink1638 : DerivedMapBatches.Batch015.certificate1261.c = DerivedMapBatches.Batch066.certificate5326.a := by decide
theorem secondLink1638 : DerivedMapBatches.Batch016.certificate1314.algebra.mat = DerivedMapBatches.Batch066.certificate5326.b := by decide
theorem firstValid1638 : DerivedMapBatches.Batch015.certificate1261.Valid := DerivedMapBatches.Batch015.certificate1261valid
theorem secondValid1638 : DerivedMapBatches.Batch016.certificate1314.Valid := DerivedMapBatches.Batch016.certificate1314valid
theorem outputValid1638 : DerivedMapBatches.Batch066.certificate5326.Valid := DerivedMapBatches.Batch066.certificate5326valid
theorem linkedComposition1638 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5326.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5326.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1314.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1261.c x) := by
  rw [firstLink1638, secondLink1638]
  exact DerivedMapBatches.Batch066.certificate5326valid.2 x
theorem rhsLink1638 : DerivedMapBatches.Batch066.certificate5326.c = DerivedMapBatches.Batch016.certificate1315.c := by decide
theorem rhsValid1638 : DerivedMapBatches.Batch016.certificate1315.Valid := DerivedMapBatches.Batch016.certificate1315valid
theorem linkedCommutativity1638 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5326.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1314.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1261.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1315.c x := by
  exact (linkedComposition1638 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1638)
theorem firstLink1639 : DerivedMapBatches.Batch015.certificate1264.c = DerivedMapBatches.Batch066.certificate5327.a := by decide
theorem secondLink1639 : DerivedMapBatches.Batch016.certificate1316.algebra.mat = DerivedMapBatches.Batch066.certificate5327.b := by decide
theorem firstValid1639 : DerivedMapBatches.Batch015.certificate1264.Valid := DerivedMapBatches.Batch015.certificate1264valid
theorem secondValid1639 : DerivedMapBatches.Batch016.certificate1316.Valid := DerivedMapBatches.Batch016.certificate1316valid
theorem outputValid1639 : DerivedMapBatches.Batch066.certificate5327.Valid := DerivedMapBatches.Batch066.certificate5327valid
theorem linkedComposition1639 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5327.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5327.c x = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1316.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1264.c x) := by
  rw [firstLink1639, secondLink1639]
  exact DerivedMapBatches.Batch066.certificate5327valid.2 x
theorem rhsLink1639 : DerivedMapBatches.Batch066.certificate5327.c = DerivedMapBatches.Batch016.certificate1317.c := by decide
theorem rhsValid1639 : DerivedMapBatches.Batch016.certificate1317.Valid := DerivedMapBatches.Batch016.certificate1317valid
theorem linkedCommutativity1639 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5327.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch016.certificate1316.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch015.certificate1264.c x) = LinearCertificates.eval DerivedMapBatches.Batch016.certificate1317.c x := by
  exact (linkedComposition1639 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1639)
theorem firstLink1640 : DerivedMapBatches.Batch014.certificate1176.algebra.mat = DerivedMapBatches.Batch066.certificate5328.a := by decide
theorem secondLink1640 : DerivedMapBatches.Batch014.certificate1177.algebra.mat = DerivedMapBatches.Batch066.certificate5328.b := by decide
theorem firstValid1640 : DerivedMapBatches.Batch014.certificate1176.Valid := DerivedMapBatches.Batch014.certificate1176valid
theorem secondValid1640 : DerivedMapBatches.Batch014.certificate1177.Valid := DerivedMapBatches.Batch014.certificate1177valid
theorem outputValid1640 : DerivedMapBatches.Batch066.certificate5328.Valid := DerivedMapBatches.Batch066.certificate5328valid
theorem linkedComposition1640 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5328.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5328.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1177.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1176.algebra.mat x) := by
  rw [firstLink1640, secondLink1640]
  exact DerivedMapBatches.Batch066.certificate5328valid.2 x
theorem rhsLink1640 : DerivedMapBatches.Batch066.certificate5328.c = DerivedMapBatches.Batch014.certificate1178.c := by decide
theorem rhsValid1640 : DerivedMapBatches.Batch014.certificate1178.Valid := DerivedMapBatches.Batch014.certificate1178valid
theorem linkedCommutativity1640 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5328.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1177.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1176.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1178.c x := by
  exact (linkedComposition1640 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1640)
theorem firstLink1641 : DerivedMapBatches.Batch014.certificate1179.algebra.mat = DerivedMapBatches.Batch066.certificate5329.a := by decide
theorem secondLink1641 : DerivedMapBatches.Batch014.certificate1180.algebra.mat = DerivedMapBatches.Batch066.certificate5329.b := by decide
theorem firstValid1641 : DerivedMapBatches.Batch014.certificate1179.Valid := DerivedMapBatches.Batch014.certificate1179valid
theorem secondValid1641 : DerivedMapBatches.Batch014.certificate1180.Valid := DerivedMapBatches.Batch014.certificate1180valid
theorem outputValid1641 : DerivedMapBatches.Batch066.certificate5329.Valid := DerivedMapBatches.Batch066.certificate5329valid
theorem linkedComposition1641 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5329.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5329.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1180.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1179.algebra.mat x) := by
  rw [firstLink1641, secondLink1641]
  exact DerivedMapBatches.Batch066.certificate5329valid.2 x
theorem rhsLink1641 : DerivedMapBatches.Batch066.certificate5329.c = DerivedMapBatches.Batch014.certificate1181.c := by decide
theorem rhsValid1641 : DerivedMapBatches.Batch014.certificate1181.Valid := DerivedMapBatches.Batch014.certificate1181valid
theorem linkedCommutativity1641 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5329.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1180.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1179.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1181.c x := by
  exact (linkedComposition1641 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1641)
theorem firstLink1642 : DerivedMapBatches.Batch014.certificate1182.algebra.mat = DerivedMapBatches.Batch066.certificate5330.a := by decide
theorem secondLink1642 : DerivedMapBatches.Batch011.certificate902.algebra.mat = DerivedMapBatches.Batch066.certificate5330.b := by decide
theorem firstValid1642 : DerivedMapBatches.Batch014.certificate1182.Valid := DerivedMapBatches.Batch014.certificate1182valid
theorem secondValid1642 : DerivedMapBatches.Batch011.certificate902.Valid := DerivedMapBatches.Batch011.certificate902valid
theorem outputValid1642 : DerivedMapBatches.Batch066.certificate5330.Valid := DerivedMapBatches.Batch066.certificate5330valid
theorem linkedComposition1642 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5330.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5330.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1182.algebra.mat x) := by
  rw [firstLink1642, secondLink1642]
  exact DerivedMapBatches.Batch066.certificate5330valid.2 x
theorem rhsLink1642 : DerivedMapBatches.Batch066.certificate5330.c = DerivedMapBatches.Batch014.certificate1183.c := by decide
theorem rhsValid1642 : DerivedMapBatches.Batch014.certificate1183.Valid := DerivedMapBatches.Batch014.certificate1183valid
theorem linkedCommutativity1642 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5330.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1182.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1183.c x := by
  exact (linkedComposition1642 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1642)
theorem firstLink1643 : DerivedMapBatches.Batch014.certificate1184.algebra.mat = DerivedMapBatches.Batch066.certificate5331.a := by decide
theorem secondLink1643 : DerivedMapBatches.Batch011.certificate905.algebra.mat = DerivedMapBatches.Batch066.certificate5331.b := by decide
theorem firstValid1643 : DerivedMapBatches.Batch014.certificate1184.Valid := DerivedMapBatches.Batch014.certificate1184valid
theorem secondValid1643 : DerivedMapBatches.Batch011.certificate905.Valid := DerivedMapBatches.Batch011.certificate905valid
theorem outputValid1643 : DerivedMapBatches.Batch066.certificate5331.Valid := DerivedMapBatches.Batch066.certificate5331valid
theorem linkedComposition1643 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5331.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5331.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1184.algebra.mat x) := by
  rw [firstLink1643, secondLink1643]
  exact DerivedMapBatches.Batch066.certificate5331valid.2 x
theorem rhsLink1643 : DerivedMapBatches.Batch066.certificate5331.c = DerivedMapBatches.Batch014.certificate1185.c := by decide
theorem rhsValid1643 : DerivedMapBatches.Batch014.certificate1185.Valid := DerivedMapBatches.Batch014.certificate1185valid
theorem linkedCommutativity1643 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5331.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1184.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1185.c x := by
  exact (linkedComposition1643 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1643)
theorem firstLink1644 : DerivedMapBatches.Batch014.certificate1186.algebra.mat = DerivedMapBatches.Batch066.certificate5332.a := by decide
theorem secondLink1644 : DerivedMapBatches.Batch011.certificate908.algebra.mat = DerivedMapBatches.Batch066.certificate5332.b := by decide
theorem firstValid1644 : DerivedMapBatches.Batch014.certificate1186.Valid := DerivedMapBatches.Batch014.certificate1186valid
theorem secondValid1644 : DerivedMapBatches.Batch011.certificate908.Valid := DerivedMapBatches.Batch011.certificate908valid
theorem outputValid1644 : DerivedMapBatches.Batch066.certificate5332.Valid := DerivedMapBatches.Batch066.certificate5332valid
theorem linkedComposition1644 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5332.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5332.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1186.algebra.mat x) := by
  rw [firstLink1644, secondLink1644]
  exact DerivedMapBatches.Batch066.certificate5332valid.2 x
theorem rhsLink1644 : DerivedMapBatches.Batch066.certificate5332.c = DerivedMapBatches.Batch014.certificate1187.c := by decide
theorem rhsValid1644 : DerivedMapBatches.Batch014.certificate1187.Valid := DerivedMapBatches.Batch014.certificate1187valid
theorem linkedCommutativity1644 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5332.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1186.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1187.c x := by
  exact (linkedComposition1644 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1644)
theorem firstLink1645 : DerivedMapBatches.Batch014.certificate1188.algebra.mat = DerivedMapBatches.Batch066.certificate5333.a := by decide
theorem secondLink1645 : DerivedMapBatches.Batch014.certificate1189.algebra.mat = DerivedMapBatches.Batch066.certificate5333.b := by decide
theorem firstValid1645 : DerivedMapBatches.Batch014.certificate1188.Valid := DerivedMapBatches.Batch014.certificate1188valid
theorem secondValid1645 : DerivedMapBatches.Batch014.certificate1189.Valid := DerivedMapBatches.Batch014.certificate1189valid
theorem outputValid1645 : DerivedMapBatches.Batch066.certificate5333.Valid := DerivedMapBatches.Batch066.certificate5333valid
theorem linkedComposition1645 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5333.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5333.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1188.algebra.mat x) := by
  rw [firstLink1645, secondLink1645]
  exact DerivedMapBatches.Batch066.certificate5333valid.2 x
theorem rhsLink1645 : DerivedMapBatches.Batch066.certificate5333.c = DerivedMapBatches.Batch014.certificate1190.c := by decide
theorem rhsValid1645 : DerivedMapBatches.Batch014.certificate1190.Valid := DerivedMapBatches.Batch014.certificate1190valid
theorem linkedCommutativity1645 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5333.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1188.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1190.c x := by
  exact (linkedComposition1645 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1645)
theorem firstLink1646 : DerivedMapBatches.Batch014.certificate1191.algebra.mat = DerivedMapBatches.Batch066.certificate5334.a := by decide
theorem secondLink1646 : DerivedMapBatches.Batch011.certificate914.algebra.mat = DerivedMapBatches.Batch066.certificate5334.b := by decide
theorem firstValid1646 : DerivedMapBatches.Batch014.certificate1191.Valid := DerivedMapBatches.Batch014.certificate1191valid
theorem secondValid1646 : DerivedMapBatches.Batch011.certificate914.Valid := DerivedMapBatches.Batch011.certificate914valid
theorem outputValid1646 : DerivedMapBatches.Batch066.certificate5334.Valid := DerivedMapBatches.Batch066.certificate5334valid
theorem linkedComposition1646 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5334.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5334.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1191.algebra.mat x) := by
  rw [firstLink1646, secondLink1646]
  exact DerivedMapBatches.Batch066.certificate5334valid.2 x
theorem rhsLink1646 : DerivedMapBatches.Batch066.certificate5334.c = DerivedMapBatches.Batch014.certificate1192.c := by decide
theorem rhsValid1646 : DerivedMapBatches.Batch014.certificate1192.Valid := DerivedMapBatches.Batch014.certificate1192valid
theorem linkedCommutativity1646 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5334.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1191.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1192.c x := by
  exact (linkedComposition1646 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1646)
theorem firstLink1647 : DerivedMapBatches.Batch014.certificate1193.algebra.mat = DerivedMapBatches.Batch066.certificate5335.a := by decide
theorem secondLink1647 : DerivedMapBatches.Batch014.certificate1194.algebra.mat = DerivedMapBatches.Batch066.certificate5335.b := by decide
theorem firstValid1647 : DerivedMapBatches.Batch014.certificate1193.Valid := DerivedMapBatches.Batch014.certificate1193valid
theorem secondValid1647 : DerivedMapBatches.Batch014.certificate1194.Valid := DerivedMapBatches.Batch014.certificate1194valid
theorem outputValid1647 : DerivedMapBatches.Batch066.certificate5335.Valid := DerivedMapBatches.Batch066.certificate5335valid
theorem linkedComposition1647 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5335.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5335.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1193.algebra.mat x) := by
  rw [firstLink1647, secondLink1647]
  exact DerivedMapBatches.Batch066.certificate5335valid.2 x
theorem rhsLink1647 : DerivedMapBatches.Batch066.certificate5335.c = DerivedMapBatches.Batch014.certificate1195.c := by decide
theorem rhsValid1647 : DerivedMapBatches.Batch014.certificate1195.Valid := DerivedMapBatches.Batch014.certificate1195valid
theorem linkedCommutativity1647 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5335.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1193.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1195.c x := by
  exact (linkedComposition1647 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1647)
theorem firstLink1648 : DerivedMapBatches.Batch014.certificate1196.algebra.mat = DerivedMapBatches.Batch066.certificate5336.a := by decide
theorem secondLink1648 : DerivedMapBatches.Batch014.certificate1197.algebra.mat = DerivedMapBatches.Batch066.certificate5336.b := by decide
theorem firstValid1648 : DerivedMapBatches.Batch014.certificate1196.Valid := DerivedMapBatches.Batch014.certificate1196valid
theorem secondValid1648 : DerivedMapBatches.Batch014.certificate1197.Valid := DerivedMapBatches.Batch014.certificate1197valid
theorem outputValid1648 : DerivedMapBatches.Batch066.certificate5336.Valid := DerivedMapBatches.Batch066.certificate5336valid
theorem linkedComposition1648 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5336.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5336.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1196.algebra.mat x) := by
  rw [firstLink1648, secondLink1648]
  exact DerivedMapBatches.Batch066.certificate5336valid.2 x
theorem rhsLink1648 : DerivedMapBatches.Batch066.certificate5336.c = DerivedMapBatches.Batch014.certificate1198.c := by decide
theorem rhsValid1648 : DerivedMapBatches.Batch014.certificate1198.Valid := DerivedMapBatches.Batch014.certificate1198valid
theorem linkedCommutativity1648 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5336.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1196.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1198.c x := by
  exact (linkedComposition1648 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1648)
theorem firstLink1649 : DerivedMapBatches.Batch014.certificate1199.algebra.mat = DerivedMapBatches.Batch066.certificate5337.a := by decide
theorem secondLink1649 : DerivedMapBatches.Batch011.certificate920.algebra.mat = DerivedMapBatches.Batch066.certificate5337.b := by decide
theorem firstValid1649 : DerivedMapBatches.Batch014.certificate1199.Valid := DerivedMapBatches.Batch014.certificate1199valid
theorem secondValid1649 : DerivedMapBatches.Batch011.certificate920.Valid := DerivedMapBatches.Batch011.certificate920valid
theorem outputValid1649 : DerivedMapBatches.Batch066.certificate5337.Valid := DerivedMapBatches.Batch066.certificate5337valid
theorem linkedComposition1649 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5337.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5337.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1199.algebra.mat x) := by
  rw [firstLink1649, secondLink1649]
  exact DerivedMapBatches.Batch066.certificate5337valid.2 x
theorem rhsLink1649 : DerivedMapBatches.Batch066.certificate5337.c = DerivedMapBatches.Batch015.certificate1200.c := by decide
theorem rhsValid1649 : DerivedMapBatches.Batch015.certificate1200.Valid := DerivedMapBatches.Batch015.certificate1200valid
theorem linkedCommutativity1649 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5337.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1199.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch015.certificate1200.c x := by
  exact (linkedComposition1649 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1649)
end DerivedLinkageBatches.Batch032
