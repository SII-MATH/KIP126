import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch014
import DerivedMapBatches.Batch044
import DerivedMapBatches.Batch045
import DerivedMapBatches.Batch046
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch014
theorem firstLink700 : DerivedMapBatches.Batch044.certificate3573.algebra.mat = DerivedMapBatches.Batch044.certificate3575.a := by decide
theorem secondLink700 : DerivedMapBatches.Batch044.certificate3574.algebra.mat = DerivedMapBatches.Batch044.certificate3575.b := by decide
theorem firstValid700 : DerivedMapBatches.Batch044.certificate3573.Valid := DerivedMapBatches.Batch044.certificate3573valid
theorem secondValid700 : DerivedMapBatches.Batch044.certificate3574.Valid := DerivedMapBatches.Batch044.certificate3574valid
theorem outputValid700 : DerivedMapBatches.Batch044.certificate3575.Valid := DerivedMapBatches.Batch044.certificate3575valid
theorem linkedComposition700 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3575.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3575.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3573.algebra.mat x) := by
  rw [firstLink700, secondLink700]
  exact DerivedMapBatches.Batch044.certificate3575valid.2 x
theorem firstLink701 : DerivedMapBatches.Batch044.certificate3576.algebra.mat = DerivedMapBatches.Batch044.certificate3578.a := by decide
theorem secondLink701 : DerivedMapBatches.Batch044.certificate3577.algebra.mat = DerivedMapBatches.Batch044.certificate3578.b := by decide
theorem firstValid701 : DerivedMapBatches.Batch044.certificate3576.Valid := DerivedMapBatches.Batch044.certificate3576valid
theorem secondValid701 : DerivedMapBatches.Batch044.certificate3577.Valid := DerivedMapBatches.Batch044.certificate3577valid
theorem outputValid701 : DerivedMapBatches.Batch044.certificate3578.Valid := DerivedMapBatches.Batch044.certificate3578valid
theorem linkedComposition701 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3578.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3578.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3577.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3576.algebra.mat x) := by
  rw [firstLink701, secondLink701]
  exact DerivedMapBatches.Batch044.certificate3578valid.2 x
theorem firstLink702 : DerivedMapBatches.Batch044.certificate3579.algebra.mat = DerivedMapBatches.Batch044.certificate3581.a := by decide
theorem secondLink702 : DerivedMapBatches.Batch044.certificate3580.algebra.mat = DerivedMapBatches.Batch044.certificate3581.b := by decide
theorem firstValid702 : DerivedMapBatches.Batch044.certificate3579.Valid := DerivedMapBatches.Batch044.certificate3579valid
theorem secondValid702 : DerivedMapBatches.Batch044.certificate3580.Valid := DerivedMapBatches.Batch044.certificate3580valid
theorem outputValid702 : DerivedMapBatches.Batch044.certificate3581.Valid := DerivedMapBatches.Batch044.certificate3581valid
theorem linkedComposition702 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3581.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3581.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3579.algebra.mat x) := by
  rw [firstLink702, secondLink702]
  exact DerivedMapBatches.Batch044.certificate3581valid.2 x
theorem firstLink703 : DerivedMapBatches.Batch044.certificate3582.algebra.mat = DerivedMapBatches.Batch044.certificate3584.a := by decide
theorem secondLink703 : DerivedMapBatches.Batch044.certificate3583.algebra.mat = DerivedMapBatches.Batch044.certificate3584.b := by decide
theorem firstValid703 : DerivedMapBatches.Batch044.certificate3582.Valid := DerivedMapBatches.Batch044.certificate3582valid
theorem secondValid703 : DerivedMapBatches.Batch044.certificate3583.Valid := DerivedMapBatches.Batch044.certificate3583valid
theorem outputValid703 : DerivedMapBatches.Batch044.certificate3584.Valid := DerivedMapBatches.Batch044.certificate3584valid
theorem linkedComposition703 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3584.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3584.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3583.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3582.algebra.mat x) := by
  rw [firstLink703, secondLink703]
  exact DerivedMapBatches.Batch044.certificate3584valid.2 x
theorem firstLink704 : DerivedMapBatches.Batch044.certificate3585.algebra.mat = DerivedMapBatches.Batch044.certificate3587.a := by decide
theorem secondLink704 : DerivedMapBatches.Batch044.certificate3586.algebra.mat = DerivedMapBatches.Batch044.certificate3587.b := by decide
theorem firstValid704 : DerivedMapBatches.Batch044.certificate3585.Valid := DerivedMapBatches.Batch044.certificate3585valid
theorem secondValid704 : DerivedMapBatches.Batch044.certificate3586.Valid := DerivedMapBatches.Batch044.certificate3586valid
theorem outputValid704 : DerivedMapBatches.Batch044.certificate3587.Valid := DerivedMapBatches.Batch044.certificate3587valid
theorem linkedComposition704 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3587.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3587.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3586.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3585.algebra.mat x) := by
  rw [firstLink704, secondLink704]
  exact DerivedMapBatches.Batch044.certificate3587valid.2 x
theorem firstLink705 : DerivedMapBatches.Batch044.certificate3588.algebra.mat = DerivedMapBatches.Batch044.certificate3590.a := by decide
theorem secondLink705 : DerivedMapBatches.Batch044.certificate3589.algebra.mat = DerivedMapBatches.Batch044.certificate3590.b := by decide
theorem firstValid705 : DerivedMapBatches.Batch044.certificate3588.Valid := DerivedMapBatches.Batch044.certificate3588valid
theorem secondValid705 : DerivedMapBatches.Batch044.certificate3589.Valid := DerivedMapBatches.Batch044.certificate3589valid
theorem outputValid705 : DerivedMapBatches.Batch044.certificate3590.Valid := DerivedMapBatches.Batch044.certificate3590valid
theorem linkedComposition705 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3590.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3590.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3589.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3588.algebra.mat x) := by
  rw [firstLink705, secondLink705]
  exact DerivedMapBatches.Batch044.certificate3590valid.2 x
theorem firstLink706 : DerivedMapBatches.Batch044.certificate3591.algebra.mat = DerivedMapBatches.Batch044.certificate3592.a := by decide
theorem secondLink706 : DerivedMapBatches.Batch014.certificate1140.algebra.mat = DerivedMapBatches.Batch044.certificate3592.b := by decide
theorem firstValid706 : DerivedMapBatches.Batch044.certificate3591.Valid := DerivedMapBatches.Batch044.certificate3591valid
theorem secondValid706 : DerivedMapBatches.Batch014.certificate1140.Valid := DerivedMapBatches.Batch014.certificate1140valid
theorem outputValid706 : DerivedMapBatches.Batch044.certificate3592.Valid := DerivedMapBatches.Batch044.certificate3592valid
theorem linkedComposition706 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3592.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3592.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1140.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3591.algebra.mat x) := by
  rw [firstLink706, secondLink706]
  exact DerivedMapBatches.Batch044.certificate3592valid.2 x
theorem firstLink707 : DerivedMapBatches.Batch044.certificate3593.algebra.mat = DerivedMapBatches.Batch044.certificate3595.a := by decide
theorem secondLink707 : DerivedMapBatches.Batch044.certificate3594.algebra.mat = DerivedMapBatches.Batch044.certificate3595.b := by decide
theorem firstValid707 : DerivedMapBatches.Batch044.certificate3593.Valid := DerivedMapBatches.Batch044.certificate3593valid
theorem secondValid707 : DerivedMapBatches.Batch044.certificate3594.Valid := DerivedMapBatches.Batch044.certificate3594valid
theorem outputValid707 : DerivedMapBatches.Batch044.certificate3595.Valid := DerivedMapBatches.Batch044.certificate3595valid
theorem linkedComposition707 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3595.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3595.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3594.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3593.algebra.mat x) := by
  rw [firstLink707, secondLink707]
  exact DerivedMapBatches.Batch044.certificate3595valid.2 x
theorem firstLink708 : DerivedMapBatches.Batch044.certificate3596.algebra.mat = DerivedMapBatches.Batch044.certificate3598.a := by decide
theorem secondLink708 : DerivedMapBatches.Batch044.certificate3597.algebra.mat = DerivedMapBatches.Batch044.certificate3598.b := by decide
theorem firstValid708 : DerivedMapBatches.Batch044.certificate3596.Valid := DerivedMapBatches.Batch044.certificate3596valid
theorem secondValid708 : DerivedMapBatches.Batch044.certificate3597.Valid := DerivedMapBatches.Batch044.certificate3597valid
theorem outputValid708 : DerivedMapBatches.Batch044.certificate3598.Valid := DerivedMapBatches.Batch044.certificate3598valid
theorem linkedComposition708 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3598.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3598.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3597.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3596.algebra.mat x) := by
  rw [firstLink708, secondLink708]
  exact DerivedMapBatches.Batch044.certificate3598valid.2 x
theorem firstLink709 : DerivedMapBatches.Batch044.certificate3599.algebra.mat = DerivedMapBatches.Batch045.certificate3601.a := by decide
theorem secondLink709 : DerivedMapBatches.Batch045.certificate3600.algebra.mat = DerivedMapBatches.Batch045.certificate3601.b := by decide
theorem firstValid709 : DerivedMapBatches.Batch044.certificate3599.Valid := DerivedMapBatches.Batch044.certificate3599valid
theorem secondValid709 : DerivedMapBatches.Batch045.certificate3600.Valid := DerivedMapBatches.Batch045.certificate3600valid
theorem outputValid709 : DerivedMapBatches.Batch045.certificate3601.Valid := DerivedMapBatches.Batch045.certificate3601valid
theorem linkedComposition709 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3601.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3601.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3600.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3599.algebra.mat x) := by
  rw [firstLink709, secondLink709]
  exact DerivedMapBatches.Batch045.certificate3601valid.2 x
theorem firstLink710 : DerivedMapBatches.Batch045.certificate3602.algebra.mat = DerivedMapBatches.Batch045.certificate3604.a := by decide
theorem secondLink710 : DerivedMapBatches.Batch045.certificate3603.algebra.mat = DerivedMapBatches.Batch045.certificate3604.b := by decide
theorem firstValid710 : DerivedMapBatches.Batch045.certificate3602.Valid := DerivedMapBatches.Batch045.certificate3602valid
theorem secondValid710 : DerivedMapBatches.Batch045.certificate3603.Valid := DerivedMapBatches.Batch045.certificate3603valid
theorem outputValid710 : DerivedMapBatches.Batch045.certificate3604.Valid := DerivedMapBatches.Batch045.certificate3604valid
theorem linkedComposition710 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3604.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3604.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3603.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3602.algebra.mat x) := by
  rw [firstLink710, secondLink710]
  exact DerivedMapBatches.Batch045.certificate3604valid.2 x
theorem firstLink711 : DerivedMapBatches.Batch045.certificate3605.algebra.mat = DerivedMapBatches.Batch045.certificate3607.a := by decide
theorem secondLink711 : DerivedMapBatches.Batch045.certificate3606.algebra.mat = DerivedMapBatches.Batch045.certificate3607.b := by decide
theorem firstValid711 : DerivedMapBatches.Batch045.certificate3605.Valid := DerivedMapBatches.Batch045.certificate3605valid
theorem secondValid711 : DerivedMapBatches.Batch045.certificate3606.Valid := DerivedMapBatches.Batch045.certificate3606valid
theorem outputValid711 : DerivedMapBatches.Batch045.certificate3607.Valid := DerivedMapBatches.Batch045.certificate3607valid
theorem linkedComposition711 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3607.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3607.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3606.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3605.algebra.mat x) := by
  rw [firstLink711, secondLink711]
  exact DerivedMapBatches.Batch045.certificate3607valid.2 x
theorem firstLink712 : DerivedMapBatches.Batch045.certificate3608.algebra.mat = DerivedMapBatches.Batch045.certificate3610.a := by decide
theorem secondLink712 : DerivedMapBatches.Batch045.certificate3609.algebra.mat = DerivedMapBatches.Batch045.certificate3610.b := by decide
theorem firstValid712 : DerivedMapBatches.Batch045.certificate3608.Valid := DerivedMapBatches.Batch045.certificate3608valid
theorem secondValid712 : DerivedMapBatches.Batch045.certificate3609.Valid := DerivedMapBatches.Batch045.certificate3609valid
theorem outputValid712 : DerivedMapBatches.Batch045.certificate3610.Valid := DerivedMapBatches.Batch045.certificate3610valid
theorem linkedComposition712 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3610.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3610.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3609.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3608.algebra.mat x) := by
  rw [firstLink712, secondLink712]
  exact DerivedMapBatches.Batch045.certificate3610valid.2 x
theorem firstLink713 : DerivedMapBatches.Batch045.certificate3611.algebra.mat = DerivedMapBatches.Batch045.certificate3613.a := by decide
theorem secondLink713 : DerivedMapBatches.Batch045.certificate3612.algebra.mat = DerivedMapBatches.Batch045.certificate3613.b := by decide
theorem firstValid713 : DerivedMapBatches.Batch045.certificate3611.Valid := DerivedMapBatches.Batch045.certificate3611valid
theorem secondValid713 : DerivedMapBatches.Batch045.certificate3612.Valid := DerivedMapBatches.Batch045.certificate3612valid
theorem outputValid713 : DerivedMapBatches.Batch045.certificate3613.Valid := DerivedMapBatches.Batch045.certificate3613valid
theorem linkedComposition713 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3613.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3613.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3612.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3611.algebra.mat x) := by
  rw [firstLink713, secondLink713]
  exact DerivedMapBatches.Batch045.certificate3613valid.2 x
theorem firstLink714 : DerivedMapBatches.Batch045.certificate3614.algebra.mat = DerivedMapBatches.Batch045.certificate3616.a := by decide
theorem secondLink714 : DerivedMapBatches.Batch045.certificate3615.algebra.mat = DerivedMapBatches.Batch045.certificate3616.b := by decide
theorem firstValid714 : DerivedMapBatches.Batch045.certificate3614.Valid := DerivedMapBatches.Batch045.certificate3614valid
theorem secondValid714 : DerivedMapBatches.Batch045.certificate3615.Valid := DerivedMapBatches.Batch045.certificate3615valid
theorem outputValid714 : DerivedMapBatches.Batch045.certificate3616.Valid := DerivedMapBatches.Batch045.certificate3616valid
theorem linkedComposition714 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3616.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3616.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3615.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3614.algebra.mat x) := by
  rw [firstLink714, secondLink714]
  exact DerivedMapBatches.Batch045.certificate3616valid.2 x
theorem firstLink715 : DerivedMapBatches.Batch045.certificate3617.algebra.mat = DerivedMapBatches.Batch045.certificate3619.a := by decide
theorem secondLink715 : DerivedMapBatches.Batch045.certificate3618.algebra.mat = DerivedMapBatches.Batch045.certificate3619.b := by decide
theorem firstValid715 : DerivedMapBatches.Batch045.certificate3617.Valid := DerivedMapBatches.Batch045.certificate3617valid
theorem secondValid715 : DerivedMapBatches.Batch045.certificate3618.Valid := DerivedMapBatches.Batch045.certificate3618valid
theorem outputValid715 : DerivedMapBatches.Batch045.certificate3619.Valid := DerivedMapBatches.Batch045.certificate3619valid
theorem linkedComposition715 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3619.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3619.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3618.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3617.algebra.mat x) := by
  rw [firstLink715, secondLink715]
  exact DerivedMapBatches.Batch045.certificate3619valid.2 x
theorem firstLink716 : DerivedMapBatches.Batch045.certificate3620.algebra.mat = DerivedMapBatches.Batch045.certificate3622.a := by decide
theorem secondLink716 : DerivedMapBatches.Batch045.certificate3621.algebra.mat = DerivedMapBatches.Batch045.certificate3622.b := by decide
theorem firstValid716 : DerivedMapBatches.Batch045.certificate3620.Valid := DerivedMapBatches.Batch045.certificate3620valid
theorem secondValid716 : DerivedMapBatches.Batch045.certificate3621.Valid := DerivedMapBatches.Batch045.certificate3621valid
theorem outputValid716 : DerivedMapBatches.Batch045.certificate3622.Valid := DerivedMapBatches.Batch045.certificate3622valid
theorem linkedComposition716 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3622.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3622.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3621.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3620.algebra.mat x) := by
  rw [firstLink716, secondLink716]
  exact DerivedMapBatches.Batch045.certificate3622valid.2 x
theorem firstLink717 : DerivedMapBatches.Batch045.certificate3623.algebra.mat = DerivedMapBatches.Batch045.certificate3625.a := by decide
theorem secondLink717 : DerivedMapBatches.Batch045.certificate3624.algebra.mat = DerivedMapBatches.Batch045.certificate3625.b := by decide
theorem firstValid717 : DerivedMapBatches.Batch045.certificate3623.Valid := DerivedMapBatches.Batch045.certificate3623valid
theorem secondValid717 : DerivedMapBatches.Batch045.certificate3624.Valid := DerivedMapBatches.Batch045.certificate3624valid
theorem outputValid717 : DerivedMapBatches.Batch045.certificate3625.Valid := DerivedMapBatches.Batch045.certificate3625valid
theorem linkedComposition717 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3625.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3625.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3624.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3623.algebra.mat x) := by
  rw [firstLink717, secondLink717]
  exact DerivedMapBatches.Batch045.certificate3625valid.2 x
theorem firstLink718 : DerivedMapBatches.Batch045.certificate3626.algebra.mat = DerivedMapBatches.Batch045.certificate3628.a := by decide
theorem secondLink718 : DerivedMapBatches.Batch045.certificate3627.algebra.mat = DerivedMapBatches.Batch045.certificate3628.b := by decide
theorem firstValid718 : DerivedMapBatches.Batch045.certificate3626.Valid := DerivedMapBatches.Batch045.certificate3626valid
theorem secondValid718 : DerivedMapBatches.Batch045.certificate3627.Valid := DerivedMapBatches.Batch045.certificate3627valid
theorem outputValid718 : DerivedMapBatches.Batch045.certificate3628.Valid := DerivedMapBatches.Batch045.certificate3628valid
theorem linkedComposition718 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3628.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3628.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3627.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3626.algebra.mat x) := by
  rw [firstLink718, secondLink718]
  exact DerivedMapBatches.Batch045.certificate3628valid.2 x
theorem firstLink719 : DerivedMapBatches.Batch045.certificate3629.algebra.mat = DerivedMapBatches.Batch045.certificate3631.a := by decide
theorem secondLink719 : DerivedMapBatches.Batch045.certificate3630.algebra.mat = DerivedMapBatches.Batch045.certificate3631.b := by decide
theorem firstValid719 : DerivedMapBatches.Batch045.certificate3629.Valid := DerivedMapBatches.Batch045.certificate3629valid
theorem secondValid719 : DerivedMapBatches.Batch045.certificate3630.Valid := DerivedMapBatches.Batch045.certificate3630valid
theorem outputValid719 : DerivedMapBatches.Batch045.certificate3631.Valid := DerivedMapBatches.Batch045.certificate3631valid
theorem linkedComposition719 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3631.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3631.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3630.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3629.algebra.mat x) := by
  rw [firstLink719, secondLink719]
  exact DerivedMapBatches.Batch045.certificate3631valid.2 x
theorem firstLink720 : DerivedMapBatches.Batch045.certificate3632.algebra.mat = DerivedMapBatches.Batch045.certificate3634.a := by decide
theorem secondLink720 : DerivedMapBatches.Batch045.certificate3633.algebra.mat = DerivedMapBatches.Batch045.certificate3634.b := by decide
theorem firstValid720 : DerivedMapBatches.Batch045.certificate3632.Valid := DerivedMapBatches.Batch045.certificate3632valid
theorem secondValid720 : DerivedMapBatches.Batch045.certificate3633.Valid := DerivedMapBatches.Batch045.certificate3633valid
theorem outputValid720 : DerivedMapBatches.Batch045.certificate3634.Valid := DerivedMapBatches.Batch045.certificate3634valid
theorem linkedComposition720 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3634.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3634.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3633.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3632.algebra.mat x) := by
  rw [firstLink720, secondLink720]
  exact DerivedMapBatches.Batch045.certificate3634valid.2 x
theorem firstLink721 : DerivedMapBatches.Batch045.certificate3635.algebra.mat = DerivedMapBatches.Batch045.certificate3637.a := by decide
theorem secondLink721 : DerivedMapBatches.Batch045.certificate3636.algebra.mat = DerivedMapBatches.Batch045.certificate3637.b := by decide
theorem firstValid721 : DerivedMapBatches.Batch045.certificate3635.Valid := DerivedMapBatches.Batch045.certificate3635valid
theorem secondValid721 : DerivedMapBatches.Batch045.certificate3636.Valid := DerivedMapBatches.Batch045.certificate3636valid
theorem outputValid721 : DerivedMapBatches.Batch045.certificate3637.Valid := DerivedMapBatches.Batch045.certificate3637valid
theorem linkedComposition721 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3637.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3637.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3636.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3635.algebra.mat x) := by
  rw [firstLink721, secondLink721]
  exact DerivedMapBatches.Batch045.certificate3637valid.2 x
theorem firstLink722 : DerivedMapBatches.Batch045.certificate3638.algebra.mat = DerivedMapBatches.Batch045.certificate3640.a := by decide
theorem secondLink722 : DerivedMapBatches.Batch045.certificate3639.algebra.mat = DerivedMapBatches.Batch045.certificate3640.b := by decide
theorem firstValid722 : DerivedMapBatches.Batch045.certificate3638.Valid := DerivedMapBatches.Batch045.certificate3638valid
theorem secondValid722 : DerivedMapBatches.Batch045.certificate3639.Valid := DerivedMapBatches.Batch045.certificate3639valid
theorem outputValid722 : DerivedMapBatches.Batch045.certificate3640.Valid := DerivedMapBatches.Batch045.certificate3640valid
theorem linkedComposition722 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3640.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3640.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3638.algebra.mat x) := by
  rw [firstLink722, secondLink722]
  exact DerivedMapBatches.Batch045.certificate3640valid.2 x
theorem firstLink723 : DerivedMapBatches.Batch045.certificate3641.algebra.mat = DerivedMapBatches.Batch045.certificate3643.a := by decide
theorem secondLink723 : DerivedMapBatches.Batch045.certificate3642.algebra.mat = DerivedMapBatches.Batch045.certificate3643.b := by decide
theorem firstValid723 : DerivedMapBatches.Batch045.certificate3641.Valid := DerivedMapBatches.Batch045.certificate3641valid
theorem secondValid723 : DerivedMapBatches.Batch045.certificate3642.Valid := DerivedMapBatches.Batch045.certificate3642valid
theorem outputValid723 : DerivedMapBatches.Batch045.certificate3643.Valid := DerivedMapBatches.Batch045.certificate3643valid
theorem linkedComposition723 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3643.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3643.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3642.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3641.algebra.mat x) := by
  rw [firstLink723, secondLink723]
  exact DerivedMapBatches.Batch045.certificate3643valid.2 x
theorem firstLink724 : DerivedMapBatches.Batch045.certificate3644.algebra.mat = DerivedMapBatches.Batch045.certificate3646.a := by decide
theorem secondLink724 : DerivedMapBatches.Batch045.certificate3645.algebra.mat = DerivedMapBatches.Batch045.certificate3646.b := by decide
theorem firstValid724 : DerivedMapBatches.Batch045.certificate3644.Valid := DerivedMapBatches.Batch045.certificate3644valid
theorem secondValid724 : DerivedMapBatches.Batch045.certificate3645.Valid := DerivedMapBatches.Batch045.certificate3645valid
theorem outputValid724 : DerivedMapBatches.Batch045.certificate3646.Valid := DerivedMapBatches.Batch045.certificate3646valid
theorem linkedComposition724 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3646.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3646.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3645.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3644.algebra.mat x) := by
  rw [firstLink724, secondLink724]
  exact DerivedMapBatches.Batch045.certificate3646valid.2 x
theorem firstLink725 : DerivedMapBatches.Batch045.certificate3647.algebra.mat = DerivedMapBatches.Batch045.certificate3649.a := by decide
theorem secondLink725 : DerivedMapBatches.Batch045.certificate3648.algebra.mat = DerivedMapBatches.Batch045.certificate3649.b := by decide
theorem firstValid725 : DerivedMapBatches.Batch045.certificate3647.Valid := DerivedMapBatches.Batch045.certificate3647valid
theorem secondValid725 : DerivedMapBatches.Batch045.certificate3648.Valid := DerivedMapBatches.Batch045.certificate3648valid
theorem outputValid725 : DerivedMapBatches.Batch045.certificate3649.Valid := DerivedMapBatches.Batch045.certificate3649valid
theorem linkedComposition725 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3649.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3649.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3648.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3647.algebra.mat x) := by
  rw [firstLink725, secondLink725]
  exact DerivedMapBatches.Batch045.certificate3649valid.2 x
theorem firstLink726 : DerivedMapBatches.Batch045.certificate3650.algebra.mat = DerivedMapBatches.Batch045.certificate3652.a := by decide
theorem secondLink726 : DerivedMapBatches.Batch045.certificate3651.algebra.mat = DerivedMapBatches.Batch045.certificate3652.b := by decide
theorem firstValid726 : DerivedMapBatches.Batch045.certificate3650.Valid := DerivedMapBatches.Batch045.certificate3650valid
theorem secondValid726 : DerivedMapBatches.Batch045.certificate3651.Valid := DerivedMapBatches.Batch045.certificate3651valid
theorem outputValid726 : DerivedMapBatches.Batch045.certificate3652.Valid := DerivedMapBatches.Batch045.certificate3652valid
theorem linkedComposition726 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3652.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3652.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3651.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3650.algebra.mat x) := by
  rw [firstLink726, secondLink726]
  exact DerivedMapBatches.Batch045.certificate3652valid.2 x
theorem firstLink727 : DerivedMapBatches.Batch045.certificate3653.algebra.mat = DerivedMapBatches.Batch045.certificate3655.a := by decide
theorem secondLink727 : DerivedMapBatches.Batch045.certificate3654.algebra.mat = DerivedMapBatches.Batch045.certificate3655.b := by decide
theorem firstValid727 : DerivedMapBatches.Batch045.certificate3653.Valid := DerivedMapBatches.Batch045.certificate3653valid
theorem secondValid727 : DerivedMapBatches.Batch045.certificate3654.Valid := DerivedMapBatches.Batch045.certificate3654valid
theorem outputValid727 : DerivedMapBatches.Batch045.certificate3655.Valid := DerivedMapBatches.Batch045.certificate3655valid
theorem linkedComposition727 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3655.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3655.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3654.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3653.algebra.mat x) := by
  rw [firstLink727, secondLink727]
  exact DerivedMapBatches.Batch045.certificate3655valid.2 x
theorem firstLink728 : DerivedMapBatches.Batch045.certificate3656.algebra.mat = DerivedMapBatches.Batch045.certificate3658.a := by decide
theorem secondLink728 : DerivedMapBatches.Batch045.certificate3657.algebra.mat = DerivedMapBatches.Batch045.certificate3658.b := by decide
theorem firstValid728 : DerivedMapBatches.Batch045.certificate3656.Valid := DerivedMapBatches.Batch045.certificate3656valid
theorem secondValid728 : DerivedMapBatches.Batch045.certificate3657.Valid := DerivedMapBatches.Batch045.certificate3657valid
theorem outputValid728 : DerivedMapBatches.Batch045.certificate3658.Valid := DerivedMapBatches.Batch045.certificate3658valid
theorem linkedComposition728 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3658.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3658.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3657.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3656.algebra.mat x) := by
  rw [firstLink728, secondLink728]
  exact DerivedMapBatches.Batch045.certificate3658valid.2 x
theorem firstLink729 : DerivedMapBatches.Batch045.certificate3659.algebra.mat = DerivedMapBatches.Batch045.certificate3661.a := by decide
theorem secondLink729 : DerivedMapBatches.Batch045.certificate3660.algebra.mat = DerivedMapBatches.Batch045.certificate3661.b := by decide
theorem firstValid729 : DerivedMapBatches.Batch045.certificate3659.Valid := DerivedMapBatches.Batch045.certificate3659valid
theorem secondValid729 : DerivedMapBatches.Batch045.certificate3660.Valid := DerivedMapBatches.Batch045.certificate3660valid
theorem outputValid729 : DerivedMapBatches.Batch045.certificate3661.Valid := DerivedMapBatches.Batch045.certificate3661valid
theorem linkedComposition729 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3661.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3661.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3660.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3659.algebra.mat x) := by
  rw [firstLink729, secondLink729]
  exact DerivedMapBatches.Batch045.certificate3661valid.2 x
theorem firstLink730 : DerivedMapBatches.Batch045.certificate3662.algebra.mat = DerivedMapBatches.Batch045.certificate3664.a := by decide
theorem secondLink730 : DerivedMapBatches.Batch045.certificate3663.algebra.mat = DerivedMapBatches.Batch045.certificate3664.b := by decide
theorem firstValid730 : DerivedMapBatches.Batch045.certificate3662.Valid := DerivedMapBatches.Batch045.certificate3662valid
theorem secondValid730 : DerivedMapBatches.Batch045.certificate3663.Valid := DerivedMapBatches.Batch045.certificate3663valid
theorem outputValid730 : DerivedMapBatches.Batch045.certificate3664.Valid := DerivedMapBatches.Batch045.certificate3664valid
theorem linkedComposition730 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3664.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3664.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3663.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3662.algebra.mat x) := by
  rw [firstLink730, secondLink730]
  exact DerivedMapBatches.Batch045.certificate3664valid.2 x
theorem firstLink731 : DerivedMapBatches.Batch045.certificate3665.algebra.mat = DerivedMapBatches.Batch045.certificate3667.a := by decide
theorem secondLink731 : DerivedMapBatches.Batch045.certificate3666.algebra.mat = DerivedMapBatches.Batch045.certificate3667.b := by decide
theorem firstValid731 : DerivedMapBatches.Batch045.certificate3665.Valid := DerivedMapBatches.Batch045.certificate3665valid
theorem secondValid731 : DerivedMapBatches.Batch045.certificate3666.Valid := DerivedMapBatches.Batch045.certificate3666valid
theorem outputValid731 : DerivedMapBatches.Batch045.certificate3667.Valid := DerivedMapBatches.Batch045.certificate3667valid
theorem linkedComposition731 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3667.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3667.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3665.algebra.mat x) := by
  rw [firstLink731, secondLink731]
  exact DerivedMapBatches.Batch045.certificate3667valid.2 x
theorem firstLink732 : DerivedMapBatches.Batch045.certificate3668.algebra.mat = DerivedMapBatches.Batch045.certificate3670.a := by decide
theorem secondLink732 : DerivedMapBatches.Batch045.certificate3669.algebra.mat = DerivedMapBatches.Batch045.certificate3670.b := by decide
theorem firstValid732 : DerivedMapBatches.Batch045.certificate3668.Valid := DerivedMapBatches.Batch045.certificate3668valid
theorem secondValid732 : DerivedMapBatches.Batch045.certificate3669.Valid := DerivedMapBatches.Batch045.certificate3669valid
theorem outputValid732 : DerivedMapBatches.Batch045.certificate3670.Valid := DerivedMapBatches.Batch045.certificate3670valid
theorem linkedComposition732 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3670.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3670.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3669.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3668.algebra.mat x) := by
  rw [firstLink732, secondLink732]
  exact DerivedMapBatches.Batch045.certificate3670valid.2 x
theorem firstLink733 : DerivedMapBatches.Batch045.certificate3671.algebra.mat = DerivedMapBatches.Batch045.certificate3673.a := by decide
theorem secondLink733 : DerivedMapBatches.Batch045.certificate3672.algebra.mat = DerivedMapBatches.Batch045.certificate3673.b := by decide
theorem firstValid733 : DerivedMapBatches.Batch045.certificate3671.Valid := DerivedMapBatches.Batch045.certificate3671valid
theorem secondValid733 : DerivedMapBatches.Batch045.certificate3672.Valid := DerivedMapBatches.Batch045.certificate3672valid
theorem outputValid733 : DerivedMapBatches.Batch045.certificate3673.Valid := DerivedMapBatches.Batch045.certificate3673valid
theorem linkedComposition733 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3673.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3673.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3671.algebra.mat x) := by
  rw [firstLink733, secondLink733]
  exact DerivedMapBatches.Batch045.certificate3673valid.2 x
theorem firstLink734 : DerivedMapBatches.Batch045.certificate3674.algebra.mat = DerivedMapBatches.Batch045.certificate3676.a := by decide
theorem secondLink734 : DerivedMapBatches.Batch045.certificate3675.algebra.mat = DerivedMapBatches.Batch045.certificate3676.b := by decide
theorem firstValid734 : DerivedMapBatches.Batch045.certificate3674.Valid := DerivedMapBatches.Batch045.certificate3674valid
theorem secondValid734 : DerivedMapBatches.Batch045.certificate3675.Valid := DerivedMapBatches.Batch045.certificate3675valid
theorem outputValid734 : DerivedMapBatches.Batch045.certificate3676.Valid := DerivedMapBatches.Batch045.certificate3676valid
theorem linkedComposition734 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3676.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3676.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3674.algebra.mat x) := by
  rw [firstLink734, secondLink734]
  exact DerivedMapBatches.Batch045.certificate3676valid.2 x
theorem firstLink735 : DerivedMapBatches.Batch045.certificate3677.algebra.mat = DerivedMapBatches.Batch045.certificate3679.a := by decide
theorem secondLink735 : DerivedMapBatches.Batch045.certificate3678.algebra.mat = DerivedMapBatches.Batch045.certificate3679.b := by decide
theorem firstValid735 : DerivedMapBatches.Batch045.certificate3677.Valid := DerivedMapBatches.Batch045.certificate3677valid
theorem secondValid735 : DerivedMapBatches.Batch045.certificate3678.Valid := DerivedMapBatches.Batch045.certificate3678valid
theorem outputValid735 : DerivedMapBatches.Batch045.certificate3679.Valid := DerivedMapBatches.Batch045.certificate3679valid
theorem linkedComposition735 (x : LinearCertificates.Vec DerivedMapBatches.Batch045.certificate3679.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch045.certificate3679.c x = LinearCertificates.eval DerivedMapBatches.Batch045.certificate3678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch045.certificate3677.algebra.mat x) := by
  rw [firstLink735, secondLink735]
  exact DerivedMapBatches.Batch045.certificate3679valid.2 x
theorem firstLink736 : DerivedMapBatches.Batch046.certificate3680.algebra.mat = DerivedMapBatches.Batch046.certificate3682.a := by decide
theorem secondLink736 : DerivedMapBatches.Batch046.certificate3681.algebra.mat = DerivedMapBatches.Batch046.certificate3682.b := by decide
theorem firstValid736 : DerivedMapBatches.Batch046.certificate3680.Valid := DerivedMapBatches.Batch046.certificate3680valid
theorem secondValid736 : DerivedMapBatches.Batch046.certificate3681.Valid := DerivedMapBatches.Batch046.certificate3681valid
theorem outputValid736 : DerivedMapBatches.Batch046.certificate3682.Valid := DerivedMapBatches.Batch046.certificate3682valid
theorem linkedComposition736 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3682.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3682.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3680.algebra.mat x) := by
  rw [firstLink736, secondLink736]
  exact DerivedMapBatches.Batch046.certificate3682valid.2 x
theorem firstLink737 : DerivedMapBatches.Batch046.certificate3683.algebra.mat = DerivedMapBatches.Batch046.certificate3685.a := by decide
theorem secondLink737 : DerivedMapBatches.Batch046.certificate3684.algebra.mat = DerivedMapBatches.Batch046.certificate3685.b := by decide
theorem firstValid737 : DerivedMapBatches.Batch046.certificate3683.Valid := DerivedMapBatches.Batch046.certificate3683valid
theorem secondValid737 : DerivedMapBatches.Batch046.certificate3684.Valid := DerivedMapBatches.Batch046.certificate3684valid
theorem outputValid737 : DerivedMapBatches.Batch046.certificate3685.Valid := DerivedMapBatches.Batch046.certificate3685valid
theorem linkedComposition737 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3685.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3685.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3683.algebra.mat x) := by
  rw [firstLink737, secondLink737]
  exact DerivedMapBatches.Batch046.certificate3685valid.2 x
theorem firstLink738 : DerivedMapBatches.Batch046.certificate3686.algebra.mat = DerivedMapBatches.Batch046.certificate3688.a := by decide
theorem secondLink738 : DerivedMapBatches.Batch046.certificate3687.algebra.mat = DerivedMapBatches.Batch046.certificate3688.b := by decide
theorem firstValid738 : DerivedMapBatches.Batch046.certificate3686.Valid := DerivedMapBatches.Batch046.certificate3686valid
theorem secondValid738 : DerivedMapBatches.Batch046.certificate3687.Valid := DerivedMapBatches.Batch046.certificate3687valid
theorem outputValid738 : DerivedMapBatches.Batch046.certificate3688.Valid := DerivedMapBatches.Batch046.certificate3688valid
theorem linkedComposition738 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3688.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3688.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3686.algebra.mat x) := by
  rw [firstLink738, secondLink738]
  exact DerivedMapBatches.Batch046.certificate3688valid.2 x
theorem firstLink739 : DerivedMapBatches.Batch046.certificate3689.algebra.mat = DerivedMapBatches.Batch046.certificate3691.a := by decide
theorem secondLink739 : DerivedMapBatches.Batch046.certificate3690.algebra.mat = DerivedMapBatches.Batch046.certificate3691.b := by decide
theorem firstValid739 : DerivedMapBatches.Batch046.certificate3689.Valid := DerivedMapBatches.Batch046.certificate3689valid
theorem secondValid739 : DerivedMapBatches.Batch046.certificate3690.Valid := DerivedMapBatches.Batch046.certificate3690valid
theorem outputValid739 : DerivedMapBatches.Batch046.certificate3691.Valid := DerivedMapBatches.Batch046.certificate3691valid
theorem linkedComposition739 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3691.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3691.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3689.algebra.mat x) := by
  rw [firstLink739, secondLink739]
  exact DerivedMapBatches.Batch046.certificate3691valid.2 x
theorem firstLink740 : DerivedMapBatches.Batch046.certificate3692.algebra.mat = DerivedMapBatches.Batch046.certificate3694.a := by decide
theorem secondLink740 : DerivedMapBatches.Batch046.certificate3693.algebra.mat = DerivedMapBatches.Batch046.certificate3694.b := by decide
theorem firstValid740 : DerivedMapBatches.Batch046.certificate3692.Valid := DerivedMapBatches.Batch046.certificate3692valid
theorem secondValid740 : DerivedMapBatches.Batch046.certificate3693.Valid := DerivedMapBatches.Batch046.certificate3693valid
theorem outputValid740 : DerivedMapBatches.Batch046.certificate3694.Valid := DerivedMapBatches.Batch046.certificate3694valid
theorem linkedComposition740 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3694.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3694.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3693.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3692.algebra.mat x) := by
  rw [firstLink740, secondLink740]
  exact DerivedMapBatches.Batch046.certificate3694valid.2 x
theorem firstLink741 : DerivedMapBatches.Batch046.certificate3695.algebra.mat = DerivedMapBatches.Batch046.certificate3697.a := by decide
theorem secondLink741 : DerivedMapBatches.Batch046.certificate3696.algebra.mat = DerivedMapBatches.Batch046.certificate3697.b := by decide
theorem firstValid741 : DerivedMapBatches.Batch046.certificate3695.Valid := DerivedMapBatches.Batch046.certificate3695valid
theorem secondValid741 : DerivedMapBatches.Batch046.certificate3696.Valid := DerivedMapBatches.Batch046.certificate3696valid
theorem outputValid741 : DerivedMapBatches.Batch046.certificate3697.Valid := DerivedMapBatches.Batch046.certificate3697valid
theorem linkedComposition741 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3697.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3697.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3696.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3695.algebra.mat x) := by
  rw [firstLink741, secondLink741]
  exact DerivedMapBatches.Batch046.certificate3697valid.2 x
theorem firstLink742 : DerivedMapBatches.Batch046.certificate3698.algebra.mat = DerivedMapBatches.Batch046.certificate3700.a := by decide
theorem secondLink742 : DerivedMapBatches.Batch046.certificate3699.algebra.mat = DerivedMapBatches.Batch046.certificate3700.b := by decide
theorem firstValid742 : DerivedMapBatches.Batch046.certificate3698.Valid := DerivedMapBatches.Batch046.certificate3698valid
theorem secondValid742 : DerivedMapBatches.Batch046.certificate3699.Valid := DerivedMapBatches.Batch046.certificate3699valid
theorem outputValid742 : DerivedMapBatches.Batch046.certificate3700.Valid := DerivedMapBatches.Batch046.certificate3700valid
theorem linkedComposition742 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3700.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3700.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3699.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3698.algebra.mat x) := by
  rw [firstLink742, secondLink742]
  exact DerivedMapBatches.Batch046.certificate3700valid.2 x
theorem firstLink743 : DerivedMapBatches.Batch046.certificate3701.algebra.mat = DerivedMapBatches.Batch046.certificate3703.a := by decide
theorem secondLink743 : DerivedMapBatches.Batch046.certificate3702.algebra.mat = DerivedMapBatches.Batch046.certificate3703.b := by decide
theorem firstValid743 : DerivedMapBatches.Batch046.certificate3701.Valid := DerivedMapBatches.Batch046.certificate3701valid
theorem secondValid743 : DerivedMapBatches.Batch046.certificate3702.Valid := DerivedMapBatches.Batch046.certificate3702valid
theorem outputValid743 : DerivedMapBatches.Batch046.certificate3703.Valid := DerivedMapBatches.Batch046.certificate3703valid
theorem linkedComposition743 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3703.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3703.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3702.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3701.algebra.mat x) := by
  rw [firstLink743, secondLink743]
  exact DerivedMapBatches.Batch046.certificate3703valid.2 x
theorem firstLink744 : DerivedMapBatches.Batch046.certificate3704.algebra.mat = DerivedMapBatches.Batch046.certificate3706.a := by decide
theorem secondLink744 : DerivedMapBatches.Batch046.certificate3705.algebra.mat = DerivedMapBatches.Batch046.certificate3706.b := by decide
theorem firstValid744 : DerivedMapBatches.Batch046.certificate3704.Valid := DerivedMapBatches.Batch046.certificate3704valid
theorem secondValid744 : DerivedMapBatches.Batch046.certificate3705.Valid := DerivedMapBatches.Batch046.certificate3705valid
theorem outputValid744 : DerivedMapBatches.Batch046.certificate3706.Valid := DerivedMapBatches.Batch046.certificate3706valid
theorem linkedComposition744 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3706.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3706.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3705.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3704.algebra.mat x) := by
  rw [firstLink744, secondLink744]
  exact DerivedMapBatches.Batch046.certificate3706valid.2 x
theorem firstLink745 : DerivedMapBatches.Batch046.certificate3707.algebra.mat = DerivedMapBatches.Batch046.certificate3709.a := by decide
theorem secondLink745 : DerivedMapBatches.Batch046.certificate3708.algebra.mat = DerivedMapBatches.Batch046.certificate3709.b := by decide
theorem firstValid745 : DerivedMapBatches.Batch046.certificate3707.Valid := DerivedMapBatches.Batch046.certificate3707valid
theorem secondValid745 : DerivedMapBatches.Batch046.certificate3708.Valid := DerivedMapBatches.Batch046.certificate3708valid
theorem outputValid745 : DerivedMapBatches.Batch046.certificate3709.Valid := DerivedMapBatches.Batch046.certificate3709valid
theorem linkedComposition745 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3709.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3709.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3707.algebra.mat x) := by
  rw [firstLink745, secondLink745]
  exact DerivedMapBatches.Batch046.certificate3709valid.2 x
theorem firstLink746 : DerivedMapBatches.Batch046.certificate3710.algebra.mat = DerivedMapBatches.Batch046.certificate3712.a := by decide
theorem secondLink746 : DerivedMapBatches.Batch046.certificate3711.algebra.mat = DerivedMapBatches.Batch046.certificate3712.b := by decide
theorem firstValid746 : DerivedMapBatches.Batch046.certificate3710.Valid := DerivedMapBatches.Batch046.certificate3710valid
theorem secondValid746 : DerivedMapBatches.Batch046.certificate3711.Valid := DerivedMapBatches.Batch046.certificate3711valid
theorem outputValid746 : DerivedMapBatches.Batch046.certificate3712.Valid := DerivedMapBatches.Batch046.certificate3712valid
theorem linkedComposition746 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3712.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3712.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3710.algebra.mat x) := by
  rw [firstLink746, secondLink746]
  exact DerivedMapBatches.Batch046.certificate3712valid.2 x
theorem firstLink747 : DerivedMapBatches.Batch046.certificate3713.algebra.mat = DerivedMapBatches.Batch046.certificate3715.a := by decide
theorem secondLink747 : DerivedMapBatches.Batch046.certificate3714.algebra.mat = DerivedMapBatches.Batch046.certificate3715.b := by decide
theorem firstValid747 : DerivedMapBatches.Batch046.certificate3713.Valid := DerivedMapBatches.Batch046.certificate3713valid
theorem secondValid747 : DerivedMapBatches.Batch046.certificate3714.Valid := DerivedMapBatches.Batch046.certificate3714valid
theorem outputValid747 : DerivedMapBatches.Batch046.certificate3715.Valid := DerivedMapBatches.Batch046.certificate3715valid
theorem linkedComposition747 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3715.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3715.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3713.algebra.mat x) := by
  rw [firstLink747, secondLink747]
  exact DerivedMapBatches.Batch046.certificate3715valid.2 x
theorem firstLink748 : DerivedMapBatches.Batch046.certificate3716.algebra.mat = DerivedMapBatches.Batch046.certificate3718.a := by decide
theorem secondLink748 : DerivedMapBatches.Batch046.certificate3717.algebra.mat = DerivedMapBatches.Batch046.certificate3718.b := by decide
theorem firstValid748 : DerivedMapBatches.Batch046.certificate3716.Valid := DerivedMapBatches.Batch046.certificate3716valid
theorem secondValid748 : DerivedMapBatches.Batch046.certificate3717.Valid := DerivedMapBatches.Batch046.certificate3717valid
theorem outputValid748 : DerivedMapBatches.Batch046.certificate3718.Valid := DerivedMapBatches.Batch046.certificate3718valid
theorem linkedComposition748 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3718.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3718.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3717.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3716.algebra.mat x) := by
  rw [firstLink748, secondLink748]
  exact DerivedMapBatches.Batch046.certificate3718valid.2 x
theorem firstLink749 : DerivedMapBatches.Batch046.certificate3719.algebra.mat = DerivedMapBatches.Batch046.certificate3721.a := by decide
theorem secondLink749 : DerivedMapBatches.Batch046.certificate3720.algebra.mat = DerivedMapBatches.Batch046.certificate3721.b := by decide
theorem firstValid749 : DerivedMapBatches.Batch046.certificate3719.Valid := DerivedMapBatches.Batch046.certificate3719valid
theorem secondValid749 : DerivedMapBatches.Batch046.certificate3720.Valid := DerivedMapBatches.Batch046.certificate3720valid
theorem outputValid749 : DerivedMapBatches.Batch046.certificate3721.Valid := DerivedMapBatches.Batch046.certificate3721valid
theorem linkedComposition749 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3721.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3721.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3720.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3719.algebra.mat x) := by
  rw [firstLink749, secondLink749]
  exact DerivedMapBatches.Batch046.certificate3721valid.2 x
end DerivedLinkageBatches.Batch014
