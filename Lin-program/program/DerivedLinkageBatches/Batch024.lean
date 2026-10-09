import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch058
import DerivedMapBatches.Batch059
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch024
theorem firstLink1200 : DerivedMapBatches.Batch002.certificate205.algebra.mat = DerivedMapBatches.Batch058.certificate4681.a := by decide
theorem secondLink1200 : DerivedMapBatches.Batch058.certificate4680.algebra.mat = DerivedMapBatches.Batch058.certificate4681.b := by decide
theorem firstValid1200 : DerivedMapBatches.Batch002.certificate205.Valid := DerivedMapBatches.Batch002.certificate205valid
theorem secondValid1200 : DerivedMapBatches.Batch058.certificate4680.Valid := DerivedMapBatches.Batch058.certificate4680valid
theorem outputValid1200 : DerivedMapBatches.Batch058.certificate4681.Valid := DerivedMapBatches.Batch058.certificate4681valid
theorem linkedComposition1200 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4681.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4681.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4680.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) := by
  rw [firstLink1200, secondLink1200]
  exact DerivedMapBatches.Batch058.certificate4681valid.2 x
theorem rhsLink1200 : DerivedMapBatches.Batch058.certificate4681.c = DerivedMapBatches.Batch033.certificate2691.algebra.mat := by decide
theorem rhsValid1200 : DerivedMapBatches.Batch033.certificate2691.Valid := DerivedMapBatches.Batch033.certificate2691valid
theorem linkedCommutativity1200 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4681.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4680.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat x := by
  exact (linkedComposition1200 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1200)
theorem firstLink1201 : DerivedMapBatches.Batch002.certificate206.algebra.mat = DerivedMapBatches.Batch058.certificate4683.a := by decide
theorem secondLink1201 : DerivedMapBatches.Batch058.certificate4682.algebra.mat = DerivedMapBatches.Batch058.certificate4683.b := by decide
theorem firstValid1201 : DerivedMapBatches.Batch002.certificate206.Valid := DerivedMapBatches.Batch002.certificate206valid
theorem secondValid1201 : DerivedMapBatches.Batch058.certificate4682.Valid := DerivedMapBatches.Batch058.certificate4682valid
theorem outputValid1201 : DerivedMapBatches.Batch058.certificate4683.Valid := DerivedMapBatches.Batch058.certificate4683valid
theorem linkedComposition1201 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4683.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4683.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4682.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) := by
  rw [firstLink1201, secondLink1201]
  exact DerivedMapBatches.Batch058.certificate4683valid.2 x
theorem rhsLink1201 : DerivedMapBatches.Batch058.certificate4683.c = DerivedMapBatches.Batch033.certificate2692.algebra.mat := by decide
theorem rhsValid1201 : DerivedMapBatches.Batch033.certificate2692.Valid := DerivedMapBatches.Batch033.certificate2692valid
theorem linkedCommutativity1201 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4683.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4682.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat x := by
  exact (linkedComposition1201 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1201)
theorem firstLink1202 : DerivedMapBatches.Batch002.certificate207.algebra.mat = DerivedMapBatches.Batch058.certificate4685.a := by decide
theorem secondLink1202 : DerivedMapBatches.Batch058.certificate4684.algebra.mat = DerivedMapBatches.Batch058.certificate4685.b := by decide
theorem firstValid1202 : DerivedMapBatches.Batch002.certificate207.Valid := DerivedMapBatches.Batch002.certificate207valid
theorem secondValid1202 : DerivedMapBatches.Batch058.certificate4684.Valid := DerivedMapBatches.Batch058.certificate4684valid
theorem outputValid1202 : DerivedMapBatches.Batch058.certificate4685.Valid := DerivedMapBatches.Batch058.certificate4685valid
theorem linkedComposition1202 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4685.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4685.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) := by
  rw [firstLink1202, secondLink1202]
  exact DerivedMapBatches.Batch058.certificate4685valid.2 x
theorem rhsLink1202 : DerivedMapBatches.Batch058.certificate4685.c = DerivedMapBatches.Batch033.certificate2693.algebra.mat := by decide
theorem rhsValid1202 : DerivedMapBatches.Batch033.certificate2693.Valid := DerivedMapBatches.Batch033.certificate2693valid
theorem linkedCommutativity1202 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4685.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4684.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat x := by
  exact (linkedComposition1202 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1202)
theorem firstLink1203 : DerivedMapBatches.Batch033.certificate2668.algebra.mat = DerivedMapBatches.Batch058.certificate4687.a := by decide
theorem secondLink1203 : DerivedMapBatches.Batch058.certificate4686.algebra.mat = DerivedMapBatches.Batch058.certificate4687.b := by decide
theorem firstValid1203 : DerivedMapBatches.Batch033.certificate2668.Valid := DerivedMapBatches.Batch033.certificate2668valid
theorem secondValid1203 : DerivedMapBatches.Batch058.certificate4686.Valid := DerivedMapBatches.Batch058.certificate4686valid
theorem outputValid1203 : DerivedMapBatches.Batch058.certificate4687.Valid := DerivedMapBatches.Batch058.certificate4687valid
theorem linkedComposition1203 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4687.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4687.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4686.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2668.algebra.mat x) := by
  rw [firstLink1203, secondLink1203]
  exact DerivedMapBatches.Batch058.certificate4687valid.2 x
theorem outputZero1203 : DerivedMapBatches.Batch058.certificate4687.c = (fun _ _ => false) := by decide
theorem linkedZero1203 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4687.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4686.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2668.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1203, outputZero1203]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1204 : DerivedMapBatches.Batch033.certificate2669.algebra.mat = DerivedMapBatches.Batch058.certificate4689.a := by decide
theorem secondLink1204 : DerivedMapBatches.Batch058.certificate4688.algebra.mat = DerivedMapBatches.Batch058.certificate4689.b := by decide
theorem firstValid1204 : DerivedMapBatches.Batch033.certificate2669.Valid := DerivedMapBatches.Batch033.certificate2669valid
theorem secondValid1204 : DerivedMapBatches.Batch058.certificate4688.Valid := DerivedMapBatches.Batch058.certificate4688valid
theorem outputValid1204 : DerivedMapBatches.Batch058.certificate4689.Valid := DerivedMapBatches.Batch058.certificate4689valid
theorem linkedComposition1204 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4689.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4689.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4688.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2669.algebra.mat x) := by
  rw [firstLink1204, secondLink1204]
  exact DerivedMapBatches.Batch058.certificate4689valid.2 x
theorem outputZero1204 : DerivedMapBatches.Batch058.certificate4689.c = (fun _ _ => false) := by decide
theorem linkedZero1204 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4689.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4688.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2669.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1204, outputZero1204]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1205 : DerivedMapBatches.Batch033.certificate2670.algebra.mat = DerivedMapBatches.Batch058.certificate4691.a := by decide
theorem secondLink1205 : DerivedMapBatches.Batch058.certificate4690.algebra.mat = DerivedMapBatches.Batch058.certificate4691.b := by decide
theorem firstValid1205 : DerivedMapBatches.Batch033.certificate2670.Valid := DerivedMapBatches.Batch033.certificate2670valid
theorem secondValid1205 : DerivedMapBatches.Batch058.certificate4690.Valid := DerivedMapBatches.Batch058.certificate4690valid
theorem outputValid1205 : DerivedMapBatches.Batch058.certificate4691.Valid := DerivedMapBatches.Batch058.certificate4691valid
theorem linkedComposition1205 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4691.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4691.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2670.algebra.mat x) := by
  rw [firstLink1205, secondLink1205]
  exact DerivedMapBatches.Batch058.certificate4691valid.2 x
theorem outputZero1205 : DerivedMapBatches.Batch058.certificate4691.c = (fun _ _ => false) := by decide
theorem linkedZero1205 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4691.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4690.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2670.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1205, outputZero1205]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1206 : DerivedMapBatches.Batch033.certificate2671.algebra.mat = DerivedMapBatches.Batch058.certificate4693.a := by decide
theorem secondLink1206 : DerivedMapBatches.Batch058.certificate4692.algebra.mat = DerivedMapBatches.Batch058.certificate4693.b := by decide
theorem firstValid1206 : DerivedMapBatches.Batch033.certificate2671.Valid := DerivedMapBatches.Batch033.certificate2671valid
theorem secondValid1206 : DerivedMapBatches.Batch058.certificate4692.Valid := DerivedMapBatches.Batch058.certificate4692valid
theorem outputValid1206 : DerivedMapBatches.Batch058.certificate4693.Valid := DerivedMapBatches.Batch058.certificate4693valid
theorem linkedComposition1206 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4693.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4693.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4692.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2671.algebra.mat x) := by
  rw [firstLink1206, secondLink1206]
  exact DerivedMapBatches.Batch058.certificate4693valid.2 x
theorem outputZero1206 : DerivedMapBatches.Batch058.certificate4693.c = (fun _ _ => false) := by decide
theorem linkedZero1206 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4693.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4692.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2671.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1206, outputZero1206]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1207 : DerivedMapBatches.Batch033.certificate2672.algebra.mat = DerivedMapBatches.Batch058.certificate4695.a := by decide
theorem secondLink1207 : DerivedMapBatches.Batch058.certificate4694.algebra.mat = DerivedMapBatches.Batch058.certificate4695.b := by decide
theorem firstValid1207 : DerivedMapBatches.Batch033.certificate2672.Valid := DerivedMapBatches.Batch033.certificate2672valid
theorem secondValid1207 : DerivedMapBatches.Batch058.certificate4694.Valid := DerivedMapBatches.Batch058.certificate4694valid
theorem outputValid1207 : DerivedMapBatches.Batch058.certificate4695.Valid := DerivedMapBatches.Batch058.certificate4695valid
theorem linkedComposition1207 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4695.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4695.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4694.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2672.algebra.mat x) := by
  rw [firstLink1207, secondLink1207]
  exact DerivedMapBatches.Batch058.certificate4695valid.2 x
theorem outputZero1207 : DerivedMapBatches.Batch058.certificate4695.c = (fun _ _ => false) := by decide
theorem linkedZero1207 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4695.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4694.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2672.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1207, outputZero1207]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1208 : DerivedMapBatches.Batch033.certificate2673.algebra.mat = DerivedMapBatches.Batch058.certificate4697.a := by decide
theorem secondLink1208 : DerivedMapBatches.Batch058.certificate4696.algebra.mat = DerivedMapBatches.Batch058.certificate4697.b := by decide
theorem firstValid1208 : DerivedMapBatches.Batch033.certificate2673.Valid := DerivedMapBatches.Batch033.certificate2673valid
theorem secondValid1208 : DerivedMapBatches.Batch058.certificate4696.Valid := DerivedMapBatches.Batch058.certificate4696valid
theorem outputValid1208 : DerivedMapBatches.Batch058.certificate4697.Valid := DerivedMapBatches.Batch058.certificate4697valid
theorem linkedComposition1208 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4697.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4697.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4696.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat x) := by
  rw [firstLink1208, secondLink1208]
  exact DerivedMapBatches.Batch058.certificate4697valid.2 x
theorem outputZero1208 : DerivedMapBatches.Batch058.certificate4697.c = (fun _ _ => false) := by decide
theorem linkedZero1208 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4697.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4696.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1208, outputZero1208]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1209 : DerivedMapBatches.Batch033.certificate2674.algebra.mat = DerivedMapBatches.Batch058.certificate4699.a := by decide
theorem secondLink1209 : DerivedMapBatches.Batch058.certificate4698.algebra.mat = DerivedMapBatches.Batch058.certificate4699.b := by decide
theorem firstValid1209 : DerivedMapBatches.Batch033.certificate2674.Valid := DerivedMapBatches.Batch033.certificate2674valid
theorem secondValid1209 : DerivedMapBatches.Batch058.certificate4698.Valid := DerivedMapBatches.Batch058.certificate4698valid
theorem outputValid1209 : DerivedMapBatches.Batch058.certificate4699.Valid := DerivedMapBatches.Batch058.certificate4699valid
theorem linkedComposition1209 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4699.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4699.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4698.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2674.algebra.mat x) := by
  rw [firstLink1209, secondLink1209]
  exact DerivedMapBatches.Batch058.certificate4699valid.2 x
theorem outputZero1209 : DerivedMapBatches.Batch058.certificate4699.c = (fun _ _ => false) := by decide
theorem linkedZero1209 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4699.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4698.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2674.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1209, outputZero1209]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1210 : DerivedMapBatches.Batch033.certificate2675.algebra.mat = DerivedMapBatches.Batch058.certificate4701.a := by decide
theorem secondLink1210 : DerivedMapBatches.Batch058.certificate4700.algebra.mat = DerivedMapBatches.Batch058.certificate4701.b := by decide
theorem firstValid1210 : DerivedMapBatches.Batch033.certificate2675.Valid := DerivedMapBatches.Batch033.certificate2675valid
theorem secondValid1210 : DerivedMapBatches.Batch058.certificate4700.Valid := DerivedMapBatches.Batch058.certificate4700valid
theorem outputValid1210 : DerivedMapBatches.Batch058.certificate4701.Valid := DerivedMapBatches.Batch058.certificate4701valid
theorem linkedComposition1210 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4701.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4701.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4700.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat x) := by
  rw [firstLink1210, secondLink1210]
  exact DerivedMapBatches.Batch058.certificate4701valid.2 x
theorem outputZero1210 : DerivedMapBatches.Batch058.certificate4701.c = (fun _ _ => false) := by decide
theorem linkedZero1210 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4701.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4700.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1210, outputZero1210]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1211 : DerivedMapBatches.Batch033.certificate2676.algebra.mat = DerivedMapBatches.Batch058.certificate4703.a := by decide
theorem secondLink1211 : DerivedMapBatches.Batch058.certificate4702.algebra.mat = DerivedMapBatches.Batch058.certificate4703.b := by decide
theorem firstValid1211 : DerivedMapBatches.Batch033.certificate2676.Valid := DerivedMapBatches.Batch033.certificate2676valid
theorem secondValid1211 : DerivedMapBatches.Batch058.certificate4702.Valid := DerivedMapBatches.Batch058.certificate4702valid
theorem outputValid1211 : DerivedMapBatches.Batch058.certificate4703.Valid := DerivedMapBatches.Batch058.certificate4703valid
theorem linkedComposition1211 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4703.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4703.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4702.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2676.algebra.mat x) := by
  rw [firstLink1211, secondLink1211]
  exact DerivedMapBatches.Batch058.certificate4703valid.2 x
theorem outputZero1211 : DerivedMapBatches.Batch058.certificate4703.c = (fun _ _ => false) := by decide
theorem linkedZero1211 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4703.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4702.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2676.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1211, outputZero1211]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1212 : DerivedMapBatches.Batch033.certificate2677.algebra.mat = DerivedMapBatches.Batch058.certificate4705.a := by decide
theorem secondLink1212 : DerivedMapBatches.Batch058.certificate4704.algebra.mat = DerivedMapBatches.Batch058.certificate4705.b := by decide
theorem firstValid1212 : DerivedMapBatches.Batch033.certificate2677.Valid := DerivedMapBatches.Batch033.certificate2677valid
theorem secondValid1212 : DerivedMapBatches.Batch058.certificate4704.Valid := DerivedMapBatches.Batch058.certificate4704valid
theorem outputValid1212 : DerivedMapBatches.Batch058.certificate4705.Valid := DerivedMapBatches.Batch058.certificate4705valid
theorem linkedComposition1212 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4705.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4705.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4704.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat x) := by
  rw [firstLink1212, secondLink1212]
  exact DerivedMapBatches.Batch058.certificate4705valid.2 x
theorem outputZero1212 : DerivedMapBatches.Batch058.certificate4705.c = (fun _ _ => false) := by decide
theorem linkedZero1212 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4705.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4704.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2677.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1212, outputZero1212]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1213 : DerivedMapBatches.Batch033.certificate2678.algebra.mat = DerivedMapBatches.Batch058.certificate4707.a := by decide
theorem secondLink1213 : DerivedMapBatches.Batch058.certificate4706.algebra.mat = DerivedMapBatches.Batch058.certificate4707.b := by decide
theorem firstValid1213 : DerivedMapBatches.Batch033.certificate2678.Valid := DerivedMapBatches.Batch033.certificate2678valid
theorem secondValid1213 : DerivedMapBatches.Batch058.certificate4706.Valid := DerivedMapBatches.Batch058.certificate4706valid
theorem outputValid1213 : DerivedMapBatches.Batch058.certificate4707.Valid := DerivedMapBatches.Batch058.certificate4707valid
theorem linkedComposition1213 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4707.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4707.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4706.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2678.algebra.mat x) := by
  rw [firstLink1213, secondLink1213]
  exact DerivedMapBatches.Batch058.certificate4707valid.2 x
theorem outputZero1213 : DerivedMapBatches.Batch058.certificate4707.c = (fun _ _ => false) := by decide
theorem linkedZero1213 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4707.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4706.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2678.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1213, outputZero1213]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1214 : DerivedMapBatches.Batch033.certificate2679.algebra.mat = DerivedMapBatches.Batch058.certificate4709.a := by decide
theorem secondLink1214 : DerivedMapBatches.Batch058.certificate4708.algebra.mat = DerivedMapBatches.Batch058.certificate4709.b := by decide
theorem firstValid1214 : DerivedMapBatches.Batch033.certificate2679.Valid := DerivedMapBatches.Batch033.certificate2679valid
theorem secondValid1214 : DerivedMapBatches.Batch058.certificate4708.Valid := DerivedMapBatches.Batch058.certificate4708valid
theorem outputValid1214 : DerivedMapBatches.Batch058.certificate4709.Valid := DerivedMapBatches.Batch058.certificate4709valid
theorem linkedComposition1214 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4709.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4709.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat x) := by
  rw [firstLink1214, secondLink1214]
  exact DerivedMapBatches.Batch058.certificate4709valid.2 x
theorem outputZero1214 : DerivedMapBatches.Batch058.certificate4709.c = (fun _ _ => false) := by decide
theorem linkedZero1214 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4709.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4708.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2679.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1214, outputZero1214]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1215 : DerivedMapBatches.Batch033.certificate2680.algebra.mat = DerivedMapBatches.Batch058.certificate4711.a := by decide
theorem secondLink1215 : DerivedMapBatches.Batch058.certificate4710.algebra.mat = DerivedMapBatches.Batch058.certificate4711.b := by decide
theorem firstValid1215 : DerivedMapBatches.Batch033.certificate2680.Valid := DerivedMapBatches.Batch033.certificate2680valid
theorem secondValid1215 : DerivedMapBatches.Batch058.certificate4710.Valid := DerivedMapBatches.Batch058.certificate4710valid
theorem outputValid1215 : DerivedMapBatches.Batch058.certificate4711.Valid := DerivedMapBatches.Batch058.certificate4711valid
theorem linkedComposition1215 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4711.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4711.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4710.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat x) := by
  rw [firstLink1215, secondLink1215]
  exact DerivedMapBatches.Batch058.certificate4711valid.2 x
theorem outputZero1215 : DerivedMapBatches.Batch058.certificate4711.c = (fun _ _ => false) := by decide
theorem linkedZero1215 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4711.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4710.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2680.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1215, outputZero1215]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1216 : DerivedMapBatches.Batch033.certificate2681.algebra.mat = DerivedMapBatches.Batch058.certificate4713.a := by decide
theorem secondLink1216 : DerivedMapBatches.Batch058.certificate4712.algebra.mat = DerivedMapBatches.Batch058.certificate4713.b := by decide
theorem firstValid1216 : DerivedMapBatches.Batch033.certificate2681.Valid := DerivedMapBatches.Batch033.certificate2681valid
theorem secondValid1216 : DerivedMapBatches.Batch058.certificate4712.Valid := DerivedMapBatches.Batch058.certificate4712valid
theorem outputValid1216 : DerivedMapBatches.Batch058.certificate4713.Valid := DerivedMapBatches.Batch058.certificate4713valid
theorem linkedComposition1216 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4713.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4713.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4712.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat x) := by
  rw [firstLink1216, secondLink1216]
  exact DerivedMapBatches.Batch058.certificate4713valid.2 x
theorem outputZero1216 : DerivedMapBatches.Batch058.certificate4713.c = (fun _ _ => false) := by decide
theorem linkedZero1216 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4713.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4712.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2681.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1216, outputZero1216]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1217 : DerivedMapBatches.Batch033.certificate2682.algebra.mat = DerivedMapBatches.Batch058.certificate4715.a := by decide
theorem secondLink1217 : DerivedMapBatches.Batch058.certificate4714.algebra.mat = DerivedMapBatches.Batch058.certificate4715.b := by decide
theorem firstValid1217 : DerivedMapBatches.Batch033.certificate2682.Valid := DerivedMapBatches.Batch033.certificate2682valid
theorem secondValid1217 : DerivedMapBatches.Batch058.certificate4714.Valid := DerivedMapBatches.Batch058.certificate4714valid
theorem outputValid1217 : DerivedMapBatches.Batch058.certificate4715.Valid := DerivedMapBatches.Batch058.certificate4715valid
theorem linkedComposition1217 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4715.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4715.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat x) := by
  rw [firstLink1217, secondLink1217]
  exact DerivedMapBatches.Batch058.certificate4715valid.2 x
theorem outputZero1217 : DerivedMapBatches.Batch058.certificate4715.c = (fun _ _ => false) := by decide
theorem linkedZero1217 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4715.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4714.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2682.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1217, outputZero1217]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1218 : DerivedMapBatches.Batch033.certificate2683.algebra.mat = DerivedMapBatches.Batch058.certificate4717.a := by decide
theorem secondLink1218 : DerivedMapBatches.Batch058.certificate4716.algebra.mat = DerivedMapBatches.Batch058.certificate4717.b := by decide
theorem firstValid1218 : DerivedMapBatches.Batch033.certificate2683.Valid := DerivedMapBatches.Batch033.certificate2683valid
theorem secondValid1218 : DerivedMapBatches.Batch058.certificate4716.Valid := DerivedMapBatches.Batch058.certificate4716valid
theorem outputValid1218 : DerivedMapBatches.Batch058.certificate4717.Valid := DerivedMapBatches.Batch058.certificate4717valid
theorem linkedComposition1218 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4717.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4717.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4716.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2683.algebra.mat x) := by
  rw [firstLink1218, secondLink1218]
  exact DerivedMapBatches.Batch058.certificate4717valid.2 x
theorem outputZero1218 : DerivedMapBatches.Batch058.certificate4717.c = (fun _ _ => false) := by decide
theorem linkedZero1218 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4717.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4716.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2683.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1218, outputZero1218]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1219 : DerivedMapBatches.Batch033.certificate2684.algebra.mat = DerivedMapBatches.Batch058.certificate4719.a := by decide
theorem secondLink1219 : DerivedMapBatches.Batch058.certificate4718.algebra.mat = DerivedMapBatches.Batch058.certificate4719.b := by decide
theorem firstValid1219 : DerivedMapBatches.Batch033.certificate2684.Valid := DerivedMapBatches.Batch033.certificate2684valid
theorem secondValid1219 : DerivedMapBatches.Batch058.certificate4718.Valid := DerivedMapBatches.Batch058.certificate4718valid
theorem outputValid1219 : DerivedMapBatches.Batch058.certificate4719.Valid := DerivedMapBatches.Batch058.certificate4719valid
theorem linkedComposition1219 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4719.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4719.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4718.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat x) := by
  rw [firstLink1219, secondLink1219]
  exact DerivedMapBatches.Batch058.certificate4719valid.2 x
theorem outputZero1219 : DerivedMapBatches.Batch058.certificate4719.c = (fun _ _ => false) := by decide
theorem linkedZero1219 (x : LinearCertificates.Vec DerivedMapBatches.Batch058.certificate4719.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4718.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2684.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1219, outputZero1219]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1220 : DerivedMapBatches.Batch033.certificate2685.algebra.mat = DerivedMapBatches.Batch059.certificate4721.a := by decide
theorem secondLink1220 : DerivedMapBatches.Batch059.certificate4720.algebra.mat = DerivedMapBatches.Batch059.certificate4721.b := by decide
theorem firstValid1220 : DerivedMapBatches.Batch033.certificate2685.Valid := DerivedMapBatches.Batch033.certificate2685valid
theorem secondValid1220 : DerivedMapBatches.Batch059.certificate4720.Valid := DerivedMapBatches.Batch059.certificate4720valid
theorem outputValid1220 : DerivedMapBatches.Batch059.certificate4721.Valid := DerivedMapBatches.Batch059.certificate4721valid
theorem linkedComposition1220 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4721.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4721.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4720.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat x) := by
  rw [firstLink1220, secondLink1220]
  exact DerivedMapBatches.Batch059.certificate4721valid.2 x
theorem outputZero1220 : DerivedMapBatches.Batch059.certificate4721.c = (fun _ _ => false) := by decide
theorem linkedZero1220 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4721.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4720.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2685.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1220, outputZero1220]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1221 : DerivedMapBatches.Batch033.certificate2686.algebra.mat = DerivedMapBatches.Batch059.certificate4723.a := by decide
theorem secondLink1221 : DerivedMapBatches.Batch059.certificate4722.algebra.mat = DerivedMapBatches.Batch059.certificate4723.b := by decide
theorem firstValid1221 : DerivedMapBatches.Batch033.certificate2686.Valid := DerivedMapBatches.Batch033.certificate2686valid
theorem secondValid1221 : DerivedMapBatches.Batch059.certificate4722.Valid := DerivedMapBatches.Batch059.certificate4722valid
theorem outputValid1221 : DerivedMapBatches.Batch059.certificate4723.Valid := DerivedMapBatches.Batch059.certificate4723valid
theorem linkedComposition1221 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4723.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4723.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4722.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat x) := by
  rw [firstLink1221, secondLink1221]
  exact DerivedMapBatches.Batch059.certificate4723valid.2 x
theorem outputZero1221 : DerivedMapBatches.Batch059.certificate4723.c = (fun _ _ => false) := by decide
theorem linkedZero1221 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4723.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4722.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2686.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1221, outputZero1221]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1222 : DerivedMapBatches.Batch033.certificate2687.algebra.mat = DerivedMapBatches.Batch059.certificate4725.a := by decide
theorem secondLink1222 : DerivedMapBatches.Batch059.certificate4724.algebra.mat = DerivedMapBatches.Batch059.certificate4725.b := by decide
theorem firstValid1222 : DerivedMapBatches.Batch033.certificate2687.Valid := DerivedMapBatches.Batch033.certificate2687valid
theorem secondValid1222 : DerivedMapBatches.Batch059.certificate4724.Valid := DerivedMapBatches.Batch059.certificate4724valid
theorem outputValid1222 : DerivedMapBatches.Batch059.certificate4725.Valid := DerivedMapBatches.Batch059.certificate4725valid
theorem linkedComposition1222 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4725.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4725.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4724.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat x) := by
  rw [firstLink1222, secondLink1222]
  exact DerivedMapBatches.Batch059.certificate4725valid.2 x
theorem outputZero1222 : DerivedMapBatches.Batch059.certificate4725.c = (fun _ _ => false) := by decide
theorem linkedZero1222 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4725.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4724.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2687.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1222, outputZero1222]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1223 : DerivedMapBatches.Batch033.certificate2688.algebra.mat = DerivedMapBatches.Batch059.certificate4727.a := by decide
theorem secondLink1223 : DerivedMapBatches.Batch059.certificate4726.algebra.mat = DerivedMapBatches.Batch059.certificate4727.b := by decide
theorem firstValid1223 : DerivedMapBatches.Batch033.certificate2688.Valid := DerivedMapBatches.Batch033.certificate2688valid
theorem secondValid1223 : DerivedMapBatches.Batch059.certificate4726.Valid := DerivedMapBatches.Batch059.certificate4726valid
theorem outputValid1223 : DerivedMapBatches.Batch059.certificate4727.Valid := DerivedMapBatches.Batch059.certificate4727valid
theorem linkedComposition1223 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4727.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4727.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4726.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat x) := by
  rw [firstLink1223, secondLink1223]
  exact DerivedMapBatches.Batch059.certificate4727valid.2 x
theorem outputZero1223 : DerivedMapBatches.Batch059.certificate4727.c = (fun _ _ => false) := by decide
theorem linkedZero1223 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4727.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4726.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2688.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1223, outputZero1223]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1224 : DerivedMapBatches.Batch033.certificate2689.algebra.mat = DerivedMapBatches.Batch059.certificate4729.a := by decide
theorem secondLink1224 : DerivedMapBatches.Batch059.certificate4728.algebra.mat = DerivedMapBatches.Batch059.certificate4729.b := by decide
theorem firstValid1224 : DerivedMapBatches.Batch033.certificate2689.Valid := DerivedMapBatches.Batch033.certificate2689valid
theorem secondValid1224 : DerivedMapBatches.Batch059.certificate4728.Valid := DerivedMapBatches.Batch059.certificate4728valid
theorem outputValid1224 : DerivedMapBatches.Batch059.certificate4729.Valid := DerivedMapBatches.Batch059.certificate4729valid
theorem linkedComposition1224 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4729.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4729.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4728.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat x) := by
  rw [firstLink1224, secondLink1224]
  exact DerivedMapBatches.Batch059.certificate4729valid.2 x
theorem outputZero1224 : DerivedMapBatches.Batch059.certificate4729.c = (fun _ _ => false) := by decide
theorem linkedZero1224 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4729.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4728.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2689.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1224, outputZero1224]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1225 : DerivedMapBatches.Batch033.certificate2690.algebra.mat = DerivedMapBatches.Batch059.certificate4731.a := by decide
theorem secondLink1225 : DerivedMapBatches.Batch059.certificate4730.algebra.mat = DerivedMapBatches.Batch059.certificate4731.b := by decide
theorem firstValid1225 : DerivedMapBatches.Batch033.certificate2690.Valid := DerivedMapBatches.Batch033.certificate2690valid
theorem secondValid1225 : DerivedMapBatches.Batch059.certificate4730.Valid := DerivedMapBatches.Batch059.certificate4730valid
theorem outputValid1225 : DerivedMapBatches.Batch059.certificate4731.Valid := DerivedMapBatches.Batch059.certificate4731valid
theorem linkedComposition1225 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4731.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4731.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4730.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat x) := by
  rw [firstLink1225, secondLink1225]
  exact DerivedMapBatches.Batch059.certificate4731valid.2 x
theorem outputZero1225 : DerivedMapBatches.Batch059.certificate4731.c = (fun _ _ => false) := by decide
theorem linkedZero1225 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4731.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4730.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2690.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1225, outputZero1225]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1226 : DerivedMapBatches.Batch033.certificate2691.algebra.mat = DerivedMapBatches.Batch059.certificate4733.a := by decide
theorem secondLink1226 : DerivedMapBatches.Batch059.certificate4732.algebra.mat = DerivedMapBatches.Batch059.certificate4733.b := by decide
theorem firstValid1226 : DerivedMapBatches.Batch033.certificate2691.Valid := DerivedMapBatches.Batch033.certificate2691valid
theorem secondValid1226 : DerivedMapBatches.Batch059.certificate4732.Valid := DerivedMapBatches.Batch059.certificate4732valid
theorem outputValid1226 : DerivedMapBatches.Batch059.certificate4733.Valid := DerivedMapBatches.Batch059.certificate4733valid
theorem linkedComposition1226 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4733.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4733.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat x) := by
  rw [firstLink1226, secondLink1226]
  exact DerivedMapBatches.Batch059.certificate4733valid.2 x
theorem outputZero1226 : DerivedMapBatches.Batch059.certificate4733.c = (fun _ _ => false) := by decide
theorem linkedZero1226 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4733.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2691.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1226, outputZero1226]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1227 : DerivedMapBatches.Batch033.certificate2692.algebra.mat = DerivedMapBatches.Batch059.certificate4735.a := by decide
theorem secondLink1227 : DerivedMapBatches.Batch059.certificate4734.algebra.mat = DerivedMapBatches.Batch059.certificate4735.b := by decide
theorem firstValid1227 : DerivedMapBatches.Batch033.certificate2692.Valid := DerivedMapBatches.Batch033.certificate2692valid
theorem secondValid1227 : DerivedMapBatches.Batch059.certificate4734.Valid := DerivedMapBatches.Batch059.certificate4734valid
theorem outputValid1227 : DerivedMapBatches.Batch059.certificate4735.Valid := DerivedMapBatches.Batch059.certificate4735valid
theorem linkedComposition1227 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4735.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4735.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4734.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat x) := by
  rw [firstLink1227, secondLink1227]
  exact DerivedMapBatches.Batch059.certificate4735valid.2 x
theorem outputZero1227 : DerivedMapBatches.Batch059.certificate4735.c = (fun _ _ => false) := by decide
theorem linkedZero1227 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4735.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4734.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2692.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1227, outputZero1227]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1228 : DerivedMapBatches.Batch033.certificate2693.algebra.mat = DerivedMapBatches.Batch059.certificate4737.a := by decide
theorem secondLink1228 : DerivedMapBatches.Batch059.certificate4736.algebra.mat = DerivedMapBatches.Batch059.certificate4737.b := by decide
theorem firstValid1228 : DerivedMapBatches.Batch033.certificate2693.Valid := DerivedMapBatches.Batch033.certificate2693valid
theorem secondValid1228 : DerivedMapBatches.Batch059.certificate4736.Valid := DerivedMapBatches.Batch059.certificate4736valid
theorem outputValid1228 : DerivedMapBatches.Batch059.certificate4737.Valid := DerivedMapBatches.Batch059.certificate4737valid
theorem linkedComposition1228 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4737.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4737.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4736.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat x) := by
  rw [firstLink1228, secondLink1228]
  exact DerivedMapBatches.Batch059.certificate4737valid.2 x
theorem outputZero1228 : DerivedMapBatches.Batch059.certificate4737.c = (fun _ _ => false) := by decide
theorem linkedZero1228 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4737.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4736.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2693.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1228, outputZero1228]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1229 : DerivedMapBatches.Batch033.certificate2694.algebra.mat = DerivedMapBatches.Batch059.certificate4739.a := by decide
theorem secondLink1229 : DerivedMapBatches.Batch059.certificate4738.algebra.mat = DerivedMapBatches.Batch059.certificate4739.b := by decide
theorem firstValid1229 : DerivedMapBatches.Batch033.certificate2694.Valid := DerivedMapBatches.Batch033.certificate2694valid
theorem secondValid1229 : DerivedMapBatches.Batch059.certificate4738.Valid := DerivedMapBatches.Batch059.certificate4738valid
theorem outputValid1229 : DerivedMapBatches.Batch059.certificate4739.Valid := DerivedMapBatches.Batch059.certificate4739valid
theorem linkedComposition1229 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4739.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4739.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2694.algebra.mat x) := by
  rw [firstLink1229, secondLink1229]
  exact DerivedMapBatches.Batch059.certificate4739valid.2 x
theorem outputZero1229 : DerivedMapBatches.Batch059.certificate4739.c = (fun _ _ => false) := by decide
theorem linkedZero1229 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4739.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2694.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1229, outputZero1229]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1230 : DerivedMapBatches.Batch033.certificate2695.algebra.mat = DerivedMapBatches.Batch059.certificate4741.a := by decide
theorem secondLink1230 : DerivedMapBatches.Batch059.certificate4740.algebra.mat = DerivedMapBatches.Batch059.certificate4741.b := by decide
theorem firstValid1230 : DerivedMapBatches.Batch033.certificate2695.Valid := DerivedMapBatches.Batch033.certificate2695valid
theorem secondValid1230 : DerivedMapBatches.Batch059.certificate4740.Valid := DerivedMapBatches.Batch059.certificate4740valid
theorem outputValid1230 : DerivedMapBatches.Batch059.certificate4741.Valid := DerivedMapBatches.Batch059.certificate4741valid
theorem linkedComposition1230 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4741.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4741.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4740.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2695.algebra.mat x) := by
  rw [firstLink1230, secondLink1230]
  exact DerivedMapBatches.Batch059.certificate4741valid.2 x
theorem outputZero1230 : DerivedMapBatches.Batch059.certificate4741.c = (fun _ _ => false) := by decide
theorem linkedZero1230 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4741.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4740.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2695.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1230, outputZero1230]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1231 : DerivedMapBatches.Batch033.certificate2696.algebra.mat = DerivedMapBatches.Batch059.certificate4743.a := by decide
theorem secondLink1231 : DerivedMapBatches.Batch059.certificate4742.algebra.mat = DerivedMapBatches.Batch059.certificate4743.b := by decide
theorem firstValid1231 : DerivedMapBatches.Batch033.certificate2696.Valid := DerivedMapBatches.Batch033.certificate2696valid
theorem secondValid1231 : DerivedMapBatches.Batch059.certificate4742.Valid := DerivedMapBatches.Batch059.certificate4742valid
theorem outputValid1231 : DerivedMapBatches.Batch059.certificate4743.Valid := DerivedMapBatches.Batch059.certificate4743valid
theorem linkedComposition1231 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4743.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4743.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4742.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2696.algebra.mat x) := by
  rw [firstLink1231, secondLink1231]
  exact DerivedMapBatches.Batch059.certificate4743valid.2 x
theorem outputZero1231 : DerivedMapBatches.Batch059.certificate4743.c = (fun _ _ => false) := by decide
theorem linkedZero1231 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4743.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4742.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2696.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1231, outputZero1231]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1232 : DerivedMapBatches.Batch033.certificate2697.algebra.mat = DerivedMapBatches.Batch059.certificate4745.a := by decide
theorem secondLink1232 : DerivedMapBatches.Batch059.certificate4744.algebra.mat = DerivedMapBatches.Batch059.certificate4745.b := by decide
theorem firstValid1232 : DerivedMapBatches.Batch033.certificate2697.Valid := DerivedMapBatches.Batch033.certificate2697valid
theorem secondValid1232 : DerivedMapBatches.Batch059.certificate4744.Valid := DerivedMapBatches.Batch059.certificate4744valid
theorem outputValid1232 : DerivedMapBatches.Batch059.certificate4745.Valid := DerivedMapBatches.Batch059.certificate4745valid
theorem linkedComposition1232 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4745.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4745.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2697.algebra.mat x) := by
  rw [firstLink1232, secondLink1232]
  exact DerivedMapBatches.Batch059.certificate4745valid.2 x
theorem outputZero1232 : DerivedMapBatches.Batch059.certificate4745.c = (fun _ _ => false) := by decide
theorem linkedZero1232 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4745.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2697.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1232, outputZero1232]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1233 : DerivedMapBatches.Batch033.certificate2698.algebra.mat = DerivedMapBatches.Batch059.certificate4747.a := by decide
theorem secondLink1233 : DerivedMapBatches.Batch059.certificate4746.algebra.mat = DerivedMapBatches.Batch059.certificate4747.b := by decide
theorem firstValid1233 : DerivedMapBatches.Batch033.certificate2698.Valid := DerivedMapBatches.Batch033.certificate2698valid
theorem secondValid1233 : DerivedMapBatches.Batch059.certificate4746.Valid := DerivedMapBatches.Batch059.certificate4746valid
theorem outputValid1233 : DerivedMapBatches.Batch059.certificate4747.Valid := DerivedMapBatches.Batch059.certificate4747valid
theorem linkedComposition1233 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4747.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4747.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4746.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2698.algebra.mat x) := by
  rw [firstLink1233, secondLink1233]
  exact DerivedMapBatches.Batch059.certificate4747valid.2 x
theorem outputZero1233 : DerivedMapBatches.Batch059.certificate4747.c = (fun _ _ => false) := by decide
theorem linkedZero1233 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4747.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4746.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2698.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1233, outputZero1233]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1234 : DerivedMapBatches.Batch033.certificate2699.algebra.mat = DerivedMapBatches.Batch059.certificate4749.a := by decide
theorem secondLink1234 : DerivedMapBatches.Batch059.certificate4748.algebra.mat = DerivedMapBatches.Batch059.certificate4749.b := by decide
theorem firstValid1234 : DerivedMapBatches.Batch033.certificate2699.Valid := DerivedMapBatches.Batch033.certificate2699valid
theorem secondValid1234 : DerivedMapBatches.Batch059.certificate4748.Valid := DerivedMapBatches.Batch059.certificate4748valid
theorem outputValid1234 : DerivedMapBatches.Batch059.certificate4749.Valid := DerivedMapBatches.Batch059.certificate4749valid
theorem linkedComposition1234 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4749.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4749.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4748.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2699.algebra.mat x) := by
  rw [firstLink1234, secondLink1234]
  exact DerivedMapBatches.Batch059.certificate4749valid.2 x
theorem outputZero1234 : DerivedMapBatches.Batch059.certificate4749.c = (fun _ _ => false) := by decide
theorem linkedZero1234 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4749.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4748.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2699.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1234, outputZero1234]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1235 : DerivedMapBatches.Batch033.certificate2700.algebra.mat = DerivedMapBatches.Batch059.certificate4751.a := by decide
theorem secondLink1235 : DerivedMapBatches.Batch059.certificate4750.algebra.mat = DerivedMapBatches.Batch059.certificate4751.b := by decide
theorem firstValid1235 : DerivedMapBatches.Batch033.certificate2700.Valid := DerivedMapBatches.Batch033.certificate2700valid
theorem secondValid1235 : DerivedMapBatches.Batch059.certificate4750.Valid := DerivedMapBatches.Batch059.certificate4750valid
theorem outputValid1235 : DerivedMapBatches.Batch059.certificate4751.Valid := DerivedMapBatches.Batch059.certificate4751valid
theorem linkedComposition1235 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4751.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4751.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2700.algebra.mat x) := by
  rw [firstLink1235, secondLink1235]
  exact DerivedMapBatches.Batch059.certificate4751valid.2 x
theorem outputZero1235 : DerivedMapBatches.Batch059.certificate4751.c = (fun _ _ => false) := by decide
theorem linkedZero1235 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4751.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2700.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1235, outputZero1235]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1236 : DerivedMapBatches.Batch033.certificate2701.algebra.mat = DerivedMapBatches.Batch059.certificate4753.a := by decide
theorem secondLink1236 : DerivedMapBatches.Batch059.certificate4752.algebra.mat = DerivedMapBatches.Batch059.certificate4753.b := by decide
theorem firstValid1236 : DerivedMapBatches.Batch033.certificate2701.Valid := DerivedMapBatches.Batch033.certificate2701valid
theorem secondValid1236 : DerivedMapBatches.Batch059.certificate4752.Valid := DerivedMapBatches.Batch059.certificate4752valid
theorem outputValid1236 : DerivedMapBatches.Batch059.certificate4753.Valid := DerivedMapBatches.Batch059.certificate4753valid
theorem linkedComposition1236 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4753.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4753.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4752.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat x) := by
  rw [firstLink1236, secondLink1236]
  exact DerivedMapBatches.Batch059.certificate4753valid.2 x
theorem outputZero1236 : DerivedMapBatches.Batch059.certificate4753.c = (fun _ _ => false) := by decide
theorem linkedZero1236 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4753.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4752.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2701.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1236, outputZero1236]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1237 : DerivedMapBatches.Batch033.certificate2702.algebra.mat = DerivedMapBatches.Batch059.certificate4755.a := by decide
theorem secondLink1237 : DerivedMapBatches.Batch059.certificate4754.algebra.mat = DerivedMapBatches.Batch059.certificate4755.b := by decide
theorem firstValid1237 : DerivedMapBatches.Batch033.certificate2702.Valid := DerivedMapBatches.Batch033.certificate2702valid
theorem secondValid1237 : DerivedMapBatches.Batch059.certificate4754.Valid := DerivedMapBatches.Batch059.certificate4754valid
theorem outputValid1237 : DerivedMapBatches.Batch059.certificate4755.Valid := DerivedMapBatches.Batch059.certificate4755valid
theorem linkedComposition1237 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4755.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4755.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4754.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2702.algebra.mat x) := by
  rw [firstLink1237, secondLink1237]
  exact DerivedMapBatches.Batch059.certificate4755valid.2 x
theorem outputZero1237 : DerivedMapBatches.Batch059.certificate4755.c = (fun _ _ => false) := by decide
theorem linkedZero1237 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4755.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4754.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2702.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1237, outputZero1237]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1238 : DerivedMapBatches.Batch033.certificate2703.algebra.mat = DerivedMapBatches.Batch059.certificate4757.a := by decide
theorem secondLink1238 : DerivedMapBatches.Batch059.certificate4756.algebra.mat = DerivedMapBatches.Batch059.certificate4757.b := by decide
theorem firstValid1238 : DerivedMapBatches.Batch033.certificate2703.Valid := DerivedMapBatches.Batch033.certificate2703valid
theorem secondValid1238 : DerivedMapBatches.Batch059.certificate4756.Valid := DerivedMapBatches.Batch059.certificate4756valid
theorem outputValid1238 : DerivedMapBatches.Batch059.certificate4757.Valid := DerivedMapBatches.Batch059.certificate4757valid
theorem linkedComposition1238 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4757.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4757.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat x) := by
  rw [firstLink1238, secondLink1238]
  exact DerivedMapBatches.Batch059.certificate4757valid.2 x
theorem outputZero1238 : DerivedMapBatches.Batch059.certificate4757.c = (fun _ _ => false) := by decide
theorem linkedZero1238 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4757.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2703.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1238, outputZero1238]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1239 : DerivedMapBatches.Batch033.certificate2704.algebra.mat = DerivedMapBatches.Batch059.certificate4759.a := by decide
theorem secondLink1239 : DerivedMapBatches.Batch059.certificate4758.algebra.mat = DerivedMapBatches.Batch059.certificate4759.b := by decide
theorem firstValid1239 : DerivedMapBatches.Batch033.certificate2704.Valid := DerivedMapBatches.Batch033.certificate2704valid
theorem secondValid1239 : DerivedMapBatches.Batch059.certificate4758.Valid := DerivedMapBatches.Batch059.certificate4758valid
theorem outputValid1239 : DerivedMapBatches.Batch059.certificate4759.Valid := DerivedMapBatches.Batch059.certificate4759valid
theorem linkedComposition1239 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4759.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4759.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4758.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2704.algebra.mat x) := by
  rw [firstLink1239, secondLink1239]
  exact DerivedMapBatches.Batch059.certificate4759valid.2 x
theorem outputZero1239 : DerivedMapBatches.Batch059.certificate4759.c = (fun _ _ => false) := by decide
theorem linkedZero1239 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4759.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4758.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2704.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1239, outputZero1239]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1240 : DerivedMapBatches.Batch033.certificate2705.algebra.mat = DerivedMapBatches.Batch059.certificate4761.a := by decide
theorem secondLink1240 : DerivedMapBatches.Batch059.certificate4760.algebra.mat = DerivedMapBatches.Batch059.certificate4761.b := by decide
theorem firstValid1240 : DerivedMapBatches.Batch033.certificate2705.Valid := DerivedMapBatches.Batch033.certificate2705valid
theorem secondValid1240 : DerivedMapBatches.Batch059.certificate4760.Valid := DerivedMapBatches.Batch059.certificate4760valid
theorem outputValid1240 : DerivedMapBatches.Batch059.certificate4761.Valid := DerivedMapBatches.Batch059.certificate4761valid
theorem linkedComposition1240 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4761.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4761.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4760.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2705.algebra.mat x) := by
  rw [firstLink1240, secondLink1240]
  exact DerivedMapBatches.Batch059.certificate4761valid.2 x
theorem outputZero1240 : DerivedMapBatches.Batch059.certificate4761.c = (fun _ _ => false) := by decide
theorem linkedZero1240 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4761.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4760.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2705.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1240, outputZero1240]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1241 : DerivedMapBatches.Batch033.certificate2706.algebra.mat = DerivedMapBatches.Batch059.certificate4763.a := by decide
theorem secondLink1241 : DerivedMapBatches.Batch059.certificate4762.algebra.mat = DerivedMapBatches.Batch059.certificate4763.b := by decide
theorem firstValid1241 : DerivedMapBatches.Batch033.certificate2706.Valid := DerivedMapBatches.Batch033.certificate2706valid
theorem secondValid1241 : DerivedMapBatches.Batch059.certificate4762.Valid := DerivedMapBatches.Batch059.certificate4762valid
theorem outputValid1241 : DerivedMapBatches.Batch059.certificate4763.Valid := DerivedMapBatches.Batch059.certificate4763valid
theorem linkedComposition1241 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4763.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4763.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat x) := by
  rw [firstLink1241, secondLink1241]
  exact DerivedMapBatches.Batch059.certificate4763valid.2 x
theorem outputZero1241 : DerivedMapBatches.Batch059.certificate4763.c = (fun _ _ => false) := by decide
theorem linkedZero1241 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4763.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2706.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1241, outputZero1241]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1242 : DerivedMapBatches.Batch033.certificate2707.algebra.mat = DerivedMapBatches.Batch059.certificate4765.a := by decide
theorem secondLink1242 : DerivedMapBatches.Batch059.certificate4764.algebra.mat = DerivedMapBatches.Batch059.certificate4765.b := by decide
theorem firstValid1242 : DerivedMapBatches.Batch033.certificate2707.Valid := DerivedMapBatches.Batch033.certificate2707valid
theorem secondValid1242 : DerivedMapBatches.Batch059.certificate4764.Valid := DerivedMapBatches.Batch059.certificate4764valid
theorem outputValid1242 : DerivedMapBatches.Batch059.certificate4765.Valid := DerivedMapBatches.Batch059.certificate4765valid
theorem linkedComposition1242 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4765.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4765.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4764.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat x) := by
  rw [firstLink1242, secondLink1242]
  exact DerivedMapBatches.Batch059.certificate4765valid.2 x
theorem outputZero1242 : DerivedMapBatches.Batch059.certificate4765.c = (fun _ _ => false) := by decide
theorem linkedZero1242 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4765.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4764.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2707.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1242, outputZero1242]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1243 : DerivedMapBatches.Batch033.certificate2708.algebra.mat = DerivedMapBatches.Batch059.certificate4767.a := by decide
theorem secondLink1243 : DerivedMapBatches.Batch059.certificate4766.algebra.mat = DerivedMapBatches.Batch059.certificate4767.b := by decide
theorem firstValid1243 : DerivedMapBatches.Batch033.certificate2708.Valid := DerivedMapBatches.Batch033.certificate2708valid
theorem secondValid1243 : DerivedMapBatches.Batch059.certificate4766.Valid := DerivedMapBatches.Batch059.certificate4766valid
theorem outputValid1243 : DerivedMapBatches.Batch059.certificate4767.Valid := DerivedMapBatches.Batch059.certificate4767valid
theorem linkedComposition1243 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4767.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4767.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4766.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat x) := by
  rw [firstLink1243, secondLink1243]
  exact DerivedMapBatches.Batch059.certificate4767valid.2 x
theorem outputZero1243 : DerivedMapBatches.Batch059.certificate4767.c = (fun _ _ => false) := by decide
theorem linkedZero1243 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4767.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4766.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2708.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1243, outputZero1243]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1244 : DerivedMapBatches.Batch033.certificate2709.algebra.mat = DerivedMapBatches.Batch059.certificate4769.a := by decide
theorem secondLink1244 : DerivedMapBatches.Batch059.certificate4768.algebra.mat = DerivedMapBatches.Batch059.certificate4769.b := by decide
theorem firstValid1244 : DerivedMapBatches.Batch033.certificate2709.Valid := DerivedMapBatches.Batch033.certificate2709valid
theorem secondValid1244 : DerivedMapBatches.Batch059.certificate4768.Valid := DerivedMapBatches.Batch059.certificate4768valid
theorem outputValid1244 : DerivedMapBatches.Batch059.certificate4769.Valid := DerivedMapBatches.Batch059.certificate4769valid
theorem linkedComposition1244 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4769.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4769.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2709.algebra.mat x) := by
  rw [firstLink1244, secondLink1244]
  exact DerivedMapBatches.Batch059.certificate4769valid.2 x
theorem outputZero1244 : DerivedMapBatches.Batch059.certificate4769.c = (fun _ _ => false) := by decide
theorem linkedZero1244 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4769.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2709.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1244, outputZero1244]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1245 : DerivedMapBatches.Batch033.certificate2710.algebra.mat = DerivedMapBatches.Batch059.certificate4771.a := by decide
theorem secondLink1245 : DerivedMapBatches.Batch059.certificate4770.algebra.mat = DerivedMapBatches.Batch059.certificate4771.b := by decide
theorem firstValid1245 : DerivedMapBatches.Batch033.certificate2710.Valid := DerivedMapBatches.Batch033.certificate2710valid
theorem secondValid1245 : DerivedMapBatches.Batch059.certificate4770.Valid := DerivedMapBatches.Batch059.certificate4770valid
theorem outputValid1245 : DerivedMapBatches.Batch059.certificate4771.Valid := DerivedMapBatches.Batch059.certificate4771valid
theorem linkedComposition1245 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4771.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4771.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4770.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat x) := by
  rw [firstLink1245, secondLink1245]
  exact DerivedMapBatches.Batch059.certificate4771valid.2 x
theorem outputZero1245 : DerivedMapBatches.Batch059.certificate4771.c = (fun _ _ => false) := by decide
theorem linkedZero1245 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4771.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4770.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2710.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1245, outputZero1245]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1246 : DerivedMapBatches.Batch033.certificate2711.algebra.mat = DerivedMapBatches.Batch059.certificate4773.a := by decide
theorem secondLink1246 : DerivedMapBatches.Batch059.certificate4772.algebra.mat = DerivedMapBatches.Batch059.certificate4773.b := by decide
theorem firstValid1246 : DerivedMapBatches.Batch033.certificate2711.Valid := DerivedMapBatches.Batch033.certificate2711valid
theorem secondValid1246 : DerivedMapBatches.Batch059.certificate4772.Valid := DerivedMapBatches.Batch059.certificate4772valid
theorem outputValid1246 : DerivedMapBatches.Batch059.certificate4773.Valid := DerivedMapBatches.Batch059.certificate4773valid
theorem linkedComposition1246 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4773.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4773.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4772.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat x) := by
  rw [firstLink1246, secondLink1246]
  exact DerivedMapBatches.Batch059.certificate4773valid.2 x
theorem outputZero1246 : DerivedMapBatches.Batch059.certificate4773.c = (fun _ _ => false) := by decide
theorem linkedZero1246 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4773.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4772.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2711.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1246, outputZero1246]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1247 : DerivedMapBatches.Batch033.certificate2712.algebra.mat = DerivedMapBatches.Batch059.certificate4775.a := by decide
theorem secondLink1247 : DerivedMapBatches.Batch059.certificate4774.algebra.mat = DerivedMapBatches.Batch059.certificate4775.b := by decide
theorem firstValid1247 : DerivedMapBatches.Batch033.certificate2712.Valid := DerivedMapBatches.Batch033.certificate2712valid
theorem secondValid1247 : DerivedMapBatches.Batch059.certificate4774.Valid := DerivedMapBatches.Batch059.certificate4774valid
theorem outputValid1247 : DerivedMapBatches.Batch059.certificate4775.Valid := DerivedMapBatches.Batch059.certificate4775valid
theorem linkedComposition1247 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4775.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4775.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat x) := by
  rw [firstLink1247, secondLink1247]
  exact DerivedMapBatches.Batch059.certificate4775valid.2 x
theorem outputZero1247 : DerivedMapBatches.Batch059.certificate4775.c = (fun _ _ => false) := by decide
theorem linkedZero1247 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4775.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2712.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1247, outputZero1247]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1248 : DerivedMapBatches.Batch033.certificate2713.algebra.mat = DerivedMapBatches.Batch059.certificate4777.a := by decide
theorem secondLink1248 : DerivedMapBatches.Batch059.certificate4776.algebra.mat = DerivedMapBatches.Batch059.certificate4777.b := by decide
theorem firstValid1248 : DerivedMapBatches.Batch033.certificate2713.Valid := DerivedMapBatches.Batch033.certificate2713valid
theorem secondValid1248 : DerivedMapBatches.Batch059.certificate4776.Valid := DerivedMapBatches.Batch059.certificate4776valid
theorem outputValid1248 : DerivedMapBatches.Batch059.certificate4777.Valid := DerivedMapBatches.Batch059.certificate4777valid
theorem linkedComposition1248 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4777.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4777.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4776.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat x) := by
  rw [firstLink1248, secondLink1248]
  exact DerivedMapBatches.Batch059.certificate4777valid.2 x
theorem outputZero1248 : DerivedMapBatches.Batch059.certificate4777.c = (fun _ _ => false) := by decide
theorem linkedZero1248 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4777.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4776.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2713.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1248, outputZero1248]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1249 : DerivedMapBatches.Batch033.certificate2714.algebra.mat = DerivedMapBatches.Batch059.certificate4779.a := by decide
theorem secondLink1249 : DerivedMapBatches.Batch059.certificate4778.algebra.mat = DerivedMapBatches.Batch059.certificate4779.b := by decide
theorem firstValid1249 : DerivedMapBatches.Batch033.certificate2714.Valid := DerivedMapBatches.Batch033.certificate2714valid
theorem secondValid1249 : DerivedMapBatches.Batch059.certificate4778.Valid := DerivedMapBatches.Batch059.certificate4778valid
theorem outputValid1249 : DerivedMapBatches.Batch059.certificate4779.Valid := DerivedMapBatches.Batch059.certificate4779valid
theorem linkedComposition1249 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4779.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4779.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat x) := by
  rw [firstLink1249, secondLink1249]
  exact DerivedMapBatches.Batch059.certificate4779valid.2 x
theorem outputZero1249 : DerivedMapBatches.Batch059.certificate4779.c = (fun _ _ => false) := by decide
theorem linkedZero1249 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4779.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4778.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2714.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1249, outputZero1249]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch024
