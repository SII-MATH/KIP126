import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch052
import DerivedMapBatches.Batch054
import DerivedMapBatches.Batch055
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch020
theorem firstLink1000 : DerivedMapBatches.Batch002.certificate161.algebra.mat = DerivedMapBatches.Batch054.certificate4328.a := by decide
theorem secondLink1000 : DerivedMapBatches.Batch001.certificate142.algebra.mat = DerivedMapBatches.Batch054.certificate4328.b := by decide
theorem firstValid1000 : DerivedMapBatches.Batch002.certificate161.Valid := DerivedMapBatches.Batch002.certificate161valid
theorem secondValid1000 : DerivedMapBatches.Batch001.certificate142.Valid := DerivedMapBatches.Batch001.certificate142valid
theorem outputValid1000 : DerivedMapBatches.Batch054.certificate4328.Valid := DerivedMapBatches.Batch054.certificate4328valid
theorem linkedComposition1000 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4328.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4328.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate161.algebra.mat x) := by
  rw [firstLink1000, secondLink1000]
  exact DerivedMapBatches.Batch054.certificate4328valid.2 x
theorem outputZero1000 : DerivedMapBatches.Batch054.certificate4328.c = (fun _ _ => false) := by decide
theorem linkedZero1000 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4328.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate161.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1000, outputZero1000]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1001 : DerivedMapBatches.Batch002.certificate162.algebra.mat = DerivedMapBatches.Batch054.certificate4330.a := by decide
theorem secondLink1001 : DerivedMapBatches.Batch054.certificate4329.algebra.mat = DerivedMapBatches.Batch054.certificate4330.b := by decide
theorem firstValid1001 : DerivedMapBatches.Batch002.certificate162.Valid := DerivedMapBatches.Batch002.certificate162valid
theorem secondValid1001 : DerivedMapBatches.Batch054.certificate4329.Valid := DerivedMapBatches.Batch054.certificate4329valid
theorem outputValid1001 : DerivedMapBatches.Batch054.certificate4330.Valid := DerivedMapBatches.Batch054.certificate4330valid
theorem linkedComposition1001 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4330.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4330.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4329.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat x) := by
  rw [firstLink1001, secondLink1001]
  exact DerivedMapBatches.Batch054.certificate4330valid.2 x
theorem outputZero1001 : DerivedMapBatches.Batch054.certificate4330.c = (fun _ _ => false) := by decide
theorem linkedZero1001 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4330.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4329.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1001, outputZero1001]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1002 : DerivedMapBatches.Batch002.certificate163.algebra.mat = DerivedMapBatches.Batch054.certificate4331.a := by decide
theorem secondLink1002 : DerivedMapBatches.Batch052.certificate4160.algebra.mat = DerivedMapBatches.Batch054.certificate4331.b := by decide
theorem firstValid1002 : DerivedMapBatches.Batch002.certificate163.Valid := DerivedMapBatches.Batch002.certificate163valid
theorem secondValid1002 : DerivedMapBatches.Batch052.certificate4160.Valid := DerivedMapBatches.Batch052.certificate4160valid
theorem outputValid1002 : DerivedMapBatches.Batch054.certificate4331.Valid := DerivedMapBatches.Batch054.certificate4331valid
theorem linkedComposition1002 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4331.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4331.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate163.algebra.mat x) := by
  rw [firstLink1002, secondLink1002]
  exact DerivedMapBatches.Batch054.certificate4331valid.2 x
theorem outputZero1002 : DerivedMapBatches.Batch054.certificate4331.c = (fun _ _ => false) := by decide
theorem linkedZero1002 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4331.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate163.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1002, outputZero1002]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1003 : DerivedMapBatches.Batch002.certificate164.algebra.mat = DerivedMapBatches.Batch054.certificate4332.a := by decide
theorem secondLink1003 : DerivedMapBatches.Batch001.certificate145.algebra.mat = DerivedMapBatches.Batch054.certificate4332.b := by decide
theorem firstValid1003 : DerivedMapBatches.Batch002.certificate164.Valid := DerivedMapBatches.Batch002.certificate164valid
theorem secondValid1003 : DerivedMapBatches.Batch001.certificate145.Valid := DerivedMapBatches.Batch001.certificate145valid
theorem outputValid1003 : DerivedMapBatches.Batch054.certificate4332.Valid := DerivedMapBatches.Batch054.certificate4332valid
theorem linkedComposition1003 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4332.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4332.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate164.algebra.mat x) := by
  rw [firstLink1003, secondLink1003]
  exact DerivedMapBatches.Batch054.certificate4332valid.2 x
theorem outputZero1003 : DerivedMapBatches.Batch054.certificate4332.c = (fun _ _ => false) := by decide
theorem linkedZero1003 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4332.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate164.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1003, outputZero1003]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1004 : DerivedMapBatches.Batch002.certificate165.algebra.mat = DerivedMapBatches.Batch054.certificate4334.a := by decide
theorem secondLink1004 : DerivedMapBatches.Batch054.certificate4333.algebra.mat = DerivedMapBatches.Batch054.certificate4334.b := by decide
theorem firstValid1004 : DerivedMapBatches.Batch002.certificate165.Valid := DerivedMapBatches.Batch002.certificate165valid
theorem secondValid1004 : DerivedMapBatches.Batch054.certificate4333.Valid := DerivedMapBatches.Batch054.certificate4333valid
theorem outputValid1004 : DerivedMapBatches.Batch054.certificate4334.Valid := DerivedMapBatches.Batch054.certificate4334valid
theorem linkedComposition1004 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4334.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4334.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4333.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat x) := by
  rw [firstLink1004, secondLink1004]
  exact DerivedMapBatches.Batch054.certificate4334valid.2 x
theorem outputZero1004 : DerivedMapBatches.Batch054.certificate4334.c = (fun _ _ => false) := by decide
theorem linkedZero1004 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4334.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4333.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1004, outputZero1004]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1005 : DerivedMapBatches.Batch002.certificate166.algebra.mat = DerivedMapBatches.Batch054.certificate4336.a := by decide
theorem secondLink1005 : DerivedMapBatches.Batch054.certificate4335.algebra.mat = DerivedMapBatches.Batch054.certificate4336.b := by decide
theorem firstValid1005 : DerivedMapBatches.Batch002.certificate166.Valid := DerivedMapBatches.Batch002.certificate166valid
theorem secondValid1005 : DerivedMapBatches.Batch054.certificate4335.Valid := DerivedMapBatches.Batch054.certificate4335valid
theorem outputValid1005 : DerivedMapBatches.Batch054.certificate4336.Valid := DerivedMapBatches.Batch054.certificate4336valid
theorem linkedComposition1005 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4336.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4336.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4335.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat x) := by
  rw [firstLink1005, secondLink1005]
  exact DerivedMapBatches.Batch054.certificate4336valid.2 x
theorem outputZero1005 : DerivedMapBatches.Batch054.certificate4336.c = (fun _ _ => false) := by decide
theorem linkedZero1005 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4336.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4335.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1005, outputZero1005]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1006 : DerivedMapBatches.Batch002.certificate167.algebra.mat = DerivedMapBatches.Batch054.certificate4337.a := by decide
theorem secondLink1006 : DerivedMapBatches.Batch052.certificate4165.algebra.mat = DerivedMapBatches.Batch054.certificate4337.b := by decide
theorem firstValid1006 : DerivedMapBatches.Batch002.certificate167.Valid := DerivedMapBatches.Batch002.certificate167valid
theorem secondValid1006 : DerivedMapBatches.Batch052.certificate4165.Valid := DerivedMapBatches.Batch052.certificate4165valid
theorem outputValid1006 : DerivedMapBatches.Batch054.certificate4337.Valid := DerivedMapBatches.Batch054.certificate4337valid
theorem linkedComposition1006 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4337.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4337.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate167.algebra.mat x) := by
  rw [firstLink1006, secondLink1006]
  exact DerivedMapBatches.Batch054.certificate4337valid.2 x
theorem outputZero1006 : DerivedMapBatches.Batch054.certificate4337.c = (fun _ _ => false) := by decide
theorem linkedZero1006 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4337.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate167.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1006, outputZero1006]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1007 : DerivedMapBatches.Batch002.certificate168.algebra.mat = DerivedMapBatches.Batch054.certificate4339.a := by decide
theorem secondLink1007 : DerivedMapBatches.Batch054.certificate4338.algebra.mat = DerivedMapBatches.Batch054.certificate4339.b := by decide
theorem firstValid1007 : DerivedMapBatches.Batch002.certificate168.Valid := DerivedMapBatches.Batch002.certificate168valid
theorem secondValid1007 : DerivedMapBatches.Batch054.certificate4338.Valid := DerivedMapBatches.Batch054.certificate4338valid
theorem outputValid1007 : DerivedMapBatches.Batch054.certificate4339.Valid := DerivedMapBatches.Batch054.certificate4339valid
theorem linkedComposition1007 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4339.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4339.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4338.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat x) := by
  rw [firstLink1007, secondLink1007]
  exact DerivedMapBatches.Batch054.certificate4339valid.2 x
theorem outputZero1007 : DerivedMapBatches.Batch054.certificate4339.c = (fun _ _ => false) := by decide
theorem linkedZero1007 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4339.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4338.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1007, outputZero1007]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1008 : DerivedMapBatches.Batch002.certificate169.algebra.mat = DerivedMapBatches.Batch054.certificate4341.a := by decide
theorem secondLink1008 : DerivedMapBatches.Batch054.certificate4340.algebra.mat = DerivedMapBatches.Batch054.certificate4341.b := by decide
theorem firstValid1008 : DerivedMapBatches.Batch002.certificate169.Valid := DerivedMapBatches.Batch002.certificate169valid
theorem secondValid1008 : DerivedMapBatches.Batch054.certificate4340.Valid := DerivedMapBatches.Batch054.certificate4340valid
theorem outputValid1008 : DerivedMapBatches.Batch054.certificate4341.Valid := DerivedMapBatches.Batch054.certificate4341valid
theorem linkedComposition1008 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4341.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4341.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4340.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat x) := by
  rw [firstLink1008, secondLink1008]
  exact DerivedMapBatches.Batch054.certificate4341valid.2 x
theorem outputZero1008 : DerivedMapBatches.Batch054.certificate4341.c = (fun _ _ => false) := by decide
theorem linkedZero1008 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4341.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4340.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1008, outputZero1008]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1009 : DerivedMapBatches.Batch002.certificate170.algebra.mat = DerivedMapBatches.Batch054.certificate4343.a := by decide
theorem secondLink1009 : DerivedMapBatches.Batch054.certificate4342.algebra.mat = DerivedMapBatches.Batch054.certificate4343.b := by decide
theorem firstValid1009 : DerivedMapBatches.Batch002.certificate170.Valid := DerivedMapBatches.Batch002.certificate170valid
theorem secondValid1009 : DerivedMapBatches.Batch054.certificate4342.Valid := DerivedMapBatches.Batch054.certificate4342valid
theorem outputValid1009 : DerivedMapBatches.Batch054.certificate4343.Valid := DerivedMapBatches.Batch054.certificate4343valid
theorem linkedComposition1009 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4343.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4343.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4342.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat x) := by
  rw [firstLink1009, secondLink1009]
  exact DerivedMapBatches.Batch054.certificate4343valid.2 x
theorem outputZero1009 : DerivedMapBatches.Batch054.certificate4343.c = (fun _ _ => false) := by decide
theorem linkedZero1009 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4343.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4342.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1009, outputZero1009]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1010 : DerivedMapBatches.Batch002.certificate171.algebra.mat = DerivedMapBatches.Batch054.certificate4345.a := by decide
theorem secondLink1010 : DerivedMapBatches.Batch054.certificate4344.algebra.mat = DerivedMapBatches.Batch054.certificate4345.b := by decide
theorem firstValid1010 : DerivedMapBatches.Batch002.certificate171.Valid := DerivedMapBatches.Batch002.certificate171valid
theorem secondValid1010 : DerivedMapBatches.Batch054.certificate4344.Valid := DerivedMapBatches.Batch054.certificate4344valid
theorem outputValid1010 : DerivedMapBatches.Batch054.certificate4345.Valid := DerivedMapBatches.Batch054.certificate4345valid
theorem linkedComposition1010 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4345.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4345.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4344.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat x) := by
  rw [firstLink1010, secondLink1010]
  exact DerivedMapBatches.Batch054.certificate4345valid.2 x
theorem outputZero1010 : DerivedMapBatches.Batch054.certificate4345.c = (fun _ _ => false) := by decide
theorem linkedZero1010 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4345.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4344.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1010, outputZero1010]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1011 : DerivedMapBatches.Batch002.certificate172.algebra.mat = DerivedMapBatches.Batch054.certificate4347.a := by decide
theorem secondLink1011 : DerivedMapBatches.Batch054.certificate4346.algebra.mat = DerivedMapBatches.Batch054.certificate4347.b := by decide
theorem firstValid1011 : DerivedMapBatches.Batch002.certificate172.Valid := DerivedMapBatches.Batch002.certificate172valid
theorem secondValid1011 : DerivedMapBatches.Batch054.certificate4346.Valid := DerivedMapBatches.Batch054.certificate4346valid
theorem outputValid1011 : DerivedMapBatches.Batch054.certificate4347.Valid := DerivedMapBatches.Batch054.certificate4347valid
theorem linkedComposition1011 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4347.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4347.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4346.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate172.algebra.mat x) := by
  rw [firstLink1011, secondLink1011]
  exact DerivedMapBatches.Batch054.certificate4347valid.2 x
theorem outputZero1011 : DerivedMapBatches.Batch054.certificate4347.c = (fun _ _ => false) := by decide
theorem linkedZero1011 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4347.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4346.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate172.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1011, outputZero1011]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1012 : DerivedMapBatches.Batch002.certificate173.algebra.mat = DerivedMapBatches.Batch054.certificate4349.a := by decide
theorem secondLink1012 : DerivedMapBatches.Batch054.certificate4348.algebra.mat = DerivedMapBatches.Batch054.certificate4349.b := by decide
theorem firstValid1012 : DerivedMapBatches.Batch002.certificate173.Valid := DerivedMapBatches.Batch002.certificate173valid
theorem secondValid1012 : DerivedMapBatches.Batch054.certificate4348.Valid := DerivedMapBatches.Batch054.certificate4348valid
theorem outputValid1012 : DerivedMapBatches.Batch054.certificate4349.Valid := DerivedMapBatches.Batch054.certificate4349valid
theorem linkedComposition1012 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4349.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4349.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4348.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat x) := by
  rw [firstLink1012, secondLink1012]
  exact DerivedMapBatches.Batch054.certificate4349valid.2 x
theorem outputZero1012 : DerivedMapBatches.Batch054.certificate4349.c = (fun _ _ => false) := by decide
theorem linkedZero1012 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4349.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4348.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1012, outputZero1012]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1013 : DerivedMapBatches.Batch002.certificate174.algebra.mat = DerivedMapBatches.Batch054.certificate4351.a := by decide
theorem secondLink1013 : DerivedMapBatches.Batch054.certificate4350.algebra.mat = DerivedMapBatches.Batch054.certificate4351.b := by decide
theorem firstValid1013 : DerivedMapBatches.Batch002.certificate174.Valid := DerivedMapBatches.Batch002.certificate174valid
theorem secondValid1013 : DerivedMapBatches.Batch054.certificate4350.Valid := DerivedMapBatches.Batch054.certificate4350valid
theorem outputValid1013 : DerivedMapBatches.Batch054.certificate4351.Valid := DerivedMapBatches.Batch054.certificate4351valid
theorem linkedComposition1013 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4351.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4351.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4350.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate174.algebra.mat x) := by
  rw [firstLink1013, secondLink1013]
  exact DerivedMapBatches.Batch054.certificate4351valid.2 x
theorem outputZero1013 : DerivedMapBatches.Batch054.certificate4351.c = (fun _ _ => false) := by decide
theorem linkedZero1013 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4351.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4350.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate174.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1013, outputZero1013]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1014 : DerivedMapBatches.Batch002.certificate175.algebra.mat = DerivedMapBatches.Batch054.certificate4353.a := by decide
theorem secondLink1014 : DerivedMapBatches.Batch054.certificate4352.algebra.mat = DerivedMapBatches.Batch054.certificate4353.b := by decide
theorem firstValid1014 : DerivedMapBatches.Batch002.certificate175.Valid := DerivedMapBatches.Batch002.certificate175valid
theorem secondValid1014 : DerivedMapBatches.Batch054.certificate4352.Valid := DerivedMapBatches.Batch054.certificate4352valid
theorem outputValid1014 : DerivedMapBatches.Batch054.certificate4353.Valid := DerivedMapBatches.Batch054.certificate4353valid
theorem linkedComposition1014 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4353.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4353.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4352.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate175.algebra.mat x) := by
  rw [firstLink1014, secondLink1014]
  exact DerivedMapBatches.Batch054.certificate4353valid.2 x
theorem outputZero1014 : DerivedMapBatches.Batch054.certificate4353.c = (fun _ _ => false) := by decide
theorem linkedZero1014 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4353.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4352.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate175.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1014, outputZero1014]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1015 : DerivedMapBatches.Batch002.certificate176.algebra.mat = DerivedMapBatches.Batch054.certificate4355.a := by decide
theorem secondLink1015 : DerivedMapBatches.Batch054.certificate4354.algebra.mat = DerivedMapBatches.Batch054.certificate4355.b := by decide
theorem firstValid1015 : DerivedMapBatches.Batch002.certificate176.Valid := DerivedMapBatches.Batch002.certificate176valid
theorem secondValid1015 : DerivedMapBatches.Batch054.certificate4354.Valid := DerivedMapBatches.Batch054.certificate4354valid
theorem outputValid1015 : DerivedMapBatches.Batch054.certificate4355.Valid := DerivedMapBatches.Batch054.certificate4355valid
theorem linkedComposition1015 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4355.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4355.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4354.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate176.algebra.mat x) := by
  rw [firstLink1015, secondLink1015]
  exact DerivedMapBatches.Batch054.certificate4355valid.2 x
theorem outputZero1015 : DerivedMapBatches.Batch054.certificate4355.c = (fun _ _ => false) := by decide
theorem linkedZero1015 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4355.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4354.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate176.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1015, outputZero1015]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1016 : DerivedMapBatches.Batch002.certificate177.algebra.mat = DerivedMapBatches.Batch054.certificate4357.a := by decide
theorem secondLink1016 : DerivedMapBatches.Batch054.certificate4356.algebra.mat = DerivedMapBatches.Batch054.certificate4357.b := by decide
theorem firstValid1016 : DerivedMapBatches.Batch002.certificate177.Valid := DerivedMapBatches.Batch002.certificate177valid
theorem secondValid1016 : DerivedMapBatches.Batch054.certificate4356.Valid := DerivedMapBatches.Batch054.certificate4356valid
theorem outputValid1016 : DerivedMapBatches.Batch054.certificate4357.Valid := DerivedMapBatches.Batch054.certificate4357valid
theorem linkedComposition1016 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4357.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4357.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4356.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate177.algebra.mat x) := by
  rw [firstLink1016, secondLink1016]
  exact DerivedMapBatches.Batch054.certificate4357valid.2 x
theorem outputZero1016 : DerivedMapBatches.Batch054.certificate4357.c = (fun _ _ => false) := by decide
theorem linkedZero1016 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4357.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4356.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate177.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1016, outputZero1016]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1017 : DerivedMapBatches.Batch002.certificate178.algebra.mat = DerivedMapBatches.Batch054.certificate4359.a := by decide
theorem secondLink1017 : DerivedMapBatches.Batch054.certificate4358.algebra.mat = DerivedMapBatches.Batch054.certificate4359.b := by decide
theorem firstValid1017 : DerivedMapBatches.Batch002.certificate178.Valid := DerivedMapBatches.Batch002.certificate178valid
theorem secondValid1017 : DerivedMapBatches.Batch054.certificate4358.Valid := DerivedMapBatches.Batch054.certificate4358valid
theorem outputValid1017 : DerivedMapBatches.Batch054.certificate4359.Valid := DerivedMapBatches.Batch054.certificate4359valid
theorem linkedComposition1017 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4359.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4359.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4358.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate178.algebra.mat x) := by
  rw [firstLink1017, secondLink1017]
  exact DerivedMapBatches.Batch054.certificate4359valid.2 x
theorem outputZero1017 : DerivedMapBatches.Batch054.certificate4359.c = (fun _ _ => false) := by decide
theorem linkedZero1017 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4359.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4358.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate178.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1017, outputZero1017]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1018 : DerivedMapBatches.Batch002.certificate179.algebra.mat = DerivedMapBatches.Batch054.certificate4361.a := by decide
theorem secondLink1018 : DerivedMapBatches.Batch054.certificate4360.algebra.mat = DerivedMapBatches.Batch054.certificate4361.b := by decide
theorem firstValid1018 : DerivedMapBatches.Batch002.certificate179.Valid := DerivedMapBatches.Batch002.certificate179valid
theorem secondValid1018 : DerivedMapBatches.Batch054.certificate4360.Valid := DerivedMapBatches.Batch054.certificate4360valid
theorem outputValid1018 : DerivedMapBatches.Batch054.certificate4361.Valid := DerivedMapBatches.Batch054.certificate4361valid
theorem linkedComposition1018 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4361.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4361.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4360.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate179.algebra.mat x) := by
  rw [firstLink1018, secondLink1018]
  exact DerivedMapBatches.Batch054.certificate4361valid.2 x
theorem outputZero1018 : DerivedMapBatches.Batch054.certificate4361.c = (fun _ _ => false) := by decide
theorem linkedZero1018 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4361.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4360.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate179.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1018, outputZero1018]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1019 : DerivedMapBatches.Batch002.certificate180.algebra.mat = DerivedMapBatches.Batch054.certificate4363.a := by decide
theorem secondLink1019 : DerivedMapBatches.Batch054.certificate4362.algebra.mat = DerivedMapBatches.Batch054.certificate4363.b := by decide
theorem firstValid1019 : DerivedMapBatches.Batch002.certificate180.Valid := DerivedMapBatches.Batch002.certificate180valid
theorem secondValid1019 : DerivedMapBatches.Batch054.certificate4362.Valid := DerivedMapBatches.Batch054.certificate4362valid
theorem outputValid1019 : DerivedMapBatches.Batch054.certificate4363.Valid := DerivedMapBatches.Batch054.certificate4363valid
theorem linkedComposition1019 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4363.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4363.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4362.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate180.algebra.mat x) := by
  rw [firstLink1019, secondLink1019]
  exact DerivedMapBatches.Batch054.certificate4363valid.2 x
theorem outputZero1019 : DerivedMapBatches.Batch054.certificate4363.c = (fun _ _ => false) := by decide
theorem linkedZero1019 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4363.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4362.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate180.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1019, outputZero1019]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1020 : DerivedMapBatches.Batch002.certificate181.algebra.mat = DerivedMapBatches.Batch054.certificate4365.a := by decide
theorem secondLink1020 : DerivedMapBatches.Batch054.certificate4364.algebra.mat = DerivedMapBatches.Batch054.certificate4365.b := by decide
theorem firstValid1020 : DerivedMapBatches.Batch002.certificate181.Valid := DerivedMapBatches.Batch002.certificate181valid
theorem secondValid1020 : DerivedMapBatches.Batch054.certificate4364.Valid := DerivedMapBatches.Batch054.certificate4364valid
theorem outputValid1020 : DerivedMapBatches.Batch054.certificate4365.Valid := DerivedMapBatches.Batch054.certificate4365valid
theorem linkedComposition1020 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4365.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4365.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4364.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate181.algebra.mat x) := by
  rw [firstLink1020, secondLink1020]
  exact DerivedMapBatches.Batch054.certificate4365valid.2 x
theorem outputZero1020 : DerivedMapBatches.Batch054.certificate4365.c = (fun _ _ => false) := by decide
theorem linkedZero1020 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4365.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4364.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate181.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1020, outputZero1020]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1021 : DerivedMapBatches.Batch002.certificate182.algebra.mat = DerivedMapBatches.Batch054.certificate4366.a := by decide
theorem secondLink1021 : DerivedMapBatches.Batch002.certificate160.algebra.mat = DerivedMapBatches.Batch054.certificate4366.b := by decide
theorem firstValid1021 : DerivedMapBatches.Batch002.certificate182.Valid := DerivedMapBatches.Batch002.certificate182valid
theorem secondValid1021 : DerivedMapBatches.Batch002.certificate160.Valid := DerivedMapBatches.Batch002.certificate160valid
theorem outputValid1021 : DerivedMapBatches.Batch054.certificate4366.Valid := DerivedMapBatches.Batch054.certificate4366valid
theorem linkedComposition1021 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4366.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4366.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) := by
  rw [firstLink1021, secondLink1021]
  exact DerivedMapBatches.Batch054.certificate4366valid.2 x
theorem outputZero1021 : DerivedMapBatches.Batch054.certificate4366.c = (fun _ _ => false) := by decide
theorem linkedZero1021 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4366.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1021, outputZero1021]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1022 : DerivedMapBatches.Batch002.certificate183.algebra.mat = DerivedMapBatches.Batch054.certificate4367.a := by decide
theorem secondLink1022 : DerivedMapBatches.Batch002.certificate165.algebra.mat = DerivedMapBatches.Batch054.certificate4367.b := by decide
theorem firstValid1022 : DerivedMapBatches.Batch002.certificate183.Valid := DerivedMapBatches.Batch002.certificate183valid
theorem secondValid1022 : DerivedMapBatches.Batch002.certificate165.Valid := DerivedMapBatches.Batch002.certificate165valid
theorem outputValid1022 : DerivedMapBatches.Batch054.certificate4367.Valid := DerivedMapBatches.Batch054.certificate4367valid
theorem linkedComposition1022 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4367.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4367.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) := by
  rw [firstLink1022, secondLink1022]
  exact DerivedMapBatches.Batch054.certificate4367valid.2 x
theorem outputZero1022 : DerivedMapBatches.Batch054.certificate4367.c = (fun _ _ => false) := by decide
theorem linkedZero1022 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4367.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1022, outputZero1022]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1023 : DerivedMapBatches.Batch002.certificate184.algebra.mat = DerivedMapBatches.Batch054.certificate4368.a := by decide
theorem secondLink1023 : DerivedMapBatches.Batch002.certificate166.algebra.mat = DerivedMapBatches.Batch054.certificate4368.b := by decide
theorem firstValid1023 : DerivedMapBatches.Batch002.certificate184.Valid := DerivedMapBatches.Batch002.certificate184valid
theorem secondValid1023 : DerivedMapBatches.Batch002.certificate166.Valid := DerivedMapBatches.Batch002.certificate166valid
theorem outputValid1023 : DerivedMapBatches.Batch054.certificate4368.Valid := DerivedMapBatches.Batch054.certificate4368valid
theorem linkedComposition1023 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4368.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4368.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) := by
  rw [firstLink1023, secondLink1023]
  exact DerivedMapBatches.Batch054.certificate4368valid.2 x
theorem outputZero1023 : DerivedMapBatches.Batch054.certificate4368.c = (fun _ _ => false) := by decide
theorem linkedZero1023 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4368.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1023, outputZero1023]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1024 : DerivedMapBatches.Batch002.certificate185.algebra.mat = DerivedMapBatches.Batch054.certificate4370.a := by decide
theorem secondLink1024 : DerivedMapBatches.Batch054.certificate4369.algebra.mat = DerivedMapBatches.Batch054.certificate4370.b := by decide
theorem firstValid1024 : DerivedMapBatches.Batch002.certificate185.Valid := DerivedMapBatches.Batch002.certificate185valid
theorem secondValid1024 : DerivedMapBatches.Batch054.certificate4369.Valid := DerivedMapBatches.Batch054.certificate4369valid
theorem outputValid1024 : DerivedMapBatches.Batch054.certificate4370.Valid := DerivedMapBatches.Batch054.certificate4370valid
theorem linkedComposition1024 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4370.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4370.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4369.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) := by
  rw [firstLink1024, secondLink1024]
  exact DerivedMapBatches.Batch054.certificate4370valid.2 x
theorem outputZero1024 : DerivedMapBatches.Batch054.certificate4370.c = (fun _ _ => false) := by decide
theorem linkedZero1024 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4370.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4369.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1024, outputZero1024]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1025 : DerivedMapBatches.Batch002.certificate186.algebra.mat = DerivedMapBatches.Batch054.certificate4372.a := by decide
theorem secondLink1025 : DerivedMapBatches.Batch054.certificate4371.algebra.mat = DerivedMapBatches.Batch054.certificate4372.b := by decide
theorem firstValid1025 : DerivedMapBatches.Batch002.certificate186.Valid := DerivedMapBatches.Batch002.certificate186valid
theorem secondValid1025 : DerivedMapBatches.Batch054.certificate4371.Valid := DerivedMapBatches.Batch054.certificate4371valid
theorem outputValid1025 : DerivedMapBatches.Batch054.certificate4372.Valid := DerivedMapBatches.Batch054.certificate4372valid
theorem linkedComposition1025 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4372.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4372.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4371.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) := by
  rw [firstLink1025, secondLink1025]
  exact DerivedMapBatches.Batch054.certificate4372valid.2 x
theorem outputZero1025 : DerivedMapBatches.Batch054.certificate4372.c = (fun _ _ => false) := by decide
theorem linkedZero1025 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4372.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4371.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1025, outputZero1025]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1026 : DerivedMapBatches.Batch002.certificate187.algebra.mat = DerivedMapBatches.Batch054.certificate4373.a := by decide
theorem secondLink1026 : DerivedMapBatches.Batch002.certificate169.algebra.mat = DerivedMapBatches.Batch054.certificate4373.b := by decide
theorem firstValid1026 : DerivedMapBatches.Batch002.certificate187.Valid := DerivedMapBatches.Batch002.certificate187valid
theorem secondValid1026 : DerivedMapBatches.Batch002.certificate169.Valid := DerivedMapBatches.Batch002.certificate169valid
theorem outputValid1026 : DerivedMapBatches.Batch054.certificate4373.Valid := DerivedMapBatches.Batch054.certificate4373valid
theorem linkedComposition1026 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4373.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4373.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) := by
  rw [firstLink1026, secondLink1026]
  exact DerivedMapBatches.Batch054.certificate4373valid.2 x
theorem outputZero1026 : DerivedMapBatches.Batch054.certificate4373.c = (fun _ _ => false) := by decide
theorem linkedZero1026 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4373.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1026, outputZero1026]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1027 : DerivedMapBatches.Batch002.certificate188.algebra.mat = DerivedMapBatches.Batch054.certificate4374.a := by decide
theorem secondLink1027 : DerivedMapBatches.Batch002.certificate171.algebra.mat = DerivedMapBatches.Batch054.certificate4374.b := by decide
theorem firstValid1027 : DerivedMapBatches.Batch002.certificate188.Valid := DerivedMapBatches.Batch002.certificate188valid
theorem secondValid1027 : DerivedMapBatches.Batch002.certificate171.Valid := DerivedMapBatches.Batch002.certificate171valid
theorem outputValid1027 : DerivedMapBatches.Batch054.certificate4374.Valid := DerivedMapBatches.Batch054.certificate4374valid
theorem linkedComposition1027 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4374.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4374.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) := by
  rw [firstLink1027, secondLink1027]
  exact DerivedMapBatches.Batch054.certificate4374valid.2 x
theorem outputZero1027 : DerivedMapBatches.Batch054.certificate4374.c = (fun _ _ => false) := by decide
theorem linkedZero1027 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4374.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1027, outputZero1027]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1028 : DerivedMapBatches.Batch002.certificate189.algebra.mat = DerivedMapBatches.Batch054.certificate4376.a := by decide
theorem secondLink1028 : DerivedMapBatches.Batch054.certificate4375.algebra.mat = DerivedMapBatches.Batch054.certificate4376.b := by decide
theorem firstValid1028 : DerivedMapBatches.Batch002.certificate189.Valid := DerivedMapBatches.Batch002.certificate189valid
theorem secondValid1028 : DerivedMapBatches.Batch054.certificate4375.Valid := DerivedMapBatches.Batch054.certificate4375valid
theorem outputValid1028 : DerivedMapBatches.Batch054.certificate4376.Valid := DerivedMapBatches.Batch054.certificate4376valid
theorem linkedComposition1028 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4376.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4376.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4375.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) := by
  rw [firstLink1028, secondLink1028]
  exact DerivedMapBatches.Batch054.certificate4376valid.2 x
theorem outputZero1028 : DerivedMapBatches.Batch054.certificate4376.c = (fun _ _ => false) := by decide
theorem linkedZero1028 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4376.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4375.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1028, outputZero1028]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1029 : DerivedMapBatches.Batch002.certificate190.algebra.mat = DerivedMapBatches.Batch054.certificate4378.a := by decide
theorem secondLink1029 : DerivedMapBatches.Batch054.certificate4377.algebra.mat = DerivedMapBatches.Batch054.certificate4378.b := by decide
theorem firstValid1029 : DerivedMapBatches.Batch002.certificate190.Valid := DerivedMapBatches.Batch002.certificate190valid
theorem secondValid1029 : DerivedMapBatches.Batch054.certificate4377.Valid := DerivedMapBatches.Batch054.certificate4377valid
theorem outputValid1029 : DerivedMapBatches.Batch054.certificate4378.Valid := DerivedMapBatches.Batch054.certificate4378valid
theorem linkedComposition1029 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4378.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4378.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4377.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) := by
  rw [firstLink1029, secondLink1029]
  exact DerivedMapBatches.Batch054.certificate4378valid.2 x
theorem outputZero1029 : DerivedMapBatches.Batch054.certificate4378.c = (fun _ _ => false) := by decide
theorem linkedZero1029 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4378.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4377.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1029, outputZero1029]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1030 : DerivedMapBatches.Batch002.certificate191.algebra.mat = DerivedMapBatches.Batch054.certificate4380.a := by decide
theorem secondLink1030 : DerivedMapBatches.Batch054.certificate4379.algebra.mat = DerivedMapBatches.Batch054.certificate4380.b := by decide
theorem firstValid1030 : DerivedMapBatches.Batch002.certificate191.Valid := DerivedMapBatches.Batch002.certificate191valid
theorem secondValid1030 : DerivedMapBatches.Batch054.certificate4379.Valid := DerivedMapBatches.Batch054.certificate4379valid
theorem outputValid1030 : DerivedMapBatches.Batch054.certificate4380.Valid := DerivedMapBatches.Batch054.certificate4380valid
theorem linkedComposition1030 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4380.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4380.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4379.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) := by
  rw [firstLink1030, secondLink1030]
  exact DerivedMapBatches.Batch054.certificate4380valid.2 x
theorem outputZero1030 : DerivedMapBatches.Batch054.certificate4380.c = (fun _ _ => false) := by decide
theorem linkedZero1030 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4380.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4379.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1030, outputZero1030]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1031 : DerivedMapBatches.Batch002.certificate192.algebra.mat = DerivedMapBatches.Batch054.certificate4382.a := by decide
theorem secondLink1031 : DerivedMapBatches.Batch054.certificate4381.algebra.mat = DerivedMapBatches.Batch054.certificate4382.b := by decide
theorem firstValid1031 : DerivedMapBatches.Batch002.certificate192.Valid := DerivedMapBatches.Batch002.certificate192valid
theorem secondValid1031 : DerivedMapBatches.Batch054.certificate4381.Valid := DerivedMapBatches.Batch054.certificate4381valid
theorem outputValid1031 : DerivedMapBatches.Batch054.certificate4382.Valid := DerivedMapBatches.Batch054.certificate4382valid
theorem linkedComposition1031 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4382.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4382.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4381.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) := by
  rw [firstLink1031, secondLink1031]
  exact DerivedMapBatches.Batch054.certificate4382valid.2 x
theorem outputZero1031 : DerivedMapBatches.Batch054.certificate4382.c = (fun _ _ => false) := by decide
theorem linkedZero1031 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4382.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4381.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1031, outputZero1031]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1032 : DerivedMapBatches.Batch002.certificate193.algebra.mat = DerivedMapBatches.Batch054.certificate4383.a := by decide
theorem secondLink1032 : DerivedMapBatches.Batch002.certificate173.algebra.mat = DerivedMapBatches.Batch054.certificate4383.b := by decide
theorem firstValid1032 : DerivedMapBatches.Batch002.certificate193.Valid := DerivedMapBatches.Batch002.certificate193valid
theorem secondValid1032 : DerivedMapBatches.Batch002.certificate173.Valid := DerivedMapBatches.Batch002.certificate173valid
theorem outputValid1032 : DerivedMapBatches.Batch054.certificate4383.Valid := DerivedMapBatches.Batch054.certificate4383valid
theorem linkedComposition1032 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4383.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4383.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) := by
  rw [firstLink1032, secondLink1032]
  exact DerivedMapBatches.Batch054.certificate4383valid.2 x
theorem outputZero1032 : DerivedMapBatches.Batch054.certificate4383.c = (fun _ _ => false) := by decide
theorem linkedZero1032 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4383.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1032, outputZero1032]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1033 : DerivedMapBatches.Batch002.certificate194.algebra.mat = DerivedMapBatches.Batch054.certificate4384.a := by decide
theorem secondLink1033 : DerivedMapBatches.Batch052.certificate4207.algebra.mat = DerivedMapBatches.Batch054.certificate4384.b := by decide
theorem firstValid1033 : DerivedMapBatches.Batch002.certificate194.Valid := DerivedMapBatches.Batch002.certificate194valid
theorem secondValid1033 : DerivedMapBatches.Batch052.certificate4207.Valid := DerivedMapBatches.Batch052.certificate4207valid
theorem outputValid1033 : DerivedMapBatches.Batch054.certificate4384.Valid := DerivedMapBatches.Batch054.certificate4384valid
theorem linkedComposition1033 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4384.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4384.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) := by
  rw [firstLink1033, secondLink1033]
  exact DerivedMapBatches.Batch054.certificate4384valid.2 x
theorem outputZero1033 : DerivedMapBatches.Batch054.certificate4384.c = (fun _ _ => false) := by decide
theorem linkedZero1033 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4384.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1033, outputZero1033]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1034 : DerivedMapBatches.Batch002.certificate195.algebra.mat = DerivedMapBatches.Batch054.certificate4386.a := by decide
theorem secondLink1034 : DerivedMapBatches.Batch054.certificate4385.algebra.mat = DerivedMapBatches.Batch054.certificate4386.b := by decide
theorem firstValid1034 : DerivedMapBatches.Batch002.certificate195.Valid := DerivedMapBatches.Batch002.certificate195valid
theorem secondValid1034 : DerivedMapBatches.Batch054.certificate4385.Valid := DerivedMapBatches.Batch054.certificate4385valid
theorem outputValid1034 : DerivedMapBatches.Batch054.certificate4386.Valid := DerivedMapBatches.Batch054.certificate4386valid
theorem linkedComposition1034 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4386.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4386.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4385.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) := by
  rw [firstLink1034, secondLink1034]
  exact DerivedMapBatches.Batch054.certificate4386valid.2 x
theorem outputZero1034 : DerivedMapBatches.Batch054.certificate4386.c = (fun _ _ => false) := by decide
theorem linkedZero1034 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4386.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4385.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1034, outputZero1034]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1035 : DerivedMapBatches.Batch002.certificate196.algebra.mat = DerivedMapBatches.Batch054.certificate4388.a := by decide
theorem secondLink1035 : DerivedMapBatches.Batch054.certificate4387.algebra.mat = DerivedMapBatches.Batch054.certificate4388.b := by decide
theorem firstValid1035 : DerivedMapBatches.Batch002.certificate196.Valid := DerivedMapBatches.Batch002.certificate196valid
theorem secondValid1035 : DerivedMapBatches.Batch054.certificate4387.Valid := DerivedMapBatches.Batch054.certificate4387valid
theorem outputValid1035 : DerivedMapBatches.Batch054.certificate4388.Valid := DerivedMapBatches.Batch054.certificate4388valid
theorem linkedComposition1035 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4388.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4388.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4387.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) := by
  rw [firstLink1035, secondLink1035]
  exact DerivedMapBatches.Batch054.certificate4388valid.2 x
theorem outputZero1035 : DerivedMapBatches.Batch054.certificate4388.c = (fun _ _ => false) := by decide
theorem linkedZero1035 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4388.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4387.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1035, outputZero1035]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1036 : DerivedMapBatches.Batch002.certificate197.algebra.mat = DerivedMapBatches.Batch054.certificate4390.a := by decide
theorem secondLink1036 : DerivedMapBatches.Batch054.certificate4389.algebra.mat = DerivedMapBatches.Batch054.certificate4390.b := by decide
theorem firstValid1036 : DerivedMapBatches.Batch002.certificate197.Valid := DerivedMapBatches.Batch002.certificate197valid
theorem secondValid1036 : DerivedMapBatches.Batch054.certificate4389.Valid := DerivedMapBatches.Batch054.certificate4389valid
theorem outputValid1036 : DerivedMapBatches.Batch054.certificate4390.Valid := DerivedMapBatches.Batch054.certificate4390valid
theorem linkedComposition1036 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4390.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4390.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4389.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) := by
  rw [firstLink1036, secondLink1036]
  exact DerivedMapBatches.Batch054.certificate4390valid.2 x
theorem outputZero1036 : DerivedMapBatches.Batch054.certificate4390.c = (fun _ _ => false) := by decide
theorem linkedZero1036 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4390.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4389.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1036, outputZero1036]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1037 : DerivedMapBatches.Batch002.certificate198.algebra.mat = DerivedMapBatches.Batch054.certificate4392.a := by decide
theorem secondLink1037 : DerivedMapBatches.Batch054.certificate4391.algebra.mat = DerivedMapBatches.Batch054.certificate4392.b := by decide
theorem firstValid1037 : DerivedMapBatches.Batch002.certificate198.Valid := DerivedMapBatches.Batch002.certificate198valid
theorem secondValid1037 : DerivedMapBatches.Batch054.certificate4391.Valid := DerivedMapBatches.Batch054.certificate4391valid
theorem outputValid1037 : DerivedMapBatches.Batch054.certificate4392.Valid := DerivedMapBatches.Batch054.certificate4392valid
theorem linkedComposition1037 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4392.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4392.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4391.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) := by
  rw [firstLink1037, secondLink1037]
  exact DerivedMapBatches.Batch054.certificate4392valid.2 x
theorem outputZero1037 : DerivedMapBatches.Batch054.certificate4392.c = (fun _ _ => false) := by decide
theorem linkedZero1037 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4392.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4391.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1037, outputZero1037]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1038 : DerivedMapBatches.Batch002.certificate199.algebra.mat = DerivedMapBatches.Batch054.certificate4394.a := by decide
theorem secondLink1038 : DerivedMapBatches.Batch054.certificate4393.algebra.mat = DerivedMapBatches.Batch054.certificate4394.b := by decide
theorem firstValid1038 : DerivedMapBatches.Batch002.certificate199.Valid := DerivedMapBatches.Batch002.certificate199valid
theorem secondValid1038 : DerivedMapBatches.Batch054.certificate4393.Valid := DerivedMapBatches.Batch054.certificate4393valid
theorem outputValid1038 : DerivedMapBatches.Batch054.certificate4394.Valid := DerivedMapBatches.Batch054.certificate4394valid
theorem linkedComposition1038 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4394.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4394.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4393.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) := by
  rw [firstLink1038, secondLink1038]
  exact DerivedMapBatches.Batch054.certificate4394valid.2 x
theorem outputZero1038 : DerivedMapBatches.Batch054.certificate4394.c = (fun _ _ => false) := by decide
theorem linkedZero1038 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4394.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4393.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1038, outputZero1038]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1039 : DerivedMapBatches.Batch002.certificate200.algebra.mat = DerivedMapBatches.Batch054.certificate4396.a := by decide
theorem secondLink1039 : DerivedMapBatches.Batch054.certificate4395.algebra.mat = DerivedMapBatches.Batch054.certificate4396.b := by decide
theorem firstValid1039 : DerivedMapBatches.Batch002.certificate200.Valid := DerivedMapBatches.Batch002.certificate200valid
theorem secondValid1039 : DerivedMapBatches.Batch054.certificate4395.Valid := DerivedMapBatches.Batch054.certificate4395valid
theorem outputValid1039 : DerivedMapBatches.Batch054.certificate4396.Valid := DerivedMapBatches.Batch054.certificate4396valid
theorem linkedComposition1039 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4396.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4396.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4395.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) := by
  rw [firstLink1039, secondLink1039]
  exact DerivedMapBatches.Batch054.certificate4396valid.2 x
theorem outputZero1039 : DerivedMapBatches.Batch054.certificate4396.c = (fun _ _ => false) := by decide
theorem linkedZero1039 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4396.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4395.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1039, outputZero1039]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1040 : DerivedMapBatches.Batch002.certificate201.algebra.mat = DerivedMapBatches.Batch054.certificate4398.a := by decide
theorem secondLink1040 : DerivedMapBatches.Batch054.certificate4397.algebra.mat = DerivedMapBatches.Batch054.certificate4398.b := by decide
theorem firstValid1040 : DerivedMapBatches.Batch002.certificate201.Valid := DerivedMapBatches.Batch002.certificate201valid
theorem secondValid1040 : DerivedMapBatches.Batch054.certificate4397.Valid := DerivedMapBatches.Batch054.certificate4397valid
theorem outputValid1040 : DerivedMapBatches.Batch054.certificate4398.Valid := DerivedMapBatches.Batch054.certificate4398valid
theorem linkedComposition1040 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4398.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4398.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4397.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) := by
  rw [firstLink1040, secondLink1040]
  exact DerivedMapBatches.Batch054.certificate4398valid.2 x
theorem outputZero1040 : DerivedMapBatches.Batch054.certificate4398.c = (fun _ _ => false) := by decide
theorem linkedZero1040 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4398.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4397.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1040, outputZero1040]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1041 : DerivedMapBatches.Batch002.certificate202.algebra.mat = DerivedMapBatches.Batch055.certificate4400.a := by decide
theorem secondLink1041 : DerivedMapBatches.Batch054.certificate4399.algebra.mat = DerivedMapBatches.Batch055.certificate4400.b := by decide
theorem firstValid1041 : DerivedMapBatches.Batch002.certificate202.Valid := DerivedMapBatches.Batch002.certificate202valid
theorem secondValid1041 : DerivedMapBatches.Batch054.certificate4399.Valid := DerivedMapBatches.Batch054.certificate4399valid
theorem outputValid1041 : DerivedMapBatches.Batch055.certificate4400.Valid := DerivedMapBatches.Batch055.certificate4400valid
theorem linkedComposition1041 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4400.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4400.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4399.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) := by
  rw [firstLink1041, secondLink1041]
  exact DerivedMapBatches.Batch055.certificate4400valid.2 x
theorem outputZero1041 : DerivedMapBatches.Batch055.certificate4400.c = (fun _ _ => false) := by decide
theorem linkedZero1041 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4400.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4399.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1041, outputZero1041]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1042 : DerivedMapBatches.Batch002.certificate203.algebra.mat = DerivedMapBatches.Batch055.certificate4402.a := by decide
theorem secondLink1042 : DerivedMapBatches.Batch055.certificate4401.algebra.mat = DerivedMapBatches.Batch055.certificate4402.b := by decide
theorem firstValid1042 : DerivedMapBatches.Batch002.certificate203.Valid := DerivedMapBatches.Batch002.certificate203valid
theorem secondValid1042 : DerivedMapBatches.Batch055.certificate4401.Valid := DerivedMapBatches.Batch055.certificate4401valid
theorem outputValid1042 : DerivedMapBatches.Batch055.certificate4402.Valid := DerivedMapBatches.Batch055.certificate4402valid
theorem linkedComposition1042 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4402.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4402.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4401.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) := by
  rw [firstLink1042, secondLink1042]
  exact DerivedMapBatches.Batch055.certificate4402valid.2 x
theorem outputZero1042 : DerivedMapBatches.Batch055.certificate4402.c = (fun _ _ => false) := by decide
theorem linkedZero1042 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4402.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4401.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1042, outputZero1042]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1043 : DerivedMapBatches.Batch002.certificate204.algebra.mat = DerivedMapBatches.Batch055.certificate4404.a := by decide
theorem secondLink1043 : DerivedMapBatches.Batch055.certificate4403.algebra.mat = DerivedMapBatches.Batch055.certificate4404.b := by decide
theorem firstValid1043 : DerivedMapBatches.Batch002.certificate204.Valid := DerivedMapBatches.Batch002.certificate204valid
theorem secondValid1043 : DerivedMapBatches.Batch055.certificate4403.Valid := DerivedMapBatches.Batch055.certificate4403valid
theorem outputValid1043 : DerivedMapBatches.Batch055.certificate4404.Valid := DerivedMapBatches.Batch055.certificate4404valid
theorem linkedComposition1043 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4404.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4404.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4403.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) := by
  rw [firstLink1043, secondLink1043]
  exact DerivedMapBatches.Batch055.certificate4404valid.2 x
theorem outputZero1043 : DerivedMapBatches.Batch055.certificate4404.c = (fun _ _ => false) := by decide
theorem linkedZero1043 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4404.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4403.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1043, outputZero1043]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1044 : DerivedMapBatches.Batch002.certificate205.algebra.mat = DerivedMapBatches.Batch055.certificate4406.a := by decide
theorem secondLink1044 : DerivedMapBatches.Batch055.certificate4405.algebra.mat = DerivedMapBatches.Batch055.certificate4406.b := by decide
theorem firstValid1044 : DerivedMapBatches.Batch002.certificate205.Valid := DerivedMapBatches.Batch002.certificate205valid
theorem secondValid1044 : DerivedMapBatches.Batch055.certificate4405.Valid := DerivedMapBatches.Batch055.certificate4405valid
theorem outputValid1044 : DerivedMapBatches.Batch055.certificate4406.Valid := DerivedMapBatches.Batch055.certificate4406valid
theorem linkedComposition1044 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4406.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4406.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4405.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) := by
  rw [firstLink1044, secondLink1044]
  exact DerivedMapBatches.Batch055.certificate4406valid.2 x
theorem outputZero1044 : DerivedMapBatches.Batch055.certificate4406.c = (fun _ _ => false) := by decide
theorem linkedZero1044 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4406.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4405.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1044, outputZero1044]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1045 : DerivedMapBatches.Batch002.certificate206.algebra.mat = DerivedMapBatches.Batch055.certificate4408.a := by decide
theorem secondLink1045 : DerivedMapBatches.Batch055.certificate4407.algebra.mat = DerivedMapBatches.Batch055.certificate4408.b := by decide
theorem firstValid1045 : DerivedMapBatches.Batch002.certificate206.Valid := DerivedMapBatches.Batch002.certificate206valid
theorem secondValid1045 : DerivedMapBatches.Batch055.certificate4407.Valid := DerivedMapBatches.Batch055.certificate4407valid
theorem outputValid1045 : DerivedMapBatches.Batch055.certificate4408.Valid := DerivedMapBatches.Batch055.certificate4408valid
theorem linkedComposition1045 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4408.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4408.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4407.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) := by
  rw [firstLink1045, secondLink1045]
  exact DerivedMapBatches.Batch055.certificate4408valid.2 x
theorem outputZero1045 : DerivedMapBatches.Batch055.certificate4408.c = (fun _ _ => false) := by decide
theorem linkedZero1045 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4408.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4407.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1045, outputZero1045]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1046 : DerivedMapBatches.Batch002.certificate207.algebra.mat = DerivedMapBatches.Batch055.certificate4410.a := by decide
theorem secondLink1046 : DerivedMapBatches.Batch055.certificate4409.algebra.mat = DerivedMapBatches.Batch055.certificate4410.b := by decide
theorem firstValid1046 : DerivedMapBatches.Batch002.certificate207.Valid := DerivedMapBatches.Batch002.certificate207valid
theorem secondValid1046 : DerivedMapBatches.Batch055.certificate4409.Valid := DerivedMapBatches.Batch055.certificate4409valid
theorem outputValid1046 : DerivedMapBatches.Batch055.certificate4410.Valid := DerivedMapBatches.Batch055.certificate4410valid
theorem linkedComposition1046 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4410.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4410.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4409.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) := by
  rw [firstLink1046, secondLink1046]
  exact DerivedMapBatches.Batch055.certificate4410valid.2 x
theorem outputZero1046 : DerivedMapBatches.Batch055.certificate4410.c = (fun _ _ => false) := by decide
theorem linkedZero1046 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4410.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4409.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1046, outputZero1046]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1047 : DerivedMapBatches.Batch001.certificate105.algebra.mat = DerivedMapBatches.Batch055.certificate4411.a := by decide
theorem secondLink1047 : DerivedMapBatches.Batch033.certificate2673.algebra.mat = DerivedMapBatches.Batch055.certificate4411.b := by decide
theorem firstValid1047 : DerivedMapBatches.Batch001.certificate105.Valid := DerivedMapBatches.Batch001.certificate105valid
theorem secondValid1047 : DerivedMapBatches.Batch033.certificate2673.Valid := DerivedMapBatches.Batch033.certificate2673valid
theorem outputValid1047 : DerivedMapBatches.Batch055.certificate4411.Valid := DerivedMapBatches.Batch055.certificate4411valid
theorem linkedComposition1047 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4411.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4411.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) := by
  rw [firstLink1047, secondLink1047]
  exact DerivedMapBatches.Batch055.certificate4411valid.2 x
theorem outputZero1047 : DerivedMapBatches.Batch055.certificate4411.c = (fun _ _ => false) := by decide
theorem linkedZero1047 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4411.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2673.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1047, outputZero1047]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1048 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch055.certificate4413.a := by decide
theorem secondLink1048 : DerivedMapBatches.Batch055.certificate4412.algebra.mat = DerivedMapBatches.Batch055.certificate4413.b := by decide
theorem firstValid1048 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem secondValid1048 : DerivedMapBatches.Batch055.certificate4412.Valid := DerivedMapBatches.Batch055.certificate4412valid
theorem outputValid1048 : DerivedMapBatches.Batch055.certificate4413.Valid := DerivedMapBatches.Batch055.certificate4413valid
theorem linkedComposition1048 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4413.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4413.c x = LinearCertificates.eval DerivedMapBatches.Batch055.certificate4412.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) := by
  rw [firstLink1048, secondLink1048]
  exact DerivedMapBatches.Batch055.certificate4413valid.2 x
theorem outputZero1048 : DerivedMapBatches.Batch055.certificate4413.c = (fun _ _ => false) := by decide
theorem linkedZero1048 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4413.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4412.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1048, outputZero1048]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1049 : DerivedMapBatches.Batch001.certificate107.algebra.mat = DerivedMapBatches.Batch055.certificate4414.a := by decide
theorem secondLink1049 : DerivedMapBatches.Batch033.certificate2675.algebra.mat = DerivedMapBatches.Batch055.certificate4414.b := by decide
theorem firstValid1049 : DerivedMapBatches.Batch001.certificate107.Valid := DerivedMapBatches.Batch001.certificate107valid
theorem secondValid1049 : DerivedMapBatches.Batch033.certificate2675.Valid := DerivedMapBatches.Batch033.certificate2675valid
theorem outputValid1049 : DerivedMapBatches.Batch055.certificate4414.Valid := DerivedMapBatches.Batch055.certificate4414valid
theorem linkedComposition1049 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4414.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch055.certificate4414.c x = LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) := by
  rw [firstLink1049, secondLink1049]
  exact DerivedMapBatches.Batch055.certificate4414valid.2 x
theorem outputZero1049 : DerivedMapBatches.Batch055.certificate4414.c = (fun _ _ => false) := by decide
theorem linkedZero1049 (x : LinearCertificates.Vec DerivedMapBatches.Batch055.certificate4414.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch033.certificate2675.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1049, outputZero1049]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch020
