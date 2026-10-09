import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch034
import DerivedMapBatches.Batch052
import DerivedMapBatches.Batch053
import DerivedMapBatches.Batch057
import DerivedMapBatches.Batch058
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch023
theorem firstLink1150 : DerivedMapBatches.Batch033.certificate2710.algebra.mat = DerivedMapBatches.Batch057.certificate4581.a := by decide
theorem secondLink1150 : DerivedMapBatches.Batch057.certificate4580.algebra.mat = DerivedMapBatches.Batch057.certificate4581.b := by decide
theorem firstValid1150 : DerivedMapBatches.Batch033.certificate2710.Valid := DerivedMapBatches.Batch033.certificate2710valid
theorem secondValid1150 : DerivedMapBatches.Batch057.certificate4580.Valid := DerivedMapBatches.Batch057.certificate4580valid
theorem outputValid1150 : DerivedMapBatches.Batch057.certificate4581.Valid := DerivedMapBatches.Batch057.certificate4581valid
theorem linkedComposition1150 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4581.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4581.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat x) := by
  rw [firstLink1150, secondLink1150]
  exact DerivedMapBatches.Batch057.certificate4581valid.2 x
theorem outputZero1150 : DerivedMapBatches.Batch057.certificate4581.c = (fun _ _ => false) := by decide
theorem linkedZero1150 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4581.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4580.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1150, outputZero1150]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1151 : DerivedMapBatches.Batch033.certificate2711.algebra.mat = DerivedMapBatches.Batch057.certificate4583.a := by decide
theorem secondLink1151 : DerivedMapBatches.Batch057.certificate4582.algebra.mat = DerivedMapBatches.Batch057.certificate4583.b := by decide
theorem firstValid1151 : DerivedMapBatches.Batch033.certificate2711.Valid := DerivedMapBatches.Batch033.certificate2711valid
theorem secondValid1151 : DerivedMapBatches.Batch057.certificate4582.Valid := DerivedMapBatches.Batch057.certificate4582valid
theorem outputValid1151 : DerivedMapBatches.Batch057.certificate4583.Valid := DerivedMapBatches.Batch057.certificate4583valid
theorem linkedComposition1151 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4583.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4583.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4582.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat x) := by
  rw [firstLink1151, secondLink1151]
  exact DerivedMapBatches.Batch057.certificate4583valid.2 x
theorem outputZero1151 : DerivedMapBatches.Batch057.certificate4583.c = (fun _ _ => false) := by decide
theorem linkedZero1151 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4583.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4582.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1151, outputZero1151]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1152 : DerivedMapBatches.Batch033.certificate2712.algebra.mat = DerivedMapBatches.Batch057.certificate4585.a := by decide
theorem secondLink1152 : DerivedMapBatches.Batch057.certificate4584.algebra.mat = DerivedMapBatches.Batch057.certificate4585.b := by decide
theorem firstValid1152 : DerivedMapBatches.Batch033.certificate2712.Valid := DerivedMapBatches.Batch033.certificate2712valid
theorem secondValid1152 : DerivedMapBatches.Batch057.certificate4584.Valid := DerivedMapBatches.Batch057.certificate4584valid
theorem outputValid1152 : DerivedMapBatches.Batch057.certificate4585.Valid := DerivedMapBatches.Batch057.certificate4585valid
theorem linkedComposition1152 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4585.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4585.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4584.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat x) := by
  rw [firstLink1152, secondLink1152]
  exact DerivedMapBatches.Batch057.certificate4585valid.2 x
theorem outputZero1152 : DerivedMapBatches.Batch057.certificate4585.c = (fun _ _ => false) := by decide
theorem linkedZero1152 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4585.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4584.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1152, outputZero1152]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1153 : DerivedMapBatches.Batch033.certificate2713.algebra.mat = DerivedMapBatches.Batch057.certificate4587.a := by decide
theorem secondLink1153 : DerivedMapBatches.Batch057.certificate4586.algebra.mat = DerivedMapBatches.Batch057.certificate4587.b := by decide
theorem firstValid1153 : DerivedMapBatches.Batch033.certificate2713.Valid := DerivedMapBatches.Batch033.certificate2713valid
theorem secondValid1153 : DerivedMapBatches.Batch057.certificate4586.Valid := DerivedMapBatches.Batch057.certificate4586valid
theorem outputValid1153 : DerivedMapBatches.Batch057.certificate4587.Valid := DerivedMapBatches.Batch057.certificate4587valid
theorem linkedComposition1153 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4587.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4587.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4586.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat x) := by
  rw [firstLink1153, secondLink1153]
  exact DerivedMapBatches.Batch057.certificate4587valid.2 x
theorem outputZero1153 : DerivedMapBatches.Batch057.certificate4587.c = (fun _ _ => false) := by decide
theorem linkedZero1153 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4587.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4586.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1153, outputZero1153]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1154 : DerivedMapBatches.Batch033.certificate2714.algebra.mat = DerivedMapBatches.Batch057.certificate4589.a := by decide
theorem secondLink1154 : DerivedMapBatches.Batch057.certificate4588.algebra.mat = DerivedMapBatches.Batch057.certificate4589.b := by decide
theorem firstValid1154 : DerivedMapBatches.Batch033.certificate2714.Valid := DerivedMapBatches.Batch033.certificate2714valid
theorem secondValid1154 : DerivedMapBatches.Batch057.certificate4588.Valid := DerivedMapBatches.Batch057.certificate4588valid
theorem outputValid1154 : DerivedMapBatches.Batch057.certificate4589.Valid := DerivedMapBatches.Batch057.certificate4589valid
theorem linkedComposition1154 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4589.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4589.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4588.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat x) := by
  rw [firstLink1154, secondLink1154]
  exact DerivedMapBatches.Batch057.certificate4589valid.2 x
theorem outputZero1154 : DerivedMapBatches.Batch057.certificate4589.c = (fun _ _ => false) := by decide
theorem linkedZero1154 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4589.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4588.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1154, outputZero1154]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1155 : DerivedMapBatches.Batch033.certificate2715.algebra.mat = DerivedMapBatches.Batch057.certificate4591.a := by decide
theorem secondLink1155 : DerivedMapBatches.Batch057.certificate4590.algebra.mat = DerivedMapBatches.Batch057.certificate4591.b := by decide
theorem firstValid1155 : DerivedMapBatches.Batch033.certificate2715.Valid := DerivedMapBatches.Batch033.certificate2715valid
theorem secondValid1155 : DerivedMapBatches.Batch057.certificate4590.Valid := DerivedMapBatches.Batch057.certificate4590valid
theorem outputValid1155 : DerivedMapBatches.Batch057.certificate4591.Valid := DerivedMapBatches.Batch057.certificate4591valid
theorem linkedComposition1155 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4591.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4591.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4590.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat x) := by
  rw [firstLink1155, secondLink1155]
  exact DerivedMapBatches.Batch057.certificate4591valid.2 x
theorem outputZero1155 : DerivedMapBatches.Batch057.certificate4591.c = (fun _ _ => false) := by decide
theorem linkedZero1155 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4591.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4590.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1155, outputZero1155]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1156 : DerivedMapBatches.Batch033.certificate2716.algebra.mat = DerivedMapBatches.Batch057.certificate4593.a := by decide
theorem secondLink1156 : DerivedMapBatches.Batch057.certificate4592.algebra.mat = DerivedMapBatches.Batch057.certificate4593.b := by decide
theorem firstValid1156 : DerivedMapBatches.Batch033.certificate2716.Valid := DerivedMapBatches.Batch033.certificate2716valid
theorem secondValid1156 : DerivedMapBatches.Batch057.certificate4592.Valid := DerivedMapBatches.Batch057.certificate4592valid
theorem outputValid1156 : DerivedMapBatches.Batch057.certificate4593.Valid := DerivedMapBatches.Batch057.certificate4593valid
theorem linkedComposition1156 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4593.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4593.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4592.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat x) := by
  rw [firstLink1156, secondLink1156]
  exact DerivedMapBatches.Batch057.certificate4593valid.2 x
theorem outputZero1156 : DerivedMapBatches.Batch057.certificate4593.c = (fun _ _ => false) := by decide
theorem linkedZero1156 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4593.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4592.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1156, outputZero1156]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1157 : DerivedMapBatches.Batch033.certificate2717.algebra.mat = DerivedMapBatches.Batch057.certificate4595.a := by decide
theorem secondLink1157 : DerivedMapBatches.Batch057.certificate4594.algebra.mat = DerivedMapBatches.Batch057.certificate4595.b := by decide
theorem firstValid1157 : DerivedMapBatches.Batch033.certificate2717.Valid := DerivedMapBatches.Batch033.certificate2717valid
theorem secondValid1157 : DerivedMapBatches.Batch057.certificate4594.Valid := DerivedMapBatches.Batch057.certificate4594valid
theorem outputValid1157 : DerivedMapBatches.Batch057.certificate4595.Valid := DerivedMapBatches.Batch057.certificate4595valid
theorem linkedComposition1157 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4595.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4595.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4594.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat x) := by
  rw [firstLink1157, secondLink1157]
  exact DerivedMapBatches.Batch057.certificate4595valid.2 x
theorem outputZero1157 : DerivedMapBatches.Batch057.certificate4595.c = (fun _ _ => false) := by decide
theorem linkedZero1157 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4595.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4594.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1157, outputZero1157]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1158 : DerivedMapBatches.Batch033.certificate2718.algebra.mat = DerivedMapBatches.Batch057.certificate4597.a := by decide
theorem secondLink1158 : DerivedMapBatches.Batch057.certificate4596.algebra.mat = DerivedMapBatches.Batch057.certificate4597.b := by decide
theorem firstValid1158 : DerivedMapBatches.Batch033.certificate2718.Valid := DerivedMapBatches.Batch033.certificate2718valid
theorem secondValid1158 : DerivedMapBatches.Batch057.certificate4596.Valid := DerivedMapBatches.Batch057.certificate4596valid
theorem outputValid1158 : DerivedMapBatches.Batch057.certificate4597.Valid := DerivedMapBatches.Batch057.certificate4597valid
theorem linkedComposition1158 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4597.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4597.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4596.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat x) := by
  rw [firstLink1158, secondLink1158]
  exact DerivedMapBatches.Batch057.certificate4597valid.2 x
theorem outputZero1158 : DerivedMapBatches.Batch057.certificate4597.c = (fun _ _ => false) := by decide
theorem linkedZero1158 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4597.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4596.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1158, outputZero1158]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1159 : DerivedMapBatches.Batch033.certificate2719.algebra.mat = DerivedMapBatches.Batch057.certificate4599.a := by decide
theorem secondLink1159 : DerivedMapBatches.Batch057.certificate4598.algebra.mat = DerivedMapBatches.Batch057.certificate4599.b := by decide
theorem firstValid1159 : DerivedMapBatches.Batch033.certificate2719.Valid := DerivedMapBatches.Batch033.certificate2719valid
theorem secondValid1159 : DerivedMapBatches.Batch057.certificate4598.Valid := DerivedMapBatches.Batch057.certificate4598valid
theorem outputValid1159 : DerivedMapBatches.Batch057.certificate4599.Valid := DerivedMapBatches.Batch057.certificate4599valid
theorem linkedComposition1159 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4599.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4599.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4598.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat x) := by
  rw [firstLink1159, secondLink1159]
  exact DerivedMapBatches.Batch057.certificate4599valid.2 x
theorem outputZero1159 : DerivedMapBatches.Batch057.certificate4599.c = (fun _ _ => false) := by decide
theorem linkedZero1159 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4599.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4598.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1159, outputZero1159]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1160 : DerivedMapBatches.Batch034.certificate2722.algebra.mat = DerivedMapBatches.Batch057.certificate4603.a := by decide
theorem secondLink1160 : DerivedMapBatches.Batch057.certificate4602.algebra.mat = DerivedMapBatches.Batch057.certificate4603.b := by decide
theorem firstValid1160 : DerivedMapBatches.Batch034.certificate2722.Valid := DerivedMapBatches.Batch034.certificate2722valid
theorem secondValid1160 : DerivedMapBatches.Batch057.certificate4602.Valid := DerivedMapBatches.Batch057.certificate4602valid
theorem outputValid1160 : DerivedMapBatches.Batch057.certificate4603.Valid := DerivedMapBatches.Batch057.certificate4603valid
theorem linkedComposition1160 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4603.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4603.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4602.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2722.algebra.mat x) := by
  rw [firstLink1160, secondLink1160]
  exact DerivedMapBatches.Batch057.certificate4603valid.2 x
theorem outputZero1160 : DerivedMapBatches.Batch057.certificate4603.c = (fun _ _ => false) := by decide
theorem linkedZero1160 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4603.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4602.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2722.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1160, outputZero1160]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1161 : DerivedMapBatches.Batch034.certificate2724.algebra.mat = DerivedMapBatches.Batch057.certificate4606.a := by decide
theorem secondLink1161 : DerivedMapBatches.Batch057.certificate4605.algebra.mat = DerivedMapBatches.Batch057.certificate4606.b := by decide
theorem firstValid1161 : DerivedMapBatches.Batch034.certificate2724.Valid := DerivedMapBatches.Batch034.certificate2724valid
theorem secondValid1161 : DerivedMapBatches.Batch057.certificate4605.Valid := DerivedMapBatches.Batch057.certificate4605valid
theorem outputValid1161 : DerivedMapBatches.Batch057.certificate4606.Valid := DerivedMapBatches.Batch057.certificate4606valid
theorem linkedComposition1161 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4606.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4606.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4605.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2724.algebra.mat x) := by
  rw [firstLink1161, secondLink1161]
  exact DerivedMapBatches.Batch057.certificate4606valid.2 x
theorem outputZero1161 : DerivedMapBatches.Batch057.certificate4606.c = (fun _ _ => false) := by decide
theorem linkedZero1161 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4606.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4605.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2724.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1161, outputZero1161]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1162 : DerivedMapBatches.Batch034.certificate2726.algebra.mat = DerivedMapBatches.Batch057.certificate4609.a := by decide
theorem secondLink1162 : DerivedMapBatches.Batch057.certificate4608.algebra.mat = DerivedMapBatches.Batch057.certificate4609.b := by decide
theorem firstValid1162 : DerivedMapBatches.Batch034.certificate2726.Valid := DerivedMapBatches.Batch034.certificate2726valid
theorem secondValid1162 : DerivedMapBatches.Batch057.certificate4608.Valid := DerivedMapBatches.Batch057.certificate4608valid
theorem outputValid1162 : DerivedMapBatches.Batch057.certificate4609.Valid := DerivedMapBatches.Batch057.certificate4609valid
theorem linkedComposition1162 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4609.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4609.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4608.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2726.algebra.mat x) := by
  rw [firstLink1162, secondLink1162]
  exact DerivedMapBatches.Batch057.certificate4609valid.2 x
theorem outputZero1162 : DerivedMapBatches.Batch057.certificate4609.c = (fun _ _ => false) := by decide
theorem linkedZero1162 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4609.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4608.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2726.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1162, outputZero1162]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1163 : DerivedMapBatches.Batch034.certificate2728.algebra.mat = DerivedMapBatches.Batch057.certificate4612.a := by decide
theorem secondLink1163 : DerivedMapBatches.Batch057.certificate4611.algebra.mat = DerivedMapBatches.Batch057.certificate4612.b := by decide
theorem firstValid1163 : DerivedMapBatches.Batch034.certificate2728.Valid := DerivedMapBatches.Batch034.certificate2728valid
theorem secondValid1163 : DerivedMapBatches.Batch057.certificate4611.Valid := DerivedMapBatches.Batch057.certificate4611valid
theorem outputValid1163 : DerivedMapBatches.Batch057.certificate4612.Valid := DerivedMapBatches.Batch057.certificate4612valid
theorem linkedComposition1163 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4612.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4612.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4611.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2728.algebra.mat x) := by
  rw [firstLink1163, secondLink1163]
  exact DerivedMapBatches.Batch057.certificate4612valid.2 x
theorem outputZero1163 : DerivedMapBatches.Batch057.certificate4612.c = (fun _ _ => false) := by decide
theorem linkedZero1163 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4612.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4611.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2728.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1163, outputZero1163]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1164 : DerivedMapBatches.Batch034.certificate2729.algebra.mat = DerivedMapBatches.Batch057.certificate4614.a := by decide
theorem secondLink1164 : DerivedMapBatches.Batch057.certificate4613.algebra.mat = DerivedMapBatches.Batch057.certificate4614.b := by decide
theorem firstValid1164 : DerivedMapBatches.Batch034.certificate2729.Valid := DerivedMapBatches.Batch034.certificate2729valid
theorem secondValid1164 : DerivedMapBatches.Batch057.certificate4613.Valid := DerivedMapBatches.Batch057.certificate4613valid
theorem outputValid1164 : DerivedMapBatches.Batch057.certificate4614.Valid := DerivedMapBatches.Batch057.certificate4614valid
theorem linkedComposition1164 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4614.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4614.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4613.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2729.algebra.mat x) := by
  rw [firstLink1164, secondLink1164]
  exact DerivedMapBatches.Batch057.certificate4614valid.2 x
theorem outputZero1164 : DerivedMapBatches.Batch057.certificate4614.c = (fun _ _ => false) := by decide
theorem linkedZero1164 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4614.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4613.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2729.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1164, outputZero1164]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1165 : DerivedMapBatches.Batch034.certificate2730.algebra.mat = DerivedMapBatches.Batch057.certificate4616.a := by decide
theorem secondLink1165 : DerivedMapBatches.Batch057.certificate4615.algebra.mat = DerivedMapBatches.Batch057.certificate4616.b := by decide
theorem firstValid1165 : DerivedMapBatches.Batch034.certificate2730.Valid := DerivedMapBatches.Batch034.certificate2730valid
theorem secondValid1165 : DerivedMapBatches.Batch057.certificate4615.Valid := DerivedMapBatches.Batch057.certificate4615valid
theorem outputValid1165 : DerivedMapBatches.Batch057.certificate4616.Valid := DerivedMapBatches.Batch057.certificate4616valid
theorem linkedComposition1165 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4616.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4616.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4615.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2730.algebra.mat x) := by
  rw [firstLink1165, secondLink1165]
  exact DerivedMapBatches.Batch057.certificate4616valid.2 x
theorem outputZero1165 : DerivedMapBatches.Batch057.certificate4616.c = (fun _ _ => false) := by decide
theorem linkedZero1165 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4616.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4615.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2730.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1165, outputZero1165]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1166 : DerivedMapBatches.Batch034.certificate2732.algebra.mat = DerivedMapBatches.Batch057.certificate4619.a := by decide
theorem secondLink1166 : DerivedMapBatches.Batch057.certificate4618.algebra.mat = DerivedMapBatches.Batch057.certificate4619.b := by decide
theorem firstValid1166 : DerivedMapBatches.Batch034.certificate2732.Valid := DerivedMapBatches.Batch034.certificate2732valid
theorem secondValid1166 : DerivedMapBatches.Batch057.certificate4618.Valid := DerivedMapBatches.Batch057.certificate4618valid
theorem outputValid1166 : DerivedMapBatches.Batch057.certificate4619.Valid := DerivedMapBatches.Batch057.certificate4619valid
theorem linkedComposition1166 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4619.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4619.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4618.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2732.algebra.mat x) := by
  rw [firstLink1166, secondLink1166]
  exact DerivedMapBatches.Batch057.certificate4619valid.2 x
theorem outputZero1166 : DerivedMapBatches.Batch057.certificate4619.c = (fun _ _ => false) := by decide
theorem linkedZero1166 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4619.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4618.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2732.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1166, outputZero1166]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1167 : DerivedMapBatches.Batch034.certificate2733.algebra.mat = DerivedMapBatches.Batch057.certificate4621.a := by decide
theorem secondLink1167 : DerivedMapBatches.Batch057.certificate4620.algebra.mat = DerivedMapBatches.Batch057.certificate4621.b := by decide
theorem firstValid1167 : DerivedMapBatches.Batch034.certificate2733.Valid := DerivedMapBatches.Batch034.certificate2733valid
theorem secondValid1167 : DerivedMapBatches.Batch057.certificate4620.Valid := DerivedMapBatches.Batch057.certificate4620valid
theorem outputValid1167 : DerivedMapBatches.Batch057.certificate4621.Valid := DerivedMapBatches.Batch057.certificate4621valid
theorem linkedComposition1167 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4621.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4621.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4620.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2733.algebra.mat x) := by
  rw [firstLink1167, secondLink1167]
  exact DerivedMapBatches.Batch057.certificate4621valid.2 x
theorem outputZero1167 : DerivedMapBatches.Batch057.certificate4621.c = (fun _ _ => false) := by decide
theorem linkedZero1167 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4621.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4620.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2733.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1167, outputZero1167]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1168 : DerivedMapBatches.Batch034.certificate2734.algebra.mat = DerivedMapBatches.Batch057.certificate4623.a := by decide
theorem secondLink1168 : DerivedMapBatches.Batch057.certificate4622.algebra.mat = DerivedMapBatches.Batch057.certificate4623.b := by decide
theorem firstValid1168 : DerivedMapBatches.Batch034.certificate2734.Valid := DerivedMapBatches.Batch034.certificate2734valid
theorem secondValid1168 : DerivedMapBatches.Batch057.certificate4622.Valid := DerivedMapBatches.Batch057.certificate4622valid
theorem outputValid1168 : DerivedMapBatches.Batch057.certificate4623.Valid := DerivedMapBatches.Batch057.certificate4623valid
theorem linkedComposition1168 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4623.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4623.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4622.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2734.algebra.mat x) := by
  rw [firstLink1168, secondLink1168]
  exact DerivedMapBatches.Batch057.certificate4623valid.2 x
theorem outputZero1168 : DerivedMapBatches.Batch057.certificate4623.c = (fun _ _ => false) := by decide
theorem linkedZero1168 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4623.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4622.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2734.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1168, outputZero1168]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1169 : DerivedMapBatches.Batch034.certificate2735.algebra.mat = DerivedMapBatches.Batch057.certificate4625.a := by decide
theorem secondLink1169 : DerivedMapBatches.Batch057.certificate4624.algebra.mat = DerivedMapBatches.Batch057.certificate4625.b := by decide
theorem firstValid1169 : DerivedMapBatches.Batch034.certificate2735.Valid := DerivedMapBatches.Batch034.certificate2735valid
theorem secondValid1169 : DerivedMapBatches.Batch057.certificate4624.Valid := DerivedMapBatches.Batch057.certificate4624valid
theorem outputValid1169 : DerivedMapBatches.Batch057.certificate4625.Valid := DerivedMapBatches.Batch057.certificate4625valid
theorem linkedComposition1169 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4625.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4625.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4624.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2735.algebra.mat x) := by
  rw [firstLink1169, secondLink1169]
  exact DerivedMapBatches.Batch057.certificate4625valid.2 x
theorem outputZero1169 : DerivedMapBatches.Batch057.certificate4625.c = (fun _ _ => false) := by decide
theorem linkedZero1169 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4625.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4624.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2735.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1169, outputZero1169]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1170 : DerivedMapBatches.Batch034.certificate2737.algebra.mat = DerivedMapBatches.Batch057.certificate4628.a := by decide
theorem secondLink1170 : DerivedMapBatches.Batch057.certificate4627.algebra.mat = DerivedMapBatches.Batch057.certificate4628.b := by decide
theorem firstValid1170 : DerivedMapBatches.Batch034.certificate2737.Valid := DerivedMapBatches.Batch034.certificate2737valid
theorem secondValid1170 : DerivedMapBatches.Batch057.certificate4627.Valid := DerivedMapBatches.Batch057.certificate4627valid
theorem outputValid1170 : DerivedMapBatches.Batch057.certificate4628.Valid := DerivedMapBatches.Batch057.certificate4628valid
theorem linkedComposition1170 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4628.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4628.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4627.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2737.algebra.mat x) := by
  rw [firstLink1170, secondLink1170]
  exact DerivedMapBatches.Batch057.certificate4628valid.2 x
theorem outputZero1170 : DerivedMapBatches.Batch057.certificate4628.c = (fun _ _ => false) := by decide
theorem linkedZero1170 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4628.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4627.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2737.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1170, outputZero1170]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1171 : DerivedMapBatches.Batch034.certificate2740.algebra.mat = DerivedMapBatches.Batch057.certificate4632.a := by decide
theorem secondLink1171 : DerivedMapBatches.Batch057.certificate4631.algebra.mat = DerivedMapBatches.Batch057.certificate4632.b := by decide
theorem firstValid1171 : DerivedMapBatches.Batch034.certificate2740.Valid := DerivedMapBatches.Batch034.certificate2740valid
theorem secondValid1171 : DerivedMapBatches.Batch057.certificate4631.Valid := DerivedMapBatches.Batch057.certificate4631valid
theorem outputValid1171 : DerivedMapBatches.Batch057.certificate4632.Valid := DerivedMapBatches.Batch057.certificate4632valid
theorem linkedComposition1171 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4632.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4632.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4631.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2740.algebra.mat x) := by
  rw [firstLink1171, secondLink1171]
  exact DerivedMapBatches.Batch057.certificate4632valid.2 x
theorem outputZero1171 : DerivedMapBatches.Batch057.certificate4632.c = (fun _ _ => false) := by decide
theorem linkedZero1171 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4632.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4631.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2740.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1171, outputZero1171]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1172 : DerivedMapBatches.Batch034.certificate2741.algebra.mat = DerivedMapBatches.Batch057.certificate4634.a := by decide
theorem secondLink1172 : DerivedMapBatches.Batch057.certificate4633.algebra.mat = DerivedMapBatches.Batch057.certificate4634.b := by decide
theorem firstValid1172 : DerivedMapBatches.Batch034.certificate2741.Valid := DerivedMapBatches.Batch034.certificate2741valid
theorem secondValid1172 : DerivedMapBatches.Batch057.certificate4633.Valid := DerivedMapBatches.Batch057.certificate4633valid
theorem outputValid1172 : DerivedMapBatches.Batch057.certificate4634.Valid := DerivedMapBatches.Batch057.certificate4634valid
theorem linkedComposition1172 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4634.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4634.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4633.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2741.algebra.mat x) := by
  rw [firstLink1172, secondLink1172]
  exact DerivedMapBatches.Batch057.certificate4634valid.2 x
theorem outputZero1172 : DerivedMapBatches.Batch057.certificate4634.c = (fun _ _ => false) := by decide
theorem linkedZero1172 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4634.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4633.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2741.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1172, outputZero1172]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1173 : DerivedMapBatches.Batch034.certificate2742.algebra.mat = DerivedMapBatches.Batch057.certificate4636.a := by decide
theorem secondLink1173 : DerivedMapBatches.Batch057.certificate4635.algebra.mat = DerivedMapBatches.Batch057.certificate4636.b := by decide
theorem firstValid1173 : DerivedMapBatches.Batch034.certificate2742.Valid := DerivedMapBatches.Batch034.certificate2742valid
theorem secondValid1173 : DerivedMapBatches.Batch057.certificate4635.Valid := DerivedMapBatches.Batch057.certificate4635valid
theorem outputValid1173 : DerivedMapBatches.Batch057.certificate4636.Valid := DerivedMapBatches.Batch057.certificate4636valid
theorem linkedComposition1173 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4636.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4636.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4635.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2742.algebra.mat x) := by
  rw [firstLink1173, secondLink1173]
  exact DerivedMapBatches.Batch057.certificate4636valid.2 x
theorem outputZero1173 : DerivedMapBatches.Batch057.certificate4636.c = (fun _ _ => false) := by decide
theorem linkedZero1173 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4636.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4635.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2742.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1173, outputZero1173]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1174 : DerivedMapBatches.Batch034.certificate2743.algebra.mat = DerivedMapBatches.Batch057.certificate4638.a := by decide
theorem secondLink1174 : DerivedMapBatches.Batch057.certificate4637.algebra.mat = DerivedMapBatches.Batch057.certificate4638.b := by decide
theorem firstValid1174 : DerivedMapBatches.Batch034.certificate2743.Valid := DerivedMapBatches.Batch034.certificate2743valid
theorem secondValid1174 : DerivedMapBatches.Batch057.certificate4637.Valid := DerivedMapBatches.Batch057.certificate4637valid
theorem outputValid1174 : DerivedMapBatches.Batch057.certificate4638.Valid := DerivedMapBatches.Batch057.certificate4638valid
theorem linkedComposition1174 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4638.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4638.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4637.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2743.algebra.mat x) := by
  rw [firstLink1174, secondLink1174]
  exact DerivedMapBatches.Batch057.certificate4638valid.2 x
theorem outputZero1174 : DerivedMapBatches.Batch057.certificate4638.c = (fun _ _ => false) := by decide
theorem linkedZero1174 (x : LinearCertificates.Vec DerivedMapBatches.Batch057.certificate4638.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4637.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2743.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1174, outputZero1174]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1175 : DerivedMapBatches.Batch034.certificate2744.algebra.mat = DerivedMapBatches.Batch058.certificate4640.a := by decide
theorem secondLink1175 : DerivedMapBatches.Batch057.certificate4639.algebra.mat = DerivedMapBatches.Batch058.certificate4640.b := by decide
theorem firstValid1175 : DerivedMapBatches.Batch034.certificate2744.Valid := DerivedMapBatches.Batch034.certificate2744valid
theorem secondValid1175 : DerivedMapBatches.Batch057.certificate4639.Valid := DerivedMapBatches.Batch057.certificate4639valid
theorem outputValid1175 : DerivedMapBatches.Batch058.certificate4640.Valid := DerivedMapBatches.Batch058.certificate4640valid
theorem linkedComposition1175 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4640.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4640.c x = LinearCertificates.eval DerivedMapBatches.Batch057.certificate4639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2744.algebra.mat x) := by
  rw [firstLink1175, secondLink1175]
  exact DerivedMapBatches.Batch058.certificate4640valid.2 x
theorem outputZero1175 : DerivedMapBatches.Batch058.certificate4640.c = (fun _ _ => false) := by decide
theorem linkedZero1175 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4640.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch057.certificate4639.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2744.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1175, outputZero1175]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1176 : DerivedMapBatches.Batch034.certificate2745.algebra.mat = DerivedMapBatches.Batch058.certificate4642.a := by decide
theorem secondLink1176 : DerivedMapBatches.Batch058.certificate4641.algebra.mat = DerivedMapBatches.Batch058.certificate4642.b := by decide
theorem firstValid1176 : DerivedMapBatches.Batch034.certificate2745.Valid := DerivedMapBatches.Batch034.certificate2745valid
theorem secondValid1176 : DerivedMapBatches.Batch058.certificate4641.Valid := DerivedMapBatches.Batch058.certificate4641valid
theorem outputValid1176 : DerivedMapBatches.Batch058.certificate4642.Valid := DerivedMapBatches.Batch058.certificate4642valid
theorem linkedComposition1176 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4642.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4642.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4641.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2745.algebra.mat x) := by
  rw [firstLink1176, secondLink1176]
  exact DerivedMapBatches.Batch058.certificate4642valid.2 x
theorem outputZero1176 : DerivedMapBatches.Batch058.certificate4642.c = (fun _ _ => false) := by decide
theorem linkedZero1176 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4642.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4641.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch034.certificate2745.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1176, outputZero1176]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1177 : DerivedMapBatches.Batch002.certificate182.algebra.mat = DerivedMapBatches.Batch058.certificate4643.a := by decide
theorem secondLink1177 : DerivedMapBatches.Batch002.certificate186.algebra.mat = DerivedMapBatches.Batch058.certificate4643.b := by decide
theorem firstValid1177 : DerivedMapBatches.Batch002.certificate182.Valid := DerivedMapBatches.Batch002.certificate182valid
theorem secondValid1177 : DerivedMapBatches.Batch002.certificate186.Valid := DerivedMapBatches.Batch002.certificate186valid
theorem outputValid1177 : DerivedMapBatches.Batch058.certificate4643.Valid := DerivedMapBatches.Batch058.certificate4643valid
theorem linkedComposition1177 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4643.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4643.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) := by
  rw [firstLink1177, secondLink1177]
  exact DerivedMapBatches.Batch058.certificate4643valid.2 x
theorem rhsLink1177 : DerivedMapBatches.Batch058.certificate4643.c = DerivedMapBatches.Batch033.certificate2668.algebra.mat := by decide
theorem rhsValid1177 : DerivedMapBatches.Batch033.certificate2668.Valid := DerivedMapBatches.Batch033.certificate2668valid
theorem linkedCommutativity1177 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4643.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2668.algebra.mat x := by
  exact (linkedComposition1177 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1177)
theorem firstLink1178 : DerivedMapBatches.Batch002.certificate183.algebra.mat = DerivedMapBatches.Batch058.certificate4644.a := by decide
theorem secondLink1178 : DerivedMapBatches.Batch002.certificate191.algebra.mat = DerivedMapBatches.Batch058.certificate4644.b := by decide
theorem firstValid1178 : DerivedMapBatches.Batch002.certificate183.Valid := DerivedMapBatches.Batch002.certificate183valid
theorem secondValid1178 : DerivedMapBatches.Batch002.certificate191.Valid := DerivedMapBatches.Batch002.certificate191valid
theorem outputValid1178 : DerivedMapBatches.Batch058.certificate4644.Valid := DerivedMapBatches.Batch058.certificate4644valid
theorem linkedComposition1178 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4644.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4644.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) := by
  rw [firstLink1178, secondLink1178]
  exact DerivedMapBatches.Batch058.certificate4644valid.2 x
theorem rhsLink1178 : DerivedMapBatches.Batch058.certificate4644.c = DerivedMapBatches.Batch033.certificate2669.algebra.mat := by decide
theorem rhsValid1178 : DerivedMapBatches.Batch033.certificate2669.Valid := DerivedMapBatches.Batch033.certificate2669valid
theorem linkedCommutativity1178 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4644.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2669.algebra.mat x := by
  exact (linkedComposition1178 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1178)
theorem firstLink1179 : DerivedMapBatches.Batch002.certificate184.algebra.mat = DerivedMapBatches.Batch058.certificate4645.a := by decide
theorem secondLink1179 : DerivedMapBatches.Batch002.certificate192.algebra.mat = DerivedMapBatches.Batch058.certificate4645.b := by decide
theorem firstValid1179 : DerivedMapBatches.Batch002.certificate184.Valid := DerivedMapBatches.Batch002.certificate184valid
theorem secondValid1179 : DerivedMapBatches.Batch002.certificate192.Valid := DerivedMapBatches.Batch002.certificate192valid
theorem outputValid1179 : DerivedMapBatches.Batch058.certificate4645.Valid := DerivedMapBatches.Batch058.certificate4645valid
theorem linkedComposition1179 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4645.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4645.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) := by
  rw [firstLink1179, secondLink1179]
  exact DerivedMapBatches.Batch058.certificate4645valid.2 x
theorem rhsLink1179 : DerivedMapBatches.Batch058.certificate4645.c = DerivedMapBatches.Batch033.certificate2670.algebra.mat := by decide
theorem rhsValid1179 : DerivedMapBatches.Batch033.certificate2670.Valid := DerivedMapBatches.Batch033.certificate2670valid
theorem linkedCommutativity1179 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4645.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2670.algebra.mat x := by
  exact (linkedComposition1179 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1179)
theorem firstLink1180 : DerivedMapBatches.Batch002.certificate185.algebra.mat = DerivedMapBatches.Batch058.certificate4646.a := by decide
theorem secondLink1180 : DerivedMapBatches.Batch052.certificate4234.algebra.mat = DerivedMapBatches.Batch058.certificate4646.b := by decide
theorem firstValid1180 : DerivedMapBatches.Batch002.certificate185.Valid := DerivedMapBatches.Batch002.certificate185valid
theorem secondValid1180 : DerivedMapBatches.Batch052.certificate4234.Valid := DerivedMapBatches.Batch052.certificate4234valid
theorem outputValid1180 : DerivedMapBatches.Batch058.certificate4646.Valid := DerivedMapBatches.Batch058.certificate4646valid
theorem linkedComposition1180 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4646.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4646.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4234.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) := by
  rw [firstLink1180, secondLink1180]
  exact DerivedMapBatches.Batch058.certificate4646valid.2 x
theorem rhsLink1180 : DerivedMapBatches.Batch058.certificate4646.c = DerivedMapBatches.Batch033.certificate2671.algebra.mat := by decide
theorem rhsValid1180 : DerivedMapBatches.Batch033.certificate2671.Valid := DerivedMapBatches.Batch033.certificate2671valid
theorem linkedCommutativity1180 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4646.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4234.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2671.algebra.mat x := by
  exact (linkedComposition1180 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1180)
theorem firstLink1181 : DerivedMapBatches.Batch002.certificate186.algebra.mat = DerivedMapBatches.Batch058.certificate4648.a := by decide
theorem secondLink1181 : DerivedMapBatches.Batch058.certificate4647.algebra.mat = DerivedMapBatches.Batch058.certificate4648.b := by decide
theorem firstValid1181 : DerivedMapBatches.Batch002.certificate186.Valid := DerivedMapBatches.Batch002.certificate186valid
theorem secondValid1181 : DerivedMapBatches.Batch058.certificate4647.Valid := DerivedMapBatches.Batch058.certificate4647valid
theorem outputValid1181 : DerivedMapBatches.Batch058.certificate4648.Valid := DerivedMapBatches.Batch058.certificate4648valid
theorem linkedComposition1181 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4648.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4648.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4647.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) := by
  rw [firstLink1181, secondLink1181]
  exact DerivedMapBatches.Batch058.certificate4648valid.2 x
theorem rhsLink1181 : DerivedMapBatches.Batch058.certificate4648.c = DerivedMapBatches.Batch033.certificate2672.algebra.mat := by decide
theorem rhsValid1181 : DerivedMapBatches.Batch033.certificate2672.Valid := DerivedMapBatches.Batch033.certificate2672valid
theorem linkedCommutativity1181 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4648.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4647.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2672.algebra.mat x := by
  exact (linkedComposition1181 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1181)
theorem firstLink1182 : DerivedMapBatches.Batch002.certificate187.algebra.mat = DerivedMapBatches.Batch058.certificate4649.a := by decide
theorem secondLink1182 : DerivedMapBatches.Batch002.certificate195.algebra.mat = DerivedMapBatches.Batch058.certificate4649.b := by decide
theorem firstValid1182 : DerivedMapBatches.Batch002.certificate187.Valid := DerivedMapBatches.Batch002.certificate187valid
theorem secondValid1182 : DerivedMapBatches.Batch002.certificate195.Valid := DerivedMapBatches.Batch002.certificate195valid
theorem outputValid1182 : DerivedMapBatches.Batch058.certificate4649.Valid := DerivedMapBatches.Batch058.certificate4649valid
theorem linkedComposition1182 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4649.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4649.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) := by
  rw [firstLink1182, secondLink1182]
  exact DerivedMapBatches.Batch058.certificate4649valid.2 x
theorem rhsLink1182 : DerivedMapBatches.Batch058.certificate4649.c = DerivedMapBatches.Batch033.certificate2673.algebra.mat := by decide
theorem rhsValid1182 : DerivedMapBatches.Batch033.certificate2673.Valid := DerivedMapBatches.Batch033.certificate2673valid
theorem linkedCommutativity1182 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4649.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat x := by
  exact (linkedComposition1182 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1182)
theorem firstLink1183 : DerivedMapBatches.Batch002.certificate188.algebra.mat = DerivedMapBatches.Batch058.certificate4650.a := by decide
theorem secondLink1183 : DerivedMapBatches.Batch002.certificate197.algebra.mat = DerivedMapBatches.Batch058.certificate4650.b := by decide
theorem firstValid1183 : DerivedMapBatches.Batch002.certificate188.Valid := DerivedMapBatches.Batch002.certificate188valid
theorem secondValid1183 : DerivedMapBatches.Batch002.certificate197.Valid := DerivedMapBatches.Batch002.certificate197valid
theorem outputValid1183 : DerivedMapBatches.Batch058.certificate4650.Valid := DerivedMapBatches.Batch058.certificate4650valid
theorem linkedComposition1183 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4650.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4650.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) := by
  rw [firstLink1183, secondLink1183]
  exact DerivedMapBatches.Batch058.certificate4650valid.2 x
theorem rhsLink1183 : DerivedMapBatches.Batch058.certificate4650.c = DerivedMapBatches.Batch033.certificate2674.algebra.mat := by decide
theorem rhsValid1183 : DerivedMapBatches.Batch033.certificate2674.Valid := DerivedMapBatches.Batch033.certificate2674valid
theorem linkedCommutativity1183 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4650.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2674.algebra.mat x := by
  exact (linkedComposition1183 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1183)
theorem firstLink1184 : DerivedMapBatches.Batch002.certificate189.algebra.mat = DerivedMapBatches.Batch058.certificate4651.a := by decide
theorem secondLink1184 : DerivedMapBatches.Batch053.certificate4242.algebra.mat = DerivedMapBatches.Batch058.certificate4651.b := by decide
theorem firstValid1184 : DerivedMapBatches.Batch002.certificate189.Valid := DerivedMapBatches.Batch002.certificate189valid
theorem secondValid1184 : DerivedMapBatches.Batch053.certificate4242.Valid := DerivedMapBatches.Batch053.certificate4242valid
theorem outputValid1184 : DerivedMapBatches.Batch058.certificate4651.Valid := DerivedMapBatches.Batch058.certificate4651valid
theorem linkedComposition1184 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4651.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4651.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4242.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) := by
  rw [firstLink1184, secondLink1184]
  exact DerivedMapBatches.Batch058.certificate4651valid.2 x
theorem rhsLink1184 : DerivedMapBatches.Batch058.certificate4651.c = DerivedMapBatches.Batch033.certificate2675.algebra.mat := by decide
theorem rhsValid1184 : DerivedMapBatches.Batch033.certificate2675.Valid := DerivedMapBatches.Batch033.certificate2675valid
theorem linkedCommutativity1184 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4651.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4242.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat x := by
  exact (linkedComposition1184 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1184)
theorem firstLink1185 : DerivedMapBatches.Batch002.certificate190.algebra.mat = DerivedMapBatches.Batch058.certificate4653.a := by decide
theorem secondLink1185 : DerivedMapBatches.Batch058.certificate4652.algebra.mat = DerivedMapBatches.Batch058.certificate4653.b := by decide
theorem firstValid1185 : DerivedMapBatches.Batch002.certificate190.Valid := DerivedMapBatches.Batch002.certificate190valid
theorem secondValid1185 : DerivedMapBatches.Batch058.certificate4652.Valid := DerivedMapBatches.Batch058.certificate4652valid
theorem outputValid1185 : DerivedMapBatches.Batch058.certificate4653.Valid := DerivedMapBatches.Batch058.certificate4653valid
theorem linkedComposition1185 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4653.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4653.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4652.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) := by
  rw [firstLink1185, secondLink1185]
  exact DerivedMapBatches.Batch058.certificate4653valid.2 x
theorem rhsLink1185 : DerivedMapBatches.Batch058.certificate4653.c = DerivedMapBatches.Batch033.certificate2676.algebra.mat := by decide
theorem rhsValid1185 : DerivedMapBatches.Batch033.certificate2676.Valid := DerivedMapBatches.Batch033.certificate2676valid
theorem linkedCommutativity1185 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4653.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4652.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2676.algebra.mat x := by
  exact (linkedComposition1185 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1185)
theorem firstLink1186 : DerivedMapBatches.Batch002.certificate191.algebra.mat = DerivedMapBatches.Batch058.certificate4655.a := by decide
theorem secondLink1186 : DerivedMapBatches.Batch058.certificate4654.algebra.mat = DerivedMapBatches.Batch058.certificate4655.b := by decide
theorem firstValid1186 : DerivedMapBatches.Batch002.certificate191.Valid := DerivedMapBatches.Batch002.certificate191valid
theorem secondValid1186 : DerivedMapBatches.Batch058.certificate4654.Valid := DerivedMapBatches.Batch058.certificate4654valid
theorem outputValid1186 : DerivedMapBatches.Batch058.certificate4655.Valid := DerivedMapBatches.Batch058.certificate4655valid
theorem linkedComposition1186 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4655.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4655.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4654.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) := by
  rw [firstLink1186, secondLink1186]
  exact DerivedMapBatches.Batch058.certificate4655valid.2 x
theorem rhsLink1186 : DerivedMapBatches.Batch058.certificate4655.c = DerivedMapBatches.Batch033.certificate2677.algebra.mat := by decide
theorem rhsValid1186 : DerivedMapBatches.Batch033.certificate2677.Valid := DerivedMapBatches.Batch033.certificate2677valid
theorem linkedCommutativity1186 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4655.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4654.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat x := by
  exact (linkedComposition1186 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1186)
theorem firstLink1187 : DerivedMapBatches.Batch002.certificate192.algebra.mat = DerivedMapBatches.Batch058.certificate4657.a := by decide
theorem secondLink1187 : DerivedMapBatches.Batch058.certificate4656.algebra.mat = DerivedMapBatches.Batch058.certificate4657.b := by decide
theorem firstValid1187 : DerivedMapBatches.Batch002.certificate192.Valid := DerivedMapBatches.Batch002.certificate192valid
theorem secondValid1187 : DerivedMapBatches.Batch058.certificate4656.Valid := DerivedMapBatches.Batch058.certificate4656valid
theorem outputValid1187 : DerivedMapBatches.Batch058.certificate4657.Valid := DerivedMapBatches.Batch058.certificate4657valid
theorem linkedComposition1187 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4657.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4657.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4656.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) := by
  rw [firstLink1187, secondLink1187]
  exact DerivedMapBatches.Batch058.certificate4657valid.2 x
theorem rhsLink1187 : DerivedMapBatches.Batch058.certificate4657.c = DerivedMapBatches.Batch033.certificate2678.algebra.mat := by decide
theorem rhsValid1187 : DerivedMapBatches.Batch033.certificate2678.Valid := DerivedMapBatches.Batch033.certificate2678valid
theorem linkedCommutativity1187 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4657.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4656.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2678.algebra.mat x := by
  exact (linkedComposition1187 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1187)
theorem firstLink1188 : DerivedMapBatches.Batch002.certificate193.algebra.mat = DerivedMapBatches.Batch058.certificate4658.a := by decide
theorem secondLink1188 : DerivedMapBatches.Batch002.certificate199.algebra.mat = DerivedMapBatches.Batch058.certificate4658.b := by decide
theorem firstValid1188 : DerivedMapBatches.Batch002.certificate193.Valid := DerivedMapBatches.Batch002.certificate193valid
theorem secondValid1188 : DerivedMapBatches.Batch002.certificate199.Valid := DerivedMapBatches.Batch002.certificate199valid
theorem outputValid1188 : DerivedMapBatches.Batch058.certificate4658.Valid := DerivedMapBatches.Batch058.certificate4658valid
theorem linkedComposition1188 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4658.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4658.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) := by
  rw [firstLink1188, secondLink1188]
  exact DerivedMapBatches.Batch058.certificate4658valid.2 x
theorem rhsLink1188 : DerivedMapBatches.Batch058.certificate4658.c = DerivedMapBatches.Batch033.certificate2679.algebra.mat := by decide
theorem rhsValid1188 : DerivedMapBatches.Batch033.certificate2679.Valid := DerivedMapBatches.Batch033.certificate2679valid
theorem linkedCommutativity1188 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4658.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat x := by
  exact (linkedComposition1188 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1188)
theorem firstLink1189 : DerivedMapBatches.Batch002.certificate194.algebra.mat = DerivedMapBatches.Batch058.certificate4659.a := by decide
theorem secondLink1189 : DerivedMapBatches.Batch053.certificate4250.algebra.mat = DerivedMapBatches.Batch058.certificate4659.b := by decide
theorem firstValid1189 : DerivedMapBatches.Batch002.certificate194.Valid := DerivedMapBatches.Batch002.certificate194valid
theorem secondValid1189 : DerivedMapBatches.Batch053.certificate4250.Valid := DerivedMapBatches.Batch053.certificate4250valid
theorem outputValid1189 : DerivedMapBatches.Batch058.certificate4659.Valid := DerivedMapBatches.Batch058.certificate4659valid
theorem linkedComposition1189 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4659.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4659.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) := by
  rw [firstLink1189, secondLink1189]
  exact DerivedMapBatches.Batch058.certificate4659valid.2 x
theorem rhsLink1189 : DerivedMapBatches.Batch058.certificate4659.c = DerivedMapBatches.Batch033.certificate2680.algebra.mat := by decide
theorem rhsValid1189 : DerivedMapBatches.Batch033.certificate2680.Valid := DerivedMapBatches.Batch033.certificate2680valid
theorem linkedCommutativity1189 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4659.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat x := by
  exact (linkedComposition1189 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1189)
theorem firstLink1190 : DerivedMapBatches.Batch002.certificate195.algebra.mat = DerivedMapBatches.Batch058.certificate4661.a := by decide
theorem secondLink1190 : DerivedMapBatches.Batch058.certificate4660.algebra.mat = DerivedMapBatches.Batch058.certificate4661.b := by decide
theorem firstValid1190 : DerivedMapBatches.Batch002.certificate195.Valid := DerivedMapBatches.Batch002.certificate195valid
theorem secondValid1190 : DerivedMapBatches.Batch058.certificate4660.Valid := DerivedMapBatches.Batch058.certificate4660valid
theorem outputValid1190 : DerivedMapBatches.Batch058.certificate4661.Valid := DerivedMapBatches.Batch058.certificate4661valid
theorem linkedComposition1190 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4661.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4661.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4660.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) := by
  rw [firstLink1190, secondLink1190]
  exact DerivedMapBatches.Batch058.certificate4661valid.2 x
theorem rhsLink1190 : DerivedMapBatches.Batch058.certificate4661.c = DerivedMapBatches.Batch033.certificate2681.algebra.mat := by decide
theorem rhsValid1190 : DerivedMapBatches.Batch033.certificate2681.Valid := DerivedMapBatches.Batch033.certificate2681valid
theorem linkedCommutativity1190 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4661.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4660.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat x := by
  exact (linkedComposition1190 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1190)
theorem firstLink1191 : DerivedMapBatches.Batch002.certificate196.algebra.mat = DerivedMapBatches.Batch058.certificate4663.a := by decide
theorem secondLink1191 : DerivedMapBatches.Batch058.certificate4662.algebra.mat = DerivedMapBatches.Batch058.certificate4663.b := by decide
theorem firstValid1191 : DerivedMapBatches.Batch002.certificate196.Valid := DerivedMapBatches.Batch002.certificate196valid
theorem secondValid1191 : DerivedMapBatches.Batch058.certificate4662.Valid := DerivedMapBatches.Batch058.certificate4662valid
theorem outputValid1191 : DerivedMapBatches.Batch058.certificate4663.Valid := DerivedMapBatches.Batch058.certificate4663valid
theorem linkedComposition1191 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4663.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4663.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4662.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) := by
  rw [firstLink1191, secondLink1191]
  exact DerivedMapBatches.Batch058.certificate4663valid.2 x
theorem rhsLink1191 : DerivedMapBatches.Batch058.certificate4663.c = DerivedMapBatches.Batch033.certificate2682.algebra.mat := by decide
theorem rhsValid1191 : DerivedMapBatches.Batch033.certificate2682.Valid := DerivedMapBatches.Batch033.certificate2682valid
theorem linkedCommutativity1191 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4663.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4662.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat x := by
  exact (linkedComposition1191 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1191)
theorem firstLink1192 : DerivedMapBatches.Batch002.certificate197.algebra.mat = DerivedMapBatches.Batch058.certificate4665.a := by decide
theorem secondLink1192 : DerivedMapBatches.Batch058.certificate4664.algebra.mat = DerivedMapBatches.Batch058.certificate4665.b := by decide
theorem firstValid1192 : DerivedMapBatches.Batch002.certificate197.Valid := DerivedMapBatches.Batch002.certificate197valid
theorem secondValid1192 : DerivedMapBatches.Batch058.certificate4664.Valid := DerivedMapBatches.Batch058.certificate4664valid
theorem outputValid1192 : DerivedMapBatches.Batch058.certificate4665.Valid := DerivedMapBatches.Batch058.certificate4665valid
theorem linkedComposition1192 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4665.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4665.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4664.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) := by
  rw [firstLink1192, secondLink1192]
  exact DerivedMapBatches.Batch058.certificate4665valid.2 x
theorem rhsLink1192 : DerivedMapBatches.Batch058.certificate4665.c = DerivedMapBatches.Batch033.certificate2683.algebra.mat := by decide
theorem rhsValid1192 : DerivedMapBatches.Batch033.certificate2683.Valid := DerivedMapBatches.Batch033.certificate2683valid
theorem linkedCommutativity1192 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4665.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4664.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2683.algebra.mat x := by
  exact (linkedComposition1192 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1192)
theorem firstLink1193 : DerivedMapBatches.Batch002.certificate198.algebra.mat = DerivedMapBatches.Batch058.certificate4667.a := by decide
theorem secondLink1193 : DerivedMapBatches.Batch058.certificate4666.algebra.mat = DerivedMapBatches.Batch058.certificate4667.b := by decide
theorem firstValid1193 : DerivedMapBatches.Batch002.certificate198.Valid := DerivedMapBatches.Batch002.certificate198valid
theorem secondValid1193 : DerivedMapBatches.Batch058.certificate4666.Valid := DerivedMapBatches.Batch058.certificate4666valid
theorem outputValid1193 : DerivedMapBatches.Batch058.certificate4667.Valid := DerivedMapBatches.Batch058.certificate4667valid
theorem linkedComposition1193 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4667.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4667.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) := by
  rw [firstLink1193, secondLink1193]
  exact DerivedMapBatches.Batch058.certificate4667valid.2 x
theorem rhsLink1193 : DerivedMapBatches.Batch058.certificate4667.c = DerivedMapBatches.Batch033.certificate2684.algebra.mat := by decide
theorem rhsValid1193 : DerivedMapBatches.Batch033.certificate2684.Valid := DerivedMapBatches.Batch033.certificate2684valid
theorem linkedCommutativity1193 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4667.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat x := by
  exact (linkedComposition1193 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1193)
theorem firstLink1194 : DerivedMapBatches.Batch002.certificate199.algebra.mat = DerivedMapBatches.Batch058.certificate4669.a := by decide
theorem secondLink1194 : DerivedMapBatches.Batch058.certificate4668.algebra.mat = DerivedMapBatches.Batch058.certificate4669.b := by decide
theorem firstValid1194 : DerivedMapBatches.Batch002.certificate199.Valid := DerivedMapBatches.Batch002.certificate199valid
theorem secondValid1194 : DerivedMapBatches.Batch058.certificate4668.Valid := DerivedMapBatches.Batch058.certificate4668valid
theorem outputValid1194 : DerivedMapBatches.Batch058.certificate4669.Valid := DerivedMapBatches.Batch058.certificate4669valid
theorem linkedComposition1194 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4669.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4669.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4668.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) := by
  rw [firstLink1194, secondLink1194]
  exact DerivedMapBatches.Batch058.certificate4669valid.2 x
theorem rhsLink1194 : DerivedMapBatches.Batch058.certificate4669.c = DerivedMapBatches.Batch033.certificate2685.algebra.mat := by decide
theorem rhsValid1194 : DerivedMapBatches.Batch033.certificate2685.Valid := DerivedMapBatches.Batch033.certificate2685valid
theorem linkedCommutativity1194 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4669.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4668.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat x := by
  exact (linkedComposition1194 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1194)
theorem firstLink1195 : DerivedMapBatches.Batch002.certificate200.algebra.mat = DerivedMapBatches.Batch058.certificate4671.a := by decide
theorem secondLink1195 : DerivedMapBatches.Batch058.certificate4670.algebra.mat = DerivedMapBatches.Batch058.certificate4671.b := by decide
theorem firstValid1195 : DerivedMapBatches.Batch002.certificate200.Valid := DerivedMapBatches.Batch002.certificate200valid
theorem secondValid1195 : DerivedMapBatches.Batch058.certificate4670.Valid := DerivedMapBatches.Batch058.certificate4670valid
theorem outputValid1195 : DerivedMapBatches.Batch058.certificate4671.Valid := DerivedMapBatches.Batch058.certificate4671valid
theorem linkedComposition1195 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4671.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4671.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4670.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) := by
  rw [firstLink1195, secondLink1195]
  exact DerivedMapBatches.Batch058.certificate4671valid.2 x
theorem rhsLink1195 : DerivedMapBatches.Batch058.certificate4671.c = DerivedMapBatches.Batch033.certificate2686.algebra.mat := by decide
theorem rhsValid1195 : DerivedMapBatches.Batch033.certificate2686.Valid := DerivedMapBatches.Batch033.certificate2686valid
theorem linkedCommutativity1195 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4671.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4670.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat x := by
  exact (linkedComposition1195 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1195)
theorem firstLink1196 : DerivedMapBatches.Batch002.certificate201.algebra.mat = DerivedMapBatches.Batch058.certificate4673.a := by decide
theorem secondLink1196 : DerivedMapBatches.Batch058.certificate4672.algebra.mat = DerivedMapBatches.Batch058.certificate4673.b := by decide
theorem firstValid1196 : DerivedMapBatches.Batch002.certificate201.Valid := DerivedMapBatches.Batch002.certificate201valid
theorem secondValid1196 : DerivedMapBatches.Batch058.certificate4672.Valid := DerivedMapBatches.Batch058.certificate4672valid
theorem outputValid1196 : DerivedMapBatches.Batch058.certificate4673.Valid := DerivedMapBatches.Batch058.certificate4673valid
theorem linkedComposition1196 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4673.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4673.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) := by
  rw [firstLink1196, secondLink1196]
  exact DerivedMapBatches.Batch058.certificate4673valid.2 x
theorem rhsLink1196 : DerivedMapBatches.Batch058.certificate4673.c = DerivedMapBatches.Batch033.certificate2687.algebra.mat := by decide
theorem rhsValid1196 : DerivedMapBatches.Batch033.certificate2687.Valid := DerivedMapBatches.Batch033.certificate2687valid
theorem linkedCommutativity1196 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4673.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4672.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat x := by
  exact (linkedComposition1196 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1196)
theorem firstLink1197 : DerivedMapBatches.Batch002.certificate202.algebra.mat = DerivedMapBatches.Batch058.certificate4675.a := by decide
theorem secondLink1197 : DerivedMapBatches.Batch058.certificate4674.algebra.mat = DerivedMapBatches.Batch058.certificate4675.b := by decide
theorem firstValid1197 : DerivedMapBatches.Batch002.certificate202.Valid := DerivedMapBatches.Batch002.certificate202valid
theorem secondValid1197 : DerivedMapBatches.Batch058.certificate4674.Valid := DerivedMapBatches.Batch058.certificate4674valid
theorem outputValid1197 : DerivedMapBatches.Batch058.certificate4675.Valid := DerivedMapBatches.Batch058.certificate4675valid
theorem linkedComposition1197 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4675.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4675.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4674.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) := by
  rw [firstLink1197, secondLink1197]
  exact DerivedMapBatches.Batch058.certificate4675valid.2 x
theorem rhsLink1197 : DerivedMapBatches.Batch058.certificate4675.c = DerivedMapBatches.Batch033.certificate2688.algebra.mat := by decide
theorem rhsValid1197 : DerivedMapBatches.Batch033.certificate2688.Valid := DerivedMapBatches.Batch033.certificate2688valid
theorem linkedCommutativity1197 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4675.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4674.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat x := by
  exact (linkedComposition1197 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1197)
theorem firstLink1198 : DerivedMapBatches.Batch002.certificate203.algebra.mat = DerivedMapBatches.Batch058.certificate4677.a := by decide
theorem secondLink1198 : DerivedMapBatches.Batch058.certificate4676.algebra.mat = DerivedMapBatches.Batch058.certificate4677.b := by decide
theorem firstValid1198 : DerivedMapBatches.Batch002.certificate203.Valid := DerivedMapBatches.Batch002.certificate203valid
theorem secondValid1198 : DerivedMapBatches.Batch058.certificate4676.Valid := DerivedMapBatches.Batch058.certificate4676valid
theorem outputValid1198 : DerivedMapBatches.Batch058.certificate4677.Valid := DerivedMapBatches.Batch058.certificate4677valid
theorem linkedComposition1198 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4677.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4677.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4676.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) := by
  rw [firstLink1198, secondLink1198]
  exact DerivedMapBatches.Batch058.certificate4677valid.2 x
theorem rhsLink1198 : DerivedMapBatches.Batch058.certificate4677.c = DerivedMapBatches.Batch033.certificate2689.algebra.mat := by decide
theorem rhsValid1198 : DerivedMapBatches.Batch033.certificate2689.Valid := DerivedMapBatches.Batch033.certificate2689valid
theorem linkedCommutativity1198 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4677.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4676.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat x := by
  exact (linkedComposition1198 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1198)
theorem firstLink1199 : DerivedMapBatches.Batch002.certificate204.algebra.mat = DerivedMapBatches.Batch058.certificate4679.a := by decide
theorem secondLink1199 : DerivedMapBatches.Batch058.certificate4678.algebra.mat = DerivedMapBatches.Batch058.certificate4679.b := by decide
theorem firstValid1199 : DerivedMapBatches.Batch002.certificate204.Valid := DerivedMapBatches.Batch002.certificate204valid
theorem secondValid1199 : DerivedMapBatches.Batch058.certificate4678.Valid := DerivedMapBatches.Batch058.certificate4678valid
theorem outputValid1199 : DerivedMapBatches.Batch058.certificate4679.Valid := DerivedMapBatches.Batch058.certificate4679valid
theorem linkedComposition1199 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4679.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4679.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) := by
  rw [firstLink1199, secondLink1199]
  exact DerivedMapBatches.Batch058.certificate4679valid.2 x
theorem rhsLink1199 : DerivedMapBatches.Batch058.certificate4679.c = DerivedMapBatches.Batch033.certificate2690.algebra.mat := by decide
theorem rhsValid1199 : DerivedMapBatches.Batch033.certificate2690.Valid := DerivedMapBatches.Batch033.certificate2690valid
theorem linkedCommutativity1199 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4679.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4678.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat x := by
  exact (linkedComposition1199 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1199)
end DerivedLinkageBatches.Batch023
