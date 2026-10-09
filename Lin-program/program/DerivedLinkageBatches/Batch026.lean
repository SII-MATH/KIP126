import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch035
import DerivedMapBatches.Batch060
import DerivedMapBatches.Batch061
import DerivedMapBatches.Batch062
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch026
theorem firstLink1300 : DerivedMapBatches.Batch002.certificate201.algebra.mat = DerivedMapBatches.Batch060.certificate4847.a := by decide
theorem secondLink1300 : DerivedMapBatches.Batch060.certificate4846.algebra.mat = DerivedMapBatches.Batch060.certificate4847.b := by decide
theorem firstValid1300 : DerivedMapBatches.Batch002.certificate201.Valid := DerivedMapBatches.Batch002.certificate201valid
theorem secondValid1300 : DerivedMapBatches.Batch060.certificate4846.Valid := DerivedMapBatches.Batch060.certificate4846valid
theorem outputValid1300 : DerivedMapBatches.Batch060.certificate4847.Valid := DerivedMapBatches.Batch060.certificate4847valid
theorem linkedComposition1300 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4847.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4847.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) := by
  rw [firstLink1300, secondLink1300]
  exact DerivedMapBatches.Batch060.certificate4847valid.2 x
theorem rhsLink1300 : DerivedMapBatches.Batch060.certificate4847.c = DerivedMapBatches.Batch035.certificate2817.algebra.mat := by decide
theorem rhsValid1300 : DerivedMapBatches.Batch035.certificate2817.Valid := DerivedMapBatches.Batch035.certificate2817valid
theorem linkedCommutativity1300 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4847.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2817.algebra.mat x := by
  exact (linkedComposition1300 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1300)
theorem firstLink1301 : DerivedMapBatches.Batch002.certificate202.algebra.mat = DerivedMapBatches.Batch060.certificate4849.a := by decide
theorem secondLink1301 : DerivedMapBatches.Batch060.certificate4848.algebra.mat = DerivedMapBatches.Batch060.certificate4849.b := by decide
theorem firstValid1301 : DerivedMapBatches.Batch002.certificate202.Valid := DerivedMapBatches.Batch002.certificate202valid
theorem secondValid1301 : DerivedMapBatches.Batch060.certificate4848.Valid := DerivedMapBatches.Batch060.certificate4848valid
theorem outputValid1301 : DerivedMapBatches.Batch060.certificate4849.Valid := DerivedMapBatches.Batch060.certificate4849valid
theorem linkedComposition1301 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4849.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4849.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4848.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) := by
  rw [firstLink1301, secondLink1301]
  exact DerivedMapBatches.Batch060.certificate4849valid.2 x
theorem rhsLink1301 : DerivedMapBatches.Batch060.certificate4849.c = DerivedMapBatches.Batch035.certificate2818.algebra.mat := by decide
theorem rhsValid1301 : DerivedMapBatches.Batch035.certificate2818.Valid := DerivedMapBatches.Batch035.certificate2818valid
theorem linkedCommutativity1301 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4849.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4848.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2818.algebra.mat x := by
  exact (linkedComposition1301 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1301)
theorem firstLink1302 : DerivedMapBatches.Batch002.certificate203.algebra.mat = DerivedMapBatches.Batch060.certificate4851.a := by decide
theorem secondLink1302 : DerivedMapBatches.Batch060.certificate4850.algebra.mat = DerivedMapBatches.Batch060.certificate4851.b := by decide
theorem firstValid1302 : DerivedMapBatches.Batch002.certificate203.Valid := DerivedMapBatches.Batch002.certificate203valid
theorem secondValid1302 : DerivedMapBatches.Batch060.certificate4850.Valid := DerivedMapBatches.Batch060.certificate4850valid
theorem outputValid1302 : DerivedMapBatches.Batch060.certificate4851.Valid := DerivedMapBatches.Batch060.certificate4851valid
theorem linkedComposition1302 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4851.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4851.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4850.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) := by
  rw [firstLink1302, secondLink1302]
  exact DerivedMapBatches.Batch060.certificate4851valid.2 x
theorem rhsLink1302 : DerivedMapBatches.Batch060.certificate4851.c = DerivedMapBatches.Batch035.certificate2819.algebra.mat := by decide
theorem rhsValid1302 : DerivedMapBatches.Batch035.certificate2819.Valid := DerivedMapBatches.Batch035.certificate2819valid
theorem linkedCommutativity1302 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4851.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4850.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2819.algebra.mat x := by
  exact (linkedComposition1302 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1302)
theorem firstLink1303 : DerivedMapBatches.Batch002.certificate204.algebra.mat = DerivedMapBatches.Batch060.certificate4853.a := by decide
theorem secondLink1303 : DerivedMapBatches.Batch060.certificate4852.algebra.mat = DerivedMapBatches.Batch060.certificate4853.b := by decide
theorem firstValid1303 : DerivedMapBatches.Batch002.certificate204.Valid := DerivedMapBatches.Batch002.certificate204valid
theorem secondValid1303 : DerivedMapBatches.Batch060.certificate4852.Valid := DerivedMapBatches.Batch060.certificate4852valid
theorem outputValid1303 : DerivedMapBatches.Batch060.certificate4853.Valid := DerivedMapBatches.Batch060.certificate4853valid
theorem linkedComposition1303 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4853.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4853.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4852.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) := by
  rw [firstLink1303, secondLink1303]
  exact DerivedMapBatches.Batch060.certificate4853valid.2 x
theorem rhsLink1303 : DerivedMapBatches.Batch060.certificate4853.c = DerivedMapBatches.Batch035.certificate2820.algebra.mat := by decide
theorem rhsValid1303 : DerivedMapBatches.Batch035.certificate2820.Valid := DerivedMapBatches.Batch035.certificate2820valid
theorem linkedCommutativity1303 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4853.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4852.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2820.algebra.mat x := by
  exact (linkedComposition1303 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1303)
theorem firstLink1304 : DerivedMapBatches.Batch002.certificate205.algebra.mat = DerivedMapBatches.Batch060.certificate4855.a := by decide
theorem secondLink1304 : DerivedMapBatches.Batch060.certificate4854.algebra.mat = DerivedMapBatches.Batch060.certificate4855.b := by decide
theorem firstValid1304 : DerivedMapBatches.Batch002.certificate205.Valid := DerivedMapBatches.Batch002.certificate205valid
theorem secondValid1304 : DerivedMapBatches.Batch060.certificate4854.Valid := DerivedMapBatches.Batch060.certificate4854valid
theorem outputValid1304 : DerivedMapBatches.Batch060.certificate4855.Valid := DerivedMapBatches.Batch060.certificate4855valid
theorem linkedComposition1304 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4855.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4855.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4854.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) := by
  rw [firstLink1304, secondLink1304]
  exact DerivedMapBatches.Batch060.certificate4855valid.2 x
theorem rhsLink1304 : DerivedMapBatches.Batch060.certificate4855.c = DerivedMapBatches.Batch035.certificate2821.algebra.mat := by decide
theorem rhsValid1304 : DerivedMapBatches.Batch035.certificate2821.Valid := DerivedMapBatches.Batch035.certificate2821valid
theorem linkedCommutativity1304 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4855.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4854.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2821.algebra.mat x := by
  exact (linkedComposition1304 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1304)
theorem firstLink1305 : DerivedMapBatches.Batch002.certificate206.algebra.mat = DerivedMapBatches.Batch060.certificate4857.a := by decide
theorem secondLink1305 : DerivedMapBatches.Batch060.certificate4856.algebra.mat = DerivedMapBatches.Batch060.certificate4857.b := by decide
theorem firstValid1305 : DerivedMapBatches.Batch002.certificate206.Valid := DerivedMapBatches.Batch002.certificate206valid
theorem secondValid1305 : DerivedMapBatches.Batch060.certificate4856.Valid := DerivedMapBatches.Batch060.certificate4856valid
theorem outputValid1305 : DerivedMapBatches.Batch060.certificate4857.Valid := DerivedMapBatches.Batch060.certificate4857valid
theorem linkedComposition1305 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4857.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4857.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4856.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) := by
  rw [firstLink1305, secondLink1305]
  exact DerivedMapBatches.Batch060.certificate4857valid.2 x
theorem rhsLink1305 : DerivedMapBatches.Batch060.certificate4857.c = DerivedMapBatches.Batch035.certificate2822.algebra.mat := by decide
theorem rhsValid1305 : DerivedMapBatches.Batch035.certificate2822.Valid := DerivedMapBatches.Batch035.certificate2822valid
theorem linkedCommutativity1305 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4857.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4856.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2822.algebra.mat x := by
  exact (linkedComposition1305 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1305)
theorem firstLink1306 : DerivedMapBatches.Batch002.certificate207.algebra.mat = DerivedMapBatches.Batch060.certificate4859.a := by decide
theorem secondLink1306 : DerivedMapBatches.Batch060.certificate4858.algebra.mat = DerivedMapBatches.Batch060.certificate4859.b := by decide
theorem firstValid1306 : DerivedMapBatches.Batch002.certificate207.Valid := DerivedMapBatches.Batch002.certificate207valid
theorem secondValid1306 : DerivedMapBatches.Batch060.certificate4858.Valid := DerivedMapBatches.Batch060.certificate4858valid
theorem outputValid1306 : DerivedMapBatches.Batch060.certificate4859.Valid := DerivedMapBatches.Batch060.certificate4859valid
theorem linkedComposition1306 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4859.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4859.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) := by
  rw [firstLink1306, secondLink1306]
  exact DerivedMapBatches.Batch060.certificate4859valid.2 x
theorem rhsLink1306 : DerivedMapBatches.Batch060.certificate4859.c = DerivedMapBatches.Batch035.certificate2823.algebra.mat := by decide
theorem rhsValid1306 : DerivedMapBatches.Batch035.certificate2823.Valid := DerivedMapBatches.Batch035.certificate2823valid
theorem linkedCommutativity1306 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4859.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2823.algebra.mat x := by
  exact (linkedComposition1306 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1306)
theorem firstLink1307 : DerivedMapBatches.Batch060.certificate4860.algebra.mat = DerivedMapBatches.Batch060.certificate4863.a := by decide
theorem secondLink1307 : DerivedMapBatches.Batch060.certificate4861.algebra.mat = DerivedMapBatches.Batch060.certificate4863.b := by decide
theorem firstValid1307 : DerivedMapBatches.Batch060.certificate4860.Valid := DerivedMapBatches.Batch060.certificate4860valid
theorem secondValid1307 : DerivedMapBatches.Batch060.certificate4861.Valid := DerivedMapBatches.Batch060.certificate4861valid
theorem outputValid1307 : DerivedMapBatches.Batch060.certificate4863.Valid := DerivedMapBatches.Batch060.certificate4863valid
theorem linkedComposition1307 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4863.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4863.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4861.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4860.algebra.mat x) := by
  rw [firstLink1307, secondLink1307]
  exact DerivedMapBatches.Batch060.certificate4863valid.2 x
theorem rhsLink1307 : DerivedMapBatches.Batch060.certificate4863.c = DerivedMapBatches.Batch060.certificate4862.algebra.mat := by decide
theorem rhsValid1307 : DerivedMapBatches.Batch060.certificate4862.Valid := DerivedMapBatches.Batch060.certificate4862valid
theorem linkedCommutativity1307 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4863.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4861.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4860.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4862.algebra.mat x := by
  exact (linkedComposition1307 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1307)
theorem firstLink1308 : DerivedMapBatches.Batch060.certificate4864.algebra.mat = DerivedMapBatches.Batch060.certificate4867.a := by decide
theorem secondLink1308 : DerivedMapBatches.Batch060.certificate4865.algebra.mat = DerivedMapBatches.Batch060.certificate4867.b := by decide
theorem firstValid1308 : DerivedMapBatches.Batch060.certificate4864.Valid := DerivedMapBatches.Batch060.certificate4864valid
theorem secondValid1308 : DerivedMapBatches.Batch060.certificate4865.Valid := DerivedMapBatches.Batch060.certificate4865valid
theorem outputValid1308 : DerivedMapBatches.Batch060.certificate4867.Valid := DerivedMapBatches.Batch060.certificate4867valid
theorem linkedComposition1308 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4867.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4867.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4865.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4864.algebra.mat x) := by
  rw [firstLink1308, secondLink1308]
  exact DerivedMapBatches.Batch060.certificate4867valid.2 x
theorem rhsLink1308 : DerivedMapBatches.Batch060.certificate4867.c = DerivedMapBatches.Batch060.certificate4866.algebra.mat := by decide
theorem rhsValid1308 : DerivedMapBatches.Batch060.certificate4866.Valid := DerivedMapBatches.Batch060.certificate4866valid
theorem linkedCommutativity1308 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4867.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4865.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4864.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4866.algebra.mat x := by
  exact (linkedComposition1308 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1308)
theorem firstLink1309 : DerivedMapBatches.Batch060.certificate4868.algebra.mat = DerivedMapBatches.Batch060.certificate4871.a := by decide
theorem secondLink1309 : DerivedMapBatches.Batch060.certificate4869.algebra.mat = DerivedMapBatches.Batch060.certificate4871.b := by decide
theorem firstValid1309 : DerivedMapBatches.Batch060.certificate4868.Valid := DerivedMapBatches.Batch060.certificate4868valid
theorem secondValid1309 : DerivedMapBatches.Batch060.certificate4869.Valid := DerivedMapBatches.Batch060.certificate4869valid
theorem outputValid1309 : DerivedMapBatches.Batch060.certificate4871.Valid := DerivedMapBatches.Batch060.certificate4871valid
theorem linkedComposition1309 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4871.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4871.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4869.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4868.algebra.mat x) := by
  rw [firstLink1309, secondLink1309]
  exact DerivedMapBatches.Batch060.certificate4871valid.2 x
theorem rhsLink1309 : DerivedMapBatches.Batch060.certificate4871.c = DerivedMapBatches.Batch060.certificate4870.algebra.mat := by decide
theorem rhsValid1309 : DerivedMapBatches.Batch060.certificate4870.Valid := DerivedMapBatches.Batch060.certificate4870valid
theorem linkedCommutativity1309 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4871.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4869.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4868.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4870.algebra.mat x := by
  exact (linkedComposition1309 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1309)
theorem firstLink1310 : DerivedMapBatches.Batch060.certificate4872.algebra.mat = DerivedMapBatches.Batch060.certificate4875.a := by decide
theorem secondLink1310 : DerivedMapBatches.Batch060.certificate4873.algebra.mat = DerivedMapBatches.Batch060.certificate4875.b := by decide
theorem firstValid1310 : DerivedMapBatches.Batch060.certificate4872.Valid := DerivedMapBatches.Batch060.certificate4872valid
theorem secondValid1310 : DerivedMapBatches.Batch060.certificate4873.Valid := DerivedMapBatches.Batch060.certificate4873valid
theorem outputValid1310 : DerivedMapBatches.Batch060.certificate4875.Valid := DerivedMapBatches.Batch060.certificate4875valid
theorem linkedComposition1310 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4875.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4875.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4872.algebra.mat x) := by
  rw [firstLink1310, secondLink1310]
  exact DerivedMapBatches.Batch060.certificate4875valid.2 x
theorem rhsLink1310 : DerivedMapBatches.Batch060.certificate4875.c = DerivedMapBatches.Batch060.certificate4874.algebra.mat := by decide
theorem rhsValid1310 : DerivedMapBatches.Batch060.certificate4874.Valid := DerivedMapBatches.Batch060.certificate4874valid
theorem linkedCommutativity1310 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4875.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4872.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4874.algebra.mat x := by
  exact (linkedComposition1310 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1310)
theorem firstLink1311 : DerivedMapBatches.Batch060.certificate4876.algebra.mat = DerivedMapBatches.Batch060.certificate4879.a := by decide
theorem secondLink1311 : DerivedMapBatches.Batch060.certificate4877.algebra.mat = DerivedMapBatches.Batch060.certificate4879.b := by decide
theorem firstValid1311 : DerivedMapBatches.Batch060.certificate4876.Valid := DerivedMapBatches.Batch060.certificate4876valid
theorem secondValid1311 : DerivedMapBatches.Batch060.certificate4877.Valid := DerivedMapBatches.Batch060.certificate4877valid
theorem outputValid1311 : DerivedMapBatches.Batch060.certificate4879.Valid := DerivedMapBatches.Batch060.certificate4879valid
theorem linkedComposition1311 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4879.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4879.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4877.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4876.algebra.mat x) := by
  rw [firstLink1311, secondLink1311]
  exact DerivedMapBatches.Batch060.certificate4879valid.2 x
theorem rhsLink1311 : DerivedMapBatches.Batch060.certificate4879.c = DerivedMapBatches.Batch060.certificate4878.algebra.mat := by decide
theorem rhsValid1311 : DerivedMapBatches.Batch060.certificate4878.Valid := DerivedMapBatches.Batch060.certificate4878valid
theorem linkedCommutativity1311 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4879.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4877.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch060.certificate4876.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4878.algebra.mat x := by
  exact (linkedComposition1311 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1311)
theorem firstLink1312 : DerivedMapBatches.Batch061.certificate4880.algebra.mat = DerivedMapBatches.Batch061.certificate4883.a := by decide
theorem secondLink1312 : DerivedMapBatches.Batch061.certificate4881.algebra.mat = DerivedMapBatches.Batch061.certificate4883.b := by decide
theorem firstValid1312 : DerivedMapBatches.Batch061.certificate4880.Valid := DerivedMapBatches.Batch061.certificate4880valid
theorem secondValid1312 : DerivedMapBatches.Batch061.certificate4881.Valid := DerivedMapBatches.Batch061.certificate4881valid
theorem outputValid1312 : DerivedMapBatches.Batch061.certificate4883.Valid := DerivedMapBatches.Batch061.certificate4883valid
theorem linkedComposition1312 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4883.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4883.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4881.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4880.algebra.mat x) := by
  rw [firstLink1312, secondLink1312]
  exact DerivedMapBatches.Batch061.certificate4883valid.2 x
theorem rhsLink1312 : DerivedMapBatches.Batch061.certificate4883.c = DerivedMapBatches.Batch061.certificate4882.algebra.mat := by decide
theorem rhsValid1312 : DerivedMapBatches.Batch061.certificate4882.Valid := DerivedMapBatches.Batch061.certificate4882valid
theorem linkedCommutativity1312 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4883.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4881.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4880.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4882.algebra.mat x := by
  exact (linkedComposition1312 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1312)
theorem firstLink1313 : DerivedMapBatches.Batch061.certificate4884.algebra.mat = DerivedMapBatches.Batch061.certificate4887.a := by decide
theorem secondLink1313 : DerivedMapBatches.Batch061.certificate4885.algebra.mat = DerivedMapBatches.Batch061.certificate4887.b := by decide
theorem firstValid1313 : DerivedMapBatches.Batch061.certificate4884.Valid := DerivedMapBatches.Batch061.certificate4884valid
theorem secondValid1313 : DerivedMapBatches.Batch061.certificate4885.Valid := DerivedMapBatches.Batch061.certificate4885valid
theorem outputValid1313 : DerivedMapBatches.Batch061.certificate4887.Valid := DerivedMapBatches.Batch061.certificate4887valid
theorem linkedComposition1313 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4887.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4887.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4884.algebra.mat x) := by
  rw [firstLink1313, secondLink1313]
  exact DerivedMapBatches.Batch061.certificate4887valid.2 x
theorem rhsLink1313 : DerivedMapBatches.Batch061.certificate4887.c = DerivedMapBatches.Batch061.certificate4886.algebra.mat := by decide
theorem rhsValid1313 : DerivedMapBatches.Batch061.certificate4886.Valid := DerivedMapBatches.Batch061.certificate4886valid
theorem linkedCommutativity1313 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4887.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4884.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4886.algebra.mat x := by
  exact (linkedComposition1313 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1313)
theorem firstLink1314 : DerivedMapBatches.Batch061.certificate4888.algebra.mat = DerivedMapBatches.Batch061.certificate4891.a := by decide
theorem secondLink1314 : DerivedMapBatches.Batch061.certificate4889.algebra.mat = DerivedMapBatches.Batch061.certificate4891.b := by decide
theorem firstValid1314 : DerivedMapBatches.Batch061.certificate4888.Valid := DerivedMapBatches.Batch061.certificate4888valid
theorem secondValid1314 : DerivedMapBatches.Batch061.certificate4889.Valid := DerivedMapBatches.Batch061.certificate4889valid
theorem outputValid1314 : DerivedMapBatches.Batch061.certificate4891.Valid := DerivedMapBatches.Batch061.certificate4891valid
theorem linkedComposition1314 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4891.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4891.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4889.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4888.algebra.mat x) := by
  rw [firstLink1314, secondLink1314]
  exact DerivedMapBatches.Batch061.certificate4891valid.2 x
theorem rhsLink1314 : DerivedMapBatches.Batch061.certificate4891.c = DerivedMapBatches.Batch061.certificate4890.algebra.mat := by decide
theorem rhsValid1314 : DerivedMapBatches.Batch061.certificate4890.Valid := DerivedMapBatches.Batch061.certificate4890valid
theorem linkedCommutativity1314 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4891.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4889.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4888.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4890.algebra.mat x := by
  exact (linkedComposition1314 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1314)
theorem firstLink1315 : DerivedMapBatches.Batch061.certificate4892.algebra.mat = DerivedMapBatches.Batch061.certificate4895.a := by decide
theorem secondLink1315 : DerivedMapBatches.Batch061.certificate4893.algebra.mat = DerivedMapBatches.Batch061.certificate4895.b := by decide
theorem firstValid1315 : DerivedMapBatches.Batch061.certificate4892.Valid := DerivedMapBatches.Batch061.certificate4892valid
theorem secondValid1315 : DerivedMapBatches.Batch061.certificate4893.Valid := DerivedMapBatches.Batch061.certificate4893valid
theorem outputValid1315 : DerivedMapBatches.Batch061.certificate4895.Valid := DerivedMapBatches.Batch061.certificate4895valid
theorem linkedComposition1315 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4895.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4895.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4893.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4892.algebra.mat x) := by
  rw [firstLink1315, secondLink1315]
  exact DerivedMapBatches.Batch061.certificate4895valid.2 x
theorem rhsLink1315 : DerivedMapBatches.Batch061.certificate4895.c = DerivedMapBatches.Batch061.certificate4894.algebra.mat := by decide
theorem rhsValid1315 : DerivedMapBatches.Batch061.certificate4894.Valid := DerivedMapBatches.Batch061.certificate4894valid
theorem linkedCommutativity1315 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4895.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4893.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4892.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4894.algebra.mat x := by
  exact (linkedComposition1315 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1315)
theorem firstLink1316 : DerivedMapBatches.Batch061.certificate4896.algebra.mat = DerivedMapBatches.Batch061.certificate4899.a := by decide
theorem secondLink1316 : DerivedMapBatches.Batch061.certificate4897.algebra.mat = DerivedMapBatches.Batch061.certificate4899.b := by decide
theorem firstValid1316 : DerivedMapBatches.Batch061.certificate4896.Valid := DerivedMapBatches.Batch061.certificate4896valid
theorem secondValid1316 : DerivedMapBatches.Batch061.certificate4897.Valid := DerivedMapBatches.Batch061.certificate4897valid
theorem outputValid1316 : DerivedMapBatches.Batch061.certificate4899.Valid := DerivedMapBatches.Batch061.certificate4899valid
theorem linkedComposition1316 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4899.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4899.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4897.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4896.algebra.mat x) := by
  rw [firstLink1316, secondLink1316]
  exact DerivedMapBatches.Batch061.certificate4899valid.2 x
theorem rhsLink1316 : DerivedMapBatches.Batch061.certificate4899.c = DerivedMapBatches.Batch061.certificate4898.algebra.mat := by decide
theorem rhsValid1316 : DerivedMapBatches.Batch061.certificate4898.Valid := DerivedMapBatches.Batch061.certificate4898valid
theorem linkedCommutativity1316 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4899.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4897.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4896.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4898.algebra.mat x := by
  exact (linkedComposition1316 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1316)
theorem firstLink1317 : DerivedMapBatches.Batch061.certificate4900.algebra.mat = DerivedMapBatches.Batch061.certificate4903.a := by decide
theorem secondLink1317 : DerivedMapBatches.Batch061.certificate4901.algebra.mat = DerivedMapBatches.Batch061.certificate4903.b := by decide
theorem firstValid1317 : DerivedMapBatches.Batch061.certificate4900.Valid := DerivedMapBatches.Batch061.certificate4900valid
theorem secondValid1317 : DerivedMapBatches.Batch061.certificate4901.Valid := DerivedMapBatches.Batch061.certificate4901valid
theorem outputValid1317 : DerivedMapBatches.Batch061.certificate4903.Valid := DerivedMapBatches.Batch061.certificate4903valid
theorem linkedComposition1317 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4903.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4903.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4901.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4900.algebra.mat x) := by
  rw [firstLink1317, secondLink1317]
  exact DerivedMapBatches.Batch061.certificate4903valid.2 x
theorem rhsLink1317 : DerivedMapBatches.Batch061.certificate4903.c = DerivedMapBatches.Batch061.certificate4902.algebra.mat := by decide
theorem rhsValid1317 : DerivedMapBatches.Batch061.certificate4902.Valid := DerivedMapBatches.Batch061.certificate4902valid
theorem linkedCommutativity1317 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4903.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4901.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4900.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4902.algebra.mat x := by
  exact (linkedComposition1317 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1317)
theorem firstLink1318 : DerivedMapBatches.Batch061.certificate4904.algebra.mat = DerivedMapBatches.Batch061.certificate4907.a := by decide
theorem secondLink1318 : DerivedMapBatches.Batch061.certificate4905.algebra.mat = DerivedMapBatches.Batch061.certificate4907.b := by decide
theorem firstValid1318 : DerivedMapBatches.Batch061.certificate4904.Valid := DerivedMapBatches.Batch061.certificate4904valid
theorem secondValid1318 : DerivedMapBatches.Batch061.certificate4905.Valid := DerivedMapBatches.Batch061.certificate4905valid
theorem outputValid1318 : DerivedMapBatches.Batch061.certificate4907.Valid := DerivedMapBatches.Batch061.certificate4907valid
theorem linkedComposition1318 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4907.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4907.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4904.algebra.mat x) := by
  rw [firstLink1318, secondLink1318]
  exact DerivedMapBatches.Batch061.certificate4907valid.2 x
theorem rhsLink1318 : DerivedMapBatches.Batch061.certificate4907.c = DerivedMapBatches.Batch061.certificate4906.algebra.mat := by decide
theorem rhsValid1318 : DerivedMapBatches.Batch061.certificate4906.Valid := DerivedMapBatches.Batch061.certificate4906valid
theorem linkedCommutativity1318 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4907.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4904.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4906.algebra.mat x := by
  exact (linkedComposition1318 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1318)
theorem firstLink1319 : DerivedMapBatches.Batch061.certificate4908.algebra.mat = DerivedMapBatches.Batch061.certificate4911.a := by decide
theorem secondLink1319 : DerivedMapBatches.Batch061.certificate4909.algebra.mat = DerivedMapBatches.Batch061.certificate4911.b := by decide
theorem firstValid1319 : DerivedMapBatches.Batch061.certificate4908.Valid := DerivedMapBatches.Batch061.certificate4908valid
theorem secondValid1319 : DerivedMapBatches.Batch061.certificate4909.Valid := DerivedMapBatches.Batch061.certificate4909valid
theorem outputValid1319 : DerivedMapBatches.Batch061.certificate4911.Valid := DerivedMapBatches.Batch061.certificate4911valid
theorem linkedComposition1319 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4911.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4911.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4908.algebra.mat x) := by
  rw [firstLink1319, secondLink1319]
  exact DerivedMapBatches.Batch061.certificate4911valid.2 x
theorem rhsLink1319 : DerivedMapBatches.Batch061.certificate4911.c = DerivedMapBatches.Batch061.certificate4910.algebra.mat := by decide
theorem rhsValid1319 : DerivedMapBatches.Batch061.certificate4910.Valid := DerivedMapBatches.Batch061.certificate4910valid
theorem linkedCommutativity1319 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4911.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4908.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4910.algebra.mat x := by
  exact (linkedComposition1319 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1319)
theorem firstLink1320 : DerivedMapBatches.Batch061.certificate4912.algebra.mat = DerivedMapBatches.Batch061.certificate4915.a := by decide
theorem secondLink1320 : DerivedMapBatches.Batch061.certificate4913.algebra.mat = DerivedMapBatches.Batch061.certificate4915.b := by decide
theorem firstValid1320 : DerivedMapBatches.Batch061.certificate4912.Valid := DerivedMapBatches.Batch061.certificate4912valid
theorem secondValid1320 : DerivedMapBatches.Batch061.certificate4913.Valid := DerivedMapBatches.Batch061.certificate4913valid
theorem outputValid1320 : DerivedMapBatches.Batch061.certificate4915.Valid := DerivedMapBatches.Batch061.certificate4915valid
theorem linkedComposition1320 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4915.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4915.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4913.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4912.algebra.mat x) := by
  rw [firstLink1320, secondLink1320]
  exact DerivedMapBatches.Batch061.certificate4915valid.2 x
theorem rhsLink1320 : DerivedMapBatches.Batch061.certificate4915.c = DerivedMapBatches.Batch061.certificate4914.algebra.mat := by decide
theorem rhsValid1320 : DerivedMapBatches.Batch061.certificate4914.Valid := DerivedMapBatches.Batch061.certificate4914valid
theorem linkedCommutativity1320 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4915.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4913.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4912.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4914.algebra.mat x := by
  exact (linkedComposition1320 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1320)
theorem firstLink1321 : DerivedMapBatches.Batch061.certificate4916.algebra.mat = DerivedMapBatches.Batch061.certificate4919.a := by decide
theorem secondLink1321 : DerivedMapBatches.Batch061.certificate4917.algebra.mat = DerivedMapBatches.Batch061.certificate4919.b := by decide
theorem firstValid1321 : DerivedMapBatches.Batch061.certificate4916.Valid := DerivedMapBatches.Batch061.certificate4916valid
theorem secondValid1321 : DerivedMapBatches.Batch061.certificate4917.Valid := DerivedMapBatches.Batch061.certificate4917valid
theorem outputValid1321 : DerivedMapBatches.Batch061.certificate4919.Valid := DerivedMapBatches.Batch061.certificate4919valid
theorem linkedComposition1321 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4919.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4919.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4917.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4916.algebra.mat x) := by
  rw [firstLink1321, secondLink1321]
  exact DerivedMapBatches.Batch061.certificate4919valid.2 x
theorem rhsLink1321 : DerivedMapBatches.Batch061.certificate4919.c = DerivedMapBatches.Batch061.certificate4918.algebra.mat := by decide
theorem rhsValid1321 : DerivedMapBatches.Batch061.certificate4918.Valid := DerivedMapBatches.Batch061.certificate4918valid
theorem linkedCommutativity1321 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4919.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4917.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4916.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4918.algebra.mat x := by
  exact (linkedComposition1321 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1321)
theorem firstLink1322 : DerivedMapBatches.Batch061.certificate4920.algebra.mat = DerivedMapBatches.Batch061.certificate4923.a := by decide
theorem secondLink1322 : DerivedMapBatches.Batch061.certificate4921.algebra.mat = DerivedMapBatches.Batch061.certificate4923.b := by decide
theorem firstValid1322 : DerivedMapBatches.Batch061.certificate4920.Valid := DerivedMapBatches.Batch061.certificate4920valid
theorem secondValid1322 : DerivedMapBatches.Batch061.certificate4921.Valid := DerivedMapBatches.Batch061.certificate4921valid
theorem outputValid1322 : DerivedMapBatches.Batch061.certificate4923.Valid := DerivedMapBatches.Batch061.certificate4923valid
theorem linkedComposition1322 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4923.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4923.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4920.algebra.mat x) := by
  rw [firstLink1322, secondLink1322]
  exact DerivedMapBatches.Batch061.certificate4923valid.2 x
theorem rhsLink1322 : DerivedMapBatches.Batch061.certificate4923.c = DerivedMapBatches.Batch061.certificate4922.algebra.mat := by decide
theorem rhsValid1322 : DerivedMapBatches.Batch061.certificate4922.Valid := DerivedMapBatches.Batch061.certificate4922valid
theorem linkedCommutativity1322 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4923.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4920.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4922.algebra.mat x := by
  exact (linkedComposition1322 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1322)
theorem firstLink1323 : DerivedMapBatches.Batch061.certificate4924.algebra.mat = DerivedMapBatches.Batch061.certificate4927.a := by decide
theorem secondLink1323 : DerivedMapBatches.Batch061.certificate4925.algebra.mat = DerivedMapBatches.Batch061.certificate4927.b := by decide
theorem firstValid1323 : DerivedMapBatches.Batch061.certificate4924.Valid := DerivedMapBatches.Batch061.certificate4924valid
theorem secondValid1323 : DerivedMapBatches.Batch061.certificate4925.Valid := DerivedMapBatches.Batch061.certificate4925valid
theorem outputValid1323 : DerivedMapBatches.Batch061.certificate4927.Valid := DerivedMapBatches.Batch061.certificate4927valid
theorem linkedComposition1323 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4927.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4927.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4925.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4924.algebra.mat x) := by
  rw [firstLink1323, secondLink1323]
  exact DerivedMapBatches.Batch061.certificate4927valid.2 x
theorem rhsLink1323 : DerivedMapBatches.Batch061.certificate4927.c = DerivedMapBatches.Batch061.certificate4926.algebra.mat := by decide
theorem rhsValid1323 : DerivedMapBatches.Batch061.certificate4926.Valid := DerivedMapBatches.Batch061.certificate4926valid
theorem linkedCommutativity1323 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4927.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4925.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4924.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4926.algebra.mat x := by
  exact (linkedComposition1323 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1323)
theorem firstLink1324 : DerivedMapBatches.Batch061.certificate4928.algebra.mat = DerivedMapBatches.Batch061.certificate4931.a := by decide
theorem secondLink1324 : DerivedMapBatches.Batch061.certificate4929.algebra.mat = DerivedMapBatches.Batch061.certificate4931.b := by decide
theorem firstValid1324 : DerivedMapBatches.Batch061.certificate4928.Valid := DerivedMapBatches.Batch061.certificate4928valid
theorem secondValid1324 : DerivedMapBatches.Batch061.certificate4929.Valid := DerivedMapBatches.Batch061.certificate4929valid
theorem outputValid1324 : DerivedMapBatches.Batch061.certificate4931.Valid := DerivedMapBatches.Batch061.certificate4931valid
theorem linkedComposition1324 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4931.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4931.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4928.algebra.mat x) := by
  rw [firstLink1324, secondLink1324]
  exact DerivedMapBatches.Batch061.certificate4931valid.2 x
theorem rhsLink1324 : DerivedMapBatches.Batch061.certificate4931.c = DerivedMapBatches.Batch061.certificate4930.algebra.mat := by decide
theorem rhsValid1324 : DerivedMapBatches.Batch061.certificate4930.Valid := DerivedMapBatches.Batch061.certificate4930valid
theorem linkedCommutativity1324 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4931.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4928.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4930.algebra.mat x := by
  exact (linkedComposition1324 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1324)
theorem firstLink1325 : DerivedMapBatches.Batch061.certificate4932.algebra.mat = DerivedMapBatches.Batch061.certificate4935.a := by decide
theorem secondLink1325 : DerivedMapBatches.Batch061.certificate4933.algebra.mat = DerivedMapBatches.Batch061.certificate4935.b := by decide
theorem firstValid1325 : DerivedMapBatches.Batch061.certificate4932.Valid := DerivedMapBatches.Batch061.certificate4932valid
theorem secondValid1325 : DerivedMapBatches.Batch061.certificate4933.Valid := DerivedMapBatches.Batch061.certificate4933valid
theorem outputValid1325 : DerivedMapBatches.Batch061.certificate4935.Valid := DerivedMapBatches.Batch061.certificate4935valid
theorem linkedComposition1325 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4935.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4935.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4932.algebra.mat x) := by
  rw [firstLink1325, secondLink1325]
  exact DerivedMapBatches.Batch061.certificate4935valid.2 x
theorem rhsLink1325 : DerivedMapBatches.Batch061.certificate4935.c = DerivedMapBatches.Batch061.certificate4934.algebra.mat := by decide
theorem rhsValid1325 : DerivedMapBatches.Batch061.certificate4934.Valid := DerivedMapBatches.Batch061.certificate4934valid
theorem linkedCommutativity1325 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4935.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4932.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4934.algebra.mat x := by
  exact (linkedComposition1325 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1325)
theorem firstLink1326 : DerivedMapBatches.Batch061.certificate4936.algebra.mat = DerivedMapBatches.Batch061.certificate4939.a := by decide
theorem secondLink1326 : DerivedMapBatches.Batch061.certificate4937.algebra.mat = DerivedMapBatches.Batch061.certificate4939.b := by decide
theorem firstValid1326 : DerivedMapBatches.Batch061.certificate4936.Valid := DerivedMapBatches.Batch061.certificate4936valid
theorem secondValid1326 : DerivedMapBatches.Batch061.certificate4937.Valid := DerivedMapBatches.Batch061.certificate4937valid
theorem outputValid1326 : DerivedMapBatches.Batch061.certificate4939.Valid := DerivedMapBatches.Batch061.certificate4939valid
theorem linkedComposition1326 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4939.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4939.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4937.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4936.algebra.mat x) := by
  rw [firstLink1326, secondLink1326]
  exact DerivedMapBatches.Batch061.certificate4939valid.2 x
theorem rhsLink1326 : DerivedMapBatches.Batch061.certificate4939.c = DerivedMapBatches.Batch061.certificate4938.algebra.mat := by decide
theorem rhsValid1326 : DerivedMapBatches.Batch061.certificate4938.Valid := DerivedMapBatches.Batch061.certificate4938valid
theorem linkedCommutativity1326 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4939.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4937.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4936.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4938.algebra.mat x := by
  exact (linkedComposition1326 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1326)
theorem firstLink1327 : DerivedMapBatches.Batch061.certificate4940.algebra.mat = DerivedMapBatches.Batch061.certificate4943.a := by decide
theorem secondLink1327 : DerivedMapBatches.Batch061.certificate4941.algebra.mat = DerivedMapBatches.Batch061.certificate4943.b := by decide
theorem firstValid1327 : DerivedMapBatches.Batch061.certificate4940.Valid := DerivedMapBatches.Batch061.certificate4940valid
theorem secondValid1327 : DerivedMapBatches.Batch061.certificate4941.Valid := DerivedMapBatches.Batch061.certificate4941valid
theorem outputValid1327 : DerivedMapBatches.Batch061.certificate4943.Valid := DerivedMapBatches.Batch061.certificate4943valid
theorem linkedComposition1327 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4943.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4943.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4940.algebra.mat x) := by
  rw [firstLink1327, secondLink1327]
  exact DerivedMapBatches.Batch061.certificate4943valid.2 x
theorem rhsLink1327 : DerivedMapBatches.Batch061.certificate4943.c = DerivedMapBatches.Batch061.certificate4942.algebra.mat := by decide
theorem rhsValid1327 : DerivedMapBatches.Batch061.certificate4942.Valid := DerivedMapBatches.Batch061.certificate4942valid
theorem linkedCommutativity1327 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4943.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4940.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4942.algebra.mat x := by
  exact (linkedComposition1327 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1327)
theorem firstLink1328 : DerivedMapBatches.Batch061.certificate4944.algebra.mat = DerivedMapBatches.Batch061.certificate4947.a := by decide
theorem secondLink1328 : DerivedMapBatches.Batch061.certificate4945.algebra.mat = DerivedMapBatches.Batch061.certificate4947.b := by decide
theorem firstValid1328 : DerivedMapBatches.Batch061.certificate4944.Valid := DerivedMapBatches.Batch061.certificate4944valid
theorem secondValid1328 : DerivedMapBatches.Batch061.certificate4945.Valid := DerivedMapBatches.Batch061.certificate4945valid
theorem outputValid1328 : DerivedMapBatches.Batch061.certificate4947.Valid := DerivedMapBatches.Batch061.certificate4947valid
theorem linkedComposition1328 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4947.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4947.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4944.algebra.mat x) := by
  rw [firstLink1328, secondLink1328]
  exact DerivedMapBatches.Batch061.certificate4947valid.2 x
theorem rhsLink1328 : DerivedMapBatches.Batch061.certificate4947.c = DerivedMapBatches.Batch061.certificate4946.algebra.mat := by decide
theorem rhsValid1328 : DerivedMapBatches.Batch061.certificate4946.Valid := DerivedMapBatches.Batch061.certificate4946valid
theorem linkedCommutativity1328 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4947.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4944.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4946.algebra.mat x := by
  exact (linkedComposition1328 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1328)
theorem firstLink1329 : DerivedMapBatches.Batch061.certificate4948.algebra.mat = DerivedMapBatches.Batch061.certificate4951.a := by decide
theorem secondLink1329 : DerivedMapBatches.Batch061.certificate4949.algebra.mat = DerivedMapBatches.Batch061.certificate4951.b := by decide
theorem firstValid1329 : DerivedMapBatches.Batch061.certificate4948.Valid := DerivedMapBatches.Batch061.certificate4948valid
theorem secondValid1329 : DerivedMapBatches.Batch061.certificate4949.Valid := DerivedMapBatches.Batch061.certificate4949valid
theorem outputValid1329 : DerivedMapBatches.Batch061.certificate4951.Valid := DerivedMapBatches.Batch061.certificate4951valid
theorem linkedComposition1329 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4951.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4951.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4949.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4948.algebra.mat x) := by
  rw [firstLink1329, secondLink1329]
  exact DerivedMapBatches.Batch061.certificate4951valid.2 x
theorem rhsLink1329 : DerivedMapBatches.Batch061.certificate4951.c = DerivedMapBatches.Batch061.certificate4950.algebra.mat := by decide
theorem rhsValid1329 : DerivedMapBatches.Batch061.certificate4950.Valid := DerivedMapBatches.Batch061.certificate4950valid
theorem linkedCommutativity1329 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4951.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4949.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4948.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4950.algebra.mat x := by
  exact (linkedComposition1329 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1329)
theorem firstLink1330 : DerivedMapBatches.Batch061.certificate4952.algebra.mat = DerivedMapBatches.Batch061.certificate4955.a := by decide
theorem secondLink1330 : DerivedMapBatches.Batch061.certificate4953.algebra.mat = DerivedMapBatches.Batch061.certificate4955.b := by decide
theorem firstValid1330 : DerivedMapBatches.Batch061.certificate4952.Valid := DerivedMapBatches.Batch061.certificate4952valid
theorem secondValid1330 : DerivedMapBatches.Batch061.certificate4953.Valid := DerivedMapBatches.Batch061.certificate4953valid
theorem outputValid1330 : DerivedMapBatches.Batch061.certificate4955.Valid := DerivedMapBatches.Batch061.certificate4955valid
theorem linkedComposition1330 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4955.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4955.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4952.algebra.mat x) := by
  rw [firstLink1330, secondLink1330]
  exact DerivedMapBatches.Batch061.certificate4955valid.2 x
theorem rhsLink1330 : DerivedMapBatches.Batch061.certificate4955.c = DerivedMapBatches.Batch061.certificate4954.algebra.mat := by decide
theorem rhsValid1330 : DerivedMapBatches.Batch061.certificate4954.Valid := DerivedMapBatches.Batch061.certificate4954valid
theorem linkedCommutativity1330 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4955.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4952.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4954.algebra.mat x := by
  exact (linkedComposition1330 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1330)
theorem firstLink1331 : DerivedMapBatches.Batch061.certificate4956.algebra.mat = DerivedMapBatches.Batch061.certificate4959.a := by decide
theorem secondLink1331 : DerivedMapBatches.Batch061.certificate4957.algebra.mat = DerivedMapBatches.Batch061.certificate4959.b := by decide
theorem firstValid1331 : DerivedMapBatches.Batch061.certificate4956.Valid := DerivedMapBatches.Batch061.certificate4956valid
theorem secondValid1331 : DerivedMapBatches.Batch061.certificate4957.Valid := DerivedMapBatches.Batch061.certificate4957valid
theorem outputValid1331 : DerivedMapBatches.Batch061.certificate4959.Valid := DerivedMapBatches.Batch061.certificate4959valid
theorem linkedComposition1331 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4959.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4959.c x = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4956.algebra.mat x) := by
  rw [firstLink1331, secondLink1331]
  exact DerivedMapBatches.Batch061.certificate4959valid.2 x
theorem rhsLink1331 : DerivedMapBatches.Batch061.certificate4959.c = DerivedMapBatches.Batch061.certificate4958.algebra.mat := by decide
theorem rhsValid1331 : DerivedMapBatches.Batch061.certificate4958.Valid := DerivedMapBatches.Batch061.certificate4958valid
theorem linkedCommutativity1331 (x : LinearCertificates.Vec DerivedMapBatches.Batch061.certificate4959.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch061.certificate4957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch061.certificate4956.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch061.certificate4958.algebra.mat x := by
  exact (linkedComposition1331 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1331)
theorem firstLink1332 : DerivedMapBatches.Batch062.certificate4960.algebra.mat = DerivedMapBatches.Batch062.certificate4963.a := by decide
theorem secondLink1332 : DerivedMapBatches.Batch062.certificate4961.algebra.mat = DerivedMapBatches.Batch062.certificate4963.b := by decide
theorem firstValid1332 : DerivedMapBatches.Batch062.certificate4960.Valid := DerivedMapBatches.Batch062.certificate4960valid
theorem secondValid1332 : DerivedMapBatches.Batch062.certificate4961.Valid := DerivedMapBatches.Batch062.certificate4961valid
theorem outputValid1332 : DerivedMapBatches.Batch062.certificate4963.Valid := DerivedMapBatches.Batch062.certificate4963valid
theorem linkedComposition1332 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4963.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4963.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4961.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4960.algebra.mat x) := by
  rw [firstLink1332, secondLink1332]
  exact DerivedMapBatches.Batch062.certificate4963valid.2 x
theorem rhsLink1332 : DerivedMapBatches.Batch062.certificate4963.c = DerivedMapBatches.Batch062.certificate4962.algebra.mat := by decide
theorem rhsValid1332 : DerivedMapBatches.Batch062.certificate4962.Valid := DerivedMapBatches.Batch062.certificate4962valid
theorem linkedCommutativity1332 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4963.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4961.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4960.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4962.algebra.mat x := by
  exact (linkedComposition1332 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1332)
theorem firstLink1333 : DerivedMapBatches.Batch062.certificate4964.algebra.mat = DerivedMapBatches.Batch062.certificate4967.a := by decide
theorem secondLink1333 : DerivedMapBatches.Batch062.certificate4965.algebra.mat = DerivedMapBatches.Batch062.certificate4967.b := by decide
theorem firstValid1333 : DerivedMapBatches.Batch062.certificate4964.Valid := DerivedMapBatches.Batch062.certificate4964valid
theorem secondValid1333 : DerivedMapBatches.Batch062.certificate4965.Valid := DerivedMapBatches.Batch062.certificate4965valid
theorem outputValid1333 : DerivedMapBatches.Batch062.certificate4967.Valid := DerivedMapBatches.Batch062.certificate4967valid
theorem linkedComposition1333 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4967.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4967.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4965.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4964.algebra.mat x) := by
  rw [firstLink1333, secondLink1333]
  exact DerivedMapBatches.Batch062.certificate4967valid.2 x
theorem rhsLink1333 : DerivedMapBatches.Batch062.certificate4967.c = DerivedMapBatches.Batch062.certificate4966.algebra.mat := by decide
theorem rhsValid1333 : DerivedMapBatches.Batch062.certificate4966.Valid := DerivedMapBatches.Batch062.certificate4966valid
theorem linkedCommutativity1333 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4967.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4965.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4964.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4966.algebra.mat x := by
  exact (linkedComposition1333 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1333)
theorem firstLink1334 : DerivedMapBatches.Batch062.certificate4968.algebra.mat = DerivedMapBatches.Batch062.certificate4971.a := by decide
theorem secondLink1334 : DerivedMapBatches.Batch062.certificate4969.algebra.mat = DerivedMapBatches.Batch062.certificate4971.b := by decide
theorem firstValid1334 : DerivedMapBatches.Batch062.certificate4968.Valid := DerivedMapBatches.Batch062.certificate4968valid
theorem secondValid1334 : DerivedMapBatches.Batch062.certificate4969.Valid := DerivedMapBatches.Batch062.certificate4969valid
theorem outputValid1334 : DerivedMapBatches.Batch062.certificate4971.Valid := DerivedMapBatches.Batch062.certificate4971valid
theorem linkedComposition1334 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4971.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4971.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4968.algebra.mat x) := by
  rw [firstLink1334, secondLink1334]
  exact DerivedMapBatches.Batch062.certificate4971valid.2 x
theorem rhsLink1334 : DerivedMapBatches.Batch062.certificate4971.c = DerivedMapBatches.Batch062.certificate4970.algebra.mat := by decide
theorem rhsValid1334 : DerivedMapBatches.Batch062.certificate4970.Valid := DerivedMapBatches.Batch062.certificate4970valid
theorem linkedCommutativity1334 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4971.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4968.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4970.algebra.mat x := by
  exact (linkedComposition1334 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1334)
theorem firstLink1335 : DerivedMapBatches.Batch062.certificate4972.algebra.mat = DerivedMapBatches.Batch062.certificate4975.a := by decide
theorem secondLink1335 : DerivedMapBatches.Batch062.certificate4973.algebra.mat = DerivedMapBatches.Batch062.certificate4975.b := by decide
theorem firstValid1335 : DerivedMapBatches.Batch062.certificate4972.Valid := DerivedMapBatches.Batch062.certificate4972valid
theorem secondValid1335 : DerivedMapBatches.Batch062.certificate4973.Valid := DerivedMapBatches.Batch062.certificate4973valid
theorem outputValid1335 : DerivedMapBatches.Batch062.certificate4975.Valid := DerivedMapBatches.Batch062.certificate4975valid
theorem linkedComposition1335 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4975.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4975.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4973.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4972.algebra.mat x) := by
  rw [firstLink1335, secondLink1335]
  exact DerivedMapBatches.Batch062.certificate4975valid.2 x
theorem rhsLink1335 : DerivedMapBatches.Batch062.certificate4975.c = DerivedMapBatches.Batch062.certificate4974.algebra.mat := by decide
theorem rhsValid1335 : DerivedMapBatches.Batch062.certificate4974.Valid := DerivedMapBatches.Batch062.certificate4974valid
theorem linkedCommutativity1335 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4975.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4973.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4972.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4974.algebra.mat x := by
  exact (linkedComposition1335 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1335)
theorem firstLink1336 : DerivedMapBatches.Batch062.certificate4976.algebra.mat = DerivedMapBatches.Batch062.certificate4979.a := by decide
theorem secondLink1336 : DerivedMapBatches.Batch062.certificate4977.algebra.mat = DerivedMapBatches.Batch062.certificate4979.b := by decide
theorem firstValid1336 : DerivedMapBatches.Batch062.certificate4976.Valid := DerivedMapBatches.Batch062.certificate4976valid
theorem secondValid1336 : DerivedMapBatches.Batch062.certificate4977.Valid := DerivedMapBatches.Batch062.certificate4977valid
theorem outputValid1336 : DerivedMapBatches.Batch062.certificate4979.Valid := DerivedMapBatches.Batch062.certificate4979valid
theorem linkedComposition1336 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4979.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4979.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4977.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4976.algebra.mat x) := by
  rw [firstLink1336, secondLink1336]
  exact DerivedMapBatches.Batch062.certificate4979valid.2 x
theorem rhsLink1336 : DerivedMapBatches.Batch062.certificate4979.c = DerivedMapBatches.Batch062.certificate4978.algebra.mat := by decide
theorem rhsValid1336 : DerivedMapBatches.Batch062.certificate4978.Valid := DerivedMapBatches.Batch062.certificate4978valid
theorem linkedCommutativity1336 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4979.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4977.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4976.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4978.algebra.mat x := by
  exact (linkedComposition1336 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1336)
theorem firstLink1337 : DerivedMapBatches.Batch062.certificate4980.algebra.mat = DerivedMapBatches.Batch062.certificate4983.a := by decide
theorem secondLink1337 : DerivedMapBatches.Batch062.certificate4981.algebra.mat = DerivedMapBatches.Batch062.certificate4983.b := by decide
theorem firstValid1337 : DerivedMapBatches.Batch062.certificate4980.Valid := DerivedMapBatches.Batch062.certificate4980valid
theorem secondValid1337 : DerivedMapBatches.Batch062.certificate4981.Valid := DerivedMapBatches.Batch062.certificate4981valid
theorem outputValid1337 : DerivedMapBatches.Batch062.certificate4983.Valid := DerivedMapBatches.Batch062.certificate4983valid
theorem linkedComposition1337 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4983.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4983.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4980.algebra.mat x) := by
  rw [firstLink1337, secondLink1337]
  exact DerivedMapBatches.Batch062.certificate4983valid.2 x
theorem rhsLink1337 : DerivedMapBatches.Batch062.certificate4983.c = DerivedMapBatches.Batch062.certificate4982.algebra.mat := by decide
theorem rhsValid1337 : DerivedMapBatches.Batch062.certificate4982.Valid := DerivedMapBatches.Batch062.certificate4982valid
theorem linkedCommutativity1337 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4983.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4980.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4982.algebra.mat x := by
  exact (linkedComposition1337 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1337)
theorem firstLink1338 : DerivedMapBatches.Batch062.certificate4984.algebra.mat = DerivedMapBatches.Batch062.certificate4987.a := by decide
theorem secondLink1338 : DerivedMapBatches.Batch062.certificate4985.algebra.mat = DerivedMapBatches.Batch062.certificate4987.b := by decide
theorem firstValid1338 : DerivedMapBatches.Batch062.certificate4984.Valid := DerivedMapBatches.Batch062.certificate4984valid
theorem secondValid1338 : DerivedMapBatches.Batch062.certificate4985.Valid := DerivedMapBatches.Batch062.certificate4985valid
theorem outputValid1338 : DerivedMapBatches.Batch062.certificate4987.Valid := DerivedMapBatches.Batch062.certificate4987valid
theorem linkedComposition1338 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4987.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4987.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4985.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4984.algebra.mat x) := by
  rw [firstLink1338, secondLink1338]
  exact DerivedMapBatches.Batch062.certificate4987valid.2 x
theorem rhsLink1338 : DerivedMapBatches.Batch062.certificate4987.c = DerivedMapBatches.Batch062.certificate4986.algebra.mat := by decide
theorem rhsValid1338 : DerivedMapBatches.Batch062.certificate4986.Valid := DerivedMapBatches.Batch062.certificate4986valid
theorem linkedCommutativity1338 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4987.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4985.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4984.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4986.algebra.mat x := by
  exact (linkedComposition1338 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1338)
theorem firstLink1339 : DerivedMapBatches.Batch062.certificate4988.algebra.mat = DerivedMapBatches.Batch062.certificate4991.a := by decide
theorem secondLink1339 : DerivedMapBatches.Batch062.certificate4989.algebra.mat = DerivedMapBatches.Batch062.certificate4991.b := by decide
theorem firstValid1339 : DerivedMapBatches.Batch062.certificate4988.Valid := DerivedMapBatches.Batch062.certificate4988valid
theorem secondValid1339 : DerivedMapBatches.Batch062.certificate4989.Valid := DerivedMapBatches.Batch062.certificate4989valid
theorem outputValid1339 : DerivedMapBatches.Batch062.certificate4991.Valid := DerivedMapBatches.Batch062.certificate4991valid
theorem linkedComposition1339 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4991.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4991.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4989.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4988.algebra.mat x) := by
  rw [firstLink1339, secondLink1339]
  exact DerivedMapBatches.Batch062.certificate4991valid.2 x
theorem rhsLink1339 : DerivedMapBatches.Batch062.certificate4991.c = DerivedMapBatches.Batch062.certificate4990.algebra.mat := by decide
theorem rhsValid1339 : DerivedMapBatches.Batch062.certificate4990.Valid := DerivedMapBatches.Batch062.certificate4990valid
theorem linkedCommutativity1339 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4991.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4989.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4988.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4990.algebra.mat x := by
  exact (linkedComposition1339 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1339)
theorem firstLink1340 : DerivedMapBatches.Batch062.certificate4992.algebra.mat = DerivedMapBatches.Batch062.certificate4995.a := by decide
theorem secondLink1340 : DerivedMapBatches.Batch062.certificate4993.algebra.mat = DerivedMapBatches.Batch062.certificate4995.b := by decide
theorem firstValid1340 : DerivedMapBatches.Batch062.certificate4992.Valid := DerivedMapBatches.Batch062.certificate4992valid
theorem secondValid1340 : DerivedMapBatches.Batch062.certificate4993.Valid := DerivedMapBatches.Batch062.certificate4993valid
theorem outputValid1340 : DerivedMapBatches.Batch062.certificate4995.Valid := DerivedMapBatches.Batch062.certificate4995valid
theorem linkedComposition1340 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4995.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4995.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4993.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4992.algebra.mat x) := by
  rw [firstLink1340, secondLink1340]
  exact DerivedMapBatches.Batch062.certificate4995valid.2 x
theorem rhsLink1340 : DerivedMapBatches.Batch062.certificate4995.c = DerivedMapBatches.Batch062.certificate4994.algebra.mat := by decide
theorem rhsValid1340 : DerivedMapBatches.Batch062.certificate4994.Valid := DerivedMapBatches.Batch062.certificate4994valid
theorem linkedCommutativity1340 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4995.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4993.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4992.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4994.algebra.mat x := by
  exact (linkedComposition1340 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1340)
theorem firstLink1341 : DerivedMapBatches.Batch062.certificate4996.algebra.mat = DerivedMapBatches.Batch062.certificate4999.a := by decide
theorem secondLink1341 : DerivedMapBatches.Batch062.certificate4997.algebra.mat = DerivedMapBatches.Batch062.certificate4999.b := by decide
theorem firstValid1341 : DerivedMapBatches.Batch062.certificate4996.Valid := DerivedMapBatches.Batch062.certificate4996valid
theorem secondValid1341 : DerivedMapBatches.Batch062.certificate4997.Valid := DerivedMapBatches.Batch062.certificate4997valid
theorem outputValid1341 : DerivedMapBatches.Batch062.certificate4999.Valid := DerivedMapBatches.Batch062.certificate4999valid
theorem linkedComposition1341 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4999.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4999.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4997.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4996.algebra.mat x) := by
  rw [firstLink1341, secondLink1341]
  exact DerivedMapBatches.Batch062.certificate4999valid.2 x
theorem rhsLink1341 : DerivedMapBatches.Batch062.certificate4999.c = DerivedMapBatches.Batch062.certificate4998.algebra.mat := by decide
theorem rhsValid1341 : DerivedMapBatches.Batch062.certificate4998.Valid := DerivedMapBatches.Batch062.certificate4998valid
theorem linkedCommutativity1341 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate4999.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate4997.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate4996.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate4998.algebra.mat x := by
  exact (linkedComposition1341 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1341)
theorem firstLink1342 : DerivedMapBatches.Batch062.certificate5000.algebra.mat = DerivedMapBatches.Batch062.certificate5003.a := by decide
theorem secondLink1342 : DerivedMapBatches.Batch062.certificate5001.algebra.mat = DerivedMapBatches.Batch062.certificate5003.b := by decide
theorem firstValid1342 : DerivedMapBatches.Batch062.certificate5000.Valid := DerivedMapBatches.Batch062.certificate5000valid
theorem secondValid1342 : DerivedMapBatches.Batch062.certificate5001.Valid := DerivedMapBatches.Batch062.certificate5001valid
theorem outputValid1342 : DerivedMapBatches.Batch062.certificate5003.Valid := DerivedMapBatches.Batch062.certificate5003valid
theorem linkedComposition1342 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5003.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5003.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5001.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5000.algebra.mat x) := by
  rw [firstLink1342, secondLink1342]
  exact DerivedMapBatches.Batch062.certificate5003valid.2 x
theorem rhsLink1342 : DerivedMapBatches.Batch062.certificate5003.c = DerivedMapBatches.Batch062.certificate5002.algebra.mat := by decide
theorem rhsValid1342 : DerivedMapBatches.Batch062.certificate5002.Valid := DerivedMapBatches.Batch062.certificate5002valid
theorem linkedCommutativity1342 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5003.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5001.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5000.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5002.algebra.mat x := by
  exact (linkedComposition1342 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1342)
theorem firstLink1343 : DerivedMapBatches.Batch062.certificate5004.algebra.mat = DerivedMapBatches.Batch062.certificate5007.a := by decide
theorem secondLink1343 : DerivedMapBatches.Batch062.certificate5005.algebra.mat = DerivedMapBatches.Batch062.certificate5007.b := by decide
theorem firstValid1343 : DerivedMapBatches.Batch062.certificate5004.Valid := DerivedMapBatches.Batch062.certificate5004valid
theorem secondValid1343 : DerivedMapBatches.Batch062.certificate5005.Valid := DerivedMapBatches.Batch062.certificate5005valid
theorem outputValid1343 : DerivedMapBatches.Batch062.certificate5007.Valid := DerivedMapBatches.Batch062.certificate5007valid
theorem linkedComposition1343 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5007.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5007.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5005.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5004.algebra.mat x) := by
  rw [firstLink1343, secondLink1343]
  exact DerivedMapBatches.Batch062.certificate5007valid.2 x
theorem rhsLink1343 : DerivedMapBatches.Batch062.certificate5007.c = DerivedMapBatches.Batch062.certificate5006.algebra.mat := by decide
theorem rhsValid1343 : DerivedMapBatches.Batch062.certificate5006.Valid := DerivedMapBatches.Batch062.certificate5006valid
theorem linkedCommutativity1343 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5007.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5005.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5004.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5006.algebra.mat x := by
  exact (linkedComposition1343 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1343)
theorem firstLink1344 : DerivedMapBatches.Batch062.certificate5008.algebra.mat = DerivedMapBatches.Batch062.certificate5011.a := by decide
theorem secondLink1344 : DerivedMapBatches.Batch062.certificate5009.algebra.mat = DerivedMapBatches.Batch062.certificate5011.b := by decide
theorem firstValid1344 : DerivedMapBatches.Batch062.certificate5008.Valid := DerivedMapBatches.Batch062.certificate5008valid
theorem secondValid1344 : DerivedMapBatches.Batch062.certificate5009.Valid := DerivedMapBatches.Batch062.certificate5009valid
theorem outputValid1344 : DerivedMapBatches.Batch062.certificate5011.Valid := DerivedMapBatches.Batch062.certificate5011valid
theorem linkedComposition1344 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5011.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5011.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5009.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5008.algebra.mat x) := by
  rw [firstLink1344, secondLink1344]
  exact DerivedMapBatches.Batch062.certificate5011valid.2 x
theorem rhsLink1344 : DerivedMapBatches.Batch062.certificate5011.c = DerivedMapBatches.Batch062.certificate5010.algebra.mat := by decide
theorem rhsValid1344 : DerivedMapBatches.Batch062.certificate5010.Valid := DerivedMapBatches.Batch062.certificate5010valid
theorem linkedCommutativity1344 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5011.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5009.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5008.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5010.algebra.mat x := by
  exact (linkedComposition1344 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1344)
theorem firstLink1345 : DerivedMapBatches.Batch062.certificate5012.algebra.mat = DerivedMapBatches.Batch062.certificate5015.a := by decide
theorem secondLink1345 : DerivedMapBatches.Batch062.certificate5013.algebra.mat = DerivedMapBatches.Batch062.certificate5015.b := by decide
theorem firstValid1345 : DerivedMapBatches.Batch062.certificate5012.Valid := DerivedMapBatches.Batch062.certificate5012valid
theorem secondValid1345 : DerivedMapBatches.Batch062.certificate5013.Valid := DerivedMapBatches.Batch062.certificate5013valid
theorem outputValid1345 : DerivedMapBatches.Batch062.certificate5015.Valid := DerivedMapBatches.Batch062.certificate5015valid
theorem linkedComposition1345 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5015.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5015.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5013.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5012.algebra.mat x) := by
  rw [firstLink1345, secondLink1345]
  exact DerivedMapBatches.Batch062.certificate5015valid.2 x
theorem rhsLink1345 : DerivedMapBatches.Batch062.certificate5015.c = DerivedMapBatches.Batch062.certificate5014.algebra.mat := by decide
theorem rhsValid1345 : DerivedMapBatches.Batch062.certificate5014.Valid := DerivedMapBatches.Batch062.certificate5014valid
theorem linkedCommutativity1345 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5015.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5013.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5012.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5014.algebra.mat x := by
  exact (linkedComposition1345 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1345)
theorem firstLink1346 : DerivedMapBatches.Batch062.certificate5016.algebra.mat = DerivedMapBatches.Batch062.certificate5019.a := by decide
theorem secondLink1346 : DerivedMapBatches.Batch062.certificate5017.algebra.mat = DerivedMapBatches.Batch062.certificate5019.b := by decide
theorem firstValid1346 : DerivedMapBatches.Batch062.certificate5016.Valid := DerivedMapBatches.Batch062.certificate5016valid
theorem secondValid1346 : DerivedMapBatches.Batch062.certificate5017.Valid := DerivedMapBatches.Batch062.certificate5017valid
theorem outputValid1346 : DerivedMapBatches.Batch062.certificate5019.Valid := DerivedMapBatches.Batch062.certificate5019valid
theorem linkedComposition1346 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5019.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5019.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5017.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5016.algebra.mat x) := by
  rw [firstLink1346, secondLink1346]
  exact DerivedMapBatches.Batch062.certificate5019valid.2 x
theorem rhsLink1346 : DerivedMapBatches.Batch062.certificate5019.c = DerivedMapBatches.Batch062.certificate5018.algebra.mat := by decide
theorem rhsValid1346 : DerivedMapBatches.Batch062.certificate5018.Valid := DerivedMapBatches.Batch062.certificate5018valid
theorem linkedCommutativity1346 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5019.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5017.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5016.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5018.algebra.mat x := by
  exact (linkedComposition1346 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1346)
theorem firstLink1347 : DerivedMapBatches.Batch062.certificate5020.algebra.mat = DerivedMapBatches.Batch062.certificate5023.a := by decide
theorem secondLink1347 : DerivedMapBatches.Batch062.certificate5021.algebra.mat = DerivedMapBatches.Batch062.certificate5023.b := by decide
theorem firstValid1347 : DerivedMapBatches.Batch062.certificate5020.Valid := DerivedMapBatches.Batch062.certificate5020valid
theorem secondValid1347 : DerivedMapBatches.Batch062.certificate5021.Valid := DerivedMapBatches.Batch062.certificate5021valid
theorem outputValid1347 : DerivedMapBatches.Batch062.certificate5023.Valid := DerivedMapBatches.Batch062.certificate5023valid
theorem linkedComposition1347 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5023.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5023.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5021.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5020.algebra.mat x) := by
  rw [firstLink1347, secondLink1347]
  exact DerivedMapBatches.Batch062.certificate5023valid.2 x
theorem rhsLink1347 : DerivedMapBatches.Batch062.certificate5023.c = DerivedMapBatches.Batch062.certificate5022.algebra.mat := by decide
theorem rhsValid1347 : DerivedMapBatches.Batch062.certificate5022.Valid := DerivedMapBatches.Batch062.certificate5022valid
theorem linkedCommutativity1347 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5023.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5021.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5020.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5022.algebra.mat x := by
  exact (linkedComposition1347 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1347)
theorem firstLink1348 : DerivedMapBatches.Batch062.certificate5024.algebra.mat = DerivedMapBatches.Batch062.certificate5027.a := by decide
theorem secondLink1348 : DerivedMapBatches.Batch062.certificate5025.algebra.mat = DerivedMapBatches.Batch062.certificate5027.b := by decide
theorem firstValid1348 : DerivedMapBatches.Batch062.certificate5024.Valid := DerivedMapBatches.Batch062.certificate5024valid
theorem secondValid1348 : DerivedMapBatches.Batch062.certificate5025.Valid := DerivedMapBatches.Batch062.certificate5025valid
theorem outputValid1348 : DerivedMapBatches.Batch062.certificate5027.Valid := DerivedMapBatches.Batch062.certificate5027valid
theorem linkedComposition1348 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5027.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5027.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5025.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5024.algebra.mat x) := by
  rw [firstLink1348, secondLink1348]
  exact DerivedMapBatches.Batch062.certificate5027valid.2 x
theorem rhsLink1348 : DerivedMapBatches.Batch062.certificate5027.c = DerivedMapBatches.Batch062.certificate5026.algebra.mat := by decide
theorem rhsValid1348 : DerivedMapBatches.Batch062.certificate5026.Valid := DerivedMapBatches.Batch062.certificate5026valid
theorem linkedCommutativity1348 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5027.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5025.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5024.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5026.algebra.mat x := by
  exact (linkedComposition1348 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1348)
theorem firstLink1349 : DerivedMapBatches.Batch062.certificate5028.algebra.mat = DerivedMapBatches.Batch062.certificate5031.a := by decide
theorem secondLink1349 : DerivedMapBatches.Batch062.certificate5029.algebra.mat = DerivedMapBatches.Batch062.certificate5031.b := by decide
theorem firstValid1349 : DerivedMapBatches.Batch062.certificate5028.Valid := DerivedMapBatches.Batch062.certificate5028valid
theorem secondValid1349 : DerivedMapBatches.Batch062.certificate5029.Valid := DerivedMapBatches.Batch062.certificate5029valid
theorem outputValid1349 : DerivedMapBatches.Batch062.certificate5031.Valid := DerivedMapBatches.Batch062.certificate5031valid
theorem linkedComposition1349 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5031.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5031.c x = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5029.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5028.algebra.mat x) := by
  rw [firstLink1349, secondLink1349]
  exact DerivedMapBatches.Batch062.certificate5031valid.2 x
theorem rhsLink1349 : DerivedMapBatches.Batch062.certificate5031.c = DerivedMapBatches.Batch062.certificate5030.algebra.mat := by decide
theorem rhsValid1349 : DerivedMapBatches.Batch062.certificate5030.Valid := DerivedMapBatches.Batch062.certificate5030valid
theorem linkedCommutativity1349 (x : LinearCertificates.Vec DerivedMapBatches.Batch062.certificate5031.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch062.certificate5029.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch062.certificate5028.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch062.certificate5030.algebra.mat x := by
  exact (linkedComposition1349 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1349)
end DerivedLinkageBatches.Batch026
