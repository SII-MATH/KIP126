import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch065
import DerivedMapBatches.Batch066
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch031
theorem firstLink1550 : DerivedMapBatches.Batch012.certificate1022.c = DerivedMapBatches.Batch065.certificate5238.a := by decide
theorem secondLink1550 : DerivedMapBatches.Batch010.certificate879.algebra.mat = DerivedMapBatches.Batch065.certificate5238.b := by decide
theorem firstValid1550 : DerivedMapBatches.Batch012.certificate1022.Valid := DerivedMapBatches.Batch012.certificate1022valid
theorem secondValid1550 : DerivedMapBatches.Batch010.certificate879.Valid := DerivedMapBatches.Batch010.certificate879valid
theorem outputValid1550 : DerivedMapBatches.Batch065.certificate5238.Valid := DerivedMapBatches.Batch065.certificate5238valid
theorem linkedComposition1550 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5238.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1022.c x) := by
  rw [firstLink1550, secondLink1550]
  exact DerivedMapBatches.Batch065.certificate5238valid.2 x
theorem rhsLink1550 : DerivedMapBatches.Batch065.certificate5238.c = DerivedMapBatches.Batch013.certificate1044.c := by decide
theorem rhsValid1550 : DerivedMapBatches.Batch013.certificate1044.Valid := DerivedMapBatches.Batch013.certificate1044valid
theorem linkedCommutativity1550 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1022.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1044.c x := by
  exact (linkedComposition1550 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1550)
theorem firstLink1551 : DerivedMapBatches.Batch012.certificate1024.c = DerivedMapBatches.Batch065.certificate5239.a := by decide
theorem secondLink1551 : DerivedMapBatches.Batch011.certificate885.algebra.mat = DerivedMapBatches.Batch065.certificate5239.b := by decide
theorem firstValid1551 : DerivedMapBatches.Batch012.certificate1024.Valid := DerivedMapBatches.Batch012.certificate1024valid
theorem secondValid1551 : DerivedMapBatches.Batch011.certificate885.Valid := DerivedMapBatches.Batch011.certificate885valid
theorem outputValid1551 : DerivedMapBatches.Batch065.certificate5239.Valid := DerivedMapBatches.Batch065.certificate5239valid
theorem linkedComposition1551 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5239.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5239.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1024.c x) := by
  rw [firstLink1551, secondLink1551]
  exact DerivedMapBatches.Batch065.certificate5239valid.2 x
theorem rhsLink1551 : DerivedMapBatches.Batch065.certificate5239.c = DerivedMapBatches.Batch013.certificate1045.c := by decide
theorem rhsValid1551 : DerivedMapBatches.Batch013.certificate1045.Valid := DerivedMapBatches.Batch013.certificate1045valid
theorem linkedCommutativity1551 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5239.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1024.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1045.c x := by
  exact (linkedComposition1551 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1551)
theorem firstLink1552 : DerivedMapBatches.Batch013.certificate1046.algebra.mat = DerivedMapBatches.Batch065.certificate5240.a := by decide
theorem secondLink1552 : DerivedMapBatches.Batch013.certificate1047.algebra.mat = DerivedMapBatches.Batch065.certificate5240.b := by decide
theorem firstValid1552 : DerivedMapBatches.Batch013.certificate1046.Valid := DerivedMapBatches.Batch013.certificate1046valid
theorem secondValid1552 : DerivedMapBatches.Batch013.certificate1047.Valid := DerivedMapBatches.Batch013.certificate1047valid
theorem outputValid1552 : DerivedMapBatches.Batch065.certificate5240.Valid := DerivedMapBatches.Batch065.certificate5240valid
theorem linkedComposition1552 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5240.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5240.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1047.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1046.algebra.mat x) := by
  rw [firstLink1552, secondLink1552]
  exact DerivedMapBatches.Batch065.certificate5240valid.2 x
theorem rhsLink1552 : DerivedMapBatches.Batch065.certificate5240.c = DerivedMapBatches.Batch013.certificate1048.c := by decide
theorem rhsValid1552 : DerivedMapBatches.Batch013.certificate1048.Valid := DerivedMapBatches.Batch013.certificate1048valid
theorem linkedCommutativity1552 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5240.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1047.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1046.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1048.c x := by
  exact (linkedComposition1552 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1552)
theorem firstLink1553 : DerivedMapBatches.Batch013.certificate1049.algebra.mat = DerivedMapBatches.Batch065.certificate5241.a := by decide
theorem secondLink1553 : DerivedMapBatches.Batch013.certificate1050.algebra.mat = DerivedMapBatches.Batch065.certificate5241.b := by decide
theorem firstValid1553 : DerivedMapBatches.Batch013.certificate1049.Valid := DerivedMapBatches.Batch013.certificate1049valid
theorem secondValid1553 : DerivedMapBatches.Batch013.certificate1050.Valid := DerivedMapBatches.Batch013.certificate1050valid
theorem outputValid1553 : DerivedMapBatches.Batch065.certificate5241.Valid := DerivedMapBatches.Batch065.certificate5241valid
theorem linkedComposition1553 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5241.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5241.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1050.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1049.algebra.mat x) := by
  rw [firstLink1553, secondLink1553]
  exact DerivedMapBatches.Batch065.certificate5241valid.2 x
theorem rhsLink1553 : DerivedMapBatches.Batch065.certificate5241.c = DerivedMapBatches.Batch013.certificate1051.c := by decide
theorem rhsValid1553 : DerivedMapBatches.Batch013.certificate1051.Valid := DerivedMapBatches.Batch013.certificate1051valid
theorem linkedCommutativity1553 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5241.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1050.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1049.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1051.c x := by
  exact (linkedComposition1553 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1553)
theorem firstLink1554 : DerivedMapBatches.Batch013.certificate1052.algebra.mat = DerivedMapBatches.Batch065.certificate5242.a := by decide
theorem secondLink1554 : DerivedMapBatches.Batch013.certificate1053.algebra.mat = DerivedMapBatches.Batch065.certificate5242.b := by decide
theorem firstValid1554 : DerivedMapBatches.Batch013.certificate1052.Valid := DerivedMapBatches.Batch013.certificate1052valid
theorem secondValid1554 : DerivedMapBatches.Batch013.certificate1053.Valid := DerivedMapBatches.Batch013.certificate1053valid
theorem outputValid1554 : DerivedMapBatches.Batch065.certificate5242.Valid := DerivedMapBatches.Batch065.certificate5242valid
theorem linkedComposition1554 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5242.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5242.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1053.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1052.algebra.mat x) := by
  rw [firstLink1554, secondLink1554]
  exact DerivedMapBatches.Batch065.certificate5242valid.2 x
theorem rhsLink1554 : DerivedMapBatches.Batch065.certificate5242.c = DerivedMapBatches.Batch013.certificate1054.c := by decide
theorem rhsValid1554 : DerivedMapBatches.Batch013.certificate1054.Valid := DerivedMapBatches.Batch013.certificate1054valid
theorem linkedCommutativity1554 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5242.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1053.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1052.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1054.c x := by
  exact (linkedComposition1554 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1554)
theorem firstLink1555 : DerivedMapBatches.Batch013.certificate1055.algebra.mat = DerivedMapBatches.Batch065.certificate5243.a := by decide
theorem secondLink1555 : DerivedMapBatches.Batch013.certificate1056.algebra.mat = DerivedMapBatches.Batch065.certificate5243.b := by decide
theorem firstValid1555 : DerivedMapBatches.Batch013.certificate1055.Valid := DerivedMapBatches.Batch013.certificate1055valid
theorem secondValid1555 : DerivedMapBatches.Batch013.certificate1056.Valid := DerivedMapBatches.Batch013.certificate1056valid
theorem outputValid1555 : DerivedMapBatches.Batch065.certificate5243.Valid := DerivedMapBatches.Batch065.certificate5243valid
theorem linkedComposition1555 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5243.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5243.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1055.algebra.mat x) := by
  rw [firstLink1555, secondLink1555]
  exact DerivedMapBatches.Batch065.certificate5243valid.2 x
theorem rhsLink1555 : DerivedMapBatches.Batch065.certificate5243.c = DerivedMapBatches.Batch013.certificate1057.c := by decide
theorem rhsValid1555 : DerivedMapBatches.Batch013.certificate1057.Valid := DerivedMapBatches.Batch013.certificate1057valid
theorem linkedCommutativity1555 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5243.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1055.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1057.c x := by
  exact (linkedComposition1555 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1555)
theorem firstLink1556 : DerivedMapBatches.Batch013.certificate1058.algebra.mat = DerivedMapBatches.Batch065.certificate5244.a := by decide
theorem secondLink1556 : DerivedMapBatches.Batch013.certificate1059.algebra.mat = DerivedMapBatches.Batch065.certificate5244.b := by decide
theorem firstValid1556 : DerivedMapBatches.Batch013.certificate1058.Valid := DerivedMapBatches.Batch013.certificate1058valid
theorem secondValid1556 : DerivedMapBatches.Batch013.certificate1059.Valid := DerivedMapBatches.Batch013.certificate1059valid
theorem outputValid1556 : DerivedMapBatches.Batch065.certificate5244.Valid := DerivedMapBatches.Batch065.certificate5244valid
theorem linkedComposition1556 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5244.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5244.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1058.algebra.mat x) := by
  rw [firstLink1556, secondLink1556]
  exact DerivedMapBatches.Batch065.certificate5244valid.2 x
theorem rhsLink1556 : DerivedMapBatches.Batch065.certificate5244.c = DerivedMapBatches.Batch013.certificate1060.c := by decide
theorem rhsValid1556 : DerivedMapBatches.Batch013.certificate1060.Valid := DerivedMapBatches.Batch013.certificate1060valid
theorem linkedCommutativity1556 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5244.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1058.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1060.c x := by
  exact (linkedComposition1556 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1556)
theorem firstLink1557 : DerivedMapBatches.Batch013.certificate1061.algebra.mat = DerivedMapBatches.Batch065.certificate5245.a := by decide
theorem secondLink1557 : DerivedMapBatches.Batch013.certificate1062.algebra.mat = DerivedMapBatches.Batch065.certificate5245.b := by decide
theorem firstValid1557 : DerivedMapBatches.Batch013.certificate1061.Valid := DerivedMapBatches.Batch013.certificate1061valid
theorem secondValid1557 : DerivedMapBatches.Batch013.certificate1062.Valid := DerivedMapBatches.Batch013.certificate1062valid
theorem outputValid1557 : DerivedMapBatches.Batch065.certificate5245.Valid := DerivedMapBatches.Batch065.certificate5245valid
theorem linkedComposition1557 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5245.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5245.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1062.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1061.algebra.mat x) := by
  rw [firstLink1557, secondLink1557]
  exact DerivedMapBatches.Batch065.certificate5245valid.2 x
theorem rhsLink1557 : DerivedMapBatches.Batch065.certificate5245.c = DerivedMapBatches.Batch013.certificate1063.c := by decide
theorem rhsValid1557 : DerivedMapBatches.Batch013.certificate1063.Valid := DerivedMapBatches.Batch013.certificate1063valid
theorem linkedCommutativity1557 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5245.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1062.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1061.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1063.c x := by
  exact (linkedComposition1557 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1557)
theorem firstLink1558 : DerivedMapBatches.Batch013.certificate1064.algebra.mat = DerivedMapBatches.Batch065.certificate5246.a := by decide
theorem secondLink1558 : DerivedMapBatches.Batch013.certificate1065.algebra.mat = DerivedMapBatches.Batch065.certificate5246.b := by decide
theorem firstValid1558 : DerivedMapBatches.Batch013.certificate1064.Valid := DerivedMapBatches.Batch013.certificate1064valid
theorem secondValid1558 : DerivedMapBatches.Batch013.certificate1065.Valid := DerivedMapBatches.Batch013.certificate1065valid
theorem outputValid1558 : DerivedMapBatches.Batch065.certificate5246.Valid := DerivedMapBatches.Batch065.certificate5246valid
theorem linkedComposition1558 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5246.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5246.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1065.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1064.algebra.mat x) := by
  rw [firstLink1558, secondLink1558]
  exact DerivedMapBatches.Batch065.certificate5246valid.2 x
theorem rhsLink1558 : DerivedMapBatches.Batch065.certificate5246.c = DerivedMapBatches.Batch013.certificate1066.c := by decide
theorem rhsValid1558 : DerivedMapBatches.Batch013.certificate1066.Valid := DerivedMapBatches.Batch013.certificate1066valid
theorem linkedCommutativity1558 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5246.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1065.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1064.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1066.c x := by
  exact (linkedComposition1558 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1558)
theorem firstLink1559 : DerivedMapBatches.Batch013.certificate1067.algebra.mat = DerivedMapBatches.Batch065.certificate5247.a := by decide
theorem secondLink1559 : DerivedMapBatches.Batch013.certificate1068.algebra.mat = DerivedMapBatches.Batch065.certificate5247.b := by decide
theorem firstValid1559 : DerivedMapBatches.Batch013.certificate1067.Valid := DerivedMapBatches.Batch013.certificate1067valid
theorem secondValid1559 : DerivedMapBatches.Batch013.certificate1068.Valid := DerivedMapBatches.Batch013.certificate1068valid
theorem outputValid1559 : DerivedMapBatches.Batch065.certificate5247.Valid := DerivedMapBatches.Batch065.certificate5247valid
theorem linkedComposition1559 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5247.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5247.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1068.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1067.algebra.mat x) := by
  rw [firstLink1559, secondLink1559]
  exact DerivedMapBatches.Batch065.certificate5247valid.2 x
theorem rhsLink1559 : DerivedMapBatches.Batch065.certificate5247.c = DerivedMapBatches.Batch013.certificate1069.c := by decide
theorem rhsValid1559 : DerivedMapBatches.Batch013.certificate1069.Valid := DerivedMapBatches.Batch013.certificate1069valid
theorem linkedCommutativity1559 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5247.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1068.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1067.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1069.c x := by
  exact (linkedComposition1559 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1559)
theorem firstLink1560 : DerivedMapBatches.Batch013.certificate1070.algebra.mat = DerivedMapBatches.Batch065.certificate5248.a := by decide
theorem secondLink1560 : DerivedMapBatches.Batch013.certificate1071.algebra.mat = DerivedMapBatches.Batch065.certificate5248.b := by decide
theorem firstValid1560 : DerivedMapBatches.Batch013.certificate1070.Valid := DerivedMapBatches.Batch013.certificate1070valid
theorem secondValid1560 : DerivedMapBatches.Batch013.certificate1071.Valid := DerivedMapBatches.Batch013.certificate1071valid
theorem outputValid1560 : DerivedMapBatches.Batch065.certificate5248.Valid := DerivedMapBatches.Batch065.certificate5248valid
theorem linkedComposition1560 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5248.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5248.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1071.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1070.algebra.mat x) := by
  rw [firstLink1560, secondLink1560]
  exact DerivedMapBatches.Batch065.certificate5248valid.2 x
theorem rhsLink1560 : DerivedMapBatches.Batch065.certificate5248.c = DerivedMapBatches.Batch013.certificate1072.c := by decide
theorem rhsValid1560 : DerivedMapBatches.Batch013.certificate1072.Valid := DerivedMapBatches.Batch013.certificate1072valid
theorem linkedCommutativity1560 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5248.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1071.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1070.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1072.c x := by
  exact (linkedComposition1560 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1560)
theorem firstLink1561 : DerivedMapBatches.Batch013.certificate1073.algebra.mat = DerivedMapBatches.Batch065.certificate5249.a := by decide
theorem secondLink1561 : DerivedMapBatches.Batch013.certificate1074.algebra.mat = DerivedMapBatches.Batch065.certificate5249.b := by decide
theorem firstValid1561 : DerivedMapBatches.Batch013.certificate1073.Valid := DerivedMapBatches.Batch013.certificate1073valid
theorem secondValid1561 : DerivedMapBatches.Batch013.certificate1074.Valid := DerivedMapBatches.Batch013.certificate1074valid
theorem outputValid1561 : DerivedMapBatches.Batch065.certificate5249.Valid := DerivedMapBatches.Batch065.certificate5249valid
theorem linkedComposition1561 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5249.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5249.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1073.algebra.mat x) := by
  rw [firstLink1561, secondLink1561]
  exact DerivedMapBatches.Batch065.certificate5249valid.2 x
theorem rhsLink1561 : DerivedMapBatches.Batch065.certificate5249.c = DerivedMapBatches.Batch013.certificate1075.c := by decide
theorem rhsValid1561 : DerivedMapBatches.Batch013.certificate1075.Valid := DerivedMapBatches.Batch013.certificate1075valid
theorem linkedCommutativity1561 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5249.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1073.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1075.c x := by
  exact (linkedComposition1561 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1561)
theorem firstLink1562 : DerivedMapBatches.Batch013.certificate1076.algebra.mat = DerivedMapBatches.Batch065.certificate5250.a := by decide
theorem secondLink1562 : DerivedMapBatches.Batch013.certificate1077.algebra.mat = DerivedMapBatches.Batch065.certificate5250.b := by decide
theorem firstValid1562 : DerivedMapBatches.Batch013.certificate1076.Valid := DerivedMapBatches.Batch013.certificate1076valid
theorem secondValid1562 : DerivedMapBatches.Batch013.certificate1077.Valid := DerivedMapBatches.Batch013.certificate1077valid
theorem outputValid1562 : DerivedMapBatches.Batch065.certificate5250.Valid := DerivedMapBatches.Batch065.certificate5250valid
theorem linkedComposition1562 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5250.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5250.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1077.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1076.algebra.mat x) := by
  rw [firstLink1562, secondLink1562]
  exact DerivedMapBatches.Batch065.certificate5250valid.2 x
theorem rhsLink1562 : DerivedMapBatches.Batch065.certificate5250.c = DerivedMapBatches.Batch013.certificate1078.c := by decide
theorem rhsValid1562 : DerivedMapBatches.Batch013.certificate1078.Valid := DerivedMapBatches.Batch013.certificate1078valid
theorem linkedCommutativity1562 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5250.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1077.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1076.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1078.c x := by
  exact (linkedComposition1562 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1562)
theorem firstLink1563 : DerivedMapBatches.Batch013.certificate1079.algebra.mat = DerivedMapBatches.Batch065.certificate5251.a := by decide
theorem secondLink1563 : DerivedMapBatches.Batch013.certificate1080.algebra.mat = DerivedMapBatches.Batch065.certificate5251.b := by decide
theorem firstValid1563 : DerivedMapBatches.Batch013.certificate1079.Valid := DerivedMapBatches.Batch013.certificate1079valid
theorem secondValid1563 : DerivedMapBatches.Batch013.certificate1080.Valid := DerivedMapBatches.Batch013.certificate1080valid
theorem outputValid1563 : DerivedMapBatches.Batch065.certificate5251.Valid := DerivedMapBatches.Batch065.certificate5251valid
theorem linkedComposition1563 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5251.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5251.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1080.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1079.algebra.mat x) := by
  rw [firstLink1563, secondLink1563]
  exact DerivedMapBatches.Batch065.certificate5251valid.2 x
theorem rhsLink1563 : DerivedMapBatches.Batch065.certificate5251.c = DerivedMapBatches.Batch013.certificate1081.c := by decide
theorem rhsValid1563 : DerivedMapBatches.Batch013.certificate1081.Valid := DerivedMapBatches.Batch013.certificate1081valid
theorem linkedCommutativity1563 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5251.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1080.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1079.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1081.c x := by
  exact (linkedComposition1563 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1563)
theorem firstLink1564 : DerivedMapBatches.Batch013.certificate1082.algebra.mat = DerivedMapBatches.Batch065.certificate5252.a := by decide
theorem secondLink1564 : DerivedMapBatches.Batch013.certificate1083.algebra.mat = DerivedMapBatches.Batch065.certificate5252.b := by decide
theorem firstValid1564 : DerivedMapBatches.Batch013.certificate1082.Valid := DerivedMapBatches.Batch013.certificate1082valid
theorem secondValid1564 : DerivedMapBatches.Batch013.certificate1083.Valid := DerivedMapBatches.Batch013.certificate1083valid
theorem outputValid1564 : DerivedMapBatches.Batch065.certificate5252.Valid := DerivedMapBatches.Batch065.certificate5252valid
theorem linkedComposition1564 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5252.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5252.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1082.algebra.mat x) := by
  rw [firstLink1564, secondLink1564]
  exact DerivedMapBatches.Batch065.certificate5252valid.2 x
theorem rhsLink1564 : DerivedMapBatches.Batch065.certificate5252.c = DerivedMapBatches.Batch013.certificate1084.c := by decide
theorem rhsValid1564 : DerivedMapBatches.Batch013.certificate1084.Valid := DerivedMapBatches.Batch013.certificate1084valid
theorem linkedCommutativity1564 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5252.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1082.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1084.c x := by
  exact (linkedComposition1564 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1564)
theorem firstLink1565 : DerivedMapBatches.Batch013.certificate1085.algebra.mat = DerivedMapBatches.Batch065.certificate5253.a := by decide
theorem secondLink1565 : DerivedMapBatches.Batch013.certificate1086.algebra.mat = DerivedMapBatches.Batch065.certificate5253.b := by decide
theorem firstValid1565 : DerivedMapBatches.Batch013.certificate1085.Valid := DerivedMapBatches.Batch013.certificate1085valid
theorem secondValid1565 : DerivedMapBatches.Batch013.certificate1086.Valid := DerivedMapBatches.Batch013.certificate1086valid
theorem outputValid1565 : DerivedMapBatches.Batch065.certificate5253.Valid := DerivedMapBatches.Batch065.certificate5253valid
theorem linkedComposition1565 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5253.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5253.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1086.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1085.algebra.mat x) := by
  rw [firstLink1565, secondLink1565]
  exact DerivedMapBatches.Batch065.certificate5253valid.2 x
theorem rhsLink1565 : DerivedMapBatches.Batch065.certificate5253.c = DerivedMapBatches.Batch013.certificate1087.c := by decide
theorem rhsValid1565 : DerivedMapBatches.Batch013.certificate1087.Valid := DerivedMapBatches.Batch013.certificate1087valid
theorem linkedCommutativity1565 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5253.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1086.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1085.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1087.c x := by
  exact (linkedComposition1565 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1565)
theorem firstLink1566 : DerivedMapBatches.Batch013.certificate1088.algebra.mat = DerivedMapBatches.Batch065.certificate5254.a := by decide
theorem secondLink1566 : DerivedMapBatches.Batch013.certificate1089.algebra.mat = DerivedMapBatches.Batch065.certificate5254.b := by decide
theorem firstValid1566 : DerivedMapBatches.Batch013.certificate1088.Valid := DerivedMapBatches.Batch013.certificate1088valid
theorem secondValid1566 : DerivedMapBatches.Batch013.certificate1089.Valid := DerivedMapBatches.Batch013.certificate1089valid
theorem outputValid1566 : DerivedMapBatches.Batch065.certificate5254.Valid := DerivedMapBatches.Batch065.certificate5254valid
theorem linkedComposition1566 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5254.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5254.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1089.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1088.algebra.mat x) := by
  rw [firstLink1566, secondLink1566]
  exact DerivedMapBatches.Batch065.certificate5254valid.2 x
theorem rhsLink1566 : DerivedMapBatches.Batch065.certificate5254.c = DerivedMapBatches.Batch013.certificate1090.c := by decide
theorem rhsValid1566 : DerivedMapBatches.Batch013.certificate1090.Valid := DerivedMapBatches.Batch013.certificate1090valid
theorem linkedCommutativity1566 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5254.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1089.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1088.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1090.c x := by
  exact (linkedComposition1566 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1566)
theorem firstLink1567 : DerivedMapBatches.Batch013.certificate1091.algebra.mat = DerivedMapBatches.Batch065.certificate5255.a := by decide
theorem secondLink1567 : DerivedMapBatches.Batch013.certificate1092.algebra.mat = DerivedMapBatches.Batch065.certificate5255.b := by decide
theorem firstValid1567 : DerivedMapBatches.Batch013.certificate1091.Valid := DerivedMapBatches.Batch013.certificate1091valid
theorem secondValid1567 : DerivedMapBatches.Batch013.certificate1092.Valid := DerivedMapBatches.Batch013.certificate1092valid
theorem outputValid1567 : DerivedMapBatches.Batch065.certificate5255.Valid := DerivedMapBatches.Batch065.certificate5255valid
theorem linkedComposition1567 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5255.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5255.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1091.algebra.mat x) := by
  rw [firstLink1567, secondLink1567]
  exact DerivedMapBatches.Batch065.certificate5255valid.2 x
theorem rhsLink1567 : DerivedMapBatches.Batch065.certificate5255.c = DerivedMapBatches.Batch013.certificate1093.c := by decide
theorem rhsValid1567 : DerivedMapBatches.Batch013.certificate1093.Valid := DerivedMapBatches.Batch013.certificate1093valid
theorem linkedCommutativity1567 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5255.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1091.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1093.c x := by
  exact (linkedComposition1567 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1567)
theorem firstLink1568 : DerivedMapBatches.Batch013.certificate1094.algebra.mat = DerivedMapBatches.Batch065.certificate5256.a := by decide
theorem secondLink1568 : DerivedMapBatches.Batch013.certificate1095.algebra.mat = DerivedMapBatches.Batch065.certificate5256.b := by decide
theorem firstValid1568 : DerivedMapBatches.Batch013.certificate1094.Valid := DerivedMapBatches.Batch013.certificate1094valid
theorem secondValid1568 : DerivedMapBatches.Batch013.certificate1095.Valid := DerivedMapBatches.Batch013.certificate1095valid
theorem outputValid1568 : DerivedMapBatches.Batch065.certificate5256.Valid := DerivedMapBatches.Batch065.certificate5256valid
theorem linkedComposition1568 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5256.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5256.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1095.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1094.algebra.mat x) := by
  rw [firstLink1568, secondLink1568]
  exact DerivedMapBatches.Batch065.certificate5256valid.2 x
theorem rhsLink1568 : DerivedMapBatches.Batch065.certificate5256.c = DerivedMapBatches.Batch013.certificate1096.c := by decide
theorem rhsValid1568 : DerivedMapBatches.Batch013.certificate1096.Valid := DerivedMapBatches.Batch013.certificate1096valid
theorem linkedCommutativity1568 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5256.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1095.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1094.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1096.c x := by
  exact (linkedComposition1568 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1568)
theorem firstLink1569 : DerivedMapBatches.Batch013.certificate1097.algebra.mat = DerivedMapBatches.Batch065.certificate5257.a := by decide
theorem secondLink1569 : DerivedMapBatches.Batch013.certificate1098.algebra.mat = DerivedMapBatches.Batch065.certificate5257.b := by decide
theorem firstValid1569 : DerivedMapBatches.Batch013.certificate1097.Valid := DerivedMapBatches.Batch013.certificate1097valid
theorem secondValid1569 : DerivedMapBatches.Batch013.certificate1098.Valid := DerivedMapBatches.Batch013.certificate1098valid
theorem outputValid1569 : DerivedMapBatches.Batch065.certificate5257.Valid := DerivedMapBatches.Batch065.certificate5257valid
theorem linkedComposition1569 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5257.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5257.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1097.algebra.mat x) := by
  rw [firstLink1569, secondLink1569]
  exact DerivedMapBatches.Batch065.certificate5257valid.2 x
theorem rhsLink1569 : DerivedMapBatches.Batch065.certificate5257.c = DerivedMapBatches.Batch013.certificate1099.c := by decide
theorem rhsValid1569 : DerivedMapBatches.Batch013.certificate1099.Valid := DerivedMapBatches.Batch013.certificate1099valid
theorem linkedCommutativity1569 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5257.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1097.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1099.c x := by
  exact (linkedComposition1569 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1569)
theorem firstLink1570 : DerivedMapBatches.Batch013.certificate1100.algebra.mat = DerivedMapBatches.Batch065.certificate5258.a := by decide
theorem secondLink1570 : DerivedMapBatches.Batch013.certificate1101.algebra.mat = DerivedMapBatches.Batch065.certificate5258.b := by decide
theorem firstValid1570 : DerivedMapBatches.Batch013.certificate1100.Valid := DerivedMapBatches.Batch013.certificate1100valid
theorem secondValid1570 : DerivedMapBatches.Batch013.certificate1101.Valid := DerivedMapBatches.Batch013.certificate1101valid
theorem outputValid1570 : DerivedMapBatches.Batch065.certificate5258.Valid := DerivedMapBatches.Batch065.certificate5258valid
theorem linkedComposition1570 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5258.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5258.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1101.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1100.algebra.mat x) := by
  rw [firstLink1570, secondLink1570]
  exact DerivedMapBatches.Batch065.certificate5258valid.2 x
theorem rhsLink1570 : DerivedMapBatches.Batch065.certificate5258.c = DerivedMapBatches.Batch013.certificate1102.c := by decide
theorem rhsValid1570 : DerivedMapBatches.Batch013.certificate1102.Valid := DerivedMapBatches.Batch013.certificate1102valid
theorem linkedCommutativity1570 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5258.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1101.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1100.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1102.c x := by
  exact (linkedComposition1570 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1570)
theorem firstLink1571 : DerivedMapBatches.Batch013.certificate1103.algebra.mat = DerivedMapBatches.Batch065.certificate5259.a := by decide
theorem secondLink1571 : DerivedMapBatches.Batch013.certificate1104.algebra.mat = DerivedMapBatches.Batch065.certificate5259.b := by decide
theorem firstValid1571 : DerivedMapBatches.Batch013.certificate1103.Valid := DerivedMapBatches.Batch013.certificate1103valid
theorem secondValid1571 : DerivedMapBatches.Batch013.certificate1104.Valid := DerivedMapBatches.Batch013.certificate1104valid
theorem outputValid1571 : DerivedMapBatches.Batch065.certificate5259.Valid := DerivedMapBatches.Batch065.certificate5259valid
theorem linkedComposition1571 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5259.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5259.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1103.algebra.mat x) := by
  rw [firstLink1571, secondLink1571]
  exact DerivedMapBatches.Batch065.certificate5259valid.2 x
theorem rhsLink1571 : DerivedMapBatches.Batch065.certificate5259.c = DerivedMapBatches.Batch013.certificate1105.c := by decide
theorem rhsValid1571 : DerivedMapBatches.Batch013.certificate1105.Valid := DerivedMapBatches.Batch013.certificate1105valid
theorem linkedCommutativity1571 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5259.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1103.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1105.c x := by
  exact (linkedComposition1571 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1571)
theorem firstLink1572 : DerivedMapBatches.Batch013.certificate1106.algebra.mat = DerivedMapBatches.Batch065.certificate5260.a := by decide
theorem secondLink1572 : DerivedMapBatches.Batch013.certificate1107.algebra.mat = DerivedMapBatches.Batch065.certificate5260.b := by decide
theorem firstValid1572 : DerivedMapBatches.Batch013.certificate1106.Valid := DerivedMapBatches.Batch013.certificate1106valid
theorem secondValid1572 : DerivedMapBatches.Batch013.certificate1107.Valid := DerivedMapBatches.Batch013.certificate1107valid
theorem outputValid1572 : DerivedMapBatches.Batch065.certificate5260.Valid := DerivedMapBatches.Batch065.certificate5260valid
theorem linkedComposition1572 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5260.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5260.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1107.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1106.algebra.mat x) := by
  rw [firstLink1572, secondLink1572]
  exact DerivedMapBatches.Batch065.certificate5260valid.2 x
theorem rhsLink1572 : DerivedMapBatches.Batch065.certificate5260.c = DerivedMapBatches.Batch013.certificate1108.c := by decide
theorem rhsValid1572 : DerivedMapBatches.Batch013.certificate1108.Valid := DerivedMapBatches.Batch013.certificate1108valid
theorem linkedCommutativity1572 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5260.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1107.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1106.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1108.c x := by
  exact (linkedComposition1572 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1572)
theorem firstLink1573 : DerivedMapBatches.Batch013.certificate1109.algebra.mat = DerivedMapBatches.Batch065.certificate5261.a := by decide
theorem secondLink1573 : DerivedMapBatches.Batch013.certificate1110.algebra.mat = DerivedMapBatches.Batch065.certificate5261.b := by decide
theorem firstValid1573 : DerivedMapBatches.Batch013.certificate1109.Valid := DerivedMapBatches.Batch013.certificate1109valid
theorem secondValid1573 : DerivedMapBatches.Batch013.certificate1110.Valid := DerivedMapBatches.Batch013.certificate1110valid
theorem outputValid1573 : DerivedMapBatches.Batch065.certificate5261.Valid := DerivedMapBatches.Batch065.certificate5261valid
theorem linkedComposition1573 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5261.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5261.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1109.algebra.mat x) := by
  rw [firstLink1573, secondLink1573]
  exact DerivedMapBatches.Batch065.certificate5261valid.2 x
theorem rhsLink1573 : DerivedMapBatches.Batch065.certificate5261.c = DerivedMapBatches.Batch013.certificate1111.c := by decide
theorem rhsValid1573 : DerivedMapBatches.Batch013.certificate1111.Valid := DerivedMapBatches.Batch013.certificate1111valid
theorem linkedCommutativity1573 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5261.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1109.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1111.c x := by
  exact (linkedComposition1573 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1573)
theorem firstLink1574 : DerivedMapBatches.Batch013.certificate1112.algebra.mat = DerivedMapBatches.Batch065.certificate5262.a := by decide
theorem secondLink1574 : DerivedMapBatches.Batch013.certificate1113.algebra.mat = DerivedMapBatches.Batch065.certificate5262.b := by decide
theorem firstValid1574 : DerivedMapBatches.Batch013.certificate1112.Valid := DerivedMapBatches.Batch013.certificate1112valid
theorem secondValid1574 : DerivedMapBatches.Batch013.certificate1113.Valid := DerivedMapBatches.Batch013.certificate1113valid
theorem outputValid1574 : DerivedMapBatches.Batch065.certificate5262.Valid := DerivedMapBatches.Batch065.certificate5262valid
theorem linkedComposition1574 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5262.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5262.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1113.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1112.algebra.mat x) := by
  rw [firstLink1574, secondLink1574]
  exact DerivedMapBatches.Batch065.certificate5262valid.2 x
theorem rhsLink1574 : DerivedMapBatches.Batch065.certificate5262.c = DerivedMapBatches.Batch013.certificate1114.c := by decide
theorem rhsValid1574 : DerivedMapBatches.Batch013.certificate1114.Valid := DerivedMapBatches.Batch013.certificate1114valid
theorem linkedCommutativity1574 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5262.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1113.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1112.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1114.c x := by
  exact (linkedComposition1574 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1574)
theorem firstLink1575 : DerivedMapBatches.Batch013.certificate1115.algebra.mat = DerivedMapBatches.Batch065.certificate5263.a := by decide
theorem secondLink1575 : DerivedMapBatches.Batch013.certificate1116.algebra.mat = DerivedMapBatches.Batch065.certificate5263.b := by decide
theorem firstValid1575 : DerivedMapBatches.Batch013.certificate1115.Valid := DerivedMapBatches.Batch013.certificate1115valid
theorem secondValid1575 : DerivedMapBatches.Batch013.certificate1116.Valid := DerivedMapBatches.Batch013.certificate1116valid
theorem outputValid1575 : DerivedMapBatches.Batch065.certificate5263.Valid := DerivedMapBatches.Batch065.certificate5263valid
theorem linkedComposition1575 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5263.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5263.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1116.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1115.algebra.mat x) := by
  rw [firstLink1575, secondLink1575]
  exact DerivedMapBatches.Batch065.certificate5263valid.2 x
theorem rhsLink1575 : DerivedMapBatches.Batch065.certificate5263.c = DerivedMapBatches.Batch013.certificate1117.c := by decide
theorem rhsValid1575 : DerivedMapBatches.Batch013.certificate1117.Valid := DerivedMapBatches.Batch013.certificate1117valid
theorem linkedCommutativity1575 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5263.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1116.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1115.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1117.c x := by
  exact (linkedComposition1575 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1575)
theorem firstLink1576 : DerivedMapBatches.Batch013.certificate1118.algebra.mat = DerivedMapBatches.Batch065.certificate5264.a := by decide
theorem secondLink1576 : DerivedMapBatches.Batch013.certificate1119.algebra.mat = DerivedMapBatches.Batch065.certificate5264.b := by decide
theorem firstValid1576 : DerivedMapBatches.Batch013.certificate1118.Valid := DerivedMapBatches.Batch013.certificate1118valid
theorem secondValid1576 : DerivedMapBatches.Batch013.certificate1119.Valid := DerivedMapBatches.Batch013.certificate1119valid
theorem outputValid1576 : DerivedMapBatches.Batch065.certificate5264.Valid := DerivedMapBatches.Batch065.certificate5264valid
theorem linkedComposition1576 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5264.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5264.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1118.algebra.mat x) := by
  rw [firstLink1576, secondLink1576]
  exact DerivedMapBatches.Batch065.certificate5264valid.2 x
theorem rhsLink1576 : DerivedMapBatches.Batch065.certificate5264.c = DerivedMapBatches.Batch014.certificate1120.c := by decide
theorem rhsValid1576 : DerivedMapBatches.Batch014.certificate1120.Valid := DerivedMapBatches.Batch014.certificate1120valid
theorem linkedCommutativity1576 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5264.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1118.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1120.c x := by
  exact (linkedComposition1576 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1576)
theorem firstLink1577 : DerivedMapBatches.Batch014.certificate1121.algebra.mat = DerivedMapBatches.Batch065.certificate5265.a := by decide
theorem secondLink1577 : DerivedMapBatches.Batch014.certificate1122.algebra.mat = DerivedMapBatches.Batch065.certificate5265.b := by decide
theorem firstValid1577 : DerivedMapBatches.Batch014.certificate1121.Valid := DerivedMapBatches.Batch014.certificate1121valid
theorem secondValid1577 : DerivedMapBatches.Batch014.certificate1122.Valid := DerivedMapBatches.Batch014.certificate1122valid
theorem outputValid1577 : DerivedMapBatches.Batch065.certificate5265.Valid := DerivedMapBatches.Batch065.certificate5265valid
theorem linkedComposition1577 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5265.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5265.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1122.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1121.algebra.mat x) := by
  rw [firstLink1577, secondLink1577]
  exact DerivedMapBatches.Batch065.certificate5265valid.2 x
theorem rhsLink1577 : DerivedMapBatches.Batch065.certificate5265.c = DerivedMapBatches.Batch014.certificate1123.c := by decide
theorem rhsValid1577 : DerivedMapBatches.Batch014.certificate1123.Valid := DerivedMapBatches.Batch014.certificate1123valid
theorem linkedCommutativity1577 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5265.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1122.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1121.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1123.c x := by
  exact (linkedComposition1577 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1577)
theorem firstLink1578 : DerivedMapBatches.Batch013.certificate1048.c = DerivedMapBatches.Batch065.certificate5266.a := by decide
theorem secondLink1578 : DerivedMapBatches.Batch014.certificate1124.algebra.mat = DerivedMapBatches.Batch065.certificate5266.b := by decide
theorem firstValid1578 : DerivedMapBatches.Batch013.certificate1048.Valid := DerivedMapBatches.Batch013.certificate1048valid
theorem secondValid1578 : DerivedMapBatches.Batch014.certificate1124.Valid := DerivedMapBatches.Batch014.certificate1124valid
theorem outputValid1578 : DerivedMapBatches.Batch065.certificate5266.Valid := DerivedMapBatches.Batch065.certificate5266valid
theorem linkedComposition1578 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5266.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5266.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1124.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1048.c x) := by
  rw [firstLink1578, secondLink1578]
  exact DerivedMapBatches.Batch065.certificate5266valid.2 x
theorem rhsLink1578 : DerivedMapBatches.Batch065.certificate5266.c = DerivedMapBatches.Batch014.certificate1125.c := by decide
theorem rhsValid1578 : DerivedMapBatches.Batch014.certificate1125.Valid := DerivedMapBatches.Batch014.certificate1125valid
theorem linkedCommutativity1578 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5266.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1124.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1048.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1125.c x := by
  exact (linkedComposition1578 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1578)
theorem firstLink1579 : DerivedMapBatches.Batch013.certificate1051.c = DerivedMapBatches.Batch065.certificate5267.a := by decide
theorem secondLink1579 : DerivedMapBatches.Batch014.certificate1126.algebra.mat = DerivedMapBatches.Batch065.certificate5267.b := by decide
theorem firstValid1579 : DerivedMapBatches.Batch013.certificate1051.Valid := DerivedMapBatches.Batch013.certificate1051valid
theorem secondValid1579 : DerivedMapBatches.Batch014.certificate1126.Valid := DerivedMapBatches.Batch014.certificate1126valid
theorem outputValid1579 : DerivedMapBatches.Batch065.certificate5267.Valid := DerivedMapBatches.Batch065.certificate5267valid
theorem linkedComposition1579 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5267.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5267.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1126.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1051.c x) := by
  rw [firstLink1579, secondLink1579]
  exact DerivedMapBatches.Batch065.certificate5267valid.2 x
theorem rhsLink1579 : DerivedMapBatches.Batch065.certificate5267.c = DerivedMapBatches.Batch014.certificate1127.c := by decide
theorem rhsValid1579 : DerivedMapBatches.Batch014.certificate1127.Valid := DerivedMapBatches.Batch014.certificate1127valid
theorem linkedCommutativity1579 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5267.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1126.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1051.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1127.c x := by
  exact (linkedComposition1579 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1579)
theorem firstLink1580 : DerivedMapBatches.Batch013.certificate1054.c = DerivedMapBatches.Batch065.certificate5268.a := by decide
theorem secondLink1580 : DerivedMapBatches.Batch014.certificate1128.algebra.mat = DerivedMapBatches.Batch065.certificate5268.b := by decide
theorem firstValid1580 : DerivedMapBatches.Batch013.certificate1054.Valid := DerivedMapBatches.Batch013.certificate1054valid
theorem secondValid1580 : DerivedMapBatches.Batch014.certificate1128.Valid := DerivedMapBatches.Batch014.certificate1128valid
theorem outputValid1580 : DerivedMapBatches.Batch065.certificate5268.Valid := DerivedMapBatches.Batch065.certificate5268valid
theorem linkedComposition1580 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5268.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5268.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1128.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1054.c x) := by
  rw [firstLink1580, secondLink1580]
  exact DerivedMapBatches.Batch065.certificate5268valid.2 x
theorem rhsLink1580 : DerivedMapBatches.Batch065.certificate5268.c = DerivedMapBatches.Batch014.certificate1129.c := by decide
theorem rhsValid1580 : DerivedMapBatches.Batch014.certificate1129.Valid := DerivedMapBatches.Batch014.certificate1129valid
theorem linkedCommutativity1580 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5268.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1128.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1054.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1129.c x := by
  exact (linkedComposition1580 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1580)
theorem firstLink1581 : DerivedMapBatches.Batch013.certificate1057.c = DerivedMapBatches.Batch065.certificate5269.a := by decide
theorem secondLink1581 : DerivedMapBatches.Batch014.certificate1130.algebra.mat = DerivedMapBatches.Batch065.certificate5269.b := by decide
theorem firstValid1581 : DerivedMapBatches.Batch013.certificate1057.Valid := DerivedMapBatches.Batch013.certificate1057valid
theorem secondValid1581 : DerivedMapBatches.Batch014.certificate1130.Valid := DerivedMapBatches.Batch014.certificate1130valid
theorem outputValid1581 : DerivedMapBatches.Batch065.certificate5269.Valid := DerivedMapBatches.Batch065.certificate5269valid
theorem linkedComposition1581 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5269.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5269.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1057.c x) := by
  rw [firstLink1581, secondLink1581]
  exact DerivedMapBatches.Batch065.certificate5269valid.2 x
theorem rhsLink1581 : DerivedMapBatches.Batch065.certificate5269.c = DerivedMapBatches.Batch014.certificate1131.c := by decide
theorem rhsValid1581 : DerivedMapBatches.Batch014.certificate1131.Valid := DerivedMapBatches.Batch014.certificate1131valid
theorem linkedCommutativity1581 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5269.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1057.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1131.c x := by
  exact (linkedComposition1581 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1581)
theorem firstLink1582 : DerivedMapBatches.Batch013.certificate1060.c = DerivedMapBatches.Batch065.certificate5270.a := by decide
theorem secondLink1582 : DerivedMapBatches.Batch014.certificate1132.algebra.mat = DerivedMapBatches.Batch065.certificate5270.b := by decide
theorem firstValid1582 : DerivedMapBatches.Batch013.certificate1060.Valid := DerivedMapBatches.Batch013.certificate1060valid
theorem secondValid1582 : DerivedMapBatches.Batch014.certificate1132.Valid := DerivedMapBatches.Batch014.certificate1132valid
theorem outputValid1582 : DerivedMapBatches.Batch065.certificate5270.Valid := DerivedMapBatches.Batch065.certificate5270valid
theorem linkedComposition1582 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5270.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5270.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1060.c x) := by
  rw [firstLink1582, secondLink1582]
  exact DerivedMapBatches.Batch065.certificate5270valid.2 x
theorem rhsLink1582 : DerivedMapBatches.Batch065.certificate5270.c = DerivedMapBatches.Batch014.certificate1133.c := by decide
theorem rhsValid1582 : DerivedMapBatches.Batch014.certificate1133.Valid := DerivedMapBatches.Batch014.certificate1133valid
theorem linkedCommutativity1582 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5270.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1132.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1060.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1133.c x := by
  exact (linkedComposition1582 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1582)
theorem firstLink1583 : DerivedMapBatches.Batch013.certificate1063.c = DerivedMapBatches.Batch065.certificate5271.a := by decide
theorem secondLink1583 : DerivedMapBatches.Batch014.certificate1134.algebra.mat = DerivedMapBatches.Batch065.certificate5271.b := by decide
theorem firstValid1583 : DerivedMapBatches.Batch013.certificate1063.Valid := DerivedMapBatches.Batch013.certificate1063valid
theorem secondValid1583 : DerivedMapBatches.Batch014.certificate1134.Valid := DerivedMapBatches.Batch014.certificate1134valid
theorem outputValid1583 : DerivedMapBatches.Batch065.certificate5271.Valid := DerivedMapBatches.Batch065.certificate5271valid
theorem linkedComposition1583 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5271.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5271.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1134.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1063.c x) := by
  rw [firstLink1583, secondLink1583]
  exact DerivedMapBatches.Batch065.certificate5271valid.2 x
theorem rhsLink1583 : DerivedMapBatches.Batch065.certificate5271.c = DerivedMapBatches.Batch014.certificate1135.c := by decide
theorem rhsValid1583 : DerivedMapBatches.Batch014.certificate1135.Valid := DerivedMapBatches.Batch014.certificate1135valid
theorem linkedCommutativity1583 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5271.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1134.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1063.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1135.c x := by
  exact (linkedComposition1583 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1583)
theorem firstLink1584 : DerivedMapBatches.Batch013.certificate1066.c = DerivedMapBatches.Batch065.certificate5272.a := by decide
theorem secondLink1584 : DerivedMapBatches.Batch014.certificate1136.algebra.mat = DerivedMapBatches.Batch065.certificate5272.b := by decide
theorem firstValid1584 : DerivedMapBatches.Batch013.certificate1066.Valid := DerivedMapBatches.Batch013.certificate1066valid
theorem secondValid1584 : DerivedMapBatches.Batch014.certificate1136.Valid := DerivedMapBatches.Batch014.certificate1136valid
theorem outputValid1584 : DerivedMapBatches.Batch065.certificate5272.Valid := DerivedMapBatches.Batch065.certificate5272valid
theorem linkedComposition1584 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5272.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5272.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1136.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1066.c x) := by
  rw [firstLink1584, secondLink1584]
  exact DerivedMapBatches.Batch065.certificate5272valid.2 x
theorem rhsLink1584 : DerivedMapBatches.Batch065.certificate5272.c = DerivedMapBatches.Batch014.certificate1137.c := by decide
theorem rhsValid1584 : DerivedMapBatches.Batch014.certificate1137.Valid := DerivedMapBatches.Batch014.certificate1137valid
theorem linkedCommutativity1584 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5272.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1136.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1066.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1137.c x := by
  exact (linkedComposition1584 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1584)
theorem firstLink1585 : DerivedMapBatches.Batch013.certificate1069.c = DerivedMapBatches.Batch065.certificate5273.a := by decide
theorem secondLink1585 : DerivedMapBatches.Batch014.certificate1138.algebra.mat = DerivedMapBatches.Batch065.certificate5273.b := by decide
theorem firstValid1585 : DerivedMapBatches.Batch013.certificate1069.Valid := DerivedMapBatches.Batch013.certificate1069valid
theorem secondValid1585 : DerivedMapBatches.Batch014.certificate1138.Valid := DerivedMapBatches.Batch014.certificate1138valid
theorem outputValid1585 : DerivedMapBatches.Batch065.certificate5273.Valid := DerivedMapBatches.Batch065.certificate5273valid
theorem linkedComposition1585 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5273.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5273.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1138.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1069.c x) := by
  rw [firstLink1585, secondLink1585]
  exact DerivedMapBatches.Batch065.certificate5273valid.2 x
theorem rhsLink1585 : DerivedMapBatches.Batch065.certificate5273.c = DerivedMapBatches.Batch014.certificate1139.c := by decide
theorem rhsValid1585 : DerivedMapBatches.Batch014.certificate1139.Valid := DerivedMapBatches.Batch014.certificate1139valid
theorem linkedCommutativity1585 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5273.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1138.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1069.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1139.c x := by
  exact (linkedComposition1585 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1585)
theorem firstLink1586 : DerivedMapBatches.Batch013.certificate1072.c = DerivedMapBatches.Batch065.certificate5274.a := by decide
theorem secondLink1586 : DerivedMapBatches.Batch014.certificate1140.algebra.mat = DerivedMapBatches.Batch065.certificate5274.b := by decide
theorem firstValid1586 : DerivedMapBatches.Batch013.certificate1072.Valid := DerivedMapBatches.Batch013.certificate1072valid
theorem secondValid1586 : DerivedMapBatches.Batch014.certificate1140.Valid := DerivedMapBatches.Batch014.certificate1140valid
theorem outputValid1586 : DerivedMapBatches.Batch065.certificate5274.Valid := DerivedMapBatches.Batch065.certificate5274valid
theorem linkedComposition1586 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5274.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5274.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1072.c x) := by
  rw [firstLink1586, secondLink1586]
  exact DerivedMapBatches.Batch065.certificate5274valid.2 x
theorem rhsLink1586 : DerivedMapBatches.Batch065.certificate5274.c = DerivedMapBatches.Batch014.certificate1141.c := by decide
theorem rhsValid1586 : DerivedMapBatches.Batch014.certificate1141.Valid := DerivedMapBatches.Batch014.certificate1141valid
theorem linkedCommutativity1586 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5274.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1072.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1141.c x := by
  exact (linkedComposition1586 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1586)
theorem firstLink1587 : DerivedMapBatches.Batch013.certificate1075.c = DerivedMapBatches.Batch065.certificate5275.a := by decide
theorem secondLink1587 : DerivedMapBatches.Batch014.certificate1142.algebra.mat = DerivedMapBatches.Batch065.certificate5275.b := by decide
theorem firstValid1587 : DerivedMapBatches.Batch013.certificate1075.Valid := DerivedMapBatches.Batch013.certificate1075valid
theorem secondValid1587 : DerivedMapBatches.Batch014.certificate1142.Valid := DerivedMapBatches.Batch014.certificate1142valid
theorem outputValid1587 : DerivedMapBatches.Batch065.certificate5275.Valid := DerivedMapBatches.Batch065.certificate5275valid
theorem linkedComposition1587 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5275.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5275.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1075.c x) := by
  rw [firstLink1587, secondLink1587]
  exact DerivedMapBatches.Batch065.certificate5275valid.2 x
theorem rhsLink1587 : DerivedMapBatches.Batch065.certificate5275.c = DerivedMapBatches.Batch014.certificate1143.c := by decide
theorem rhsValid1587 : DerivedMapBatches.Batch014.certificate1143.Valid := DerivedMapBatches.Batch014.certificate1143valid
theorem linkedCommutativity1587 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5275.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1075.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1143.c x := by
  exact (linkedComposition1587 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1587)
theorem firstLink1588 : DerivedMapBatches.Batch013.certificate1078.c = DerivedMapBatches.Batch065.certificate5276.a := by decide
theorem secondLink1588 : DerivedMapBatches.Batch014.certificate1144.algebra.mat = DerivedMapBatches.Batch065.certificate5276.b := by decide
theorem firstValid1588 : DerivedMapBatches.Batch013.certificate1078.Valid := DerivedMapBatches.Batch013.certificate1078valid
theorem secondValid1588 : DerivedMapBatches.Batch014.certificate1144.Valid := DerivedMapBatches.Batch014.certificate1144valid
theorem outputValid1588 : DerivedMapBatches.Batch065.certificate5276.Valid := DerivedMapBatches.Batch065.certificate5276valid
theorem linkedComposition1588 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5276.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5276.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1144.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1078.c x) := by
  rw [firstLink1588, secondLink1588]
  exact DerivedMapBatches.Batch065.certificate5276valid.2 x
theorem rhsLink1588 : DerivedMapBatches.Batch065.certificate5276.c = DerivedMapBatches.Batch014.certificate1145.c := by decide
theorem rhsValid1588 : DerivedMapBatches.Batch014.certificate1145.Valid := DerivedMapBatches.Batch014.certificate1145valid
theorem linkedCommutativity1588 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5276.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1144.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1078.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1145.c x := by
  exact (linkedComposition1588 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1588)
theorem firstLink1589 : DerivedMapBatches.Batch013.certificate1081.c = DerivedMapBatches.Batch065.certificate5277.a := by decide
theorem secondLink1589 : DerivedMapBatches.Batch014.certificate1146.algebra.mat = DerivedMapBatches.Batch065.certificate5277.b := by decide
theorem firstValid1589 : DerivedMapBatches.Batch013.certificate1081.Valid := DerivedMapBatches.Batch013.certificate1081valid
theorem secondValid1589 : DerivedMapBatches.Batch014.certificate1146.Valid := DerivedMapBatches.Batch014.certificate1146valid
theorem outputValid1589 : DerivedMapBatches.Batch065.certificate5277.Valid := DerivedMapBatches.Batch065.certificate5277valid
theorem linkedComposition1589 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5277.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5277.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1146.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1081.c x) := by
  rw [firstLink1589, secondLink1589]
  exact DerivedMapBatches.Batch065.certificate5277valid.2 x
theorem rhsLink1589 : DerivedMapBatches.Batch065.certificate5277.c = DerivedMapBatches.Batch014.certificate1147.c := by decide
theorem rhsValid1589 : DerivedMapBatches.Batch014.certificate1147.Valid := DerivedMapBatches.Batch014.certificate1147valid
theorem linkedCommutativity1589 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5277.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1146.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1081.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1147.c x := by
  exact (linkedComposition1589 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1589)
theorem firstLink1590 : DerivedMapBatches.Batch013.certificate1084.c = DerivedMapBatches.Batch065.certificate5278.a := by decide
theorem secondLink1590 : DerivedMapBatches.Batch014.certificate1148.algebra.mat = DerivedMapBatches.Batch065.certificate5278.b := by decide
theorem firstValid1590 : DerivedMapBatches.Batch013.certificate1084.Valid := DerivedMapBatches.Batch013.certificate1084valid
theorem secondValid1590 : DerivedMapBatches.Batch014.certificate1148.Valid := DerivedMapBatches.Batch014.certificate1148valid
theorem outputValid1590 : DerivedMapBatches.Batch065.certificate5278.Valid := DerivedMapBatches.Batch065.certificate5278valid
theorem linkedComposition1590 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5278.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5278.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1084.c x) := by
  rw [firstLink1590, secondLink1590]
  exact DerivedMapBatches.Batch065.certificate5278valid.2 x
theorem rhsLink1590 : DerivedMapBatches.Batch065.certificate5278.c = DerivedMapBatches.Batch014.certificate1149.c := by decide
theorem rhsValid1590 : DerivedMapBatches.Batch014.certificate1149.Valid := DerivedMapBatches.Batch014.certificate1149valid
theorem linkedCommutativity1590 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5278.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1084.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1149.c x := by
  exact (linkedComposition1590 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1590)
theorem firstLink1591 : DerivedMapBatches.Batch013.certificate1087.c = DerivedMapBatches.Batch065.certificate5279.a := by decide
theorem secondLink1591 : DerivedMapBatches.Batch014.certificate1150.algebra.mat = DerivedMapBatches.Batch065.certificate5279.b := by decide
theorem firstValid1591 : DerivedMapBatches.Batch013.certificate1087.Valid := DerivedMapBatches.Batch013.certificate1087valid
theorem secondValid1591 : DerivedMapBatches.Batch014.certificate1150.Valid := DerivedMapBatches.Batch014.certificate1150valid
theorem outputValid1591 : DerivedMapBatches.Batch065.certificate5279.Valid := DerivedMapBatches.Batch065.certificate5279valid
theorem linkedComposition1591 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5279.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5279.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1150.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1087.c x) := by
  rw [firstLink1591, secondLink1591]
  exact DerivedMapBatches.Batch065.certificate5279valid.2 x
theorem rhsLink1591 : DerivedMapBatches.Batch065.certificate5279.c = DerivedMapBatches.Batch014.certificate1151.c := by decide
theorem rhsValid1591 : DerivedMapBatches.Batch014.certificate1151.Valid := DerivedMapBatches.Batch014.certificate1151valid
theorem linkedCommutativity1591 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5279.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1150.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1087.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1151.c x := by
  exact (linkedComposition1591 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1591)
theorem firstLink1592 : DerivedMapBatches.Batch013.certificate1090.c = DerivedMapBatches.Batch066.certificate5280.a := by decide
theorem secondLink1592 : DerivedMapBatches.Batch014.certificate1152.algebra.mat = DerivedMapBatches.Batch066.certificate5280.b := by decide
theorem firstValid1592 : DerivedMapBatches.Batch013.certificate1090.Valid := DerivedMapBatches.Batch013.certificate1090valid
theorem secondValid1592 : DerivedMapBatches.Batch014.certificate1152.Valid := DerivedMapBatches.Batch014.certificate1152valid
theorem outputValid1592 : DerivedMapBatches.Batch066.certificate5280.Valid := DerivedMapBatches.Batch066.certificate5280valid
theorem linkedComposition1592 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5280.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5280.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1090.c x) := by
  rw [firstLink1592, secondLink1592]
  exact DerivedMapBatches.Batch066.certificate5280valid.2 x
theorem rhsLink1592 : DerivedMapBatches.Batch066.certificate5280.c = DerivedMapBatches.Batch014.certificate1153.c := by decide
theorem rhsValid1592 : DerivedMapBatches.Batch014.certificate1153.Valid := DerivedMapBatches.Batch014.certificate1153valid
theorem linkedCommutativity1592 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5280.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1090.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1153.c x := by
  exact (linkedComposition1592 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1592)
theorem firstLink1593 : DerivedMapBatches.Batch013.certificate1093.c = DerivedMapBatches.Batch066.certificate5281.a := by decide
theorem secondLink1593 : DerivedMapBatches.Batch014.certificate1154.algebra.mat = DerivedMapBatches.Batch066.certificate5281.b := by decide
theorem firstValid1593 : DerivedMapBatches.Batch013.certificate1093.Valid := DerivedMapBatches.Batch013.certificate1093valid
theorem secondValid1593 : DerivedMapBatches.Batch014.certificate1154.Valid := DerivedMapBatches.Batch014.certificate1154valid
theorem outputValid1593 : DerivedMapBatches.Batch066.certificate5281.Valid := DerivedMapBatches.Batch066.certificate5281valid
theorem linkedComposition1593 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5281.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5281.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1093.c x) := by
  rw [firstLink1593, secondLink1593]
  exact DerivedMapBatches.Batch066.certificate5281valid.2 x
theorem rhsLink1593 : DerivedMapBatches.Batch066.certificate5281.c = DerivedMapBatches.Batch014.certificate1155.c := by decide
theorem rhsValid1593 : DerivedMapBatches.Batch014.certificate1155.Valid := DerivedMapBatches.Batch014.certificate1155valid
theorem linkedCommutativity1593 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5281.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1093.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1155.c x := by
  exact (linkedComposition1593 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1593)
theorem firstLink1594 : DerivedMapBatches.Batch013.certificate1096.c = DerivedMapBatches.Batch066.certificate5282.a := by decide
theorem secondLink1594 : DerivedMapBatches.Batch014.certificate1156.algebra.mat = DerivedMapBatches.Batch066.certificate5282.b := by decide
theorem firstValid1594 : DerivedMapBatches.Batch013.certificate1096.Valid := DerivedMapBatches.Batch013.certificate1096valid
theorem secondValid1594 : DerivedMapBatches.Batch014.certificate1156.Valid := DerivedMapBatches.Batch014.certificate1156valid
theorem outputValid1594 : DerivedMapBatches.Batch066.certificate5282.Valid := DerivedMapBatches.Batch066.certificate5282valid
theorem linkedComposition1594 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5282.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5282.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1156.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1096.c x) := by
  rw [firstLink1594, secondLink1594]
  exact DerivedMapBatches.Batch066.certificate5282valid.2 x
theorem rhsLink1594 : DerivedMapBatches.Batch066.certificate5282.c = DerivedMapBatches.Batch014.certificate1157.c := by decide
theorem rhsValid1594 : DerivedMapBatches.Batch014.certificate1157.Valid := DerivedMapBatches.Batch014.certificate1157valid
theorem linkedCommutativity1594 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5282.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1156.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1096.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1157.c x := by
  exact (linkedComposition1594 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1594)
theorem firstLink1595 : DerivedMapBatches.Batch013.certificate1099.c = DerivedMapBatches.Batch066.certificate5283.a := by decide
theorem secondLink1595 : DerivedMapBatches.Batch014.certificate1158.algebra.mat = DerivedMapBatches.Batch066.certificate5283.b := by decide
theorem firstValid1595 : DerivedMapBatches.Batch013.certificate1099.Valid := DerivedMapBatches.Batch013.certificate1099valid
theorem secondValid1595 : DerivedMapBatches.Batch014.certificate1158.Valid := DerivedMapBatches.Batch014.certificate1158valid
theorem outputValid1595 : DerivedMapBatches.Batch066.certificate5283.Valid := DerivedMapBatches.Batch066.certificate5283valid
theorem linkedComposition1595 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5283.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5283.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1099.c x) := by
  rw [firstLink1595, secondLink1595]
  exact DerivedMapBatches.Batch066.certificate5283valid.2 x
theorem rhsLink1595 : DerivedMapBatches.Batch066.certificate5283.c = DerivedMapBatches.Batch014.certificate1159.c := by decide
theorem rhsValid1595 : DerivedMapBatches.Batch014.certificate1159.Valid := DerivedMapBatches.Batch014.certificate1159valid
theorem linkedCommutativity1595 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5283.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1099.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1159.c x := by
  exact (linkedComposition1595 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1595)
theorem firstLink1596 : DerivedMapBatches.Batch013.certificate1102.c = DerivedMapBatches.Batch066.certificate5284.a := by decide
theorem secondLink1596 : DerivedMapBatches.Batch014.certificate1160.algebra.mat = DerivedMapBatches.Batch066.certificate5284.b := by decide
theorem firstValid1596 : DerivedMapBatches.Batch013.certificate1102.Valid := DerivedMapBatches.Batch013.certificate1102valid
theorem secondValid1596 : DerivedMapBatches.Batch014.certificate1160.Valid := DerivedMapBatches.Batch014.certificate1160valid
theorem outputValid1596 : DerivedMapBatches.Batch066.certificate5284.Valid := DerivedMapBatches.Batch066.certificate5284valid
theorem linkedComposition1596 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5284.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5284.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1102.c x) := by
  rw [firstLink1596, secondLink1596]
  exact DerivedMapBatches.Batch066.certificate5284valid.2 x
theorem rhsLink1596 : DerivedMapBatches.Batch066.certificate5284.c = DerivedMapBatches.Batch014.certificate1161.c := by decide
theorem rhsValid1596 : DerivedMapBatches.Batch014.certificate1161.Valid := DerivedMapBatches.Batch014.certificate1161valid
theorem linkedCommutativity1596 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5284.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1102.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1161.c x := by
  exact (linkedComposition1596 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1596)
theorem firstLink1597 : DerivedMapBatches.Batch013.certificate1105.c = DerivedMapBatches.Batch066.certificate5285.a := by decide
theorem secondLink1597 : DerivedMapBatches.Batch014.certificate1162.algebra.mat = DerivedMapBatches.Batch066.certificate5285.b := by decide
theorem firstValid1597 : DerivedMapBatches.Batch013.certificate1105.Valid := DerivedMapBatches.Batch013.certificate1105valid
theorem secondValid1597 : DerivedMapBatches.Batch014.certificate1162.Valid := DerivedMapBatches.Batch014.certificate1162valid
theorem outputValid1597 : DerivedMapBatches.Batch066.certificate5285.Valid := DerivedMapBatches.Batch066.certificate5285valid
theorem linkedComposition1597 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5285.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5285.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1105.c x) := by
  rw [firstLink1597, secondLink1597]
  exact DerivedMapBatches.Batch066.certificate5285valid.2 x
theorem rhsLink1597 : DerivedMapBatches.Batch066.certificate5285.c = DerivedMapBatches.Batch014.certificate1163.c := by decide
theorem rhsValid1597 : DerivedMapBatches.Batch014.certificate1163.Valid := DerivedMapBatches.Batch014.certificate1163valid
theorem linkedCommutativity1597 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5285.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1105.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1163.c x := by
  exact (linkedComposition1597 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1597)
theorem firstLink1598 : DerivedMapBatches.Batch013.certificate1108.c = DerivedMapBatches.Batch066.certificate5286.a := by decide
theorem secondLink1598 : DerivedMapBatches.Batch014.certificate1164.algebra.mat = DerivedMapBatches.Batch066.certificate5286.b := by decide
theorem firstValid1598 : DerivedMapBatches.Batch013.certificate1108.Valid := DerivedMapBatches.Batch013.certificate1108valid
theorem secondValid1598 : DerivedMapBatches.Batch014.certificate1164.Valid := DerivedMapBatches.Batch014.certificate1164valid
theorem outputValid1598 : DerivedMapBatches.Batch066.certificate5286.Valid := DerivedMapBatches.Batch066.certificate5286valid
theorem linkedComposition1598 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5286.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5286.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1164.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1108.c x) := by
  rw [firstLink1598, secondLink1598]
  exact DerivedMapBatches.Batch066.certificate5286valid.2 x
theorem rhsLink1598 : DerivedMapBatches.Batch066.certificate5286.c = DerivedMapBatches.Batch014.certificate1165.c := by decide
theorem rhsValid1598 : DerivedMapBatches.Batch014.certificate1165.Valid := DerivedMapBatches.Batch014.certificate1165valid
theorem linkedCommutativity1598 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5286.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1164.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1108.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1165.c x := by
  exact (linkedComposition1598 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1598)
theorem firstLink1599 : DerivedMapBatches.Batch013.certificate1111.c = DerivedMapBatches.Batch066.certificate5287.a := by decide
theorem secondLink1599 : DerivedMapBatches.Batch014.certificate1166.algebra.mat = DerivedMapBatches.Batch066.certificate5287.b := by decide
theorem firstValid1599 : DerivedMapBatches.Batch013.certificate1111.Valid := DerivedMapBatches.Batch013.certificate1111valid
theorem secondValid1599 : DerivedMapBatches.Batch014.certificate1166.Valid := DerivedMapBatches.Batch014.certificate1166valid
theorem outputValid1599 : DerivedMapBatches.Batch066.certificate5287.Valid := DerivedMapBatches.Batch066.certificate5287valid
theorem linkedComposition1599 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5287.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch066.certificate5287.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1111.c x) := by
  rw [firstLink1599, secondLink1599]
  exact DerivedMapBatches.Batch066.certificate5287valid.2 x
theorem rhsLink1599 : DerivedMapBatches.Batch066.certificate5287.c = DerivedMapBatches.Batch014.certificate1167.c := by decide
theorem rhsValid1599 : DerivedMapBatches.Batch014.certificate1167.Valid := DerivedMapBatches.Batch014.certificate1167valid
theorem linkedCommutativity1599 (x : LinearCertificates.Vec DerivedMapBatches.Batch066.certificate5287.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1111.c x) = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1167.c x := by
  exact (linkedComposition1599 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1599)
end DerivedLinkageBatches.Batch031
