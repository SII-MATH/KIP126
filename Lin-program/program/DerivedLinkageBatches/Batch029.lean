import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch064
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch029
theorem firstLink1450 : DerivedMapBatches.Batch009.certificate788.algebra.mat = DerivedMapBatches.Batch064.certificate5138.a := by decide
theorem secondLink1450 : DerivedMapBatches.Batch009.certificate789.algebra.mat = DerivedMapBatches.Batch064.certificate5138.b := by decide
theorem firstValid1450 : DerivedMapBatches.Batch009.certificate788.Valid := DerivedMapBatches.Batch009.certificate788valid
theorem secondValid1450 : DerivedMapBatches.Batch009.certificate789.Valid := DerivedMapBatches.Batch009.certificate789valid
theorem outputValid1450 : DerivedMapBatches.Batch064.certificate5138.Valid := DerivedMapBatches.Batch064.certificate5138valid
theorem linkedComposition1450 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5138.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5138.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate789.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate788.algebra.mat x) := by
  rw [firstLink1450, secondLink1450]
  exact DerivedMapBatches.Batch064.certificate5138valid.2 x
theorem rhsLink1450 : DerivedMapBatches.Batch064.certificate5138.c = DerivedMapBatches.Batch009.certificate790.c := by decide
theorem rhsValid1450 : DerivedMapBatches.Batch009.certificate790.Valid := DerivedMapBatches.Batch009.certificate790valid
theorem linkedCommutativity1450 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5138.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate789.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate788.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate790.c x := by
  exact (linkedComposition1450 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1450)
theorem firstLink1451 : DerivedMapBatches.Batch009.certificate791.algebra.mat = DerivedMapBatches.Batch064.certificate5139.a := by decide
theorem secondLink1451 : DerivedMapBatches.Batch009.certificate792.algebra.mat = DerivedMapBatches.Batch064.certificate5139.b := by decide
theorem firstValid1451 : DerivedMapBatches.Batch009.certificate791.Valid := DerivedMapBatches.Batch009.certificate791valid
theorem secondValid1451 : DerivedMapBatches.Batch009.certificate792.Valid := DerivedMapBatches.Batch009.certificate792valid
theorem outputValid1451 : DerivedMapBatches.Batch064.certificate5139.Valid := DerivedMapBatches.Batch064.certificate5139valid
theorem linkedComposition1451 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5139.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5139.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate792.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate791.algebra.mat x) := by
  rw [firstLink1451, secondLink1451]
  exact DerivedMapBatches.Batch064.certificate5139valid.2 x
theorem rhsLink1451 : DerivedMapBatches.Batch064.certificate5139.c = DerivedMapBatches.Batch009.certificate793.c := by decide
theorem rhsValid1451 : DerivedMapBatches.Batch009.certificate793.Valid := DerivedMapBatches.Batch009.certificate793valid
theorem linkedCommutativity1451 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5139.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate792.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate791.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate793.c x := by
  exact (linkedComposition1451 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1451)
theorem firstLink1452 : DerivedMapBatches.Batch009.certificate794.algebra.mat = DerivedMapBatches.Batch064.certificate5140.a := by decide
theorem secondLink1452 : DerivedMapBatches.Batch009.certificate795.algebra.mat = DerivedMapBatches.Batch064.certificate5140.b := by decide
theorem firstValid1452 : DerivedMapBatches.Batch009.certificate794.Valid := DerivedMapBatches.Batch009.certificate794valid
theorem secondValid1452 : DerivedMapBatches.Batch009.certificate795.Valid := DerivedMapBatches.Batch009.certificate795valid
theorem outputValid1452 : DerivedMapBatches.Batch064.certificate5140.Valid := DerivedMapBatches.Batch064.certificate5140valid
theorem linkedComposition1452 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5140.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5140.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat x) := by
  rw [firstLink1452, secondLink1452]
  exact DerivedMapBatches.Batch064.certificate5140valid.2 x
theorem rhsLink1452 : DerivedMapBatches.Batch064.certificate5140.c = DerivedMapBatches.Batch009.certificate796.c := by decide
theorem rhsValid1452 : DerivedMapBatches.Batch009.certificate796.Valid := DerivedMapBatches.Batch009.certificate796valid
theorem linkedCommutativity1452 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5140.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate796.c x := by
  exact (linkedComposition1452 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1452)
theorem firstLink1453 : DerivedMapBatches.Batch009.certificate797.algebra.mat = DerivedMapBatches.Batch064.certificate5141.a := by decide
theorem secondLink1453 : DerivedMapBatches.Batch009.certificate798.algebra.mat = DerivedMapBatches.Batch064.certificate5141.b := by decide
theorem firstValid1453 : DerivedMapBatches.Batch009.certificate797.Valid := DerivedMapBatches.Batch009.certificate797valid
theorem secondValid1453 : DerivedMapBatches.Batch009.certificate798.Valid := DerivedMapBatches.Batch009.certificate798valid
theorem outputValid1453 : DerivedMapBatches.Batch064.certificate5141.Valid := DerivedMapBatches.Batch064.certificate5141valid
theorem linkedComposition1453 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5141.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5141.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat x) := by
  rw [firstLink1453, secondLink1453]
  exact DerivedMapBatches.Batch064.certificate5141valid.2 x
theorem rhsLink1453 : DerivedMapBatches.Batch064.certificate5141.c = DerivedMapBatches.Batch009.certificate799.c := by decide
theorem rhsValid1453 : DerivedMapBatches.Batch009.certificate799.Valid := DerivedMapBatches.Batch009.certificate799valid
theorem linkedCommutativity1453 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5141.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate799.c x := by
  exact (linkedComposition1453 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1453)
theorem firstLink1454 : DerivedMapBatches.Batch010.certificate800.algebra.mat = DerivedMapBatches.Batch064.certificate5142.a := by decide
theorem secondLink1454 : DerivedMapBatches.Batch010.certificate801.algebra.mat = DerivedMapBatches.Batch064.certificate5142.b := by decide
theorem firstValid1454 : DerivedMapBatches.Batch010.certificate800.Valid := DerivedMapBatches.Batch010.certificate800valid
theorem secondValid1454 : DerivedMapBatches.Batch010.certificate801.Valid := DerivedMapBatches.Batch010.certificate801valid
theorem outputValid1454 : DerivedMapBatches.Batch064.certificate5142.Valid := DerivedMapBatches.Batch064.certificate5142valid
theorem linkedComposition1454 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5142.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5142.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate800.algebra.mat x) := by
  rw [firstLink1454, secondLink1454]
  exact DerivedMapBatches.Batch064.certificate5142valid.2 x
theorem rhsLink1454 : DerivedMapBatches.Batch064.certificate5142.c = DerivedMapBatches.Batch010.certificate802.c := by decide
theorem rhsValid1454 : DerivedMapBatches.Batch010.certificate802.Valid := DerivedMapBatches.Batch010.certificate802valid
theorem linkedCommutativity1454 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5142.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate800.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate802.c x := by
  exact (linkedComposition1454 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1454)
theorem firstLink1455 : DerivedMapBatches.Batch010.certificate803.algebra.mat = DerivedMapBatches.Batch064.certificate5143.a := by decide
theorem secondLink1455 : DerivedMapBatches.Batch010.certificate804.algebra.mat = DerivedMapBatches.Batch064.certificate5143.b := by decide
theorem firstValid1455 : DerivedMapBatches.Batch010.certificate803.Valid := DerivedMapBatches.Batch010.certificate803valid
theorem secondValid1455 : DerivedMapBatches.Batch010.certificate804.Valid := DerivedMapBatches.Batch010.certificate804valid
theorem outputValid1455 : DerivedMapBatches.Batch064.certificate5143.Valid := DerivedMapBatches.Batch064.certificate5143valid
theorem linkedComposition1455 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5143.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5143.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate803.algebra.mat x) := by
  rw [firstLink1455, secondLink1455]
  exact DerivedMapBatches.Batch064.certificate5143valid.2 x
theorem rhsLink1455 : DerivedMapBatches.Batch064.certificate5143.c = DerivedMapBatches.Batch010.certificate805.c := by decide
theorem rhsValid1455 : DerivedMapBatches.Batch010.certificate805.Valid := DerivedMapBatches.Batch010.certificate805valid
theorem linkedCommutativity1455 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5143.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate803.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate805.c x := by
  exact (linkedComposition1455 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1455)
theorem firstLink1456 : DerivedMapBatches.Batch010.certificate806.algebra.mat = DerivedMapBatches.Batch064.certificate5144.a := by decide
theorem secondLink1456 : DerivedMapBatches.Batch010.certificate807.algebra.mat = DerivedMapBatches.Batch064.certificate5144.b := by decide
theorem firstValid1456 : DerivedMapBatches.Batch010.certificate806.Valid := DerivedMapBatches.Batch010.certificate806valid
theorem secondValid1456 : DerivedMapBatches.Batch010.certificate807.Valid := DerivedMapBatches.Batch010.certificate807valid
theorem outputValid1456 : DerivedMapBatches.Batch064.certificate5144.Valid := DerivedMapBatches.Batch064.certificate5144valid
theorem linkedComposition1456 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5144.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5144.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate806.algebra.mat x) := by
  rw [firstLink1456, secondLink1456]
  exact DerivedMapBatches.Batch064.certificate5144valid.2 x
theorem rhsLink1456 : DerivedMapBatches.Batch064.certificate5144.c = DerivedMapBatches.Batch010.certificate808.c := by decide
theorem rhsValid1456 : DerivedMapBatches.Batch010.certificate808.Valid := DerivedMapBatches.Batch010.certificate808valid
theorem linkedCommutativity1456 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5144.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate806.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate808.c x := by
  exact (linkedComposition1456 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1456)
theorem firstLink1457 : DerivedMapBatches.Batch010.certificate809.algebra.mat = DerivedMapBatches.Batch064.certificate5145.a := by decide
theorem secondLink1457 : DerivedMapBatches.Batch010.certificate810.algebra.mat = DerivedMapBatches.Batch064.certificate5145.b := by decide
theorem firstValid1457 : DerivedMapBatches.Batch010.certificate809.Valid := DerivedMapBatches.Batch010.certificate809valid
theorem secondValid1457 : DerivedMapBatches.Batch010.certificate810.Valid := DerivedMapBatches.Batch010.certificate810valid
theorem outputValid1457 : DerivedMapBatches.Batch064.certificate5145.Valid := DerivedMapBatches.Batch064.certificate5145valid
theorem linkedComposition1457 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5145.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5145.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat x) := by
  rw [firstLink1457, secondLink1457]
  exact DerivedMapBatches.Batch064.certificate5145valid.2 x
theorem rhsLink1457 : DerivedMapBatches.Batch064.certificate5145.c = DerivedMapBatches.Batch010.certificate811.c := by decide
theorem rhsValid1457 : DerivedMapBatches.Batch010.certificate811.Valid := DerivedMapBatches.Batch010.certificate811valid
theorem linkedCommutativity1457 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5145.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate811.c x := by
  exact (linkedComposition1457 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1457)
theorem firstLink1458 : DerivedMapBatches.Batch010.certificate812.algebra.mat = DerivedMapBatches.Batch064.certificate5146.a := by decide
theorem secondLink1458 : DerivedMapBatches.Batch010.certificate813.algebra.mat = DerivedMapBatches.Batch064.certificate5146.b := by decide
theorem firstValid1458 : DerivedMapBatches.Batch010.certificate812.Valid := DerivedMapBatches.Batch010.certificate812valid
theorem secondValid1458 : DerivedMapBatches.Batch010.certificate813.Valid := DerivedMapBatches.Batch010.certificate813valid
theorem outputValid1458 : DerivedMapBatches.Batch064.certificate5146.Valid := DerivedMapBatches.Batch064.certificate5146valid
theorem linkedComposition1458 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5146.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5146.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate813.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate812.algebra.mat x) := by
  rw [firstLink1458, secondLink1458]
  exact DerivedMapBatches.Batch064.certificate5146valid.2 x
theorem rhsLink1458 : DerivedMapBatches.Batch064.certificate5146.c = DerivedMapBatches.Batch010.certificate814.c := by decide
theorem rhsValid1458 : DerivedMapBatches.Batch010.certificate814.Valid := DerivedMapBatches.Batch010.certificate814valid
theorem linkedCommutativity1458 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5146.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate813.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate812.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate814.c x := by
  exact (linkedComposition1458 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1458)
theorem firstLink1459 : DerivedMapBatches.Batch010.certificate815.algebra.mat = DerivedMapBatches.Batch064.certificate5147.a := by decide
theorem secondLink1459 : DerivedMapBatches.Batch010.certificate816.algebra.mat = DerivedMapBatches.Batch064.certificate5147.b := by decide
theorem firstValid1459 : DerivedMapBatches.Batch010.certificate815.Valid := DerivedMapBatches.Batch010.certificate815valid
theorem secondValid1459 : DerivedMapBatches.Batch010.certificate816.Valid := DerivedMapBatches.Batch010.certificate816valid
theorem outputValid1459 : DerivedMapBatches.Batch064.certificate5147.Valid := DerivedMapBatches.Batch064.certificate5147valid
theorem linkedComposition1459 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5147.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5147.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat x) := by
  rw [firstLink1459, secondLink1459]
  exact DerivedMapBatches.Batch064.certificate5147valid.2 x
theorem rhsLink1459 : DerivedMapBatches.Batch064.certificate5147.c = DerivedMapBatches.Batch010.certificate817.c := by decide
theorem rhsValid1459 : DerivedMapBatches.Batch010.certificate817.Valid := DerivedMapBatches.Batch010.certificate817valid
theorem linkedCommutativity1459 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5147.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate817.c x := by
  exact (linkedComposition1459 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1459)
theorem firstLink1460 : DerivedMapBatches.Batch010.certificate818.algebra.mat = DerivedMapBatches.Batch064.certificate5148.a := by decide
theorem secondLink1460 : DerivedMapBatches.Batch010.certificate819.algebra.mat = DerivedMapBatches.Batch064.certificate5148.b := by decide
theorem firstValid1460 : DerivedMapBatches.Batch010.certificate818.Valid := DerivedMapBatches.Batch010.certificate818valid
theorem secondValid1460 : DerivedMapBatches.Batch010.certificate819.Valid := DerivedMapBatches.Batch010.certificate819valid
theorem outputValid1460 : DerivedMapBatches.Batch064.certificate5148.Valid := DerivedMapBatches.Batch064.certificate5148valid
theorem linkedComposition1460 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5148.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5148.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate818.algebra.mat x) := by
  rw [firstLink1460, secondLink1460]
  exact DerivedMapBatches.Batch064.certificate5148valid.2 x
theorem rhsLink1460 : DerivedMapBatches.Batch064.certificate5148.c = DerivedMapBatches.Batch010.certificate820.c := by decide
theorem rhsValid1460 : DerivedMapBatches.Batch010.certificate820.Valid := DerivedMapBatches.Batch010.certificate820valid
theorem linkedCommutativity1460 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5148.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate818.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate820.c x := by
  exact (linkedComposition1460 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1460)
theorem firstLink1461 : DerivedMapBatches.Batch010.certificate821.algebra.mat = DerivedMapBatches.Batch064.certificate5149.a := by decide
theorem secondLink1461 : DerivedMapBatches.Batch010.certificate822.algebra.mat = DerivedMapBatches.Batch064.certificate5149.b := by decide
theorem firstValid1461 : DerivedMapBatches.Batch010.certificate821.Valid := DerivedMapBatches.Batch010.certificate821valid
theorem secondValid1461 : DerivedMapBatches.Batch010.certificate822.Valid := DerivedMapBatches.Batch010.certificate822valid
theorem outputValid1461 : DerivedMapBatches.Batch064.certificate5149.Valid := DerivedMapBatches.Batch064.certificate5149valid
theorem linkedComposition1461 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5149.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5149.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate822.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate821.algebra.mat x) := by
  rw [firstLink1461, secondLink1461]
  exact DerivedMapBatches.Batch064.certificate5149valid.2 x
theorem rhsLink1461 : DerivedMapBatches.Batch064.certificate5149.c = DerivedMapBatches.Batch010.certificate823.c := by decide
theorem rhsValid1461 : DerivedMapBatches.Batch010.certificate823.Valid := DerivedMapBatches.Batch010.certificate823valid
theorem linkedCommutativity1461 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5149.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate822.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate821.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate823.c x := by
  exact (linkedComposition1461 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1461)
theorem firstLink1462 : DerivedMapBatches.Batch010.certificate824.algebra.mat = DerivedMapBatches.Batch064.certificate5150.a := by decide
theorem secondLink1462 : DerivedMapBatches.Batch010.certificate825.algebra.mat = DerivedMapBatches.Batch064.certificate5150.b := by decide
theorem firstValid1462 : DerivedMapBatches.Batch010.certificate824.Valid := DerivedMapBatches.Batch010.certificate824valid
theorem secondValid1462 : DerivedMapBatches.Batch010.certificate825.Valid := DerivedMapBatches.Batch010.certificate825valid
theorem outputValid1462 : DerivedMapBatches.Batch064.certificate5150.Valid := DerivedMapBatches.Batch064.certificate5150valid
theorem linkedComposition1462 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5150.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5150.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate825.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate824.algebra.mat x) := by
  rw [firstLink1462, secondLink1462]
  exact DerivedMapBatches.Batch064.certificate5150valid.2 x
theorem rhsLink1462 : DerivedMapBatches.Batch064.certificate5150.c = DerivedMapBatches.Batch010.certificate826.c := by decide
theorem rhsValid1462 : DerivedMapBatches.Batch010.certificate826.Valid := DerivedMapBatches.Batch010.certificate826valid
theorem linkedCommutativity1462 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5150.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate825.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate824.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate826.c x := by
  exact (linkedComposition1462 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1462)
theorem firstLink1463 : DerivedMapBatches.Batch010.certificate827.algebra.mat = DerivedMapBatches.Batch064.certificate5151.a := by decide
theorem secondLink1463 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch064.certificate5151.b := by decide
theorem firstValid1463 : DerivedMapBatches.Batch010.certificate827.Valid := DerivedMapBatches.Batch010.certificate827valid
theorem secondValid1463 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid1463 : DerivedMapBatches.Batch064.certificate5151.Valid := DerivedMapBatches.Batch064.certificate5151valid
theorem linkedComposition1463 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5151.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5151.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat x) := by
  rw [firstLink1463, secondLink1463]
  exact DerivedMapBatches.Batch064.certificate5151valid.2 x
theorem rhsLink1463 : DerivedMapBatches.Batch064.certificate5151.c = DerivedMapBatches.Batch010.certificate829.c := by decide
theorem rhsValid1463 : DerivedMapBatches.Batch010.certificate829.Valid := DerivedMapBatches.Batch010.certificate829valid
theorem linkedCommutativity1463 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5151.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate829.c x := by
  exact (linkedComposition1463 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1463)
theorem firstLink1464 : DerivedMapBatches.Batch010.certificate830.algebra.mat = DerivedMapBatches.Batch064.certificate5152.a := by decide
theorem secondLink1464 : DerivedMapBatches.Batch010.certificate831.algebra.mat = DerivedMapBatches.Batch064.certificate5152.b := by decide
theorem firstValid1464 : DerivedMapBatches.Batch010.certificate830.Valid := DerivedMapBatches.Batch010.certificate830valid
theorem secondValid1464 : DerivedMapBatches.Batch010.certificate831.Valid := DerivedMapBatches.Batch010.certificate831valid
theorem outputValid1464 : DerivedMapBatches.Batch064.certificate5152.Valid := DerivedMapBatches.Batch064.certificate5152valid
theorem linkedComposition1464 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5152.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5152.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat x) := by
  rw [firstLink1464, secondLink1464]
  exact DerivedMapBatches.Batch064.certificate5152valid.2 x
theorem rhsLink1464 : DerivedMapBatches.Batch064.certificate5152.c = DerivedMapBatches.Batch010.certificate832.c := by decide
theorem rhsValid1464 : DerivedMapBatches.Batch010.certificate832.Valid := DerivedMapBatches.Batch010.certificate832valid
theorem linkedCommutativity1464 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5152.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate832.c x := by
  exact (linkedComposition1464 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1464)
theorem firstLink1465 : DerivedMapBatches.Batch010.certificate833.algebra.mat = DerivedMapBatches.Batch064.certificate5153.a := by decide
theorem secondLink1465 : DerivedMapBatches.Batch010.certificate834.algebra.mat = DerivedMapBatches.Batch064.certificate5153.b := by decide
theorem firstValid1465 : DerivedMapBatches.Batch010.certificate833.Valid := DerivedMapBatches.Batch010.certificate833valid
theorem secondValid1465 : DerivedMapBatches.Batch010.certificate834.Valid := DerivedMapBatches.Batch010.certificate834valid
theorem outputValid1465 : DerivedMapBatches.Batch064.certificate5153.Valid := DerivedMapBatches.Batch064.certificate5153valid
theorem linkedComposition1465 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5153.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5153.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate834.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate833.algebra.mat x) := by
  rw [firstLink1465, secondLink1465]
  exact DerivedMapBatches.Batch064.certificate5153valid.2 x
theorem rhsLink1465 : DerivedMapBatches.Batch064.certificate5153.c = DerivedMapBatches.Batch010.certificate835.c := by decide
theorem rhsValid1465 : DerivedMapBatches.Batch010.certificate835.Valid := DerivedMapBatches.Batch010.certificate835valid
theorem linkedCommutativity1465 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5153.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate834.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate833.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate835.c x := by
  exact (linkedComposition1465 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1465)
theorem firstLink1466 : DerivedMapBatches.Batch010.certificate836.algebra.mat = DerivedMapBatches.Batch064.certificate5154.a := by decide
theorem secondLink1466 : DerivedMapBatches.Batch010.certificate837.algebra.mat = DerivedMapBatches.Batch064.certificate5154.b := by decide
theorem firstValid1466 : DerivedMapBatches.Batch010.certificate836.Valid := DerivedMapBatches.Batch010.certificate836valid
theorem secondValid1466 : DerivedMapBatches.Batch010.certificate837.Valid := DerivedMapBatches.Batch010.certificate837valid
theorem outputValid1466 : DerivedMapBatches.Batch064.certificate5154.Valid := DerivedMapBatches.Batch064.certificate5154valid
theorem linkedComposition1466 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5154.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5154.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate837.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate836.algebra.mat x) := by
  rw [firstLink1466, secondLink1466]
  exact DerivedMapBatches.Batch064.certificate5154valid.2 x
theorem rhsLink1466 : DerivedMapBatches.Batch064.certificate5154.c = DerivedMapBatches.Batch010.certificate838.c := by decide
theorem rhsValid1466 : DerivedMapBatches.Batch010.certificate838.Valid := DerivedMapBatches.Batch010.certificate838valid
theorem linkedCommutativity1466 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5154.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate837.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate836.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate838.c x := by
  exact (linkedComposition1466 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1466)
theorem firstLink1467 : DerivedMapBatches.Batch010.certificate839.algebra.mat = DerivedMapBatches.Batch064.certificate5155.a := by decide
theorem secondLink1467 : DerivedMapBatches.Batch010.certificate840.algebra.mat = DerivedMapBatches.Batch064.certificate5155.b := by decide
theorem firstValid1467 : DerivedMapBatches.Batch010.certificate839.Valid := DerivedMapBatches.Batch010.certificate839valid
theorem secondValid1467 : DerivedMapBatches.Batch010.certificate840.Valid := DerivedMapBatches.Batch010.certificate840valid
theorem outputValid1467 : DerivedMapBatches.Batch064.certificate5155.Valid := DerivedMapBatches.Batch064.certificate5155valid
theorem linkedComposition1467 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5155.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate840.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate839.algebra.mat x) := by
  rw [firstLink1467, secondLink1467]
  exact DerivedMapBatches.Batch064.certificate5155valid.2 x
theorem rhsLink1467 : DerivedMapBatches.Batch064.certificate5155.c = DerivedMapBatches.Batch010.certificate841.c := by decide
theorem rhsValid1467 : DerivedMapBatches.Batch010.certificate841.Valid := DerivedMapBatches.Batch010.certificate841valid
theorem linkedCommutativity1467 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate840.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate839.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate841.c x := by
  exact (linkedComposition1467 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1467)
theorem firstLink1468 : DerivedMapBatches.Batch010.certificate842.algebra.mat = DerivedMapBatches.Batch064.certificate5156.a := by decide
theorem secondLink1468 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch064.certificate5156.b := by decide
theorem firstValid1468 : DerivedMapBatches.Batch010.certificate842.Valid := DerivedMapBatches.Batch010.certificate842valid
theorem secondValid1468 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid1468 : DerivedMapBatches.Batch064.certificate5156.Valid := DerivedMapBatches.Batch064.certificate5156valid
theorem linkedComposition1468 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5156.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5156.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat x) := by
  rw [firstLink1468, secondLink1468]
  exact DerivedMapBatches.Batch064.certificate5156valid.2 x
theorem rhsLink1468 : DerivedMapBatches.Batch064.certificate5156.c = DerivedMapBatches.Batch010.certificate844.c := by decide
theorem rhsValid1468 : DerivedMapBatches.Batch010.certificate844.Valid := DerivedMapBatches.Batch010.certificate844valid
theorem linkedCommutativity1468 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5156.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate844.c x := by
  exact (linkedComposition1468 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1468)
theorem firstLink1469 : DerivedMapBatches.Batch010.certificate845.algebra.mat = DerivedMapBatches.Batch064.certificate5157.a := by decide
theorem secondLink1469 : DerivedMapBatches.Batch010.certificate846.algebra.mat = DerivedMapBatches.Batch064.certificate5157.b := by decide
theorem firstValid1469 : DerivedMapBatches.Batch010.certificate845.Valid := DerivedMapBatches.Batch010.certificate845valid
theorem secondValid1469 : DerivedMapBatches.Batch010.certificate846.Valid := DerivedMapBatches.Batch010.certificate846valid
theorem outputValid1469 : DerivedMapBatches.Batch064.certificate5157.Valid := DerivedMapBatches.Batch064.certificate5157valid
theorem linkedComposition1469 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5157.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5157.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat x) := by
  rw [firstLink1469, secondLink1469]
  exact DerivedMapBatches.Batch064.certificate5157valid.2 x
theorem rhsLink1469 : DerivedMapBatches.Batch064.certificate5157.c = DerivedMapBatches.Batch010.certificate847.c := by decide
theorem rhsValid1469 : DerivedMapBatches.Batch010.certificate847.Valid := DerivedMapBatches.Batch010.certificate847valid
theorem linkedCommutativity1469 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5157.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate847.c x := by
  exact (linkedComposition1469 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1469)
theorem firstLink1470 : DerivedMapBatches.Batch010.certificate848.algebra.mat = DerivedMapBatches.Batch064.certificate5158.a := by decide
theorem secondLink1470 : DerivedMapBatches.Batch010.certificate849.algebra.mat = DerivedMapBatches.Batch064.certificate5158.b := by decide
theorem firstValid1470 : DerivedMapBatches.Batch010.certificate848.Valid := DerivedMapBatches.Batch010.certificate848valid
theorem secondValid1470 : DerivedMapBatches.Batch010.certificate849.Valid := DerivedMapBatches.Batch010.certificate849valid
theorem outputValid1470 : DerivedMapBatches.Batch064.certificate5158.Valid := DerivedMapBatches.Batch064.certificate5158valid
theorem linkedComposition1470 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5158.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5158.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat x) := by
  rw [firstLink1470, secondLink1470]
  exact DerivedMapBatches.Batch064.certificate5158valid.2 x
theorem rhsLink1470 : DerivedMapBatches.Batch064.certificate5158.c = DerivedMapBatches.Batch010.certificate850.c := by decide
theorem rhsValid1470 : DerivedMapBatches.Batch010.certificate850.Valid := DerivedMapBatches.Batch010.certificate850valid
theorem linkedCommutativity1470 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5158.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate850.c x := by
  exact (linkedComposition1470 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1470)
theorem firstLink1471 : DerivedMapBatches.Batch010.certificate851.algebra.mat = DerivedMapBatches.Batch064.certificate5159.a := by decide
theorem secondLink1471 : DerivedMapBatches.Batch010.certificate852.algebra.mat = DerivedMapBatches.Batch064.certificate5159.b := by decide
theorem firstValid1471 : DerivedMapBatches.Batch010.certificate851.Valid := DerivedMapBatches.Batch010.certificate851valid
theorem secondValid1471 : DerivedMapBatches.Batch010.certificate852.Valid := DerivedMapBatches.Batch010.certificate852valid
theorem outputValid1471 : DerivedMapBatches.Batch064.certificate5159.Valid := DerivedMapBatches.Batch064.certificate5159valid
theorem linkedComposition1471 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5159.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5159.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate852.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate851.algebra.mat x) := by
  rw [firstLink1471, secondLink1471]
  exact DerivedMapBatches.Batch064.certificate5159valid.2 x
theorem rhsLink1471 : DerivedMapBatches.Batch064.certificate5159.c = DerivedMapBatches.Batch010.certificate853.c := by decide
theorem rhsValid1471 : DerivedMapBatches.Batch010.certificate853.Valid := DerivedMapBatches.Batch010.certificate853valid
theorem linkedCommutativity1471 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5159.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate852.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate851.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate853.c x := by
  exact (linkedComposition1471 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1471)
theorem firstLink1472 : DerivedMapBatches.Batch010.certificate854.algebra.mat = DerivedMapBatches.Batch064.certificate5160.a := by decide
theorem secondLink1472 : DerivedMapBatches.Batch010.certificate855.algebra.mat = DerivedMapBatches.Batch064.certificate5160.b := by decide
theorem firstValid1472 : DerivedMapBatches.Batch010.certificate854.Valid := DerivedMapBatches.Batch010.certificate854valid
theorem secondValid1472 : DerivedMapBatches.Batch010.certificate855.Valid := DerivedMapBatches.Batch010.certificate855valid
theorem outputValid1472 : DerivedMapBatches.Batch064.certificate5160.Valid := DerivedMapBatches.Batch064.certificate5160valid
theorem linkedComposition1472 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5160.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5160.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat x) := by
  rw [firstLink1472, secondLink1472]
  exact DerivedMapBatches.Batch064.certificate5160valid.2 x
theorem rhsLink1472 : DerivedMapBatches.Batch064.certificate5160.c = DerivedMapBatches.Batch010.certificate856.c := by decide
theorem rhsValid1472 : DerivedMapBatches.Batch010.certificate856.Valid := DerivedMapBatches.Batch010.certificate856valid
theorem linkedCommutativity1472 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5160.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate856.c x := by
  exact (linkedComposition1472 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1472)
theorem firstLink1473 : DerivedMapBatches.Batch010.certificate857.algebra.mat = DerivedMapBatches.Batch064.certificate5161.a := by decide
theorem secondLink1473 : DerivedMapBatches.Batch010.certificate858.algebra.mat = DerivedMapBatches.Batch064.certificate5161.b := by decide
theorem firstValid1473 : DerivedMapBatches.Batch010.certificate857.Valid := DerivedMapBatches.Batch010.certificate857valid
theorem secondValid1473 : DerivedMapBatches.Batch010.certificate858.Valid := DerivedMapBatches.Batch010.certificate858valid
theorem outputValid1473 : DerivedMapBatches.Batch064.certificate5161.Valid := DerivedMapBatches.Batch064.certificate5161valid
theorem linkedComposition1473 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5161.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat x) := by
  rw [firstLink1473, secondLink1473]
  exact DerivedMapBatches.Batch064.certificate5161valid.2 x
theorem rhsLink1473 : DerivedMapBatches.Batch064.certificate5161.c = DerivedMapBatches.Batch010.certificate859.c := by decide
theorem rhsValid1473 : DerivedMapBatches.Batch010.certificate859.Valid := DerivedMapBatches.Batch010.certificate859valid
theorem linkedCommutativity1473 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate859.c x := by
  exact (linkedComposition1473 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1473)
theorem firstLink1474 : DerivedMapBatches.Batch010.certificate860.algebra.mat = DerivedMapBatches.Batch064.certificate5162.a := by decide
theorem secondLink1474 : DerivedMapBatches.Batch010.certificate861.algebra.mat = DerivedMapBatches.Batch064.certificate5162.b := by decide
theorem firstValid1474 : DerivedMapBatches.Batch010.certificate860.Valid := DerivedMapBatches.Batch010.certificate860valid
theorem secondValid1474 : DerivedMapBatches.Batch010.certificate861.Valid := DerivedMapBatches.Batch010.certificate861valid
theorem outputValid1474 : DerivedMapBatches.Batch064.certificate5162.Valid := DerivedMapBatches.Batch064.certificate5162valid
theorem linkedComposition1474 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5162.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5162.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate861.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate860.algebra.mat x) := by
  rw [firstLink1474, secondLink1474]
  exact DerivedMapBatches.Batch064.certificate5162valid.2 x
theorem rhsLink1474 : DerivedMapBatches.Batch064.certificate5162.c = DerivedMapBatches.Batch010.certificate862.c := by decide
theorem rhsValid1474 : DerivedMapBatches.Batch010.certificate862.Valid := DerivedMapBatches.Batch010.certificate862valid
theorem linkedCommutativity1474 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5162.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate861.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate860.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate862.c x := by
  exact (linkedComposition1474 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1474)
theorem firstLink1475 : DerivedMapBatches.Batch010.certificate863.algebra.mat = DerivedMapBatches.Batch064.certificate5163.a := by decide
theorem secondLink1475 : DerivedMapBatches.Batch010.certificate864.algebra.mat = DerivedMapBatches.Batch064.certificate5163.b := by decide
theorem firstValid1475 : DerivedMapBatches.Batch010.certificate863.Valid := DerivedMapBatches.Batch010.certificate863valid
theorem secondValid1475 : DerivedMapBatches.Batch010.certificate864.Valid := DerivedMapBatches.Batch010.certificate864valid
theorem outputValid1475 : DerivedMapBatches.Batch064.certificate5163.Valid := DerivedMapBatches.Batch064.certificate5163valid
theorem linkedComposition1475 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5163.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5163.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat x) := by
  rw [firstLink1475, secondLink1475]
  exact DerivedMapBatches.Batch064.certificate5163valid.2 x
theorem rhsLink1475 : DerivedMapBatches.Batch064.certificate5163.c = DerivedMapBatches.Batch010.certificate865.c := by decide
theorem rhsValid1475 : DerivedMapBatches.Batch010.certificate865.Valid := DerivedMapBatches.Batch010.certificate865valid
theorem linkedCommutativity1475 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5163.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate865.c x := by
  exact (linkedComposition1475 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1475)
theorem firstLink1476 : DerivedMapBatches.Batch010.certificate866.algebra.mat = DerivedMapBatches.Batch064.certificate5164.a := by decide
theorem secondLink1476 : DerivedMapBatches.Batch010.certificate867.algebra.mat = DerivedMapBatches.Batch064.certificate5164.b := by decide
theorem firstValid1476 : DerivedMapBatches.Batch010.certificate866.Valid := DerivedMapBatches.Batch010.certificate866valid
theorem secondValid1476 : DerivedMapBatches.Batch010.certificate867.Valid := DerivedMapBatches.Batch010.certificate867valid
theorem outputValid1476 : DerivedMapBatches.Batch064.certificate5164.Valid := DerivedMapBatches.Batch064.certificate5164valid
theorem linkedComposition1476 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5164.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5164.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate867.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate866.algebra.mat x) := by
  rw [firstLink1476, secondLink1476]
  exact DerivedMapBatches.Batch064.certificate5164valid.2 x
theorem rhsLink1476 : DerivedMapBatches.Batch064.certificate5164.c = DerivedMapBatches.Batch010.certificate868.c := by decide
theorem rhsValid1476 : DerivedMapBatches.Batch010.certificate868.Valid := DerivedMapBatches.Batch010.certificate868valid
theorem linkedCommutativity1476 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5164.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate867.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate866.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate868.c x := by
  exact (linkedComposition1476 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1476)
theorem firstLink1477 : DerivedMapBatches.Batch010.certificate869.algebra.mat = DerivedMapBatches.Batch064.certificate5165.a := by decide
theorem secondLink1477 : DerivedMapBatches.Batch010.certificate870.algebra.mat = DerivedMapBatches.Batch064.certificate5165.b := by decide
theorem firstValid1477 : DerivedMapBatches.Batch010.certificate869.Valid := DerivedMapBatches.Batch010.certificate869valid
theorem secondValid1477 : DerivedMapBatches.Batch010.certificate870.Valid := DerivedMapBatches.Batch010.certificate870valid
theorem outputValid1477 : DerivedMapBatches.Batch064.certificate5165.Valid := DerivedMapBatches.Batch064.certificate5165valid
theorem linkedComposition1477 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5165.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5165.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate870.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate869.algebra.mat x) := by
  rw [firstLink1477, secondLink1477]
  exact DerivedMapBatches.Batch064.certificate5165valid.2 x
theorem rhsLink1477 : DerivedMapBatches.Batch064.certificate5165.c = DerivedMapBatches.Batch010.certificate871.c := by decide
theorem rhsValid1477 : DerivedMapBatches.Batch010.certificate871.Valid := DerivedMapBatches.Batch010.certificate871valid
theorem linkedCommutativity1477 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5165.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate870.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate869.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate871.c x := by
  exact (linkedComposition1477 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1477)
theorem firstLink1478 : DerivedMapBatches.Batch010.certificate872.algebra.mat = DerivedMapBatches.Batch064.certificate5166.a := by decide
theorem secondLink1478 : DerivedMapBatches.Batch010.certificate873.algebra.mat = DerivedMapBatches.Batch064.certificate5166.b := by decide
theorem firstValid1478 : DerivedMapBatches.Batch010.certificate872.Valid := DerivedMapBatches.Batch010.certificate872valid
theorem secondValid1478 : DerivedMapBatches.Batch010.certificate873.Valid := DerivedMapBatches.Batch010.certificate873valid
theorem outputValid1478 : DerivedMapBatches.Batch064.certificate5166.Valid := DerivedMapBatches.Batch064.certificate5166valid
theorem linkedComposition1478 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5166.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5166.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat x) := by
  rw [firstLink1478, secondLink1478]
  exact DerivedMapBatches.Batch064.certificate5166valid.2 x
theorem rhsLink1478 : DerivedMapBatches.Batch064.certificate5166.c = DerivedMapBatches.Batch010.certificate874.c := by decide
theorem rhsValid1478 : DerivedMapBatches.Batch010.certificate874.Valid := DerivedMapBatches.Batch010.certificate874valid
theorem linkedCommutativity1478 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5166.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate874.c x := by
  exact (linkedComposition1478 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1478)
theorem firstLink1479 : DerivedMapBatches.Batch010.certificate875.algebra.mat = DerivedMapBatches.Batch064.certificate5167.a := by decide
theorem secondLink1479 : DerivedMapBatches.Batch010.certificate876.algebra.mat = DerivedMapBatches.Batch064.certificate5167.b := by decide
theorem firstValid1479 : DerivedMapBatches.Batch010.certificate875.Valid := DerivedMapBatches.Batch010.certificate875valid
theorem secondValid1479 : DerivedMapBatches.Batch010.certificate876.Valid := DerivedMapBatches.Batch010.certificate876valid
theorem outputValid1479 : DerivedMapBatches.Batch064.certificate5167.Valid := DerivedMapBatches.Batch064.certificate5167valid
theorem linkedComposition1479 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5167.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate876.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate875.algebra.mat x) := by
  rw [firstLink1479, secondLink1479]
  exact DerivedMapBatches.Batch064.certificate5167valid.2 x
theorem rhsLink1479 : DerivedMapBatches.Batch064.certificate5167.c = DerivedMapBatches.Batch010.certificate877.c := by decide
theorem rhsValid1479 : DerivedMapBatches.Batch010.certificate877.Valid := DerivedMapBatches.Batch010.certificate877valid
theorem linkedCommutativity1479 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate876.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate875.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch010.certificate877.c x := by
  exact (linkedComposition1479 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1479)
theorem firstLink1480 : DerivedMapBatches.Batch010.certificate878.algebra.mat = DerivedMapBatches.Batch064.certificate5168.a := by decide
theorem secondLink1480 : DerivedMapBatches.Batch010.certificate879.algebra.mat = DerivedMapBatches.Batch064.certificate5168.b := by decide
theorem firstValid1480 : DerivedMapBatches.Batch010.certificate878.Valid := DerivedMapBatches.Batch010.certificate878valid
theorem secondValid1480 : DerivedMapBatches.Batch010.certificate879.Valid := DerivedMapBatches.Batch010.certificate879valid
theorem outputValid1480 : DerivedMapBatches.Batch064.certificate5168.Valid := DerivedMapBatches.Batch064.certificate5168valid
theorem linkedComposition1480 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5168.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5168.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat x) := by
  rw [firstLink1480, secondLink1480]
  exact DerivedMapBatches.Batch064.certificate5168valid.2 x
theorem rhsLink1480 : DerivedMapBatches.Batch064.certificate5168.c = DerivedMapBatches.Batch011.certificate880.c := by decide
theorem rhsValid1480 : DerivedMapBatches.Batch011.certificate880.Valid := DerivedMapBatches.Batch011.certificate880valid
theorem linkedCommutativity1480 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5168.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate880.c x := by
  exact (linkedComposition1480 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1480)
theorem firstLink1481 : DerivedMapBatches.Batch011.certificate881.algebra.mat = DerivedMapBatches.Batch064.certificate5169.a := by decide
theorem secondLink1481 : DerivedMapBatches.Batch011.certificate882.algebra.mat = DerivedMapBatches.Batch064.certificate5169.b := by decide
theorem firstValid1481 : DerivedMapBatches.Batch011.certificate881.Valid := DerivedMapBatches.Batch011.certificate881valid
theorem secondValid1481 : DerivedMapBatches.Batch011.certificate882.Valid := DerivedMapBatches.Batch011.certificate882valid
theorem outputValid1481 : DerivedMapBatches.Batch064.certificate5169.Valid := DerivedMapBatches.Batch064.certificate5169valid
theorem linkedComposition1481 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5169.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5169.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate882.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate881.algebra.mat x) := by
  rw [firstLink1481, secondLink1481]
  exact DerivedMapBatches.Batch064.certificate5169valid.2 x
theorem rhsLink1481 : DerivedMapBatches.Batch064.certificate5169.c = DerivedMapBatches.Batch011.certificate883.c := by decide
theorem rhsValid1481 : DerivedMapBatches.Batch011.certificate883.Valid := DerivedMapBatches.Batch011.certificate883valid
theorem linkedCommutativity1481 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5169.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate882.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate881.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate883.c x := by
  exact (linkedComposition1481 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1481)
theorem firstLink1482 : DerivedMapBatches.Batch011.certificate884.algebra.mat = DerivedMapBatches.Batch064.certificate5170.a := by decide
theorem secondLink1482 : DerivedMapBatches.Batch011.certificate885.algebra.mat = DerivedMapBatches.Batch064.certificate5170.b := by decide
theorem firstValid1482 : DerivedMapBatches.Batch011.certificate884.Valid := DerivedMapBatches.Batch011.certificate884valid
theorem secondValid1482 : DerivedMapBatches.Batch011.certificate885.Valid := DerivedMapBatches.Batch011.certificate885valid
theorem outputValid1482 : DerivedMapBatches.Batch064.certificate5170.Valid := DerivedMapBatches.Batch064.certificate5170valid
theorem linkedComposition1482 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5170.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5170.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat x) := by
  rw [firstLink1482, secondLink1482]
  exact DerivedMapBatches.Batch064.certificate5170valid.2 x
theorem rhsLink1482 : DerivedMapBatches.Batch064.certificate5170.c = DerivedMapBatches.Batch011.certificate886.c := by decide
theorem rhsValid1482 : DerivedMapBatches.Batch011.certificate886.Valid := DerivedMapBatches.Batch011.certificate886valid
theorem linkedCommutativity1482 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5170.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate886.c x := by
  exact (linkedComposition1482 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1482)
theorem firstLink1483 : DerivedMapBatches.Batch011.certificate887.algebra.mat = DerivedMapBatches.Batch064.certificate5171.a := by decide
theorem secondLink1483 : DerivedMapBatches.Batch011.certificate888.algebra.mat = DerivedMapBatches.Batch064.certificate5171.b := by decide
theorem firstValid1483 : DerivedMapBatches.Batch011.certificate887.Valid := DerivedMapBatches.Batch011.certificate887valid
theorem secondValid1483 : DerivedMapBatches.Batch011.certificate888.Valid := DerivedMapBatches.Batch011.certificate888valid
theorem outputValid1483 : DerivedMapBatches.Batch064.certificate5171.Valid := DerivedMapBatches.Batch064.certificate5171valid
theorem linkedComposition1483 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5171.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5171.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate888.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate887.algebra.mat x) := by
  rw [firstLink1483, secondLink1483]
  exact DerivedMapBatches.Batch064.certificate5171valid.2 x
theorem rhsLink1483 : DerivedMapBatches.Batch064.certificate5171.c = DerivedMapBatches.Batch011.certificate889.c := by decide
theorem rhsValid1483 : DerivedMapBatches.Batch011.certificate889.Valid := DerivedMapBatches.Batch011.certificate889valid
theorem linkedCommutativity1483 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5171.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate888.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate887.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate889.c x := by
  exact (linkedComposition1483 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1483)
theorem firstLink1484 : DerivedMapBatches.Batch011.certificate890.algebra.mat = DerivedMapBatches.Batch064.certificate5172.a := by decide
theorem secondLink1484 : DerivedMapBatches.Batch011.certificate891.algebra.mat = DerivedMapBatches.Batch064.certificate5172.b := by decide
theorem firstValid1484 : DerivedMapBatches.Batch011.certificate890.Valid := DerivedMapBatches.Batch011.certificate890valid
theorem secondValid1484 : DerivedMapBatches.Batch011.certificate891.Valid := DerivedMapBatches.Batch011.certificate891valid
theorem outputValid1484 : DerivedMapBatches.Batch064.certificate5172.Valid := DerivedMapBatches.Batch064.certificate5172valid
theorem linkedComposition1484 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5172.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5172.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate891.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate890.algebra.mat x) := by
  rw [firstLink1484, secondLink1484]
  exact DerivedMapBatches.Batch064.certificate5172valid.2 x
theorem rhsLink1484 : DerivedMapBatches.Batch064.certificate5172.c = DerivedMapBatches.Batch011.certificate892.c := by decide
theorem rhsValid1484 : DerivedMapBatches.Batch011.certificate892.Valid := DerivedMapBatches.Batch011.certificate892valid
theorem linkedCommutativity1484 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5172.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate891.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate890.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate892.c x := by
  exact (linkedComposition1484 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1484)
theorem firstLink1485 : DerivedMapBatches.Batch011.certificate893.algebra.mat = DerivedMapBatches.Batch064.certificate5173.a := by decide
theorem secondLink1485 : DerivedMapBatches.Batch011.certificate894.algebra.mat = DerivedMapBatches.Batch064.certificate5173.b := by decide
theorem firstValid1485 : DerivedMapBatches.Batch011.certificate893.Valid := DerivedMapBatches.Batch011.certificate893valid
theorem secondValid1485 : DerivedMapBatches.Batch011.certificate894.Valid := DerivedMapBatches.Batch011.certificate894valid
theorem outputValid1485 : DerivedMapBatches.Batch064.certificate5173.Valid := DerivedMapBatches.Batch064.certificate5173valid
theorem linkedComposition1485 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5173.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5173.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate894.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate893.algebra.mat x) := by
  rw [firstLink1485, secondLink1485]
  exact DerivedMapBatches.Batch064.certificate5173valid.2 x
theorem rhsLink1485 : DerivedMapBatches.Batch064.certificate5173.c = DerivedMapBatches.Batch011.certificate895.c := by decide
theorem rhsValid1485 : DerivedMapBatches.Batch011.certificate895.Valid := DerivedMapBatches.Batch011.certificate895valid
theorem linkedCommutativity1485 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5173.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate894.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate893.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate895.c x := by
  exact (linkedComposition1485 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1485)
theorem firstLink1486 : DerivedMapBatches.Batch011.certificate896.algebra.mat = DerivedMapBatches.Batch064.certificate5174.a := by decide
theorem secondLink1486 : DerivedMapBatches.Batch011.certificate897.algebra.mat = DerivedMapBatches.Batch064.certificate5174.b := by decide
theorem firstValid1486 : DerivedMapBatches.Batch011.certificate896.Valid := DerivedMapBatches.Batch011.certificate896valid
theorem secondValid1486 : DerivedMapBatches.Batch011.certificate897.Valid := DerivedMapBatches.Batch011.certificate897valid
theorem outputValid1486 : DerivedMapBatches.Batch064.certificate5174.Valid := DerivedMapBatches.Batch064.certificate5174valid
theorem linkedComposition1486 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5174.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5174.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate897.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate896.algebra.mat x) := by
  rw [firstLink1486, secondLink1486]
  exact DerivedMapBatches.Batch064.certificate5174valid.2 x
theorem rhsLink1486 : DerivedMapBatches.Batch064.certificate5174.c = DerivedMapBatches.Batch011.certificate898.c := by decide
theorem rhsValid1486 : DerivedMapBatches.Batch011.certificate898.Valid := DerivedMapBatches.Batch011.certificate898valid
theorem linkedCommutativity1486 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5174.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate897.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate896.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate898.c x := by
  exact (linkedComposition1486 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1486)
theorem firstLink1487 : DerivedMapBatches.Batch011.certificate899.algebra.mat = DerivedMapBatches.Batch064.certificate5175.a := by decide
theorem secondLink1487 : DerivedMapBatches.Batch011.certificate900.algebra.mat = DerivedMapBatches.Batch064.certificate5175.b := by decide
theorem firstValid1487 : DerivedMapBatches.Batch011.certificate899.Valid := DerivedMapBatches.Batch011.certificate899valid
theorem secondValid1487 : DerivedMapBatches.Batch011.certificate900.Valid := DerivedMapBatches.Batch011.certificate900valid
theorem outputValid1487 : DerivedMapBatches.Batch064.certificate5175.Valid := DerivedMapBatches.Batch064.certificate5175valid
theorem linkedComposition1487 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5175.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5175.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate900.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate899.algebra.mat x) := by
  rw [firstLink1487, secondLink1487]
  exact DerivedMapBatches.Batch064.certificate5175valid.2 x
theorem rhsLink1487 : DerivedMapBatches.Batch064.certificate5175.c = DerivedMapBatches.Batch011.certificate901.c := by decide
theorem rhsValid1487 : DerivedMapBatches.Batch011.certificate901.Valid := DerivedMapBatches.Batch011.certificate901valid
theorem linkedCommutativity1487 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5175.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate900.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate899.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate901.c x := by
  exact (linkedComposition1487 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1487)
theorem firstLink1488 : DerivedMapBatches.Batch011.certificate902.algebra.mat = DerivedMapBatches.Batch064.certificate5176.a := by decide
theorem secondLink1488 : DerivedMapBatches.Batch011.certificate903.algebra.mat = DerivedMapBatches.Batch064.certificate5176.b := by decide
theorem firstValid1488 : DerivedMapBatches.Batch011.certificate902.Valid := DerivedMapBatches.Batch011.certificate902valid
theorem secondValid1488 : DerivedMapBatches.Batch011.certificate903.Valid := DerivedMapBatches.Batch011.certificate903valid
theorem outputValid1488 : DerivedMapBatches.Batch064.certificate5176.Valid := DerivedMapBatches.Batch064.certificate5176valid
theorem linkedComposition1488 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5176.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5176.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat x) := by
  rw [firstLink1488, secondLink1488]
  exact DerivedMapBatches.Batch064.certificate5176valid.2 x
theorem rhsLink1488 : DerivedMapBatches.Batch064.certificate5176.c = DerivedMapBatches.Batch011.certificate904.c := by decide
theorem rhsValid1488 : DerivedMapBatches.Batch011.certificate904.Valid := DerivedMapBatches.Batch011.certificate904valid
theorem linkedCommutativity1488 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5176.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate904.c x := by
  exact (linkedComposition1488 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1488)
theorem firstLink1489 : DerivedMapBatches.Batch011.certificate905.algebra.mat = DerivedMapBatches.Batch064.certificate5177.a := by decide
theorem secondLink1489 : DerivedMapBatches.Batch011.certificate906.algebra.mat = DerivedMapBatches.Batch064.certificate5177.b := by decide
theorem firstValid1489 : DerivedMapBatches.Batch011.certificate905.Valid := DerivedMapBatches.Batch011.certificate905valid
theorem secondValid1489 : DerivedMapBatches.Batch011.certificate906.Valid := DerivedMapBatches.Batch011.certificate906valid
theorem outputValid1489 : DerivedMapBatches.Batch064.certificate5177.Valid := DerivedMapBatches.Batch064.certificate5177valid
theorem linkedComposition1489 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5177.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5177.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat x) := by
  rw [firstLink1489, secondLink1489]
  exact DerivedMapBatches.Batch064.certificate5177valid.2 x
theorem rhsLink1489 : DerivedMapBatches.Batch064.certificate5177.c = DerivedMapBatches.Batch011.certificate907.c := by decide
theorem rhsValid1489 : DerivedMapBatches.Batch011.certificate907.Valid := DerivedMapBatches.Batch011.certificate907valid
theorem linkedCommutativity1489 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5177.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate907.c x := by
  exact (linkedComposition1489 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1489)
theorem firstLink1490 : DerivedMapBatches.Batch011.certificate908.algebra.mat = DerivedMapBatches.Batch064.certificate5178.a := by decide
theorem secondLink1490 : DerivedMapBatches.Batch011.certificate909.algebra.mat = DerivedMapBatches.Batch064.certificate5178.b := by decide
theorem firstValid1490 : DerivedMapBatches.Batch011.certificate908.Valid := DerivedMapBatches.Batch011.certificate908valid
theorem secondValid1490 : DerivedMapBatches.Batch011.certificate909.Valid := DerivedMapBatches.Batch011.certificate909valid
theorem outputValid1490 : DerivedMapBatches.Batch064.certificate5178.Valid := DerivedMapBatches.Batch064.certificate5178valid
theorem linkedComposition1490 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5178.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5178.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat x) := by
  rw [firstLink1490, secondLink1490]
  exact DerivedMapBatches.Batch064.certificate5178valid.2 x
theorem rhsLink1490 : DerivedMapBatches.Batch064.certificate5178.c = DerivedMapBatches.Batch011.certificate910.c := by decide
theorem rhsValid1490 : DerivedMapBatches.Batch011.certificate910.Valid := DerivedMapBatches.Batch011.certificate910valid
theorem linkedCommutativity1490 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5178.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate910.c x := by
  exact (linkedComposition1490 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1490)
theorem firstLink1491 : DerivedMapBatches.Batch011.certificate911.algebra.mat = DerivedMapBatches.Batch064.certificate5179.a := by decide
theorem secondLink1491 : DerivedMapBatches.Batch011.certificate912.algebra.mat = DerivedMapBatches.Batch064.certificate5179.b := by decide
theorem firstValid1491 : DerivedMapBatches.Batch011.certificate911.Valid := DerivedMapBatches.Batch011.certificate911valid
theorem secondValid1491 : DerivedMapBatches.Batch011.certificate912.Valid := DerivedMapBatches.Batch011.certificate912valid
theorem outputValid1491 : DerivedMapBatches.Batch064.certificate5179.Valid := DerivedMapBatches.Batch064.certificate5179valid
theorem linkedComposition1491 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5179.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5179.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate912.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate911.algebra.mat x) := by
  rw [firstLink1491, secondLink1491]
  exact DerivedMapBatches.Batch064.certificate5179valid.2 x
theorem rhsLink1491 : DerivedMapBatches.Batch064.certificate5179.c = DerivedMapBatches.Batch011.certificate913.c := by decide
theorem rhsValid1491 : DerivedMapBatches.Batch011.certificate913.Valid := DerivedMapBatches.Batch011.certificate913valid
theorem linkedCommutativity1491 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5179.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate912.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate911.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate913.c x := by
  exact (linkedComposition1491 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1491)
theorem firstLink1492 : DerivedMapBatches.Batch011.certificate914.algebra.mat = DerivedMapBatches.Batch064.certificate5180.a := by decide
theorem secondLink1492 : DerivedMapBatches.Batch011.certificate915.algebra.mat = DerivedMapBatches.Batch064.certificate5180.b := by decide
theorem firstValid1492 : DerivedMapBatches.Batch011.certificate914.Valid := DerivedMapBatches.Batch011.certificate914valid
theorem secondValid1492 : DerivedMapBatches.Batch011.certificate915.Valid := DerivedMapBatches.Batch011.certificate915valid
theorem outputValid1492 : DerivedMapBatches.Batch064.certificate5180.Valid := DerivedMapBatches.Batch064.certificate5180valid
theorem linkedComposition1492 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5180.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5180.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat x) := by
  rw [firstLink1492, secondLink1492]
  exact DerivedMapBatches.Batch064.certificate5180valid.2 x
theorem rhsLink1492 : DerivedMapBatches.Batch064.certificate5180.c = DerivedMapBatches.Batch011.certificate916.c := by decide
theorem rhsValid1492 : DerivedMapBatches.Batch011.certificate916.Valid := DerivedMapBatches.Batch011.certificate916valid
theorem linkedCommutativity1492 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5180.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate916.c x := by
  exact (linkedComposition1492 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1492)
theorem firstLink1493 : DerivedMapBatches.Batch011.certificate917.algebra.mat = DerivedMapBatches.Batch064.certificate5181.a := by decide
theorem secondLink1493 : DerivedMapBatches.Batch011.certificate918.algebra.mat = DerivedMapBatches.Batch064.certificate5181.b := by decide
theorem firstValid1493 : DerivedMapBatches.Batch011.certificate917.Valid := DerivedMapBatches.Batch011.certificate917valid
theorem secondValid1493 : DerivedMapBatches.Batch011.certificate918.Valid := DerivedMapBatches.Batch011.certificate918valid
theorem outputValid1493 : DerivedMapBatches.Batch064.certificate5181.Valid := DerivedMapBatches.Batch064.certificate5181valid
theorem linkedComposition1493 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5181.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5181.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate918.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate917.algebra.mat x) := by
  rw [firstLink1493, secondLink1493]
  exact DerivedMapBatches.Batch064.certificate5181valid.2 x
theorem rhsLink1493 : DerivedMapBatches.Batch064.certificate5181.c = DerivedMapBatches.Batch011.certificate919.c := by decide
theorem rhsValid1493 : DerivedMapBatches.Batch011.certificate919.Valid := DerivedMapBatches.Batch011.certificate919valid
theorem linkedCommutativity1493 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5181.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate918.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate917.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate919.c x := by
  exact (linkedComposition1493 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1493)
theorem firstLink1494 : DerivedMapBatches.Batch011.certificate920.algebra.mat = DerivedMapBatches.Batch064.certificate5182.a := by decide
theorem secondLink1494 : DerivedMapBatches.Batch011.certificate921.algebra.mat = DerivedMapBatches.Batch064.certificate5182.b := by decide
theorem firstValid1494 : DerivedMapBatches.Batch011.certificate920.Valid := DerivedMapBatches.Batch011.certificate920valid
theorem secondValid1494 : DerivedMapBatches.Batch011.certificate921.Valid := DerivedMapBatches.Batch011.certificate921valid
theorem outputValid1494 : DerivedMapBatches.Batch064.certificate5182.Valid := DerivedMapBatches.Batch064.certificate5182valid
theorem linkedComposition1494 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5182.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5182.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat x) := by
  rw [firstLink1494, secondLink1494]
  exact DerivedMapBatches.Batch064.certificate5182valid.2 x
theorem rhsLink1494 : DerivedMapBatches.Batch064.certificate5182.c = DerivedMapBatches.Batch011.certificate922.c := by decide
theorem rhsValid1494 : DerivedMapBatches.Batch011.certificate922.Valid := DerivedMapBatches.Batch011.certificate922valid
theorem linkedCommutativity1494 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5182.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate922.c x := by
  exact (linkedComposition1494 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1494)
theorem firstLink1495 : DerivedMapBatches.Batch011.certificate923.algebra.mat = DerivedMapBatches.Batch064.certificate5183.a := by decide
theorem secondLink1495 : DerivedMapBatches.Batch011.certificate924.algebra.mat = DerivedMapBatches.Batch064.certificate5183.b := by decide
theorem firstValid1495 : DerivedMapBatches.Batch011.certificate923.Valid := DerivedMapBatches.Batch011.certificate923valid
theorem secondValid1495 : DerivedMapBatches.Batch011.certificate924.Valid := DerivedMapBatches.Batch011.certificate924valid
theorem outputValid1495 : DerivedMapBatches.Batch064.certificate5183.Valid := DerivedMapBatches.Batch064.certificate5183valid
theorem linkedComposition1495 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5183.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5183.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat x) := by
  rw [firstLink1495, secondLink1495]
  exact DerivedMapBatches.Batch064.certificate5183valid.2 x
theorem rhsLink1495 : DerivedMapBatches.Batch064.certificate5183.c = DerivedMapBatches.Batch011.certificate925.c := by decide
theorem rhsValid1495 : DerivedMapBatches.Batch011.certificate925.Valid := DerivedMapBatches.Batch011.certificate925valid
theorem linkedCommutativity1495 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5183.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate925.c x := by
  exact (linkedComposition1495 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1495)
theorem firstLink1496 : DerivedMapBatches.Batch011.certificate926.algebra.mat = DerivedMapBatches.Batch064.certificate5184.a := by decide
theorem secondLink1496 : DerivedMapBatches.Batch011.certificate927.algebra.mat = DerivedMapBatches.Batch064.certificate5184.b := by decide
theorem firstValid1496 : DerivedMapBatches.Batch011.certificate926.Valid := DerivedMapBatches.Batch011.certificate926valid
theorem secondValid1496 : DerivedMapBatches.Batch011.certificate927.Valid := DerivedMapBatches.Batch011.certificate927valid
theorem outputValid1496 : DerivedMapBatches.Batch064.certificate5184.Valid := DerivedMapBatches.Batch064.certificate5184valid
theorem linkedComposition1496 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5184.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5184.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate927.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate926.algebra.mat x) := by
  rw [firstLink1496, secondLink1496]
  exact DerivedMapBatches.Batch064.certificate5184valid.2 x
theorem rhsLink1496 : DerivedMapBatches.Batch064.certificate5184.c = DerivedMapBatches.Batch011.certificate928.c := by decide
theorem rhsValid1496 : DerivedMapBatches.Batch011.certificate928.Valid := DerivedMapBatches.Batch011.certificate928valid
theorem linkedCommutativity1496 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5184.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate927.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate926.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate928.c x := by
  exact (linkedComposition1496 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1496)
theorem firstLink1497 : DerivedMapBatches.Batch011.certificate929.algebra.mat = DerivedMapBatches.Batch064.certificate5185.a := by decide
theorem secondLink1497 : DerivedMapBatches.Batch011.certificate930.algebra.mat = DerivedMapBatches.Batch064.certificate5185.b := by decide
theorem firstValid1497 : DerivedMapBatches.Batch011.certificate929.Valid := DerivedMapBatches.Batch011.certificate929valid
theorem secondValid1497 : DerivedMapBatches.Batch011.certificate930.Valid := DerivedMapBatches.Batch011.certificate930valid
theorem outputValid1497 : DerivedMapBatches.Batch064.certificate5185.Valid := DerivedMapBatches.Batch064.certificate5185valid
theorem linkedComposition1497 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5185.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5185.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat x) := by
  rw [firstLink1497, secondLink1497]
  exact DerivedMapBatches.Batch064.certificate5185valid.2 x
theorem rhsLink1497 : DerivedMapBatches.Batch064.certificate5185.c = DerivedMapBatches.Batch011.certificate931.c := by decide
theorem rhsValid1497 : DerivedMapBatches.Batch011.certificate931.Valid := DerivedMapBatches.Batch011.certificate931valid
theorem linkedCommutativity1497 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5185.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate931.c x := by
  exact (linkedComposition1497 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1497)
theorem firstLink1498 : DerivedMapBatches.Batch011.certificate932.algebra.mat = DerivedMapBatches.Batch064.certificate5186.a := by decide
theorem secondLink1498 : DerivedMapBatches.Batch011.certificate933.algebra.mat = DerivedMapBatches.Batch064.certificate5186.b := by decide
theorem firstValid1498 : DerivedMapBatches.Batch011.certificate932.Valid := DerivedMapBatches.Batch011.certificate932valid
theorem secondValid1498 : DerivedMapBatches.Batch011.certificate933.Valid := DerivedMapBatches.Batch011.certificate933valid
theorem outputValid1498 : DerivedMapBatches.Batch064.certificate5186.Valid := DerivedMapBatches.Batch064.certificate5186valid
theorem linkedComposition1498 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5186.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5186.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat x) := by
  rw [firstLink1498, secondLink1498]
  exact DerivedMapBatches.Batch064.certificate5186valid.2 x
theorem rhsLink1498 : DerivedMapBatches.Batch064.certificate5186.c = DerivedMapBatches.Batch011.certificate934.c := by decide
theorem rhsValid1498 : DerivedMapBatches.Batch011.certificate934.Valid := DerivedMapBatches.Batch011.certificate934valid
theorem linkedCommutativity1498 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5186.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate934.c x := by
  exact (linkedComposition1498 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1498)
theorem firstLink1499 : DerivedMapBatches.Batch011.certificate935.algebra.mat = DerivedMapBatches.Batch064.certificate5187.a := by decide
theorem secondLink1499 : DerivedMapBatches.Batch011.certificate936.algebra.mat = DerivedMapBatches.Batch064.certificate5187.b := by decide
theorem firstValid1499 : DerivedMapBatches.Batch011.certificate935.Valid := DerivedMapBatches.Batch011.certificate935valid
theorem secondValid1499 : DerivedMapBatches.Batch011.certificate936.Valid := DerivedMapBatches.Batch011.certificate936valid
theorem outputValid1499 : DerivedMapBatches.Batch064.certificate5187.Valid := DerivedMapBatches.Batch064.certificate5187valid
theorem linkedComposition1499 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5187.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5187.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat x) := by
  rw [firstLink1499, secondLink1499]
  exact DerivedMapBatches.Batch064.certificate5187valid.2 x
theorem rhsLink1499 : DerivedMapBatches.Batch064.certificate5187.c = DerivedMapBatches.Batch011.certificate937.c := by decide
theorem rhsValid1499 : DerivedMapBatches.Batch011.certificate937.Valid := DerivedMapBatches.Batch011.certificate937valid
theorem linkedCommutativity1499 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5187.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate937.c x := by
  exact (linkedComposition1499 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1499)
end DerivedLinkageBatches.Batch029
