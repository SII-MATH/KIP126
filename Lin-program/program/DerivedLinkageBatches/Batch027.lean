import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch044
import DerivedMapBatches.Batch045
import DerivedMapBatches.Batch046
import DerivedMapBatches.Batch062
import DerivedMapBatches.Batch063
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch027
theorem firstLink1350 : DerivedMapBatches.Batch062.certificate5032.algebra.mat = DerivedMapBatches.Batch062.certificate5035.a := by decide
theorem secondLink1350 : DerivedMapBatches.Batch062.certificate5033.algebra.mat = DerivedMapBatches.Batch062.certificate5035.b := by decide
theorem firstValid1350 : DerivedMapBatches.Batch062.certificate5032.Valid := DerivedMapBatches.Batch062.certificate5032valid
theorem secondValid1350 : DerivedMapBatches.Batch062.certificate5033.Valid := DerivedMapBatches.Batch062.certificate5033valid
theorem outputValid1350 : DerivedMapBatches.Batch062.certificate5035.Valid := DerivedMapBatches.Batch062.certificate5035valid
theorem linkedComposition1350 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5035.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5035.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5033.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5032.algebra.mat x) := by
  rw [firstLink1350, secondLink1350]
  exact DerivedMapBatches.Batch062.certificate5035valid.2 x
theorem rhsLink1350 : DerivedMapBatches.Batch062.certificate5035.c = DerivedMapBatches.Batch062.certificate5034.algebra.mat := by decide
theorem rhsValid1350 : DerivedMapBatches.Batch062.certificate5034.Valid := DerivedMapBatches.Batch062.certificate5034valid
theorem linkedCommutativity1350 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5035.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5033.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5032.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5034.algebra.mat x := by
  exact (linkedComposition1350 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1350)
theorem firstLink1351 : DerivedMapBatches.Batch062.certificate5036.algebra.mat = DerivedMapBatches.Batch062.certificate5039.a := by decide
theorem secondLink1351 : DerivedMapBatches.Batch062.certificate5037.algebra.mat = DerivedMapBatches.Batch062.certificate5039.b := by decide
theorem firstValid1351 : DerivedMapBatches.Batch062.certificate5036.Valid := DerivedMapBatches.Batch062.certificate5036valid
theorem secondValid1351 : DerivedMapBatches.Batch062.certificate5037.Valid := DerivedMapBatches.Batch062.certificate5037valid
theorem outputValid1351 : DerivedMapBatches.Batch062.certificate5039.Valid := DerivedMapBatches.Batch062.certificate5039valid
theorem linkedComposition1351 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5039.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5039.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5037.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5036.algebra.mat x) := by
  rw [firstLink1351, secondLink1351]
  exact DerivedMapBatches.Batch062.certificate5039valid.2 x
theorem rhsLink1351 : DerivedMapBatches.Batch062.certificate5039.c = DerivedMapBatches.Batch062.certificate5038.algebra.mat := by decide
theorem rhsValid1351 : DerivedMapBatches.Batch062.certificate5038.Valid := DerivedMapBatches.Batch062.certificate5038valid
theorem linkedCommutativity1351 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5039.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5037.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5036.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5038.algebra.mat x := by
  exact (linkedComposition1351 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1351)
theorem firstLink1352 : DerivedMapBatches.Batch044.certificate3546.algebra.mat = DerivedMapBatches.Batch063.certificate5040.a := by decide
theorem secondLink1352 : DerivedMapBatches.Batch044.certificate3547.algebra.mat = DerivedMapBatches.Batch063.certificate5040.b := by decide
theorem firstValid1352 : DerivedMapBatches.Batch044.certificate3546.Valid := DerivedMapBatches.Batch044.certificate3546valid
theorem secondValid1352 : DerivedMapBatches.Batch044.certificate3547.Valid := DerivedMapBatches.Batch044.certificate3547valid
theorem outputValid1352 : DerivedMapBatches.Batch063.certificate5040.Valid := DerivedMapBatches.Batch063.certificate5040valid
theorem linkedComposition1352 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5040.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5040.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3547.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3546.algebra.mat x) := by
  rw [firstLink1352, secondLink1352]
  exact DerivedMapBatches.Batch063.certificate5040valid.2 x
theorem rhsLink1352 : DerivedMapBatches.Batch063.certificate5040.c = DerivedMapBatches.Batch044.certificate3548.c := by decide
theorem rhsValid1352 : DerivedMapBatches.Batch044.certificate3548.Valid := DerivedMapBatches.Batch044.certificate3548valid
theorem linkedCommutativity1352 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5040.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3547.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3546.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3548.c x := by
  exact (linkedComposition1352 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1352)
theorem firstLink1353 : DerivedMapBatches.Batch044.certificate3549.algebra.mat = DerivedMapBatches.Batch063.certificate5041.a := by decide
theorem secondLink1353 : DerivedMapBatches.Batch044.certificate3550.algebra.mat = DerivedMapBatches.Batch063.certificate5041.b := by decide
theorem firstValid1353 : DerivedMapBatches.Batch044.certificate3549.Valid := DerivedMapBatches.Batch044.certificate3549valid
theorem secondValid1353 : DerivedMapBatches.Batch044.certificate3550.Valid := DerivedMapBatches.Batch044.certificate3550valid
theorem outputValid1353 : DerivedMapBatches.Batch063.certificate5041.Valid := DerivedMapBatches.Batch063.certificate5041valid
theorem linkedComposition1353 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5041.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5041.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3550.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3549.algebra.mat x) := by
  rw [firstLink1353, secondLink1353]
  exact DerivedMapBatches.Batch063.certificate5041valid.2 x
theorem rhsLink1353 : DerivedMapBatches.Batch063.certificate5041.c = DerivedMapBatches.Batch044.certificate3551.c := by decide
theorem rhsValid1353 : DerivedMapBatches.Batch044.certificate3551.Valid := DerivedMapBatches.Batch044.certificate3551valid
theorem linkedCommutativity1353 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5041.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3550.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3549.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3551.c x := by
  exact (linkedComposition1353 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1353)
theorem firstLink1354 : DerivedMapBatches.Batch044.certificate3552.algebra.mat = DerivedMapBatches.Batch063.certificate5042.a := by decide
theorem secondLink1354 : DerivedMapBatches.Batch044.certificate3553.algebra.mat = DerivedMapBatches.Batch063.certificate5042.b := by decide
theorem firstValid1354 : DerivedMapBatches.Batch044.certificate3552.Valid := DerivedMapBatches.Batch044.certificate3552valid
theorem secondValid1354 : DerivedMapBatches.Batch044.certificate3553.Valid := DerivedMapBatches.Batch044.certificate3553valid
theorem outputValid1354 : DerivedMapBatches.Batch063.certificate5042.Valid := DerivedMapBatches.Batch063.certificate5042valid
theorem linkedComposition1354 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5042.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5042.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3553.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3552.algebra.mat x) := by
  rw [firstLink1354, secondLink1354]
  exact DerivedMapBatches.Batch063.certificate5042valid.2 x
theorem rhsLink1354 : DerivedMapBatches.Batch063.certificate5042.c = DerivedMapBatches.Batch044.certificate3554.c := by decide
theorem rhsValid1354 : DerivedMapBatches.Batch044.certificate3554.Valid := DerivedMapBatches.Batch044.certificate3554valid
theorem linkedCommutativity1354 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5042.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3553.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3552.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3554.c x := by
  exact (linkedComposition1354 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1354)
theorem firstLink1355 : DerivedMapBatches.Batch044.certificate3555.algebra.mat = DerivedMapBatches.Batch063.certificate5043.a := by decide
theorem secondLink1355 : DerivedMapBatches.Batch044.certificate3556.algebra.mat = DerivedMapBatches.Batch063.certificate5043.b := by decide
theorem firstValid1355 : DerivedMapBatches.Batch044.certificate3555.Valid := DerivedMapBatches.Batch044.certificate3555valid
theorem secondValid1355 : DerivedMapBatches.Batch044.certificate3556.Valid := DerivedMapBatches.Batch044.certificate3556valid
theorem outputValid1355 : DerivedMapBatches.Batch063.certificate5043.Valid := DerivedMapBatches.Batch063.certificate5043valid
theorem linkedComposition1355 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5043.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5043.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3556.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3555.algebra.mat x) := by
  rw [firstLink1355, secondLink1355]
  exact DerivedMapBatches.Batch063.certificate5043valid.2 x
theorem rhsLink1355 : DerivedMapBatches.Batch063.certificate5043.c = DerivedMapBatches.Batch044.certificate3557.c := by decide
theorem rhsValid1355 : DerivedMapBatches.Batch044.certificate3557.Valid := DerivedMapBatches.Batch044.certificate3557valid
theorem linkedCommutativity1355 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5043.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3556.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3555.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3557.c x := by
  exact (linkedComposition1355 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1355)
theorem firstLink1356 : DerivedMapBatches.Batch044.certificate3558.algebra.mat = DerivedMapBatches.Batch063.certificate5044.a := by decide
theorem secondLink1356 : DerivedMapBatches.Batch044.certificate3559.algebra.mat = DerivedMapBatches.Batch063.certificate5044.b := by decide
theorem firstValid1356 : DerivedMapBatches.Batch044.certificate3558.Valid := DerivedMapBatches.Batch044.certificate3558valid
theorem secondValid1356 : DerivedMapBatches.Batch044.certificate3559.Valid := DerivedMapBatches.Batch044.certificate3559valid
theorem outputValid1356 : DerivedMapBatches.Batch063.certificate5044.Valid := DerivedMapBatches.Batch063.certificate5044valid
theorem linkedComposition1356 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5044.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5044.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3559.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3558.algebra.mat x) := by
  rw [firstLink1356, secondLink1356]
  exact DerivedMapBatches.Batch063.certificate5044valid.2 x
theorem rhsLink1356 : DerivedMapBatches.Batch063.certificate5044.c = DerivedMapBatches.Batch044.certificate3560.c := by decide
theorem rhsValid1356 : DerivedMapBatches.Batch044.certificate3560.Valid := DerivedMapBatches.Batch044.certificate3560valid
theorem linkedCommutativity1356 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5044.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3559.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3558.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3560.c x := by
  exact (linkedComposition1356 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1356)
theorem firstLink1357 : DerivedMapBatches.Batch044.certificate3561.algebra.mat = DerivedMapBatches.Batch063.certificate5045.a := by decide
theorem secondLink1357 : DerivedMapBatches.Batch044.certificate3562.algebra.mat = DerivedMapBatches.Batch063.certificate5045.b := by decide
theorem firstValid1357 : DerivedMapBatches.Batch044.certificate3561.Valid := DerivedMapBatches.Batch044.certificate3561valid
theorem secondValid1357 : DerivedMapBatches.Batch044.certificate3562.Valid := DerivedMapBatches.Batch044.certificate3562valid
theorem outputValid1357 : DerivedMapBatches.Batch063.certificate5045.Valid := DerivedMapBatches.Batch063.certificate5045valid
theorem linkedComposition1357 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5045.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5045.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3561.algebra.mat x) := by
  rw [firstLink1357, secondLink1357]
  exact DerivedMapBatches.Batch063.certificate5045valid.2 x
theorem rhsLink1357 : DerivedMapBatches.Batch063.certificate5045.c = DerivedMapBatches.Batch044.certificate3563.c := by decide
theorem rhsValid1357 : DerivedMapBatches.Batch044.certificate3563.Valid := DerivedMapBatches.Batch044.certificate3563valid
theorem linkedCommutativity1357 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5045.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3561.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3563.c x := by
  exact (linkedComposition1357 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1357)
theorem firstLink1358 : DerivedMapBatches.Batch044.certificate3564.algebra.mat = DerivedMapBatches.Batch063.certificate5046.a := by decide
theorem secondLink1358 : DerivedMapBatches.Batch044.certificate3565.algebra.mat = DerivedMapBatches.Batch063.certificate5046.b := by decide
theorem firstValid1358 : DerivedMapBatches.Batch044.certificate3564.Valid := DerivedMapBatches.Batch044.certificate3564valid
theorem secondValid1358 : DerivedMapBatches.Batch044.certificate3565.Valid := DerivedMapBatches.Batch044.certificate3565valid
theorem outputValid1358 : DerivedMapBatches.Batch063.certificate5046.Valid := DerivedMapBatches.Batch063.certificate5046valid
theorem linkedComposition1358 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5046.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5046.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3565.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3564.algebra.mat x) := by
  rw [firstLink1358, secondLink1358]
  exact DerivedMapBatches.Batch063.certificate5046valid.2 x
theorem rhsLink1358 : DerivedMapBatches.Batch063.certificate5046.c = DerivedMapBatches.Batch044.certificate3566.c := by decide
theorem rhsValid1358 : DerivedMapBatches.Batch044.certificate3566.Valid := DerivedMapBatches.Batch044.certificate3566valid
theorem linkedCommutativity1358 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5046.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3565.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3564.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3566.c x := by
  exact (linkedComposition1358 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1358)
theorem firstLink1359 : DerivedMapBatches.Batch044.certificate3567.algebra.mat = DerivedMapBatches.Batch063.certificate5047.a := by decide
theorem secondLink1359 : DerivedMapBatches.Batch044.certificate3568.algebra.mat = DerivedMapBatches.Batch063.certificate5047.b := by decide
theorem firstValid1359 : DerivedMapBatches.Batch044.certificate3567.Valid := DerivedMapBatches.Batch044.certificate3567valid
theorem secondValid1359 : DerivedMapBatches.Batch044.certificate3568.Valid := DerivedMapBatches.Batch044.certificate3568valid
theorem outputValid1359 : DerivedMapBatches.Batch063.certificate5047.Valid := DerivedMapBatches.Batch063.certificate5047valid
theorem linkedComposition1359 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5047.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5047.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3567.algebra.mat x) := by
  rw [firstLink1359, secondLink1359]
  exact DerivedMapBatches.Batch063.certificate5047valid.2 x
theorem rhsLink1359 : DerivedMapBatches.Batch063.certificate5047.c = DerivedMapBatches.Batch044.certificate3569.c := by decide
theorem rhsValid1359 : DerivedMapBatches.Batch044.certificate3569.Valid := DerivedMapBatches.Batch044.certificate3569valid
theorem linkedCommutativity1359 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5047.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3567.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3569.c x := by
  exact (linkedComposition1359 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1359)
theorem firstLink1360 : DerivedMapBatches.Batch044.certificate3570.algebra.mat = DerivedMapBatches.Batch063.certificate5048.a := by decide
theorem secondLink1360 : DerivedMapBatches.Batch044.certificate3571.algebra.mat = DerivedMapBatches.Batch063.certificate5048.b := by decide
theorem firstValid1360 : DerivedMapBatches.Batch044.certificate3570.Valid := DerivedMapBatches.Batch044.certificate3570valid
theorem secondValid1360 : DerivedMapBatches.Batch044.certificate3571.Valid := DerivedMapBatches.Batch044.certificate3571valid
theorem outputValid1360 : DerivedMapBatches.Batch063.certificate5048.Valid := DerivedMapBatches.Batch063.certificate5048valid
theorem linkedComposition1360 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5048.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5048.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3571.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3570.algebra.mat x) := by
  rw [firstLink1360, secondLink1360]
  exact DerivedMapBatches.Batch063.certificate5048valid.2 x
theorem rhsLink1360 : DerivedMapBatches.Batch063.certificate5048.c = DerivedMapBatches.Batch044.certificate3572.c := by decide
theorem rhsValid1360 : DerivedMapBatches.Batch044.certificate3572.Valid := DerivedMapBatches.Batch044.certificate3572valid
theorem linkedCommutativity1360 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5048.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3571.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3570.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3572.c x := by
  exact (linkedComposition1360 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1360)
theorem firstLink1361 : DerivedMapBatches.Batch044.certificate3573.algebra.mat = DerivedMapBatches.Batch063.certificate5049.a := by decide
theorem secondLink1361 : DerivedMapBatches.Batch044.certificate3574.algebra.mat = DerivedMapBatches.Batch063.certificate5049.b := by decide
theorem firstValid1361 : DerivedMapBatches.Batch044.certificate3573.Valid := DerivedMapBatches.Batch044.certificate3573valid
theorem secondValid1361 : DerivedMapBatches.Batch044.certificate3574.Valid := DerivedMapBatches.Batch044.certificate3574valid
theorem outputValid1361 : DerivedMapBatches.Batch063.certificate5049.Valid := DerivedMapBatches.Batch063.certificate5049valid
theorem linkedComposition1361 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5049.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5049.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3573.algebra.mat x) := by
  rw [firstLink1361, secondLink1361]
  exact DerivedMapBatches.Batch063.certificate5049valid.2 x
theorem rhsLink1361 : DerivedMapBatches.Batch063.certificate5049.c = DerivedMapBatches.Batch044.certificate3575.c := by decide
theorem rhsValid1361 : DerivedMapBatches.Batch044.certificate3575.Valid := DerivedMapBatches.Batch044.certificate3575valid
theorem linkedCommutativity1361 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5049.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3573.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3575.c x := by
  exact (linkedComposition1361 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1361)
theorem firstLink1362 : DerivedMapBatches.Batch044.certificate3576.algebra.mat = DerivedMapBatches.Batch063.certificate5050.a := by decide
theorem secondLink1362 : DerivedMapBatches.Batch044.certificate3577.algebra.mat = DerivedMapBatches.Batch063.certificate5050.b := by decide
theorem firstValid1362 : DerivedMapBatches.Batch044.certificate3576.Valid := DerivedMapBatches.Batch044.certificate3576valid
theorem secondValid1362 : DerivedMapBatches.Batch044.certificate3577.Valid := DerivedMapBatches.Batch044.certificate3577valid
theorem outputValid1362 : DerivedMapBatches.Batch063.certificate5050.Valid := DerivedMapBatches.Batch063.certificate5050valid
theorem linkedComposition1362 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5050.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5050.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3577.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3576.algebra.mat x) := by
  rw [firstLink1362, secondLink1362]
  exact DerivedMapBatches.Batch063.certificate5050valid.2 x
theorem rhsLink1362 : DerivedMapBatches.Batch063.certificate5050.c = DerivedMapBatches.Batch044.certificate3578.c := by decide
theorem rhsValid1362 : DerivedMapBatches.Batch044.certificate3578.Valid := DerivedMapBatches.Batch044.certificate3578valid
theorem linkedCommutativity1362 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5050.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3577.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3576.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3578.c x := by
  exact (linkedComposition1362 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1362)
theorem firstLink1363 : DerivedMapBatches.Batch044.certificate3579.algebra.mat = DerivedMapBatches.Batch063.certificate5051.a := by decide
theorem secondLink1363 : DerivedMapBatches.Batch044.certificate3580.algebra.mat = DerivedMapBatches.Batch063.certificate5051.b := by decide
theorem firstValid1363 : DerivedMapBatches.Batch044.certificate3579.Valid := DerivedMapBatches.Batch044.certificate3579valid
theorem secondValid1363 : DerivedMapBatches.Batch044.certificate3580.Valid := DerivedMapBatches.Batch044.certificate3580valid
theorem outputValid1363 : DerivedMapBatches.Batch063.certificate5051.Valid := DerivedMapBatches.Batch063.certificate5051valid
theorem linkedComposition1363 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5051.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5051.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3579.algebra.mat x) := by
  rw [firstLink1363, secondLink1363]
  exact DerivedMapBatches.Batch063.certificate5051valid.2 x
theorem rhsLink1363 : DerivedMapBatches.Batch063.certificate5051.c = DerivedMapBatches.Batch044.certificate3581.c := by decide
theorem rhsValid1363 : DerivedMapBatches.Batch044.certificate3581.Valid := DerivedMapBatches.Batch044.certificate3581valid
theorem linkedCommutativity1363 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5051.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3579.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3581.c x := by
  exact (linkedComposition1363 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1363)
theorem firstLink1364 : DerivedMapBatches.Batch044.certificate3582.algebra.mat = DerivedMapBatches.Batch063.certificate5052.a := by decide
theorem secondLink1364 : DerivedMapBatches.Batch044.certificate3583.algebra.mat = DerivedMapBatches.Batch063.certificate5052.b := by decide
theorem firstValid1364 : DerivedMapBatches.Batch044.certificate3582.Valid := DerivedMapBatches.Batch044.certificate3582valid
theorem secondValid1364 : DerivedMapBatches.Batch044.certificate3583.Valid := DerivedMapBatches.Batch044.certificate3583valid
theorem outputValid1364 : DerivedMapBatches.Batch063.certificate5052.Valid := DerivedMapBatches.Batch063.certificate5052valid
theorem linkedComposition1364 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5052.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5052.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3583.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3582.algebra.mat x) := by
  rw [firstLink1364, secondLink1364]
  exact DerivedMapBatches.Batch063.certificate5052valid.2 x
theorem rhsLink1364 : DerivedMapBatches.Batch063.certificate5052.c = DerivedMapBatches.Batch044.certificate3584.c := by decide
theorem rhsValid1364 : DerivedMapBatches.Batch044.certificate3584.Valid := DerivedMapBatches.Batch044.certificate3584valid
theorem linkedCommutativity1364 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5052.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3583.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3582.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3584.c x := by
  exact (linkedComposition1364 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1364)
theorem firstLink1365 : DerivedMapBatches.Batch044.certificate3585.algebra.mat = DerivedMapBatches.Batch063.certificate5053.a := by decide
theorem secondLink1365 : DerivedMapBatches.Batch044.certificate3586.algebra.mat = DerivedMapBatches.Batch063.certificate5053.b := by decide
theorem firstValid1365 : DerivedMapBatches.Batch044.certificate3585.Valid := DerivedMapBatches.Batch044.certificate3585valid
theorem secondValid1365 : DerivedMapBatches.Batch044.certificate3586.Valid := DerivedMapBatches.Batch044.certificate3586valid
theorem outputValid1365 : DerivedMapBatches.Batch063.certificate5053.Valid := DerivedMapBatches.Batch063.certificate5053valid
theorem linkedComposition1365 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5053.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5053.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3586.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3585.algebra.mat x) := by
  rw [firstLink1365, secondLink1365]
  exact DerivedMapBatches.Batch063.certificate5053valid.2 x
theorem rhsLink1365 : DerivedMapBatches.Batch063.certificate5053.c = DerivedMapBatches.Batch044.certificate3587.c := by decide
theorem rhsValid1365 : DerivedMapBatches.Batch044.certificate3587.Valid := DerivedMapBatches.Batch044.certificate3587valid
theorem linkedCommutativity1365 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5053.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3586.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3585.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3587.c x := by
  exact (linkedComposition1365 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1365)
theorem firstLink1366 : DerivedMapBatches.Batch044.certificate3588.algebra.mat = DerivedMapBatches.Batch063.certificate5054.a := by decide
theorem secondLink1366 : DerivedMapBatches.Batch044.certificate3589.algebra.mat = DerivedMapBatches.Batch063.certificate5054.b := by decide
theorem firstValid1366 : DerivedMapBatches.Batch044.certificate3588.Valid := DerivedMapBatches.Batch044.certificate3588valid
theorem secondValid1366 : DerivedMapBatches.Batch044.certificate3589.Valid := DerivedMapBatches.Batch044.certificate3589valid
theorem outputValid1366 : DerivedMapBatches.Batch063.certificate5054.Valid := DerivedMapBatches.Batch063.certificate5054valid
theorem linkedComposition1366 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5054.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5054.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3589.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3588.algebra.mat x) := by
  rw [firstLink1366, secondLink1366]
  exact DerivedMapBatches.Batch063.certificate5054valid.2 x
theorem rhsLink1366 : DerivedMapBatches.Batch063.certificate5054.c = DerivedMapBatches.Batch044.certificate3590.c := by decide
theorem rhsValid1366 : DerivedMapBatches.Batch044.certificate3590.Valid := DerivedMapBatches.Batch044.certificate3590valid
theorem linkedCommutativity1366 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5054.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3589.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3588.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3590.c x := by
  exact (linkedComposition1366 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1366)
theorem firstLink1367 : DerivedMapBatches.Batch044.certificate3591.algebra.mat = DerivedMapBatches.Batch063.certificate5055.a := by decide
theorem secondLink1367 : DerivedMapBatches.Batch014.certificate1140.algebra.mat = DerivedMapBatches.Batch063.certificate5055.b := by decide
theorem firstValid1367 : DerivedMapBatches.Batch044.certificate3591.Valid := DerivedMapBatches.Batch044.certificate3591valid
theorem secondValid1367 : DerivedMapBatches.Batch014.certificate1140.Valid := DerivedMapBatches.Batch014.certificate1140valid
theorem outputValid1367 : DerivedMapBatches.Batch063.certificate5055.Valid := DerivedMapBatches.Batch063.certificate5055valid
theorem linkedComposition1367 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5055.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5055.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3591.algebra.mat x) := by
  rw [firstLink1367, secondLink1367]
  exact DerivedMapBatches.Batch063.certificate5055valid.2 x
theorem rhsLink1367 : DerivedMapBatches.Batch063.certificate5055.c = DerivedMapBatches.Batch044.certificate3592.c := by decide
theorem rhsValid1367 : DerivedMapBatches.Batch044.certificate3592.Valid := DerivedMapBatches.Batch044.certificate3592valid
theorem linkedCommutativity1367 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5055.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3591.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3592.c x := by
  exact (linkedComposition1367 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1367)
theorem firstLink1368 : DerivedMapBatches.Batch044.certificate3593.algebra.mat = DerivedMapBatches.Batch063.certificate5056.a := by decide
theorem secondLink1368 : DerivedMapBatches.Batch044.certificate3594.algebra.mat = DerivedMapBatches.Batch063.certificate5056.b := by decide
theorem firstValid1368 : DerivedMapBatches.Batch044.certificate3593.Valid := DerivedMapBatches.Batch044.certificate3593valid
theorem secondValid1368 : DerivedMapBatches.Batch044.certificate3594.Valid := DerivedMapBatches.Batch044.certificate3594valid
theorem outputValid1368 : DerivedMapBatches.Batch063.certificate5056.Valid := DerivedMapBatches.Batch063.certificate5056valid
theorem linkedComposition1368 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5056.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5056.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3594.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3593.algebra.mat x) := by
  rw [firstLink1368, secondLink1368]
  exact DerivedMapBatches.Batch063.certificate5056valid.2 x
theorem rhsLink1368 : DerivedMapBatches.Batch063.certificate5056.c = DerivedMapBatches.Batch044.certificate3595.c := by decide
theorem rhsValid1368 : DerivedMapBatches.Batch044.certificate3595.Valid := DerivedMapBatches.Batch044.certificate3595valid
theorem linkedCommutativity1368 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5056.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3594.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3593.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3595.c x := by
  exact (linkedComposition1368 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1368)
theorem firstLink1369 : DerivedMapBatches.Batch044.certificate3596.algebra.mat = DerivedMapBatches.Batch063.certificate5057.a := by decide
theorem secondLink1369 : DerivedMapBatches.Batch044.certificate3597.algebra.mat = DerivedMapBatches.Batch063.certificate5057.b := by decide
theorem firstValid1369 : DerivedMapBatches.Batch044.certificate3596.Valid := DerivedMapBatches.Batch044.certificate3596valid
theorem secondValid1369 : DerivedMapBatches.Batch044.certificate3597.Valid := DerivedMapBatches.Batch044.certificate3597valid
theorem outputValid1369 : DerivedMapBatches.Batch063.certificate5057.Valid := DerivedMapBatches.Batch063.certificate5057valid
theorem linkedComposition1369 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5057.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5057.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3597.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3596.algebra.mat x) := by
  rw [firstLink1369, secondLink1369]
  exact DerivedMapBatches.Batch063.certificate5057valid.2 x
theorem rhsLink1369 : DerivedMapBatches.Batch063.certificate5057.c = DerivedMapBatches.Batch044.certificate3598.c := by decide
theorem rhsValid1369 : DerivedMapBatches.Batch044.certificate3598.Valid := DerivedMapBatches.Batch044.certificate3598valid
theorem linkedCommutativity1369 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5057.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3597.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3596.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3598.c x := by
  exact (linkedComposition1369 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1369)
theorem firstLink1370 : DerivedMapBatches.Batch044.certificate3599.algebra.mat = DerivedMapBatches.Batch063.certificate5058.a := by decide
theorem secondLink1370 : DerivedMapBatches.Batch045.certificate3600.algebra.mat = DerivedMapBatches.Batch063.certificate5058.b := by decide
theorem firstValid1370 : DerivedMapBatches.Batch044.certificate3599.Valid := DerivedMapBatches.Batch044.certificate3599valid
theorem secondValid1370 : DerivedMapBatches.Batch045.certificate3600.Valid := DerivedMapBatches.Batch045.certificate3600valid
theorem outputValid1370 : DerivedMapBatches.Batch063.certificate5058.Valid := DerivedMapBatches.Batch063.certificate5058valid
theorem linkedComposition1370 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5058.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5058.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3600.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3599.algebra.mat x) := by
  rw [firstLink1370, secondLink1370]
  exact DerivedMapBatches.Batch063.certificate5058valid.2 x
theorem rhsLink1370 : DerivedMapBatches.Batch063.certificate5058.c = DerivedMapBatches.Batch045.certificate3601.c := by decide
theorem rhsValid1370 : DerivedMapBatches.Batch045.certificate3601.Valid := DerivedMapBatches.Batch045.certificate3601valid
theorem linkedCommutativity1370 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5058.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3600.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3599.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3601.c x := by
  exact (linkedComposition1370 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1370)
theorem firstLink1371 : DerivedMapBatches.Batch045.certificate3602.algebra.mat = DerivedMapBatches.Batch063.certificate5059.a := by decide
theorem secondLink1371 : DerivedMapBatches.Batch045.certificate3603.algebra.mat = DerivedMapBatches.Batch063.certificate5059.b := by decide
theorem firstValid1371 : DerivedMapBatches.Batch045.certificate3602.Valid := DerivedMapBatches.Batch045.certificate3602valid
theorem secondValid1371 : DerivedMapBatches.Batch045.certificate3603.Valid := DerivedMapBatches.Batch045.certificate3603valid
theorem outputValid1371 : DerivedMapBatches.Batch063.certificate5059.Valid := DerivedMapBatches.Batch063.certificate5059valid
theorem linkedComposition1371 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5059.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5059.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3603.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3602.algebra.mat x) := by
  rw [firstLink1371, secondLink1371]
  exact DerivedMapBatches.Batch063.certificate5059valid.2 x
theorem rhsLink1371 : DerivedMapBatches.Batch063.certificate5059.c = DerivedMapBatches.Batch045.certificate3604.c := by decide
theorem rhsValid1371 : DerivedMapBatches.Batch045.certificate3604.Valid := DerivedMapBatches.Batch045.certificate3604valid
theorem linkedCommutativity1371 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5059.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3603.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3602.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3604.c x := by
  exact (linkedComposition1371 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1371)
theorem firstLink1372 : DerivedMapBatches.Batch045.certificate3605.algebra.mat = DerivedMapBatches.Batch063.certificate5060.a := by decide
theorem secondLink1372 : DerivedMapBatches.Batch045.certificate3606.algebra.mat = DerivedMapBatches.Batch063.certificate5060.b := by decide
theorem firstValid1372 : DerivedMapBatches.Batch045.certificate3605.Valid := DerivedMapBatches.Batch045.certificate3605valid
theorem secondValid1372 : DerivedMapBatches.Batch045.certificate3606.Valid := DerivedMapBatches.Batch045.certificate3606valid
theorem outputValid1372 : DerivedMapBatches.Batch063.certificate5060.Valid := DerivedMapBatches.Batch063.certificate5060valid
theorem linkedComposition1372 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5060.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5060.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3606.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3605.algebra.mat x) := by
  rw [firstLink1372, secondLink1372]
  exact DerivedMapBatches.Batch063.certificate5060valid.2 x
theorem rhsLink1372 : DerivedMapBatches.Batch063.certificate5060.c = DerivedMapBatches.Batch045.certificate3607.c := by decide
theorem rhsValid1372 : DerivedMapBatches.Batch045.certificate3607.Valid := DerivedMapBatches.Batch045.certificate3607valid
theorem linkedCommutativity1372 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5060.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3606.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3605.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3607.c x := by
  exact (linkedComposition1372 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1372)
theorem firstLink1373 : DerivedMapBatches.Batch045.certificate3608.algebra.mat = DerivedMapBatches.Batch063.certificate5061.a := by decide
theorem secondLink1373 : DerivedMapBatches.Batch045.certificate3609.algebra.mat = DerivedMapBatches.Batch063.certificate5061.b := by decide
theorem firstValid1373 : DerivedMapBatches.Batch045.certificate3608.Valid := DerivedMapBatches.Batch045.certificate3608valid
theorem secondValid1373 : DerivedMapBatches.Batch045.certificate3609.Valid := DerivedMapBatches.Batch045.certificate3609valid
theorem outputValid1373 : DerivedMapBatches.Batch063.certificate5061.Valid := DerivedMapBatches.Batch063.certificate5061valid
theorem linkedComposition1373 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5061.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5061.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3609.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3608.algebra.mat x) := by
  rw [firstLink1373, secondLink1373]
  exact DerivedMapBatches.Batch063.certificate5061valid.2 x
theorem rhsLink1373 : DerivedMapBatches.Batch063.certificate5061.c = DerivedMapBatches.Batch045.certificate3610.c := by decide
theorem rhsValid1373 : DerivedMapBatches.Batch045.certificate3610.Valid := DerivedMapBatches.Batch045.certificate3610valid
theorem linkedCommutativity1373 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5061.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3609.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3608.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3610.c x := by
  exact (linkedComposition1373 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1373)
theorem firstLink1374 : DerivedMapBatches.Batch045.certificate3611.algebra.mat = DerivedMapBatches.Batch063.certificate5062.a := by decide
theorem secondLink1374 : DerivedMapBatches.Batch045.certificate3612.algebra.mat = DerivedMapBatches.Batch063.certificate5062.b := by decide
theorem firstValid1374 : DerivedMapBatches.Batch045.certificate3611.Valid := DerivedMapBatches.Batch045.certificate3611valid
theorem secondValid1374 : DerivedMapBatches.Batch045.certificate3612.Valid := DerivedMapBatches.Batch045.certificate3612valid
theorem outputValid1374 : DerivedMapBatches.Batch063.certificate5062.Valid := DerivedMapBatches.Batch063.certificate5062valid
theorem linkedComposition1374 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5062.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5062.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3612.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3611.algebra.mat x) := by
  rw [firstLink1374, secondLink1374]
  exact DerivedMapBatches.Batch063.certificate5062valid.2 x
theorem rhsLink1374 : DerivedMapBatches.Batch063.certificate5062.c = DerivedMapBatches.Batch045.certificate3613.c := by decide
theorem rhsValid1374 : DerivedMapBatches.Batch045.certificate3613.Valid := DerivedMapBatches.Batch045.certificate3613valid
theorem linkedCommutativity1374 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5062.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3612.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3611.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3613.c x := by
  exact (linkedComposition1374 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1374)
theorem firstLink1375 : DerivedMapBatches.Batch045.certificate3614.algebra.mat = DerivedMapBatches.Batch063.certificate5063.a := by decide
theorem secondLink1375 : DerivedMapBatches.Batch045.certificate3615.algebra.mat = DerivedMapBatches.Batch063.certificate5063.b := by decide
theorem firstValid1375 : DerivedMapBatches.Batch045.certificate3614.Valid := DerivedMapBatches.Batch045.certificate3614valid
theorem secondValid1375 : DerivedMapBatches.Batch045.certificate3615.Valid := DerivedMapBatches.Batch045.certificate3615valid
theorem outputValid1375 : DerivedMapBatches.Batch063.certificate5063.Valid := DerivedMapBatches.Batch063.certificate5063valid
theorem linkedComposition1375 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5063.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5063.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3615.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3614.algebra.mat x) := by
  rw [firstLink1375, secondLink1375]
  exact DerivedMapBatches.Batch063.certificate5063valid.2 x
theorem rhsLink1375 : DerivedMapBatches.Batch063.certificate5063.c = DerivedMapBatches.Batch045.certificate3616.c := by decide
theorem rhsValid1375 : DerivedMapBatches.Batch045.certificate3616.Valid := DerivedMapBatches.Batch045.certificate3616valid
theorem linkedCommutativity1375 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5063.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3615.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3614.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3616.c x := by
  exact (linkedComposition1375 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1375)
theorem firstLink1376 : DerivedMapBatches.Batch045.certificate3617.algebra.mat = DerivedMapBatches.Batch063.certificate5064.a := by decide
theorem secondLink1376 : DerivedMapBatches.Batch045.certificate3618.algebra.mat = DerivedMapBatches.Batch063.certificate5064.b := by decide
theorem firstValid1376 : DerivedMapBatches.Batch045.certificate3617.Valid := DerivedMapBatches.Batch045.certificate3617valid
theorem secondValid1376 : DerivedMapBatches.Batch045.certificate3618.Valid := DerivedMapBatches.Batch045.certificate3618valid
theorem outputValid1376 : DerivedMapBatches.Batch063.certificate5064.Valid := DerivedMapBatches.Batch063.certificate5064valid
theorem linkedComposition1376 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5064.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5064.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3618.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3617.algebra.mat x) := by
  rw [firstLink1376, secondLink1376]
  exact DerivedMapBatches.Batch063.certificate5064valid.2 x
theorem rhsLink1376 : DerivedMapBatches.Batch063.certificate5064.c = DerivedMapBatches.Batch045.certificate3619.c := by decide
theorem rhsValid1376 : DerivedMapBatches.Batch045.certificate3619.Valid := DerivedMapBatches.Batch045.certificate3619valid
theorem linkedCommutativity1376 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5064.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3618.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3617.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3619.c x := by
  exact (linkedComposition1376 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1376)
theorem firstLink1377 : DerivedMapBatches.Batch045.certificate3620.algebra.mat = DerivedMapBatches.Batch063.certificate5065.a := by decide
theorem secondLink1377 : DerivedMapBatches.Batch045.certificate3621.algebra.mat = DerivedMapBatches.Batch063.certificate5065.b := by decide
theorem firstValid1377 : DerivedMapBatches.Batch045.certificate3620.Valid := DerivedMapBatches.Batch045.certificate3620valid
theorem secondValid1377 : DerivedMapBatches.Batch045.certificate3621.Valid := DerivedMapBatches.Batch045.certificate3621valid
theorem outputValid1377 : DerivedMapBatches.Batch063.certificate5065.Valid := DerivedMapBatches.Batch063.certificate5065valid
theorem linkedComposition1377 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5065.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5065.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3621.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3620.algebra.mat x) := by
  rw [firstLink1377, secondLink1377]
  exact DerivedMapBatches.Batch063.certificate5065valid.2 x
theorem rhsLink1377 : DerivedMapBatches.Batch063.certificate5065.c = DerivedMapBatches.Batch045.certificate3622.c := by decide
theorem rhsValid1377 : DerivedMapBatches.Batch045.certificate3622.Valid := DerivedMapBatches.Batch045.certificate3622valid
theorem linkedCommutativity1377 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5065.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3621.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3620.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3622.c x := by
  exact (linkedComposition1377 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1377)
theorem firstLink1378 : DerivedMapBatches.Batch045.certificate3623.algebra.mat = DerivedMapBatches.Batch063.certificate5066.a := by decide
theorem secondLink1378 : DerivedMapBatches.Batch045.certificate3624.algebra.mat = DerivedMapBatches.Batch063.certificate5066.b := by decide
theorem firstValid1378 : DerivedMapBatches.Batch045.certificate3623.Valid := DerivedMapBatches.Batch045.certificate3623valid
theorem secondValid1378 : DerivedMapBatches.Batch045.certificate3624.Valid := DerivedMapBatches.Batch045.certificate3624valid
theorem outputValid1378 : DerivedMapBatches.Batch063.certificate5066.Valid := DerivedMapBatches.Batch063.certificate5066valid
theorem linkedComposition1378 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5066.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5066.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3624.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3623.algebra.mat x) := by
  rw [firstLink1378, secondLink1378]
  exact DerivedMapBatches.Batch063.certificate5066valid.2 x
theorem rhsLink1378 : DerivedMapBatches.Batch063.certificate5066.c = DerivedMapBatches.Batch045.certificate3625.c := by decide
theorem rhsValid1378 : DerivedMapBatches.Batch045.certificate3625.Valid := DerivedMapBatches.Batch045.certificate3625valid
theorem linkedCommutativity1378 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5066.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3624.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3623.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3625.c x := by
  exact (linkedComposition1378 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1378)
theorem firstLink1379 : DerivedMapBatches.Batch045.certificate3626.algebra.mat = DerivedMapBatches.Batch063.certificate5067.a := by decide
theorem secondLink1379 : DerivedMapBatches.Batch045.certificate3627.algebra.mat = DerivedMapBatches.Batch063.certificate5067.b := by decide
theorem firstValid1379 : DerivedMapBatches.Batch045.certificate3626.Valid := DerivedMapBatches.Batch045.certificate3626valid
theorem secondValid1379 : DerivedMapBatches.Batch045.certificate3627.Valid := DerivedMapBatches.Batch045.certificate3627valid
theorem outputValid1379 : DerivedMapBatches.Batch063.certificate5067.Valid := DerivedMapBatches.Batch063.certificate5067valid
theorem linkedComposition1379 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5067.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5067.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3627.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3626.algebra.mat x) := by
  rw [firstLink1379, secondLink1379]
  exact DerivedMapBatches.Batch063.certificate5067valid.2 x
theorem rhsLink1379 : DerivedMapBatches.Batch063.certificate5067.c = DerivedMapBatches.Batch045.certificate3628.c := by decide
theorem rhsValid1379 : DerivedMapBatches.Batch045.certificate3628.Valid := DerivedMapBatches.Batch045.certificate3628valid
theorem linkedCommutativity1379 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5067.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3627.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3626.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3628.c x := by
  exact (linkedComposition1379 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1379)
theorem firstLink1380 : DerivedMapBatches.Batch045.certificate3629.algebra.mat = DerivedMapBatches.Batch063.certificate5068.a := by decide
theorem secondLink1380 : DerivedMapBatches.Batch045.certificate3630.algebra.mat = DerivedMapBatches.Batch063.certificate5068.b := by decide
theorem firstValid1380 : DerivedMapBatches.Batch045.certificate3629.Valid := DerivedMapBatches.Batch045.certificate3629valid
theorem secondValid1380 : DerivedMapBatches.Batch045.certificate3630.Valid := DerivedMapBatches.Batch045.certificate3630valid
theorem outputValid1380 : DerivedMapBatches.Batch063.certificate5068.Valid := DerivedMapBatches.Batch063.certificate5068valid
theorem linkedComposition1380 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5068.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5068.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3630.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3629.algebra.mat x) := by
  rw [firstLink1380, secondLink1380]
  exact DerivedMapBatches.Batch063.certificate5068valid.2 x
theorem rhsLink1380 : DerivedMapBatches.Batch063.certificate5068.c = DerivedMapBatches.Batch045.certificate3631.c := by decide
theorem rhsValid1380 : DerivedMapBatches.Batch045.certificate3631.Valid := DerivedMapBatches.Batch045.certificate3631valid
theorem linkedCommutativity1380 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5068.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3630.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3629.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3631.c x := by
  exact (linkedComposition1380 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1380)
theorem firstLink1381 : DerivedMapBatches.Batch045.certificate3632.algebra.mat = DerivedMapBatches.Batch063.certificate5069.a := by decide
theorem secondLink1381 : DerivedMapBatches.Batch045.certificate3633.algebra.mat = DerivedMapBatches.Batch063.certificate5069.b := by decide
theorem firstValid1381 : DerivedMapBatches.Batch045.certificate3632.Valid := DerivedMapBatches.Batch045.certificate3632valid
theorem secondValid1381 : DerivedMapBatches.Batch045.certificate3633.Valid := DerivedMapBatches.Batch045.certificate3633valid
theorem outputValid1381 : DerivedMapBatches.Batch063.certificate5069.Valid := DerivedMapBatches.Batch063.certificate5069valid
theorem linkedComposition1381 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5069.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5069.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3633.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3632.algebra.mat x) := by
  rw [firstLink1381, secondLink1381]
  exact DerivedMapBatches.Batch063.certificate5069valid.2 x
theorem rhsLink1381 : DerivedMapBatches.Batch063.certificate5069.c = DerivedMapBatches.Batch045.certificate3634.c := by decide
theorem rhsValid1381 : DerivedMapBatches.Batch045.certificate3634.Valid := DerivedMapBatches.Batch045.certificate3634valid
theorem linkedCommutativity1381 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5069.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3633.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3632.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3634.c x := by
  exact (linkedComposition1381 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1381)
theorem firstLink1382 : DerivedMapBatches.Batch045.certificate3635.algebra.mat = DerivedMapBatches.Batch063.certificate5070.a := by decide
theorem secondLink1382 : DerivedMapBatches.Batch045.certificate3636.algebra.mat = DerivedMapBatches.Batch063.certificate5070.b := by decide
theorem firstValid1382 : DerivedMapBatches.Batch045.certificate3635.Valid := DerivedMapBatches.Batch045.certificate3635valid
theorem secondValid1382 : DerivedMapBatches.Batch045.certificate3636.Valid := DerivedMapBatches.Batch045.certificate3636valid
theorem outputValid1382 : DerivedMapBatches.Batch063.certificate5070.Valid := DerivedMapBatches.Batch063.certificate5070valid
theorem linkedComposition1382 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5070.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5070.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3636.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3635.algebra.mat x) := by
  rw [firstLink1382, secondLink1382]
  exact DerivedMapBatches.Batch063.certificate5070valid.2 x
theorem rhsLink1382 : DerivedMapBatches.Batch063.certificate5070.c = DerivedMapBatches.Batch045.certificate3637.c := by decide
theorem rhsValid1382 : DerivedMapBatches.Batch045.certificate3637.Valid := DerivedMapBatches.Batch045.certificate3637valid
theorem linkedCommutativity1382 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5070.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3636.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3635.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3637.c x := by
  exact (linkedComposition1382 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1382)
theorem firstLink1383 : DerivedMapBatches.Batch045.certificate3638.algebra.mat = DerivedMapBatches.Batch063.certificate5071.a := by decide
theorem secondLink1383 : DerivedMapBatches.Batch045.certificate3639.algebra.mat = DerivedMapBatches.Batch063.certificate5071.b := by decide
theorem firstValid1383 : DerivedMapBatches.Batch045.certificate3638.Valid := DerivedMapBatches.Batch045.certificate3638valid
theorem secondValid1383 : DerivedMapBatches.Batch045.certificate3639.Valid := DerivedMapBatches.Batch045.certificate3639valid
theorem outputValid1383 : DerivedMapBatches.Batch063.certificate5071.Valid := DerivedMapBatches.Batch063.certificate5071valid
theorem linkedComposition1383 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5071.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5071.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3638.algebra.mat x) := by
  rw [firstLink1383, secondLink1383]
  exact DerivedMapBatches.Batch063.certificate5071valid.2 x
theorem rhsLink1383 : DerivedMapBatches.Batch063.certificate5071.c = DerivedMapBatches.Batch045.certificate3640.c := by decide
theorem rhsValid1383 : DerivedMapBatches.Batch045.certificate3640.Valid := DerivedMapBatches.Batch045.certificate3640valid
theorem linkedCommutativity1383 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5071.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3638.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3640.c x := by
  exact (linkedComposition1383 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1383)
theorem firstLink1384 : DerivedMapBatches.Batch045.certificate3641.algebra.mat = DerivedMapBatches.Batch063.certificate5072.a := by decide
theorem secondLink1384 : DerivedMapBatches.Batch045.certificate3642.algebra.mat = DerivedMapBatches.Batch063.certificate5072.b := by decide
theorem firstValid1384 : DerivedMapBatches.Batch045.certificate3641.Valid := DerivedMapBatches.Batch045.certificate3641valid
theorem secondValid1384 : DerivedMapBatches.Batch045.certificate3642.Valid := DerivedMapBatches.Batch045.certificate3642valid
theorem outputValid1384 : DerivedMapBatches.Batch063.certificate5072.Valid := DerivedMapBatches.Batch063.certificate5072valid
theorem linkedComposition1384 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5072.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5072.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3641.algebra.mat x) := by
  rw [firstLink1384, secondLink1384]
  exact DerivedMapBatches.Batch063.certificate5072valid.2 x
theorem rhsLink1384 : DerivedMapBatches.Batch063.certificate5072.c = DerivedMapBatches.Batch045.certificate3643.c := by decide
theorem rhsValid1384 : DerivedMapBatches.Batch045.certificate3643.Valid := DerivedMapBatches.Batch045.certificate3643valid
theorem linkedCommutativity1384 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5072.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3641.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3643.c x := by
  exact (linkedComposition1384 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1384)
theorem firstLink1385 : DerivedMapBatches.Batch045.certificate3644.algebra.mat = DerivedMapBatches.Batch063.certificate5073.a := by decide
theorem secondLink1385 : DerivedMapBatches.Batch045.certificate3645.algebra.mat = DerivedMapBatches.Batch063.certificate5073.b := by decide
theorem firstValid1385 : DerivedMapBatches.Batch045.certificate3644.Valid := DerivedMapBatches.Batch045.certificate3644valid
theorem secondValid1385 : DerivedMapBatches.Batch045.certificate3645.Valid := DerivedMapBatches.Batch045.certificate3645valid
theorem outputValid1385 : DerivedMapBatches.Batch063.certificate5073.Valid := DerivedMapBatches.Batch063.certificate5073valid
theorem linkedComposition1385 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5073.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5073.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3644.algebra.mat x) := by
  rw [firstLink1385, secondLink1385]
  exact DerivedMapBatches.Batch063.certificate5073valid.2 x
theorem rhsLink1385 : DerivedMapBatches.Batch063.certificate5073.c = DerivedMapBatches.Batch045.certificate3646.c := by decide
theorem rhsValid1385 : DerivedMapBatches.Batch045.certificate3646.Valid := DerivedMapBatches.Batch045.certificate3646valid
theorem linkedCommutativity1385 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5073.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3644.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3646.c x := by
  exact (linkedComposition1385 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1385)
theorem firstLink1386 : DerivedMapBatches.Batch045.certificate3647.algebra.mat = DerivedMapBatches.Batch063.certificate5074.a := by decide
theorem secondLink1386 : DerivedMapBatches.Batch045.certificate3648.algebra.mat = DerivedMapBatches.Batch063.certificate5074.b := by decide
theorem firstValid1386 : DerivedMapBatches.Batch045.certificate3647.Valid := DerivedMapBatches.Batch045.certificate3647valid
theorem secondValid1386 : DerivedMapBatches.Batch045.certificate3648.Valid := DerivedMapBatches.Batch045.certificate3648valid
theorem outputValid1386 : DerivedMapBatches.Batch063.certificate5074.Valid := DerivedMapBatches.Batch063.certificate5074valid
theorem linkedComposition1386 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5074.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5074.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3647.algebra.mat x) := by
  rw [firstLink1386, secondLink1386]
  exact DerivedMapBatches.Batch063.certificate5074valid.2 x
theorem rhsLink1386 : DerivedMapBatches.Batch063.certificate5074.c = DerivedMapBatches.Batch045.certificate3649.c := by decide
theorem rhsValid1386 : DerivedMapBatches.Batch045.certificate3649.Valid := DerivedMapBatches.Batch045.certificate3649valid
theorem linkedCommutativity1386 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5074.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3647.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3649.c x := by
  exact (linkedComposition1386 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1386)
theorem firstLink1387 : DerivedMapBatches.Batch045.certificate3650.algebra.mat = DerivedMapBatches.Batch063.certificate5075.a := by decide
theorem secondLink1387 : DerivedMapBatches.Batch045.certificate3651.algebra.mat = DerivedMapBatches.Batch063.certificate5075.b := by decide
theorem firstValid1387 : DerivedMapBatches.Batch045.certificate3650.Valid := DerivedMapBatches.Batch045.certificate3650valid
theorem secondValid1387 : DerivedMapBatches.Batch045.certificate3651.Valid := DerivedMapBatches.Batch045.certificate3651valid
theorem outputValid1387 : DerivedMapBatches.Batch063.certificate5075.Valid := DerivedMapBatches.Batch063.certificate5075valid
theorem linkedComposition1387 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5075.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5075.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3650.algebra.mat x) := by
  rw [firstLink1387, secondLink1387]
  exact DerivedMapBatches.Batch063.certificate5075valid.2 x
theorem rhsLink1387 : DerivedMapBatches.Batch063.certificate5075.c = DerivedMapBatches.Batch045.certificate3652.c := by decide
theorem rhsValid1387 : DerivedMapBatches.Batch045.certificate3652.Valid := DerivedMapBatches.Batch045.certificate3652valid
theorem linkedCommutativity1387 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5075.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3650.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3652.c x := by
  exact (linkedComposition1387 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1387)
theorem firstLink1388 : DerivedMapBatches.Batch045.certificate3653.algebra.mat = DerivedMapBatches.Batch063.certificate5076.a := by decide
theorem secondLink1388 : DerivedMapBatches.Batch045.certificate3654.algebra.mat = DerivedMapBatches.Batch063.certificate5076.b := by decide
theorem firstValid1388 : DerivedMapBatches.Batch045.certificate3653.Valid := DerivedMapBatches.Batch045.certificate3653valid
theorem secondValid1388 : DerivedMapBatches.Batch045.certificate3654.Valid := DerivedMapBatches.Batch045.certificate3654valid
theorem outputValid1388 : DerivedMapBatches.Batch063.certificate5076.Valid := DerivedMapBatches.Batch063.certificate5076valid
theorem linkedComposition1388 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5076.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5076.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3654.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3653.algebra.mat x) := by
  rw [firstLink1388, secondLink1388]
  exact DerivedMapBatches.Batch063.certificate5076valid.2 x
theorem rhsLink1388 : DerivedMapBatches.Batch063.certificate5076.c = DerivedMapBatches.Batch045.certificate3655.c := by decide
theorem rhsValid1388 : DerivedMapBatches.Batch045.certificate3655.Valid := DerivedMapBatches.Batch045.certificate3655valid
theorem linkedCommutativity1388 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5076.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3654.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3653.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3655.c x := by
  exact (linkedComposition1388 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1388)
theorem firstLink1389 : DerivedMapBatches.Batch045.certificate3656.algebra.mat = DerivedMapBatches.Batch063.certificate5077.a := by decide
theorem secondLink1389 : DerivedMapBatches.Batch045.certificate3657.algebra.mat = DerivedMapBatches.Batch063.certificate5077.b := by decide
theorem firstValid1389 : DerivedMapBatches.Batch045.certificate3656.Valid := DerivedMapBatches.Batch045.certificate3656valid
theorem secondValid1389 : DerivedMapBatches.Batch045.certificate3657.Valid := DerivedMapBatches.Batch045.certificate3657valid
theorem outputValid1389 : DerivedMapBatches.Batch063.certificate5077.Valid := DerivedMapBatches.Batch063.certificate5077valid
theorem linkedComposition1389 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5077.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5077.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3657.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3656.algebra.mat x) := by
  rw [firstLink1389, secondLink1389]
  exact DerivedMapBatches.Batch063.certificate5077valid.2 x
theorem rhsLink1389 : DerivedMapBatches.Batch063.certificate5077.c = DerivedMapBatches.Batch045.certificate3658.c := by decide
theorem rhsValid1389 : DerivedMapBatches.Batch045.certificate3658.Valid := DerivedMapBatches.Batch045.certificate3658valid
theorem linkedCommutativity1389 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5077.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3657.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3656.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3658.c x := by
  exact (linkedComposition1389 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1389)
theorem firstLink1390 : DerivedMapBatches.Batch045.certificate3659.algebra.mat = DerivedMapBatches.Batch063.certificate5078.a := by decide
theorem secondLink1390 : DerivedMapBatches.Batch045.certificate3660.algebra.mat = DerivedMapBatches.Batch063.certificate5078.b := by decide
theorem firstValid1390 : DerivedMapBatches.Batch045.certificate3659.Valid := DerivedMapBatches.Batch045.certificate3659valid
theorem secondValid1390 : DerivedMapBatches.Batch045.certificate3660.Valid := DerivedMapBatches.Batch045.certificate3660valid
theorem outputValid1390 : DerivedMapBatches.Batch063.certificate5078.Valid := DerivedMapBatches.Batch063.certificate5078valid
theorem linkedComposition1390 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5078.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5078.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3660.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3659.algebra.mat x) := by
  rw [firstLink1390, secondLink1390]
  exact DerivedMapBatches.Batch063.certificate5078valid.2 x
theorem rhsLink1390 : DerivedMapBatches.Batch063.certificate5078.c = DerivedMapBatches.Batch045.certificate3661.c := by decide
theorem rhsValid1390 : DerivedMapBatches.Batch045.certificate3661.Valid := DerivedMapBatches.Batch045.certificate3661valid
theorem linkedCommutativity1390 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5078.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3660.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3659.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3661.c x := by
  exact (linkedComposition1390 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1390)
theorem firstLink1391 : DerivedMapBatches.Batch045.certificate3662.algebra.mat = DerivedMapBatches.Batch063.certificate5079.a := by decide
theorem secondLink1391 : DerivedMapBatches.Batch045.certificate3663.algebra.mat = DerivedMapBatches.Batch063.certificate5079.b := by decide
theorem firstValid1391 : DerivedMapBatches.Batch045.certificate3662.Valid := DerivedMapBatches.Batch045.certificate3662valid
theorem secondValid1391 : DerivedMapBatches.Batch045.certificate3663.Valid := DerivedMapBatches.Batch045.certificate3663valid
theorem outputValid1391 : DerivedMapBatches.Batch063.certificate5079.Valid := DerivedMapBatches.Batch063.certificate5079valid
theorem linkedComposition1391 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5079.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5079.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3663.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3662.algebra.mat x) := by
  rw [firstLink1391, secondLink1391]
  exact DerivedMapBatches.Batch063.certificate5079valid.2 x
theorem rhsLink1391 : DerivedMapBatches.Batch063.certificate5079.c = DerivedMapBatches.Batch045.certificate3664.c := by decide
theorem rhsValid1391 : DerivedMapBatches.Batch045.certificate3664.Valid := DerivedMapBatches.Batch045.certificate3664valid
theorem linkedCommutativity1391 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5079.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3663.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3662.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3664.c x := by
  exact (linkedComposition1391 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1391)
theorem firstLink1392 : DerivedMapBatches.Batch045.certificate3665.algebra.mat = DerivedMapBatches.Batch063.certificate5080.a := by decide
theorem secondLink1392 : DerivedMapBatches.Batch045.certificate3666.algebra.mat = DerivedMapBatches.Batch063.certificate5080.b := by decide
theorem firstValid1392 : DerivedMapBatches.Batch045.certificate3665.Valid := DerivedMapBatches.Batch045.certificate3665valid
theorem secondValid1392 : DerivedMapBatches.Batch045.certificate3666.Valid := DerivedMapBatches.Batch045.certificate3666valid
theorem outputValid1392 : DerivedMapBatches.Batch063.certificate5080.Valid := DerivedMapBatches.Batch063.certificate5080valid
theorem linkedComposition1392 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5080.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5080.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3665.algebra.mat x) := by
  rw [firstLink1392, secondLink1392]
  exact DerivedMapBatches.Batch063.certificate5080valid.2 x
theorem rhsLink1392 : DerivedMapBatches.Batch063.certificate5080.c = DerivedMapBatches.Batch045.certificate3667.c := by decide
theorem rhsValid1392 : DerivedMapBatches.Batch045.certificate3667.Valid := DerivedMapBatches.Batch045.certificate3667valid
theorem linkedCommutativity1392 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5080.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3665.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3667.c x := by
  exact (linkedComposition1392 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1392)
theorem firstLink1393 : DerivedMapBatches.Batch045.certificate3668.algebra.mat = DerivedMapBatches.Batch063.certificate5081.a := by decide
theorem secondLink1393 : DerivedMapBatches.Batch045.certificate3669.algebra.mat = DerivedMapBatches.Batch063.certificate5081.b := by decide
theorem firstValid1393 : DerivedMapBatches.Batch045.certificate3668.Valid := DerivedMapBatches.Batch045.certificate3668valid
theorem secondValid1393 : DerivedMapBatches.Batch045.certificate3669.Valid := DerivedMapBatches.Batch045.certificate3669valid
theorem outputValid1393 : DerivedMapBatches.Batch063.certificate5081.Valid := DerivedMapBatches.Batch063.certificate5081valid
theorem linkedComposition1393 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5081.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5081.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3668.algebra.mat x) := by
  rw [firstLink1393, secondLink1393]
  exact DerivedMapBatches.Batch063.certificate5081valid.2 x
theorem rhsLink1393 : DerivedMapBatches.Batch063.certificate5081.c = DerivedMapBatches.Batch045.certificate3670.c := by decide
theorem rhsValid1393 : DerivedMapBatches.Batch045.certificate3670.Valid := DerivedMapBatches.Batch045.certificate3670valid
theorem linkedCommutativity1393 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5081.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3668.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3670.c x := by
  exact (linkedComposition1393 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1393)
theorem firstLink1394 : DerivedMapBatches.Batch045.certificate3671.algebra.mat = DerivedMapBatches.Batch063.certificate5082.a := by decide
theorem secondLink1394 : DerivedMapBatches.Batch045.certificate3672.algebra.mat = DerivedMapBatches.Batch063.certificate5082.b := by decide
theorem firstValid1394 : DerivedMapBatches.Batch045.certificate3671.Valid := DerivedMapBatches.Batch045.certificate3671valid
theorem secondValid1394 : DerivedMapBatches.Batch045.certificate3672.Valid := DerivedMapBatches.Batch045.certificate3672valid
theorem outputValid1394 : DerivedMapBatches.Batch063.certificate5082.Valid := DerivedMapBatches.Batch063.certificate5082valid
theorem linkedComposition1394 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5082.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5082.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3671.algebra.mat x) := by
  rw [firstLink1394, secondLink1394]
  exact DerivedMapBatches.Batch063.certificate5082valid.2 x
theorem rhsLink1394 : DerivedMapBatches.Batch063.certificate5082.c = DerivedMapBatches.Batch045.certificate3673.c := by decide
theorem rhsValid1394 : DerivedMapBatches.Batch045.certificate3673.Valid := DerivedMapBatches.Batch045.certificate3673valid
theorem linkedCommutativity1394 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5082.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3671.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3673.c x := by
  exact (linkedComposition1394 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1394)
theorem firstLink1395 : DerivedMapBatches.Batch045.certificate3674.algebra.mat = DerivedMapBatches.Batch063.certificate5083.a := by decide
theorem secondLink1395 : DerivedMapBatches.Batch045.certificate3675.algebra.mat = DerivedMapBatches.Batch063.certificate5083.b := by decide
theorem firstValid1395 : DerivedMapBatches.Batch045.certificate3674.Valid := DerivedMapBatches.Batch045.certificate3674valid
theorem secondValid1395 : DerivedMapBatches.Batch045.certificate3675.Valid := DerivedMapBatches.Batch045.certificate3675valid
theorem outputValid1395 : DerivedMapBatches.Batch063.certificate5083.Valid := DerivedMapBatches.Batch063.certificate5083valid
theorem linkedComposition1395 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5083.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5083.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3674.algebra.mat x) := by
  rw [firstLink1395, secondLink1395]
  exact DerivedMapBatches.Batch063.certificate5083valid.2 x
theorem rhsLink1395 : DerivedMapBatches.Batch063.certificate5083.c = DerivedMapBatches.Batch045.certificate3676.c := by decide
theorem rhsValid1395 : DerivedMapBatches.Batch045.certificate3676.Valid := DerivedMapBatches.Batch045.certificate3676valid
theorem linkedCommutativity1395 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5083.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3674.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3676.c x := by
  exact (linkedComposition1395 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1395)
theorem firstLink1396 : DerivedMapBatches.Batch045.certificate3677.algebra.mat = DerivedMapBatches.Batch063.certificate5084.a := by decide
theorem secondLink1396 : DerivedMapBatches.Batch045.certificate3678.algebra.mat = DerivedMapBatches.Batch063.certificate5084.b := by decide
theorem firstValid1396 : DerivedMapBatches.Batch045.certificate3677.Valid := DerivedMapBatches.Batch045.certificate3677valid
theorem secondValid1396 : DerivedMapBatches.Batch045.certificate3678.Valid := DerivedMapBatches.Batch045.certificate3678valid
theorem outputValid1396 : DerivedMapBatches.Batch063.certificate5084.Valid := DerivedMapBatches.Batch063.certificate5084valid
theorem linkedComposition1396 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5084.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5084.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3677.algebra.mat x) := by
  rw [firstLink1396, secondLink1396]
  exact DerivedMapBatches.Batch063.certificate5084valid.2 x
theorem rhsLink1396 : DerivedMapBatches.Batch063.certificate5084.c = DerivedMapBatches.Batch045.certificate3679.c := by decide
theorem rhsValid1396 : DerivedMapBatches.Batch045.certificate3679.Valid := DerivedMapBatches.Batch045.certificate3679valid
theorem linkedCommutativity1396 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5084.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3677.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3679.c x := by
  exact (linkedComposition1396 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1396)
theorem firstLink1397 : DerivedMapBatches.Batch046.certificate3680.algebra.mat = DerivedMapBatches.Batch063.certificate5085.a := by decide
theorem secondLink1397 : DerivedMapBatches.Batch046.certificate3681.algebra.mat = DerivedMapBatches.Batch063.certificate5085.b := by decide
theorem firstValid1397 : DerivedMapBatches.Batch046.certificate3680.Valid := DerivedMapBatches.Batch046.certificate3680valid
theorem secondValid1397 : DerivedMapBatches.Batch046.certificate3681.Valid := DerivedMapBatches.Batch046.certificate3681valid
theorem outputValid1397 : DerivedMapBatches.Batch063.certificate5085.Valid := DerivedMapBatches.Batch063.certificate5085valid
theorem linkedComposition1397 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5085.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5085.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3680.algebra.mat x) := by
  rw [firstLink1397, secondLink1397]
  exact DerivedMapBatches.Batch063.certificate5085valid.2 x
theorem rhsLink1397 : DerivedMapBatches.Batch063.certificate5085.c = DerivedMapBatches.Batch046.certificate3682.c := by decide
theorem rhsValid1397 : DerivedMapBatches.Batch046.certificate3682.Valid := DerivedMapBatches.Batch046.certificate3682valid
theorem linkedCommutativity1397 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5085.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3680.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3682.c x := by
  exact (linkedComposition1397 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1397)
theorem firstLink1398 : DerivedMapBatches.Batch046.certificate3683.algebra.mat = DerivedMapBatches.Batch063.certificate5086.a := by decide
theorem secondLink1398 : DerivedMapBatches.Batch046.certificate3684.algebra.mat = DerivedMapBatches.Batch063.certificate5086.b := by decide
theorem firstValid1398 : DerivedMapBatches.Batch046.certificate3683.Valid := DerivedMapBatches.Batch046.certificate3683valid
theorem secondValid1398 : DerivedMapBatches.Batch046.certificate3684.Valid := DerivedMapBatches.Batch046.certificate3684valid
theorem outputValid1398 : DerivedMapBatches.Batch063.certificate5086.Valid := DerivedMapBatches.Batch063.certificate5086valid
theorem linkedComposition1398 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5086.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5086.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3683.algebra.mat x) := by
  rw [firstLink1398, secondLink1398]
  exact DerivedMapBatches.Batch063.certificate5086valid.2 x
theorem rhsLink1398 : DerivedMapBatches.Batch063.certificate5086.c = DerivedMapBatches.Batch046.certificate3685.c := by decide
theorem rhsValid1398 : DerivedMapBatches.Batch046.certificate3685.Valid := DerivedMapBatches.Batch046.certificate3685valid
theorem linkedCommutativity1398 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5086.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3683.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3685.c x := by
  exact (linkedComposition1398 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1398)
theorem firstLink1399 : DerivedMapBatches.Batch046.certificate3686.algebra.mat = DerivedMapBatches.Batch063.certificate5087.a := by decide
theorem secondLink1399 : DerivedMapBatches.Batch046.certificate3687.algebra.mat = DerivedMapBatches.Batch063.certificate5087.b := by decide
theorem firstValid1399 : DerivedMapBatches.Batch046.certificate3686.Valid := DerivedMapBatches.Batch046.certificate3686valid
theorem secondValid1399 : DerivedMapBatches.Batch046.certificate3687.Valid := DerivedMapBatches.Batch046.certificate3687valid
theorem outputValid1399 : DerivedMapBatches.Batch063.certificate5087.Valid := DerivedMapBatches.Batch063.certificate5087valid
theorem linkedComposition1399 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5087.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5087.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3686.algebra.mat x) := by
  rw [firstLink1399, secondLink1399]
  exact DerivedMapBatches.Batch063.certificate5087valid.2 x
theorem rhsLink1399 : DerivedMapBatches.Batch063.certificate5087.c = DerivedMapBatches.Batch046.certificate3688.c := by decide
theorem rhsValid1399 : DerivedMapBatches.Batch046.certificate3688.Valid := DerivedMapBatches.Batch046.certificate3688valid
theorem linkedCommutativity1399 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5087.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3686.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3688.c x := by
  exact (linkedComposition1399 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1399)
end DerivedLinkageBatches.Batch027
