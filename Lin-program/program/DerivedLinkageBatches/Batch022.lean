import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch034
import DerivedMapBatches.Batch056
import DerivedMapBatches.Batch057
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch022
theorem firstLink1100 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch056.certificate4483.a := by decide
theorem secondLink1100 : DerivedMapBatches.Batch034.certificate2734.algebra.mat = DerivedMapBatches.Batch056.certificate4483.b := by decide
theorem firstValid1100 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem secondValid1100 : DerivedMapBatches.Batch034.certificate2734.Valid := DerivedMapBatches.Batch034.certificate2734valid
theorem outputValid1100 : DerivedMapBatches.Batch056.certificate4483.Valid := DerivedMapBatches.Batch056.certificate4483valid
theorem linkedComposition1100 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4483.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4483.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2734.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) := by
  rw [firstLink1100, secondLink1100]
  exact DerivedMapBatches.Batch056.certificate4483valid.2 x
theorem outputZero1100 : DerivedMapBatches.Batch056.certificate4483.c = (fun _ _ => false) := by decide
theorem linkedZero1100 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4483.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2734.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1100, outputZero1100]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1101 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch056.certificate4485.a := by decide
theorem secondLink1101 : DerivedMapBatches.Batch056.certificate4484.algebra.mat = DerivedMapBatches.Batch056.certificate4485.b := by decide
theorem firstValid1101 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem secondValid1101 : DerivedMapBatches.Batch056.certificate4484.Valid := DerivedMapBatches.Batch056.certificate4484valid
theorem outputValid1101 : DerivedMapBatches.Batch056.certificate4485.Valid := DerivedMapBatches.Batch056.certificate4485valid
theorem linkedComposition1101 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4485.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4485.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4484.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) := by
  rw [firstLink1101, secondLink1101]
  exact DerivedMapBatches.Batch056.certificate4485valid.2 x
theorem outputZero1101 : DerivedMapBatches.Batch056.certificate4485.c = (fun _ _ => false) := by decide
theorem linkedZero1101 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4485.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4484.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1101, outputZero1101]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1102 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch056.certificate4486.a := by decide
theorem secondLink1102 : DerivedMapBatches.Batch034.certificate2737.algebra.mat = DerivedMapBatches.Batch056.certificate4486.b := by decide
theorem firstValid1102 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem secondValid1102 : DerivedMapBatches.Batch034.certificate2737.Valid := DerivedMapBatches.Batch034.certificate2737valid
theorem outputValid1102 : DerivedMapBatches.Batch056.certificate4486.Valid := DerivedMapBatches.Batch056.certificate4486valid
theorem linkedComposition1102 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4486.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4486.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2737.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) := by
  rw [firstLink1102, secondLink1102]
  exact DerivedMapBatches.Batch056.certificate4486valid.2 x
theorem outputZero1102 : DerivedMapBatches.Batch056.certificate4486.c = (fun _ _ => false) := by decide
theorem linkedZero1102 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4486.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2737.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1102, outputZero1102]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1103 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch056.certificate4488.a := by decide
theorem secondLink1103 : DerivedMapBatches.Batch056.certificate4487.algebra.mat = DerivedMapBatches.Batch056.certificate4488.b := by decide
theorem firstValid1103 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem secondValid1103 : DerivedMapBatches.Batch056.certificate4487.Valid := DerivedMapBatches.Batch056.certificate4487valid
theorem outputValid1103 : DerivedMapBatches.Batch056.certificate4488.Valid := DerivedMapBatches.Batch056.certificate4488valid
theorem linkedComposition1103 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4488.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4488.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4487.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) := by
  rw [firstLink1103, secondLink1103]
  exact DerivedMapBatches.Batch056.certificate4488valid.2 x
theorem outputZero1103 : DerivedMapBatches.Batch056.certificate4488.c = (fun _ _ => false) := by decide
theorem linkedZero1103 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4488.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4487.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1103, outputZero1103]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1104 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch056.certificate4490.a := by decide
theorem secondLink1104 : DerivedMapBatches.Batch056.certificate4489.algebra.mat = DerivedMapBatches.Batch056.certificate4490.b := by decide
theorem firstValid1104 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem secondValid1104 : DerivedMapBatches.Batch056.certificate4489.Valid := DerivedMapBatches.Batch056.certificate4489valid
theorem outputValid1104 : DerivedMapBatches.Batch056.certificate4490.Valid := DerivedMapBatches.Batch056.certificate4490valid
theorem linkedComposition1104 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4490.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4490.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4489.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) := by
  rw [firstLink1104, secondLink1104]
  exact DerivedMapBatches.Batch056.certificate4490valid.2 x
theorem outputZero1104 : DerivedMapBatches.Batch056.certificate4490.c = (fun _ _ => false) := by decide
theorem linkedZero1104 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4490.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4489.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1104, outputZero1104]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1105 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch056.certificate4492.a := by decide
theorem secondLink1105 : DerivedMapBatches.Batch056.certificate4491.algebra.mat = DerivedMapBatches.Batch056.certificate4492.b := by decide
theorem firstValid1105 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem secondValid1105 : DerivedMapBatches.Batch056.certificate4491.Valid := DerivedMapBatches.Batch056.certificate4491valid
theorem outputValid1105 : DerivedMapBatches.Batch056.certificate4492.Valid := DerivedMapBatches.Batch056.certificate4492valid
theorem linkedComposition1105 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4492.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4492.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4491.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) := by
  rw [firstLink1105, secondLink1105]
  exact DerivedMapBatches.Batch056.certificate4492valid.2 x
theorem outputZero1105 : DerivedMapBatches.Batch056.certificate4492.c = (fun _ _ => false) := by decide
theorem linkedZero1105 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4492.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4491.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1105, outputZero1105]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1106 : DerivedMapBatches.Batch001.certificate124.algebra.mat = DerivedMapBatches.Batch056.certificate4493.a := by decide
theorem secondLink1106 : DerivedMapBatches.Batch034.certificate2741.algebra.mat = DerivedMapBatches.Batch056.certificate4493.b := by decide
theorem firstValid1106 : DerivedMapBatches.Batch001.certificate124.Valid := DerivedMapBatches.Batch001.certificate124valid
theorem secondValid1106 : DerivedMapBatches.Batch034.certificate2741.Valid := DerivedMapBatches.Batch034.certificate2741valid
theorem outputValid1106 : DerivedMapBatches.Batch056.certificate4493.Valid := DerivedMapBatches.Batch056.certificate4493valid
theorem linkedComposition1106 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4493.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4493.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) := by
  rw [firstLink1106, secondLink1106]
  exact DerivedMapBatches.Batch056.certificate4493valid.2 x
theorem outputZero1106 : DerivedMapBatches.Batch056.certificate4493.c = (fun _ _ => false) := by decide
theorem linkedZero1106 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4493.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1106, outputZero1106]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1107 : DerivedMapBatches.Batch001.certificate125.algebra.mat = DerivedMapBatches.Batch056.certificate4494.a := by decide
theorem secondLink1107 : DerivedMapBatches.Batch034.certificate2742.algebra.mat = DerivedMapBatches.Batch056.certificate4494.b := by decide
theorem firstValid1107 : DerivedMapBatches.Batch001.certificate125.Valid := DerivedMapBatches.Batch001.certificate125valid
theorem secondValid1107 : DerivedMapBatches.Batch034.certificate2742.Valid := DerivedMapBatches.Batch034.certificate2742valid
theorem outputValid1107 : DerivedMapBatches.Batch056.certificate4494.Valid := DerivedMapBatches.Batch056.certificate4494valid
theorem linkedComposition1107 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4494.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4494.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2742.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) := by
  rw [firstLink1107, secondLink1107]
  exact DerivedMapBatches.Batch056.certificate4494valid.2 x
theorem outputZero1107 : DerivedMapBatches.Batch056.certificate4494.c = (fun _ _ => false) := by decide
theorem linkedZero1107 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4494.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2742.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1107, outputZero1107]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1108 : DerivedMapBatches.Batch001.certificate126.algebra.mat = DerivedMapBatches.Batch056.certificate4495.a := by decide
theorem secondLink1108 : DerivedMapBatches.Batch034.certificate2743.algebra.mat = DerivedMapBatches.Batch056.certificate4495.b := by decide
theorem firstValid1108 : DerivedMapBatches.Batch001.certificate126.Valid := DerivedMapBatches.Batch001.certificate126valid
theorem secondValid1108 : DerivedMapBatches.Batch034.certificate2743.Valid := DerivedMapBatches.Batch034.certificate2743valid
theorem outputValid1108 : DerivedMapBatches.Batch056.certificate4495.Valid := DerivedMapBatches.Batch056.certificate4495valid
theorem linkedComposition1108 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4495.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4495.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2743.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) := by
  rw [firstLink1108, secondLink1108]
  exact DerivedMapBatches.Batch056.certificate4495valid.2 x
theorem outputZero1108 : DerivedMapBatches.Batch056.certificate4495.c = (fun _ _ => false) := by decide
theorem linkedZero1108 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4495.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2743.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1108, outputZero1108]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1109 : DerivedMapBatches.Batch001.certificate127.algebra.mat = DerivedMapBatches.Batch056.certificate4496.a := by decide
theorem secondLink1109 : DerivedMapBatches.Batch034.certificate2744.algebra.mat = DerivedMapBatches.Batch056.certificate4496.b := by decide
theorem firstValid1109 : DerivedMapBatches.Batch001.certificate127.Valid := DerivedMapBatches.Batch001.certificate127valid
theorem secondValid1109 : DerivedMapBatches.Batch034.certificate2744.Valid := DerivedMapBatches.Batch034.certificate2744valid
theorem outputValid1109 : DerivedMapBatches.Batch056.certificate4496.Valid := DerivedMapBatches.Batch056.certificate4496valid
theorem linkedComposition1109 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4496.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4496.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) := by
  rw [firstLink1109, secondLink1109]
  exact DerivedMapBatches.Batch056.certificate4496valid.2 x
theorem outputZero1109 : DerivedMapBatches.Batch056.certificate4496.c = (fun _ _ => false) := by decide
theorem linkedZero1109 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4496.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1109, outputZero1109]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1110 : DerivedMapBatches.Batch001.certificate128.algebra.mat = DerivedMapBatches.Batch056.certificate4497.a := by decide
theorem secondLink1110 : DerivedMapBatches.Batch034.certificate2745.algebra.mat = DerivedMapBatches.Batch056.certificate4497.b := by decide
theorem firstValid1110 : DerivedMapBatches.Batch001.certificate128.Valid := DerivedMapBatches.Batch001.certificate128valid
theorem secondValid1110 : DerivedMapBatches.Batch034.certificate2745.Valid := DerivedMapBatches.Batch034.certificate2745valid
theorem outputValid1110 : DerivedMapBatches.Batch056.certificate4497.Valid := DerivedMapBatches.Batch056.certificate4497valid
theorem linkedComposition1110 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4497.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4497.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2745.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) := by
  rw [firstLink1110, secondLink1110]
  exact DerivedMapBatches.Batch056.certificate4497valid.2 x
theorem outputZero1110 : DerivedMapBatches.Batch056.certificate4497.c = (fun _ _ => false) := by decide
theorem linkedZero1110 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4497.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2745.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1110, outputZero1110]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1111 : DerivedMapBatches.Batch001.certificate129.algebra.mat = DerivedMapBatches.Batch056.certificate4499.a := by decide
theorem secondLink1111 : DerivedMapBatches.Batch056.certificate4498.algebra.mat = DerivedMapBatches.Batch056.certificate4499.b := by decide
theorem firstValid1111 : DerivedMapBatches.Batch001.certificate129.Valid := DerivedMapBatches.Batch001.certificate129valid
theorem secondValid1111 : DerivedMapBatches.Batch056.certificate4498.Valid := DerivedMapBatches.Batch056.certificate4498valid
theorem outputValid1111 : DerivedMapBatches.Batch056.certificate4499.Valid := DerivedMapBatches.Batch056.certificate4499valid
theorem linkedComposition1111 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4499.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4499.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4498.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) := by
  rw [firstLink1111, secondLink1111]
  exact DerivedMapBatches.Batch056.certificate4499valid.2 x
theorem outputZero1111 : DerivedMapBatches.Batch056.certificate4499.c = (fun _ _ => false) := by decide
theorem linkedZero1111 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4499.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4498.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1111, outputZero1111]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1112 : DerivedMapBatches.Batch033.certificate2669.algebra.mat = DerivedMapBatches.Batch056.certificate4502.a := by decide
theorem secondLink1112 : DerivedMapBatches.Batch056.certificate4501.algebra.mat = DerivedMapBatches.Batch056.certificate4502.b := by decide
theorem firstValid1112 : DerivedMapBatches.Batch033.certificate2669.Valid := DerivedMapBatches.Batch033.certificate2669valid
theorem secondValid1112 : DerivedMapBatches.Batch056.certificate4501.Valid := DerivedMapBatches.Batch056.certificate4501valid
theorem outputValid1112 : DerivedMapBatches.Batch056.certificate4502.Valid := DerivedMapBatches.Batch056.certificate4502valid
theorem linkedComposition1112 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4502.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4502.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4501.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2669.algebra.mat x) := by
  rw [firstLink1112, secondLink1112]
  exact DerivedMapBatches.Batch056.certificate4502valid.2 x
theorem outputZero1112 : DerivedMapBatches.Batch056.certificate4502.c = (fun _ _ => false) := by decide
theorem linkedZero1112 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4502.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4501.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2669.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1112, outputZero1112]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1113 : DerivedMapBatches.Batch033.certificate2670.algebra.mat = DerivedMapBatches.Batch056.certificate4504.a := by decide
theorem secondLink1113 : DerivedMapBatches.Batch056.certificate4503.algebra.mat = DerivedMapBatches.Batch056.certificate4504.b := by decide
theorem firstValid1113 : DerivedMapBatches.Batch033.certificate2670.Valid := DerivedMapBatches.Batch033.certificate2670valid
theorem secondValid1113 : DerivedMapBatches.Batch056.certificate4503.Valid := DerivedMapBatches.Batch056.certificate4503valid
theorem outputValid1113 : DerivedMapBatches.Batch056.certificate4504.Valid := DerivedMapBatches.Batch056.certificate4504valid
theorem linkedComposition1113 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4504.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4504.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4503.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2670.algebra.mat x) := by
  rw [firstLink1113, secondLink1113]
  exact DerivedMapBatches.Batch056.certificate4504valid.2 x
theorem outputZero1113 : DerivedMapBatches.Batch056.certificate4504.c = (fun _ _ => false) := by decide
theorem linkedZero1113 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4504.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4503.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2670.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1113, outputZero1113]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1114 : DerivedMapBatches.Batch033.certificate2671.algebra.mat = DerivedMapBatches.Batch056.certificate4506.a := by decide
theorem secondLink1114 : DerivedMapBatches.Batch056.certificate4505.algebra.mat = DerivedMapBatches.Batch056.certificate4506.b := by decide
theorem firstValid1114 : DerivedMapBatches.Batch033.certificate2671.Valid := DerivedMapBatches.Batch033.certificate2671valid
theorem secondValid1114 : DerivedMapBatches.Batch056.certificate4505.Valid := DerivedMapBatches.Batch056.certificate4505valid
theorem outputValid1114 : DerivedMapBatches.Batch056.certificate4506.Valid := DerivedMapBatches.Batch056.certificate4506valid
theorem linkedComposition1114 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4506.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4506.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4505.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2671.algebra.mat x) := by
  rw [firstLink1114, secondLink1114]
  exact DerivedMapBatches.Batch056.certificate4506valid.2 x
theorem outputZero1114 : DerivedMapBatches.Batch056.certificate4506.c = (fun _ _ => false) := by decide
theorem linkedZero1114 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4506.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4505.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2671.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1114, outputZero1114]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1115 : DerivedMapBatches.Batch033.certificate2672.algebra.mat = DerivedMapBatches.Batch056.certificate4508.a := by decide
theorem secondLink1115 : DerivedMapBatches.Batch056.certificate4507.algebra.mat = DerivedMapBatches.Batch056.certificate4508.b := by decide
theorem firstValid1115 : DerivedMapBatches.Batch033.certificate2672.Valid := DerivedMapBatches.Batch033.certificate2672valid
theorem secondValid1115 : DerivedMapBatches.Batch056.certificate4507.Valid := DerivedMapBatches.Batch056.certificate4507valid
theorem outputValid1115 : DerivedMapBatches.Batch056.certificate4508.Valid := DerivedMapBatches.Batch056.certificate4508valid
theorem linkedComposition1115 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4508.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4508.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4507.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2672.algebra.mat x) := by
  rw [firstLink1115, secondLink1115]
  exact DerivedMapBatches.Batch056.certificate4508valid.2 x
theorem outputZero1115 : DerivedMapBatches.Batch056.certificate4508.c = (fun _ _ => false) := by decide
theorem linkedZero1115 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4508.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4507.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2672.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1115, outputZero1115]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1116 : DerivedMapBatches.Batch033.certificate2673.algebra.mat = DerivedMapBatches.Batch056.certificate4510.a := by decide
theorem secondLink1116 : DerivedMapBatches.Batch056.certificate4509.algebra.mat = DerivedMapBatches.Batch056.certificate4510.b := by decide
theorem firstValid1116 : DerivedMapBatches.Batch033.certificate2673.Valid := DerivedMapBatches.Batch033.certificate2673valid
theorem secondValid1116 : DerivedMapBatches.Batch056.certificate4509.Valid := DerivedMapBatches.Batch056.certificate4509valid
theorem outputValid1116 : DerivedMapBatches.Batch056.certificate4510.Valid := DerivedMapBatches.Batch056.certificate4510valid
theorem linkedComposition1116 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4510.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4510.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4509.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat x) := by
  rw [firstLink1116, secondLink1116]
  exact DerivedMapBatches.Batch056.certificate4510valid.2 x
theorem outputZero1116 : DerivedMapBatches.Batch056.certificate4510.c = (fun _ _ => false) := by decide
theorem linkedZero1116 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4510.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4509.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1116, outputZero1116]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1117 : DerivedMapBatches.Batch033.certificate2674.algebra.mat = DerivedMapBatches.Batch056.certificate4512.a := by decide
theorem secondLink1117 : DerivedMapBatches.Batch056.certificate4511.algebra.mat = DerivedMapBatches.Batch056.certificate4512.b := by decide
theorem firstValid1117 : DerivedMapBatches.Batch033.certificate2674.Valid := DerivedMapBatches.Batch033.certificate2674valid
theorem secondValid1117 : DerivedMapBatches.Batch056.certificate4511.Valid := DerivedMapBatches.Batch056.certificate4511valid
theorem outputValid1117 : DerivedMapBatches.Batch056.certificate4512.Valid := DerivedMapBatches.Batch056.certificate4512valid
theorem linkedComposition1117 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4512.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4512.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4511.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2674.algebra.mat x) := by
  rw [firstLink1117, secondLink1117]
  exact DerivedMapBatches.Batch056.certificate4512valid.2 x
theorem outputZero1117 : DerivedMapBatches.Batch056.certificate4512.c = (fun _ _ => false) := by decide
theorem linkedZero1117 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4512.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4511.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2674.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1117, outputZero1117]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1118 : DerivedMapBatches.Batch033.certificate2675.algebra.mat = DerivedMapBatches.Batch056.certificate4514.a := by decide
theorem secondLink1118 : DerivedMapBatches.Batch056.certificate4513.algebra.mat = DerivedMapBatches.Batch056.certificate4514.b := by decide
theorem firstValid1118 : DerivedMapBatches.Batch033.certificate2675.Valid := DerivedMapBatches.Batch033.certificate2675valid
theorem secondValid1118 : DerivedMapBatches.Batch056.certificate4513.Valid := DerivedMapBatches.Batch056.certificate4513valid
theorem outputValid1118 : DerivedMapBatches.Batch056.certificate4514.Valid := DerivedMapBatches.Batch056.certificate4514valid
theorem linkedComposition1118 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4514.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4514.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4513.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat x) := by
  rw [firstLink1118, secondLink1118]
  exact DerivedMapBatches.Batch056.certificate4514valid.2 x
theorem outputZero1118 : DerivedMapBatches.Batch056.certificate4514.c = (fun _ _ => false) := by decide
theorem linkedZero1118 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4514.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4513.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1118, outputZero1118]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1119 : DerivedMapBatches.Batch033.certificate2676.algebra.mat = DerivedMapBatches.Batch056.certificate4516.a := by decide
theorem secondLink1119 : DerivedMapBatches.Batch056.certificate4515.algebra.mat = DerivedMapBatches.Batch056.certificate4516.b := by decide
theorem firstValid1119 : DerivedMapBatches.Batch033.certificate2676.Valid := DerivedMapBatches.Batch033.certificate2676valid
theorem secondValid1119 : DerivedMapBatches.Batch056.certificate4515.Valid := DerivedMapBatches.Batch056.certificate4515valid
theorem outputValid1119 : DerivedMapBatches.Batch056.certificate4516.Valid := DerivedMapBatches.Batch056.certificate4516valid
theorem linkedComposition1119 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4516.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4516.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4515.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2676.algebra.mat x) := by
  rw [firstLink1119, secondLink1119]
  exact DerivedMapBatches.Batch056.certificate4516valid.2 x
theorem outputZero1119 : DerivedMapBatches.Batch056.certificate4516.c = (fun _ _ => false) := by decide
theorem linkedZero1119 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4516.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4515.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2676.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1119, outputZero1119]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1120 : DerivedMapBatches.Batch033.certificate2677.algebra.mat = DerivedMapBatches.Batch056.certificate4518.a := by decide
theorem secondLink1120 : DerivedMapBatches.Batch056.certificate4517.algebra.mat = DerivedMapBatches.Batch056.certificate4518.b := by decide
theorem firstValid1120 : DerivedMapBatches.Batch033.certificate2677.Valid := DerivedMapBatches.Batch033.certificate2677valid
theorem secondValid1120 : DerivedMapBatches.Batch056.certificate4517.Valid := DerivedMapBatches.Batch056.certificate4517valid
theorem outputValid1120 : DerivedMapBatches.Batch056.certificate4518.Valid := DerivedMapBatches.Batch056.certificate4518valid
theorem linkedComposition1120 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4518.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4518.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4517.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat x) := by
  rw [firstLink1120, secondLink1120]
  exact DerivedMapBatches.Batch056.certificate4518valid.2 x
theorem outputZero1120 : DerivedMapBatches.Batch056.certificate4518.c = (fun _ _ => false) := by decide
theorem linkedZero1120 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4518.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4517.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1120, outputZero1120]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1121 : DerivedMapBatches.Batch033.certificate2678.algebra.mat = DerivedMapBatches.Batch056.certificate4520.a := by decide
theorem secondLink1121 : DerivedMapBatches.Batch056.certificate4519.algebra.mat = DerivedMapBatches.Batch056.certificate4520.b := by decide
theorem firstValid1121 : DerivedMapBatches.Batch033.certificate2678.Valid := DerivedMapBatches.Batch033.certificate2678valid
theorem secondValid1121 : DerivedMapBatches.Batch056.certificate4519.Valid := DerivedMapBatches.Batch056.certificate4519valid
theorem outputValid1121 : DerivedMapBatches.Batch056.certificate4520.Valid := DerivedMapBatches.Batch056.certificate4520valid
theorem linkedComposition1121 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4520.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4520.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4519.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2678.algebra.mat x) := by
  rw [firstLink1121, secondLink1121]
  exact DerivedMapBatches.Batch056.certificate4520valid.2 x
theorem outputZero1121 : DerivedMapBatches.Batch056.certificate4520.c = (fun _ _ => false) := by decide
theorem linkedZero1121 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4520.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4519.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2678.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1121, outputZero1121]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1122 : DerivedMapBatches.Batch033.certificate2679.algebra.mat = DerivedMapBatches.Batch056.certificate4522.a := by decide
theorem secondLink1122 : DerivedMapBatches.Batch056.certificate4521.algebra.mat = DerivedMapBatches.Batch056.certificate4522.b := by decide
theorem firstValid1122 : DerivedMapBatches.Batch033.certificate2679.Valid := DerivedMapBatches.Batch033.certificate2679valid
theorem secondValid1122 : DerivedMapBatches.Batch056.certificate4521.Valid := DerivedMapBatches.Batch056.certificate4521valid
theorem outputValid1122 : DerivedMapBatches.Batch056.certificate4522.Valid := DerivedMapBatches.Batch056.certificate4522valid
theorem linkedComposition1122 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4522.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4522.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4521.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat x) := by
  rw [firstLink1122, secondLink1122]
  exact DerivedMapBatches.Batch056.certificate4522valid.2 x
theorem outputZero1122 : DerivedMapBatches.Batch056.certificate4522.c = (fun _ _ => false) := by decide
theorem linkedZero1122 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4522.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4521.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1122, outputZero1122]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1123 : DerivedMapBatches.Batch033.certificate2680.algebra.mat = DerivedMapBatches.Batch056.certificate4524.a := by decide
theorem secondLink1123 : DerivedMapBatches.Batch056.certificate4523.algebra.mat = DerivedMapBatches.Batch056.certificate4524.b := by decide
theorem firstValid1123 : DerivedMapBatches.Batch033.certificate2680.Valid := DerivedMapBatches.Batch033.certificate2680valid
theorem secondValid1123 : DerivedMapBatches.Batch056.certificate4523.Valid := DerivedMapBatches.Batch056.certificate4523valid
theorem outputValid1123 : DerivedMapBatches.Batch056.certificate4524.Valid := DerivedMapBatches.Batch056.certificate4524valid
theorem linkedComposition1123 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4524.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4524.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4523.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat x) := by
  rw [firstLink1123, secondLink1123]
  exact DerivedMapBatches.Batch056.certificate4524valid.2 x
theorem outputZero1123 : DerivedMapBatches.Batch056.certificate4524.c = (fun _ _ => false) := by decide
theorem linkedZero1123 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4524.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4523.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1123, outputZero1123]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1124 : DerivedMapBatches.Batch033.certificate2681.algebra.mat = DerivedMapBatches.Batch056.certificate4526.a := by decide
theorem secondLink1124 : DerivedMapBatches.Batch056.certificate4525.algebra.mat = DerivedMapBatches.Batch056.certificate4526.b := by decide
theorem firstValid1124 : DerivedMapBatches.Batch033.certificate2681.Valid := DerivedMapBatches.Batch033.certificate2681valid
theorem secondValid1124 : DerivedMapBatches.Batch056.certificate4525.Valid := DerivedMapBatches.Batch056.certificate4525valid
theorem outputValid1124 : DerivedMapBatches.Batch056.certificate4526.Valid := DerivedMapBatches.Batch056.certificate4526valid
theorem linkedComposition1124 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4526.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4526.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4525.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat x) := by
  rw [firstLink1124, secondLink1124]
  exact DerivedMapBatches.Batch056.certificate4526valid.2 x
theorem outputZero1124 : DerivedMapBatches.Batch056.certificate4526.c = (fun _ _ => false) := by decide
theorem linkedZero1124 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4526.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4525.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1124, outputZero1124]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1125 : DerivedMapBatches.Batch033.certificate2682.algebra.mat = DerivedMapBatches.Batch056.certificate4528.a := by decide
theorem secondLink1125 : DerivedMapBatches.Batch056.certificate4527.algebra.mat = DerivedMapBatches.Batch056.certificate4528.b := by decide
theorem firstValid1125 : DerivedMapBatches.Batch033.certificate2682.Valid := DerivedMapBatches.Batch033.certificate2682valid
theorem secondValid1125 : DerivedMapBatches.Batch056.certificate4527.Valid := DerivedMapBatches.Batch056.certificate4527valid
theorem outputValid1125 : DerivedMapBatches.Batch056.certificate4528.Valid := DerivedMapBatches.Batch056.certificate4528valid
theorem linkedComposition1125 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4528.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4528.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4527.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat x) := by
  rw [firstLink1125, secondLink1125]
  exact DerivedMapBatches.Batch056.certificate4528valid.2 x
theorem outputZero1125 : DerivedMapBatches.Batch056.certificate4528.c = (fun _ _ => false) := by decide
theorem linkedZero1125 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4528.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4527.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1125, outputZero1125]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1126 : DerivedMapBatches.Batch033.certificate2683.algebra.mat = DerivedMapBatches.Batch056.certificate4530.a := by decide
theorem secondLink1126 : DerivedMapBatches.Batch056.certificate4529.algebra.mat = DerivedMapBatches.Batch056.certificate4530.b := by decide
theorem firstValid1126 : DerivedMapBatches.Batch033.certificate2683.Valid := DerivedMapBatches.Batch033.certificate2683valid
theorem secondValid1126 : DerivedMapBatches.Batch056.certificate4529.Valid := DerivedMapBatches.Batch056.certificate4529valid
theorem outputValid1126 : DerivedMapBatches.Batch056.certificate4530.Valid := DerivedMapBatches.Batch056.certificate4530valid
theorem linkedComposition1126 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4530.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4530.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4529.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2683.algebra.mat x) := by
  rw [firstLink1126, secondLink1126]
  exact DerivedMapBatches.Batch056.certificate4530valid.2 x
theorem outputZero1126 : DerivedMapBatches.Batch056.certificate4530.c = (fun _ _ => false) := by decide
theorem linkedZero1126 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4530.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4529.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2683.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1126, outputZero1126]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1127 : DerivedMapBatches.Batch033.certificate2684.algebra.mat = DerivedMapBatches.Batch056.certificate4532.a := by decide
theorem secondLink1127 : DerivedMapBatches.Batch056.certificate4531.algebra.mat = DerivedMapBatches.Batch056.certificate4532.b := by decide
theorem firstValid1127 : DerivedMapBatches.Batch033.certificate2684.Valid := DerivedMapBatches.Batch033.certificate2684valid
theorem secondValid1127 : DerivedMapBatches.Batch056.certificate4531.Valid := DerivedMapBatches.Batch056.certificate4531valid
theorem outputValid1127 : DerivedMapBatches.Batch056.certificate4532.Valid := DerivedMapBatches.Batch056.certificate4532valid
theorem linkedComposition1127 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4532.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4532.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4531.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat x) := by
  rw [firstLink1127, secondLink1127]
  exact DerivedMapBatches.Batch056.certificate4532valid.2 x
theorem outputZero1127 : DerivedMapBatches.Batch056.certificate4532.c = (fun _ _ => false) := by decide
theorem linkedZero1127 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4532.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4531.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1127, outputZero1127]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1128 : DerivedMapBatches.Batch033.certificate2685.algebra.mat = DerivedMapBatches.Batch056.certificate4534.a := by decide
theorem secondLink1128 : DerivedMapBatches.Batch056.certificate4533.algebra.mat = DerivedMapBatches.Batch056.certificate4534.b := by decide
theorem firstValid1128 : DerivedMapBatches.Batch033.certificate2685.Valid := DerivedMapBatches.Batch033.certificate2685valid
theorem secondValid1128 : DerivedMapBatches.Batch056.certificate4533.Valid := DerivedMapBatches.Batch056.certificate4533valid
theorem outputValid1128 : DerivedMapBatches.Batch056.certificate4534.Valid := DerivedMapBatches.Batch056.certificate4534valid
theorem linkedComposition1128 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4534.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4534.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4533.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat x) := by
  rw [firstLink1128, secondLink1128]
  exact DerivedMapBatches.Batch056.certificate4534valid.2 x
theorem outputZero1128 : DerivedMapBatches.Batch056.certificate4534.c = (fun _ _ => false) := by decide
theorem linkedZero1128 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4534.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4533.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1128, outputZero1128]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1129 : DerivedMapBatches.Batch033.certificate2686.algebra.mat = DerivedMapBatches.Batch056.certificate4536.a := by decide
theorem secondLink1129 : DerivedMapBatches.Batch056.certificate4535.algebra.mat = DerivedMapBatches.Batch056.certificate4536.b := by decide
theorem firstValid1129 : DerivedMapBatches.Batch033.certificate2686.Valid := DerivedMapBatches.Batch033.certificate2686valid
theorem secondValid1129 : DerivedMapBatches.Batch056.certificate4535.Valid := DerivedMapBatches.Batch056.certificate4535valid
theorem outputValid1129 : DerivedMapBatches.Batch056.certificate4536.Valid := DerivedMapBatches.Batch056.certificate4536valid
theorem linkedComposition1129 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4536.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4536.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4535.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat x) := by
  rw [firstLink1129, secondLink1129]
  exact DerivedMapBatches.Batch056.certificate4536valid.2 x
theorem outputZero1129 : DerivedMapBatches.Batch056.certificate4536.c = (fun _ _ => false) := by decide
theorem linkedZero1129 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4536.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4535.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1129, outputZero1129]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1130 : DerivedMapBatches.Batch033.certificate2687.algebra.mat = DerivedMapBatches.Batch056.certificate4538.a := by decide
theorem secondLink1130 : DerivedMapBatches.Batch056.certificate4537.algebra.mat = DerivedMapBatches.Batch056.certificate4538.b := by decide
theorem firstValid1130 : DerivedMapBatches.Batch033.certificate2687.Valid := DerivedMapBatches.Batch033.certificate2687valid
theorem secondValid1130 : DerivedMapBatches.Batch056.certificate4537.Valid := DerivedMapBatches.Batch056.certificate4537valid
theorem outputValid1130 : DerivedMapBatches.Batch056.certificate4538.Valid := DerivedMapBatches.Batch056.certificate4538valid
theorem linkedComposition1130 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4538.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4538.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4537.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat x) := by
  rw [firstLink1130, secondLink1130]
  exact DerivedMapBatches.Batch056.certificate4538valid.2 x
theorem outputZero1130 : DerivedMapBatches.Batch056.certificate4538.c = (fun _ _ => false) := by decide
theorem linkedZero1130 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4538.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4537.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1130, outputZero1130]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1131 : DerivedMapBatches.Batch033.certificate2688.algebra.mat = DerivedMapBatches.Batch056.certificate4540.a := by decide
theorem secondLink1131 : DerivedMapBatches.Batch056.certificate4539.algebra.mat = DerivedMapBatches.Batch056.certificate4540.b := by decide
theorem firstValid1131 : DerivedMapBatches.Batch033.certificate2688.Valid := DerivedMapBatches.Batch033.certificate2688valid
theorem secondValid1131 : DerivedMapBatches.Batch056.certificate4539.Valid := DerivedMapBatches.Batch056.certificate4539valid
theorem outputValid1131 : DerivedMapBatches.Batch056.certificate4540.Valid := DerivedMapBatches.Batch056.certificate4540valid
theorem linkedComposition1131 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4540.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4540.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4539.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat x) := by
  rw [firstLink1131, secondLink1131]
  exact DerivedMapBatches.Batch056.certificate4540valid.2 x
theorem outputZero1131 : DerivedMapBatches.Batch056.certificate4540.c = (fun _ _ => false) := by decide
theorem linkedZero1131 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4540.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4539.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1131, outputZero1131]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1132 : DerivedMapBatches.Batch033.certificate2689.algebra.mat = DerivedMapBatches.Batch056.certificate4542.a := by decide
theorem secondLink1132 : DerivedMapBatches.Batch056.certificate4541.algebra.mat = DerivedMapBatches.Batch056.certificate4542.b := by decide
theorem firstValid1132 : DerivedMapBatches.Batch033.certificate2689.Valid := DerivedMapBatches.Batch033.certificate2689valid
theorem secondValid1132 : DerivedMapBatches.Batch056.certificate4541.Valid := DerivedMapBatches.Batch056.certificate4541valid
theorem outputValid1132 : DerivedMapBatches.Batch056.certificate4542.Valid := DerivedMapBatches.Batch056.certificate4542valid
theorem linkedComposition1132 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4542.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4542.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4541.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat x) := by
  rw [firstLink1132, secondLink1132]
  exact DerivedMapBatches.Batch056.certificate4542valid.2 x
theorem outputZero1132 : DerivedMapBatches.Batch056.certificate4542.c = (fun _ _ => false) := by decide
theorem linkedZero1132 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4542.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4541.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1132, outputZero1132]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1133 : DerivedMapBatches.Batch033.certificate2690.algebra.mat = DerivedMapBatches.Batch056.certificate4544.a := by decide
theorem secondLink1133 : DerivedMapBatches.Batch056.certificate4543.algebra.mat = DerivedMapBatches.Batch056.certificate4544.b := by decide
theorem firstValid1133 : DerivedMapBatches.Batch033.certificate2690.Valid := DerivedMapBatches.Batch033.certificate2690valid
theorem secondValid1133 : DerivedMapBatches.Batch056.certificate4543.Valid := DerivedMapBatches.Batch056.certificate4543valid
theorem outputValid1133 : DerivedMapBatches.Batch056.certificate4544.Valid := DerivedMapBatches.Batch056.certificate4544valid
theorem linkedComposition1133 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4544.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4544.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4543.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat x) := by
  rw [firstLink1133, secondLink1133]
  exact DerivedMapBatches.Batch056.certificate4544valid.2 x
theorem outputZero1133 : DerivedMapBatches.Batch056.certificate4544.c = (fun _ _ => false) := by decide
theorem linkedZero1133 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4544.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4543.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1133, outputZero1133]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1134 : DerivedMapBatches.Batch033.certificate2691.algebra.mat = DerivedMapBatches.Batch056.certificate4546.a := by decide
theorem secondLink1134 : DerivedMapBatches.Batch056.certificate4545.algebra.mat = DerivedMapBatches.Batch056.certificate4546.b := by decide
theorem firstValid1134 : DerivedMapBatches.Batch033.certificate2691.Valid := DerivedMapBatches.Batch033.certificate2691valid
theorem secondValid1134 : DerivedMapBatches.Batch056.certificate4545.Valid := DerivedMapBatches.Batch056.certificate4545valid
theorem outputValid1134 : DerivedMapBatches.Batch056.certificate4546.Valid := DerivedMapBatches.Batch056.certificate4546valid
theorem linkedComposition1134 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4546.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4546.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4545.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat x) := by
  rw [firstLink1134, secondLink1134]
  exact DerivedMapBatches.Batch056.certificate4546valid.2 x
theorem outputZero1134 : DerivedMapBatches.Batch056.certificate4546.c = (fun _ _ => false) := by decide
theorem linkedZero1134 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4546.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4545.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1134, outputZero1134]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1135 : DerivedMapBatches.Batch033.certificate2692.algebra.mat = DerivedMapBatches.Batch056.certificate4548.a := by decide
theorem secondLink1135 : DerivedMapBatches.Batch056.certificate4547.algebra.mat = DerivedMapBatches.Batch056.certificate4548.b := by decide
theorem firstValid1135 : DerivedMapBatches.Batch033.certificate2692.Valid := DerivedMapBatches.Batch033.certificate2692valid
theorem secondValid1135 : DerivedMapBatches.Batch056.certificate4547.Valid := DerivedMapBatches.Batch056.certificate4547valid
theorem outputValid1135 : DerivedMapBatches.Batch056.certificate4548.Valid := DerivedMapBatches.Batch056.certificate4548valid
theorem linkedComposition1135 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4548.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4548.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4547.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat x) := by
  rw [firstLink1135, secondLink1135]
  exact DerivedMapBatches.Batch056.certificate4548valid.2 x
theorem outputZero1135 : DerivedMapBatches.Batch056.certificate4548.c = (fun _ _ => false) := by decide
theorem linkedZero1135 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4548.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4547.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1135, outputZero1135]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1136 : DerivedMapBatches.Batch033.certificate2693.algebra.mat = DerivedMapBatches.Batch056.certificate4550.a := by decide
theorem secondLink1136 : DerivedMapBatches.Batch056.certificate4549.algebra.mat = DerivedMapBatches.Batch056.certificate4550.b := by decide
theorem firstValid1136 : DerivedMapBatches.Batch033.certificate2693.Valid := DerivedMapBatches.Batch033.certificate2693valid
theorem secondValid1136 : DerivedMapBatches.Batch056.certificate4549.Valid := DerivedMapBatches.Batch056.certificate4549valid
theorem outputValid1136 : DerivedMapBatches.Batch056.certificate4550.Valid := DerivedMapBatches.Batch056.certificate4550valid
theorem linkedComposition1136 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4550.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4550.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4549.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat x) := by
  rw [firstLink1136, secondLink1136]
  exact DerivedMapBatches.Batch056.certificate4550valid.2 x
theorem outputZero1136 : DerivedMapBatches.Batch056.certificate4550.c = (fun _ _ => false) := by decide
theorem linkedZero1136 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4550.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4549.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1136, outputZero1136]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1137 : DerivedMapBatches.Batch033.certificate2696.algebra.mat = DerivedMapBatches.Batch056.certificate4554.a := by decide
theorem secondLink1137 : DerivedMapBatches.Batch056.certificate4553.algebra.mat = DerivedMapBatches.Batch056.certificate4554.b := by decide
theorem firstValid1137 : DerivedMapBatches.Batch033.certificate2696.Valid := DerivedMapBatches.Batch033.certificate2696valid
theorem secondValid1137 : DerivedMapBatches.Batch056.certificate4553.Valid := DerivedMapBatches.Batch056.certificate4553valid
theorem outputValid1137 : DerivedMapBatches.Batch056.certificate4554.Valid := DerivedMapBatches.Batch056.certificate4554valid
theorem linkedComposition1137 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4554.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4554.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4553.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2696.algebra.mat x) := by
  rw [firstLink1137, secondLink1137]
  exact DerivedMapBatches.Batch056.certificate4554valid.2 x
theorem outputZero1137 : DerivedMapBatches.Batch056.certificate4554.c = (fun _ _ => false) := by decide
theorem linkedZero1137 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4554.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4553.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2696.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1137, outputZero1137]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1138 : DerivedMapBatches.Batch033.certificate2697.algebra.mat = DerivedMapBatches.Batch056.certificate4556.a := by decide
theorem secondLink1138 : DerivedMapBatches.Batch056.certificate4555.algebra.mat = DerivedMapBatches.Batch056.certificate4556.b := by decide
theorem firstValid1138 : DerivedMapBatches.Batch033.certificate2697.Valid := DerivedMapBatches.Batch033.certificate2697valid
theorem secondValid1138 : DerivedMapBatches.Batch056.certificate4555.Valid := DerivedMapBatches.Batch056.certificate4555valid
theorem outputValid1138 : DerivedMapBatches.Batch056.certificate4556.Valid := DerivedMapBatches.Batch056.certificate4556valid
theorem linkedComposition1138 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4556.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4556.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4555.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2697.algebra.mat x) := by
  rw [firstLink1138, secondLink1138]
  exact DerivedMapBatches.Batch056.certificate4556valid.2 x
theorem outputZero1138 : DerivedMapBatches.Batch056.certificate4556.c = (fun _ _ => false) := by decide
theorem linkedZero1138 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4556.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4555.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2697.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1138, outputZero1138]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1139 : DerivedMapBatches.Batch033.certificate2698.algebra.mat = DerivedMapBatches.Batch056.certificate4558.a := by decide
theorem secondLink1139 : DerivedMapBatches.Batch056.certificate4557.algebra.mat = DerivedMapBatches.Batch056.certificate4558.b := by decide
theorem firstValid1139 : DerivedMapBatches.Batch033.certificate2698.Valid := DerivedMapBatches.Batch033.certificate2698valid
theorem secondValid1139 : DerivedMapBatches.Batch056.certificate4557.Valid := DerivedMapBatches.Batch056.certificate4557valid
theorem outputValid1139 : DerivedMapBatches.Batch056.certificate4558.Valid := DerivedMapBatches.Batch056.certificate4558valid
theorem linkedComposition1139 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4558.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4558.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4557.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2698.algebra.mat x) := by
  rw [firstLink1139, secondLink1139]
  exact DerivedMapBatches.Batch056.certificate4558valid.2 x
theorem outputZero1139 : DerivedMapBatches.Batch056.certificate4558.c = (fun _ _ => false) := by decide
theorem linkedZero1139 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4558.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4557.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2698.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1139, outputZero1139]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1140 : DerivedMapBatches.Batch033.certificate2700.algebra.mat = DerivedMapBatches.Batch057.certificate4561.a := by decide
theorem secondLink1140 : DerivedMapBatches.Batch057.certificate4560.algebra.mat = DerivedMapBatches.Batch057.certificate4561.b := by decide
theorem firstValid1140 : DerivedMapBatches.Batch033.certificate2700.Valid := DerivedMapBatches.Batch033.certificate2700valid
theorem secondValid1140 : DerivedMapBatches.Batch057.certificate4560.Valid := DerivedMapBatches.Batch057.certificate4560valid
theorem outputValid1140 : DerivedMapBatches.Batch057.certificate4561.Valid := DerivedMapBatches.Batch057.certificate4561valid
theorem linkedComposition1140 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4561.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4561.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4560.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2700.algebra.mat x) := by
  rw [firstLink1140, secondLink1140]
  exact DerivedMapBatches.Batch057.certificate4561valid.2 x
theorem outputZero1140 : DerivedMapBatches.Batch057.certificate4561.c = (fun _ _ => false) := by decide
theorem linkedZero1140 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4561.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4560.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2700.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1140, outputZero1140]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1141 : DerivedMapBatches.Batch033.certificate2701.algebra.mat = DerivedMapBatches.Batch057.certificate4563.a := by decide
theorem secondLink1141 : DerivedMapBatches.Batch057.certificate4562.algebra.mat = DerivedMapBatches.Batch057.certificate4563.b := by decide
theorem firstValid1141 : DerivedMapBatches.Batch033.certificate2701.Valid := DerivedMapBatches.Batch033.certificate2701valid
theorem secondValid1141 : DerivedMapBatches.Batch057.certificate4562.Valid := DerivedMapBatches.Batch057.certificate4562valid
theorem outputValid1141 : DerivedMapBatches.Batch057.certificate4563.Valid := DerivedMapBatches.Batch057.certificate4563valid
theorem linkedComposition1141 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4563.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4563.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat x) := by
  rw [firstLink1141, secondLink1141]
  exact DerivedMapBatches.Batch057.certificate4563valid.2 x
theorem outputZero1141 : DerivedMapBatches.Batch057.certificate4563.c = (fun _ _ => false) := by decide
theorem linkedZero1141 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4563.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1141, outputZero1141]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1142 : DerivedMapBatches.Batch033.certificate2702.algebra.mat = DerivedMapBatches.Batch057.certificate4565.a := by decide
theorem secondLink1142 : DerivedMapBatches.Batch057.certificate4564.algebra.mat = DerivedMapBatches.Batch057.certificate4565.b := by decide
theorem firstValid1142 : DerivedMapBatches.Batch033.certificate2702.Valid := DerivedMapBatches.Batch033.certificate2702valid
theorem secondValid1142 : DerivedMapBatches.Batch057.certificate4564.Valid := DerivedMapBatches.Batch057.certificate4564valid
theorem outputValid1142 : DerivedMapBatches.Batch057.certificate4565.Valid := DerivedMapBatches.Batch057.certificate4565valid
theorem linkedComposition1142 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4565.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4565.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4564.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2702.algebra.mat x) := by
  rw [firstLink1142, secondLink1142]
  exact DerivedMapBatches.Batch057.certificate4565valid.2 x
theorem outputZero1142 : DerivedMapBatches.Batch057.certificate4565.c = (fun _ _ => false) := by decide
theorem linkedZero1142 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4565.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4564.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2702.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1142, outputZero1142]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1143 : DerivedMapBatches.Batch033.certificate2703.algebra.mat = DerivedMapBatches.Batch057.certificate4567.a := by decide
theorem secondLink1143 : DerivedMapBatches.Batch057.certificate4566.algebra.mat = DerivedMapBatches.Batch057.certificate4567.b := by decide
theorem firstValid1143 : DerivedMapBatches.Batch033.certificate2703.Valid := DerivedMapBatches.Batch033.certificate2703valid
theorem secondValid1143 : DerivedMapBatches.Batch057.certificate4566.Valid := DerivedMapBatches.Batch057.certificate4566valid
theorem outputValid1143 : DerivedMapBatches.Batch057.certificate4567.Valid := DerivedMapBatches.Batch057.certificate4567valid
theorem linkedComposition1143 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4567.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4567.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4566.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat x) := by
  rw [firstLink1143, secondLink1143]
  exact DerivedMapBatches.Batch057.certificate4567valid.2 x
theorem outputZero1143 : DerivedMapBatches.Batch057.certificate4567.c = (fun _ _ => false) := by decide
theorem linkedZero1143 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4567.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4566.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1143, outputZero1143]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1144 : DerivedMapBatches.Batch033.certificate2704.algebra.mat = DerivedMapBatches.Batch057.certificate4569.a := by decide
theorem secondLink1144 : DerivedMapBatches.Batch057.certificate4568.algebra.mat = DerivedMapBatches.Batch057.certificate4569.b := by decide
theorem firstValid1144 : DerivedMapBatches.Batch033.certificate2704.Valid := DerivedMapBatches.Batch033.certificate2704valid
theorem secondValid1144 : DerivedMapBatches.Batch057.certificate4568.Valid := DerivedMapBatches.Batch057.certificate4568valid
theorem outputValid1144 : DerivedMapBatches.Batch057.certificate4569.Valid := DerivedMapBatches.Batch057.certificate4569valid
theorem linkedComposition1144 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4569.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4569.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2704.algebra.mat x) := by
  rw [firstLink1144, secondLink1144]
  exact DerivedMapBatches.Batch057.certificate4569valid.2 x
theorem outputZero1144 : DerivedMapBatches.Batch057.certificate4569.c = (fun _ _ => false) := by decide
theorem linkedZero1144 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4569.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2704.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1144, outputZero1144]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1145 : DerivedMapBatches.Batch033.certificate2705.algebra.mat = DerivedMapBatches.Batch057.certificate4571.a := by decide
theorem secondLink1145 : DerivedMapBatches.Batch057.certificate4570.algebra.mat = DerivedMapBatches.Batch057.certificate4571.b := by decide
theorem firstValid1145 : DerivedMapBatches.Batch033.certificate2705.Valid := DerivedMapBatches.Batch033.certificate2705valid
theorem secondValid1145 : DerivedMapBatches.Batch057.certificate4570.Valid := DerivedMapBatches.Batch057.certificate4570valid
theorem outputValid1145 : DerivedMapBatches.Batch057.certificate4571.Valid := DerivedMapBatches.Batch057.certificate4571valid
theorem linkedComposition1145 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4571.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4571.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4570.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2705.algebra.mat x) := by
  rw [firstLink1145, secondLink1145]
  exact DerivedMapBatches.Batch057.certificate4571valid.2 x
theorem outputZero1145 : DerivedMapBatches.Batch057.certificate4571.c = (fun _ _ => false) := by decide
theorem linkedZero1145 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4571.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4570.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2705.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1145, outputZero1145]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1146 : DerivedMapBatches.Batch033.certificate2706.algebra.mat = DerivedMapBatches.Batch057.certificate4573.a := by decide
theorem secondLink1146 : DerivedMapBatches.Batch057.certificate4572.algebra.mat = DerivedMapBatches.Batch057.certificate4573.b := by decide
theorem firstValid1146 : DerivedMapBatches.Batch033.certificate2706.Valid := DerivedMapBatches.Batch033.certificate2706valid
theorem secondValid1146 : DerivedMapBatches.Batch057.certificate4572.Valid := DerivedMapBatches.Batch057.certificate4572valid
theorem outputValid1146 : DerivedMapBatches.Batch057.certificate4573.Valid := DerivedMapBatches.Batch057.certificate4573valid
theorem linkedComposition1146 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4573.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4573.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4572.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat x) := by
  rw [firstLink1146, secondLink1146]
  exact DerivedMapBatches.Batch057.certificate4573valid.2 x
theorem outputZero1146 : DerivedMapBatches.Batch057.certificate4573.c = (fun _ _ => false) := by decide
theorem linkedZero1146 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4573.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4572.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1146, outputZero1146]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1147 : DerivedMapBatches.Batch033.certificate2707.algebra.mat = DerivedMapBatches.Batch057.certificate4575.a := by decide
theorem secondLink1147 : DerivedMapBatches.Batch057.certificate4574.algebra.mat = DerivedMapBatches.Batch057.certificate4575.b := by decide
theorem firstValid1147 : DerivedMapBatches.Batch033.certificate2707.Valid := DerivedMapBatches.Batch033.certificate2707valid
theorem secondValid1147 : DerivedMapBatches.Batch057.certificate4574.Valid := DerivedMapBatches.Batch057.certificate4574valid
theorem outputValid1147 : DerivedMapBatches.Batch057.certificate4575.Valid := DerivedMapBatches.Batch057.certificate4575valid
theorem linkedComposition1147 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4575.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4575.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat x) := by
  rw [firstLink1147, secondLink1147]
  exact DerivedMapBatches.Batch057.certificate4575valid.2 x
theorem outputZero1147 : DerivedMapBatches.Batch057.certificate4575.c = (fun _ _ => false) := by decide
theorem linkedZero1147 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4575.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4574.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1147, outputZero1147]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1148 : DerivedMapBatches.Batch033.certificate2708.algebra.mat = DerivedMapBatches.Batch057.certificate4577.a := by decide
theorem secondLink1148 : DerivedMapBatches.Batch057.certificate4576.algebra.mat = DerivedMapBatches.Batch057.certificate4577.b := by decide
theorem firstValid1148 : DerivedMapBatches.Batch033.certificate2708.Valid := DerivedMapBatches.Batch033.certificate2708valid
theorem secondValid1148 : DerivedMapBatches.Batch057.certificate4576.Valid := DerivedMapBatches.Batch057.certificate4576valid
theorem outputValid1148 : DerivedMapBatches.Batch057.certificate4577.Valid := DerivedMapBatches.Batch057.certificate4577valid
theorem linkedComposition1148 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4577.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4577.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4576.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat x) := by
  rw [firstLink1148, secondLink1148]
  exact DerivedMapBatches.Batch057.certificate4577valid.2 x
theorem outputZero1148 : DerivedMapBatches.Batch057.certificate4577.c = (fun _ _ => false) := by decide
theorem linkedZero1148 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4577.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4576.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1148, outputZero1148]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1149 : DerivedMapBatches.Batch033.certificate2709.algebra.mat = DerivedMapBatches.Batch057.certificate4579.a := by decide
theorem secondLink1149 : DerivedMapBatches.Batch057.certificate4578.algebra.mat = DerivedMapBatches.Batch057.certificate4579.b := by decide
theorem firstValid1149 : DerivedMapBatches.Batch033.certificate2709.Valid := DerivedMapBatches.Batch033.certificate2709valid
theorem secondValid1149 : DerivedMapBatches.Batch057.certificate4578.Valid := DerivedMapBatches.Batch057.certificate4578valid
theorem outputValid1149 : DerivedMapBatches.Batch057.certificate4579.Valid := DerivedMapBatches.Batch057.certificate4579valid
theorem linkedComposition1149 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4579.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4579.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4578.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2709.algebra.mat x) := by
  rw [firstLink1149, secondLink1149]
  exact DerivedMapBatches.Batch057.certificate4579valid.2 x
theorem outputZero1149 : DerivedMapBatches.Batch057.certificate4579.c = (fun _ _ => false) := by decide
theorem linkedZero1149 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4579.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4578.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2709.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1149, outputZero1149]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch022
