import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch033
import DerivedMapBatches.Batch034
import DerivedMapBatches.Batch035
import DerivedMapBatches.Batch052
import DerivedMapBatches.Batch053
import DerivedMapBatches.Batch056
import DerivedMapBatches.Batch058
import DerivedMapBatches.Batch059
import DerivedMapBatches.Batch060
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch025
theorem firstLink1250 : DerivedMapBatches.Batch033.certificate2715.algebra.mat = DerivedMapBatches.Batch059.certificate4781.a := by decide
theorem secondLink1250 : DerivedMapBatches.Batch059.certificate4780.algebra.mat = DerivedMapBatches.Batch059.certificate4781.b := by decide
theorem firstValid1250 : DerivedMapBatches.Batch033.certificate2715.Valid := DerivedMapBatches.Batch033.certificate2715valid
theorem secondValid1250 : DerivedMapBatches.Batch059.certificate4780.Valid := DerivedMapBatches.Batch059.certificate4780valid
theorem outputValid1250 : DerivedMapBatches.Batch059.certificate4781.Valid := DerivedMapBatches.Batch059.certificate4781valid
theorem linkedComposition1250 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4781.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4781.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat x) := by
  rw [firstLink1250, secondLink1250]
  exact DerivedMapBatches.Batch059.certificate4781valid.2 x
theorem outputZero1250 : DerivedMapBatches.Batch059.certificate4781.c = (fun _ _ => false) := by decide
theorem linkedZero1250 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4781.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2715.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1250, outputZero1250]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1251 : DerivedMapBatches.Batch033.certificate2716.algebra.mat = DerivedMapBatches.Batch059.certificate4783.a := by decide
theorem secondLink1251 : DerivedMapBatches.Batch059.certificate4782.algebra.mat = DerivedMapBatches.Batch059.certificate4783.b := by decide
theorem firstValid1251 : DerivedMapBatches.Batch033.certificate2716.Valid := DerivedMapBatches.Batch033.certificate2716valid
theorem secondValid1251 : DerivedMapBatches.Batch059.certificate4782.Valid := DerivedMapBatches.Batch059.certificate4782valid
theorem outputValid1251 : DerivedMapBatches.Batch059.certificate4783.Valid := DerivedMapBatches.Batch059.certificate4783valid
theorem linkedComposition1251 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4783.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4783.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4782.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat x) := by
  rw [firstLink1251, secondLink1251]
  exact DerivedMapBatches.Batch059.certificate4783valid.2 x
theorem outputZero1251 : DerivedMapBatches.Batch059.certificate4783.c = (fun _ _ => false) := by decide
theorem linkedZero1251 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4783.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4782.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2716.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1251, outputZero1251]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1252 : DerivedMapBatches.Batch033.certificate2717.algebra.mat = DerivedMapBatches.Batch059.certificate4785.a := by decide
theorem secondLink1252 : DerivedMapBatches.Batch059.certificate4784.algebra.mat = DerivedMapBatches.Batch059.certificate4785.b := by decide
theorem firstValid1252 : DerivedMapBatches.Batch033.certificate2717.Valid := DerivedMapBatches.Batch033.certificate2717valid
theorem secondValid1252 : DerivedMapBatches.Batch059.certificate4784.Valid := DerivedMapBatches.Batch059.certificate4784valid
theorem outputValid1252 : DerivedMapBatches.Batch059.certificate4785.Valid := DerivedMapBatches.Batch059.certificate4785valid
theorem linkedComposition1252 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4785.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4785.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat x) := by
  rw [firstLink1252, secondLink1252]
  exact DerivedMapBatches.Batch059.certificate4785valid.2 x
theorem outputZero1252 : DerivedMapBatches.Batch059.certificate4785.c = (fun _ _ => false) := by decide
theorem linkedZero1252 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4785.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4784.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2717.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1252, outputZero1252]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1253 : DerivedMapBatches.Batch033.certificate2718.algebra.mat = DerivedMapBatches.Batch059.certificate4787.a := by decide
theorem secondLink1253 : DerivedMapBatches.Batch059.certificate4786.algebra.mat = DerivedMapBatches.Batch059.certificate4787.b := by decide
theorem firstValid1253 : DerivedMapBatches.Batch033.certificate2718.Valid := DerivedMapBatches.Batch033.certificate2718valid
theorem secondValid1253 : DerivedMapBatches.Batch059.certificate4786.Valid := DerivedMapBatches.Batch059.certificate4786valid
theorem outputValid1253 : DerivedMapBatches.Batch059.certificate4787.Valid := DerivedMapBatches.Batch059.certificate4787valid
theorem linkedComposition1253 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4787.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4787.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4786.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat x) := by
  rw [firstLink1253, secondLink1253]
  exact DerivedMapBatches.Batch059.certificate4787valid.2 x
theorem outputZero1253 : DerivedMapBatches.Batch059.certificate4787.c = (fun _ _ => false) := by decide
theorem linkedZero1253 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4787.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4786.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2718.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1253, outputZero1253]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1254 : DerivedMapBatches.Batch033.certificate2719.algebra.mat = DerivedMapBatches.Batch059.certificate4789.a := by decide
theorem secondLink1254 : DerivedMapBatches.Batch059.certificate4788.algebra.mat = DerivedMapBatches.Batch059.certificate4789.b := by decide
theorem firstValid1254 : DerivedMapBatches.Batch033.certificate2719.Valid := DerivedMapBatches.Batch033.certificate2719valid
theorem secondValid1254 : DerivedMapBatches.Batch059.certificate4788.Valid := DerivedMapBatches.Batch059.certificate4788valid
theorem outputValid1254 : DerivedMapBatches.Batch059.certificate4789.Valid := DerivedMapBatches.Batch059.certificate4789valid
theorem linkedComposition1254 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4789.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4789.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4788.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat x) := by
  rw [firstLink1254, secondLink1254]
  exact DerivedMapBatches.Batch059.certificate4789valid.2 x
theorem outputZero1254 : DerivedMapBatches.Batch059.certificate4789.c = (fun _ _ => false) := by decide
theorem linkedZero1254 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4789.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4788.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch033.certificate2719.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition1254, outputZero1254]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink1255 : DerivedMapBatches.Batch001.certificate104.algebra.mat = DerivedMapBatches.Batch059.certificate4790.a := by decide
theorem secondLink1255 : DerivedMapBatches.Batch002.certificate183.algebra.mat = DerivedMapBatches.Batch059.certificate4790.b := by decide
theorem firstValid1255 : DerivedMapBatches.Batch001.certificate104.Valid := DerivedMapBatches.Batch001.certificate104valid
theorem secondValid1255 : DerivedMapBatches.Batch002.certificate183.Valid := DerivedMapBatches.Batch002.certificate183valid
theorem outputValid1255 : DerivedMapBatches.Batch059.certificate4790.Valid := DerivedMapBatches.Batch059.certificate4790valid
theorem linkedComposition1255 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4790.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4790.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate104.algebra.mat x) := by
  rw [firstLink1255, secondLink1255]
  exact DerivedMapBatches.Batch059.certificate4790valid.2 x
theorem rhsLink1255 : DerivedMapBatches.Batch059.certificate4790.c = DerivedMapBatches.Batch034.certificate2798.algebra.mat := by decide
theorem rhsValid1255 : DerivedMapBatches.Batch034.certificate2798.Valid := DerivedMapBatches.Batch034.certificate2798valid
theorem linkedCommutativity1255 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4790.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate104.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2798.algebra.mat x := by
  exact (linkedComposition1255 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1255)
theorem firstLink1256 : DerivedMapBatches.Batch001.certificate105.algebra.mat = DerivedMapBatches.Batch059.certificate4791.a := by decide
theorem secondLink1256 : DerivedMapBatches.Batch002.certificate187.algebra.mat = DerivedMapBatches.Batch059.certificate4791.b := by decide
theorem firstValid1256 : DerivedMapBatches.Batch001.certificate105.Valid := DerivedMapBatches.Batch001.certificate105valid
theorem secondValid1256 : DerivedMapBatches.Batch002.certificate187.Valid := DerivedMapBatches.Batch002.certificate187valid
theorem outputValid1256 : DerivedMapBatches.Batch059.certificate4791.Valid := DerivedMapBatches.Batch059.certificate4791valid
theorem linkedComposition1256 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4791.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4791.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) := by
  rw [firstLink1256, secondLink1256]
  exact DerivedMapBatches.Batch059.certificate4791valid.2 x
theorem rhsLink1256 : DerivedMapBatches.Batch059.certificate4791.c = DerivedMapBatches.Batch034.certificate2799.algebra.mat := by decide
theorem rhsValid1256 : DerivedMapBatches.Batch034.certificate2799.Valid := DerivedMapBatches.Batch034.certificate2799valid
theorem linkedCommutativity1256 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4791.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2799.algebra.mat x := by
  exact (linkedComposition1256 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1256)
theorem firstLink1257 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch059.certificate4793.a := by decide
theorem secondLink1257 : DerivedMapBatches.Batch059.certificate4792.algebra.mat = DerivedMapBatches.Batch059.certificate4793.b := by decide
theorem firstValid1257 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem secondValid1257 : DerivedMapBatches.Batch059.certificate4792.Valid := DerivedMapBatches.Batch059.certificate4792valid
theorem outputValid1257 : DerivedMapBatches.Batch059.certificate4793.Valid := DerivedMapBatches.Batch059.certificate4793valid
theorem linkedComposition1257 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4793.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4793.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4792.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) := by
  rw [firstLink1257, secondLink1257]
  exact DerivedMapBatches.Batch059.certificate4793valid.2 x
theorem rhsLink1257 : DerivedMapBatches.Batch059.certificate4793.c = DerivedMapBatches.Batch035.certificate2800.algebra.mat := by decide
theorem rhsValid1257 : DerivedMapBatches.Batch035.certificate2800.Valid := DerivedMapBatches.Batch035.certificate2800valid
theorem linkedCommutativity1257 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4793.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4792.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2800.algebra.mat x := by
  exact (linkedComposition1257 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1257)
theorem firstLink1258 : DerivedMapBatches.Batch001.certificate107.algebra.mat = DerivedMapBatches.Batch059.certificate4794.a := by decide
theorem secondLink1258 : DerivedMapBatches.Batch002.certificate189.algebra.mat = DerivedMapBatches.Batch059.certificate4794.b := by decide
theorem firstValid1258 : DerivedMapBatches.Batch001.certificate107.Valid := DerivedMapBatches.Batch001.certificate107valid
theorem secondValid1258 : DerivedMapBatches.Batch002.certificate189.Valid := DerivedMapBatches.Batch002.certificate189valid
theorem outputValid1258 : DerivedMapBatches.Batch059.certificate4794.Valid := DerivedMapBatches.Batch059.certificate4794valid
theorem linkedComposition1258 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4794.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4794.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) := by
  rw [firstLink1258, secondLink1258]
  exact DerivedMapBatches.Batch059.certificate4794valid.2 x
theorem rhsLink1258 : DerivedMapBatches.Batch059.certificate4794.c = DerivedMapBatches.Batch035.certificate2801.algebra.mat := by decide
theorem rhsValid1258 : DerivedMapBatches.Batch035.certificate2801.Valid := DerivedMapBatches.Batch035.certificate2801valid
theorem linkedCommutativity1258 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4794.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2801.algebra.mat x := by
  exact (linkedComposition1258 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1258)
theorem firstLink1259 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch059.certificate4795.a := by decide
theorem secondLink1259 : DerivedMapBatches.Batch002.certificate191.algebra.mat = DerivedMapBatches.Batch059.certificate4795.b := by decide
theorem firstValid1259 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem secondValid1259 : DerivedMapBatches.Batch002.certificate191.Valid := DerivedMapBatches.Batch002.certificate191valid
theorem outputValid1259 : DerivedMapBatches.Batch059.certificate4795.Valid := DerivedMapBatches.Batch059.certificate4795valid
theorem linkedComposition1259 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4795.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4795.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) := by
  rw [firstLink1259, secondLink1259]
  exact DerivedMapBatches.Batch059.certificate4795valid.2 x
theorem rhsLink1259 : DerivedMapBatches.Batch059.certificate4795.c = DerivedMapBatches.Batch035.certificate2802.algebra.mat := by decide
theorem rhsValid1259 : DerivedMapBatches.Batch035.certificate2802.Valid := DerivedMapBatches.Batch035.certificate2802valid
theorem linkedCommutativity1259 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4795.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2802.algebra.mat x := by
  exact (linkedComposition1259 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1259)
theorem firstLink1260 : DerivedMapBatches.Batch001.certificate109.algebra.mat = DerivedMapBatches.Batch059.certificate4796.a := by decide
theorem secondLink1260 : DerivedMapBatches.Batch002.certificate193.algebra.mat = DerivedMapBatches.Batch059.certificate4796.b := by decide
theorem firstValid1260 : DerivedMapBatches.Batch001.certificate109.Valid := DerivedMapBatches.Batch001.certificate109valid
theorem secondValid1260 : DerivedMapBatches.Batch002.certificate193.Valid := DerivedMapBatches.Batch002.certificate193valid
theorem outputValid1260 : DerivedMapBatches.Batch059.certificate4796.Valid := DerivedMapBatches.Batch059.certificate4796valid
theorem linkedComposition1260 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4796.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4796.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) := by
  rw [firstLink1260, secondLink1260]
  exact DerivedMapBatches.Batch059.certificate4796valid.2 x
theorem rhsLink1260 : DerivedMapBatches.Batch059.certificate4796.c = DerivedMapBatches.Batch035.certificate2803.algebra.mat := by decide
theorem rhsValid1260 : DerivedMapBatches.Batch035.certificate2803.Valid := DerivedMapBatches.Batch035.certificate2803valid
theorem linkedCommutativity1260 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4796.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2803.algebra.mat x := by
  exact (linkedComposition1260 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1260)
theorem firstLink1261 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch059.certificate4798.a := by decide
theorem secondLink1261 : DerivedMapBatches.Batch059.certificate4797.algebra.mat = DerivedMapBatches.Batch059.certificate4798.b := by decide
theorem firstValid1261 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem secondValid1261 : DerivedMapBatches.Batch059.certificate4797.Valid := DerivedMapBatches.Batch059.certificate4797valid
theorem outputValid1261 : DerivedMapBatches.Batch059.certificate4798.Valid := DerivedMapBatches.Batch059.certificate4798valid
theorem linkedComposition1261 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4798.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4798.c x = LinearCertificates.eval DerivedMapBatches.Batch059.certificate4797.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) := by
  rw [firstLink1261, secondLink1261]
  exact DerivedMapBatches.Batch059.certificate4798valid.2 x
theorem rhsLink1261 : DerivedMapBatches.Batch059.certificate4798.c = DerivedMapBatches.Batch035.certificate2804.algebra.mat := by decide
theorem rhsValid1261 : DerivedMapBatches.Batch035.certificate2804.Valid := DerivedMapBatches.Batch035.certificate2804valid
theorem linkedCommutativity1261 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4798.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4797.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2804.algebra.mat x := by
  exact (linkedComposition1261 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1261)
theorem firstLink1262 : DerivedMapBatches.Batch001.certificate111.algebra.mat = DerivedMapBatches.Batch059.certificate4799.a := by decide
theorem secondLink1262 : DerivedMapBatches.Batch002.certificate194.algebra.mat = DerivedMapBatches.Batch059.certificate4799.b := by decide
theorem firstValid1262 : DerivedMapBatches.Batch001.certificate111.Valid := DerivedMapBatches.Batch001.certificate111valid
theorem secondValid1262 : DerivedMapBatches.Batch002.certificate194.Valid := DerivedMapBatches.Batch002.certificate194valid
theorem outputValid1262 : DerivedMapBatches.Batch059.certificate4799.Valid := DerivedMapBatches.Batch059.certificate4799valid
theorem linkedComposition1262 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4799.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch059.certificate4799.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) := by
  rw [firstLink1262, secondLink1262]
  exact DerivedMapBatches.Batch059.certificate4799valid.2 x
theorem rhsLink1262 : DerivedMapBatches.Batch059.certificate4799.c = DerivedMapBatches.Batch035.certificate2805.algebra.mat := by decide
theorem rhsValid1262 : DerivedMapBatches.Batch035.certificate2805.Valid := DerivedMapBatches.Batch035.certificate2805valid
theorem linkedCommutativity1262 (x : LinearCertificates.Vec DerivedMapBatches.Batch059.certificate4799.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2805.algebra.mat x := by
  exact (linkedComposition1262 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1262)
theorem firstLink1263 : DerivedMapBatches.Batch001.certificate112.algebra.mat = DerivedMapBatches.Batch060.certificate4800.a := by decide
theorem secondLink1263 : DerivedMapBatches.Batch052.certificate4239.algebra.mat = DerivedMapBatches.Batch060.certificate4800.b := by decide
theorem firstValid1263 : DerivedMapBatches.Batch001.certificate112.Valid := DerivedMapBatches.Batch001.certificate112valid
theorem secondValid1263 : DerivedMapBatches.Batch052.certificate4239.Valid := DerivedMapBatches.Batch052.certificate4239valid
theorem outputValid1263 : DerivedMapBatches.Batch060.certificate4800.Valid := DerivedMapBatches.Batch060.certificate4800valid
theorem linkedComposition1263 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4800.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4800.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4239.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) := by
  rw [firstLink1263, secondLink1263]
  exact DerivedMapBatches.Batch060.certificate4800valid.2 x
theorem rhsLink1263 : DerivedMapBatches.Batch060.certificate4800.c = DerivedMapBatches.Batch035.certificate2806.algebra.mat := by decide
theorem rhsValid1263 : DerivedMapBatches.Batch035.certificate2806.Valid := DerivedMapBatches.Batch035.certificate2806valid
theorem linkedCommutativity1263 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4800.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4239.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2806.algebra.mat x := by
  exact (linkedComposition1263 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1263)
theorem firstLink1264 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch060.certificate4801.a := by decide
theorem secondLink1264 : DerivedMapBatches.Batch002.certificate195.algebra.mat = DerivedMapBatches.Batch060.certificate4801.b := by decide
theorem firstValid1264 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem secondValid1264 : DerivedMapBatches.Batch002.certificate195.Valid := DerivedMapBatches.Batch002.certificate195valid
theorem outputValid1264 : DerivedMapBatches.Batch060.certificate4801.Valid := DerivedMapBatches.Batch060.certificate4801valid
theorem linkedComposition1264 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4801.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4801.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) := by
  rw [firstLink1264, secondLink1264]
  exact DerivedMapBatches.Batch060.certificate4801valid.2 x
theorem rhsLink1264 : DerivedMapBatches.Batch060.certificate4801.c = DerivedMapBatches.Batch035.certificate2807.algebra.mat := by decide
theorem rhsValid1264 : DerivedMapBatches.Batch035.certificate2807.Valid := DerivedMapBatches.Batch035.certificate2807valid
theorem linkedCommutativity1264 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4801.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2807.algebra.mat x := by
  exact (linkedComposition1264 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1264)
theorem firstLink1265 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch060.certificate4802.a := by decide
theorem secondLink1265 : DerivedMapBatches.Batch002.certificate196.algebra.mat = DerivedMapBatches.Batch060.certificate4802.b := by decide
theorem firstValid1265 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem secondValid1265 : DerivedMapBatches.Batch002.certificate196.Valid := DerivedMapBatches.Batch002.certificate196valid
theorem outputValid1265 : DerivedMapBatches.Batch060.certificate4802.Valid := DerivedMapBatches.Batch060.certificate4802valid
theorem linkedComposition1265 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4802.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4802.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) := by
  rw [firstLink1265, secondLink1265]
  exact DerivedMapBatches.Batch060.certificate4802valid.2 x
theorem rhsLink1265 : DerivedMapBatches.Batch060.certificate4802.c = DerivedMapBatches.Batch035.certificate2808.algebra.mat := by decide
theorem rhsValid1265 : DerivedMapBatches.Batch035.certificate2808.Valid := DerivedMapBatches.Batch035.certificate2808valid
theorem linkedCommutativity1265 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4802.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2808.algebra.mat x := by
  exact (linkedComposition1265 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1265)
theorem firstLink1266 : DerivedMapBatches.Batch001.certificate115.algebra.mat = DerivedMapBatches.Batch060.certificate4803.a := by decide
theorem secondLink1266 : DerivedMapBatches.Batch002.certificate198.algebra.mat = DerivedMapBatches.Batch060.certificate4803.b := by decide
theorem firstValid1266 : DerivedMapBatches.Batch001.certificate115.Valid := DerivedMapBatches.Batch001.certificate115valid
theorem secondValid1266 : DerivedMapBatches.Batch002.certificate198.Valid := DerivedMapBatches.Batch002.certificate198valid
theorem outputValid1266 : DerivedMapBatches.Batch060.certificate4803.Valid := DerivedMapBatches.Batch060.certificate4803valid
theorem linkedComposition1266 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4803.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4803.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) := by
  rw [firstLink1266, secondLink1266]
  exact DerivedMapBatches.Batch060.certificate4803valid.2 x
theorem rhsLink1266 : DerivedMapBatches.Batch060.certificate4803.c = DerivedMapBatches.Batch035.certificate2809.algebra.mat := by decide
theorem rhsValid1266 : DerivedMapBatches.Batch035.certificate2809.Valid := DerivedMapBatches.Batch035.certificate2809valid
theorem linkedCommutativity1266 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4803.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2809.algebra.mat x := by
  exact (linkedComposition1266 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1266)
theorem firstLink1267 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch060.certificate4804.a := by decide
theorem secondLink1267 : DerivedMapBatches.Batch053.certificate4246.algebra.mat = DerivedMapBatches.Batch060.certificate4804.b := by decide
theorem firstValid1267 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem secondValid1267 : DerivedMapBatches.Batch053.certificate4246.Valid := DerivedMapBatches.Batch053.certificate4246valid
theorem outputValid1267 : DerivedMapBatches.Batch060.certificate4804.Valid := DerivedMapBatches.Batch060.certificate4804valid
theorem linkedComposition1267 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4804.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4804.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4246.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) := by
  rw [firstLink1267, secondLink1267]
  exact DerivedMapBatches.Batch060.certificate4804valid.2 x
theorem rhsLink1267 : DerivedMapBatches.Batch060.certificate4804.c = DerivedMapBatches.Batch035.certificate2810.algebra.mat := by decide
theorem rhsValid1267 : DerivedMapBatches.Batch035.certificate2810.Valid := DerivedMapBatches.Batch035.certificate2810valid
theorem linkedCommutativity1267 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4804.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4246.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2810.algebra.mat x := by
  exact (linkedComposition1267 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1267)
theorem firstLink1268 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch060.certificate4805.a := by decide
theorem secondLink1268 : DerivedMapBatches.Batch002.certificate199.algebra.mat = DerivedMapBatches.Batch060.certificate4805.b := by decide
theorem firstValid1268 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem secondValid1268 : DerivedMapBatches.Batch002.certificate199.Valid := DerivedMapBatches.Batch002.certificate199valid
theorem outputValid1268 : DerivedMapBatches.Batch060.certificate4805.Valid := DerivedMapBatches.Batch060.certificate4805valid
theorem linkedComposition1268 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4805.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4805.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) := by
  rw [firstLink1268, secondLink1268]
  exact DerivedMapBatches.Batch060.certificate4805valid.2 x
theorem rhsLink1268 : DerivedMapBatches.Batch060.certificate4805.c = DerivedMapBatches.Batch035.certificate2811.algebra.mat := by decide
theorem rhsValid1268 : DerivedMapBatches.Batch035.certificate2811.Valid := DerivedMapBatches.Batch035.certificate2811valid
theorem linkedCommutativity1268 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4805.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2811.algebra.mat x := by
  exact (linkedComposition1268 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1268)
theorem firstLink1269 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch060.certificate4807.a := by decide
theorem secondLink1269 : DerivedMapBatches.Batch060.certificate4806.algebra.mat = DerivedMapBatches.Batch060.certificate4807.b := by decide
theorem firstValid1269 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem secondValid1269 : DerivedMapBatches.Batch060.certificate4806.Valid := DerivedMapBatches.Batch060.certificate4806valid
theorem outputValid1269 : DerivedMapBatches.Batch060.certificate4807.Valid := DerivedMapBatches.Batch060.certificate4807valid
theorem linkedComposition1269 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4807.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4807.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4806.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) := by
  rw [firstLink1269, secondLink1269]
  exact DerivedMapBatches.Batch060.certificate4807valid.2 x
theorem rhsLink1269 : DerivedMapBatches.Batch060.certificate4807.c = DerivedMapBatches.Batch035.certificate2812.algebra.mat := by decide
theorem rhsValid1269 : DerivedMapBatches.Batch035.certificate2812.Valid := DerivedMapBatches.Batch035.certificate2812valid
theorem linkedCommutativity1269 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4807.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4806.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2812.algebra.mat x := by
  exact (linkedComposition1269 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1269)
theorem firstLink1270 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch060.certificate4809.a := by decide
theorem secondLink1270 : DerivedMapBatches.Batch060.certificate4808.algebra.mat = DerivedMapBatches.Batch060.certificate4809.b := by decide
theorem firstValid1270 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem secondValid1270 : DerivedMapBatches.Batch060.certificate4808.Valid := DerivedMapBatches.Batch060.certificate4808valid
theorem outputValid1270 : DerivedMapBatches.Batch060.certificate4809.Valid := DerivedMapBatches.Batch060.certificate4809valid
theorem linkedComposition1270 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4809.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4809.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4808.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) := by
  rw [firstLink1270, secondLink1270]
  exact DerivedMapBatches.Batch060.certificate4809valid.2 x
theorem rhsLink1270 : DerivedMapBatches.Batch060.certificate4809.c = DerivedMapBatches.Batch035.certificate2813.algebra.mat := by decide
theorem rhsValid1270 : DerivedMapBatches.Batch035.certificate2813.Valid := DerivedMapBatches.Batch035.certificate2813valid
theorem linkedCommutativity1270 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4809.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4808.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2813.algebra.mat x := by
  exact (linkedComposition1270 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1270)
theorem firstLink1271 : DerivedMapBatches.Batch001.certificate120.algebra.mat = DerivedMapBatches.Batch060.certificate4810.a := by decide
theorem secondLink1271 : DerivedMapBatches.Batch002.certificate200.algebra.mat = DerivedMapBatches.Batch060.certificate4810.b := by decide
theorem firstValid1271 : DerivedMapBatches.Batch001.certificate120.Valid := DerivedMapBatches.Batch001.certificate120valid
theorem secondValid1271 : DerivedMapBatches.Batch002.certificate200.Valid := DerivedMapBatches.Batch002.certificate200valid
theorem outputValid1271 : DerivedMapBatches.Batch060.certificate4810.Valid := DerivedMapBatches.Batch060.certificate4810valid
theorem linkedComposition1271 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4810.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4810.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) := by
  rw [firstLink1271, secondLink1271]
  exact DerivedMapBatches.Batch060.certificate4810valid.2 x
theorem rhsLink1271 : DerivedMapBatches.Batch060.certificate4810.c = DerivedMapBatches.Batch035.certificate2814.algebra.mat := by decide
theorem rhsValid1271 : DerivedMapBatches.Batch035.certificate2814.Valid := DerivedMapBatches.Batch035.certificate2814valid
theorem linkedCommutativity1271 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4810.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2814.algebra.mat x := by
  exact (linkedComposition1271 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1271)
theorem firstLink1272 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch060.certificate4811.a := by decide
theorem secondLink1272 : DerivedMapBatches.Batch058.certificate4666.algebra.mat = DerivedMapBatches.Batch060.certificate4811.b := by decide
theorem firstValid1272 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem secondValid1272 : DerivedMapBatches.Batch058.certificate4666.Valid := DerivedMapBatches.Batch058.certificate4666valid
theorem outputValid1272 : DerivedMapBatches.Batch060.certificate4811.Valid := DerivedMapBatches.Batch060.certificate4811valid
theorem linkedComposition1272 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4811.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4811.c x = LinearCertificates.eval DerivedMapBatches.Batch058.certificate4666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) := by
  rw [firstLink1272, secondLink1272]
  exact DerivedMapBatches.Batch060.certificate4811valid.2 x
theorem rhsLink1272 : DerivedMapBatches.Batch060.certificate4811.c = DerivedMapBatches.Batch035.certificate2815.algebra.mat := by decide
theorem rhsValid1272 : DerivedMapBatches.Batch035.certificate2815.Valid := DerivedMapBatches.Batch035.certificate2815valid
theorem linkedCommutativity1272 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4811.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch058.certificate4666.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2815.algebra.mat x := by
  exact (linkedComposition1272 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1272)
theorem firstLink1273 : DerivedMapBatches.Batch001.certificate122.algebra.mat = DerivedMapBatches.Batch060.certificate4812.a := by decide
theorem secondLink1273 : DerivedMapBatches.Batch002.certificate201.algebra.mat = DerivedMapBatches.Batch060.certificate4812.b := by decide
theorem firstValid1273 : DerivedMapBatches.Batch001.certificate122.Valid := DerivedMapBatches.Batch001.certificate122valid
theorem secondValid1273 : DerivedMapBatches.Batch002.certificate201.Valid := DerivedMapBatches.Batch002.certificate201valid
theorem outputValid1273 : DerivedMapBatches.Batch060.certificate4812.Valid := DerivedMapBatches.Batch060.certificate4812valid
theorem linkedComposition1273 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4812.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4812.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) := by
  rw [firstLink1273, secondLink1273]
  exact DerivedMapBatches.Batch060.certificate4812valid.2 x
theorem rhsLink1273 : DerivedMapBatches.Batch060.certificate4812.c = DerivedMapBatches.Batch035.certificate2816.algebra.mat := by decide
theorem rhsValid1273 : DerivedMapBatches.Batch035.certificate2816.Valid := DerivedMapBatches.Batch035.certificate2816valid
theorem linkedCommutativity1273 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4812.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate201.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2816.algebra.mat x := by
  exact (linkedComposition1273 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1273)
theorem firstLink1274 : DerivedMapBatches.Batch001.certificate123.algebra.mat = DerivedMapBatches.Batch060.certificate4813.a := by decide
theorem secondLink1274 : DerivedMapBatches.Batch002.certificate202.algebra.mat = DerivedMapBatches.Batch060.certificate4813.b := by decide
theorem firstValid1274 : DerivedMapBatches.Batch001.certificate123.Valid := DerivedMapBatches.Batch001.certificate123valid
theorem secondValid1274 : DerivedMapBatches.Batch002.certificate202.Valid := DerivedMapBatches.Batch002.certificate202valid
theorem outputValid1274 : DerivedMapBatches.Batch060.certificate4813.Valid := DerivedMapBatches.Batch060.certificate4813valid
theorem linkedComposition1274 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4813.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4813.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) := by
  rw [firstLink1274, secondLink1274]
  exact DerivedMapBatches.Batch060.certificate4813valid.2 x
theorem rhsLink1274 : DerivedMapBatches.Batch060.certificate4813.c = DerivedMapBatches.Batch035.certificate2817.algebra.mat := by decide
theorem rhsValid1274 : DerivedMapBatches.Batch035.certificate2817.Valid := DerivedMapBatches.Batch035.certificate2817valid
theorem linkedCommutativity1274 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4813.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate202.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2817.algebra.mat x := by
  exact (linkedComposition1274 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1274)
theorem firstLink1275 : DerivedMapBatches.Batch001.certificate124.algebra.mat = DerivedMapBatches.Batch060.certificate4814.a := by decide
theorem secondLink1275 : DerivedMapBatches.Batch002.certificate203.algebra.mat = DerivedMapBatches.Batch060.certificate4814.b := by decide
theorem firstValid1275 : DerivedMapBatches.Batch001.certificate124.Valid := DerivedMapBatches.Batch001.certificate124valid
theorem secondValid1275 : DerivedMapBatches.Batch002.certificate203.Valid := DerivedMapBatches.Batch002.certificate203valid
theorem outputValid1275 : DerivedMapBatches.Batch060.certificate4814.Valid := DerivedMapBatches.Batch060.certificate4814valid
theorem linkedComposition1275 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4814.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4814.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) := by
  rw [firstLink1275, secondLink1275]
  exact DerivedMapBatches.Batch060.certificate4814valid.2 x
theorem rhsLink1275 : DerivedMapBatches.Batch060.certificate4814.c = DerivedMapBatches.Batch035.certificate2818.algebra.mat := by decide
theorem rhsValid1275 : DerivedMapBatches.Batch035.certificate2818.Valid := DerivedMapBatches.Batch035.certificate2818valid
theorem linkedCommutativity1275 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4814.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate203.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2818.algebra.mat x := by
  exact (linkedComposition1275 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1275)
theorem firstLink1276 : DerivedMapBatches.Batch001.certificate125.algebra.mat = DerivedMapBatches.Batch060.certificate4815.a := by decide
theorem secondLink1276 : DerivedMapBatches.Batch002.certificate204.algebra.mat = DerivedMapBatches.Batch060.certificate4815.b := by decide
theorem firstValid1276 : DerivedMapBatches.Batch001.certificate125.Valid := DerivedMapBatches.Batch001.certificate125valid
theorem secondValid1276 : DerivedMapBatches.Batch002.certificate204.Valid := DerivedMapBatches.Batch002.certificate204valid
theorem outputValid1276 : DerivedMapBatches.Batch060.certificate4815.Valid := DerivedMapBatches.Batch060.certificate4815valid
theorem linkedComposition1276 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4815.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4815.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) := by
  rw [firstLink1276, secondLink1276]
  exact DerivedMapBatches.Batch060.certificate4815valid.2 x
theorem rhsLink1276 : DerivedMapBatches.Batch060.certificate4815.c = DerivedMapBatches.Batch035.certificate2819.algebra.mat := by decide
theorem rhsValid1276 : DerivedMapBatches.Batch035.certificate2819.Valid := DerivedMapBatches.Batch035.certificate2819valid
theorem linkedCommutativity1276 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4815.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate204.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2819.algebra.mat x := by
  exact (linkedComposition1276 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1276)
theorem firstLink1277 : DerivedMapBatches.Batch001.certificate126.algebra.mat = DerivedMapBatches.Batch060.certificate4816.a := by decide
theorem secondLink1277 : DerivedMapBatches.Batch002.certificate205.algebra.mat = DerivedMapBatches.Batch060.certificate4816.b := by decide
theorem firstValid1277 : DerivedMapBatches.Batch001.certificate126.Valid := DerivedMapBatches.Batch001.certificate126valid
theorem secondValid1277 : DerivedMapBatches.Batch002.certificate205.Valid := DerivedMapBatches.Batch002.certificate205valid
theorem outputValid1277 : DerivedMapBatches.Batch060.certificate4816.Valid := DerivedMapBatches.Batch060.certificate4816valid
theorem linkedComposition1277 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4816.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4816.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) := by
  rw [firstLink1277, secondLink1277]
  exact DerivedMapBatches.Batch060.certificate4816valid.2 x
theorem rhsLink1277 : DerivedMapBatches.Batch060.certificate4816.c = DerivedMapBatches.Batch035.certificate2820.algebra.mat := by decide
theorem rhsValid1277 : DerivedMapBatches.Batch035.certificate2820.Valid := DerivedMapBatches.Batch035.certificate2820valid
theorem linkedCommutativity1277 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4816.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate205.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2820.algebra.mat x := by
  exact (linkedComposition1277 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1277)
theorem firstLink1278 : DerivedMapBatches.Batch001.certificate127.algebra.mat = DerivedMapBatches.Batch060.certificate4817.a := by decide
theorem secondLink1278 : DerivedMapBatches.Batch002.certificate206.algebra.mat = DerivedMapBatches.Batch060.certificate4817.b := by decide
theorem firstValid1278 : DerivedMapBatches.Batch001.certificate127.Valid := DerivedMapBatches.Batch001.certificate127valid
theorem secondValid1278 : DerivedMapBatches.Batch002.certificate206.Valid := DerivedMapBatches.Batch002.certificate206valid
theorem outputValid1278 : DerivedMapBatches.Batch060.certificate4817.Valid := DerivedMapBatches.Batch060.certificate4817valid
theorem linkedComposition1278 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4817.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4817.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) := by
  rw [firstLink1278, secondLink1278]
  exact DerivedMapBatches.Batch060.certificate4817valid.2 x
theorem rhsLink1278 : DerivedMapBatches.Batch060.certificate4817.c = DerivedMapBatches.Batch035.certificate2821.algebra.mat := by decide
theorem rhsValid1278 : DerivedMapBatches.Batch035.certificate2821.Valid := DerivedMapBatches.Batch035.certificate2821valid
theorem linkedCommutativity1278 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4817.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate206.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2821.algebra.mat x := by
  exact (linkedComposition1278 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1278)
theorem firstLink1279 : DerivedMapBatches.Batch001.certificate128.algebra.mat = DerivedMapBatches.Batch060.certificate4818.a := by decide
theorem secondLink1279 : DerivedMapBatches.Batch002.certificate207.algebra.mat = DerivedMapBatches.Batch060.certificate4818.b := by decide
theorem firstValid1279 : DerivedMapBatches.Batch001.certificate128.Valid := DerivedMapBatches.Batch001.certificate128valid
theorem secondValid1279 : DerivedMapBatches.Batch002.certificate207.Valid := DerivedMapBatches.Batch002.certificate207valid
theorem outputValid1279 : DerivedMapBatches.Batch060.certificate4818.Valid := DerivedMapBatches.Batch060.certificate4818valid
theorem linkedComposition1279 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4818.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4818.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) := by
  rw [firstLink1279, secondLink1279]
  exact DerivedMapBatches.Batch060.certificate4818valid.2 x
theorem rhsLink1279 : DerivedMapBatches.Batch060.certificate4818.c = DerivedMapBatches.Batch035.certificate2822.algebra.mat := by decide
theorem rhsValid1279 : DerivedMapBatches.Batch035.certificate2822.Valid := DerivedMapBatches.Batch035.certificate2822valid
theorem linkedCommutativity1279 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4818.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2822.algebra.mat x := by
  exact (linkedComposition1279 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1279)
theorem firstLink1280 : DerivedMapBatches.Batch001.certificate129.algebra.mat = DerivedMapBatches.Batch060.certificate4820.a := by decide
theorem secondLink1280 : DerivedMapBatches.Batch060.certificate4819.algebra.mat = DerivedMapBatches.Batch060.certificate4820.b := by decide
theorem firstValid1280 : DerivedMapBatches.Batch001.certificate129.Valid := DerivedMapBatches.Batch001.certificate129valid
theorem secondValid1280 : DerivedMapBatches.Batch060.certificate4819.Valid := DerivedMapBatches.Batch060.certificate4819valid
theorem outputValid1280 : DerivedMapBatches.Batch060.certificate4820.Valid := DerivedMapBatches.Batch060.certificate4820valid
theorem linkedComposition1280 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4820.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4820.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) := by
  rw [firstLink1280, secondLink1280]
  exact DerivedMapBatches.Batch060.certificate4820valid.2 x
theorem rhsLink1280 : DerivedMapBatches.Batch060.certificate4820.c = DerivedMapBatches.Batch035.certificate2823.algebra.mat := by decide
theorem rhsValid1280 : DerivedMapBatches.Batch035.certificate2823.Valid := DerivedMapBatches.Batch035.certificate2823valid
theorem linkedCommutativity1280 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4820.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2823.algebra.mat x := by
  exact (linkedComposition1280 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1280)
theorem firstLink1281 : DerivedMapBatches.Batch002.certificate182.algebra.mat = DerivedMapBatches.Batch060.certificate4821.a := by decide
theorem secondLink1281 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch060.certificate4821.b := by decide
theorem firstValid1281 : DerivedMapBatches.Batch002.certificate182.Valid := DerivedMapBatches.Batch002.certificate182valid
theorem secondValid1281 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem outputValid1281 : DerivedMapBatches.Batch060.certificate4821.Valid := DerivedMapBatches.Batch060.certificate4821valid
theorem linkedComposition1281 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4821.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4821.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) := by
  rw [firstLink1281, secondLink1281]
  exact DerivedMapBatches.Batch060.certificate4821valid.2 x
theorem rhsLink1281 : DerivedMapBatches.Batch060.certificate4821.c = DerivedMapBatches.Batch034.certificate2798.algebra.mat := by decide
theorem rhsValid1281 : DerivedMapBatches.Batch034.certificate2798.Valid := DerivedMapBatches.Batch034.certificate2798valid
theorem linkedCommutativity1281 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4821.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate182.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2798.algebra.mat x := by
  exact (linkedComposition1281 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1281)
theorem firstLink1282 : DerivedMapBatches.Batch002.certificate183.algebra.mat = DerivedMapBatches.Batch060.certificate4822.a := by decide
theorem secondLink1282 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch060.certificate4822.b := by decide
theorem firstValid1282 : DerivedMapBatches.Batch002.certificate183.Valid := DerivedMapBatches.Batch002.certificate183valid
theorem secondValid1282 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem outputValid1282 : DerivedMapBatches.Batch060.certificate4822.Valid := DerivedMapBatches.Batch060.certificate4822valid
theorem linkedComposition1282 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4822.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4822.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) := by
  rw [firstLink1282, secondLink1282]
  exact DerivedMapBatches.Batch060.certificate4822valid.2 x
theorem rhsLink1282 : DerivedMapBatches.Batch060.certificate4822.c = DerivedMapBatches.Batch034.certificate2799.algebra.mat := by decide
theorem rhsValid1282 : DerivedMapBatches.Batch034.certificate2799.Valid := DerivedMapBatches.Batch034.certificate2799valid
theorem linkedCommutativity1282 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4822.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate183.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch034.certificate2799.algebra.mat x := by
  exact (linkedComposition1282 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1282)
theorem firstLink1283 : DerivedMapBatches.Batch002.certificate184.algebra.mat = DerivedMapBatches.Batch060.certificate4823.a := by decide
theorem secondLink1283 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch060.certificate4823.b := by decide
theorem firstValid1283 : DerivedMapBatches.Batch002.certificate184.Valid := DerivedMapBatches.Batch002.certificate184valid
theorem secondValid1283 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem outputValid1283 : DerivedMapBatches.Batch060.certificate4823.Valid := DerivedMapBatches.Batch060.certificate4823valid
theorem linkedComposition1283 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4823.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4823.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) := by
  rw [firstLink1283, secondLink1283]
  exact DerivedMapBatches.Batch060.certificate4823valid.2 x
theorem rhsLink1283 : DerivedMapBatches.Batch060.certificate4823.c = DerivedMapBatches.Batch035.certificate2800.algebra.mat := by decide
theorem rhsValid1283 : DerivedMapBatches.Batch035.certificate2800.Valid := DerivedMapBatches.Batch035.certificate2800valid
theorem linkedCommutativity1283 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4823.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate184.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2800.algebra.mat x := by
  exact (linkedComposition1283 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1283)
theorem firstLink1284 : DerivedMapBatches.Batch002.certificate185.algebra.mat = DerivedMapBatches.Batch060.certificate4825.a := by decide
theorem secondLink1284 : DerivedMapBatches.Batch060.certificate4824.algebra.mat = DerivedMapBatches.Batch060.certificate4825.b := by decide
theorem firstValid1284 : DerivedMapBatches.Batch002.certificate185.Valid := DerivedMapBatches.Batch002.certificate185valid
theorem secondValid1284 : DerivedMapBatches.Batch060.certificate4824.Valid := DerivedMapBatches.Batch060.certificate4824valid
theorem outputValid1284 : DerivedMapBatches.Batch060.certificate4825.Valid := DerivedMapBatches.Batch060.certificate4825valid
theorem linkedComposition1284 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4825.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4825.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4824.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) := by
  rw [firstLink1284, secondLink1284]
  exact DerivedMapBatches.Batch060.certificate4825valid.2 x
theorem rhsLink1284 : DerivedMapBatches.Batch060.certificate4825.c = DerivedMapBatches.Batch035.certificate2801.algebra.mat := by decide
theorem rhsValid1284 : DerivedMapBatches.Batch035.certificate2801.Valid := DerivedMapBatches.Batch035.certificate2801valid
theorem linkedCommutativity1284 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4825.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4824.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2801.algebra.mat x := by
  exact (linkedComposition1284 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1284)
theorem firstLink1285 : DerivedMapBatches.Batch002.certificate186.algebra.mat = DerivedMapBatches.Batch060.certificate4826.a := by decide
theorem secondLink1285 : DerivedMapBatches.Batch056.certificate4500.algebra.mat = DerivedMapBatches.Batch060.certificate4826.b := by decide
theorem firstValid1285 : DerivedMapBatches.Batch002.certificate186.Valid := DerivedMapBatches.Batch002.certificate186valid
theorem secondValid1285 : DerivedMapBatches.Batch056.certificate4500.Valid := DerivedMapBatches.Batch056.certificate4500valid
theorem outputValid1285 : DerivedMapBatches.Batch060.certificate4826.Valid := DerivedMapBatches.Batch060.certificate4826valid
theorem linkedComposition1285 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4826.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4826.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4500.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) := by
  rw [firstLink1285, secondLink1285]
  exact DerivedMapBatches.Batch060.certificate4826valid.2 x
theorem rhsLink1285 : DerivedMapBatches.Batch060.certificate4826.c = DerivedMapBatches.Batch035.certificate2802.algebra.mat := by decide
theorem rhsValid1285 : DerivedMapBatches.Batch035.certificate2802.Valid := DerivedMapBatches.Batch035.certificate2802valid
theorem linkedCommutativity1285 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4826.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4500.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate186.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2802.algebra.mat x := by
  exact (linkedComposition1285 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1285)
theorem firstLink1286 : DerivedMapBatches.Batch002.certificate187.algebra.mat = DerivedMapBatches.Batch060.certificate4827.a := by decide
theorem secondLink1286 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch060.certificate4827.b := by decide
theorem firstValid1286 : DerivedMapBatches.Batch002.certificate187.Valid := DerivedMapBatches.Batch002.certificate187valid
theorem secondValid1286 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem outputValid1286 : DerivedMapBatches.Batch060.certificate4827.Valid := DerivedMapBatches.Batch060.certificate4827valid
theorem linkedComposition1286 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4827.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4827.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) := by
  rw [firstLink1286, secondLink1286]
  exact DerivedMapBatches.Batch060.certificate4827valid.2 x
theorem rhsLink1286 : DerivedMapBatches.Batch060.certificate4827.c = DerivedMapBatches.Batch035.certificate2803.algebra.mat := by decide
theorem rhsValid1286 : DerivedMapBatches.Batch035.certificate2803.Valid := DerivedMapBatches.Batch035.certificate2803valid
theorem linkedCommutativity1286 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4827.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate187.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2803.algebra.mat x := by
  exact (linkedComposition1286 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1286)
theorem firstLink1287 : DerivedMapBatches.Batch002.certificate188.algebra.mat = DerivedMapBatches.Batch060.certificate4828.a := by decide
theorem secondLink1287 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch060.certificate4828.b := by decide
theorem firstValid1287 : DerivedMapBatches.Batch002.certificate188.Valid := DerivedMapBatches.Batch002.certificate188valid
theorem secondValid1287 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem outputValid1287 : DerivedMapBatches.Batch060.certificate4828.Valid := DerivedMapBatches.Batch060.certificate4828valid
theorem linkedComposition1287 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4828.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4828.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) := by
  rw [firstLink1287, secondLink1287]
  exact DerivedMapBatches.Batch060.certificate4828valid.2 x
theorem rhsLink1287 : DerivedMapBatches.Batch060.certificate4828.c = DerivedMapBatches.Batch035.certificate2804.algebra.mat := by decide
theorem rhsValid1287 : DerivedMapBatches.Batch035.certificate2804.Valid := DerivedMapBatches.Batch035.certificate2804valid
theorem linkedCommutativity1287 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4828.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate188.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2804.algebra.mat x := by
  exact (linkedComposition1287 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1287)
theorem firstLink1288 : DerivedMapBatches.Batch002.certificate189.algebra.mat = DerivedMapBatches.Batch060.certificate4830.a := by decide
theorem secondLink1288 : DerivedMapBatches.Batch060.certificate4829.algebra.mat = DerivedMapBatches.Batch060.certificate4830.b := by decide
theorem firstValid1288 : DerivedMapBatches.Batch002.certificate189.Valid := DerivedMapBatches.Batch002.certificate189valid
theorem secondValid1288 : DerivedMapBatches.Batch060.certificate4829.Valid := DerivedMapBatches.Batch060.certificate4829valid
theorem outputValid1288 : DerivedMapBatches.Batch060.certificate4830.Valid := DerivedMapBatches.Batch060.certificate4830valid
theorem linkedComposition1288 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4830.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4830.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) := by
  rw [firstLink1288, secondLink1288]
  exact DerivedMapBatches.Batch060.certificate4830valid.2 x
theorem rhsLink1288 : DerivedMapBatches.Batch060.certificate4830.c = DerivedMapBatches.Batch035.certificate2805.algebra.mat := by decide
theorem rhsValid1288 : DerivedMapBatches.Batch035.certificate2805.Valid := DerivedMapBatches.Batch035.certificate2805valid
theorem linkedCommutativity1288 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4830.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4829.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2805.algebra.mat x := by
  exact (linkedComposition1288 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1288)
theorem firstLink1289 : DerivedMapBatches.Batch002.certificate190.algebra.mat = DerivedMapBatches.Batch060.certificate4832.a := by decide
theorem secondLink1289 : DerivedMapBatches.Batch060.certificate4831.algebra.mat = DerivedMapBatches.Batch060.certificate4832.b := by decide
theorem firstValid1289 : DerivedMapBatches.Batch002.certificate190.Valid := DerivedMapBatches.Batch002.certificate190valid
theorem secondValid1289 : DerivedMapBatches.Batch060.certificate4831.Valid := DerivedMapBatches.Batch060.certificate4831valid
theorem outputValid1289 : DerivedMapBatches.Batch060.certificate4832.Valid := DerivedMapBatches.Batch060.certificate4832valid
theorem linkedComposition1289 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4832.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4832.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) := by
  rw [firstLink1289, secondLink1289]
  exact DerivedMapBatches.Batch060.certificate4832valid.2 x
theorem rhsLink1289 : DerivedMapBatches.Batch060.certificate4832.c = DerivedMapBatches.Batch035.certificate2806.algebra.mat := by decide
theorem rhsValid1289 : DerivedMapBatches.Batch035.certificate2806.Valid := DerivedMapBatches.Batch035.certificate2806valid
theorem linkedCommutativity1289 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4832.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2806.algebra.mat x := by
  exact (linkedComposition1289 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1289)
theorem firstLink1290 : DerivedMapBatches.Batch002.certificate191.algebra.mat = DerivedMapBatches.Batch060.certificate4833.a := by decide
theorem secondLink1290 : DerivedMapBatches.Batch056.certificate4501.algebra.mat = DerivedMapBatches.Batch060.certificate4833.b := by decide
theorem firstValid1290 : DerivedMapBatches.Batch002.certificate191.Valid := DerivedMapBatches.Batch002.certificate191valid
theorem secondValid1290 : DerivedMapBatches.Batch056.certificate4501.Valid := DerivedMapBatches.Batch056.certificate4501valid
theorem outputValid1290 : DerivedMapBatches.Batch060.certificate4833.Valid := DerivedMapBatches.Batch060.certificate4833valid
theorem linkedComposition1290 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4833.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4833.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4501.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) := by
  rw [firstLink1290, secondLink1290]
  exact DerivedMapBatches.Batch060.certificate4833valid.2 x
theorem rhsLink1290 : DerivedMapBatches.Batch060.certificate4833.c = DerivedMapBatches.Batch035.certificate2807.algebra.mat := by decide
theorem rhsValid1290 : DerivedMapBatches.Batch035.certificate2807.Valid := DerivedMapBatches.Batch035.certificate2807valid
theorem linkedCommutativity1290 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4833.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4501.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate191.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2807.algebra.mat x := by
  exact (linkedComposition1290 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1290)
theorem firstLink1291 : DerivedMapBatches.Batch002.certificate192.algebra.mat = DerivedMapBatches.Batch060.certificate4834.a := by decide
theorem secondLink1291 : DerivedMapBatches.Batch056.certificate4503.algebra.mat = DerivedMapBatches.Batch060.certificate4834.b := by decide
theorem firstValid1291 : DerivedMapBatches.Batch002.certificate192.Valid := DerivedMapBatches.Batch002.certificate192valid
theorem secondValid1291 : DerivedMapBatches.Batch056.certificate4503.Valid := DerivedMapBatches.Batch056.certificate4503valid
theorem outputValid1291 : DerivedMapBatches.Batch060.certificate4834.Valid := DerivedMapBatches.Batch060.certificate4834valid
theorem linkedComposition1291 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4834.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4834.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4503.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) := by
  rw [firstLink1291, secondLink1291]
  exact DerivedMapBatches.Batch060.certificate4834valid.2 x
theorem rhsLink1291 : DerivedMapBatches.Batch060.certificate4834.c = DerivedMapBatches.Batch035.certificate2808.algebra.mat := by decide
theorem rhsValid1291 : DerivedMapBatches.Batch035.certificate2808.Valid := DerivedMapBatches.Batch035.certificate2808valid
theorem linkedCommutativity1291 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4834.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4503.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate192.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2808.algebra.mat x := by
  exact (linkedComposition1291 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1291)
theorem firstLink1292 : DerivedMapBatches.Batch002.certificate193.algebra.mat = DerivedMapBatches.Batch060.certificate4835.a := by decide
theorem secondLink1292 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch060.certificate4835.b := by decide
theorem firstValid1292 : DerivedMapBatches.Batch002.certificate193.Valid := DerivedMapBatches.Batch002.certificate193valid
theorem secondValid1292 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem outputValid1292 : DerivedMapBatches.Batch060.certificate4835.Valid := DerivedMapBatches.Batch060.certificate4835valid
theorem linkedComposition1292 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4835.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4835.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) := by
  rw [firstLink1292, secondLink1292]
  exact DerivedMapBatches.Batch060.certificate4835valid.2 x
theorem rhsLink1292 : DerivedMapBatches.Batch060.certificate4835.c = DerivedMapBatches.Batch035.certificate2809.algebra.mat := by decide
theorem rhsValid1292 : DerivedMapBatches.Batch035.certificate2809.Valid := DerivedMapBatches.Batch035.certificate2809valid
theorem linkedCommutativity1292 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4835.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate193.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2809.algebra.mat x := by
  exact (linkedComposition1292 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1292)
theorem firstLink1293 : DerivedMapBatches.Batch002.certificate194.algebra.mat = DerivedMapBatches.Batch060.certificate4836.a := by decide
theorem secondLink1293 : DerivedMapBatches.Batch053.certificate4299.algebra.mat = DerivedMapBatches.Batch060.certificate4836.b := by decide
theorem firstValid1293 : DerivedMapBatches.Batch002.certificate194.Valid := DerivedMapBatches.Batch002.certificate194valid
theorem secondValid1293 : DerivedMapBatches.Batch053.certificate4299.Valid := DerivedMapBatches.Batch053.certificate4299valid
theorem outputValid1293 : DerivedMapBatches.Batch060.certificate4836.Valid := DerivedMapBatches.Batch060.certificate4836valid
theorem linkedComposition1293 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4836.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4836.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4299.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) := by
  rw [firstLink1293, secondLink1293]
  exact DerivedMapBatches.Batch060.certificate4836valid.2 x
theorem rhsLink1293 : DerivedMapBatches.Batch060.certificate4836.c = DerivedMapBatches.Batch035.certificate2810.algebra.mat := by decide
theorem rhsValid1293 : DerivedMapBatches.Batch035.certificate2810.Valid := DerivedMapBatches.Batch035.certificate2810valid
theorem linkedCommutativity1293 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4836.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4299.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2810.algebra.mat x := by
  exact (linkedComposition1293 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1293)
theorem firstLink1294 : DerivedMapBatches.Batch002.certificate195.algebra.mat = DerivedMapBatches.Batch060.certificate4837.a := by decide
theorem secondLink1294 : DerivedMapBatches.Batch056.certificate4509.algebra.mat = DerivedMapBatches.Batch060.certificate4837.b := by decide
theorem firstValid1294 : DerivedMapBatches.Batch002.certificate195.Valid := DerivedMapBatches.Batch002.certificate195valid
theorem secondValid1294 : DerivedMapBatches.Batch056.certificate4509.Valid := DerivedMapBatches.Batch056.certificate4509valid
theorem outputValid1294 : DerivedMapBatches.Batch060.certificate4837.Valid := DerivedMapBatches.Batch060.certificate4837valid
theorem linkedComposition1294 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4837.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4837.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4509.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) := by
  rw [firstLink1294, secondLink1294]
  exact DerivedMapBatches.Batch060.certificate4837valid.2 x
theorem rhsLink1294 : DerivedMapBatches.Batch060.certificate4837.c = DerivedMapBatches.Batch035.certificate2811.algebra.mat := by decide
theorem rhsValid1294 : DerivedMapBatches.Batch035.certificate2811.Valid := DerivedMapBatches.Batch035.certificate2811valid
theorem linkedCommutativity1294 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4837.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4509.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate195.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2811.algebra.mat x := by
  exact (linkedComposition1294 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1294)
theorem firstLink1295 : DerivedMapBatches.Batch002.certificate196.algebra.mat = DerivedMapBatches.Batch060.certificate4839.a := by decide
theorem secondLink1295 : DerivedMapBatches.Batch060.certificate4838.algebra.mat = DerivedMapBatches.Batch060.certificate4839.b := by decide
theorem firstValid1295 : DerivedMapBatches.Batch002.certificate196.Valid := DerivedMapBatches.Batch002.certificate196valid
theorem secondValid1295 : DerivedMapBatches.Batch060.certificate4838.Valid := DerivedMapBatches.Batch060.certificate4838valid
theorem outputValid1295 : DerivedMapBatches.Batch060.certificate4839.Valid := DerivedMapBatches.Batch060.certificate4839valid
theorem linkedComposition1295 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4839.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4839.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4838.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) := by
  rw [firstLink1295, secondLink1295]
  exact DerivedMapBatches.Batch060.certificate4839valid.2 x
theorem rhsLink1295 : DerivedMapBatches.Batch060.certificate4839.c = DerivedMapBatches.Batch035.certificate2812.algebra.mat := by decide
theorem rhsValid1295 : DerivedMapBatches.Batch035.certificate2812.Valid := DerivedMapBatches.Batch035.certificate2812valid
theorem linkedCommutativity1295 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4839.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4838.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate196.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2812.algebra.mat x := by
  exact (linkedComposition1295 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1295)
theorem firstLink1296 : DerivedMapBatches.Batch002.certificate197.algebra.mat = DerivedMapBatches.Batch060.certificate4840.a := by decide
theorem secondLink1296 : DerivedMapBatches.Batch056.certificate4511.algebra.mat = DerivedMapBatches.Batch060.certificate4840.b := by decide
theorem firstValid1296 : DerivedMapBatches.Batch002.certificate197.Valid := DerivedMapBatches.Batch002.certificate197valid
theorem secondValid1296 : DerivedMapBatches.Batch056.certificate4511.Valid := DerivedMapBatches.Batch056.certificate4511valid
theorem outputValid1296 : DerivedMapBatches.Batch060.certificate4840.Valid := DerivedMapBatches.Batch060.certificate4840valid
theorem linkedComposition1296 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4840.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4840.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4511.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) := by
  rw [firstLink1296, secondLink1296]
  exact DerivedMapBatches.Batch060.certificate4840valid.2 x
theorem rhsLink1296 : DerivedMapBatches.Batch060.certificate4840.c = DerivedMapBatches.Batch035.certificate2813.algebra.mat := by decide
theorem rhsValid1296 : DerivedMapBatches.Batch035.certificate2813.Valid := DerivedMapBatches.Batch035.certificate2813valid
theorem linkedCommutativity1296 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4840.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4511.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2813.algebra.mat x := by
  exact (linkedComposition1296 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1296)
theorem firstLink1297 : DerivedMapBatches.Batch002.certificate198.algebra.mat = DerivedMapBatches.Batch060.certificate4842.a := by decide
theorem secondLink1297 : DerivedMapBatches.Batch060.certificate4841.algebra.mat = DerivedMapBatches.Batch060.certificate4842.b := by decide
theorem firstValid1297 : DerivedMapBatches.Batch002.certificate198.Valid := DerivedMapBatches.Batch002.certificate198valid
theorem secondValid1297 : DerivedMapBatches.Batch060.certificate4841.Valid := DerivedMapBatches.Batch060.certificate4841valid
theorem outputValid1297 : DerivedMapBatches.Batch060.certificate4842.Valid := DerivedMapBatches.Batch060.certificate4842valid
theorem linkedComposition1297 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4842.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4842.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4841.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) := by
  rw [firstLink1297, secondLink1297]
  exact DerivedMapBatches.Batch060.certificate4842valid.2 x
theorem rhsLink1297 : DerivedMapBatches.Batch060.certificate4842.c = DerivedMapBatches.Batch035.certificate2814.algebra.mat := by decide
theorem rhsValid1297 : DerivedMapBatches.Batch035.certificate2814.Valid := DerivedMapBatches.Batch035.certificate2814valid
theorem linkedCommutativity1297 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4842.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4841.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate198.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2814.algebra.mat x := by
  exact (linkedComposition1297 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1297)
theorem firstLink1298 : DerivedMapBatches.Batch002.certificate199.algebra.mat = DerivedMapBatches.Batch060.certificate4843.a := by decide
theorem secondLink1298 : DerivedMapBatches.Batch056.certificate4521.algebra.mat = DerivedMapBatches.Batch060.certificate4843.b := by decide
theorem firstValid1298 : DerivedMapBatches.Batch002.certificate199.Valid := DerivedMapBatches.Batch002.certificate199valid
theorem secondValid1298 : DerivedMapBatches.Batch056.certificate4521.Valid := DerivedMapBatches.Batch056.certificate4521valid
theorem outputValid1298 : DerivedMapBatches.Batch060.certificate4843.Valid := DerivedMapBatches.Batch060.certificate4843valid
theorem linkedComposition1298 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4843.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4843.c x = LinearCertificates.eval DerivedMapBatches.Batch056.certificate4521.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) := by
  rw [firstLink1298, secondLink1298]
  exact DerivedMapBatches.Batch060.certificate4843valid.2 x
theorem rhsLink1298 : DerivedMapBatches.Batch060.certificate4843.c = DerivedMapBatches.Batch035.certificate2815.algebra.mat := by decide
theorem rhsValid1298 : DerivedMapBatches.Batch035.certificate2815.Valid := DerivedMapBatches.Batch035.certificate2815valid
theorem linkedCommutativity1298 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4843.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch056.certificate4521.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate199.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2815.algebra.mat x := by
  exact (linkedComposition1298 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1298)
theorem firstLink1299 : DerivedMapBatches.Batch002.certificate200.algebra.mat = DerivedMapBatches.Batch060.certificate4845.a := by decide
theorem secondLink1299 : DerivedMapBatches.Batch060.certificate4844.algebra.mat = DerivedMapBatches.Batch060.certificate4845.b := by decide
theorem firstValid1299 : DerivedMapBatches.Batch002.certificate200.Valid := DerivedMapBatches.Batch002.certificate200valid
theorem secondValid1299 : DerivedMapBatches.Batch060.certificate4844.Valid := DerivedMapBatches.Batch060.certificate4844valid
theorem outputValid1299 : DerivedMapBatches.Batch060.certificate4845.Valid := DerivedMapBatches.Batch060.certificate4845valid
theorem linkedComposition1299 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4845.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4845.c x = LinearCertificates.eval DerivedMapBatches.Batch060.certificate4844.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) := by
  rw [firstLink1299, secondLink1299]
  exact DerivedMapBatches.Batch060.certificate4845valid.2 x
theorem rhsLink1299 : DerivedMapBatches.Batch060.certificate4845.c = DerivedMapBatches.Batch035.certificate2816.algebra.mat := by decide
theorem rhsValid1299 : DerivedMapBatches.Batch035.certificate2816.Valid := DerivedMapBatches.Batch035.certificate2816valid
theorem linkedCommutativity1299 (x : LinearCertificates.Vec DerivedMapBatches.Batch060.certificate4845.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch060.certificate4844.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate200.algebra.mat x) = LinearCertificates.eval DerivedMapBatches.Batch035.certificate2816.algebra.mat x := by
  exact (linkedComposition1299 x).symm.trans (congrArg (fun m => LinearCertificates.eval m x) rhsLink1299)
end DerivedLinkageBatches.Batch025
