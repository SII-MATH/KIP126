import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch046
import DerivedMapBatches.Batch047
import DerivedMapBatches.Batch063
import DerivedMapBatches.Batch064
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch028
theorem firstLink1400 : DerivedMapBatches.Batch046.certificate3689.algebra.mat = DerivedMapBatches.Batch063.certificate5088.a := by decide
theorem secondLink1400 : DerivedMapBatches.Batch046.certificate3690.algebra.mat = DerivedMapBatches.Batch063.certificate5088.b := by decide
theorem firstValid1400 : DerivedMapBatches.Batch046.certificate3689.Valid := DerivedMapBatches.Batch046.certificate3689valid
theorem secondValid1400 : DerivedMapBatches.Batch046.certificate3690.Valid := DerivedMapBatches.Batch046.certificate3690valid
theorem outputValid1400 : DerivedMapBatches.Batch063.certificate5088.Valid := DerivedMapBatches.Batch063.certificate5088valid
theorem linkedComposition1400 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5088.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5088.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3689.algebra.mat x) := by
  rw [firstLink1400, secondLink1400]
  exact DerivedMapBatches.Batch063.certificate5088valid.2 x
theorem rhsLink1400 : DerivedMapBatches.Batch063.certificate5088.c = DerivedMapBatches.Batch046.certificate3691.c := by decide
theorem rhsValid1400 : DerivedMapBatches.Batch046.certificate3691.Valid := DerivedMapBatches.Batch046.certificate3691valid
theorem linkedCommutativity1400 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5088.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3689.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3691.c x := by
  exact (linkedComposition1400 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1400)
theorem firstLink1401 : DerivedMapBatches.Batch046.certificate3692.algebra.mat = DerivedMapBatches.Batch063.certificate5089.a := by decide
theorem secondLink1401 : DerivedMapBatches.Batch046.certificate3693.algebra.mat = DerivedMapBatches.Batch063.certificate5089.b := by decide
theorem firstValid1401 : DerivedMapBatches.Batch046.certificate3692.Valid := DerivedMapBatches.Batch046.certificate3692valid
theorem secondValid1401 : DerivedMapBatches.Batch046.certificate3693.Valid := DerivedMapBatches.Batch046.certificate3693valid
theorem outputValid1401 : DerivedMapBatches.Batch063.certificate5089.Valid := DerivedMapBatches.Batch063.certificate5089valid
theorem linkedComposition1401 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5089.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5089.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3693.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3692.algebra.mat x) := by
  rw [firstLink1401, secondLink1401]
  exact DerivedMapBatches.Batch063.certificate5089valid.2 x
theorem rhsLink1401 : DerivedMapBatches.Batch063.certificate5089.c = DerivedMapBatches.Batch046.certificate3694.c := by decide
theorem rhsValid1401 : DerivedMapBatches.Batch046.certificate3694.Valid := DerivedMapBatches.Batch046.certificate3694valid
theorem linkedCommutativity1401 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5089.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3693.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3692.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3694.c x := by
  exact (linkedComposition1401 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1401)
theorem firstLink1402 : DerivedMapBatches.Batch046.certificate3695.algebra.mat = DerivedMapBatches.Batch063.certificate5090.a := by decide
theorem secondLink1402 : DerivedMapBatches.Batch046.certificate3696.algebra.mat = DerivedMapBatches.Batch063.certificate5090.b := by decide
theorem firstValid1402 : DerivedMapBatches.Batch046.certificate3695.Valid := DerivedMapBatches.Batch046.certificate3695valid
theorem secondValid1402 : DerivedMapBatches.Batch046.certificate3696.Valid := DerivedMapBatches.Batch046.certificate3696valid
theorem outputValid1402 : DerivedMapBatches.Batch063.certificate5090.Valid := DerivedMapBatches.Batch063.certificate5090valid
theorem linkedComposition1402 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5090.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5090.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3696.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3695.algebra.mat x) := by
  rw [firstLink1402, secondLink1402]
  exact DerivedMapBatches.Batch063.certificate5090valid.2 x
theorem rhsLink1402 : DerivedMapBatches.Batch063.certificate5090.c = DerivedMapBatches.Batch046.certificate3697.c := by decide
theorem rhsValid1402 : DerivedMapBatches.Batch046.certificate3697.Valid := DerivedMapBatches.Batch046.certificate3697valid
theorem linkedCommutativity1402 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5090.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3696.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3695.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3697.c x := by
  exact (linkedComposition1402 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1402)
theorem firstLink1403 : DerivedMapBatches.Batch046.certificate3698.algebra.mat = DerivedMapBatches.Batch063.certificate5091.a := by decide
theorem secondLink1403 : DerivedMapBatches.Batch046.certificate3699.algebra.mat = DerivedMapBatches.Batch063.certificate5091.b := by decide
theorem firstValid1403 : DerivedMapBatches.Batch046.certificate3698.Valid := DerivedMapBatches.Batch046.certificate3698valid
theorem secondValid1403 : DerivedMapBatches.Batch046.certificate3699.Valid := DerivedMapBatches.Batch046.certificate3699valid
theorem outputValid1403 : DerivedMapBatches.Batch063.certificate5091.Valid := DerivedMapBatches.Batch063.certificate5091valid
theorem linkedComposition1403 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5091.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5091.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3699.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3698.algebra.mat x) := by
  rw [firstLink1403, secondLink1403]
  exact DerivedMapBatches.Batch063.certificate5091valid.2 x
theorem rhsLink1403 : DerivedMapBatches.Batch063.certificate5091.c = DerivedMapBatches.Batch046.certificate3700.c := by decide
theorem rhsValid1403 : DerivedMapBatches.Batch046.certificate3700.Valid := DerivedMapBatches.Batch046.certificate3700valid
theorem linkedCommutativity1403 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5091.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3699.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3698.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3700.c x := by
  exact (linkedComposition1403 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1403)
theorem firstLink1404 : DerivedMapBatches.Batch046.certificate3701.algebra.mat = DerivedMapBatches.Batch063.certificate5092.a := by decide
theorem secondLink1404 : DerivedMapBatches.Batch046.certificate3702.algebra.mat = DerivedMapBatches.Batch063.certificate5092.b := by decide
theorem firstValid1404 : DerivedMapBatches.Batch046.certificate3701.Valid := DerivedMapBatches.Batch046.certificate3701valid
theorem secondValid1404 : DerivedMapBatches.Batch046.certificate3702.Valid := DerivedMapBatches.Batch046.certificate3702valid
theorem outputValid1404 : DerivedMapBatches.Batch063.certificate5092.Valid := DerivedMapBatches.Batch063.certificate5092valid
theorem linkedComposition1404 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5092.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5092.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3702.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3701.algebra.mat x) := by
  rw [firstLink1404, secondLink1404]
  exact DerivedMapBatches.Batch063.certificate5092valid.2 x
theorem rhsLink1404 : DerivedMapBatches.Batch063.certificate5092.c = DerivedMapBatches.Batch046.certificate3703.c := by decide
theorem rhsValid1404 : DerivedMapBatches.Batch046.certificate3703.Valid := DerivedMapBatches.Batch046.certificate3703valid
theorem linkedCommutativity1404 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5092.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3702.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3701.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3703.c x := by
  exact (linkedComposition1404 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1404)
theorem firstLink1405 : DerivedMapBatches.Batch046.certificate3704.algebra.mat = DerivedMapBatches.Batch063.certificate5093.a := by decide
theorem secondLink1405 : DerivedMapBatches.Batch046.certificate3705.algebra.mat = DerivedMapBatches.Batch063.certificate5093.b := by decide
theorem firstValid1405 : DerivedMapBatches.Batch046.certificate3704.Valid := DerivedMapBatches.Batch046.certificate3704valid
theorem secondValid1405 : DerivedMapBatches.Batch046.certificate3705.Valid := DerivedMapBatches.Batch046.certificate3705valid
theorem outputValid1405 : DerivedMapBatches.Batch063.certificate5093.Valid := DerivedMapBatches.Batch063.certificate5093valid
theorem linkedComposition1405 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5093.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5093.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3705.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3704.algebra.mat x) := by
  rw [firstLink1405, secondLink1405]
  exact DerivedMapBatches.Batch063.certificate5093valid.2 x
theorem rhsLink1405 : DerivedMapBatches.Batch063.certificate5093.c = DerivedMapBatches.Batch046.certificate3706.c := by decide
theorem rhsValid1405 : DerivedMapBatches.Batch046.certificate3706.Valid := DerivedMapBatches.Batch046.certificate3706valid
theorem linkedCommutativity1405 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5093.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3705.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3704.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3706.c x := by
  exact (linkedComposition1405 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1405)
theorem firstLink1406 : DerivedMapBatches.Batch046.certificate3707.algebra.mat = DerivedMapBatches.Batch063.certificate5094.a := by decide
theorem secondLink1406 : DerivedMapBatches.Batch046.certificate3708.algebra.mat = DerivedMapBatches.Batch063.certificate5094.b := by decide
theorem firstValid1406 : DerivedMapBatches.Batch046.certificate3707.Valid := DerivedMapBatches.Batch046.certificate3707valid
theorem secondValid1406 : DerivedMapBatches.Batch046.certificate3708.Valid := DerivedMapBatches.Batch046.certificate3708valid
theorem outputValid1406 : DerivedMapBatches.Batch063.certificate5094.Valid := DerivedMapBatches.Batch063.certificate5094valid
theorem linkedComposition1406 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5094.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5094.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3707.algebra.mat x) := by
  rw [firstLink1406, secondLink1406]
  exact DerivedMapBatches.Batch063.certificate5094valid.2 x
theorem rhsLink1406 : DerivedMapBatches.Batch063.certificate5094.c = DerivedMapBatches.Batch046.certificate3709.c := by decide
theorem rhsValid1406 : DerivedMapBatches.Batch046.certificate3709.Valid := DerivedMapBatches.Batch046.certificate3709valid
theorem linkedCommutativity1406 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5094.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3707.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3709.c x := by
  exact (linkedComposition1406 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1406)
theorem firstLink1407 : DerivedMapBatches.Batch046.certificate3710.algebra.mat = DerivedMapBatches.Batch063.certificate5095.a := by decide
theorem secondLink1407 : DerivedMapBatches.Batch046.certificate3711.algebra.mat = DerivedMapBatches.Batch063.certificate5095.b := by decide
theorem firstValid1407 : DerivedMapBatches.Batch046.certificate3710.Valid := DerivedMapBatches.Batch046.certificate3710valid
theorem secondValid1407 : DerivedMapBatches.Batch046.certificate3711.Valid := DerivedMapBatches.Batch046.certificate3711valid
theorem outputValid1407 : DerivedMapBatches.Batch063.certificate5095.Valid := DerivedMapBatches.Batch063.certificate5095valid
theorem linkedComposition1407 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5095.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5095.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3710.algebra.mat x) := by
  rw [firstLink1407, secondLink1407]
  exact DerivedMapBatches.Batch063.certificate5095valid.2 x
theorem rhsLink1407 : DerivedMapBatches.Batch063.certificate5095.c = DerivedMapBatches.Batch046.certificate3712.c := by decide
theorem rhsValid1407 : DerivedMapBatches.Batch046.certificate3712.Valid := DerivedMapBatches.Batch046.certificate3712valid
theorem linkedCommutativity1407 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5095.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3710.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3712.c x := by
  exact (linkedComposition1407 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1407)
theorem firstLink1408 : DerivedMapBatches.Batch046.certificate3713.algebra.mat = DerivedMapBatches.Batch063.certificate5096.a := by decide
theorem secondLink1408 : DerivedMapBatches.Batch046.certificate3714.algebra.mat = DerivedMapBatches.Batch063.certificate5096.b := by decide
theorem firstValid1408 : DerivedMapBatches.Batch046.certificate3713.Valid := DerivedMapBatches.Batch046.certificate3713valid
theorem secondValid1408 : DerivedMapBatches.Batch046.certificate3714.Valid := DerivedMapBatches.Batch046.certificate3714valid
theorem outputValid1408 : DerivedMapBatches.Batch063.certificate5096.Valid := DerivedMapBatches.Batch063.certificate5096valid
theorem linkedComposition1408 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5096.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5096.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3713.algebra.mat x) := by
  rw [firstLink1408, secondLink1408]
  exact DerivedMapBatches.Batch063.certificate5096valid.2 x
theorem rhsLink1408 : DerivedMapBatches.Batch063.certificate5096.c = DerivedMapBatches.Batch046.certificate3715.c := by decide
theorem rhsValid1408 : DerivedMapBatches.Batch046.certificate3715.Valid := DerivedMapBatches.Batch046.certificate3715valid
theorem linkedCommutativity1408 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5096.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3713.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3715.c x := by
  exact (linkedComposition1408 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1408)
theorem firstLink1409 : DerivedMapBatches.Batch046.certificate3716.algebra.mat = DerivedMapBatches.Batch063.certificate5097.a := by decide
theorem secondLink1409 : DerivedMapBatches.Batch046.certificate3717.algebra.mat = DerivedMapBatches.Batch063.certificate5097.b := by decide
theorem firstValid1409 : DerivedMapBatches.Batch046.certificate3716.Valid := DerivedMapBatches.Batch046.certificate3716valid
theorem secondValid1409 : DerivedMapBatches.Batch046.certificate3717.Valid := DerivedMapBatches.Batch046.certificate3717valid
theorem outputValid1409 : DerivedMapBatches.Batch063.certificate5097.Valid := DerivedMapBatches.Batch063.certificate5097valid
theorem linkedComposition1409 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5097.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5097.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3717.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3716.algebra.mat x) := by
  rw [firstLink1409, secondLink1409]
  exact DerivedMapBatches.Batch063.certificate5097valid.2 x
theorem rhsLink1409 : DerivedMapBatches.Batch063.certificate5097.c = DerivedMapBatches.Batch046.certificate3718.c := by decide
theorem rhsValid1409 : DerivedMapBatches.Batch046.certificate3718.Valid := DerivedMapBatches.Batch046.certificate3718valid
theorem linkedCommutativity1409 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5097.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3717.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3716.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3718.c x := by
  exact (linkedComposition1409 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1409)
theorem firstLink1410 : DerivedMapBatches.Batch046.certificate3719.algebra.mat = DerivedMapBatches.Batch063.certificate5098.a := by decide
theorem secondLink1410 : DerivedMapBatches.Batch046.certificate3720.algebra.mat = DerivedMapBatches.Batch063.certificate5098.b := by decide
theorem firstValid1410 : DerivedMapBatches.Batch046.certificate3719.Valid := DerivedMapBatches.Batch046.certificate3719valid
theorem secondValid1410 : DerivedMapBatches.Batch046.certificate3720.Valid := DerivedMapBatches.Batch046.certificate3720valid
theorem outputValid1410 : DerivedMapBatches.Batch063.certificate5098.Valid := DerivedMapBatches.Batch063.certificate5098valid
theorem linkedComposition1410 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5098.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5098.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3720.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3719.algebra.mat x) := by
  rw [firstLink1410, secondLink1410]
  exact DerivedMapBatches.Batch063.certificate5098valid.2 x
theorem rhsLink1410 : DerivedMapBatches.Batch063.certificate5098.c = DerivedMapBatches.Batch046.certificate3721.c := by decide
theorem rhsValid1410 : DerivedMapBatches.Batch046.certificate3721.Valid := DerivedMapBatches.Batch046.certificate3721valid
theorem linkedCommutativity1410 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5098.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3720.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3719.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3721.c x := by
  exact (linkedComposition1410 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1410)
theorem firstLink1411 : DerivedMapBatches.Batch046.certificate3722.algebra.mat = DerivedMapBatches.Batch063.certificate5099.a := by decide
theorem secondLink1411 : DerivedMapBatches.Batch046.certificate3723.algebra.mat = DerivedMapBatches.Batch063.certificate5099.b := by decide
theorem firstValid1411 : DerivedMapBatches.Batch046.certificate3722.Valid := DerivedMapBatches.Batch046.certificate3722valid
theorem secondValid1411 : DerivedMapBatches.Batch046.certificate3723.Valid := DerivedMapBatches.Batch046.certificate3723valid
theorem outputValid1411 : DerivedMapBatches.Batch063.certificate5099.Valid := DerivedMapBatches.Batch063.certificate5099valid
theorem linkedComposition1411 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5099.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5099.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3723.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3722.algebra.mat x) := by
  rw [firstLink1411, secondLink1411]
  exact DerivedMapBatches.Batch063.certificate5099valid.2 x
theorem rhsLink1411 : DerivedMapBatches.Batch063.certificate5099.c = DerivedMapBatches.Batch046.certificate3724.c := by decide
theorem rhsValid1411 : DerivedMapBatches.Batch046.certificate3724.Valid := DerivedMapBatches.Batch046.certificate3724valid
theorem linkedCommutativity1411 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5099.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3723.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3722.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3724.c x := by
  exact (linkedComposition1411 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1411)
theorem firstLink1412 : DerivedMapBatches.Batch046.certificate3725.algebra.mat = DerivedMapBatches.Batch063.certificate5100.a := by decide
theorem secondLink1412 : DerivedMapBatches.Batch046.certificate3726.algebra.mat = DerivedMapBatches.Batch063.certificate5100.b := by decide
theorem firstValid1412 : DerivedMapBatches.Batch046.certificate3725.Valid := DerivedMapBatches.Batch046.certificate3725valid
theorem secondValid1412 : DerivedMapBatches.Batch046.certificate3726.Valid := DerivedMapBatches.Batch046.certificate3726valid
theorem outputValid1412 : DerivedMapBatches.Batch063.certificate5100.Valid := DerivedMapBatches.Batch063.certificate5100valid
theorem linkedComposition1412 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5100.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5100.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3726.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3725.algebra.mat x) := by
  rw [firstLink1412, secondLink1412]
  exact DerivedMapBatches.Batch063.certificate5100valid.2 x
theorem rhsLink1412 : DerivedMapBatches.Batch063.certificate5100.c = DerivedMapBatches.Batch046.certificate3727.c := by decide
theorem rhsValid1412 : DerivedMapBatches.Batch046.certificate3727.Valid := DerivedMapBatches.Batch046.certificate3727valid
theorem linkedCommutativity1412 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5100.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3726.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3725.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3727.c x := by
  exact (linkedComposition1412 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1412)
theorem firstLink1413 : DerivedMapBatches.Batch046.certificate3728.algebra.mat = DerivedMapBatches.Batch063.certificate5101.a := by decide
theorem secondLink1413 : DerivedMapBatches.Batch046.certificate3729.algebra.mat = DerivedMapBatches.Batch063.certificate5101.b := by decide
theorem firstValid1413 : DerivedMapBatches.Batch046.certificate3728.Valid := DerivedMapBatches.Batch046.certificate3728valid
theorem secondValid1413 : DerivedMapBatches.Batch046.certificate3729.Valid := DerivedMapBatches.Batch046.certificate3729valid
theorem outputValid1413 : DerivedMapBatches.Batch063.certificate5101.Valid := DerivedMapBatches.Batch063.certificate5101valid
theorem linkedComposition1413 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5101.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5101.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3728.algebra.mat x) := by
  rw [firstLink1413, secondLink1413]
  exact DerivedMapBatches.Batch063.certificate5101valid.2 x
theorem rhsLink1413 : DerivedMapBatches.Batch063.certificate5101.c = DerivedMapBatches.Batch046.certificate3730.c := by decide
theorem rhsValid1413 : DerivedMapBatches.Batch046.certificate3730.Valid := DerivedMapBatches.Batch046.certificate3730valid
theorem linkedCommutativity1413 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5101.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3728.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3730.c x := by
  exact (linkedComposition1413 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1413)
theorem firstLink1414 : DerivedMapBatches.Batch046.certificate3731.algebra.mat = DerivedMapBatches.Batch063.certificate5102.a := by decide
theorem secondLink1414 : DerivedMapBatches.Batch046.certificate3732.algebra.mat = DerivedMapBatches.Batch063.certificate5102.b := by decide
theorem firstValid1414 : DerivedMapBatches.Batch046.certificate3731.Valid := DerivedMapBatches.Batch046.certificate3731valid
theorem secondValid1414 : DerivedMapBatches.Batch046.certificate3732.Valid := DerivedMapBatches.Batch046.certificate3732valid
theorem outputValid1414 : DerivedMapBatches.Batch063.certificate5102.Valid := DerivedMapBatches.Batch063.certificate5102valid
theorem linkedComposition1414 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5102.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5102.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3731.algebra.mat x) := by
  rw [firstLink1414, secondLink1414]
  exact DerivedMapBatches.Batch063.certificate5102valid.2 x
theorem rhsLink1414 : DerivedMapBatches.Batch063.certificate5102.c = DerivedMapBatches.Batch046.certificate3733.c := by decide
theorem rhsValid1414 : DerivedMapBatches.Batch046.certificate3733.Valid := DerivedMapBatches.Batch046.certificate3733valid
theorem linkedCommutativity1414 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5102.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3731.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3733.c x := by
  exact (linkedComposition1414 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1414)
theorem firstLink1415 : DerivedMapBatches.Batch046.certificate3734.algebra.mat = DerivedMapBatches.Batch063.certificate5103.a := by decide
theorem secondLink1415 : DerivedMapBatches.Batch046.certificate3735.algebra.mat = DerivedMapBatches.Batch063.certificate5103.b := by decide
theorem firstValid1415 : DerivedMapBatches.Batch046.certificate3734.Valid := DerivedMapBatches.Batch046.certificate3734valid
theorem secondValid1415 : DerivedMapBatches.Batch046.certificate3735.Valid := DerivedMapBatches.Batch046.certificate3735valid
theorem outputValid1415 : DerivedMapBatches.Batch063.certificate5103.Valid := DerivedMapBatches.Batch063.certificate5103valid
theorem linkedComposition1415 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5103.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5103.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3734.algebra.mat x) := by
  rw [firstLink1415, secondLink1415]
  exact DerivedMapBatches.Batch063.certificate5103valid.2 x
theorem rhsLink1415 : DerivedMapBatches.Batch063.certificate5103.c = DerivedMapBatches.Batch046.certificate3736.c := by decide
theorem rhsValid1415 : DerivedMapBatches.Batch046.certificate3736.Valid := DerivedMapBatches.Batch046.certificate3736valid
theorem linkedCommutativity1415 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5103.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3734.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3736.c x := by
  exact (linkedComposition1415 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1415)
theorem firstLink1416 : DerivedMapBatches.Batch046.certificate3737.algebra.mat = DerivedMapBatches.Batch063.certificate5104.a := by decide
theorem secondLink1416 : DerivedMapBatches.Batch046.certificate3738.algebra.mat = DerivedMapBatches.Batch063.certificate5104.b := by decide
theorem firstValid1416 : DerivedMapBatches.Batch046.certificate3737.Valid := DerivedMapBatches.Batch046.certificate3737valid
theorem secondValid1416 : DerivedMapBatches.Batch046.certificate3738.Valid := DerivedMapBatches.Batch046.certificate3738valid
theorem outputValid1416 : DerivedMapBatches.Batch063.certificate5104.Valid := DerivedMapBatches.Batch063.certificate5104valid
theorem linkedComposition1416 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5104.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5104.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3737.algebra.mat x) := by
  rw [firstLink1416, secondLink1416]
  exact DerivedMapBatches.Batch063.certificate5104valid.2 x
theorem rhsLink1416 : DerivedMapBatches.Batch063.certificate5104.c = DerivedMapBatches.Batch046.certificate3739.c := by decide
theorem rhsValid1416 : DerivedMapBatches.Batch046.certificate3739.Valid := DerivedMapBatches.Batch046.certificate3739valid
theorem linkedCommutativity1416 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5104.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3737.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3739.c x := by
  exact (linkedComposition1416 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1416)
theorem firstLink1417 : DerivedMapBatches.Batch046.certificate3740.algebra.mat = DerivedMapBatches.Batch063.certificate5105.a := by decide
theorem secondLink1417 : DerivedMapBatches.Batch046.certificate3741.algebra.mat = DerivedMapBatches.Batch063.certificate5105.b := by decide
theorem firstValid1417 : DerivedMapBatches.Batch046.certificate3740.Valid := DerivedMapBatches.Batch046.certificate3740valid
theorem secondValid1417 : DerivedMapBatches.Batch046.certificate3741.Valid := DerivedMapBatches.Batch046.certificate3741valid
theorem outputValid1417 : DerivedMapBatches.Batch063.certificate5105.Valid := DerivedMapBatches.Batch063.certificate5105valid
theorem linkedComposition1417 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5105.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5105.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3740.algebra.mat x) := by
  rw [firstLink1417, secondLink1417]
  exact DerivedMapBatches.Batch063.certificate5105valid.2 x
theorem rhsLink1417 : DerivedMapBatches.Batch063.certificate5105.c = DerivedMapBatches.Batch046.certificate3742.c := by decide
theorem rhsValid1417 : DerivedMapBatches.Batch046.certificate3742.Valid := DerivedMapBatches.Batch046.certificate3742valid
theorem linkedCommutativity1417 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5105.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3740.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3742.c x := by
  exact (linkedComposition1417 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1417)
theorem firstLink1418 : DerivedMapBatches.Batch046.certificate3743.algebra.mat = DerivedMapBatches.Batch063.certificate5106.a := by decide
theorem secondLink1418 : DerivedMapBatches.Batch046.certificate3744.algebra.mat = DerivedMapBatches.Batch063.certificate5106.b := by decide
theorem firstValid1418 : DerivedMapBatches.Batch046.certificate3743.Valid := DerivedMapBatches.Batch046.certificate3743valid
theorem secondValid1418 : DerivedMapBatches.Batch046.certificate3744.Valid := DerivedMapBatches.Batch046.certificate3744valid
theorem outputValid1418 : DerivedMapBatches.Batch063.certificate5106.Valid := DerivedMapBatches.Batch063.certificate5106valid
theorem linkedComposition1418 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5106.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5106.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3743.algebra.mat x) := by
  rw [firstLink1418, secondLink1418]
  exact DerivedMapBatches.Batch063.certificate5106valid.2 x
theorem rhsLink1418 : DerivedMapBatches.Batch063.certificate5106.c = DerivedMapBatches.Batch046.certificate3745.c := by decide
theorem rhsValid1418 : DerivedMapBatches.Batch046.certificate3745.Valid := DerivedMapBatches.Batch046.certificate3745valid
theorem linkedCommutativity1418 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5106.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3743.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3745.c x := by
  exact (linkedComposition1418 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1418)
theorem firstLink1419 : DerivedMapBatches.Batch046.certificate3746.algebra.mat = DerivedMapBatches.Batch063.certificate5107.a := by decide
theorem secondLink1419 : DerivedMapBatches.Batch046.certificate3747.algebra.mat = DerivedMapBatches.Batch063.certificate5107.b := by decide
theorem firstValid1419 : DerivedMapBatches.Batch046.certificate3746.Valid := DerivedMapBatches.Batch046.certificate3746valid
theorem secondValid1419 : DerivedMapBatches.Batch046.certificate3747.Valid := DerivedMapBatches.Batch046.certificate3747valid
theorem outputValid1419 : DerivedMapBatches.Batch063.certificate5107.Valid := DerivedMapBatches.Batch063.certificate5107valid
theorem linkedComposition1419 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5107.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5107.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3746.algebra.mat x) := by
  rw [firstLink1419, secondLink1419]
  exact DerivedMapBatches.Batch063.certificate5107valid.2 x
theorem rhsLink1419 : DerivedMapBatches.Batch063.certificate5107.c = DerivedMapBatches.Batch046.certificate3748.c := by decide
theorem rhsValid1419 : DerivedMapBatches.Batch046.certificate3748.Valid := DerivedMapBatches.Batch046.certificate3748valid
theorem linkedCommutativity1419 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5107.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3746.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3748.c x := by
  exact (linkedComposition1419 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1419)
theorem firstLink1420 : DerivedMapBatches.Batch046.certificate3749.algebra.mat = DerivedMapBatches.Batch063.certificate5108.a := by decide
theorem secondLink1420 : DerivedMapBatches.Batch046.certificate3750.algebra.mat = DerivedMapBatches.Batch063.certificate5108.b := by decide
theorem firstValid1420 : DerivedMapBatches.Batch046.certificate3749.Valid := DerivedMapBatches.Batch046.certificate3749valid
theorem secondValid1420 : DerivedMapBatches.Batch046.certificate3750.Valid := DerivedMapBatches.Batch046.certificate3750valid
theorem outputValid1420 : DerivedMapBatches.Batch063.certificate5108.Valid := DerivedMapBatches.Batch063.certificate5108valid
theorem linkedComposition1420 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5108.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5108.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3749.algebra.mat x) := by
  rw [firstLink1420, secondLink1420]
  exact DerivedMapBatches.Batch063.certificate5108valid.2 x
theorem rhsLink1420 : DerivedMapBatches.Batch063.certificate5108.c = DerivedMapBatches.Batch046.certificate3751.c := by decide
theorem rhsValid1420 : DerivedMapBatches.Batch046.certificate3751.Valid := DerivedMapBatches.Batch046.certificate3751valid
theorem linkedCommutativity1420 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5108.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3749.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3751.c x := by
  exact (linkedComposition1420 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1420)
theorem firstLink1421 : DerivedMapBatches.Batch046.certificate3752.algebra.mat = DerivedMapBatches.Batch063.certificate5109.a := by decide
theorem secondLink1421 : DerivedMapBatches.Batch046.certificate3753.algebra.mat = DerivedMapBatches.Batch063.certificate5109.b := by decide
theorem firstValid1421 : DerivedMapBatches.Batch046.certificate3752.Valid := DerivedMapBatches.Batch046.certificate3752valid
theorem secondValid1421 : DerivedMapBatches.Batch046.certificate3753.Valid := DerivedMapBatches.Batch046.certificate3753valid
theorem outputValid1421 : DerivedMapBatches.Batch063.certificate5109.Valid := DerivedMapBatches.Batch063.certificate5109valid
theorem linkedComposition1421 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5109.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5109.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3752.algebra.mat x) := by
  rw [firstLink1421, secondLink1421]
  exact DerivedMapBatches.Batch063.certificate5109valid.2 x
theorem rhsLink1421 : DerivedMapBatches.Batch063.certificate5109.c = DerivedMapBatches.Batch046.certificate3754.c := by decide
theorem rhsValid1421 : DerivedMapBatches.Batch046.certificate3754.Valid := DerivedMapBatches.Batch046.certificate3754valid
theorem linkedCommutativity1421 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5109.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3752.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3754.c x := by
  exact (linkedComposition1421 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1421)
theorem firstLink1422 : DerivedMapBatches.Batch046.certificate3755.algebra.mat = DerivedMapBatches.Batch063.certificate5110.a := by decide
theorem secondLink1422 : DerivedMapBatches.Batch046.certificate3756.algebra.mat = DerivedMapBatches.Batch063.certificate5110.b := by decide
theorem firstValid1422 : DerivedMapBatches.Batch046.certificate3755.Valid := DerivedMapBatches.Batch046.certificate3755valid
theorem secondValid1422 : DerivedMapBatches.Batch046.certificate3756.Valid := DerivedMapBatches.Batch046.certificate3756valid
theorem outputValid1422 : DerivedMapBatches.Batch063.certificate5110.Valid := DerivedMapBatches.Batch063.certificate5110valid
theorem linkedComposition1422 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5110.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5110.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3755.algebra.mat x) := by
  rw [firstLink1422, secondLink1422]
  exact DerivedMapBatches.Batch063.certificate5110valid.2 x
theorem rhsLink1422 : DerivedMapBatches.Batch063.certificate5110.c = DerivedMapBatches.Batch046.certificate3757.c := by decide
theorem rhsValid1422 : DerivedMapBatches.Batch046.certificate3757.Valid := DerivedMapBatches.Batch046.certificate3757valid
theorem linkedCommutativity1422 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5110.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3755.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3757.c x := by
  exact (linkedComposition1422 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1422)
theorem firstLink1423 : DerivedMapBatches.Batch046.certificate3758.algebra.mat = DerivedMapBatches.Batch063.certificate5111.a := by decide
theorem secondLink1423 : DerivedMapBatches.Batch046.certificate3759.algebra.mat = DerivedMapBatches.Batch063.certificate5111.b := by decide
theorem firstValid1423 : DerivedMapBatches.Batch046.certificate3758.Valid := DerivedMapBatches.Batch046.certificate3758valid
theorem secondValid1423 : DerivedMapBatches.Batch046.certificate3759.Valid := DerivedMapBatches.Batch046.certificate3759valid
theorem outputValid1423 : DerivedMapBatches.Batch063.certificate5111.Valid := DerivedMapBatches.Batch063.certificate5111valid
theorem linkedComposition1423 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5111.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5111.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3758.algebra.mat x) := by
  rw [firstLink1423, secondLink1423]
  exact DerivedMapBatches.Batch063.certificate5111valid.2 x
theorem rhsLink1423 : DerivedMapBatches.Batch063.certificate5111.c = DerivedMapBatches.Batch047.certificate3760.c := by decide
theorem rhsValid1423 : DerivedMapBatches.Batch047.certificate3760.Valid := DerivedMapBatches.Batch047.certificate3760valid
theorem linkedCommutativity1423 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5111.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3758.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3760.c x := by
  exact (linkedComposition1423 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1423)
theorem firstLink1424 : DerivedMapBatches.Batch047.certificate3761.algebra.mat = DerivedMapBatches.Batch063.certificate5112.a := by decide
theorem secondLink1424 : DerivedMapBatches.Batch047.certificate3762.algebra.mat = DerivedMapBatches.Batch063.certificate5112.b := by decide
theorem firstValid1424 : DerivedMapBatches.Batch047.certificate3761.Valid := DerivedMapBatches.Batch047.certificate3761valid
theorem secondValid1424 : DerivedMapBatches.Batch047.certificate3762.Valid := DerivedMapBatches.Batch047.certificate3762valid
theorem outputValid1424 : DerivedMapBatches.Batch063.certificate5112.Valid := DerivedMapBatches.Batch063.certificate5112valid
theorem linkedComposition1424 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5112.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5112.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3761.algebra.mat x) := by
  rw [firstLink1424, secondLink1424]
  exact DerivedMapBatches.Batch063.certificate5112valid.2 x
theorem rhsLink1424 : DerivedMapBatches.Batch063.certificate5112.c = DerivedMapBatches.Batch047.certificate3763.c := by decide
theorem rhsValid1424 : DerivedMapBatches.Batch047.certificate3763.Valid := DerivedMapBatches.Batch047.certificate3763valid
theorem linkedCommutativity1424 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5112.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3761.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3763.c x := by
  exact (linkedComposition1424 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1424)
theorem firstLink1425 : DerivedMapBatches.Batch047.certificate3764.algebra.mat = DerivedMapBatches.Batch063.certificate5113.a := by decide
theorem secondLink1425 : DerivedMapBatches.Batch047.certificate3765.algebra.mat = DerivedMapBatches.Batch063.certificate5113.b := by decide
theorem firstValid1425 : DerivedMapBatches.Batch047.certificate3764.Valid := DerivedMapBatches.Batch047.certificate3764valid
theorem secondValid1425 : DerivedMapBatches.Batch047.certificate3765.Valid := DerivedMapBatches.Batch047.certificate3765valid
theorem outputValid1425 : DerivedMapBatches.Batch063.certificate5113.Valid := DerivedMapBatches.Batch063.certificate5113valid
theorem linkedComposition1425 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5113.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5113.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3764.algebra.mat x) := by
  rw [firstLink1425, secondLink1425]
  exact DerivedMapBatches.Batch063.certificate5113valid.2 x
theorem rhsLink1425 : DerivedMapBatches.Batch063.certificate5113.c = DerivedMapBatches.Batch047.certificate3766.c := by decide
theorem rhsValid1425 : DerivedMapBatches.Batch047.certificate3766.Valid := DerivedMapBatches.Batch047.certificate3766valid
theorem linkedCommutativity1425 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5113.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3764.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3766.c x := by
  exact (linkedComposition1425 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1425)
theorem firstLink1426 : DerivedMapBatches.Batch047.certificate3767.algebra.mat = DerivedMapBatches.Batch063.certificate5114.a := by decide
theorem secondLink1426 : DerivedMapBatches.Batch047.certificate3768.algebra.mat = DerivedMapBatches.Batch063.certificate5114.b := by decide
theorem firstValid1426 : DerivedMapBatches.Batch047.certificate3767.Valid := DerivedMapBatches.Batch047.certificate3767valid
theorem secondValid1426 : DerivedMapBatches.Batch047.certificate3768.Valid := DerivedMapBatches.Batch047.certificate3768valid
theorem outputValid1426 : DerivedMapBatches.Batch063.certificate5114.Valid := DerivedMapBatches.Batch063.certificate5114valid
theorem linkedComposition1426 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5114.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5114.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3767.algebra.mat x) := by
  rw [firstLink1426, secondLink1426]
  exact DerivedMapBatches.Batch063.certificate5114valid.2 x
theorem rhsLink1426 : DerivedMapBatches.Batch063.certificate5114.c = DerivedMapBatches.Batch047.certificate3769.c := by decide
theorem rhsValid1426 : DerivedMapBatches.Batch047.certificate3769.Valid := DerivedMapBatches.Batch047.certificate3769valid
theorem linkedCommutativity1426 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5114.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3767.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3769.c x := by
  exact (linkedComposition1426 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1426)
theorem firstLink1427 : DerivedMapBatches.Batch047.certificate3770.algebra.mat = DerivedMapBatches.Batch063.certificate5115.a := by decide
theorem secondLink1427 : DerivedMapBatches.Batch047.certificate3771.algebra.mat = DerivedMapBatches.Batch063.certificate5115.b := by decide
theorem firstValid1427 : DerivedMapBatches.Batch047.certificate3770.Valid := DerivedMapBatches.Batch047.certificate3770valid
theorem secondValid1427 : DerivedMapBatches.Batch047.certificate3771.Valid := DerivedMapBatches.Batch047.certificate3771valid
theorem outputValid1427 : DerivedMapBatches.Batch063.certificate5115.Valid := DerivedMapBatches.Batch063.certificate5115valid
theorem linkedComposition1427 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5115.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5115.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3770.algebra.mat x) := by
  rw [firstLink1427, secondLink1427]
  exact DerivedMapBatches.Batch063.certificate5115valid.2 x
theorem rhsLink1427 : DerivedMapBatches.Batch063.certificate5115.c = DerivedMapBatches.Batch047.certificate3772.c := by decide
theorem rhsValid1427 : DerivedMapBatches.Batch047.certificate3772.Valid := DerivedMapBatches.Batch047.certificate3772valid
theorem linkedCommutativity1427 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5115.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3770.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3772.c x := by
  exact (linkedComposition1427 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1427)
theorem firstLink1428 : DerivedMapBatches.Batch047.certificate3773.algebra.mat = DerivedMapBatches.Batch063.certificate5116.a := by decide
theorem secondLink1428 : DerivedMapBatches.Batch047.certificate3774.algebra.mat = DerivedMapBatches.Batch063.certificate5116.b := by decide
theorem firstValid1428 : DerivedMapBatches.Batch047.certificate3773.Valid := DerivedMapBatches.Batch047.certificate3773valid
theorem secondValid1428 : DerivedMapBatches.Batch047.certificate3774.Valid := DerivedMapBatches.Batch047.certificate3774valid
theorem outputValid1428 : DerivedMapBatches.Batch063.certificate5116.Valid := DerivedMapBatches.Batch063.certificate5116valid
theorem linkedComposition1428 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5116.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5116.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3773.algebra.mat x) := by
  rw [firstLink1428, secondLink1428]
  exact DerivedMapBatches.Batch063.certificate5116valid.2 x
theorem rhsLink1428 : DerivedMapBatches.Batch063.certificate5116.c = DerivedMapBatches.Batch047.certificate3775.c := by decide
theorem rhsValid1428 : DerivedMapBatches.Batch047.certificate3775.Valid := DerivedMapBatches.Batch047.certificate3775valid
theorem linkedCommutativity1428 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5116.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3773.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3775.c x := by
  exact (linkedComposition1428 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1428)
theorem firstLink1429 : DerivedMapBatches.Batch047.certificate3776.algebra.mat = DerivedMapBatches.Batch063.certificate5117.a := by decide
theorem secondLink1429 : DerivedMapBatches.Batch047.certificate3777.algebra.mat = DerivedMapBatches.Batch063.certificate5117.b := by decide
theorem firstValid1429 : DerivedMapBatches.Batch047.certificate3776.Valid := DerivedMapBatches.Batch047.certificate3776valid
theorem secondValid1429 : DerivedMapBatches.Batch047.certificate3777.Valid := DerivedMapBatches.Batch047.certificate3777valid
theorem outputValid1429 : DerivedMapBatches.Batch063.certificate5117.Valid := DerivedMapBatches.Batch063.certificate5117valid
theorem linkedComposition1429 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5117.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5117.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3776.algebra.mat x) := by
  rw [firstLink1429, secondLink1429]
  exact DerivedMapBatches.Batch063.certificate5117valid.2 x
theorem rhsLink1429 : DerivedMapBatches.Batch063.certificate5117.c = DerivedMapBatches.Batch047.certificate3778.c := by decide
theorem rhsValid1429 : DerivedMapBatches.Batch047.certificate3778.Valid := DerivedMapBatches.Batch047.certificate3778valid
theorem linkedCommutativity1429 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5117.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3776.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3778.c x := by
  exact (linkedComposition1429 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1429)
theorem firstLink1430 : DerivedMapBatches.Batch009.certificate728.algebra.mat = DerivedMapBatches.Batch063.certificate5118.a := by decide
theorem secondLink1430 : DerivedMapBatches.Batch009.certificate729.algebra.mat = DerivedMapBatches.Batch063.certificate5118.b := by decide
theorem firstValid1430 : DerivedMapBatches.Batch009.certificate728.Valid := DerivedMapBatches.Batch009.certificate728valid
theorem secondValid1430 : DerivedMapBatches.Batch009.certificate729.Valid := DerivedMapBatches.Batch009.certificate729valid
theorem outputValid1430 : DerivedMapBatches.Batch063.certificate5118.Valid := DerivedMapBatches.Batch063.certificate5118valid
theorem linkedComposition1430 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5118.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5118.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate728.algebra.mat x) := by
  rw [firstLink1430, secondLink1430]
  exact DerivedMapBatches.Batch063.certificate5118valid.2 x
theorem rhsLink1430 : DerivedMapBatches.Batch063.certificate5118.c = DerivedMapBatches.Batch009.certificate730.c := by decide
theorem rhsValid1430 : DerivedMapBatches.Batch009.certificate730.Valid := DerivedMapBatches.Batch009.certificate730valid
theorem linkedCommutativity1430 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5118.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate728.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate730.c x := by
  exact (linkedComposition1430 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1430)
theorem firstLink1431 : DerivedMapBatches.Batch009.certificate731.algebra.mat = DerivedMapBatches.Batch063.certificate5119.a := by decide
theorem secondLink1431 : DerivedMapBatches.Batch009.certificate732.algebra.mat = DerivedMapBatches.Batch063.certificate5119.b := by decide
theorem firstValid1431 : DerivedMapBatches.Batch009.certificate731.Valid := DerivedMapBatches.Batch009.certificate731valid
theorem secondValid1431 : DerivedMapBatches.Batch009.certificate732.Valid := DerivedMapBatches.Batch009.certificate732valid
theorem outputValid1431 : DerivedMapBatches.Batch063.certificate5119.Valid := DerivedMapBatches.Batch063.certificate5119valid
theorem linkedComposition1431 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5119.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch063.certificate5119.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate731.algebra.mat x) := by
  rw [firstLink1431, secondLink1431]
  exact DerivedMapBatches.Batch063.certificate5119valid.2 x
theorem rhsLink1431 : DerivedMapBatches.Batch063.certificate5119.c = DerivedMapBatches.Batch009.certificate733.c := by decide
theorem rhsValid1431 : DerivedMapBatches.Batch009.certificate733.Valid := DerivedMapBatches.Batch009.certificate733valid
theorem linkedCommutativity1431 (x : LinearCertificates.Vec DerivedMapBatches.Batch063.certificate5119.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate731.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate733.c x := by
  exact (linkedComposition1431 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1431)
theorem firstLink1432 : DerivedMapBatches.Batch009.certificate734.algebra.mat = DerivedMapBatches.Batch064.certificate5120.a := by decide
theorem secondLink1432 : DerivedMapBatches.Batch009.certificate735.algebra.mat = DerivedMapBatches.Batch064.certificate5120.b := by decide
theorem firstValid1432 : DerivedMapBatches.Batch009.certificate734.Valid := DerivedMapBatches.Batch009.certificate734valid
theorem secondValid1432 : DerivedMapBatches.Batch009.certificate735.Valid := DerivedMapBatches.Batch009.certificate735valid
theorem outputValid1432 : DerivedMapBatches.Batch064.certificate5120.Valid := DerivedMapBatches.Batch064.certificate5120valid
theorem linkedComposition1432 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5120.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5120.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate734.algebra.mat x) := by
  rw [firstLink1432, secondLink1432]
  exact DerivedMapBatches.Batch064.certificate5120valid.2 x
theorem rhsLink1432 : DerivedMapBatches.Batch064.certificate5120.c = DerivedMapBatches.Batch009.certificate736.c := by decide
theorem rhsValid1432 : DerivedMapBatches.Batch009.certificate736.Valid := DerivedMapBatches.Batch009.certificate736valid
theorem linkedCommutativity1432 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5120.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate734.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate736.c x := by
  exact (linkedComposition1432 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1432)
theorem firstLink1433 : DerivedMapBatches.Batch009.certificate737.algebra.mat = DerivedMapBatches.Batch064.certificate5121.a := by decide
theorem secondLink1433 : DerivedMapBatches.Batch009.certificate738.algebra.mat = DerivedMapBatches.Batch064.certificate5121.b := by decide
theorem firstValid1433 : DerivedMapBatches.Batch009.certificate737.Valid := DerivedMapBatches.Batch009.certificate737valid
theorem secondValid1433 : DerivedMapBatches.Batch009.certificate738.Valid := DerivedMapBatches.Batch009.certificate738valid
theorem outputValid1433 : DerivedMapBatches.Batch064.certificate5121.Valid := DerivedMapBatches.Batch064.certificate5121valid
theorem linkedComposition1433 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5121.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5121.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate737.algebra.mat x) := by
  rw [firstLink1433, secondLink1433]
  exact DerivedMapBatches.Batch064.certificate5121valid.2 x
theorem rhsLink1433 : DerivedMapBatches.Batch064.certificate5121.c = DerivedMapBatches.Batch009.certificate739.c := by decide
theorem rhsValid1433 : DerivedMapBatches.Batch009.certificate739.Valid := DerivedMapBatches.Batch009.certificate739valid
theorem linkedCommutativity1433 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5121.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate737.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate739.c x := by
  exact (linkedComposition1433 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1433)
theorem firstLink1434 : DerivedMapBatches.Batch009.certificate740.algebra.mat = DerivedMapBatches.Batch064.certificate5122.a := by decide
theorem secondLink1434 : DerivedMapBatches.Batch009.certificate741.algebra.mat = DerivedMapBatches.Batch064.certificate5122.b := by decide
theorem firstValid1434 : DerivedMapBatches.Batch009.certificate740.Valid := DerivedMapBatches.Batch009.certificate740valid
theorem secondValid1434 : DerivedMapBatches.Batch009.certificate741.Valid := DerivedMapBatches.Batch009.certificate741valid
theorem outputValid1434 : DerivedMapBatches.Batch064.certificate5122.Valid := DerivedMapBatches.Batch064.certificate5122valid
theorem linkedComposition1434 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5122.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5122.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate740.algebra.mat x) := by
  rw [firstLink1434, secondLink1434]
  exact DerivedMapBatches.Batch064.certificate5122valid.2 x
theorem rhsLink1434 : DerivedMapBatches.Batch064.certificate5122.c = DerivedMapBatches.Batch009.certificate742.c := by decide
theorem rhsValid1434 : DerivedMapBatches.Batch009.certificate742.Valid := DerivedMapBatches.Batch009.certificate742valid
theorem linkedCommutativity1434 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5122.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate740.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate742.c x := by
  exact (linkedComposition1434 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1434)
theorem firstLink1435 : DerivedMapBatches.Batch009.certificate743.algebra.mat = DerivedMapBatches.Batch064.certificate5123.a := by decide
theorem secondLink1435 : DerivedMapBatches.Batch009.certificate744.algebra.mat = DerivedMapBatches.Batch064.certificate5123.b := by decide
theorem firstValid1435 : DerivedMapBatches.Batch009.certificate743.Valid := DerivedMapBatches.Batch009.certificate743valid
theorem secondValid1435 : DerivedMapBatches.Batch009.certificate744.Valid := DerivedMapBatches.Batch009.certificate744valid
theorem outputValid1435 : DerivedMapBatches.Batch064.certificate5123.Valid := DerivedMapBatches.Batch064.certificate5123valid
theorem linkedComposition1435 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5123.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5123.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate743.algebra.mat x) := by
  rw [firstLink1435, secondLink1435]
  exact DerivedMapBatches.Batch064.certificate5123valid.2 x
theorem rhsLink1435 : DerivedMapBatches.Batch064.certificate5123.c = DerivedMapBatches.Batch009.certificate745.c := by decide
theorem rhsValid1435 : DerivedMapBatches.Batch009.certificate745.Valid := DerivedMapBatches.Batch009.certificate745valid
theorem linkedCommutativity1435 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5123.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate743.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate745.c x := by
  exact (linkedComposition1435 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1435)
theorem firstLink1436 : DerivedMapBatches.Batch009.certificate746.algebra.mat = DerivedMapBatches.Batch064.certificate5124.a := by decide
theorem secondLink1436 : DerivedMapBatches.Batch009.certificate747.algebra.mat = DerivedMapBatches.Batch064.certificate5124.b := by decide
theorem firstValid1436 : DerivedMapBatches.Batch009.certificate746.Valid := DerivedMapBatches.Batch009.certificate746valid
theorem secondValid1436 : DerivedMapBatches.Batch009.certificate747.Valid := DerivedMapBatches.Batch009.certificate747valid
theorem outputValid1436 : DerivedMapBatches.Batch064.certificate5124.Valid := DerivedMapBatches.Batch064.certificate5124valid
theorem linkedComposition1436 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5124.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5124.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate746.algebra.mat x) := by
  rw [firstLink1436, secondLink1436]
  exact DerivedMapBatches.Batch064.certificate5124valid.2 x
theorem rhsLink1436 : DerivedMapBatches.Batch064.certificate5124.c = DerivedMapBatches.Batch009.certificate748.c := by decide
theorem rhsValid1436 : DerivedMapBatches.Batch009.certificate748.Valid := DerivedMapBatches.Batch009.certificate748valid
theorem linkedCommutativity1436 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5124.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate746.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate748.c x := by
  exact (linkedComposition1436 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1436)
theorem firstLink1437 : DerivedMapBatches.Batch009.certificate749.algebra.mat = DerivedMapBatches.Batch064.certificate5125.a := by decide
theorem secondLink1437 : DerivedMapBatches.Batch009.certificate750.algebra.mat = DerivedMapBatches.Batch064.certificate5125.b := by decide
theorem firstValid1437 : DerivedMapBatches.Batch009.certificate749.Valid := DerivedMapBatches.Batch009.certificate749valid
theorem secondValid1437 : DerivedMapBatches.Batch009.certificate750.Valid := DerivedMapBatches.Batch009.certificate750valid
theorem outputValid1437 : DerivedMapBatches.Batch064.certificate5125.Valid := DerivedMapBatches.Batch064.certificate5125valid
theorem linkedComposition1437 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5125.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5125.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate749.algebra.mat x) := by
  rw [firstLink1437, secondLink1437]
  exact DerivedMapBatches.Batch064.certificate5125valid.2 x
theorem rhsLink1437 : DerivedMapBatches.Batch064.certificate5125.c = DerivedMapBatches.Batch009.certificate751.c := by decide
theorem rhsValid1437 : DerivedMapBatches.Batch009.certificate751.Valid := DerivedMapBatches.Batch009.certificate751valid
theorem linkedCommutativity1437 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5125.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate749.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate751.c x := by
  exact (linkedComposition1437 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1437)
theorem firstLink1438 : DerivedMapBatches.Batch009.certificate752.algebra.mat = DerivedMapBatches.Batch064.certificate5126.a := by decide
theorem secondLink1438 : DerivedMapBatches.Batch009.certificate753.algebra.mat = DerivedMapBatches.Batch064.certificate5126.b := by decide
theorem firstValid1438 : DerivedMapBatches.Batch009.certificate752.Valid := DerivedMapBatches.Batch009.certificate752valid
theorem secondValid1438 : DerivedMapBatches.Batch009.certificate753.Valid := DerivedMapBatches.Batch009.certificate753valid
theorem outputValid1438 : DerivedMapBatches.Batch064.certificate5126.Valid := DerivedMapBatches.Batch064.certificate5126valid
theorem linkedComposition1438 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5126.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5126.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate752.algebra.mat x) := by
  rw [firstLink1438, secondLink1438]
  exact DerivedMapBatches.Batch064.certificate5126valid.2 x
theorem rhsLink1438 : DerivedMapBatches.Batch064.certificate5126.c = DerivedMapBatches.Batch009.certificate754.c := by decide
theorem rhsValid1438 : DerivedMapBatches.Batch009.certificate754.Valid := DerivedMapBatches.Batch009.certificate754valid
theorem linkedCommutativity1438 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5126.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate752.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate754.c x := by
  exact (linkedComposition1438 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1438)
theorem firstLink1439 : DerivedMapBatches.Batch009.certificate755.algebra.mat = DerivedMapBatches.Batch064.certificate5127.a := by decide
theorem secondLink1439 : DerivedMapBatches.Batch009.certificate756.algebra.mat = DerivedMapBatches.Batch064.certificate5127.b := by decide
theorem firstValid1439 : DerivedMapBatches.Batch009.certificate755.Valid := DerivedMapBatches.Batch009.certificate755valid
theorem secondValid1439 : DerivedMapBatches.Batch009.certificate756.Valid := DerivedMapBatches.Batch009.certificate756valid
theorem outputValid1439 : DerivedMapBatches.Batch064.certificate5127.Valid := DerivedMapBatches.Batch064.certificate5127valid
theorem linkedComposition1439 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5127.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5127.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate755.algebra.mat x) := by
  rw [firstLink1439, secondLink1439]
  exact DerivedMapBatches.Batch064.certificate5127valid.2 x
theorem rhsLink1439 : DerivedMapBatches.Batch064.certificate5127.c = DerivedMapBatches.Batch009.certificate757.c := by decide
theorem rhsValid1439 : DerivedMapBatches.Batch009.certificate757.Valid := DerivedMapBatches.Batch009.certificate757valid
theorem linkedCommutativity1439 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5127.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate755.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate757.c x := by
  exact (linkedComposition1439 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1439)
theorem firstLink1440 : DerivedMapBatches.Batch009.certificate758.algebra.mat = DerivedMapBatches.Batch064.certificate5128.a := by decide
theorem secondLink1440 : DerivedMapBatches.Batch009.certificate759.algebra.mat = DerivedMapBatches.Batch064.certificate5128.b := by decide
theorem firstValid1440 : DerivedMapBatches.Batch009.certificate758.Valid := DerivedMapBatches.Batch009.certificate758valid
theorem secondValid1440 : DerivedMapBatches.Batch009.certificate759.Valid := DerivedMapBatches.Batch009.certificate759valid
theorem outputValid1440 : DerivedMapBatches.Batch064.certificate5128.Valid := DerivedMapBatches.Batch064.certificate5128valid
theorem linkedComposition1440 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5128.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5128.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate758.algebra.mat x) := by
  rw [firstLink1440, secondLink1440]
  exact DerivedMapBatches.Batch064.certificate5128valid.2 x
theorem rhsLink1440 : DerivedMapBatches.Batch064.certificate5128.c = DerivedMapBatches.Batch009.certificate760.c := by decide
theorem rhsValid1440 : DerivedMapBatches.Batch009.certificate760.Valid := DerivedMapBatches.Batch009.certificate760valid
theorem linkedCommutativity1440 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5128.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate758.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate760.c x := by
  exact (linkedComposition1440 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1440)
theorem firstLink1441 : DerivedMapBatches.Batch009.certificate761.algebra.mat = DerivedMapBatches.Batch064.certificate5129.a := by decide
theorem secondLink1441 : DerivedMapBatches.Batch009.certificate762.algebra.mat = DerivedMapBatches.Batch064.certificate5129.b := by decide
theorem firstValid1441 : DerivedMapBatches.Batch009.certificate761.Valid := DerivedMapBatches.Batch009.certificate761valid
theorem secondValid1441 : DerivedMapBatches.Batch009.certificate762.Valid := DerivedMapBatches.Batch009.certificate762valid
theorem outputValid1441 : DerivedMapBatches.Batch064.certificate5129.Valid := DerivedMapBatches.Batch064.certificate5129valid
theorem linkedComposition1441 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5129.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5129.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate761.algebra.mat x) := by
  rw [firstLink1441, secondLink1441]
  exact DerivedMapBatches.Batch064.certificate5129valid.2 x
theorem rhsLink1441 : DerivedMapBatches.Batch064.certificate5129.c = DerivedMapBatches.Batch009.certificate763.c := by decide
theorem rhsValid1441 : DerivedMapBatches.Batch009.certificate763.Valid := DerivedMapBatches.Batch009.certificate763valid
theorem linkedCommutativity1441 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5129.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate761.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate763.c x := by
  exact (linkedComposition1441 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1441)
theorem firstLink1442 : DerivedMapBatches.Batch009.certificate764.algebra.mat = DerivedMapBatches.Batch064.certificate5130.a := by decide
theorem secondLink1442 : DerivedMapBatches.Batch009.certificate765.algebra.mat = DerivedMapBatches.Batch064.certificate5130.b := by decide
theorem firstValid1442 : DerivedMapBatches.Batch009.certificate764.Valid := DerivedMapBatches.Batch009.certificate764valid
theorem secondValid1442 : DerivedMapBatches.Batch009.certificate765.Valid := DerivedMapBatches.Batch009.certificate765valid
theorem outputValid1442 : DerivedMapBatches.Batch064.certificate5130.Valid := DerivedMapBatches.Batch064.certificate5130valid
theorem linkedComposition1442 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5130.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5130.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate764.algebra.mat x) := by
  rw [firstLink1442, secondLink1442]
  exact DerivedMapBatches.Batch064.certificate5130valid.2 x
theorem rhsLink1442 : DerivedMapBatches.Batch064.certificate5130.c = DerivedMapBatches.Batch009.certificate766.c := by decide
theorem rhsValid1442 : DerivedMapBatches.Batch009.certificate766.Valid := DerivedMapBatches.Batch009.certificate766valid
theorem linkedCommutativity1442 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5130.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate764.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate766.c x := by
  exact (linkedComposition1442 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1442)
theorem firstLink1443 : DerivedMapBatches.Batch009.certificate767.algebra.mat = DerivedMapBatches.Batch064.certificate5131.a := by decide
theorem secondLink1443 : DerivedMapBatches.Batch009.certificate768.algebra.mat = DerivedMapBatches.Batch064.certificate5131.b := by decide
theorem firstValid1443 : DerivedMapBatches.Batch009.certificate767.Valid := DerivedMapBatches.Batch009.certificate767valid
theorem secondValid1443 : DerivedMapBatches.Batch009.certificate768.Valid := DerivedMapBatches.Batch009.certificate768valid
theorem outputValid1443 : DerivedMapBatches.Batch064.certificate5131.Valid := DerivedMapBatches.Batch064.certificate5131valid
theorem linkedComposition1443 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5131.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5131.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate767.algebra.mat x) := by
  rw [firstLink1443, secondLink1443]
  exact DerivedMapBatches.Batch064.certificate5131valid.2 x
theorem rhsLink1443 : DerivedMapBatches.Batch064.certificate5131.c = DerivedMapBatches.Batch009.certificate769.c := by decide
theorem rhsValid1443 : DerivedMapBatches.Batch009.certificate769.Valid := DerivedMapBatches.Batch009.certificate769valid
theorem linkedCommutativity1443 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5131.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate767.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate769.c x := by
  exact (linkedComposition1443 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1443)
theorem firstLink1444 : DerivedMapBatches.Batch009.certificate770.algebra.mat = DerivedMapBatches.Batch064.certificate5132.a := by decide
theorem secondLink1444 : DerivedMapBatches.Batch009.certificate771.algebra.mat = DerivedMapBatches.Batch064.certificate5132.b := by decide
theorem firstValid1444 : DerivedMapBatches.Batch009.certificate770.Valid := DerivedMapBatches.Batch009.certificate770valid
theorem secondValid1444 : DerivedMapBatches.Batch009.certificate771.Valid := DerivedMapBatches.Batch009.certificate771valid
theorem outputValid1444 : DerivedMapBatches.Batch064.certificate5132.Valid := DerivedMapBatches.Batch064.certificate5132valid
theorem linkedComposition1444 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5132.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5132.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate770.algebra.mat x) := by
  rw [firstLink1444, secondLink1444]
  exact DerivedMapBatches.Batch064.certificate5132valid.2 x
theorem rhsLink1444 : DerivedMapBatches.Batch064.certificate5132.c = DerivedMapBatches.Batch009.certificate772.c := by decide
theorem rhsValid1444 : DerivedMapBatches.Batch009.certificate772.Valid := DerivedMapBatches.Batch009.certificate772valid
theorem linkedCommutativity1444 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5132.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate770.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate772.c x := by
  exact (linkedComposition1444 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1444)
theorem firstLink1445 : DerivedMapBatches.Batch009.certificate773.algebra.mat = DerivedMapBatches.Batch064.certificate5133.a := by decide
theorem secondLink1445 : DerivedMapBatches.Batch009.certificate774.algebra.mat = DerivedMapBatches.Batch064.certificate5133.b := by decide
theorem firstValid1445 : DerivedMapBatches.Batch009.certificate773.Valid := DerivedMapBatches.Batch009.certificate773valid
theorem secondValid1445 : DerivedMapBatches.Batch009.certificate774.Valid := DerivedMapBatches.Batch009.certificate774valid
theorem outputValid1445 : DerivedMapBatches.Batch064.certificate5133.Valid := DerivedMapBatches.Batch064.certificate5133valid
theorem linkedComposition1445 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5133.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5133.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate773.algebra.mat x) := by
  rw [firstLink1445, secondLink1445]
  exact DerivedMapBatches.Batch064.certificate5133valid.2 x
theorem rhsLink1445 : DerivedMapBatches.Batch064.certificate5133.c = DerivedMapBatches.Batch009.certificate775.c := by decide
theorem rhsValid1445 : DerivedMapBatches.Batch009.certificate775.Valid := DerivedMapBatches.Batch009.certificate775valid
theorem linkedCommutativity1445 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5133.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate773.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate775.c x := by
  exact (linkedComposition1445 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1445)
theorem firstLink1446 : DerivedMapBatches.Batch009.certificate776.algebra.mat = DerivedMapBatches.Batch064.certificate5134.a := by decide
theorem secondLink1446 : DerivedMapBatches.Batch009.certificate777.algebra.mat = DerivedMapBatches.Batch064.certificate5134.b := by decide
theorem firstValid1446 : DerivedMapBatches.Batch009.certificate776.Valid := DerivedMapBatches.Batch009.certificate776valid
theorem secondValid1446 : DerivedMapBatches.Batch009.certificate777.Valid := DerivedMapBatches.Batch009.certificate777valid
theorem outputValid1446 : DerivedMapBatches.Batch064.certificate5134.Valid := DerivedMapBatches.Batch064.certificate5134valid
theorem linkedComposition1446 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5134.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5134.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate776.algebra.mat x) := by
  rw [firstLink1446, secondLink1446]
  exact DerivedMapBatches.Batch064.certificate5134valid.2 x
theorem rhsLink1446 : DerivedMapBatches.Batch064.certificate5134.c = DerivedMapBatches.Batch009.certificate778.c := by decide
theorem rhsValid1446 : DerivedMapBatches.Batch009.certificate778.Valid := DerivedMapBatches.Batch009.certificate778valid
theorem linkedCommutativity1446 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5134.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate776.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate778.c x := by
  exact (linkedComposition1446 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1446)
theorem firstLink1447 : DerivedMapBatches.Batch009.certificate779.algebra.mat = DerivedMapBatches.Batch064.certificate5135.a := by decide
theorem secondLink1447 : DerivedMapBatches.Batch009.certificate780.algebra.mat = DerivedMapBatches.Batch064.certificate5135.b := by decide
theorem firstValid1447 : DerivedMapBatches.Batch009.certificate779.Valid := DerivedMapBatches.Batch009.certificate779valid
theorem secondValid1447 : DerivedMapBatches.Batch009.certificate780.Valid := DerivedMapBatches.Batch009.certificate780valid
theorem outputValid1447 : DerivedMapBatches.Batch064.certificate5135.Valid := DerivedMapBatches.Batch064.certificate5135valid
theorem linkedComposition1447 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5135.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5135.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate779.algebra.mat x) := by
  rw [firstLink1447, secondLink1447]
  exact DerivedMapBatches.Batch064.certificate5135valid.2 x
theorem rhsLink1447 : DerivedMapBatches.Batch064.certificate5135.c = DerivedMapBatches.Batch009.certificate781.c := by decide
theorem rhsValid1447 : DerivedMapBatches.Batch009.certificate781.Valid := DerivedMapBatches.Batch009.certificate781valid
theorem linkedCommutativity1447 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5135.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate779.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate781.c x := by
  exact (linkedComposition1447 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1447)
theorem firstLink1448 : DerivedMapBatches.Batch009.certificate782.algebra.mat = DerivedMapBatches.Batch064.certificate5136.a := by decide
theorem secondLink1448 : DerivedMapBatches.Batch009.certificate783.algebra.mat = DerivedMapBatches.Batch064.certificate5136.b := by decide
theorem firstValid1448 : DerivedMapBatches.Batch009.certificate782.Valid := DerivedMapBatches.Batch009.certificate782valid
theorem secondValid1448 : DerivedMapBatches.Batch009.certificate783.Valid := DerivedMapBatches.Batch009.certificate783valid
theorem outputValid1448 : DerivedMapBatches.Batch064.certificate5136.Valid := DerivedMapBatches.Batch064.certificate5136valid
theorem linkedComposition1448 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5136.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5136.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate783.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate782.algebra.mat x) := by
  rw [firstLink1448, secondLink1448]
  exact DerivedMapBatches.Batch064.certificate5136valid.2 x
theorem rhsLink1448 : DerivedMapBatches.Batch064.certificate5136.c = DerivedMapBatches.Batch009.certificate784.c := by decide
theorem rhsValid1448 : DerivedMapBatches.Batch009.certificate784.Valid := DerivedMapBatches.Batch009.certificate784valid
theorem linkedCommutativity1448 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5136.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate783.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate782.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate784.c x := by
  exact (linkedComposition1448 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1448)
theorem firstLink1449 : DerivedMapBatches.Batch009.certificate785.algebra.mat = DerivedMapBatches.Batch064.certificate5137.a := by decide
theorem secondLink1449 : DerivedMapBatches.Batch009.certificate786.algebra.mat = DerivedMapBatches.Batch064.certificate5137.b := by decide
theorem firstValid1449 : DerivedMapBatches.Batch009.certificate785.Valid := DerivedMapBatches.Batch009.certificate785valid
theorem secondValid1449 : DerivedMapBatches.Batch009.certificate786.Valid := DerivedMapBatches.Batch009.certificate786valid
theorem outputValid1449 : DerivedMapBatches.Batch064.certificate5137.Valid := DerivedMapBatches.Batch064.certificate5137valid
theorem linkedComposition1449 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5137.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch064.certificate5137.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate786.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate785.algebra.mat x) := by
  rw [firstLink1449, secondLink1449]
  exact DerivedMapBatches.Batch064.certificate5137valid.2 x
theorem rhsLink1449 : DerivedMapBatches.Batch064.certificate5137.c = DerivedMapBatches.Batch009.certificate787.c := by decide
theorem rhsValid1449 : DerivedMapBatches.Batch009.certificate787.Valid := DerivedMapBatches.Batch009.certificate787valid
theorem linkedCommutativity1449 (x : LinearCertificates.Vec DerivedMapBatches.Batch064.certificate5137.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate786.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate785.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch009.certificate787.c x := by
  exact (linkedComposition1449 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1449)
end DerivedLinkageBatches.Batch028
