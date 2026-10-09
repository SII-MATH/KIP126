import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch034
import DerivedMapBatches.Batch055
import DerivedMapBatches.Batch056
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch021
theorem firstLink1050 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch055.certificate4415.a := by decide
theorem secondLink1050 : DerivedMapBatches.Batch033.certificate2677.algebra.mat = DerivedMapBatches.Batch055.certificate4415.b := by decide
theorem firstValid1050 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem secondValid1050 : DerivedMapBatches.Batch033.certificate2677.Valid := DerivedMapBatches.Batch033.certificate2677valid
theorem outputValid1050 : DerivedMapBatches.Batch055.certificate4415.Valid := DerivedMapBatches.Batch055.certificate4415valid
theorem linkedComposition1050 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4415.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4415.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) := by
  rw [firstLink1050, secondLink1050]
  exact DerivedMapBatches.Batch055.certificate4415valid.2 x
theorem outputZero1050 : DerivedMapBatches.Batch055.certificate4415.c = (fun _ _ => false) := by decide
theorem linkedZero1050 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4415.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1050, outputZero1050]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1051 : DerivedMapBatches.Batch001.certificate109.algebra.mat = DerivedMapBatches.Batch055.certificate4416.a := by decide
theorem secondLink1051 : DerivedMapBatches.Batch033.certificate2679.algebra.mat = DerivedMapBatches.Batch055.certificate4416.b := by decide
theorem firstValid1051 : DerivedMapBatches.Batch001.certificate109.Valid := DerivedMapBatches.Batch001.certificate109valid
theorem secondValid1051 : DerivedMapBatches.Batch033.certificate2679.Valid := DerivedMapBatches.Batch033.certificate2679valid
theorem outputValid1051 : DerivedMapBatches.Batch055.certificate4416.Valid := DerivedMapBatches.Batch055.certificate4416valid
theorem linkedComposition1051 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4416.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4416.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) := by
  rw [firstLink1051, secondLink1051]
  exact DerivedMapBatches.Batch055.certificate4416valid.2 x
theorem outputZero1051 : DerivedMapBatches.Batch055.certificate4416.c = (fun _ _ => false) := by decide
theorem linkedZero1051 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4416.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1051, outputZero1051]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1052 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch055.certificate4418.a := by decide
theorem secondLink1052 : DerivedMapBatches.Batch055.certificate4417.algebra.mat = DerivedMapBatches.Batch055.certificate4418.b := by decide
theorem firstValid1052 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem secondValid1052 : DerivedMapBatches.Batch055.certificate4417.Valid := DerivedMapBatches.Batch055.certificate4417valid
theorem outputValid1052 : DerivedMapBatches.Batch055.certificate4418.Valid := DerivedMapBatches.Batch055.certificate4418valid
theorem linkedComposition1052 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4418.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4418.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4417.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) := by
  rw [firstLink1052, secondLink1052]
  exact DerivedMapBatches.Batch055.certificate4418valid.2 x
theorem outputZero1052 : DerivedMapBatches.Batch055.certificate4418.c = (fun _ _ => false) := by decide
theorem linkedZero1052 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4418.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4417.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1052, outputZero1052]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1053 : DerivedMapBatches.Batch001.certificate111.algebra.mat = DerivedMapBatches.Batch055.certificate4419.a := by decide
theorem secondLink1053 : DerivedMapBatches.Batch033.certificate2680.algebra.mat = DerivedMapBatches.Batch055.certificate4419.b := by decide
theorem firstValid1053 : DerivedMapBatches.Batch001.certificate111.Valid := DerivedMapBatches.Batch001.certificate111valid
theorem secondValid1053 : DerivedMapBatches.Batch033.certificate2680.Valid := DerivedMapBatches.Batch033.certificate2680valid
theorem outputValid1053 : DerivedMapBatches.Batch055.certificate4419.Valid := DerivedMapBatches.Batch055.certificate4419valid
theorem linkedComposition1053 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4419.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4419.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) := by
  rw [firstLink1053, secondLink1053]
  exact DerivedMapBatches.Batch055.certificate4419valid.2 x
theorem outputZero1053 : DerivedMapBatches.Batch055.certificate4419.c = (fun _ _ => false) := by decide
theorem linkedZero1053 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4419.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1053, outputZero1053]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1054 : DerivedMapBatches.Batch001.certificate112.algebra.mat = DerivedMapBatches.Batch055.certificate4421.a := by decide
theorem secondLink1054 : DerivedMapBatches.Batch055.certificate4420.algebra.mat = DerivedMapBatches.Batch055.certificate4421.b := by decide
theorem firstValid1054 : DerivedMapBatches.Batch001.certificate112.Valid := DerivedMapBatches.Batch001.certificate112valid
theorem secondValid1054 : DerivedMapBatches.Batch055.certificate4420.Valid := DerivedMapBatches.Batch055.certificate4420valid
theorem outputValid1054 : DerivedMapBatches.Batch055.certificate4421.Valid := DerivedMapBatches.Batch055.certificate4421valid
theorem linkedComposition1054 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4421.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4421.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4420.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) := by
  rw [firstLink1054, secondLink1054]
  exact DerivedMapBatches.Batch055.certificate4421valid.2 x
theorem outputZero1054 : DerivedMapBatches.Batch055.certificate4421.c = (fun _ _ => false) := by decide
theorem linkedZero1054 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4421.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4420.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1054, outputZero1054]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1055 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch055.certificate4422.a := by decide
theorem secondLink1055 : DerivedMapBatches.Batch033.certificate2681.algebra.mat = DerivedMapBatches.Batch055.certificate4422.b := by decide
theorem firstValid1055 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem secondValid1055 : DerivedMapBatches.Batch033.certificate2681.Valid := DerivedMapBatches.Batch033.certificate2681valid
theorem outputValid1055 : DerivedMapBatches.Batch055.certificate4422.Valid := DerivedMapBatches.Batch055.certificate4422valid
theorem linkedComposition1055 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4422.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4422.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) := by
  rw [firstLink1055, secondLink1055]
  exact DerivedMapBatches.Batch055.certificate4422valid.2 x
theorem outputZero1055 : DerivedMapBatches.Batch055.certificate4422.c = (fun _ _ => false) := by decide
theorem linkedZero1055 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4422.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1055, outputZero1055]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1056 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch055.certificate4423.a := by decide
theorem secondLink1056 : DerivedMapBatches.Batch033.certificate2682.algebra.mat = DerivedMapBatches.Batch055.certificate4423.b := by decide
theorem firstValid1056 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem secondValid1056 : DerivedMapBatches.Batch033.certificate2682.Valid := DerivedMapBatches.Batch033.certificate2682valid
theorem outputValid1056 : DerivedMapBatches.Batch055.certificate4423.Valid := DerivedMapBatches.Batch055.certificate4423valid
theorem linkedComposition1056 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4423.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4423.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) := by
  rw [firstLink1056, secondLink1056]
  exact DerivedMapBatches.Batch055.certificate4423valid.2 x
theorem outputZero1056 : DerivedMapBatches.Batch055.certificate4423.c = (fun _ _ => false) := by decide
theorem linkedZero1056 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4423.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1056, outputZero1056]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1057 : DerivedMapBatches.Batch001.certificate115.algebra.mat = DerivedMapBatches.Batch055.certificate4424.a := by decide
theorem secondLink1057 : DerivedMapBatches.Batch033.certificate2684.algebra.mat = DerivedMapBatches.Batch055.certificate4424.b := by decide
theorem firstValid1057 : DerivedMapBatches.Batch001.certificate115.Valid := DerivedMapBatches.Batch001.certificate115valid
theorem secondValid1057 : DerivedMapBatches.Batch033.certificate2684.Valid := DerivedMapBatches.Batch033.certificate2684valid
theorem outputValid1057 : DerivedMapBatches.Batch055.certificate4424.Valid := DerivedMapBatches.Batch055.certificate4424valid
theorem linkedComposition1057 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4424.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4424.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) := by
  rw [firstLink1057, secondLink1057]
  exact DerivedMapBatches.Batch055.certificate4424valid.2 x
theorem outputZero1057 : DerivedMapBatches.Batch055.certificate4424.c = (fun _ _ => false) := by decide
theorem linkedZero1057 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4424.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1057, outputZero1057]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1058 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch055.certificate4426.a := by decide
theorem secondLink1058 : DerivedMapBatches.Batch055.certificate4425.algebra.mat = DerivedMapBatches.Batch055.certificate4426.b := by decide
theorem firstValid1058 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem secondValid1058 : DerivedMapBatches.Batch055.certificate4425.Valid := DerivedMapBatches.Batch055.certificate4425valid
theorem outputValid1058 : DerivedMapBatches.Batch055.certificate4426.Valid := DerivedMapBatches.Batch055.certificate4426valid
theorem linkedComposition1058 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4426.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4426.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4425.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) := by
  rw [firstLink1058, secondLink1058]
  exact DerivedMapBatches.Batch055.certificate4426valid.2 x
theorem outputZero1058 : DerivedMapBatches.Batch055.certificate4426.c = (fun _ _ => false) := by decide
theorem linkedZero1058 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4426.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4425.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1058, outputZero1058]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1059 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch055.certificate4427.a := by decide
theorem secondLink1059 : DerivedMapBatches.Batch033.certificate2685.algebra.mat = DerivedMapBatches.Batch055.certificate4427.b := by decide
theorem firstValid1059 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem secondValid1059 : DerivedMapBatches.Batch033.certificate2685.Valid := DerivedMapBatches.Batch033.certificate2685valid
theorem outputValid1059 : DerivedMapBatches.Batch055.certificate4427.Valid := DerivedMapBatches.Batch055.certificate4427valid
theorem linkedComposition1059 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4427.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4427.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) := by
  rw [firstLink1059, secondLink1059]
  exact DerivedMapBatches.Batch055.certificate4427valid.2 x
theorem outputZero1059 : DerivedMapBatches.Batch055.certificate4427.c = (fun _ _ => false) := by decide
theorem linkedZero1059 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4427.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1059, outputZero1059]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1060 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch055.certificate4429.a := by decide
theorem secondLink1060 : DerivedMapBatches.Batch055.certificate4428.algebra.mat = DerivedMapBatches.Batch055.certificate4429.b := by decide
theorem firstValid1060 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem secondValid1060 : DerivedMapBatches.Batch055.certificate4428.Valid := DerivedMapBatches.Batch055.certificate4428valid
theorem outputValid1060 : DerivedMapBatches.Batch055.certificate4429.Valid := DerivedMapBatches.Batch055.certificate4429valid
theorem linkedComposition1060 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4429.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4429.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4428.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) := by
  rw [firstLink1060, secondLink1060]
  exact DerivedMapBatches.Batch055.certificate4429valid.2 x
theorem outputZero1060 : DerivedMapBatches.Batch055.certificate4429.c = (fun _ _ => false) := by decide
theorem linkedZero1060 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4429.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4428.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1060, outputZero1060]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1061 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch055.certificate4431.a := by decide
theorem secondLink1061 : DerivedMapBatches.Batch055.certificate4430.algebra.mat = DerivedMapBatches.Batch055.certificate4431.b := by decide
theorem firstValid1061 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem secondValid1061 : DerivedMapBatches.Batch055.certificate4430.Valid := DerivedMapBatches.Batch055.certificate4430valid
theorem outputValid1061 : DerivedMapBatches.Batch055.certificate4431.Valid := DerivedMapBatches.Batch055.certificate4431valid
theorem linkedComposition1061 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4431.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4431.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4430.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) := by
  rw [firstLink1061, secondLink1061]
  exact DerivedMapBatches.Batch055.certificate4431valid.2 x
theorem outputZero1061 : DerivedMapBatches.Batch055.certificate4431.c = (fun _ _ => false) := by decide
theorem linkedZero1061 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4431.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4430.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1061, outputZero1061]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1062 : DerivedMapBatches.Batch001.certificate120.algebra.mat = DerivedMapBatches.Batch055.certificate4432.a := by decide
theorem secondLink1062 : DerivedMapBatches.Batch033.certificate2686.algebra.mat = DerivedMapBatches.Batch055.certificate4432.b := by decide
theorem firstValid1062 : DerivedMapBatches.Batch001.certificate120.Valid := DerivedMapBatches.Batch001.certificate120valid
theorem secondValid1062 : DerivedMapBatches.Batch033.certificate2686.Valid := DerivedMapBatches.Batch033.certificate2686valid
theorem outputValid1062 : DerivedMapBatches.Batch055.certificate4432.Valid := DerivedMapBatches.Batch055.certificate4432valid
theorem linkedComposition1062 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4432.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4432.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) := by
  rw [firstLink1062, secondLink1062]
  exact DerivedMapBatches.Batch055.certificate4432valid.2 x
theorem outputZero1062 : DerivedMapBatches.Batch055.certificate4432.c = (fun _ _ => false) := by decide
theorem linkedZero1062 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4432.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1062, outputZero1062]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1063 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch055.certificate4434.a := by decide
theorem secondLink1063 : DerivedMapBatches.Batch055.certificate4433.algebra.mat = DerivedMapBatches.Batch055.certificate4434.b := by decide
theorem firstValid1063 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem secondValid1063 : DerivedMapBatches.Batch055.certificate4433.Valid := DerivedMapBatches.Batch055.certificate4433valid
theorem outputValid1063 : DerivedMapBatches.Batch055.certificate4434.Valid := DerivedMapBatches.Batch055.certificate4434valid
theorem linkedComposition1063 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4434.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4434.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4433.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) := by
  rw [firstLink1063, secondLink1063]
  exact DerivedMapBatches.Batch055.certificate4434valid.2 x
theorem outputZero1063 : DerivedMapBatches.Batch055.certificate4434.c = (fun _ _ => false) := by decide
theorem linkedZero1063 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4434.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4433.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1063, outputZero1063]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1064 : DerivedMapBatches.Batch001.certificate122.algebra.mat = DerivedMapBatches.Batch055.certificate4435.a := by decide
theorem secondLink1064 : DerivedMapBatches.Batch033.certificate2687.algebra.mat = DerivedMapBatches.Batch055.certificate4435.b := by decide
theorem firstValid1064 : DerivedMapBatches.Batch001.certificate122.Valid := DerivedMapBatches.Batch001.certificate122valid
theorem secondValid1064 : DerivedMapBatches.Batch033.certificate2687.Valid := DerivedMapBatches.Batch033.certificate2687valid
theorem outputValid1064 : DerivedMapBatches.Batch055.certificate4435.Valid := DerivedMapBatches.Batch055.certificate4435valid
theorem linkedComposition1064 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4435.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4435.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) := by
  rw [firstLink1064, secondLink1064]
  exact DerivedMapBatches.Batch055.certificate4435valid.2 x
theorem outputZero1064 : DerivedMapBatches.Batch055.certificate4435.c = (fun _ _ => false) := by decide
theorem linkedZero1064 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4435.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1064, outputZero1064]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1065 : DerivedMapBatches.Batch001.certificate123.algebra.mat = DerivedMapBatches.Batch055.certificate4436.a := by decide
theorem secondLink1065 : DerivedMapBatches.Batch033.certificate2688.algebra.mat = DerivedMapBatches.Batch055.certificate4436.b := by decide
theorem firstValid1065 : DerivedMapBatches.Batch001.certificate123.Valid := DerivedMapBatches.Batch001.certificate123valid
theorem secondValid1065 : DerivedMapBatches.Batch033.certificate2688.Valid := DerivedMapBatches.Batch033.certificate2688valid
theorem outputValid1065 : DerivedMapBatches.Batch055.certificate4436.Valid := DerivedMapBatches.Batch055.certificate4436valid
theorem linkedComposition1065 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4436.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4436.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) := by
  rw [firstLink1065, secondLink1065]
  exact DerivedMapBatches.Batch055.certificate4436valid.2 x
theorem outputZero1065 : DerivedMapBatches.Batch055.certificate4436.c = (fun _ _ => false) := by decide
theorem linkedZero1065 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4436.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1065, outputZero1065]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1066 : DerivedMapBatches.Batch001.certificate124.algebra.mat = DerivedMapBatches.Batch055.certificate4437.a := by decide
theorem secondLink1066 : DerivedMapBatches.Batch033.certificate2689.algebra.mat = DerivedMapBatches.Batch055.certificate4437.b := by decide
theorem firstValid1066 : DerivedMapBatches.Batch001.certificate124.Valid := DerivedMapBatches.Batch001.certificate124valid
theorem secondValid1066 : DerivedMapBatches.Batch033.certificate2689.Valid := DerivedMapBatches.Batch033.certificate2689valid
theorem outputValid1066 : DerivedMapBatches.Batch055.certificate4437.Valid := DerivedMapBatches.Batch055.certificate4437valid
theorem linkedComposition1066 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4437.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4437.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) := by
  rw [firstLink1066, secondLink1066]
  exact DerivedMapBatches.Batch055.certificate4437valid.2 x
theorem outputZero1066 : DerivedMapBatches.Batch055.certificate4437.c = (fun _ _ => false) := by decide
theorem linkedZero1066 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4437.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1066, outputZero1066]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1067 : DerivedMapBatches.Batch001.certificate125.algebra.mat = DerivedMapBatches.Batch055.certificate4438.a := by decide
theorem secondLink1067 : DerivedMapBatches.Batch033.certificate2690.algebra.mat = DerivedMapBatches.Batch055.certificate4438.b := by decide
theorem firstValid1067 : DerivedMapBatches.Batch001.certificate125.Valid := DerivedMapBatches.Batch001.certificate125valid
theorem secondValid1067 : DerivedMapBatches.Batch033.certificate2690.Valid := DerivedMapBatches.Batch033.certificate2690valid
theorem outputValid1067 : DerivedMapBatches.Batch055.certificate4438.Valid := DerivedMapBatches.Batch055.certificate4438valid
theorem linkedComposition1067 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4438.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4438.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) := by
  rw [firstLink1067, secondLink1067]
  exact DerivedMapBatches.Batch055.certificate4438valid.2 x
theorem outputZero1067 : DerivedMapBatches.Batch055.certificate4438.c = (fun _ _ => false) := by decide
theorem linkedZero1067 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4438.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1067, outputZero1067]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1068 : DerivedMapBatches.Batch001.certificate126.algebra.mat = DerivedMapBatches.Batch055.certificate4439.a := by decide
theorem secondLink1068 : DerivedMapBatches.Batch033.certificate2691.algebra.mat = DerivedMapBatches.Batch055.certificate4439.b := by decide
theorem firstValid1068 : DerivedMapBatches.Batch001.certificate126.Valid := DerivedMapBatches.Batch001.certificate126valid
theorem secondValid1068 : DerivedMapBatches.Batch033.certificate2691.Valid := DerivedMapBatches.Batch033.certificate2691valid
theorem outputValid1068 : DerivedMapBatches.Batch055.certificate4439.Valid := DerivedMapBatches.Batch055.certificate4439valid
theorem linkedComposition1068 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4439.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4439.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) := by
  rw [firstLink1068, secondLink1068]
  exact DerivedMapBatches.Batch055.certificate4439valid.2 x
theorem outputZero1068 : DerivedMapBatches.Batch055.certificate4439.c = (fun _ _ => false) := by decide
theorem linkedZero1068 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4439.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1068, outputZero1068]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1069 : DerivedMapBatches.Batch001.certificate127.algebra.mat = DerivedMapBatches.Batch055.certificate4440.a := by decide
theorem secondLink1069 : DerivedMapBatches.Batch033.certificate2692.algebra.mat = DerivedMapBatches.Batch055.certificate4440.b := by decide
theorem firstValid1069 : DerivedMapBatches.Batch001.certificate127.Valid := DerivedMapBatches.Batch001.certificate127valid
theorem secondValid1069 : DerivedMapBatches.Batch033.certificate2692.Valid := DerivedMapBatches.Batch033.certificate2692valid
theorem outputValid1069 : DerivedMapBatches.Batch055.certificate4440.Valid := DerivedMapBatches.Batch055.certificate4440valid
theorem linkedComposition1069 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4440.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4440.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) := by
  rw [firstLink1069, secondLink1069]
  exact DerivedMapBatches.Batch055.certificate4440valid.2 x
theorem outputZero1069 : DerivedMapBatches.Batch055.certificate4440.c = (fun _ _ => false) := by decide
theorem linkedZero1069 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4440.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1069, outputZero1069]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1070 : DerivedMapBatches.Batch001.certificate128.algebra.mat = DerivedMapBatches.Batch055.certificate4441.a := by decide
theorem secondLink1070 : DerivedMapBatches.Batch033.certificate2693.algebra.mat = DerivedMapBatches.Batch055.certificate4441.b := by decide
theorem firstValid1070 : DerivedMapBatches.Batch001.certificate128.Valid := DerivedMapBatches.Batch001.certificate128valid
theorem secondValid1070 : DerivedMapBatches.Batch033.certificate2693.Valid := DerivedMapBatches.Batch033.certificate2693valid
theorem outputValid1070 : DerivedMapBatches.Batch055.certificate4441.Valid := DerivedMapBatches.Batch055.certificate4441valid
theorem linkedComposition1070 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4441.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4441.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) := by
  rw [firstLink1070, secondLink1070]
  exact DerivedMapBatches.Batch055.certificate4441valid.2 x
theorem outputZero1070 : DerivedMapBatches.Batch055.certificate4441.c = (fun _ _ => false) := by decide
theorem linkedZero1070 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4441.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1070, outputZero1070]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1071 : DerivedMapBatches.Batch001.certificate129.algebra.mat = DerivedMapBatches.Batch055.certificate4443.a := by decide
theorem secondLink1071 : DerivedMapBatches.Batch055.certificate4442.algebra.mat = DerivedMapBatches.Batch055.certificate4443.b := by decide
theorem firstValid1071 : DerivedMapBatches.Batch001.certificate129.Valid := DerivedMapBatches.Batch001.certificate129valid
theorem secondValid1071 : DerivedMapBatches.Batch055.certificate4442.Valid := DerivedMapBatches.Batch055.certificate4442valid
theorem outputValid1071 : DerivedMapBatches.Batch055.certificate4443.Valid := DerivedMapBatches.Batch055.certificate4443valid
theorem linkedComposition1071 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4443.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) := by
  rw [firstLink1071, secondLink1071]
  exact DerivedMapBatches.Batch055.certificate4443valid.2 x
theorem outputZero1071 : DerivedMapBatches.Batch055.certificate4443.c = (fun _ _ => false) := by decide
theorem linkedZero1071 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1071, outputZero1071]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1072 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch055.certificate4445.a := by decide
theorem secondLink1072 : DerivedMapBatches.Batch055.certificate4444.algebra.mat = DerivedMapBatches.Batch055.certificate4445.b := by decide
theorem firstValid1072 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem secondValid1072 : DerivedMapBatches.Batch055.certificate4444.Valid := DerivedMapBatches.Batch055.certificate4444valid
theorem outputValid1072 : DerivedMapBatches.Batch055.certificate4445.Valid := DerivedMapBatches.Batch055.certificate4445valid
theorem linkedComposition1072 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4445.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4445.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4444.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) := by
  rw [firstLink1072, secondLink1072]
  exact DerivedMapBatches.Batch055.certificate4445valid.2 x
theorem outputZero1072 : DerivedMapBatches.Batch055.certificate4445.c = (fun _ _ => false) := by decide
theorem linkedZero1072 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4445.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4444.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1072, outputZero1072]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1073 : DerivedMapBatches.Batch001.certificate107.algebra.mat = DerivedMapBatches.Batch055.certificate4446.a := by decide
theorem secondLink1073 : DerivedMapBatches.Batch033.certificate2701.algebra.mat = DerivedMapBatches.Batch055.certificate4446.b := by decide
theorem firstValid1073 : DerivedMapBatches.Batch001.certificate107.Valid := DerivedMapBatches.Batch001.certificate107valid
theorem secondValid1073 : DerivedMapBatches.Batch033.certificate2701.Valid := DerivedMapBatches.Batch033.certificate2701valid
theorem outputValid1073 : DerivedMapBatches.Batch055.certificate4446.Valid := DerivedMapBatches.Batch055.certificate4446valid
theorem linkedComposition1073 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4446.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) := by
  rw [firstLink1073, secondLink1073]
  exact DerivedMapBatches.Batch055.certificate4446valid.2 x
theorem outputZero1073 : DerivedMapBatches.Batch055.certificate4446.c = (fun _ _ => false) := by decide
theorem linkedZero1073 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1073, outputZero1073]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1074 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch055.certificate4447.a := by decide
theorem secondLink1074 : DerivedMapBatches.Batch033.certificate2703.algebra.mat = DerivedMapBatches.Batch055.certificate4447.b := by decide
theorem firstValid1074 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem secondValid1074 : DerivedMapBatches.Batch033.certificate2703.Valid := DerivedMapBatches.Batch033.certificate2703valid
theorem outputValid1074 : DerivedMapBatches.Batch055.certificate4447.Valid := DerivedMapBatches.Batch055.certificate4447valid
theorem linkedComposition1074 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4447.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4447.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) := by
  rw [firstLink1074, secondLink1074]
  exact DerivedMapBatches.Batch055.certificate4447valid.2 x
theorem outputZero1074 : DerivedMapBatches.Batch055.certificate4447.c = (fun _ _ => false) := by decide
theorem linkedZero1074 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4447.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1074, outputZero1074]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1075 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch055.certificate4449.a := by decide
theorem secondLink1075 : DerivedMapBatches.Batch055.certificate4448.algebra.mat = DerivedMapBatches.Batch055.certificate4449.b := by decide
theorem firstValid1075 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem secondValid1075 : DerivedMapBatches.Batch055.certificate4448.Valid := DerivedMapBatches.Batch055.certificate4448valid
theorem outputValid1075 : DerivedMapBatches.Batch055.certificate4449.Valid := DerivedMapBatches.Batch055.certificate4449valid
theorem linkedComposition1075 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4449.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) := by
  rw [firstLink1075, secondLink1075]
  exact DerivedMapBatches.Batch055.certificate4449valid.2 x
theorem outputZero1075 : DerivedMapBatches.Batch055.certificate4449.c = (fun _ _ => false) := by decide
theorem linkedZero1075 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1075, outputZero1075]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1076 : DerivedMapBatches.Batch001.certificate111.algebra.mat = DerivedMapBatches.Batch055.certificate4450.a := by decide
theorem secondLink1076 : DerivedMapBatches.Batch033.certificate2706.algebra.mat = DerivedMapBatches.Batch055.certificate4450.b := by decide
theorem firstValid1076 : DerivedMapBatches.Batch001.certificate111.Valid := DerivedMapBatches.Batch001.certificate111valid
theorem secondValid1076 : DerivedMapBatches.Batch033.certificate2706.Valid := DerivedMapBatches.Batch033.certificate2706valid
theorem outputValid1076 : DerivedMapBatches.Batch055.certificate4450.Valid := DerivedMapBatches.Batch055.certificate4450valid
theorem linkedComposition1076 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4450.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4450.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) := by
  rw [firstLink1076, secondLink1076]
  exact DerivedMapBatches.Batch055.certificate4450valid.2 x
theorem outputZero1076 : DerivedMapBatches.Batch055.certificate4450.c = (fun _ _ => false) := by decide
theorem linkedZero1076 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4450.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1076, outputZero1076]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1077 : DerivedMapBatches.Batch001.certificate112.algebra.mat = DerivedMapBatches.Batch055.certificate4452.a := by decide
theorem secondLink1077 : DerivedMapBatches.Batch055.certificate4451.algebra.mat = DerivedMapBatches.Batch055.certificate4452.b := by decide
theorem firstValid1077 : DerivedMapBatches.Batch001.certificate112.Valid := DerivedMapBatches.Batch001.certificate112valid
theorem secondValid1077 : DerivedMapBatches.Batch055.certificate4451.Valid := DerivedMapBatches.Batch055.certificate4451valid
theorem outputValid1077 : DerivedMapBatches.Batch055.certificate4452.Valid := DerivedMapBatches.Batch055.certificate4452valid
theorem linkedComposition1077 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4452.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) := by
  rw [firstLink1077, secondLink1077]
  exact DerivedMapBatches.Batch055.certificate4452valid.2 x
theorem outputZero1077 : DerivedMapBatches.Batch055.certificate4452.c = (fun _ _ => false) := by decide
theorem linkedZero1077 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1077, outputZero1077]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1078 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch055.certificate4453.a := by decide
theorem secondLink1078 : DerivedMapBatches.Batch033.certificate2707.algebra.mat = DerivedMapBatches.Batch055.certificate4453.b := by decide
theorem firstValid1078 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem secondValid1078 : DerivedMapBatches.Batch033.certificate2707.Valid := DerivedMapBatches.Batch033.certificate2707valid
theorem outputValid1078 : DerivedMapBatches.Batch055.certificate4453.Valid := DerivedMapBatches.Batch055.certificate4453valid
theorem linkedComposition1078 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4453.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4453.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) := by
  rw [firstLink1078, secondLink1078]
  exact DerivedMapBatches.Batch055.certificate4453valid.2 x
theorem outputZero1078 : DerivedMapBatches.Batch055.certificate4453.c = (fun _ _ => false) := by decide
theorem linkedZero1078 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4453.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1078, outputZero1078]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1079 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch055.certificate4454.a := by decide
theorem secondLink1079 : DerivedMapBatches.Batch033.certificate2708.algebra.mat = DerivedMapBatches.Batch055.certificate4454.b := by decide
theorem firstValid1079 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem secondValid1079 : DerivedMapBatches.Batch033.certificate2708.Valid := DerivedMapBatches.Batch033.certificate2708valid
theorem outputValid1079 : DerivedMapBatches.Batch055.certificate4454.Valid := DerivedMapBatches.Batch055.certificate4454valid
theorem linkedComposition1079 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4454.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4454.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) := by
  rw [firstLink1079, secondLink1079]
  exact DerivedMapBatches.Batch055.certificate4454valid.2 x
theorem outputZero1079 : DerivedMapBatches.Batch055.certificate4454.c = (fun _ _ => false) := by decide
theorem linkedZero1079 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4454.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1079, outputZero1079]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1080 : DerivedMapBatches.Batch001.certificate115.algebra.mat = DerivedMapBatches.Batch055.certificate4455.a := by decide
theorem secondLink1080 : DerivedMapBatches.Batch033.certificate2710.algebra.mat = DerivedMapBatches.Batch055.certificate4455.b := by decide
theorem firstValid1080 : DerivedMapBatches.Batch001.certificate115.Valid := DerivedMapBatches.Batch001.certificate115valid
theorem secondValid1080 : DerivedMapBatches.Batch033.certificate2710.Valid := DerivedMapBatches.Batch033.certificate2710valid
theorem outputValid1080 : DerivedMapBatches.Batch055.certificate4455.Valid := DerivedMapBatches.Batch055.certificate4455valid
theorem linkedComposition1080 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4455.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) := by
  rw [firstLink1080, secondLink1080]
  exact DerivedMapBatches.Batch055.certificate4455valid.2 x
theorem outputZero1080 : DerivedMapBatches.Batch055.certificate4455.c = (fun _ _ => false) := by decide
theorem linkedZero1080 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1080, outputZero1080]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1081 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch055.certificate4457.a := by decide
theorem secondLink1081 : DerivedMapBatches.Batch055.certificate4456.algebra.mat = DerivedMapBatches.Batch055.certificate4457.b := by decide
theorem firstValid1081 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem secondValid1081 : DerivedMapBatches.Batch055.certificate4456.Valid := DerivedMapBatches.Batch055.certificate4456valid
theorem outputValid1081 : DerivedMapBatches.Batch055.certificate4457.Valid := DerivedMapBatches.Batch055.certificate4457valid
theorem linkedComposition1081 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4457.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4457.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4456.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) := by
  rw [firstLink1081, secondLink1081]
  exact DerivedMapBatches.Batch055.certificate4457valid.2 x
theorem outputZero1081 : DerivedMapBatches.Batch055.certificate4457.c = (fun _ _ => false) := by decide
theorem linkedZero1081 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4457.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4456.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1081, outputZero1081]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1082 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch055.certificate4458.a := by decide
theorem secondLink1082 : DerivedMapBatches.Batch033.certificate2711.algebra.mat = DerivedMapBatches.Batch055.certificate4458.b := by decide
theorem firstValid1082 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem secondValid1082 : DerivedMapBatches.Batch033.certificate2711.Valid := DerivedMapBatches.Batch033.certificate2711valid
theorem outputValid1082 : DerivedMapBatches.Batch055.certificate4458.Valid := DerivedMapBatches.Batch055.certificate4458valid
theorem linkedComposition1082 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4458.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) := by
  rw [firstLink1082, secondLink1082]
  exact DerivedMapBatches.Batch055.certificate4458valid.2 x
theorem outputZero1082 : DerivedMapBatches.Batch055.certificate4458.c = (fun _ _ => false) := by decide
theorem linkedZero1082 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1082, outputZero1082]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1083 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch055.certificate4460.a := by decide
theorem secondLink1083 : DerivedMapBatches.Batch055.certificate4459.algebra.mat = DerivedMapBatches.Batch055.certificate4460.b := by decide
theorem firstValid1083 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem secondValid1083 : DerivedMapBatches.Batch055.certificate4459.Valid := DerivedMapBatches.Batch055.certificate4459valid
theorem outputValid1083 : DerivedMapBatches.Batch055.certificate4460.Valid := DerivedMapBatches.Batch055.certificate4460valid
theorem linkedComposition1083 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4460.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4460.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4459.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) := by
  rw [firstLink1083, secondLink1083]
  exact DerivedMapBatches.Batch055.certificate4460valid.2 x
theorem outputZero1083 : DerivedMapBatches.Batch055.certificate4460.c = (fun _ _ => false) := by decide
theorem linkedZero1083 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4460.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4459.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1083, outputZero1083]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1084 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch055.certificate4462.a := by decide
theorem secondLink1084 : DerivedMapBatches.Batch055.certificate4461.algebra.mat = DerivedMapBatches.Batch055.certificate4462.b := by decide
theorem firstValid1084 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem secondValid1084 : DerivedMapBatches.Batch055.certificate4461.Valid := DerivedMapBatches.Batch055.certificate4461valid
theorem outputValid1084 : DerivedMapBatches.Batch055.certificate4462.Valid := DerivedMapBatches.Batch055.certificate4462valid
theorem linkedComposition1084 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4462.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4462.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4461.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) := by
  rw [firstLink1084, secondLink1084]
  exact DerivedMapBatches.Batch055.certificate4462valid.2 x
theorem outputZero1084 : DerivedMapBatches.Batch055.certificate4462.c = (fun _ _ => false) := by decide
theorem linkedZero1084 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4462.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4461.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1084, outputZero1084]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1085 : DerivedMapBatches.Batch001.certificate120.algebra.mat = DerivedMapBatches.Batch055.certificate4463.a := by decide
theorem secondLink1085 : DerivedMapBatches.Batch033.certificate2712.algebra.mat = DerivedMapBatches.Batch055.certificate4463.b := by decide
theorem firstValid1085 : DerivedMapBatches.Batch001.certificate120.Valid := DerivedMapBatches.Batch001.certificate120valid
theorem secondValid1085 : DerivedMapBatches.Batch033.certificate2712.Valid := DerivedMapBatches.Batch033.certificate2712valid
theorem outputValid1085 : DerivedMapBatches.Batch055.certificate4463.Valid := DerivedMapBatches.Batch055.certificate4463valid
theorem linkedComposition1085 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4463.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4463.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) := by
  rw [firstLink1085, secondLink1085]
  exact DerivedMapBatches.Batch055.certificate4463valid.2 x
theorem outputZero1085 : DerivedMapBatches.Batch055.certificate4463.c = (fun _ _ => false) := by decide
theorem linkedZero1085 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4463.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1085, outputZero1085]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1086 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch055.certificate4465.a := by decide
theorem secondLink1086 : DerivedMapBatches.Batch055.certificate4464.algebra.mat = DerivedMapBatches.Batch055.certificate4465.b := by decide
theorem firstValid1086 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem secondValid1086 : DerivedMapBatches.Batch055.certificate4464.Valid := DerivedMapBatches.Batch055.certificate4464valid
theorem outputValid1086 : DerivedMapBatches.Batch055.certificate4465.Valid := DerivedMapBatches.Batch055.certificate4465valid
theorem linkedComposition1086 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4465.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4465.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4464.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) := by
  rw [firstLink1086, secondLink1086]
  exact DerivedMapBatches.Batch055.certificate4465valid.2 x
theorem outputZero1086 : DerivedMapBatches.Batch055.certificate4465.c = (fun _ _ => false) := by decide
theorem linkedZero1086 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4465.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4464.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1086, outputZero1086]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1087 : DerivedMapBatches.Batch001.certificate122.algebra.mat = DerivedMapBatches.Batch055.certificate4466.a := by decide
theorem secondLink1087 : DerivedMapBatches.Batch033.certificate2713.algebra.mat = DerivedMapBatches.Batch055.certificate4466.b := by decide
theorem firstValid1087 : DerivedMapBatches.Batch001.certificate122.Valid := DerivedMapBatches.Batch001.certificate122valid
theorem secondValid1087 : DerivedMapBatches.Batch033.certificate2713.Valid := DerivedMapBatches.Batch033.certificate2713valid
theorem outputValid1087 : DerivedMapBatches.Batch055.certificate4466.Valid := DerivedMapBatches.Batch055.certificate4466valid
theorem linkedComposition1087 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4466.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4466.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) := by
  rw [firstLink1087, secondLink1087]
  exact DerivedMapBatches.Batch055.certificate4466valid.2 x
theorem outputZero1087 : DerivedMapBatches.Batch055.certificate4466.c = (fun _ _ => false) := by decide
theorem linkedZero1087 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4466.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1087, outputZero1087]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1088 : DerivedMapBatches.Batch001.certificate123.algebra.mat = DerivedMapBatches.Batch055.certificate4467.a := by decide
theorem secondLink1088 : DerivedMapBatches.Batch033.certificate2714.algebra.mat = DerivedMapBatches.Batch055.certificate4467.b := by decide
theorem firstValid1088 : DerivedMapBatches.Batch001.certificate123.Valid := DerivedMapBatches.Batch001.certificate123valid
theorem secondValid1088 : DerivedMapBatches.Batch033.certificate2714.Valid := DerivedMapBatches.Batch033.certificate2714valid
theorem outputValid1088 : DerivedMapBatches.Batch055.certificate4467.Valid := DerivedMapBatches.Batch055.certificate4467valid
theorem linkedComposition1088 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4467.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4467.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) := by
  rw [firstLink1088, secondLink1088]
  exact DerivedMapBatches.Batch055.certificate4467valid.2 x
theorem outputZero1088 : DerivedMapBatches.Batch055.certificate4467.c = (fun _ _ => false) := by decide
theorem linkedZero1088 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4467.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1088, outputZero1088]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1089 : DerivedMapBatches.Batch001.certificate124.algebra.mat = DerivedMapBatches.Batch055.certificate4468.a := by decide
theorem secondLink1089 : DerivedMapBatches.Batch033.certificate2715.algebra.mat = DerivedMapBatches.Batch055.certificate4468.b := by decide
theorem firstValid1089 : DerivedMapBatches.Batch001.certificate124.Valid := DerivedMapBatches.Batch001.certificate124valid
theorem secondValid1089 : DerivedMapBatches.Batch033.certificate2715.Valid := DerivedMapBatches.Batch033.certificate2715valid
theorem outputValid1089 : DerivedMapBatches.Batch055.certificate4468.Valid := DerivedMapBatches.Batch055.certificate4468valid
theorem linkedComposition1089 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4468.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4468.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) := by
  rw [firstLink1089, secondLink1089]
  exact DerivedMapBatches.Batch055.certificate4468valid.2 x
theorem outputZero1089 : DerivedMapBatches.Batch055.certificate4468.c = (fun _ _ => false) := by decide
theorem linkedZero1089 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4468.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1089, outputZero1089]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1090 : DerivedMapBatches.Batch001.certificate125.algebra.mat = DerivedMapBatches.Batch055.certificate4469.a := by decide
theorem secondLink1090 : DerivedMapBatches.Batch033.certificate2716.algebra.mat = DerivedMapBatches.Batch055.certificate4469.b := by decide
theorem firstValid1090 : DerivedMapBatches.Batch001.certificate125.Valid := DerivedMapBatches.Batch001.certificate125valid
theorem secondValid1090 : DerivedMapBatches.Batch033.certificate2716.Valid := DerivedMapBatches.Batch033.certificate2716valid
theorem outputValid1090 : DerivedMapBatches.Batch055.certificate4469.Valid := DerivedMapBatches.Batch055.certificate4469valid
theorem linkedComposition1090 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4469.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4469.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) := by
  rw [firstLink1090, secondLink1090]
  exact DerivedMapBatches.Batch055.certificate4469valid.2 x
theorem outputZero1090 : DerivedMapBatches.Batch055.certificate4469.c = (fun _ _ => false) := by decide
theorem linkedZero1090 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4469.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1090, outputZero1090]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1091 : DerivedMapBatches.Batch001.certificate126.algebra.mat = DerivedMapBatches.Batch055.certificate4470.a := by decide
theorem secondLink1091 : DerivedMapBatches.Batch033.certificate2717.algebra.mat = DerivedMapBatches.Batch055.certificate4470.b := by decide
theorem firstValid1091 : DerivedMapBatches.Batch001.certificate126.Valid := DerivedMapBatches.Batch001.certificate126valid
theorem secondValid1091 : DerivedMapBatches.Batch033.certificate2717.Valid := DerivedMapBatches.Batch033.certificate2717valid
theorem outputValid1091 : DerivedMapBatches.Batch055.certificate4470.Valid := DerivedMapBatches.Batch055.certificate4470valid
theorem linkedComposition1091 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4470.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4470.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) := by
  rw [firstLink1091, secondLink1091]
  exact DerivedMapBatches.Batch055.certificate4470valid.2 x
theorem outputZero1091 : DerivedMapBatches.Batch055.certificate4470.c = (fun _ _ => false) := by decide
theorem linkedZero1091 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4470.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1091, outputZero1091]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1092 : DerivedMapBatches.Batch001.certificate127.algebra.mat = DerivedMapBatches.Batch055.certificate4471.a := by decide
theorem secondLink1092 : DerivedMapBatches.Batch033.certificate2718.algebra.mat = DerivedMapBatches.Batch055.certificate4471.b := by decide
theorem firstValid1092 : DerivedMapBatches.Batch001.certificate127.Valid := DerivedMapBatches.Batch001.certificate127valid
theorem secondValid1092 : DerivedMapBatches.Batch033.certificate2718.Valid := DerivedMapBatches.Batch033.certificate2718valid
theorem outputValid1092 : DerivedMapBatches.Batch055.certificate4471.Valid := DerivedMapBatches.Batch055.certificate4471valid
theorem linkedComposition1092 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4471.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4471.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) := by
  rw [firstLink1092, secondLink1092]
  exact DerivedMapBatches.Batch055.certificate4471valid.2 x
theorem outputZero1092 : DerivedMapBatches.Batch055.certificate4471.c = (fun _ _ => false) := by decide
theorem linkedZero1092 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4471.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1092, outputZero1092]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1093 : DerivedMapBatches.Batch001.certificate128.algebra.mat = DerivedMapBatches.Batch055.certificate4472.a := by decide
theorem secondLink1093 : DerivedMapBatches.Batch033.certificate2719.algebra.mat = DerivedMapBatches.Batch055.certificate4472.b := by decide
theorem firstValid1093 : DerivedMapBatches.Batch001.certificate128.Valid := DerivedMapBatches.Batch001.certificate128valid
theorem secondValid1093 : DerivedMapBatches.Batch033.certificate2719.Valid := DerivedMapBatches.Batch033.certificate2719valid
theorem outputValid1093 : DerivedMapBatches.Batch055.certificate4472.Valid := DerivedMapBatches.Batch055.certificate4472valid
theorem linkedComposition1093 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4472.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4472.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) := by
  rw [firstLink1093, secondLink1093]
  exact DerivedMapBatches.Batch055.certificate4472valid.2 x
theorem outputZero1093 : DerivedMapBatches.Batch055.certificate4472.c = (fun _ _ => false) := by decide
theorem linkedZero1093 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4472.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1093, outputZero1093]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1094 : DerivedMapBatches.Batch001.certificate129.algebra.mat = DerivedMapBatches.Batch055.certificate4474.a := by decide
theorem secondLink1094 : DerivedMapBatches.Batch055.certificate4473.algebra.mat = DerivedMapBatches.Batch055.certificate4474.b := by decide
theorem firstValid1094 : DerivedMapBatches.Batch001.certificate129.Valid := DerivedMapBatches.Batch001.certificate129valid
theorem secondValid1094 : DerivedMapBatches.Batch055.certificate4473.Valid := DerivedMapBatches.Batch055.certificate4473valid
theorem outputValid1094 : DerivedMapBatches.Batch055.certificate4474.Valid := DerivedMapBatches.Batch055.certificate4474valid
theorem linkedComposition1094 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4474.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4474.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4473.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) := by
  rw [firstLink1094, secondLink1094]
  exact DerivedMapBatches.Batch055.certificate4474valid.2 x
theorem outputZero1094 : DerivedMapBatches.Batch055.certificate4474.c = (fun _ _ => false) := by decide
theorem linkedZero1094 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4474.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4473.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1094, outputZero1094]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1095 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch055.certificate4476.a := by decide
theorem secondLink1095 : DerivedMapBatches.Batch055.certificate4475.algebra.mat = DerivedMapBatches.Batch055.certificate4476.b := by decide
theorem firstValid1095 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem secondValid1095 : DerivedMapBatches.Batch055.certificate4475.Valid := DerivedMapBatches.Batch055.certificate4475valid
theorem outputValid1095 : DerivedMapBatches.Batch055.certificate4476.Valid := DerivedMapBatches.Batch055.certificate4476valid
theorem linkedComposition1095 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4476.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4476.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4475.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) := by
  rw [firstLink1095, secondLink1095]
  exact DerivedMapBatches.Batch055.certificate4476valid.2 x
theorem outputZero1095 : DerivedMapBatches.Batch055.certificate4476.c = (fun _ _ => false) := by decide
theorem linkedZero1095 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4476.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4475.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1095, outputZero1095]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1096 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch055.certificate4477.a := by decide
theorem secondLink1096 : DerivedMapBatches.Batch034.certificate2729.algebra.mat = DerivedMapBatches.Batch055.certificate4477.b := by decide
theorem firstValid1096 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem secondValid1096 : DerivedMapBatches.Batch034.certificate2729.Valid := DerivedMapBatches.Batch034.certificate2729valid
theorem outputValid1096 : DerivedMapBatches.Batch055.certificate4477.Valid := DerivedMapBatches.Batch055.certificate4477valid
theorem linkedComposition1096 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4477.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4477.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) := by
  rw [firstLink1096, secondLink1096]
  exact DerivedMapBatches.Batch055.certificate4477valid.2 x
theorem outputZero1096 : DerivedMapBatches.Batch055.certificate4477.c = (fun _ _ => false) := by decide
theorem linkedZero1096 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4477.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1096, outputZero1096]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1097 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch055.certificate4479.a := by decide
theorem secondLink1097 : DerivedMapBatches.Batch055.certificate4478.algebra.mat = DerivedMapBatches.Batch055.certificate4479.b := by decide
theorem firstValid1097 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem secondValid1097 : DerivedMapBatches.Batch055.certificate4478.Valid := DerivedMapBatches.Batch055.certificate4478valid
theorem outputValid1097 : DerivedMapBatches.Batch055.certificate4479.Valid := DerivedMapBatches.Batch055.certificate4479valid
theorem linkedComposition1097 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4479.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4479.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4478.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) := by
  rw [firstLink1097, secondLink1097]
  exact DerivedMapBatches.Batch055.certificate4479valid.2 x
theorem outputZero1097 : DerivedMapBatches.Batch055.certificate4479.c = (fun _ _ => false) := by decide
theorem linkedZero1097 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4479.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4478.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1097, outputZero1097]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1098 : DerivedMapBatches.Batch001.certificate112.algebra.mat = DerivedMapBatches.Batch056.certificate4481.a := by decide
theorem secondLink1098 : DerivedMapBatches.Batch056.certificate4480.algebra.mat = DerivedMapBatches.Batch056.certificate4481.b := by decide
theorem firstValid1098 : DerivedMapBatches.Batch001.certificate112.Valid := DerivedMapBatches.Batch001.certificate112valid
theorem secondValid1098 : DerivedMapBatches.Batch056.certificate4480.Valid := DerivedMapBatches.Batch056.certificate4480valid
theorem outputValid1098 : DerivedMapBatches.Batch056.certificate4481.Valid := DerivedMapBatches.Batch056.certificate4481valid
theorem linkedComposition1098 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4481.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4481.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4480.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) := by
  rw [firstLink1098, secondLink1098]
  exact DerivedMapBatches.Batch056.certificate4481valid.2 x
theorem outputZero1098 : DerivedMapBatches.Batch056.certificate4481.c = (fun _ _ => false) := by decide
theorem linkedZero1098 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4481.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4480.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1098, outputZero1098]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1099 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch056.certificate4482.a := by decide
theorem secondLink1099 : DerivedMapBatches.Batch034.certificate2733.algebra.mat = DerivedMapBatches.Batch056.certificate4482.b := by decide
theorem firstValid1099 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem secondValid1099 : DerivedMapBatches.Batch034.certificate2733.Valid := DerivedMapBatches.Batch034.certificate2733valid
theorem outputValid1099 : DerivedMapBatches.Batch056.certificate4482.Valid := DerivedMapBatches.Batch056.certificate4482valid
theorem linkedComposition1099 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4482.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4482.c x = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2733.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) := by
  rw [firstLink1099, secondLink1099]
  exact DerivedMapBatches.Batch056.certificate4482valid.2 x
theorem outputZero1099 : DerivedMapBatches.Batch056.certificate4482.c = (fun _ _ => false) := by decide
theorem linkedZero1099 (x : LinearCertificates.Vec DerivedMapBatches.Batch056.certificate4482.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch034.certificate2733.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1099, outputZero1099]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch021
