import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch064
import DerivedMapBatches.Batch065
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch030
theorem firstLink1500 : DerivedMapBatches.Batch011.certificate938.algebra.mat = DerivedMapBatches.Batch064.certificate5188.a := by decide
theorem secondLink1500 : DerivedMapBatches.Batch011.certificate939.algebra.mat = DerivedMapBatches.Batch064.certificate5188.b := by decide
theorem firstValid1500 : DerivedMapBatches.Batch011.certificate938.Valid := DerivedMapBatches.Batch011.certificate938valid
theorem secondValid1500 : DerivedMapBatches.Batch011.certificate939.Valid := DerivedMapBatches.Batch011.certificate939valid
theorem outputValid1500 : DerivedMapBatches.Batch064.certificate5188.Valid := DerivedMapBatches.Batch064.certificate5188valid
theorem linkedComposition1500 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5188.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5188.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate939.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate938.algebra.mat x) := by
  rw [firstLink1500, secondLink1500]
  exact DerivedMapBatches.Batch064.certificate5188valid.2 x
theorem rhsLink1500 : DerivedMapBatches.Batch064.certificate5188.c = DerivedMapBatches.Batch011.certificate940.c := by decide
theorem rhsValid1500 : DerivedMapBatches.Batch011.certificate940.Valid := DerivedMapBatches.Batch011.certificate940valid
theorem linkedCommutativity1500 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5188.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate939.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate938.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate940.c x := by
  exact (linkedComposition1500 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1500)
theorem firstLink1501 : DerivedMapBatches.Batch011.certificate941.algebra.mat = DerivedMapBatches.Batch064.certificate5189.a := by decide
theorem secondLink1501 : DerivedMapBatches.Batch011.certificate942.algebra.mat = DerivedMapBatches.Batch064.certificate5189.b := by decide
theorem firstValid1501 : DerivedMapBatches.Batch011.certificate941.Valid := DerivedMapBatches.Batch011.certificate941valid
theorem secondValid1501 : DerivedMapBatches.Batch011.certificate942.Valid := DerivedMapBatches.Batch011.certificate942valid
theorem outputValid1501 : DerivedMapBatches.Batch064.certificate5189.Valid := DerivedMapBatches.Batch064.certificate5189valid
theorem linkedComposition1501 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5189.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5189.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat x) := by
  rw [firstLink1501, secondLink1501]
  exact DerivedMapBatches.Batch064.certificate5189valid.2 x
theorem rhsLink1501 : DerivedMapBatches.Batch064.certificate5189.c = DerivedMapBatches.Batch011.certificate943.c := by decide
theorem rhsValid1501 : DerivedMapBatches.Batch011.certificate943.Valid := DerivedMapBatches.Batch011.certificate943valid
theorem linkedCommutativity1501 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5189.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate943.c x := by
  exact (linkedComposition1501 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1501)
theorem firstLink1502 : DerivedMapBatches.Batch011.certificate944.algebra.mat = DerivedMapBatches.Batch064.certificate5190.a := by decide
theorem secondLink1502 : DerivedMapBatches.Batch011.certificate945.algebra.mat = DerivedMapBatches.Batch064.certificate5190.b := by decide
theorem firstValid1502 : DerivedMapBatches.Batch011.certificate944.Valid := DerivedMapBatches.Batch011.certificate944valid
theorem secondValid1502 : DerivedMapBatches.Batch011.certificate945.Valid := DerivedMapBatches.Batch011.certificate945valid
theorem outputValid1502 : DerivedMapBatches.Batch064.certificate5190.Valid := DerivedMapBatches.Batch064.certificate5190valid
theorem linkedComposition1502 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5190.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5190.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat x) := by
  rw [firstLink1502, secondLink1502]
  exact DerivedMapBatches.Batch064.certificate5190valid.2 x
theorem rhsLink1502 : DerivedMapBatches.Batch064.certificate5190.c = DerivedMapBatches.Batch011.certificate946.c := by decide
theorem rhsValid1502 : DerivedMapBatches.Batch011.certificate946.Valid := DerivedMapBatches.Batch011.certificate946valid
theorem linkedCommutativity1502 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5190.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate946.c x := by
  exact (linkedComposition1502 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1502)
theorem firstLink1503 : DerivedMapBatches.Batch011.certificate947.algebra.mat = DerivedMapBatches.Batch064.certificate5191.a := by decide
theorem secondLink1503 : DerivedMapBatches.Batch011.certificate948.algebra.mat = DerivedMapBatches.Batch064.certificate5191.b := by decide
theorem firstValid1503 : DerivedMapBatches.Batch011.certificate947.Valid := DerivedMapBatches.Batch011.certificate947valid
theorem secondValid1503 : DerivedMapBatches.Batch011.certificate948.Valid := DerivedMapBatches.Batch011.certificate948valid
theorem outputValid1503 : DerivedMapBatches.Batch064.certificate5191.Valid := DerivedMapBatches.Batch064.certificate5191valid
theorem linkedComposition1503 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5191.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5191.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate948.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate947.algebra.mat x) := by
  rw [firstLink1503, secondLink1503]
  exact DerivedMapBatches.Batch064.certificate5191valid.2 x
theorem rhsLink1503 : DerivedMapBatches.Batch064.certificate5191.c = DerivedMapBatches.Batch011.certificate949.c := by decide
theorem rhsValid1503 : DerivedMapBatches.Batch011.certificate949.Valid := DerivedMapBatches.Batch011.certificate949valid
theorem linkedCommutativity1503 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5191.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate948.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate947.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate949.c x := by
  exact (linkedComposition1503 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1503)
theorem firstLink1504 : DerivedMapBatches.Batch011.certificate950.algebra.mat = DerivedMapBatches.Batch064.certificate5192.a := by decide
theorem secondLink1504 : DerivedMapBatches.Batch011.certificate951.algebra.mat = DerivedMapBatches.Batch064.certificate5192.b := by decide
theorem firstValid1504 : DerivedMapBatches.Batch011.certificate950.Valid := DerivedMapBatches.Batch011.certificate950valid
theorem secondValid1504 : DerivedMapBatches.Batch011.certificate951.Valid := DerivedMapBatches.Batch011.certificate951valid
theorem outputValid1504 : DerivedMapBatches.Batch064.certificate5192.Valid := DerivedMapBatches.Batch064.certificate5192valid
theorem linkedComposition1504 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5192.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5192.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat x) := by
  rw [firstLink1504, secondLink1504]
  exact DerivedMapBatches.Batch064.certificate5192valid.2 x
theorem rhsLink1504 : DerivedMapBatches.Batch064.certificate5192.c = DerivedMapBatches.Batch011.certificate952.c := by decide
theorem rhsValid1504 : DerivedMapBatches.Batch011.certificate952.Valid := DerivedMapBatches.Batch011.certificate952valid
theorem linkedCommutativity1504 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5192.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate952.c x := by
  exact (linkedComposition1504 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1504)
theorem firstLink1505 : DerivedMapBatches.Batch011.certificate953.algebra.mat = DerivedMapBatches.Batch064.certificate5193.a := by decide
theorem secondLink1505 : DerivedMapBatches.Batch011.certificate954.algebra.mat = DerivedMapBatches.Batch064.certificate5193.b := by decide
theorem firstValid1505 : DerivedMapBatches.Batch011.certificate953.Valid := DerivedMapBatches.Batch011.certificate953valid
theorem secondValid1505 : DerivedMapBatches.Batch011.certificate954.Valid := DerivedMapBatches.Batch011.certificate954valid
theorem outputValid1505 : DerivedMapBatches.Batch064.certificate5193.Valid := DerivedMapBatches.Batch064.certificate5193valid
theorem linkedComposition1505 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5193.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5193.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat x) := by
  rw [firstLink1505, secondLink1505]
  exact DerivedMapBatches.Batch064.certificate5193valid.2 x
theorem rhsLink1505 : DerivedMapBatches.Batch064.certificate5193.c = DerivedMapBatches.Batch011.certificate955.c := by decide
theorem rhsValid1505 : DerivedMapBatches.Batch011.certificate955.Valid := DerivedMapBatches.Batch011.certificate955valid
theorem linkedCommutativity1505 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5193.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate955.c x := by
  exact (linkedComposition1505 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1505)
theorem firstLink1506 : DerivedMapBatches.Batch011.certificate956.algebra.mat = DerivedMapBatches.Batch064.certificate5194.a := by decide
theorem secondLink1506 : DerivedMapBatches.Batch011.certificate957.algebra.mat = DerivedMapBatches.Batch064.certificate5194.b := by decide
theorem firstValid1506 : DerivedMapBatches.Batch011.certificate956.Valid := DerivedMapBatches.Batch011.certificate956valid
theorem secondValid1506 : DerivedMapBatches.Batch011.certificate957.Valid := DerivedMapBatches.Batch011.certificate957valid
theorem outputValid1506 : DerivedMapBatches.Batch064.certificate5194.Valid := DerivedMapBatches.Batch064.certificate5194valid
theorem linkedComposition1506 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5194.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5194.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat x) := by
  rw [firstLink1506, secondLink1506]
  exact DerivedMapBatches.Batch064.certificate5194valid.2 x
theorem rhsLink1506 : DerivedMapBatches.Batch064.certificate5194.c = DerivedMapBatches.Batch011.certificate958.c := by decide
theorem rhsValid1506 : DerivedMapBatches.Batch011.certificate958.Valid := DerivedMapBatches.Batch011.certificate958valid
theorem linkedCommutativity1506 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5194.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch011.certificate958.c x := by
  exact (linkedComposition1506 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1506)
theorem firstLink1507 : DerivedMapBatches.Batch011.certificate959.algebra.mat = DerivedMapBatches.Batch064.certificate5195.a := by decide
theorem secondLink1507 : DerivedMapBatches.Batch012.certificate960.algebra.mat = DerivedMapBatches.Batch064.certificate5195.b := by decide
theorem firstValid1507 : DerivedMapBatches.Batch011.certificate959.Valid := DerivedMapBatches.Batch011.certificate959valid
theorem secondValid1507 : DerivedMapBatches.Batch012.certificate960.Valid := DerivedMapBatches.Batch012.certificate960valid
theorem outputValid1507 : DerivedMapBatches.Batch064.certificate5195.Valid := DerivedMapBatches.Batch064.certificate5195valid
theorem linkedComposition1507 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5195.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5195.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat x) := by
  rw [firstLink1507, secondLink1507]
  exact DerivedMapBatches.Batch064.certificate5195valid.2 x
theorem rhsLink1507 : DerivedMapBatches.Batch064.certificate5195.c = DerivedMapBatches.Batch012.certificate961.c := by decide
theorem rhsValid1507 : DerivedMapBatches.Batch012.certificate961.Valid := DerivedMapBatches.Batch012.certificate961valid
theorem linkedCommutativity1507 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5195.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate961.c x := by
  exact (linkedComposition1507 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1507)
theorem firstLink1508 : DerivedMapBatches.Batch012.certificate962.algebra.mat = DerivedMapBatches.Batch064.certificate5196.a := by decide
theorem secondLink1508 : DerivedMapBatches.Batch012.certificate963.algebra.mat = DerivedMapBatches.Batch064.certificate5196.b := by decide
theorem firstValid1508 : DerivedMapBatches.Batch012.certificate962.Valid := DerivedMapBatches.Batch012.certificate962valid
theorem secondValid1508 : DerivedMapBatches.Batch012.certificate963.Valid := DerivedMapBatches.Batch012.certificate963valid
theorem outputValid1508 : DerivedMapBatches.Batch064.certificate5196.Valid := DerivedMapBatches.Batch064.certificate5196valid
theorem linkedComposition1508 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5196.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5196.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat x) := by
  rw [firstLink1508, secondLink1508]
  exact DerivedMapBatches.Batch064.certificate5196valid.2 x
theorem rhsLink1508 : DerivedMapBatches.Batch064.certificate5196.c = DerivedMapBatches.Batch012.certificate964.c := by decide
theorem rhsValid1508 : DerivedMapBatches.Batch012.certificate964.Valid := DerivedMapBatches.Batch012.certificate964valid
theorem linkedCommutativity1508 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5196.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate964.c x := by
  exact (linkedComposition1508 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1508)
theorem firstLink1509 : DerivedMapBatches.Batch012.certificate965.algebra.mat = DerivedMapBatches.Batch064.certificate5197.a := by decide
theorem secondLink1509 : DerivedMapBatches.Batch012.certificate966.algebra.mat = DerivedMapBatches.Batch064.certificate5197.b := by decide
theorem firstValid1509 : DerivedMapBatches.Batch012.certificate965.Valid := DerivedMapBatches.Batch012.certificate965valid
theorem secondValid1509 : DerivedMapBatches.Batch012.certificate966.Valid := DerivedMapBatches.Batch012.certificate966valid
theorem outputValid1509 : DerivedMapBatches.Batch064.certificate5197.Valid := DerivedMapBatches.Batch064.certificate5197valid
theorem linkedComposition1509 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5197.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5197.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate966.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate965.algebra.mat x) := by
  rw [firstLink1509, secondLink1509]
  exact DerivedMapBatches.Batch064.certificate5197valid.2 x
theorem rhsLink1509 : DerivedMapBatches.Batch064.certificate5197.c = DerivedMapBatches.Batch012.certificate967.c := by decide
theorem rhsValid1509 : DerivedMapBatches.Batch012.certificate967.Valid := DerivedMapBatches.Batch012.certificate967valid
theorem linkedCommutativity1509 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5197.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate966.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate965.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate967.c x := by
  exact (linkedComposition1509 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1509)
theorem firstLink1510 : DerivedMapBatches.Batch012.certificate968.algebra.mat = DerivedMapBatches.Batch064.certificate5198.a := by decide
theorem secondLink1510 : DerivedMapBatches.Batch012.certificate969.algebra.mat = DerivedMapBatches.Batch064.certificate5198.b := by decide
theorem firstValid1510 : DerivedMapBatches.Batch012.certificate968.Valid := DerivedMapBatches.Batch012.certificate968valid
theorem secondValid1510 : DerivedMapBatches.Batch012.certificate969.Valid := DerivedMapBatches.Batch012.certificate969valid
theorem outputValid1510 : DerivedMapBatches.Batch064.certificate5198.Valid := DerivedMapBatches.Batch064.certificate5198valid
theorem linkedComposition1510 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5198.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5198.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat x) := by
  rw [firstLink1510, secondLink1510]
  exact DerivedMapBatches.Batch064.certificate5198valid.2 x
theorem rhsLink1510 : DerivedMapBatches.Batch064.certificate5198.c = DerivedMapBatches.Batch012.certificate970.c := by decide
theorem rhsValid1510 : DerivedMapBatches.Batch012.certificate970.Valid := DerivedMapBatches.Batch012.certificate970valid
theorem linkedCommutativity1510 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5198.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate970.c x := by
  exact (linkedComposition1510 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1510)
theorem firstLink1511 : DerivedMapBatches.Batch012.certificate971.algebra.mat = DerivedMapBatches.Batch064.certificate5199.a := by decide
theorem secondLink1511 : DerivedMapBatches.Batch012.certificate972.algebra.mat = DerivedMapBatches.Batch064.certificate5199.b := by decide
theorem firstValid1511 : DerivedMapBatches.Batch012.certificate971.Valid := DerivedMapBatches.Batch012.certificate971valid
theorem secondValid1511 : DerivedMapBatches.Batch012.certificate972.Valid := DerivedMapBatches.Batch012.certificate972valid
theorem outputValid1511 : DerivedMapBatches.Batch064.certificate5199.Valid := DerivedMapBatches.Batch064.certificate5199valid
theorem linkedComposition1511 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5199.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5199.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate972.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate971.algebra.mat x) := by
  rw [firstLink1511, secondLink1511]
  exact DerivedMapBatches.Batch064.certificate5199valid.2 x
theorem rhsLink1511 : DerivedMapBatches.Batch064.certificate5199.c = DerivedMapBatches.Batch012.certificate973.c := by decide
theorem rhsValid1511 : DerivedMapBatches.Batch012.certificate973.Valid := DerivedMapBatches.Batch012.certificate973valid
theorem linkedCommutativity1511 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5199.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate972.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate971.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate973.c x := by
  exact (linkedComposition1511 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1511)
theorem firstLink1512 : DerivedMapBatches.Batch012.certificate974.algebra.mat = DerivedMapBatches.Batch065.certificate5200.a := by decide
theorem secondLink1512 : DerivedMapBatches.Batch012.certificate975.algebra.mat = DerivedMapBatches.Batch065.certificate5200.b := by decide
theorem firstValid1512 : DerivedMapBatches.Batch012.certificate974.Valid := DerivedMapBatches.Batch012.certificate974valid
theorem secondValid1512 : DerivedMapBatches.Batch012.certificate975.Valid := DerivedMapBatches.Batch012.certificate975valid
theorem outputValid1512 : DerivedMapBatches.Batch065.certificate5200.Valid := DerivedMapBatches.Batch065.certificate5200valid
theorem linkedComposition1512 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5200.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat x) := by
  rw [firstLink1512, secondLink1512]
  exact DerivedMapBatches.Batch065.certificate5200valid.2 x
theorem rhsLink1512 : DerivedMapBatches.Batch065.certificate5200.c = DerivedMapBatches.Batch012.certificate976.c := by decide
theorem rhsValid1512 : DerivedMapBatches.Batch012.certificate976.Valid := DerivedMapBatches.Batch012.certificate976valid
theorem linkedCommutativity1512 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate976.c x := by
  exact (linkedComposition1512 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1512)
theorem firstLink1513 : DerivedMapBatches.Batch012.certificate977.algebra.mat = DerivedMapBatches.Batch065.certificate5201.a := by decide
theorem secondLink1513 : DerivedMapBatches.Batch012.certificate978.algebra.mat = DerivedMapBatches.Batch065.certificate5201.b := by decide
theorem firstValid1513 : DerivedMapBatches.Batch012.certificate977.Valid := DerivedMapBatches.Batch012.certificate977valid
theorem secondValid1513 : DerivedMapBatches.Batch012.certificate978.Valid := DerivedMapBatches.Batch012.certificate978valid
theorem outputValid1513 : DerivedMapBatches.Batch065.certificate5201.Valid := DerivedMapBatches.Batch065.certificate5201valid
theorem linkedComposition1513 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5201.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5201.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat x) := by
  rw [firstLink1513, secondLink1513]
  exact DerivedMapBatches.Batch065.certificate5201valid.2 x
theorem rhsLink1513 : DerivedMapBatches.Batch065.certificate5201.c = DerivedMapBatches.Batch012.certificate979.c := by decide
theorem rhsValid1513 : DerivedMapBatches.Batch012.certificate979.Valid := DerivedMapBatches.Batch012.certificate979valid
theorem linkedCommutativity1513 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5201.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate979.c x := by
  exact (linkedComposition1513 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1513)
theorem firstLink1514 : DerivedMapBatches.Batch012.certificate980.algebra.mat = DerivedMapBatches.Batch065.certificate5202.a := by decide
theorem secondLink1514 : DerivedMapBatches.Batch012.certificate981.algebra.mat = DerivedMapBatches.Batch065.certificate5202.b := by decide
theorem firstValid1514 : DerivedMapBatches.Batch012.certificate980.Valid := DerivedMapBatches.Batch012.certificate980valid
theorem secondValid1514 : DerivedMapBatches.Batch012.certificate981.Valid := DerivedMapBatches.Batch012.certificate981valid
theorem outputValid1514 : DerivedMapBatches.Batch065.certificate5202.Valid := DerivedMapBatches.Batch065.certificate5202valid
theorem linkedComposition1514 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5202.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5202.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate980.algebra.mat x) := by
  rw [firstLink1514, secondLink1514]
  exact DerivedMapBatches.Batch065.certificate5202valid.2 x
theorem rhsLink1514 : DerivedMapBatches.Batch065.certificate5202.c = DerivedMapBatches.Batch012.certificate982.c := by decide
theorem rhsValid1514 : DerivedMapBatches.Batch012.certificate982.Valid := DerivedMapBatches.Batch012.certificate982valid
theorem linkedCommutativity1514 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5202.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate980.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate982.c x := by
  exact (linkedComposition1514 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1514)
theorem firstLink1515 : DerivedMapBatches.Batch012.certificate983.algebra.mat = DerivedMapBatches.Batch065.certificate5203.a := by decide
theorem secondLink1515 : DerivedMapBatches.Batch012.certificate984.algebra.mat = DerivedMapBatches.Batch065.certificate5203.b := by decide
theorem firstValid1515 : DerivedMapBatches.Batch012.certificate983.Valid := DerivedMapBatches.Batch012.certificate983valid
theorem secondValid1515 : DerivedMapBatches.Batch012.certificate984.Valid := DerivedMapBatches.Batch012.certificate984valid
theorem outputValid1515 : DerivedMapBatches.Batch065.certificate5203.Valid := DerivedMapBatches.Batch065.certificate5203valid
theorem linkedComposition1515 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5203.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5203.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate984.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate983.algebra.mat x) := by
  rw [firstLink1515, secondLink1515]
  exact DerivedMapBatches.Batch065.certificate5203valid.2 x
theorem rhsLink1515 : DerivedMapBatches.Batch065.certificate5203.c = DerivedMapBatches.Batch012.certificate985.c := by decide
theorem rhsValid1515 : DerivedMapBatches.Batch012.certificate985.Valid := DerivedMapBatches.Batch012.certificate985valid
theorem linkedCommutativity1515 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5203.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate984.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate983.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate985.c x := by
  exact (linkedComposition1515 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1515)
theorem firstLink1516 : DerivedMapBatches.Batch012.certificate986.algebra.mat = DerivedMapBatches.Batch065.certificate5204.a := by decide
theorem secondLink1516 : DerivedMapBatches.Batch012.certificate987.algebra.mat = DerivedMapBatches.Batch065.certificate5204.b := by decide
theorem firstValid1516 : DerivedMapBatches.Batch012.certificate986.Valid := DerivedMapBatches.Batch012.certificate986valid
theorem secondValid1516 : DerivedMapBatches.Batch012.certificate987.Valid := DerivedMapBatches.Batch012.certificate987valid
theorem outputValid1516 : DerivedMapBatches.Batch065.certificate5204.Valid := DerivedMapBatches.Batch065.certificate5204valid
theorem linkedComposition1516 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5204.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5204.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate987.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate986.algebra.mat x) := by
  rw [firstLink1516, secondLink1516]
  exact DerivedMapBatches.Batch065.certificate5204valid.2 x
theorem rhsLink1516 : DerivedMapBatches.Batch065.certificate5204.c = DerivedMapBatches.Batch012.certificate988.c := by decide
theorem rhsValid1516 : DerivedMapBatches.Batch012.certificate988.Valid := DerivedMapBatches.Batch012.certificate988valid
theorem linkedCommutativity1516 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5204.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate987.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate986.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate988.c x := by
  exact (linkedComposition1516 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1516)
theorem firstLink1517 : DerivedMapBatches.Batch012.certificate989.algebra.mat = DerivedMapBatches.Batch065.certificate5205.a := by decide
theorem secondLink1517 : DerivedMapBatches.Batch009.certificate794.algebra.mat = DerivedMapBatches.Batch065.certificate5205.b := by decide
theorem firstValid1517 : DerivedMapBatches.Batch012.certificate989.Valid := DerivedMapBatches.Batch012.certificate989valid
theorem secondValid1517 : DerivedMapBatches.Batch009.certificate794.Valid := DerivedMapBatches.Batch009.certificate794valid
theorem outputValid1517 : DerivedMapBatches.Batch065.certificate5205.Valid := DerivedMapBatches.Batch065.certificate5205valid
theorem linkedComposition1517 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5205.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5205.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate989.algebra.mat x) := by
  rw [firstLink1517, secondLink1517]
  exact DerivedMapBatches.Batch065.certificate5205valid.2 x
theorem rhsLink1517 : DerivedMapBatches.Batch065.certificate5205.c = DerivedMapBatches.Batch012.certificate990.c := by decide
theorem rhsValid1517 : DerivedMapBatches.Batch012.certificate990.Valid := DerivedMapBatches.Batch012.certificate990valid
theorem linkedCommutativity1517 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5205.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate989.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate990.c x := by
  exact (linkedComposition1517 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1517)
theorem firstLink1518 : DerivedMapBatches.Batch012.certificate991.algebra.mat = DerivedMapBatches.Batch065.certificate5206.a := by decide
theorem secondLink1518 : DerivedMapBatches.Batch009.certificate797.algebra.mat = DerivedMapBatches.Batch065.certificate5206.b := by decide
theorem firstValid1518 : DerivedMapBatches.Batch012.certificate991.Valid := DerivedMapBatches.Batch012.certificate991valid
theorem secondValid1518 : DerivedMapBatches.Batch009.certificate797.Valid := DerivedMapBatches.Batch009.certificate797valid
theorem outputValid1518 : DerivedMapBatches.Batch065.certificate5206.Valid := DerivedMapBatches.Batch065.certificate5206valid
theorem linkedComposition1518 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5206.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5206.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate991.algebra.mat x) := by
  rw [firstLink1518, secondLink1518]
  exact DerivedMapBatches.Batch065.certificate5206valid.2 x
theorem rhsLink1518 : DerivedMapBatches.Batch065.certificate5206.c = DerivedMapBatches.Batch012.certificate992.c := by decide
theorem rhsValid1518 : DerivedMapBatches.Batch012.certificate992.Valid := DerivedMapBatches.Batch012.certificate992valid
theorem linkedCommutativity1518 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5206.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate991.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate992.c x := by
  exact (linkedComposition1518 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1518)
theorem firstLink1519 : DerivedMapBatches.Batch012.certificate993.algebra.mat = DerivedMapBatches.Batch065.certificate5207.a := by decide
theorem secondLink1519 : DerivedMapBatches.Batch012.certificate994.algebra.mat = DerivedMapBatches.Batch065.certificate5207.b := by decide
theorem firstValid1519 : DerivedMapBatches.Batch012.certificate993.Valid := DerivedMapBatches.Batch012.certificate993valid
theorem secondValid1519 : DerivedMapBatches.Batch012.certificate994.Valid := DerivedMapBatches.Batch012.certificate994valid
theorem outputValid1519 : DerivedMapBatches.Batch065.certificate5207.Valid := DerivedMapBatches.Batch065.certificate5207valid
theorem linkedComposition1519 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5207.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5207.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate994.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate993.algebra.mat x) := by
  rw [firstLink1519, secondLink1519]
  exact DerivedMapBatches.Batch065.certificate5207valid.2 x
theorem rhsLink1519 : DerivedMapBatches.Batch065.certificate5207.c = DerivedMapBatches.Batch012.certificate995.c := by decide
theorem rhsValid1519 : DerivedMapBatches.Batch012.certificate995.Valid := DerivedMapBatches.Batch012.certificate995valid
theorem linkedCommutativity1519 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5207.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate994.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate993.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate995.c x := by
  exact (linkedComposition1519 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1519)
theorem firstLink1520 : DerivedMapBatches.Batch012.certificate996.algebra.mat = DerivedMapBatches.Batch065.certificate5208.a := by decide
theorem secondLink1520 : DerivedMapBatches.Batch010.certificate809.algebra.mat = DerivedMapBatches.Batch065.certificate5208.b := by decide
theorem firstValid1520 : DerivedMapBatches.Batch012.certificate996.Valid := DerivedMapBatches.Batch012.certificate996valid
theorem secondValid1520 : DerivedMapBatches.Batch010.certificate809.Valid := DerivedMapBatches.Batch010.certificate809valid
theorem outputValid1520 : DerivedMapBatches.Batch065.certificate5208.Valid := DerivedMapBatches.Batch065.certificate5208valid
theorem linkedComposition1520 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5208.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5208.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate996.algebra.mat x) := by
  rw [firstLink1520, secondLink1520]
  exact DerivedMapBatches.Batch065.certificate5208valid.2 x
theorem rhsLink1520 : DerivedMapBatches.Batch065.certificate5208.c = DerivedMapBatches.Batch012.certificate997.c := by decide
theorem rhsValid1520 : DerivedMapBatches.Batch012.certificate997.Valid := DerivedMapBatches.Batch012.certificate997valid
theorem linkedCommutativity1520 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5208.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate996.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate997.c x := by
  exact (linkedComposition1520 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1520)
theorem firstLink1521 : DerivedMapBatches.Batch012.certificate998.algebra.mat = DerivedMapBatches.Batch065.certificate5209.a := by decide
theorem secondLink1521 : DerivedMapBatches.Batch012.certificate999.algebra.mat = DerivedMapBatches.Batch065.certificate5209.b := by decide
theorem firstValid1521 : DerivedMapBatches.Batch012.certificate998.Valid := DerivedMapBatches.Batch012.certificate998valid
theorem secondValid1521 : DerivedMapBatches.Batch012.certificate999.Valid := DerivedMapBatches.Batch012.certificate999valid
theorem outputValid1521 : DerivedMapBatches.Batch065.certificate5209.Valid := DerivedMapBatches.Batch065.certificate5209valid
theorem linkedComposition1521 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5209.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5209.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate999.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate998.algebra.mat x) := by
  rw [firstLink1521, secondLink1521]
  exact DerivedMapBatches.Batch065.certificate5209valid.2 x
theorem rhsLink1521 : DerivedMapBatches.Batch065.certificate5209.c = DerivedMapBatches.Batch012.certificate1000.c := by decide
theorem rhsValid1521 : DerivedMapBatches.Batch012.certificate1000.Valid := DerivedMapBatches.Batch012.certificate1000valid
theorem linkedCommutativity1521 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5209.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate999.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate998.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1000.c x := by
  exact (linkedComposition1521 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1521)
theorem firstLink1522 : DerivedMapBatches.Batch012.certificate1001.algebra.mat = DerivedMapBatches.Batch065.certificate5210.a := by decide
theorem secondLink1522 : DerivedMapBatches.Batch010.certificate815.algebra.mat = DerivedMapBatches.Batch065.certificate5210.b := by decide
theorem firstValid1522 : DerivedMapBatches.Batch012.certificate1001.Valid := DerivedMapBatches.Batch012.certificate1001valid
theorem secondValid1522 : DerivedMapBatches.Batch010.certificate815.Valid := DerivedMapBatches.Batch010.certificate815valid
theorem outputValid1522 : DerivedMapBatches.Batch065.certificate5210.Valid := DerivedMapBatches.Batch065.certificate5210valid
theorem linkedComposition1522 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5210.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5210.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1001.algebra.mat x) := by
  rw [firstLink1522, secondLink1522]
  exact DerivedMapBatches.Batch065.certificate5210valid.2 x
theorem rhsLink1522 : DerivedMapBatches.Batch065.certificate5210.c = DerivedMapBatches.Batch012.certificate1002.c := by decide
theorem rhsValid1522 : DerivedMapBatches.Batch012.certificate1002.Valid := DerivedMapBatches.Batch012.certificate1002valid
theorem linkedCommutativity1522 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5210.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1001.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1002.c x := by
  exact (linkedComposition1522 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1522)
theorem firstLink1523 : DerivedMapBatches.Batch012.certificate1003.algebra.mat = DerivedMapBatches.Batch065.certificate5211.a := by decide
theorem secondLink1523 : DerivedMapBatches.Batch010.certificate827.algebra.mat = DerivedMapBatches.Batch065.certificate5211.b := by decide
theorem firstValid1523 : DerivedMapBatches.Batch012.certificate1003.Valid := DerivedMapBatches.Batch012.certificate1003valid
theorem secondValid1523 : DerivedMapBatches.Batch010.certificate827.Valid := DerivedMapBatches.Batch010.certificate827valid
theorem outputValid1523 : DerivedMapBatches.Batch065.certificate5211.Valid := DerivedMapBatches.Batch065.certificate5211valid
theorem linkedComposition1523 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5211.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5211.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1003.algebra.mat x) := by
  rw [firstLink1523, secondLink1523]
  exact DerivedMapBatches.Batch065.certificate5211valid.2 x
theorem rhsLink1523 : DerivedMapBatches.Batch065.certificate5211.c = DerivedMapBatches.Batch012.certificate1004.c := by decide
theorem rhsValid1523 : DerivedMapBatches.Batch012.certificate1004.Valid := DerivedMapBatches.Batch012.certificate1004valid
theorem linkedCommutativity1523 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5211.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1003.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1004.c x := by
  exact (linkedComposition1523 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1523)
theorem firstLink1524 : DerivedMapBatches.Batch012.certificate1005.algebra.mat = DerivedMapBatches.Batch065.certificate5212.a := by decide
theorem secondLink1524 : DerivedMapBatches.Batch010.certificate830.algebra.mat = DerivedMapBatches.Batch065.certificate5212.b := by decide
theorem firstValid1524 : DerivedMapBatches.Batch012.certificate1005.Valid := DerivedMapBatches.Batch012.certificate1005valid
theorem secondValid1524 : DerivedMapBatches.Batch010.certificate830.Valid := DerivedMapBatches.Batch010.certificate830valid
theorem outputValid1524 : DerivedMapBatches.Batch065.certificate5212.Valid := DerivedMapBatches.Batch065.certificate5212valid
theorem linkedComposition1524 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5212.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1005.algebra.mat x) := by
  rw [firstLink1524, secondLink1524]
  exact DerivedMapBatches.Batch065.certificate5212valid.2 x
theorem rhsLink1524 : DerivedMapBatches.Batch065.certificate5212.c = DerivedMapBatches.Batch012.certificate1006.c := by decide
theorem rhsValid1524 : DerivedMapBatches.Batch012.certificate1006.Valid := DerivedMapBatches.Batch012.certificate1006valid
theorem linkedCommutativity1524 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1005.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1006.c x := by
  exact (linkedComposition1524 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1524)
theorem firstLink1525 : DerivedMapBatches.Batch012.certificate1007.algebra.mat = DerivedMapBatches.Batch065.certificate5213.a := by decide
theorem secondLink1525 : DerivedMapBatches.Batch010.certificate842.algebra.mat = DerivedMapBatches.Batch065.certificate5213.b := by decide
theorem firstValid1525 : DerivedMapBatches.Batch012.certificate1007.Valid := DerivedMapBatches.Batch012.certificate1007valid
theorem secondValid1525 : DerivedMapBatches.Batch010.certificate842.Valid := DerivedMapBatches.Batch010.certificate842valid
theorem outputValid1525 : DerivedMapBatches.Batch065.certificate5213.Valid := DerivedMapBatches.Batch065.certificate5213valid
theorem linkedComposition1525 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5213.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5213.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1007.algebra.mat x) := by
  rw [firstLink1525, secondLink1525]
  exact DerivedMapBatches.Batch065.certificate5213valid.2 x
theorem rhsLink1525 : DerivedMapBatches.Batch065.certificate5213.c = DerivedMapBatches.Batch012.certificate1008.c := by decide
theorem rhsValid1525 : DerivedMapBatches.Batch012.certificate1008.Valid := DerivedMapBatches.Batch012.certificate1008valid
theorem linkedCommutativity1525 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5213.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1007.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1008.c x := by
  exact (linkedComposition1525 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1525)
theorem firstLink1526 : DerivedMapBatches.Batch012.certificate1009.algebra.mat = DerivedMapBatches.Batch065.certificate5214.a := by decide
theorem secondLink1526 : DerivedMapBatches.Batch010.certificate845.algebra.mat = DerivedMapBatches.Batch065.certificate5214.b := by decide
theorem firstValid1526 : DerivedMapBatches.Batch012.certificate1009.Valid := DerivedMapBatches.Batch012.certificate1009valid
theorem secondValid1526 : DerivedMapBatches.Batch010.certificate845.Valid := DerivedMapBatches.Batch010.certificate845valid
theorem outputValid1526 : DerivedMapBatches.Batch065.certificate5214.Valid := DerivedMapBatches.Batch065.certificate5214valid
theorem linkedComposition1526 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5214.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1009.algebra.mat x) := by
  rw [firstLink1526, secondLink1526]
  exact DerivedMapBatches.Batch065.certificate5214valid.2 x
theorem rhsLink1526 : DerivedMapBatches.Batch065.certificate5214.c = DerivedMapBatches.Batch012.certificate1010.c := by decide
theorem rhsValid1526 : DerivedMapBatches.Batch012.certificate1010.Valid := DerivedMapBatches.Batch012.certificate1010valid
theorem linkedCommutativity1526 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1009.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1010.c x := by
  exact (linkedComposition1526 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1526)
theorem firstLink1527 : DerivedMapBatches.Batch012.certificate1011.algebra.mat = DerivedMapBatches.Batch065.certificate5215.a := by decide
theorem secondLink1527 : DerivedMapBatches.Batch010.certificate848.algebra.mat = DerivedMapBatches.Batch065.certificate5215.b := by decide
theorem firstValid1527 : DerivedMapBatches.Batch012.certificate1011.Valid := DerivedMapBatches.Batch012.certificate1011valid
theorem secondValid1527 : DerivedMapBatches.Batch010.certificate848.Valid := DerivedMapBatches.Batch010.certificate848valid
theorem outputValid1527 : DerivedMapBatches.Batch065.certificate5215.Valid := DerivedMapBatches.Batch065.certificate5215valid
theorem linkedComposition1527 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5215.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5215.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1011.algebra.mat x) := by
  rw [firstLink1527, secondLink1527]
  exact DerivedMapBatches.Batch065.certificate5215valid.2 x
theorem rhsLink1527 : DerivedMapBatches.Batch065.certificate5215.c = DerivedMapBatches.Batch012.certificate1012.c := by decide
theorem rhsValid1527 : DerivedMapBatches.Batch012.certificate1012.Valid := DerivedMapBatches.Batch012.certificate1012valid
theorem linkedCommutativity1527 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5215.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1011.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1012.c x := by
  exact (linkedComposition1527 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1527)
theorem firstLink1528 : DerivedMapBatches.Batch012.certificate1013.algebra.mat = DerivedMapBatches.Batch065.certificate5216.a := by decide
theorem secondLink1528 : DerivedMapBatches.Batch010.certificate854.algebra.mat = DerivedMapBatches.Batch065.certificate5216.b := by decide
theorem firstValid1528 : DerivedMapBatches.Batch012.certificate1013.Valid := DerivedMapBatches.Batch012.certificate1013valid
theorem secondValid1528 : DerivedMapBatches.Batch010.certificate854.Valid := DerivedMapBatches.Batch010.certificate854valid
theorem outputValid1528 : DerivedMapBatches.Batch065.certificate5216.Valid := DerivedMapBatches.Batch065.certificate5216valid
theorem linkedComposition1528 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5216.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5216.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1013.algebra.mat x) := by
  rw [firstLink1528, secondLink1528]
  exact DerivedMapBatches.Batch065.certificate5216valid.2 x
theorem rhsLink1528 : DerivedMapBatches.Batch065.certificate5216.c = DerivedMapBatches.Batch012.certificate1014.c := by decide
theorem rhsValid1528 : DerivedMapBatches.Batch012.certificate1014.Valid := DerivedMapBatches.Batch012.certificate1014valid
theorem linkedCommutativity1528 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5216.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1013.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1014.c x := by
  exact (linkedComposition1528 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1528)
theorem firstLink1529 : DerivedMapBatches.Batch012.certificate1015.algebra.mat = DerivedMapBatches.Batch065.certificate5217.a := by decide
theorem secondLink1529 : DerivedMapBatches.Batch010.certificate857.algebra.mat = DerivedMapBatches.Batch065.certificate5217.b := by decide
theorem firstValid1529 : DerivedMapBatches.Batch012.certificate1015.Valid := DerivedMapBatches.Batch012.certificate1015valid
theorem secondValid1529 : DerivedMapBatches.Batch010.certificate857.Valid := DerivedMapBatches.Batch010.certificate857valid
theorem outputValid1529 : DerivedMapBatches.Batch065.certificate5217.Valid := DerivedMapBatches.Batch065.certificate5217valid
theorem linkedComposition1529 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5217.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5217.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1015.algebra.mat x) := by
  rw [firstLink1529, secondLink1529]
  exact DerivedMapBatches.Batch065.certificate5217valid.2 x
theorem rhsLink1529 : DerivedMapBatches.Batch065.certificate5217.c = DerivedMapBatches.Batch012.certificate1016.c := by decide
theorem rhsValid1529 : DerivedMapBatches.Batch012.certificate1016.Valid := DerivedMapBatches.Batch012.certificate1016valid
theorem linkedCommutativity1529 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5217.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1015.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1016.c x := by
  exact (linkedComposition1529 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1529)
theorem firstLink1530 : DerivedMapBatches.Batch012.certificate1017.algebra.mat = DerivedMapBatches.Batch065.certificate5218.a := by decide
theorem secondLink1530 : DerivedMapBatches.Batch010.certificate863.algebra.mat = DerivedMapBatches.Batch065.certificate5218.b := by decide
theorem firstValid1530 : DerivedMapBatches.Batch012.certificate1017.Valid := DerivedMapBatches.Batch012.certificate1017valid
theorem secondValid1530 : DerivedMapBatches.Batch010.certificate863.Valid := DerivedMapBatches.Batch010.certificate863valid
theorem outputValid1530 : DerivedMapBatches.Batch065.certificate5218.Valid := DerivedMapBatches.Batch065.certificate5218valid
theorem linkedComposition1530 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5218.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5218.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1017.algebra.mat x) := by
  rw [firstLink1530, secondLink1530]
  exact DerivedMapBatches.Batch065.certificate5218valid.2 x
theorem rhsLink1530 : DerivedMapBatches.Batch065.certificate5218.c = DerivedMapBatches.Batch012.certificate1018.c := by decide
theorem rhsValid1530 : DerivedMapBatches.Batch012.certificate1018.Valid := DerivedMapBatches.Batch012.certificate1018valid
theorem linkedCommutativity1530 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5218.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1017.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1018.c x := by
  exact (linkedComposition1530 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1530)
theorem firstLink1531 : DerivedMapBatches.Batch012.certificate1019.algebra.mat = DerivedMapBatches.Batch065.certificate5219.a := by decide
theorem secondLink1531 : DerivedMapBatches.Batch010.certificate872.algebra.mat = DerivedMapBatches.Batch065.certificate5219.b := by decide
theorem firstValid1531 : DerivedMapBatches.Batch012.certificate1019.Valid := DerivedMapBatches.Batch012.certificate1019valid
theorem secondValid1531 : DerivedMapBatches.Batch010.certificate872.Valid := DerivedMapBatches.Batch010.certificate872valid
theorem outputValid1531 : DerivedMapBatches.Batch065.certificate5219.Valid := DerivedMapBatches.Batch065.certificate5219valid
theorem linkedComposition1531 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5219.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5219.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1019.algebra.mat x) := by
  rw [firstLink1531, secondLink1531]
  exact DerivedMapBatches.Batch065.certificate5219valid.2 x
theorem rhsLink1531 : DerivedMapBatches.Batch065.certificate5219.c = DerivedMapBatches.Batch012.certificate1020.c := by decide
theorem rhsValid1531 : DerivedMapBatches.Batch012.certificate1020.Valid := DerivedMapBatches.Batch012.certificate1020valid
theorem linkedCommutativity1531 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5219.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1019.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1020.c x := by
  exact (linkedComposition1531 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1531)
theorem firstLink1532 : DerivedMapBatches.Batch012.certificate1021.algebra.mat = DerivedMapBatches.Batch065.certificate5220.a := by decide
theorem secondLink1532 : DerivedMapBatches.Batch010.certificate878.algebra.mat = DerivedMapBatches.Batch065.certificate5220.b := by decide
theorem firstValid1532 : DerivedMapBatches.Batch012.certificate1021.Valid := DerivedMapBatches.Batch012.certificate1021valid
theorem secondValid1532 : DerivedMapBatches.Batch010.certificate878.Valid := DerivedMapBatches.Batch010.certificate878valid
theorem outputValid1532 : DerivedMapBatches.Batch065.certificate5220.Valid := DerivedMapBatches.Batch065.certificate5220valid
theorem linkedComposition1532 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5220.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5220.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1021.algebra.mat x) := by
  rw [firstLink1532, secondLink1532]
  exact DerivedMapBatches.Batch065.certificate5220valid.2 x
theorem rhsLink1532 : DerivedMapBatches.Batch065.certificate5220.c = DerivedMapBatches.Batch012.certificate1022.c := by decide
theorem rhsValid1532 : DerivedMapBatches.Batch012.certificate1022.Valid := DerivedMapBatches.Batch012.certificate1022valid
theorem linkedCommutativity1532 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5220.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1021.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1022.c x := by
  exact (linkedComposition1532 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1532)
theorem firstLink1533 : DerivedMapBatches.Batch012.certificate1023.algebra.mat = DerivedMapBatches.Batch065.certificate5221.a := by decide
theorem secondLink1533 : DerivedMapBatches.Batch011.certificate884.algebra.mat = DerivedMapBatches.Batch065.certificate5221.b := by decide
theorem firstValid1533 : DerivedMapBatches.Batch012.certificate1023.Valid := DerivedMapBatches.Batch012.certificate1023valid
theorem secondValid1533 : DerivedMapBatches.Batch011.certificate884.Valid := DerivedMapBatches.Batch011.certificate884valid
theorem outputValid1533 : DerivedMapBatches.Batch065.certificate5221.Valid := DerivedMapBatches.Batch065.certificate5221valid
theorem linkedComposition1533 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5221.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5221.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1023.algebra.mat x) := by
  rw [firstLink1533, secondLink1533]
  exact DerivedMapBatches.Batch065.certificate5221valid.2 x
theorem rhsLink1533 : DerivedMapBatches.Batch065.certificate5221.c = DerivedMapBatches.Batch012.certificate1024.c := by decide
theorem rhsValid1533 : DerivedMapBatches.Batch012.certificate1024.Valid := DerivedMapBatches.Batch012.certificate1024valid
theorem linkedCommutativity1533 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5221.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1023.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1024.c x := by
  exact (linkedComposition1533 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1533)
theorem firstLink1534 : DerivedMapBatches.Batch012.certificate988.c = DerivedMapBatches.Batch065.certificate5222.a := by decide
theorem secondLink1534 : DerivedMapBatches.Batch012.certificate1025.algebra.mat = DerivedMapBatches.Batch065.certificate5222.b := by decide
theorem firstValid1534 : DerivedMapBatches.Batch012.certificate988.Valid := DerivedMapBatches.Batch012.certificate988valid
theorem secondValid1534 : DerivedMapBatches.Batch012.certificate1025.Valid := DerivedMapBatches.Batch012.certificate1025valid
theorem outputValid1534 : DerivedMapBatches.Batch065.certificate5222.Valid := DerivedMapBatches.Batch065.certificate5222valid
theorem linkedComposition1534 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5222.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5222.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1025.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate988.c x) := by
  rw [firstLink1534, secondLink1534]
  exact DerivedMapBatches.Batch065.certificate5222valid.2 x
theorem rhsLink1534 : DerivedMapBatches.Batch065.certificate5222.c = DerivedMapBatches.Batch012.certificate1026.c := by decide
theorem rhsValid1534 : DerivedMapBatches.Batch012.certificate1026.Valid := DerivedMapBatches.Batch012.certificate1026valid
theorem linkedCommutativity1534 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5222.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1025.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate988.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1026.c x := by
  exact (linkedComposition1534 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1534)
theorem firstLink1535 : DerivedMapBatches.Batch012.certificate990.c = DerivedMapBatches.Batch065.certificate5223.a := by decide
theorem secondLink1535 : DerivedMapBatches.Batch009.certificate795.algebra.mat = DerivedMapBatches.Batch065.certificate5223.b := by decide
theorem firstValid1535 : DerivedMapBatches.Batch012.certificate990.Valid := DerivedMapBatches.Batch012.certificate990valid
theorem secondValid1535 : DerivedMapBatches.Batch009.certificate795.Valid := DerivedMapBatches.Batch009.certificate795valid
theorem outputValid1535 : DerivedMapBatches.Batch065.certificate5223.Valid := DerivedMapBatches.Batch065.certificate5223valid
theorem linkedComposition1535 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5223.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5223.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate990.c x) := by
  rw [firstLink1535, secondLink1535]
  exact DerivedMapBatches.Batch065.certificate5223valid.2 x
theorem rhsLink1535 : DerivedMapBatches.Batch065.certificate5223.c = DerivedMapBatches.Batch012.certificate1027.c := by decide
theorem rhsValid1535 : DerivedMapBatches.Batch012.certificate1027.Valid := DerivedMapBatches.Batch012.certificate1027valid
theorem linkedCommutativity1535 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5223.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate990.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1027.c x := by
  exact (linkedComposition1535 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1535)
theorem firstLink1536 : DerivedMapBatches.Batch012.certificate992.c = DerivedMapBatches.Batch065.certificate5224.a := by decide
theorem secondLink1536 : DerivedMapBatches.Batch009.certificate798.algebra.mat = DerivedMapBatches.Batch065.certificate5224.b := by decide
theorem firstValid1536 : DerivedMapBatches.Batch012.certificate992.Valid := DerivedMapBatches.Batch012.certificate992valid
theorem secondValid1536 : DerivedMapBatches.Batch009.certificate798.Valid := DerivedMapBatches.Batch009.certificate798valid
theorem outputValid1536 : DerivedMapBatches.Batch065.certificate5224.Valid := DerivedMapBatches.Batch065.certificate5224valid
theorem linkedComposition1536 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5224.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate992.c x) := by
  rw [firstLink1536, secondLink1536]
  exact DerivedMapBatches.Batch065.certificate5224valid.2 x
theorem rhsLink1536 : DerivedMapBatches.Batch065.certificate5224.c = DerivedMapBatches.Batch012.certificate1028.c := by decide
theorem rhsValid1536 : DerivedMapBatches.Batch012.certificate1028.Valid := DerivedMapBatches.Batch012.certificate1028valid
theorem linkedCommutativity1536 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate992.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1028.c x := by
  exact (linkedComposition1536 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1536)
theorem firstLink1537 : DerivedMapBatches.Batch012.certificate995.c = DerivedMapBatches.Batch065.certificate5225.a := by decide
theorem secondLink1537 : DerivedMapBatches.Batch012.certificate1029.algebra.mat = DerivedMapBatches.Batch065.certificate5225.b := by decide
theorem firstValid1537 : DerivedMapBatches.Batch012.certificate995.Valid := DerivedMapBatches.Batch012.certificate995valid
theorem secondValid1537 : DerivedMapBatches.Batch012.certificate1029.Valid := DerivedMapBatches.Batch012.certificate1029valid
theorem outputValid1537 : DerivedMapBatches.Batch065.certificate5225.Valid := DerivedMapBatches.Batch065.certificate5225valid
theorem linkedComposition1537 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5225.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5225.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1029.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate995.c x) := by
  rw [firstLink1537, secondLink1537]
  exact DerivedMapBatches.Batch065.certificate5225valid.2 x
theorem rhsLink1537 : DerivedMapBatches.Batch065.certificate5225.c = DerivedMapBatches.Batch012.certificate1030.c := by decide
theorem rhsValid1537 : DerivedMapBatches.Batch012.certificate1030.Valid := DerivedMapBatches.Batch012.certificate1030valid
theorem linkedCommutativity1537 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5225.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1029.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate995.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1030.c x := by
  exact (linkedComposition1537 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1537)
theorem firstLink1538 : DerivedMapBatches.Batch012.certificate997.c = DerivedMapBatches.Batch065.certificate5226.a := by decide
theorem secondLink1538 : DerivedMapBatches.Batch010.certificate810.algebra.mat = DerivedMapBatches.Batch065.certificate5226.b := by decide
theorem firstValid1538 : DerivedMapBatches.Batch012.certificate997.Valid := DerivedMapBatches.Batch012.certificate997valid
theorem secondValid1538 : DerivedMapBatches.Batch010.certificate810.Valid := DerivedMapBatches.Batch010.certificate810valid
theorem outputValid1538 : DerivedMapBatches.Batch065.certificate5226.Valid := DerivedMapBatches.Batch065.certificate5226valid
theorem linkedComposition1538 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5226.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5226.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate997.c x) := by
  rw [firstLink1538, secondLink1538]
  exact DerivedMapBatches.Batch065.certificate5226valid.2 x
theorem rhsLink1538 : DerivedMapBatches.Batch065.certificate5226.c = DerivedMapBatches.Batch012.certificate1031.c := by decide
theorem rhsValid1538 : DerivedMapBatches.Batch012.certificate1031.Valid := DerivedMapBatches.Batch012.certificate1031valid
theorem linkedCommutativity1538 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5226.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate997.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1031.c x := by
  exact (linkedComposition1538 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1538)
theorem firstLink1539 : DerivedMapBatches.Batch012.certificate1000.c = DerivedMapBatches.Batch065.certificate5227.a := by decide
theorem secondLink1539 : DerivedMapBatches.Batch012.certificate1032.algebra.mat = DerivedMapBatches.Batch065.certificate5227.b := by decide
theorem firstValid1539 : DerivedMapBatches.Batch012.certificate1000.Valid := DerivedMapBatches.Batch012.certificate1000valid
theorem secondValid1539 : DerivedMapBatches.Batch012.certificate1032.Valid := DerivedMapBatches.Batch012.certificate1032valid
theorem outputValid1539 : DerivedMapBatches.Batch065.certificate5227.Valid := DerivedMapBatches.Batch065.certificate5227valid
theorem linkedComposition1539 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5227.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5227.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1032.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1000.c x) := by
  rw [firstLink1539, secondLink1539]
  exact DerivedMapBatches.Batch065.certificate5227valid.2 x
theorem rhsLink1539 : DerivedMapBatches.Batch065.certificate5227.c = DerivedMapBatches.Batch012.certificate1033.c := by decide
theorem rhsValid1539 : DerivedMapBatches.Batch012.certificate1033.Valid := DerivedMapBatches.Batch012.certificate1033valid
theorem linkedCommutativity1539 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5227.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1032.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1000.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1033.c x := by
  exact (linkedComposition1539 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1539)
theorem firstLink1540 : DerivedMapBatches.Batch012.certificate1002.c = DerivedMapBatches.Batch065.certificate5228.a := by decide
theorem secondLink1540 : DerivedMapBatches.Batch010.certificate816.algebra.mat = DerivedMapBatches.Batch065.certificate5228.b := by decide
theorem firstValid1540 : DerivedMapBatches.Batch012.certificate1002.Valid := DerivedMapBatches.Batch012.certificate1002valid
theorem secondValid1540 : DerivedMapBatches.Batch010.certificate816.Valid := DerivedMapBatches.Batch010.certificate816valid
theorem outputValid1540 : DerivedMapBatches.Batch065.certificate5228.Valid := DerivedMapBatches.Batch065.certificate5228valid
theorem linkedComposition1540 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5228.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5228.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1002.c x) := by
  rw [firstLink1540, secondLink1540]
  exact DerivedMapBatches.Batch065.certificate5228valid.2 x
theorem rhsLink1540 : DerivedMapBatches.Batch065.certificate5228.c = DerivedMapBatches.Batch012.certificate1034.c := by decide
theorem rhsValid1540 : DerivedMapBatches.Batch012.certificate1034.Valid := DerivedMapBatches.Batch012.certificate1034valid
theorem linkedCommutativity1540 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5228.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1002.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1034.c x := by
  exact (linkedComposition1540 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1540)
theorem firstLink1541 : DerivedMapBatches.Batch012.certificate1004.c = DerivedMapBatches.Batch065.certificate5229.a := by decide
theorem secondLink1541 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch065.certificate5229.b := by decide
theorem firstValid1541 : DerivedMapBatches.Batch012.certificate1004.Valid := DerivedMapBatches.Batch012.certificate1004valid
theorem secondValid1541 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid1541 : DerivedMapBatches.Batch065.certificate5229.Valid := DerivedMapBatches.Batch065.certificate5229valid
theorem linkedComposition1541 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5229.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5229.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1004.c x) := by
  rw [firstLink1541, secondLink1541]
  exact DerivedMapBatches.Batch065.certificate5229valid.2 x
theorem rhsLink1541 : DerivedMapBatches.Batch065.certificate5229.c = DerivedMapBatches.Batch012.certificate1035.c := by decide
theorem rhsValid1541 : DerivedMapBatches.Batch012.certificate1035.Valid := DerivedMapBatches.Batch012.certificate1035valid
theorem linkedCommutativity1541 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5229.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1004.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1035.c x := by
  exact (linkedComposition1541 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1541)
theorem firstLink1542 : DerivedMapBatches.Batch012.certificate1006.c = DerivedMapBatches.Batch065.certificate5230.a := by decide
theorem secondLink1542 : DerivedMapBatches.Batch010.certificate831.algebra.mat = DerivedMapBatches.Batch065.certificate5230.b := by decide
theorem firstValid1542 : DerivedMapBatches.Batch012.certificate1006.Valid := DerivedMapBatches.Batch012.certificate1006valid
theorem secondValid1542 : DerivedMapBatches.Batch010.certificate831.Valid := DerivedMapBatches.Batch010.certificate831valid
theorem outputValid1542 : DerivedMapBatches.Batch065.certificate5230.Valid := DerivedMapBatches.Batch065.certificate5230valid
theorem linkedComposition1542 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5230.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5230.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1006.c x) := by
  rw [firstLink1542, secondLink1542]
  exact DerivedMapBatches.Batch065.certificate5230valid.2 x
theorem rhsLink1542 : DerivedMapBatches.Batch065.certificate5230.c = DerivedMapBatches.Batch012.certificate1036.c := by decide
theorem rhsValid1542 : DerivedMapBatches.Batch012.certificate1036.Valid := DerivedMapBatches.Batch012.certificate1036valid
theorem linkedCommutativity1542 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5230.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1006.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1036.c x := by
  exact (linkedComposition1542 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1542)
theorem firstLink1543 : DerivedMapBatches.Batch012.certificate1008.c = DerivedMapBatches.Batch065.certificate5231.a := by decide
theorem secondLink1543 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch065.certificate5231.b := by decide
theorem firstValid1543 : DerivedMapBatches.Batch012.certificate1008.Valid := DerivedMapBatches.Batch012.certificate1008valid
theorem secondValid1543 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid1543 : DerivedMapBatches.Batch065.certificate5231.Valid := DerivedMapBatches.Batch065.certificate5231valid
theorem linkedComposition1543 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5231.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5231.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1008.c x) := by
  rw [firstLink1543, secondLink1543]
  exact DerivedMapBatches.Batch065.certificate5231valid.2 x
theorem rhsLink1543 : DerivedMapBatches.Batch065.certificate5231.c = DerivedMapBatches.Batch012.certificate1037.c := by decide
theorem rhsValid1543 : DerivedMapBatches.Batch012.certificate1037.Valid := DerivedMapBatches.Batch012.certificate1037valid
theorem linkedCommutativity1543 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5231.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1008.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1037.c x := by
  exact (linkedComposition1543 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1543)
theorem firstLink1544 : DerivedMapBatches.Batch012.certificate1010.c = DerivedMapBatches.Batch065.certificate5232.a := by decide
theorem secondLink1544 : DerivedMapBatches.Batch010.certificate846.algebra.mat = DerivedMapBatches.Batch065.certificate5232.b := by decide
theorem firstValid1544 : DerivedMapBatches.Batch012.certificate1010.Valid := DerivedMapBatches.Batch012.certificate1010valid
theorem secondValid1544 : DerivedMapBatches.Batch010.certificate846.Valid := DerivedMapBatches.Batch010.certificate846valid
theorem outputValid1544 : DerivedMapBatches.Batch065.certificate5232.Valid := DerivedMapBatches.Batch065.certificate5232valid
theorem linkedComposition1544 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5232.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5232.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1010.c x) := by
  rw [firstLink1544, secondLink1544]
  exact DerivedMapBatches.Batch065.certificate5232valid.2 x
theorem rhsLink1544 : DerivedMapBatches.Batch065.certificate5232.c = DerivedMapBatches.Batch012.certificate1038.c := by decide
theorem rhsValid1544 : DerivedMapBatches.Batch012.certificate1038.Valid := DerivedMapBatches.Batch012.certificate1038valid
theorem linkedCommutativity1544 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5232.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1010.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1038.c x := by
  exact (linkedComposition1544 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1544)
theorem firstLink1545 : DerivedMapBatches.Batch012.certificate1012.c = DerivedMapBatches.Batch065.certificate5233.a := by decide
theorem secondLink1545 : DerivedMapBatches.Batch010.certificate849.algebra.mat = DerivedMapBatches.Batch065.certificate5233.b := by decide
theorem firstValid1545 : DerivedMapBatches.Batch012.certificate1012.Valid := DerivedMapBatches.Batch012.certificate1012valid
theorem secondValid1545 : DerivedMapBatches.Batch010.certificate849.Valid := DerivedMapBatches.Batch010.certificate849valid
theorem outputValid1545 : DerivedMapBatches.Batch065.certificate5233.Valid := DerivedMapBatches.Batch065.certificate5233valid
theorem linkedComposition1545 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5233.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5233.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1012.c x) := by
  rw [firstLink1545, secondLink1545]
  exact DerivedMapBatches.Batch065.certificate5233valid.2 x
theorem rhsLink1545 : DerivedMapBatches.Batch065.certificate5233.c = DerivedMapBatches.Batch012.certificate1039.c := by decide
theorem rhsValid1545 : DerivedMapBatches.Batch012.certificate1039.Valid := DerivedMapBatches.Batch012.certificate1039valid
theorem linkedCommutativity1545 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5233.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1012.c x) = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1039.c x := by
  exact (linkedComposition1545 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1545)
theorem firstLink1546 : DerivedMapBatches.Batch012.certificate1014.c = DerivedMapBatches.Batch065.certificate5234.a := by decide
theorem secondLink1546 : DerivedMapBatches.Batch010.certificate855.algebra.mat = DerivedMapBatches.Batch065.certificate5234.b := by decide
theorem firstValid1546 : DerivedMapBatches.Batch012.certificate1014.Valid := DerivedMapBatches.Batch012.certificate1014valid
theorem secondValid1546 : DerivedMapBatches.Batch010.certificate855.Valid := DerivedMapBatches.Batch010.certificate855valid
theorem outputValid1546 : DerivedMapBatches.Batch065.certificate5234.Valid := DerivedMapBatches.Batch065.certificate5234valid
theorem linkedComposition1546 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5234.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5234.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1014.c x) := by
  rw [firstLink1546, secondLink1546]
  exact DerivedMapBatches.Batch065.certificate5234valid.2 x
theorem rhsLink1546 : DerivedMapBatches.Batch065.certificate5234.c = DerivedMapBatches.Batch013.certificate1040.c := by decide
theorem rhsValid1546 : DerivedMapBatches.Batch013.certificate1040.Valid := DerivedMapBatches.Batch013.certificate1040valid
theorem linkedCommutativity1546 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5234.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1014.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1040.c x := by
  exact (linkedComposition1546 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1546)
theorem firstLink1547 : DerivedMapBatches.Batch012.certificate1016.c = DerivedMapBatches.Batch065.certificate5235.a := by decide
theorem secondLink1547 : DerivedMapBatches.Batch010.certificate858.algebra.mat = DerivedMapBatches.Batch065.certificate5235.b := by decide
theorem firstValid1547 : DerivedMapBatches.Batch012.certificate1016.Valid := DerivedMapBatches.Batch012.certificate1016valid
theorem secondValid1547 : DerivedMapBatches.Batch010.certificate858.Valid := DerivedMapBatches.Batch010.certificate858valid
theorem outputValid1547 : DerivedMapBatches.Batch065.certificate5235.Valid := DerivedMapBatches.Batch065.certificate5235valid
theorem linkedComposition1547 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5235.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5235.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1016.c x) := by
  rw [firstLink1547, secondLink1547]
  exact DerivedMapBatches.Batch065.certificate5235valid.2 x
theorem rhsLink1547 : DerivedMapBatches.Batch065.certificate5235.c = DerivedMapBatches.Batch013.certificate1041.c := by decide
theorem rhsValid1547 : DerivedMapBatches.Batch013.certificate1041.Valid := DerivedMapBatches.Batch013.certificate1041valid
theorem linkedCommutativity1547 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5235.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1016.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1041.c x := by
  exact (linkedComposition1547 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1547)
theorem firstLink1548 : DerivedMapBatches.Batch012.certificate1018.c = DerivedMapBatches.Batch065.certificate5236.a := by decide
theorem secondLink1548 : DerivedMapBatches.Batch010.certificate864.algebra.mat = DerivedMapBatches.Batch065.certificate5236.b := by decide
theorem firstValid1548 : DerivedMapBatches.Batch012.certificate1018.Valid := DerivedMapBatches.Batch012.certificate1018valid
theorem secondValid1548 : DerivedMapBatches.Batch010.certificate864.Valid := DerivedMapBatches.Batch010.certificate864valid
theorem outputValid1548 : DerivedMapBatches.Batch065.certificate5236.Valid := DerivedMapBatches.Batch065.certificate5236valid
theorem linkedComposition1548 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5236.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1018.c x) := by
  rw [firstLink1548, secondLink1548]
  exact DerivedMapBatches.Batch065.certificate5236valid.2 x
theorem rhsLink1548 : DerivedMapBatches.Batch065.certificate5236.c = DerivedMapBatches.Batch013.certificate1042.c := by decide
theorem rhsValid1548 : DerivedMapBatches.Batch013.certificate1042.Valid := DerivedMapBatches.Batch013.certificate1042valid
theorem linkedCommutativity1548 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1018.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1042.c x := by
  exact (linkedComposition1548 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1548)
theorem firstLink1549 : DerivedMapBatches.Batch012.certificate1020.c = DerivedMapBatches.Batch065.certificate5237.a := by decide
theorem secondLink1549 : DerivedMapBatches.Batch010.certificate873.algebra.mat = DerivedMapBatches.Batch065.certificate5237.b := by decide
theorem firstValid1549 : DerivedMapBatches.Batch012.certificate1020.Valid := DerivedMapBatches.Batch012.certificate1020valid
theorem secondValid1549 : DerivedMapBatches.Batch010.certificate873.Valid := DerivedMapBatches.Batch010.certificate873valid
theorem outputValid1549 : DerivedMapBatches.Batch065.certificate5237.Valid := DerivedMapBatches.Batch065.certificate5237valid
theorem linkedComposition1549 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5237.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch065.certificate5237.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1020.c x) := by
  rw [firstLink1549, secondLink1549]
  exact DerivedMapBatches.Batch065.certificate5237valid.2 x
theorem rhsLink1549 : DerivedMapBatches.Batch065.certificate5237.c = DerivedMapBatches.Batch013.certificate1043.c := by decide
theorem rhsValid1549 : DerivedMapBatches.Batch013.certificate1043.Valid := DerivedMapBatches.Batch013.certificate1043valid
theorem linkedCommutativity1549 (x : LinearCertificates.Vec DerivedMapBatches.Batch065.certificate5237.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1020.c x) = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1043.c x := by
  exact (linkedComposition1549 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1549)
end DerivedLinkageBatches.Batch030
