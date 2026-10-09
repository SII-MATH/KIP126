import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch001
theorem firstLink50 : DerivedMapBatches.Batch010.certificate878.algebra.mat = DerivedMapBatches.Batch011.certificate880.a := by decide
theorem secondLink50 : DerivedMapBatches.Batch010.certificate879.algebra.mat = DerivedMapBatches.Batch011.certificate880.b := by decide
theorem firstValid50 : DerivedMapBatches.Batch010.certificate878.Valid := DerivedMapBatches.Batch010.certificate878valid
theorem secondValid50 : DerivedMapBatches.Batch010.certificate879.Valid := DerivedMapBatches.Batch010.certificate879valid
theorem outputValid50 : DerivedMapBatches.Batch011.certificate880.Valid := DerivedMapBatches.Batch011.certificate880valid
theorem linkedComposition50 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate880.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate880.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat x) := by
  rw [firstLink50, secondLink50]
  exact DerivedMapBatches.Batch011.certificate880valid.2 x
theorem firstLink51 : DerivedMapBatches.Batch011.certificate881.algebra.mat = DerivedMapBatches.Batch011.certificate883.a := by decide
theorem secondLink51 : DerivedMapBatches.Batch011.certificate882.algebra.mat = DerivedMapBatches.Batch011.certificate883.b := by decide
theorem firstValid51 : DerivedMapBatches.Batch011.certificate881.Valid := DerivedMapBatches.Batch011.certificate881valid
theorem secondValid51 : DerivedMapBatches.Batch011.certificate882.Valid := DerivedMapBatches.Batch011.certificate882valid
theorem outputValid51 : DerivedMapBatches.Batch011.certificate883.Valid := DerivedMapBatches.Batch011.certificate883valid
theorem linkedComposition51 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate883.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate883.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate882.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate881.algebra.mat x) := by
  rw [firstLink51, secondLink51]
  exact DerivedMapBatches.Batch011.certificate883valid.2 x
theorem firstLink52 : DerivedMapBatches.Batch011.certificate884.algebra.mat = DerivedMapBatches.Batch011.certificate886.a := by decide
theorem secondLink52 : DerivedMapBatches.Batch011.certificate885.algebra.mat = DerivedMapBatches.Batch011.certificate886.b := by decide
theorem firstValid52 : DerivedMapBatches.Batch011.certificate884.Valid := DerivedMapBatches.Batch011.certificate884valid
theorem secondValid52 : DerivedMapBatches.Batch011.certificate885.Valid := DerivedMapBatches.Batch011.certificate885valid
theorem outputValid52 : DerivedMapBatches.Batch011.certificate886.Valid := DerivedMapBatches.Batch011.certificate886valid
theorem linkedComposition52 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate886.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate886.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat x) := by
  rw [firstLink52, secondLink52]
  exact DerivedMapBatches.Batch011.certificate886valid.2 x
theorem firstLink53 : DerivedMapBatches.Batch011.certificate887.algebra.mat = DerivedMapBatches.Batch011.certificate889.a := by decide
theorem secondLink53 : DerivedMapBatches.Batch011.certificate888.algebra.mat = DerivedMapBatches.Batch011.certificate889.b := by decide
theorem firstValid53 : DerivedMapBatches.Batch011.certificate887.Valid := DerivedMapBatches.Batch011.certificate887valid
theorem secondValid53 : DerivedMapBatches.Batch011.certificate888.Valid := DerivedMapBatches.Batch011.certificate888valid
theorem outputValid53 : DerivedMapBatches.Batch011.certificate889.Valid := DerivedMapBatches.Batch011.certificate889valid
theorem linkedComposition53 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate889.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate889.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate888.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate887.algebra.mat x) := by
  rw [firstLink53, secondLink53]
  exact DerivedMapBatches.Batch011.certificate889valid.2 x
theorem firstLink54 : DerivedMapBatches.Batch011.certificate890.algebra.mat = DerivedMapBatches.Batch011.certificate892.a := by decide
theorem secondLink54 : DerivedMapBatches.Batch011.certificate891.algebra.mat = DerivedMapBatches.Batch011.certificate892.b := by decide
theorem firstValid54 : DerivedMapBatches.Batch011.certificate890.Valid := DerivedMapBatches.Batch011.certificate890valid
theorem secondValid54 : DerivedMapBatches.Batch011.certificate891.Valid := DerivedMapBatches.Batch011.certificate891valid
theorem outputValid54 : DerivedMapBatches.Batch011.certificate892.Valid := DerivedMapBatches.Batch011.certificate892valid
theorem linkedComposition54 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate892.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate892.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate891.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate890.algebra.mat x) := by
  rw [firstLink54, secondLink54]
  exact DerivedMapBatches.Batch011.certificate892valid.2 x
theorem firstLink55 : DerivedMapBatches.Batch011.certificate893.algebra.mat = DerivedMapBatches.Batch011.certificate895.a := by decide
theorem secondLink55 : DerivedMapBatches.Batch011.certificate894.algebra.mat = DerivedMapBatches.Batch011.certificate895.b := by decide
theorem firstValid55 : DerivedMapBatches.Batch011.certificate893.Valid := DerivedMapBatches.Batch011.certificate893valid
theorem secondValid55 : DerivedMapBatches.Batch011.certificate894.Valid := DerivedMapBatches.Batch011.certificate894valid
theorem outputValid55 : DerivedMapBatches.Batch011.certificate895.Valid := DerivedMapBatches.Batch011.certificate895valid
theorem linkedComposition55 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate895.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate895.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate894.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate893.algebra.mat x) := by
  rw [firstLink55, secondLink55]
  exact DerivedMapBatches.Batch011.certificate895valid.2 x
theorem firstLink56 : DerivedMapBatches.Batch011.certificate896.algebra.mat = DerivedMapBatches.Batch011.certificate898.a := by decide
theorem secondLink56 : DerivedMapBatches.Batch011.certificate897.algebra.mat = DerivedMapBatches.Batch011.certificate898.b := by decide
theorem firstValid56 : DerivedMapBatches.Batch011.certificate896.Valid := DerivedMapBatches.Batch011.certificate896valid
theorem secondValid56 : DerivedMapBatches.Batch011.certificate897.Valid := DerivedMapBatches.Batch011.certificate897valid
theorem outputValid56 : DerivedMapBatches.Batch011.certificate898.Valid := DerivedMapBatches.Batch011.certificate898valid
theorem linkedComposition56 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate898.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate898.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate897.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate896.algebra.mat x) := by
  rw [firstLink56, secondLink56]
  exact DerivedMapBatches.Batch011.certificate898valid.2 x
theorem firstLink57 : DerivedMapBatches.Batch011.certificate899.algebra.mat = DerivedMapBatches.Batch011.certificate901.a := by decide
theorem secondLink57 : DerivedMapBatches.Batch011.certificate900.algebra.mat = DerivedMapBatches.Batch011.certificate901.b := by decide
theorem firstValid57 : DerivedMapBatches.Batch011.certificate899.Valid := DerivedMapBatches.Batch011.certificate899valid
theorem secondValid57 : DerivedMapBatches.Batch011.certificate900.Valid := DerivedMapBatches.Batch011.certificate900valid
theorem outputValid57 : DerivedMapBatches.Batch011.certificate901.Valid := DerivedMapBatches.Batch011.certificate901valid
theorem linkedComposition57 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate901.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate901.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate900.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate899.algebra.mat x) := by
  rw [firstLink57, secondLink57]
  exact DerivedMapBatches.Batch011.certificate901valid.2 x
theorem firstLink58 : DerivedMapBatches.Batch011.certificate902.algebra.mat = DerivedMapBatches.Batch011.certificate904.a := by decide
theorem secondLink58 : DerivedMapBatches.Batch011.certificate903.algebra.mat = DerivedMapBatches.Batch011.certificate904.b := by decide
theorem firstValid58 : DerivedMapBatches.Batch011.certificate902.Valid := DerivedMapBatches.Batch011.certificate902valid
theorem secondValid58 : DerivedMapBatches.Batch011.certificate903.Valid := DerivedMapBatches.Batch011.certificate903valid
theorem outputValid58 : DerivedMapBatches.Batch011.certificate904.Valid := DerivedMapBatches.Batch011.certificate904valid
theorem linkedComposition58 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate904.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate904.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate903.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate902.algebra.mat x) := by
  rw [firstLink58, secondLink58]
  exact DerivedMapBatches.Batch011.certificate904valid.2 x
theorem firstLink59 : DerivedMapBatches.Batch011.certificate905.algebra.mat = DerivedMapBatches.Batch011.certificate907.a := by decide
theorem secondLink59 : DerivedMapBatches.Batch011.certificate906.algebra.mat = DerivedMapBatches.Batch011.certificate907.b := by decide
theorem firstValid59 : DerivedMapBatches.Batch011.certificate905.Valid := DerivedMapBatches.Batch011.certificate905valid
theorem secondValid59 : DerivedMapBatches.Batch011.certificate906.Valid := DerivedMapBatches.Batch011.certificate906valid
theorem outputValid59 : DerivedMapBatches.Batch011.certificate907.Valid := DerivedMapBatches.Batch011.certificate907valid
theorem linkedComposition59 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate907.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate907.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate905.algebra.mat x) := by
  rw [firstLink59, secondLink59]
  exact DerivedMapBatches.Batch011.certificate907valid.2 x
theorem firstLink60 : DerivedMapBatches.Batch011.certificate908.algebra.mat = DerivedMapBatches.Batch011.certificate910.a := by decide
theorem secondLink60 : DerivedMapBatches.Batch011.certificate909.algebra.mat = DerivedMapBatches.Batch011.certificate910.b := by decide
theorem firstValid60 : DerivedMapBatches.Batch011.certificate908.Valid := DerivedMapBatches.Batch011.certificate908valid
theorem secondValid60 : DerivedMapBatches.Batch011.certificate909.Valid := DerivedMapBatches.Batch011.certificate909valid
theorem outputValid60 : DerivedMapBatches.Batch011.certificate910.Valid := DerivedMapBatches.Batch011.certificate910valid
theorem linkedComposition60 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate910.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate910.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate909.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate908.algebra.mat x) := by
  rw [firstLink60, secondLink60]
  exact DerivedMapBatches.Batch011.certificate910valid.2 x
theorem firstLink61 : DerivedMapBatches.Batch011.certificate911.algebra.mat = DerivedMapBatches.Batch011.certificate913.a := by decide
theorem secondLink61 : DerivedMapBatches.Batch011.certificate912.algebra.mat = DerivedMapBatches.Batch011.certificate913.b := by decide
theorem firstValid61 : DerivedMapBatches.Batch011.certificate911.Valid := DerivedMapBatches.Batch011.certificate911valid
theorem secondValid61 : DerivedMapBatches.Batch011.certificate912.Valid := DerivedMapBatches.Batch011.certificate912valid
theorem outputValid61 : DerivedMapBatches.Batch011.certificate913.Valid := DerivedMapBatches.Batch011.certificate913valid
theorem linkedComposition61 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate913.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate913.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate912.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate911.algebra.mat x) := by
  rw [firstLink61, secondLink61]
  exact DerivedMapBatches.Batch011.certificate913valid.2 x
theorem firstLink62 : DerivedMapBatches.Batch011.certificate914.algebra.mat = DerivedMapBatches.Batch011.certificate916.a := by decide
theorem secondLink62 : DerivedMapBatches.Batch011.certificate915.algebra.mat = DerivedMapBatches.Batch011.certificate916.b := by decide
theorem firstValid62 : DerivedMapBatches.Batch011.certificate914.Valid := DerivedMapBatches.Batch011.certificate914valid
theorem secondValid62 : DerivedMapBatches.Batch011.certificate915.Valid := DerivedMapBatches.Batch011.certificate915valid
theorem outputValid62 : DerivedMapBatches.Batch011.certificate916.Valid := DerivedMapBatches.Batch011.certificate916valid
theorem linkedComposition62 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate916.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate916.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate915.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate914.algebra.mat x) := by
  rw [firstLink62, secondLink62]
  exact DerivedMapBatches.Batch011.certificate916valid.2 x
theorem firstLink63 : DerivedMapBatches.Batch011.certificate917.algebra.mat = DerivedMapBatches.Batch011.certificate919.a := by decide
theorem secondLink63 : DerivedMapBatches.Batch011.certificate918.algebra.mat = DerivedMapBatches.Batch011.certificate919.b := by decide
theorem firstValid63 : DerivedMapBatches.Batch011.certificate917.Valid := DerivedMapBatches.Batch011.certificate917valid
theorem secondValid63 : DerivedMapBatches.Batch011.certificate918.Valid := DerivedMapBatches.Batch011.certificate918valid
theorem outputValid63 : DerivedMapBatches.Batch011.certificate919.Valid := DerivedMapBatches.Batch011.certificate919valid
theorem linkedComposition63 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate919.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate919.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate918.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate917.algebra.mat x) := by
  rw [firstLink63, secondLink63]
  exact DerivedMapBatches.Batch011.certificate919valid.2 x
theorem firstLink64 : DerivedMapBatches.Batch011.certificate920.algebra.mat = DerivedMapBatches.Batch011.certificate922.a := by decide
theorem secondLink64 : DerivedMapBatches.Batch011.certificate921.algebra.mat = DerivedMapBatches.Batch011.certificate922.b := by decide
theorem firstValid64 : DerivedMapBatches.Batch011.certificate920.Valid := DerivedMapBatches.Batch011.certificate920valid
theorem secondValid64 : DerivedMapBatches.Batch011.certificate921.Valid := DerivedMapBatches.Batch011.certificate921valid
theorem outputValid64 : DerivedMapBatches.Batch011.certificate922.Valid := DerivedMapBatches.Batch011.certificate922valid
theorem linkedComposition64 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate922.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate922.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate920.algebra.mat x) := by
  rw [firstLink64, secondLink64]
  exact DerivedMapBatches.Batch011.certificate922valid.2 x
theorem firstLink65 : DerivedMapBatches.Batch011.certificate923.algebra.mat = DerivedMapBatches.Batch011.certificate925.a := by decide
theorem secondLink65 : DerivedMapBatches.Batch011.certificate924.algebra.mat = DerivedMapBatches.Batch011.certificate925.b := by decide
theorem firstValid65 : DerivedMapBatches.Batch011.certificate923.Valid := DerivedMapBatches.Batch011.certificate923valid
theorem secondValid65 : DerivedMapBatches.Batch011.certificate924.Valid := DerivedMapBatches.Batch011.certificate924valid
theorem outputValid65 : DerivedMapBatches.Batch011.certificate925.Valid := DerivedMapBatches.Batch011.certificate925valid
theorem linkedComposition65 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate925.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate925.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate924.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate923.algebra.mat x) := by
  rw [firstLink65, secondLink65]
  exact DerivedMapBatches.Batch011.certificate925valid.2 x
theorem firstLink66 : DerivedMapBatches.Batch011.certificate926.algebra.mat = DerivedMapBatches.Batch011.certificate928.a := by decide
theorem secondLink66 : DerivedMapBatches.Batch011.certificate927.algebra.mat = DerivedMapBatches.Batch011.certificate928.b := by decide
theorem firstValid66 : DerivedMapBatches.Batch011.certificate926.Valid := DerivedMapBatches.Batch011.certificate926valid
theorem secondValid66 : DerivedMapBatches.Batch011.certificate927.Valid := DerivedMapBatches.Batch011.certificate927valid
theorem outputValid66 : DerivedMapBatches.Batch011.certificate928.Valid := DerivedMapBatches.Batch011.certificate928valid
theorem linkedComposition66 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate928.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate928.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate927.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate926.algebra.mat x) := by
  rw [firstLink66, secondLink66]
  exact DerivedMapBatches.Batch011.certificate928valid.2 x
theorem firstLink67 : DerivedMapBatches.Batch011.certificate929.algebra.mat = DerivedMapBatches.Batch011.certificate931.a := by decide
theorem secondLink67 : DerivedMapBatches.Batch011.certificate930.algebra.mat = DerivedMapBatches.Batch011.certificate931.b := by decide
theorem firstValid67 : DerivedMapBatches.Batch011.certificate929.Valid := DerivedMapBatches.Batch011.certificate929valid
theorem secondValid67 : DerivedMapBatches.Batch011.certificate930.Valid := DerivedMapBatches.Batch011.certificate930valid
theorem outputValid67 : DerivedMapBatches.Batch011.certificate931.Valid := DerivedMapBatches.Batch011.certificate931valid
theorem linkedComposition67 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate931.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate931.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate929.algebra.mat x) := by
  rw [firstLink67, secondLink67]
  exact DerivedMapBatches.Batch011.certificate931valid.2 x
theorem firstLink68 : DerivedMapBatches.Batch011.certificate932.algebra.mat = DerivedMapBatches.Batch011.certificate934.a := by decide
theorem secondLink68 : DerivedMapBatches.Batch011.certificate933.algebra.mat = DerivedMapBatches.Batch011.certificate934.b := by decide
theorem firstValid68 : DerivedMapBatches.Batch011.certificate932.Valid := DerivedMapBatches.Batch011.certificate932valid
theorem secondValid68 : DerivedMapBatches.Batch011.certificate933.Valid := DerivedMapBatches.Batch011.certificate933valid
theorem outputValid68 : DerivedMapBatches.Batch011.certificate934.Valid := DerivedMapBatches.Batch011.certificate934valid
theorem linkedComposition68 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate934.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate934.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate932.algebra.mat x) := by
  rw [firstLink68, secondLink68]
  exact DerivedMapBatches.Batch011.certificate934valid.2 x
theorem firstLink69 : DerivedMapBatches.Batch011.certificate935.algebra.mat = DerivedMapBatches.Batch011.certificate937.a := by decide
theorem secondLink69 : DerivedMapBatches.Batch011.certificate936.algebra.mat = DerivedMapBatches.Batch011.certificate937.b := by decide
theorem firstValid69 : DerivedMapBatches.Batch011.certificate935.Valid := DerivedMapBatches.Batch011.certificate935valid
theorem secondValid69 : DerivedMapBatches.Batch011.certificate936.Valid := DerivedMapBatches.Batch011.certificate936valid
theorem outputValid69 : DerivedMapBatches.Batch011.certificate937.Valid := DerivedMapBatches.Batch011.certificate937valid
theorem linkedComposition69 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate937.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate937.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate935.algebra.mat x) := by
  rw [firstLink69, secondLink69]
  exact DerivedMapBatches.Batch011.certificate937valid.2 x
theorem firstLink70 : DerivedMapBatches.Batch011.certificate938.algebra.mat = DerivedMapBatches.Batch011.certificate940.a := by decide
theorem secondLink70 : DerivedMapBatches.Batch011.certificate939.algebra.mat = DerivedMapBatches.Batch011.certificate940.b := by decide
theorem firstValid70 : DerivedMapBatches.Batch011.certificate938.Valid := DerivedMapBatches.Batch011.certificate938valid
theorem secondValid70 : DerivedMapBatches.Batch011.certificate939.Valid := DerivedMapBatches.Batch011.certificate939valid
theorem outputValid70 : DerivedMapBatches.Batch011.certificate940.Valid := DerivedMapBatches.Batch011.certificate940valid
theorem linkedComposition70 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate940.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate940.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate939.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate938.algebra.mat x) := by
  rw [firstLink70, secondLink70]
  exact DerivedMapBatches.Batch011.certificate940valid.2 x
theorem firstLink71 : DerivedMapBatches.Batch011.certificate941.algebra.mat = DerivedMapBatches.Batch011.certificate943.a := by decide
theorem secondLink71 : DerivedMapBatches.Batch011.certificate942.algebra.mat = DerivedMapBatches.Batch011.certificate943.b := by decide
theorem firstValid71 : DerivedMapBatches.Batch011.certificate941.Valid := DerivedMapBatches.Batch011.certificate941valid
theorem secondValid71 : DerivedMapBatches.Batch011.certificate942.Valid := DerivedMapBatches.Batch011.certificate942valid
theorem outputValid71 : DerivedMapBatches.Batch011.certificate943.Valid := DerivedMapBatches.Batch011.certificate943valid
theorem linkedComposition71 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate943.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate943.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate941.algebra.mat x) := by
  rw [firstLink71, secondLink71]
  exact DerivedMapBatches.Batch011.certificate943valid.2 x
theorem firstLink72 : DerivedMapBatches.Batch011.certificate944.algebra.mat = DerivedMapBatches.Batch011.certificate946.a := by decide
theorem secondLink72 : DerivedMapBatches.Batch011.certificate945.algebra.mat = DerivedMapBatches.Batch011.certificate946.b := by decide
theorem firstValid72 : DerivedMapBatches.Batch011.certificate944.Valid := DerivedMapBatches.Batch011.certificate944valid
theorem secondValid72 : DerivedMapBatches.Batch011.certificate945.Valid := DerivedMapBatches.Batch011.certificate945valid
theorem outputValid72 : DerivedMapBatches.Batch011.certificate946.Valid := DerivedMapBatches.Batch011.certificate946valid
theorem linkedComposition72 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate946.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate946.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate944.algebra.mat x) := by
  rw [firstLink72, secondLink72]
  exact DerivedMapBatches.Batch011.certificate946valid.2 x
theorem firstLink73 : DerivedMapBatches.Batch011.certificate947.algebra.mat = DerivedMapBatches.Batch011.certificate949.a := by decide
theorem secondLink73 : DerivedMapBatches.Batch011.certificate948.algebra.mat = DerivedMapBatches.Batch011.certificate949.b := by decide
theorem firstValid73 : DerivedMapBatches.Batch011.certificate947.Valid := DerivedMapBatches.Batch011.certificate947valid
theorem secondValid73 : DerivedMapBatches.Batch011.certificate948.Valid := DerivedMapBatches.Batch011.certificate948valid
theorem outputValid73 : DerivedMapBatches.Batch011.certificate949.Valid := DerivedMapBatches.Batch011.certificate949valid
theorem linkedComposition73 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate949.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate949.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate948.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate947.algebra.mat x) := by
  rw [firstLink73, secondLink73]
  exact DerivedMapBatches.Batch011.certificate949valid.2 x
theorem firstLink74 : DerivedMapBatches.Batch011.certificate950.algebra.mat = DerivedMapBatches.Batch011.certificate952.a := by decide
theorem secondLink74 : DerivedMapBatches.Batch011.certificate951.algebra.mat = DerivedMapBatches.Batch011.certificate952.b := by decide
theorem firstValid74 : DerivedMapBatches.Batch011.certificate950.Valid := DerivedMapBatches.Batch011.certificate950valid
theorem secondValid74 : DerivedMapBatches.Batch011.certificate951.Valid := DerivedMapBatches.Batch011.certificate951valid
theorem outputValid74 : DerivedMapBatches.Batch011.certificate952.Valid := DerivedMapBatches.Batch011.certificate952valid
theorem linkedComposition74 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate952.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate952.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate950.algebra.mat x) := by
  rw [firstLink74, secondLink74]
  exact DerivedMapBatches.Batch011.certificate952valid.2 x
theorem firstLink75 : DerivedMapBatches.Batch011.certificate953.algebra.mat = DerivedMapBatches.Batch011.certificate955.a := by decide
theorem secondLink75 : DerivedMapBatches.Batch011.certificate954.algebra.mat = DerivedMapBatches.Batch011.certificate955.b := by decide
theorem firstValid75 : DerivedMapBatches.Batch011.certificate953.Valid := DerivedMapBatches.Batch011.certificate953valid
theorem secondValid75 : DerivedMapBatches.Batch011.certificate954.Valid := DerivedMapBatches.Batch011.certificate954valid
theorem outputValid75 : DerivedMapBatches.Batch011.certificate955.Valid := DerivedMapBatches.Batch011.certificate955valid
theorem linkedComposition75 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate955.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate955.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate953.algebra.mat x) := by
  rw [firstLink75, secondLink75]
  exact DerivedMapBatches.Batch011.certificate955valid.2 x
theorem firstLink76 : DerivedMapBatches.Batch011.certificate956.algebra.mat = DerivedMapBatches.Batch011.certificate958.a := by decide
theorem secondLink76 : DerivedMapBatches.Batch011.certificate957.algebra.mat = DerivedMapBatches.Batch011.certificate958.b := by decide
theorem firstValid76 : DerivedMapBatches.Batch011.certificate956.Valid := DerivedMapBatches.Batch011.certificate956valid
theorem secondValid76 : DerivedMapBatches.Batch011.certificate957.Valid := DerivedMapBatches.Batch011.certificate957valid
theorem outputValid76 : DerivedMapBatches.Batch011.certificate958.Valid := DerivedMapBatches.Batch011.certificate958valid
theorem linkedComposition76 (x : LinearCertificates.Vec DerivedMapBatches.Batch011.certificate958.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch011.certificate958.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate956.algebra.mat x) := by
  rw [firstLink76, secondLink76]
  exact DerivedMapBatches.Batch011.certificate958valid.2 x
theorem firstLink77 : DerivedMapBatches.Batch011.certificate959.algebra.mat = DerivedMapBatches.Batch012.certificate961.a := by decide
theorem secondLink77 : DerivedMapBatches.Batch012.certificate960.algebra.mat = DerivedMapBatches.Batch012.certificate961.b := by decide
theorem firstValid77 : DerivedMapBatches.Batch011.certificate959.Valid := DerivedMapBatches.Batch011.certificate959valid
theorem secondValid77 : DerivedMapBatches.Batch012.certificate960.Valid := DerivedMapBatches.Batch012.certificate960valid
theorem outputValid77 : DerivedMapBatches.Batch012.certificate961.Valid := DerivedMapBatches.Batch012.certificate961valid
theorem linkedComposition77 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate961.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate961.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch011.certificate959.algebra.mat x) := by
  rw [firstLink77, secondLink77]
  exact DerivedMapBatches.Batch012.certificate961valid.2 x
theorem firstLink78 : DerivedMapBatches.Batch012.certificate962.algebra.mat = DerivedMapBatches.Batch012.certificate964.a := by decide
theorem secondLink78 : DerivedMapBatches.Batch012.certificate963.algebra.mat = DerivedMapBatches.Batch012.certificate964.b := by decide
theorem firstValid78 : DerivedMapBatches.Batch012.certificate962.Valid := DerivedMapBatches.Batch012.certificate962valid
theorem secondValid78 : DerivedMapBatches.Batch012.certificate963.Valid := DerivedMapBatches.Batch012.certificate963valid
theorem outputValid78 : DerivedMapBatches.Batch012.certificate964.Valid := DerivedMapBatches.Batch012.certificate964valid
theorem linkedComposition78 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate964.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate964.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate962.algebra.mat x) := by
  rw [firstLink78, secondLink78]
  exact DerivedMapBatches.Batch012.certificate964valid.2 x
theorem firstLink79 : DerivedMapBatches.Batch012.certificate965.algebra.mat = DerivedMapBatches.Batch012.certificate967.a := by decide
theorem secondLink79 : DerivedMapBatches.Batch012.certificate966.algebra.mat = DerivedMapBatches.Batch012.certificate967.b := by decide
theorem firstValid79 : DerivedMapBatches.Batch012.certificate965.Valid := DerivedMapBatches.Batch012.certificate965valid
theorem secondValid79 : DerivedMapBatches.Batch012.certificate966.Valid := DerivedMapBatches.Batch012.certificate966valid
theorem outputValid79 : DerivedMapBatches.Batch012.certificate967.Valid := DerivedMapBatches.Batch012.certificate967valid
theorem linkedComposition79 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate967.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate967.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate966.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate965.algebra.mat x) := by
  rw [firstLink79, secondLink79]
  exact DerivedMapBatches.Batch012.certificate967valid.2 x
theorem firstLink80 : DerivedMapBatches.Batch012.certificate968.algebra.mat = DerivedMapBatches.Batch012.certificate970.a := by decide
theorem secondLink80 : DerivedMapBatches.Batch012.certificate969.algebra.mat = DerivedMapBatches.Batch012.certificate970.b := by decide
theorem firstValid80 : DerivedMapBatches.Batch012.certificate968.Valid := DerivedMapBatches.Batch012.certificate968valid
theorem secondValid80 : DerivedMapBatches.Batch012.certificate969.Valid := DerivedMapBatches.Batch012.certificate969valid
theorem outputValid80 : DerivedMapBatches.Batch012.certificate970.Valid := DerivedMapBatches.Batch012.certificate970valid
theorem linkedComposition80 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate970.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate970.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate968.algebra.mat x) := by
  rw [firstLink80, secondLink80]
  exact DerivedMapBatches.Batch012.certificate970valid.2 x
theorem firstLink81 : DerivedMapBatches.Batch012.certificate971.algebra.mat = DerivedMapBatches.Batch012.certificate973.a := by decide
theorem secondLink81 : DerivedMapBatches.Batch012.certificate972.algebra.mat = DerivedMapBatches.Batch012.certificate973.b := by decide
theorem firstValid81 : DerivedMapBatches.Batch012.certificate971.Valid := DerivedMapBatches.Batch012.certificate971valid
theorem secondValid81 : DerivedMapBatches.Batch012.certificate972.Valid := DerivedMapBatches.Batch012.certificate972valid
theorem outputValid81 : DerivedMapBatches.Batch012.certificate973.Valid := DerivedMapBatches.Batch012.certificate973valid
theorem linkedComposition81 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate973.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate973.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate972.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate971.algebra.mat x) := by
  rw [firstLink81, secondLink81]
  exact DerivedMapBatches.Batch012.certificate973valid.2 x
theorem firstLink82 : DerivedMapBatches.Batch012.certificate974.algebra.mat = DerivedMapBatches.Batch012.certificate976.a := by decide
theorem secondLink82 : DerivedMapBatches.Batch012.certificate975.algebra.mat = DerivedMapBatches.Batch012.certificate976.b := by decide
theorem firstValid82 : DerivedMapBatches.Batch012.certificate974.Valid := DerivedMapBatches.Batch012.certificate974valid
theorem secondValid82 : DerivedMapBatches.Batch012.certificate975.Valid := DerivedMapBatches.Batch012.certificate975valid
theorem outputValid82 : DerivedMapBatches.Batch012.certificate976.Valid := DerivedMapBatches.Batch012.certificate976valid
theorem linkedComposition82 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate976.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate976.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate974.algebra.mat x) := by
  rw [firstLink82, secondLink82]
  exact DerivedMapBatches.Batch012.certificate976valid.2 x
theorem firstLink83 : DerivedMapBatches.Batch012.certificate977.algebra.mat = DerivedMapBatches.Batch012.certificate979.a := by decide
theorem secondLink83 : DerivedMapBatches.Batch012.certificate978.algebra.mat = DerivedMapBatches.Batch012.certificate979.b := by decide
theorem firstValid83 : DerivedMapBatches.Batch012.certificate977.Valid := DerivedMapBatches.Batch012.certificate977valid
theorem secondValid83 : DerivedMapBatches.Batch012.certificate978.Valid := DerivedMapBatches.Batch012.certificate978valid
theorem outputValid83 : DerivedMapBatches.Batch012.certificate979.Valid := DerivedMapBatches.Batch012.certificate979valid
theorem linkedComposition83 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate979.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate979.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate977.algebra.mat x) := by
  rw [firstLink83, secondLink83]
  exact DerivedMapBatches.Batch012.certificate979valid.2 x
theorem firstLink84 : DerivedMapBatches.Batch012.certificate980.algebra.mat = DerivedMapBatches.Batch012.certificate982.a := by decide
theorem secondLink84 : DerivedMapBatches.Batch012.certificate981.algebra.mat = DerivedMapBatches.Batch012.certificate982.b := by decide
theorem firstValid84 : DerivedMapBatches.Batch012.certificate980.Valid := DerivedMapBatches.Batch012.certificate980valid
theorem secondValid84 : DerivedMapBatches.Batch012.certificate981.Valid := DerivedMapBatches.Batch012.certificate981valid
theorem outputValid84 : DerivedMapBatches.Batch012.certificate982.Valid := DerivedMapBatches.Batch012.certificate982valid
theorem linkedComposition84 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate982.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate982.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate980.algebra.mat x) := by
  rw [firstLink84, secondLink84]
  exact DerivedMapBatches.Batch012.certificate982valid.2 x
theorem firstLink85 : DerivedMapBatches.Batch012.certificate983.algebra.mat = DerivedMapBatches.Batch012.certificate985.a := by decide
theorem secondLink85 : DerivedMapBatches.Batch012.certificate984.algebra.mat = DerivedMapBatches.Batch012.certificate985.b := by decide
theorem firstValid85 : DerivedMapBatches.Batch012.certificate983.Valid := DerivedMapBatches.Batch012.certificate983valid
theorem secondValid85 : DerivedMapBatches.Batch012.certificate984.Valid := DerivedMapBatches.Batch012.certificate984valid
theorem outputValid85 : DerivedMapBatches.Batch012.certificate985.Valid := DerivedMapBatches.Batch012.certificate985valid
theorem linkedComposition85 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate985.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate985.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate984.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate983.algebra.mat x) := by
  rw [firstLink85, secondLink85]
  exact DerivedMapBatches.Batch012.certificate985valid.2 x
theorem firstLink86 : DerivedMapBatches.Batch012.certificate986.algebra.mat = DerivedMapBatches.Batch012.certificate988.a := by decide
theorem secondLink86 : DerivedMapBatches.Batch012.certificate987.algebra.mat = DerivedMapBatches.Batch012.certificate988.b := by decide
theorem firstValid86 : DerivedMapBatches.Batch012.certificate986.Valid := DerivedMapBatches.Batch012.certificate986valid
theorem secondValid86 : DerivedMapBatches.Batch012.certificate987.Valid := DerivedMapBatches.Batch012.certificate987valid
theorem outputValid86 : DerivedMapBatches.Batch012.certificate988.Valid := DerivedMapBatches.Batch012.certificate988valid
theorem linkedComposition86 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate988.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate988.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate987.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate986.algebra.mat x) := by
  rw [firstLink86, secondLink86]
  exact DerivedMapBatches.Batch012.certificate988valid.2 x
theorem firstLink87 : DerivedMapBatches.Batch012.certificate989.algebra.mat = DerivedMapBatches.Batch012.certificate990.a := by decide
theorem secondLink87 : DerivedMapBatches.Batch009.certificate794.algebra.mat = DerivedMapBatches.Batch012.certificate990.b := by decide
theorem firstValid87 : DerivedMapBatches.Batch012.certificate989.Valid := DerivedMapBatches.Batch012.certificate989valid
theorem secondValid87 : DerivedMapBatches.Batch009.certificate794.Valid := DerivedMapBatches.Batch009.certificate794valid
theorem outputValid87 : DerivedMapBatches.Batch012.certificate990.Valid := DerivedMapBatches.Batch012.certificate990valid
theorem linkedComposition87 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate990.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate990.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate989.algebra.mat x) := by
  rw [firstLink87, secondLink87]
  exact DerivedMapBatches.Batch012.certificate990valid.2 x
theorem firstLink88 : DerivedMapBatches.Batch012.certificate991.algebra.mat = DerivedMapBatches.Batch012.certificate992.a := by decide
theorem secondLink88 : DerivedMapBatches.Batch009.certificate797.algebra.mat = DerivedMapBatches.Batch012.certificate992.b := by decide
theorem firstValid88 : DerivedMapBatches.Batch012.certificate991.Valid := DerivedMapBatches.Batch012.certificate991valid
theorem secondValid88 : DerivedMapBatches.Batch009.certificate797.Valid := DerivedMapBatches.Batch009.certificate797valid
theorem outputValid88 : DerivedMapBatches.Batch012.certificate992.Valid := DerivedMapBatches.Batch012.certificate992valid
theorem linkedComposition88 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate992.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate992.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate991.algebra.mat x) := by
  rw [firstLink88, secondLink88]
  exact DerivedMapBatches.Batch012.certificate992valid.2 x
theorem firstLink89 : DerivedMapBatches.Batch012.certificate993.algebra.mat = DerivedMapBatches.Batch012.certificate995.a := by decide
theorem secondLink89 : DerivedMapBatches.Batch012.certificate994.algebra.mat = DerivedMapBatches.Batch012.certificate995.b := by decide
theorem firstValid89 : DerivedMapBatches.Batch012.certificate993.Valid := DerivedMapBatches.Batch012.certificate993valid
theorem secondValid89 : DerivedMapBatches.Batch012.certificate994.Valid := DerivedMapBatches.Batch012.certificate994valid
theorem outputValid89 : DerivedMapBatches.Batch012.certificate995.Valid := DerivedMapBatches.Batch012.certificate995valid
theorem linkedComposition89 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate995.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate995.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate994.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate993.algebra.mat x) := by
  rw [firstLink89, secondLink89]
  exact DerivedMapBatches.Batch012.certificate995valid.2 x
theorem firstLink90 : DerivedMapBatches.Batch012.certificate996.algebra.mat = DerivedMapBatches.Batch012.certificate997.a := by decide
theorem secondLink90 : DerivedMapBatches.Batch010.certificate809.algebra.mat = DerivedMapBatches.Batch012.certificate997.b := by decide
theorem firstValid90 : DerivedMapBatches.Batch012.certificate996.Valid := DerivedMapBatches.Batch012.certificate996valid
theorem secondValid90 : DerivedMapBatches.Batch010.certificate809.Valid := DerivedMapBatches.Batch010.certificate809valid
theorem outputValid90 : DerivedMapBatches.Batch012.certificate997.Valid := DerivedMapBatches.Batch012.certificate997valid
theorem linkedComposition90 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate997.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate997.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate996.algebra.mat x) := by
  rw [firstLink90, secondLink90]
  exact DerivedMapBatches.Batch012.certificate997valid.2 x
theorem firstLink91 : DerivedMapBatches.Batch012.certificate998.algebra.mat = DerivedMapBatches.Batch012.certificate1000.a := by decide
theorem secondLink91 : DerivedMapBatches.Batch012.certificate999.algebra.mat = DerivedMapBatches.Batch012.certificate1000.b := by decide
theorem firstValid91 : DerivedMapBatches.Batch012.certificate998.Valid := DerivedMapBatches.Batch012.certificate998valid
theorem secondValid91 : DerivedMapBatches.Batch012.certificate999.Valid := DerivedMapBatches.Batch012.certificate999valid
theorem outputValid91 : DerivedMapBatches.Batch012.certificate1000.Valid := DerivedMapBatches.Batch012.certificate1000valid
theorem linkedComposition91 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1000.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1000.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate999.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate998.algebra.mat x) := by
  rw [firstLink91, secondLink91]
  exact DerivedMapBatches.Batch012.certificate1000valid.2 x
theorem firstLink92 : DerivedMapBatches.Batch012.certificate1001.algebra.mat = DerivedMapBatches.Batch012.certificate1002.a := by decide
theorem secondLink92 : DerivedMapBatches.Batch010.certificate815.algebra.mat = DerivedMapBatches.Batch012.certificate1002.b := by decide
theorem firstValid92 : DerivedMapBatches.Batch012.certificate1001.Valid := DerivedMapBatches.Batch012.certificate1001valid
theorem secondValid92 : DerivedMapBatches.Batch010.certificate815.Valid := DerivedMapBatches.Batch010.certificate815valid
theorem outputValid92 : DerivedMapBatches.Batch012.certificate1002.Valid := DerivedMapBatches.Batch012.certificate1002valid
theorem linkedComposition92 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1002.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1002.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1001.algebra.mat x) := by
  rw [firstLink92, secondLink92]
  exact DerivedMapBatches.Batch012.certificate1002valid.2 x
theorem firstLink93 : DerivedMapBatches.Batch012.certificate1003.algebra.mat = DerivedMapBatches.Batch012.certificate1004.a := by decide
theorem secondLink93 : DerivedMapBatches.Batch010.certificate827.algebra.mat = DerivedMapBatches.Batch012.certificate1004.b := by decide
theorem firstValid93 : DerivedMapBatches.Batch012.certificate1003.Valid := DerivedMapBatches.Batch012.certificate1003valid
theorem secondValid93 : DerivedMapBatches.Batch010.certificate827.Valid := DerivedMapBatches.Batch010.certificate827valid
theorem outputValid93 : DerivedMapBatches.Batch012.certificate1004.Valid := DerivedMapBatches.Batch012.certificate1004valid
theorem linkedComposition93 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1004.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1004.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1003.algebra.mat x) := by
  rw [firstLink93, secondLink93]
  exact DerivedMapBatches.Batch012.certificate1004valid.2 x
theorem firstLink94 : DerivedMapBatches.Batch012.certificate1005.algebra.mat = DerivedMapBatches.Batch012.certificate1006.a := by decide
theorem secondLink94 : DerivedMapBatches.Batch010.certificate830.algebra.mat = DerivedMapBatches.Batch012.certificate1006.b := by decide
theorem firstValid94 : DerivedMapBatches.Batch012.certificate1005.Valid := DerivedMapBatches.Batch012.certificate1005valid
theorem secondValid94 : DerivedMapBatches.Batch010.certificate830.Valid := DerivedMapBatches.Batch010.certificate830valid
theorem outputValid94 : DerivedMapBatches.Batch012.certificate1006.Valid := DerivedMapBatches.Batch012.certificate1006valid
theorem linkedComposition94 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1006.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1006.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1005.algebra.mat x) := by
  rw [firstLink94, secondLink94]
  exact DerivedMapBatches.Batch012.certificate1006valid.2 x
theorem firstLink95 : DerivedMapBatches.Batch012.certificate1007.algebra.mat = DerivedMapBatches.Batch012.certificate1008.a := by decide
theorem secondLink95 : DerivedMapBatches.Batch010.certificate842.algebra.mat = DerivedMapBatches.Batch012.certificate1008.b := by decide
theorem firstValid95 : DerivedMapBatches.Batch012.certificate1007.Valid := DerivedMapBatches.Batch012.certificate1007valid
theorem secondValid95 : DerivedMapBatches.Batch010.certificate842.Valid := DerivedMapBatches.Batch010.certificate842valid
theorem outputValid95 : DerivedMapBatches.Batch012.certificate1008.Valid := DerivedMapBatches.Batch012.certificate1008valid
theorem linkedComposition95 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1008.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1008.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1007.algebra.mat x) := by
  rw [firstLink95, secondLink95]
  exact DerivedMapBatches.Batch012.certificate1008valid.2 x
theorem firstLink96 : DerivedMapBatches.Batch012.certificate1009.algebra.mat = DerivedMapBatches.Batch012.certificate1010.a := by decide
theorem secondLink96 : DerivedMapBatches.Batch010.certificate845.algebra.mat = DerivedMapBatches.Batch012.certificate1010.b := by decide
theorem firstValid96 : DerivedMapBatches.Batch012.certificate1009.Valid := DerivedMapBatches.Batch012.certificate1009valid
theorem secondValid96 : DerivedMapBatches.Batch010.certificate845.Valid := DerivedMapBatches.Batch010.certificate845valid
theorem outputValid96 : DerivedMapBatches.Batch012.certificate1010.Valid := DerivedMapBatches.Batch012.certificate1010valid
theorem linkedComposition96 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1010.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1010.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1009.algebra.mat x) := by
  rw [firstLink96, secondLink96]
  exact DerivedMapBatches.Batch012.certificate1010valid.2 x
theorem firstLink97 : DerivedMapBatches.Batch012.certificate1011.algebra.mat = DerivedMapBatches.Batch012.certificate1012.a := by decide
theorem secondLink97 : DerivedMapBatches.Batch010.certificate848.algebra.mat = DerivedMapBatches.Batch012.certificate1012.b := by decide
theorem firstValid97 : DerivedMapBatches.Batch012.certificate1011.Valid := DerivedMapBatches.Batch012.certificate1011valid
theorem secondValid97 : DerivedMapBatches.Batch010.certificate848.Valid := DerivedMapBatches.Batch010.certificate848valid
theorem outputValid97 : DerivedMapBatches.Batch012.certificate1012.Valid := DerivedMapBatches.Batch012.certificate1012valid
theorem linkedComposition97 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1012.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1012.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1011.algebra.mat x) := by
  rw [firstLink97, secondLink97]
  exact DerivedMapBatches.Batch012.certificate1012valid.2 x
theorem firstLink98 : DerivedMapBatches.Batch012.certificate1013.algebra.mat = DerivedMapBatches.Batch012.certificate1014.a := by decide
theorem secondLink98 : DerivedMapBatches.Batch010.certificate854.algebra.mat = DerivedMapBatches.Batch012.certificate1014.b := by decide
theorem firstValid98 : DerivedMapBatches.Batch012.certificate1013.Valid := DerivedMapBatches.Batch012.certificate1013valid
theorem secondValid98 : DerivedMapBatches.Batch010.certificate854.Valid := DerivedMapBatches.Batch010.certificate854valid
theorem outputValid98 : DerivedMapBatches.Batch012.certificate1014.Valid := DerivedMapBatches.Batch012.certificate1014valid
theorem linkedComposition98 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1014.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1014.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1013.algebra.mat x) := by
  rw [firstLink98, secondLink98]
  exact DerivedMapBatches.Batch012.certificate1014valid.2 x
theorem firstLink99 : DerivedMapBatches.Batch012.certificate1015.algebra.mat = DerivedMapBatches.Batch012.certificate1016.a := by decide
theorem secondLink99 : DerivedMapBatches.Batch010.certificate857.algebra.mat = DerivedMapBatches.Batch012.certificate1016.b := by decide
theorem firstValid99 : DerivedMapBatches.Batch012.certificate1015.Valid := DerivedMapBatches.Batch012.certificate1015valid
theorem secondValid99 : DerivedMapBatches.Batch010.certificate857.Valid := DerivedMapBatches.Batch010.certificate857valid
theorem outputValid99 : DerivedMapBatches.Batch012.certificate1016.Valid := DerivedMapBatches.Batch012.certificate1016valid
theorem linkedComposition99 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1016.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1016.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1015.algebra.mat x) := by
  rw [firstLink99, secondLink99]
  exact DerivedMapBatches.Batch012.certificate1016valid.2 x
end DerivedLinkageBatches.Batch001
