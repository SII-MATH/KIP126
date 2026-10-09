import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch011
import DerivedMapBatches.Batch012
import DerivedMapBatches.Batch013
import DerivedMapBatches.Batch014
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch002
theorem firstLink100 : DerivedMapBatches.Batch012.certificate1017.algebra.mat = DerivedMapBatches.Batch012.certificate1018.a := by decide
theorem secondLink100 : DerivedMapBatches.Batch010.certificate863.algebra.mat = DerivedMapBatches.Batch012.certificate1018.b := by decide
theorem firstValid100 : DerivedMapBatches.Batch012.certificate1017.Valid := DerivedMapBatches.Batch012.certificate1017valid
theorem secondValid100 : DerivedMapBatches.Batch010.certificate863.Valid := DerivedMapBatches.Batch010.certificate863valid
theorem outputValid100 : DerivedMapBatches.Batch012.certificate1018.Valid := DerivedMapBatches.Batch012.certificate1018valid
theorem linkedComposition100 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1018.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1018.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1017.algebra.mat x) := by
  rw [firstLink100, secondLink100]
  exact DerivedMapBatches.Batch012.certificate1018valid.2 x
theorem firstLink101 : DerivedMapBatches.Batch012.certificate1019.algebra.mat = DerivedMapBatches.Batch012.certificate1020.a := by decide
theorem secondLink101 : DerivedMapBatches.Batch010.certificate872.algebra.mat = DerivedMapBatches.Batch012.certificate1020.b := by decide
theorem firstValid101 : DerivedMapBatches.Batch012.certificate1019.Valid := DerivedMapBatches.Batch012.certificate1019valid
theorem secondValid101 : DerivedMapBatches.Batch010.certificate872.Valid := DerivedMapBatches.Batch010.certificate872valid
theorem outputValid101 : DerivedMapBatches.Batch012.certificate1020.Valid := DerivedMapBatches.Batch012.certificate1020valid
theorem linkedComposition101 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1020.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1020.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1019.algebra.mat x) := by
  rw [firstLink101, secondLink101]
  exact DerivedMapBatches.Batch012.certificate1020valid.2 x
theorem firstLink102 : DerivedMapBatches.Batch012.certificate1021.algebra.mat = DerivedMapBatches.Batch012.certificate1022.a := by decide
theorem secondLink102 : DerivedMapBatches.Batch010.certificate878.algebra.mat = DerivedMapBatches.Batch012.certificate1022.b := by decide
theorem firstValid102 : DerivedMapBatches.Batch012.certificate1021.Valid := DerivedMapBatches.Batch012.certificate1021valid
theorem secondValid102 : DerivedMapBatches.Batch010.certificate878.Valid := DerivedMapBatches.Batch010.certificate878valid
theorem outputValid102 : DerivedMapBatches.Batch012.certificate1022.Valid := DerivedMapBatches.Batch012.certificate1022valid
theorem linkedComposition102 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1022.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1022.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate878.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1021.algebra.mat x) := by
  rw [firstLink102, secondLink102]
  exact DerivedMapBatches.Batch012.certificate1022valid.2 x
theorem firstLink103 : DerivedMapBatches.Batch012.certificate1023.algebra.mat = DerivedMapBatches.Batch012.certificate1024.a := by decide
theorem secondLink103 : DerivedMapBatches.Batch011.certificate884.algebra.mat = DerivedMapBatches.Batch012.certificate1024.b := by decide
theorem firstValid103 : DerivedMapBatches.Batch012.certificate1023.Valid := DerivedMapBatches.Batch012.certificate1023valid
theorem secondValid103 : DerivedMapBatches.Batch011.certificate884.Valid := DerivedMapBatches.Batch011.certificate884valid
theorem outputValid103 : DerivedMapBatches.Batch012.certificate1024.Valid := DerivedMapBatches.Batch012.certificate1024valid
theorem linkedComposition103 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1024.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1024.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate884.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1023.algebra.mat x) := by
  rw [firstLink103, secondLink103]
  exact DerivedMapBatches.Batch012.certificate1024valid.2 x
theorem firstLink104 : DerivedMapBatches.Batch012.certificate988.c = DerivedMapBatches.Batch012.certificate1026.a := by decide
theorem secondLink104 : DerivedMapBatches.Batch012.certificate1025.algebra.mat = DerivedMapBatches.Batch012.certificate1026.b := by decide
theorem firstValid104 : DerivedMapBatches.Batch012.certificate988.Valid := DerivedMapBatches.Batch012.certificate988valid
theorem secondValid104 : DerivedMapBatches.Batch012.certificate1025.Valid := DerivedMapBatches.Batch012.certificate1025valid
theorem outputValid104 : DerivedMapBatches.Batch012.certificate1026.Valid := DerivedMapBatches.Batch012.certificate1026valid
theorem linkedComposition104 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1026.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1026.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1025.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate988.c x) := by
  rw [firstLink104, secondLink104]
  exact DerivedMapBatches.Batch012.certificate1026valid.2 x
theorem firstLink105 : DerivedMapBatches.Batch012.certificate990.c = DerivedMapBatches.Batch012.certificate1027.a := by decide
theorem secondLink105 : DerivedMapBatches.Batch009.certificate795.algebra.mat = DerivedMapBatches.Batch012.certificate1027.b := by decide
theorem firstValid105 : DerivedMapBatches.Batch012.certificate990.Valid := DerivedMapBatches.Batch012.certificate990valid
theorem secondValid105 : DerivedMapBatches.Batch009.certificate795.Valid := DerivedMapBatches.Batch009.certificate795valid
theorem outputValid105 : DerivedMapBatches.Batch012.certificate1027.Valid := DerivedMapBatches.Batch012.certificate1027valid
theorem linkedComposition105 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1027.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1027.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate990.c x) := by
  rw [firstLink105, secondLink105]
  exact DerivedMapBatches.Batch012.certificate1027valid.2 x
theorem firstLink106 : DerivedMapBatches.Batch012.certificate992.c = DerivedMapBatches.Batch012.certificate1028.a := by decide
theorem secondLink106 : DerivedMapBatches.Batch009.certificate798.algebra.mat = DerivedMapBatches.Batch012.certificate1028.b := by decide
theorem firstValid106 : DerivedMapBatches.Batch012.certificate992.Valid := DerivedMapBatches.Batch012.certificate992valid
theorem secondValid106 : DerivedMapBatches.Batch009.certificate798.Valid := DerivedMapBatches.Batch009.certificate798valid
theorem outputValid106 : DerivedMapBatches.Batch012.certificate1028.Valid := DerivedMapBatches.Batch012.certificate1028valid
theorem linkedComposition106 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1028.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1028.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate992.c x) := by
  rw [firstLink106, secondLink106]
  exact DerivedMapBatches.Batch012.certificate1028valid.2 x
theorem firstLink107 : DerivedMapBatches.Batch012.certificate995.c = DerivedMapBatches.Batch012.certificate1030.a := by decide
theorem secondLink107 : DerivedMapBatches.Batch012.certificate1029.algebra.mat = DerivedMapBatches.Batch012.certificate1030.b := by decide
theorem firstValid107 : DerivedMapBatches.Batch012.certificate995.Valid := DerivedMapBatches.Batch012.certificate995valid
theorem secondValid107 : DerivedMapBatches.Batch012.certificate1029.Valid := DerivedMapBatches.Batch012.certificate1029valid
theorem outputValid107 : DerivedMapBatches.Batch012.certificate1030.Valid := DerivedMapBatches.Batch012.certificate1030valid
theorem linkedComposition107 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1030.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1030.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1029.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate995.c x) := by
  rw [firstLink107, secondLink107]
  exact DerivedMapBatches.Batch012.certificate1030valid.2 x
theorem firstLink108 : DerivedMapBatches.Batch012.certificate997.c = DerivedMapBatches.Batch012.certificate1031.a := by decide
theorem secondLink108 : DerivedMapBatches.Batch010.certificate810.algebra.mat = DerivedMapBatches.Batch012.certificate1031.b := by decide
theorem firstValid108 : DerivedMapBatches.Batch012.certificate997.Valid := DerivedMapBatches.Batch012.certificate997valid
theorem secondValid108 : DerivedMapBatches.Batch010.certificate810.Valid := DerivedMapBatches.Batch010.certificate810valid
theorem outputValid108 : DerivedMapBatches.Batch012.certificate1031.Valid := DerivedMapBatches.Batch012.certificate1031valid
theorem linkedComposition108 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1031.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1031.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate997.c x) := by
  rw [firstLink108, secondLink108]
  exact DerivedMapBatches.Batch012.certificate1031valid.2 x
theorem firstLink109 : DerivedMapBatches.Batch012.certificate1000.c = DerivedMapBatches.Batch012.certificate1033.a := by decide
theorem secondLink109 : DerivedMapBatches.Batch012.certificate1032.algebra.mat = DerivedMapBatches.Batch012.certificate1033.b := by decide
theorem firstValid109 : DerivedMapBatches.Batch012.certificate1000.Valid := DerivedMapBatches.Batch012.certificate1000valid
theorem secondValid109 : DerivedMapBatches.Batch012.certificate1032.Valid := DerivedMapBatches.Batch012.certificate1032valid
theorem outputValid109 : DerivedMapBatches.Batch012.certificate1033.Valid := DerivedMapBatches.Batch012.certificate1033valid
theorem linkedComposition109 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1033.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1033.c x = LinearCertificates.eval DerivedMapBatches.Batch012.certificate1032.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1000.c x) := by
  rw [firstLink109, secondLink109]
  exact DerivedMapBatches.Batch012.certificate1033valid.2 x
theorem firstLink110 : DerivedMapBatches.Batch012.certificate1002.c = DerivedMapBatches.Batch012.certificate1034.a := by decide
theorem secondLink110 : DerivedMapBatches.Batch010.certificate816.algebra.mat = DerivedMapBatches.Batch012.certificate1034.b := by decide
theorem firstValid110 : DerivedMapBatches.Batch012.certificate1002.Valid := DerivedMapBatches.Batch012.certificate1002valid
theorem secondValid110 : DerivedMapBatches.Batch010.certificate816.Valid := DerivedMapBatches.Batch010.certificate816valid
theorem outputValid110 : DerivedMapBatches.Batch012.certificate1034.Valid := DerivedMapBatches.Batch012.certificate1034valid
theorem linkedComposition110 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1034.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1034.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1002.c x) := by
  rw [firstLink110, secondLink110]
  exact DerivedMapBatches.Batch012.certificate1034valid.2 x
theorem firstLink111 : DerivedMapBatches.Batch012.certificate1004.c = DerivedMapBatches.Batch012.certificate1035.a := by decide
theorem secondLink111 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch012.certificate1035.b := by decide
theorem firstValid111 : DerivedMapBatches.Batch012.certificate1004.Valid := DerivedMapBatches.Batch012.certificate1004valid
theorem secondValid111 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid111 : DerivedMapBatches.Batch012.certificate1035.Valid := DerivedMapBatches.Batch012.certificate1035valid
theorem linkedComposition111 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1035.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1035.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1004.c x) := by
  rw [firstLink111, secondLink111]
  exact DerivedMapBatches.Batch012.certificate1035valid.2 x
theorem firstLink112 : DerivedMapBatches.Batch012.certificate1006.c = DerivedMapBatches.Batch012.certificate1036.a := by decide
theorem secondLink112 : DerivedMapBatches.Batch010.certificate831.algebra.mat = DerivedMapBatches.Batch012.certificate1036.b := by decide
theorem firstValid112 : DerivedMapBatches.Batch012.certificate1006.Valid := DerivedMapBatches.Batch012.certificate1006valid
theorem secondValid112 : DerivedMapBatches.Batch010.certificate831.Valid := DerivedMapBatches.Batch010.certificate831valid
theorem outputValid112 : DerivedMapBatches.Batch012.certificate1036.Valid := DerivedMapBatches.Batch012.certificate1036valid
theorem linkedComposition112 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1036.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1036.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1006.c x) := by
  rw [firstLink112, secondLink112]
  exact DerivedMapBatches.Batch012.certificate1036valid.2 x
theorem firstLink113 : DerivedMapBatches.Batch012.certificate1008.c = DerivedMapBatches.Batch012.certificate1037.a := by decide
theorem secondLink113 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch012.certificate1037.b := by decide
theorem firstValid113 : DerivedMapBatches.Batch012.certificate1008.Valid := DerivedMapBatches.Batch012.certificate1008valid
theorem secondValid113 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid113 : DerivedMapBatches.Batch012.certificate1037.Valid := DerivedMapBatches.Batch012.certificate1037valid
theorem linkedComposition113 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1037.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1037.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1008.c x) := by
  rw [firstLink113, secondLink113]
  exact DerivedMapBatches.Batch012.certificate1037valid.2 x
theorem firstLink114 : DerivedMapBatches.Batch012.certificate1010.c = DerivedMapBatches.Batch012.certificate1038.a := by decide
theorem secondLink114 : DerivedMapBatches.Batch010.certificate846.algebra.mat = DerivedMapBatches.Batch012.certificate1038.b := by decide
theorem firstValid114 : DerivedMapBatches.Batch012.certificate1010.Valid := DerivedMapBatches.Batch012.certificate1010valid
theorem secondValid114 : DerivedMapBatches.Batch010.certificate846.Valid := DerivedMapBatches.Batch010.certificate846valid
theorem outputValid114 : DerivedMapBatches.Batch012.certificate1038.Valid := DerivedMapBatches.Batch012.certificate1038valid
theorem linkedComposition114 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1038.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1038.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1010.c x) := by
  rw [firstLink114, secondLink114]
  exact DerivedMapBatches.Batch012.certificate1038valid.2 x
theorem firstLink115 : DerivedMapBatches.Batch012.certificate1012.c = DerivedMapBatches.Batch012.certificate1039.a := by decide
theorem secondLink115 : DerivedMapBatches.Batch010.certificate849.algebra.mat = DerivedMapBatches.Batch012.certificate1039.b := by decide
theorem firstValid115 : DerivedMapBatches.Batch012.certificate1012.Valid := DerivedMapBatches.Batch012.certificate1012valid
theorem secondValid115 : DerivedMapBatches.Batch010.certificate849.Valid := DerivedMapBatches.Batch010.certificate849valid
theorem outputValid115 : DerivedMapBatches.Batch012.certificate1039.Valid := DerivedMapBatches.Batch012.certificate1039valid
theorem linkedComposition115 (x : LinearCertificates.Vec DerivedMapBatches.Batch012.certificate1039.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch012.certificate1039.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1012.c x) := by
  rw [firstLink115, secondLink115]
  exact DerivedMapBatches.Batch012.certificate1039valid.2 x
theorem firstLink116 : DerivedMapBatches.Batch012.certificate1014.c = DerivedMapBatches.Batch013.certificate1040.a := by decide
theorem secondLink116 : DerivedMapBatches.Batch010.certificate855.algebra.mat = DerivedMapBatches.Batch013.certificate1040.b := by decide
theorem firstValid116 : DerivedMapBatches.Batch012.certificate1014.Valid := DerivedMapBatches.Batch012.certificate1014valid
theorem secondValid116 : DerivedMapBatches.Batch010.certificate855.Valid := DerivedMapBatches.Batch010.certificate855valid
theorem outputValid116 : DerivedMapBatches.Batch013.certificate1040.Valid := DerivedMapBatches.Batch013.certificate1040valid
theorem linkedComposition116 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1040.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1040.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1014.c x) := by
  rw [firstLink116, secondLink116]
  exact DerivedMapBatches.Batch013.certificate1040valid.2 x
theorem firstLink117 : DerivedMapBatches.Batch012.certificate1016.c = DerivedMapBatches.Batch013.certificate1041.a := by decide
theorem secondLink117 : DerivedMapBatches.Batch010.certificate858.algebra.mat = DerivedMapBatches.Batch013.certificate1041.b := by decide
theorem firstValid117 : DerivedMapBatches.Batch012.certificate1016.Valid := DerivedMapBatches.Batch012.certificate1016valid
theorem secondValid117 : DerivedMapBatches.Batch010.certificate858.Valid := DerivedMapBatches.Batch010.certificate858valid
theorem outputValid117 : DerivedMapBatches.Batch013.certificate1041.Valid := DerivedMapBatches.Batch013.certificate1041valid
theorem linkedComposition117 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1041.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1041.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1016.c x) := by
  rw [firstLink117, secondLink117]
  exact DerivedMapBatches.Batch013.certificate1041valid.2 x
theorem firstLink118 : DerivedMapBatches.Batch012.certificate1018.c = DerivedMapBatches.Batch013.certificate1042.a := by decide
theorem secondLink118 : DerivedMapBatches.Batch010.certificate864.algebra.mat = DerivedMapBatches.Batch013.certificate1042.b := by decide
theorem firstValid118 : DerivedMapBatches.Batch012.certificate1018.Valid := DerivedMapBatches.Batch012.certificate1018valid
theorem secondValid118 : DerivedMapBatches.Batch010.certificate864.Valid := DerivedMapBatches.Batch010.certificate864valid
theorem outputValid118 : DerivedMapBatches.Batch013.certificate1042.Valid := DerivedMapBatches.Batch013.certificate1042valid
theorem linkedComposition118 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1042.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1042.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1018.c x) := by
  rw [firstLink118, secondLink118]
  exact DerivedMapBatches.Batch013.certificate1042valid.2 x
theorem firstLink119 : DerivedMapBatches.Batch012.certificate1020.c = DerivedMapBatches.Batch013.certificate1043.a := by decide
theorem secondLink119 : DerivedMapBatches.Batch010.certificate873.algebra.mat = DerivedMapBatches.Batch013.certificate1043.b := by decide
theorem firstValid119 : DerivedMapBatches.Batch012.certificate1020.Valid := DerivedMapBatches.Batch012.certificate1020valid
theorem secondValid119 : DerivedMapBatches.Batch010.certificate873.Valid := DerivedMapBatches.Batch010.certificate873valid
theorem outputValid119 : DerivedMapBatches.Batch013.certificate1043.Valid := DerivedMapBatches.Batch013.certificate1043valid
theorem linkedComposition119 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1043.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1043.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1020.c x) := by
  rw [firstLink119, secondLink119]
  exact DerivedMapBatches.Batch013.certificate1043valid.2 x
theorem firstLink120 : DerivedMapBatches.Batch012.certificate1022.c = DerivedMapBatches.Batch013.certificate1044.a := by decide
theorem secondLink120 : DerivedMapBatches.Batch010.certificate879.algebra.mat = DerivedMapBatches.Batch013.certificate1044.b := by decide
theorem firstValid120 : DerivedMapBatches.Batch012.certificate1022.Valid := DerivedMapBatches.Batch012.certificate1022valid
theorem secondValid120 : DerivedMapBatches.Batch010.certificate879.Valid := DerivedMapBatches.Batch010.certificate879valid
theorem outputValid120 : DerivedMapBatches.Batch013.certificate1044.Valid := DerivedMapBatches.Batch013.certificate1044valid
theorem linkedComposition120 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1044.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1044.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate879.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1022.c x) := by
  rw [firstLink120, secondLink120]
  exact DerivedMapBatches.Batch013.certificate1044valid.2 x
theorem firstLink121 : DerivedMapBatches.Batch012.certificate1024.c = DerivedMapBatches.Batch013.certificate1045.a := by decide
theorem secondLink121 : DerivedMapBatches.Batch011.certificate885.algebra.mat = DerivedMapBatches.Batch013.certificate1045.b := by decide
theorem firstValid121 : DerivedMapBatches.Batch012.certificate1024.Valid := DerivedMapBatches.Batch012.certificate1024valid
theorem secondValid121 : DerivedMapBatches.Batch011.certificate885.Valid := DerivedMapBatches.Batch011.certificate885valid
theorem outputValid121 : DerivedMapBatches.Batch013.certificate1045.Valid := DerivedMapBatches.Batch013.certificate1045valid
theorem linkedComposition121 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1045.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1045.c x = LinearCertificates.eval DerivedMapBatches.Batch011.certificate885.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch012.certificate1024.c x) := by
  rw [firstLink121, secondLink121]
  exact DerivedMapBatches.Batch013.certificate1045valid.2 x
theorem firstLink122 : DerivedMapBatches.Batch013.certificate1046.algebra.mat = DerivedMapBatches.Batch013.certificate1048.a := by decide
theorem secondLink122 : DerivedMapBatches.Batch013.certificate1047.algebra.mat = DerivedMapBatches.Batch013.certificate1048.b := by decide
theorem firstValid122 : DerivedMapBatches.Batch013.certificate1046.Valid := DerivedMapBatches.Batch013.certificate1046valid
theorem secondValid122 : DerivedMapBatches.Batch013.certificate1047.Valid := DerivedMapBatches.Batch013.certificate1047valid
theorem outputValid122 : DerivedMapBatches.Batch013.certificate1048.Valid := DerivedMapBatches.Batch013.certificate1048valid
theorem linkedComposition122 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1048.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1048.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1047.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1046.algebra.mat x) := by
  rw [firstLink122, secondLink122]
  exact DerivedMapBatches.Batch013.certificate1048valid.2 x
theorem firstLink123 : DerivedMapBatches.Batch013.certificate1049.algebra.mat = DerivedMapBatches.Batch013.certificate1051.a := by decide
theorem secondLink123 : DerivedMapBatches.Batch013.certificate1050.algebra.mat = DerivedMapBatches.Batch013.certificate1051.b := by decide
theorem firstValid123 : DerivedMapBatches.Batch013.certificate1049.Valid := DerivedMapBatches.Batch013.certificate1049valid
theorem secondValid123 : DerivedMapBatches.Batch013.certificate1050.Valid := DerivedMapBatches.Batch013.certificate1050valid
theorem outputValid123 : DerivedMapBatches.Batch013.certificate1051.Valid := DerivedMapBatches.Batch013.certificate1051valid
theorem linkedComposition123 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1051.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1051.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1050.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1049.algebra.mat x) := by
  rw [firstLink123, secondLink123]
  exact DerivedMapBatches.Batch013.certificate1051valid.2 x
theorem firstLink124 : DerivedMapBatches.Batch013.certificate1052.algebra.mat = DerivedMapBatches.Batch013.certificate1054.a := by decide
theorem secondLink124 : DerivedMapBatches.Batch013.certificate1053.algebra.mat = DerivedMapBatches.Batch013.certificate1054.b := by decide
theorem firstValid124 : DerivedMapBatches.Batch013.certificate1052.Valid := DerivedMapBatches.Batch013.certificate1052valid
theorem secondValid124 : DerivedMapBatches.Batch013.certificate1053.Valid := DerivedMapBatches.Batch013.certificate1053valid
theorem outputValid124 : DerivedMapBatches.Batch013.certificate1054.Valid := DerivedMapBatches.Batch013.certificate1054valid
theorem linkedComposition124 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1054.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1054.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1053.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1052.algebra.mat x) := by
  rw [firstLink124, secondLink124]
  exact DerivedMapBatches.Batch013.certificate1054valid.2 x
theorem firstLink125 : DerivedMapBatches.Batch013.certificate1055.algebra.mat = DerivedMapBatches.Batch013.certificate1057.a := by decide
theorem secondLink125 : DerivedMapBatches.Batch013.certificate1056.algebra.mat = DerivedMapBatches.Batch013.certificate1057.b := by decide
theorem firstValid125 : DerivedMapBatches.Batch013.certificate1055.Valid := DerivedMapBatches.Batch013.certificate1055valid
theorem secondValid125 : DerivedMapBatches.Batch013.certificate1056.Valid := DerivedMapBatches.Batch013.certificate1056valid
theorem outputValid125 : DerivedMapBatches.Batch013.certificate1057.Valid := DerivedMapBatches.Batch013.certificate1057valid
theorem linkedComposition125 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1057.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1057.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1056.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1055.algebra.mat x) := by
  rw [firstLink125, secondLink125]
  exact DerivedMapBatches.Batch013.certificate1057valid.2 x
theorem firstLink126 : DerivedMapBatches.Batch013.certificate1058.algebra.mat = DerivedMapBatches.Batch013.certificate1060.a := by decide
theorem secondLink126 : DerivedMapBatches.Batch013.certificate1059.algebra.mat = DerivedMapBatches.Batch013.certificate1060.b := by decide
theorem firstValid126 : DerivedMapBatches.Batch013.certificate1058.Valid := DerivedMapBatches.Batch013.certificate1058valid
theorem secondValid126 : DerivedMapBatches.Batch013.certificate1059.Valid := DerivedMapBatches.Batch013.certificate1059valid
theorem outputValid126 : DerivedMapBatches.Batch013.certificate1060.Valid := DerivedMapBatches.Batch013.certificate1060valid
theorem linkedComposition126 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1060.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1060.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1059.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1058.algebra.mat x) := by
  rw [firstLink126, secondLink126]
  exact DerivedMapBatches.Batch013.certificate1060valid.2 x
theorem firstLink127 : DerivedMapBatches.Batch013.certificate1061.algebra.mat = DerivedMapBatches.Batch013.certificate1063.a := by decide
theorem secondLink127 : DerivedMapBatches.Batch013.certificate1062.algebra.mat = DerivedMapBatches.Batch013.certificate1063.b := by decide
theorem firstValid127 : DerivedMapBatches.Batch013.certificate1061.Valid := DerivedMapBatches.Batch013.certificate1061valid
theorem secondValid127 : DerivedMapBatches.Batch013.certificate1062.Valid := DerivedMapBatches.Batch013.certificate1062valid
theorem outputValid127 : DerivedMapBatches.Batch013.certificate1063.Valid := DerivedMapBatches.Batch013.certificate1063valid
theorem linkedComposition127 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1063.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1063.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1062.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1061.algebra.mat x) := by
  rw [firstLink127, secondLink127]
  exact DerivedMapBatches.Batch013.certificate1063valid.2 x
theorem firstLink128 : DerivedMapBatches.Batch013.certificate1064.algebra.mat = DerivedMapBatches.Batch013.certificate1066.a := by decide
theorem secondLink128 : DerivedMapBatches.Batch013.certificate1065.algebra.mat = DerivedMapBatches.Batch013.certificate1066.b := by decide
theorem firstValid128 : DerivedMapBatches.Batch013.certificate1064.Valid := DerivedMapBatches.Batch013.certificate1064valid
theorem secondValid128 : DerivedMapBatches.Batch013.certificate1065.Valid := DerivedMapBatches.Batch013.certificate1065valid
theorem outputValid128 : DerivedMapBatches.Batch013.certificate1066.Valid := DerivedMapBatches.Batch013.certificate1066valid
theorem linkedComposition128 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1066.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1066.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1065.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1064.algebra.mat x) := by
  rw [firstLink128, secondLink128]
  exact DerivedMapBatches.Batch013.certificate1066valid.2 x
theorem firstLink129 : DerivedMapBatches.Batch013.certificate1067.algebra.mat = DerivedMapBatches.Batch013.certificate1069.a := by decide
theorem secondLink129 : DerivedMapBatches.Batch013.certificate1068.algebra.mat = DerivedMapBatches.Batch013.certificate1069.b := by decide
theorem firstValid129 : DerivedMapBatches.Batch013.certificate1067.Valid := DerivedMapBatches.Batch013.certificate1067valid
theorem secondValid129 : DerivedMapBatches.Batch013.certificate1068.Valid := DerivedMapBatches.Batch013.certificate1068valid
theorem outputValid129 : DerivedMapBatches.Batch013.certificate1069.Valid := DerivedMapBatches.Batch013.certificate1069valid
theorem linkedComposition129 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1069.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1069.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1068.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1067.algebra.mat x) := by
  rw [firstLink129, secondLink129]
  exact DerivedMapBatches.Batch013.certificate1069valid.2 x
theorem firstLink130 : DerivedMapBatches.Batch013.certificate1070.algebra.mat = DerivedMapBatches.Batch013.certificate1072.a := by decide
theorem secondLink130 : DerivedMapBatches.Batch013.certificate1071.algebra.mat = DerivedMapBatches.Batch013.certificate1072.b := by decide
theorem firstValid130 : DerivedMapBatches.Batch013.certificate1070.Valid := DerivedMapBatches.Batch013.certificate1070valid
theorem secondValid130 : DerivedMapBatches.Batch013.certificate1071.Valid := DerivedMapBatches.Batch013.certificate1071valid
theorem outputValid130 : DerivedMapBatches.Batch013.certificate1072.Valid := DerivedMapBatches.Batch013.certificate1072valid
theorem linkedComposition130 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1072.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1072.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1071.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1070.algebra.mat x) := by
  rw [firstLink130, secondLink130]
  exact DerivedMapBatches.Batch013.certificate1072valid.2 x
theorem firstLink131 : DerivedMapBatches.Batch013.certificate1073.algebra.mat = DerivedMapBatches.Batch013.certificate1075.a := by decide
theorem secondLink131 : DerivedMapBatches.Batch013.certificate1074.algebra.mat = DerivedMapBatches.Batch013.certificate1075.b := by decide
theorem firstValid131 : DerivedMapBatches.Batch013.certificate1073.Valid := DerivedMapBatches.Batch013.certificate1073valid
theorem secondValid131 : DerivedMapBatches.Batch013.certificate1074.Valid := DerivedMapBatches.Batch013.certificate1074valid
theorem outputValid131 : DerivedMapBatches.Batch013.certificate1075.Valid := DerivedMapBatches.Batch013.certificate1075valid
theorem linkedComposition131 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1075.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1075.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1074.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1073.algebra.mat x) := by
  rw [firstLink131, secondLink131]
  exact DerivedMapBatches.Batch013.certificate1075valid.2 x
theorem firstLink132 : DerivedMapBatches.Batch013.certificate1076.algebra.mat = DerivedMapBatches.Batch013.certificate1078.a := by decide
theorem secondLink132 : DerivedMapBatches.Batch013.certificate1077.algebra.mat = DerivedMapBatches.Batch013.certificate1078.b := by decide
theorem firstValid132 : DerivedMapBatches.Batch013.certificate1076.Valid := DerivedMapBatches.Batch013.certificate1076valid
theorem secondValid132 : DerivedMapBatches.Batch013.certificate1077.Valid := DerivedMapBatches.Batch013.certificate1077valid
theorem outputValid132 : DerivedMapBatches.Batch013.certificate1078.Valid := DerivedMapBatches.Batch013.certificate1078valid
theorem linkedComposition132 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1078.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1078.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1077.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1076.algebra.mat x) := by
  rw [firstLink132, secondLink132]
  exact DerivedMapBatches.Batch013.certificate1078valid.2 x
theorem firstLink133 : DerivedMapBatches.Batch013.certificate1079.algebra.mat = DerivedMapBatches.Batch013.certificate1081.a := by decide
theorem secondLink133 : DerivedMapBatches.Batch013.certificate1080.algebra.mat = DerivedMapBatches.Batch013.certificate1081.b := by decide
theorem firstValid133 : DerivedMapBatches.Batch013.certificate1079.Valid := DerivedMapBatches.Batch013.certificate1079valid
theorem secondValid133 : DerivedMapBatches.Batch013.certificate1080.Valid := DerivedMapBatches.Batch013.certificate1080valid
theorem outputValid133 : DerivedMapBatches.Batch013.certificate1081.Valid := DerivedMapBatches.Batch013.certificate1081valid
theorem linkedComposition133 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1081.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1081.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1080.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1079.algebra.mat x) := by
  rw [firstLink133, secondLink133]
  exact DerivedMapBatches.Batch013.certificate1081valid.2 x
theorem firstLink134 : DerivedMapBatches.Batch013.certificate1082.algebra.mat = DerivedMapBatches.Batch013.certificate1084.a := by decide
theorem secondLink134 : DerivedMapBatches.Batch013.certificate1083.algebra.mat = DerivedMapBatches.Batch013.certificate1084.b := by decide
theorem firstValid134 : DerivedMapBatches.Batch013.certificate1082.Valid := DerivedMapBatches.Batch013.certificate1082valid
theorem secondValid134 : DerivedMapBatches.Batch013.certificate1083.Valid := DerivedMapBatches.Batch013.certificate1083valid
theorem outputValid134 : DerivedMapBatches.Batch013.certificate1084.Valid := DerivedMapBatches.Batch013.certificate1084valid
theorem linkedComposition134 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1084.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1084.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1083.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1082.algebra.mat x) := by
  rw [firstLink134, secondLink134]
  exact DerivedMapBatches.Batch013.certificate1084valid.2 x
theorem firstLink135 : DerivedMapBatches.Batch013.certificate1085.algebra.mat = DerivedMapBatches.Batch013.certificate1087.a := by decide
theorem secondLink135 : DerivedMapBatches.Batch013.certificate1086.algebra.mat = DerivedMapBatches.Batch013.certificate1087.b := by decide
theorem firstValid135 : DerivedMapBatches.Batch013.certificate1085.Valid := DerivedMapBatches.Batch013.certificate1085valid
theorem secondValid135 : DerivedMapBatches.Batch013.certificate1086.Valid := DerivedMapBatches.Batch013.certificate1086valid
theorem outputValid135 : DerivedMapBatches.Batch013.certificate1087.Valid := DerivedMapBatches.Batch013.certificate1087valid
theorem linkedComposition135 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1087.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1087.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1086.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1085.algebra.mat x) := by
  rw [firstLink135, secondLink135]
  exact DerivedMapBatches.Batch013.certificate1087valid.2 x
theorem firstLink136 : DerivedMapBatches.Batch013.certificate1088.algebra.mat = DerivedMapBatches.Batch013.certificate1090.a := by decide
theorem secondLink136 : DerivedMapBatches.Batch013.certificate1089.algebra.mat = DerivedMapBatches.Batch013.certificate1090.b := by decide
theorem firstValid136 : DerivedMapBatches.Batch013.certificate1088.Valid := DerivedMapBatches.Batch013.certificate1088valid
theorem secondValid136 : DerivedMapBatches.Batch013.certificate1089.Valid := DerivedMapBatches.Batch013.certificate1089valid
theorem outputValid136 : DerivedMapBatches.Batch013.certificate1090.Valid := DerivedMapBatches.Batch013.certificate1090valid
theorem linkedComposition136 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1090.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1090.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1089.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1088.algebra.mat x) := by
  rw [firstLink136, secondLink136]
  exact DerivedMapBatches.Batch013.certificate1090valid.2 x
theorem firstLink137 : DerivedMapBatches.Batch013.certificate1091.algebra.mat = DerivedMapBatches.Batch013.certificate1093.a := by decide
theorem secondLink137 : DerivedMapBatches.Batch013.certificate1092.algebra.mat = DerivedMapBatches.Batch013.certificate1093.b := by decide
theorem firstValid137 : DerivedMapBatches.Batch013.certificate1091.Valid := DerivedMapBatches.Batch013.certificate1091valid
theorem secondValid137 : DerivedMapBatches.Batch013.certificate1092.Valid := DerivedMapBatches.Batch013.certificate1092valid
theorem outputValid137 : DerivedMapBatches.Batch013.certificate1093.Valid := DerivedMapBatches.Batch013.certificate1093valid
theorem linkedComposition137 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1093.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1093.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1092.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1091.algebra.mat x) := by
  rw [firstLink137, secondLink137]
  exact DerivedMapBatches.Batch013.certificate1093valid.2 x
theorem firstLink138 : DerivedMapBatches.Batch013.certificate1094.algebra.mat = DerivedMapBatches.Batch013.certificate1096.a := by decide
theorem secondLink138 : DerivedMapBatches.Batch013.certificate1095.algebra.mat = DerivedMapBatches.Batch013.certificate1096.b := by decide
theorem firstValid138 : DerivedMapBatches.Batch013.certificate1094.Valid := DerivedMapBatches.Batch013.certificate1094valid
theorem secondValid138 : DerivedMapBatches.Batch013.certificate1095.Valid := DerivedMapBatches.Batch013.certificate1095valid
theorem outputValid138 : DerivedMapBatches.Batch013.certificate1096.Valid := DerivedMapBatches.Batch013.certificate1096valid
theorem linkedComposition138 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1096.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1096.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1095.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1094.algebra.mat x) := by
  rw [firstLink138, secondLink138]
  exact DerivedMapBatches.Batch013.certificate1096valid.2 x
theorem firstLink139 : DerivedMapBatches.Batch013.certificate1097.algebra.mat = DerivedMapBatches.Batch013.certificate1099.a := by decide
theorem secondLink139 : DerivedMapBatches.Batch013.certificate1098.algebra.mat = DerivedMapBatches.Batch013.certificate1099.b := by decide
theorem firstValid139 : DerivedMapBatches.Batch013.certificate1097.Valid := DerivedMapBatches.Batch013.certificate1097valid
theorem secondValid139 : DerivedMapBatches.Batch013.certificate1098.Valid := DerivedMapBatches.Batch013.certificate1098valid
theorem outputValid139 : DerivedMapBatches.Batch013.certificate1099.Valid := DerivedMapBatches.Batch013.certificate1099valid
theorem linkedComposition139 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1099.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1099.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1098.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1097.algebra.mat x) := by
  rw [firstLink139, secondLink139]
  exact DerivedMapBatches.Batch013.certificate1099valid.2 x
theorem firstLink140 : DerivedMapBatches.Batch013.certificate1100.algebra.mat = DerivedMapBatches.Batch013.certificate1102.a := by decide
theorem secondLink140 : DerivedMapBatches.Batch013.certificate1101.algebra.mat = DerivedMapBatches.Batch013.certificate1102.b := by decide
theorem firstValid140 : DerivedMapBatches.Batch013.certificate1100.Valid := DerivedMapBatches.Batch013.certificate1100valid
theorem secondValid140 : DerivedMapBatches.Batch013.certificate1101.Valid := DerivedMapBatches.Batch013.certificate1101valid
theorem outputValid140 : DerivedMapBatches.Batch013.certificate1102.Valid := DerivedMapBatches.Batch013.certificate1102valid
theorem linkedComposition140 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1102.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1102.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1101.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1100.algebra.mat x) := by
  rw [firstLink140, secondLink140]
  exact DerivedMapBatches.Batch013.certificate1102valid.2 x
theorem firstLink141 : DerivedMapBatches.Batch013.certificate1103.algebra.mat = DerivedMapBatches.Batch013.certificate1105.a := by decide
theorem secondLink141 : DerivedMapBatches.Batch013.certificate1104.algebra.mat = DerivedMapBatches.Batch013.certificate1105.b := by decide
theorem firstValid141 : DerivedMapBatches.Batch013.certificate1103.Valid := DerivedMapBatches.Batch013.certificate1103valid
theorem secondValid141 : DerivedMapBatches.Batch013.certificate1104.Valid := DerivedMapBatches.Batch013.certificate1104valid
theorem outputValid141 : DerivedMapBatches.Batch013.certificate1105.Valid := DerivedMapBatches.Batch013.certificate1105valid
theorem linkedComposition141 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1105.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1105.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1104.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1103.algebra.mat x) := by
  rw [firstLink141, secondLink141]
  exact DerivedMapBatches.Batch013.certificate1105valid.2 x
theorem firstLink142 : DerivedMapBatches.Batch013.certificate1106.algebra.mat = DerivedMapBatches.Batch013.certificate1108.a := by decide
theorem secondLink142 : DerivedMapBatches.Batch013.certificate1107.algebra.mat = DerivedMapBatches.Batch013.certificate1108.b := by decide
theorem firstValid142 : DerivedMapBatches.Batch013.certificate1106.Valid := DerivedMapBatches.Batch013.certificate1106valid
theorem secondValid142 : DerivedMapBatches.Batch013.certificate1107.Valid := DerivedMapBatches.Batch013.certificate1107valid
theorem outputValid142 : DerivedMapBatches.Batch013.certificate1108.Valid := DerivedMapBatches.Batch013.certificate1108valid
theorem linkedComposition142 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1108.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1108.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1107.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1106.algebra.mat x) := by
  rw [firstLink142, secondLink142]
  exact DerivedMapBatches.Batch013.certificate1108valid.2 x
theorem firstLink143 : DerivedMapBatches.Batch013.certificate1109.algebra.mat = DerivedMapBatches.Batch013.certificate1111.a := by decide
theorem secondLink143 : DerivedMapBatches.Batch013.certificate1110.algebra.mat = DerivedMapBatches.Batch013.certificate1111.b := by decide
theorem firstValid143 : DerivedMapBatches.Batch013.certificate1109.Valid := DerivedMapBatches.Batch013.certificate1109valid
theorem secondValid143 : DerivedMapBatches.Batch013.certificate1110.Valid := DerivedMapBatches.Batch013.certificate1110valid
theorem outputValid143 : DerivedMapBatches.Batch013.certificate1111.Valid := DerivedMapBatches.Batch013.certificate1111valid
theorem linkedComposition143 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1111.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1111.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1109.algebra.mat x) := by
  rw [firstLink143, secondLink143]
  exact DerivedMapBatches.Batch013.certificate1111valid.2 x
theorem firstLink144 : DerivedMapBatches.Batch013.certificate1112.algebra.mat = DerivedMapBatches.Batch013.certificate1114.a := by decide
theorem secondLink144 : DerivedMapBatches.Batch013.certificate1113.algebra.mat = DerivedMapBatches.Batch013.certificate1114.b := by decide
theorem firstValid144 : DerivedMapBatches.Batch013.certificate1112.Valid := DerivedMapBatches.Batch013.certificate1112valid
theorem secondValid144 : DerivedMapBatches.Batch013.certificate1113.Valid := DerivedMapBatches.Batch013.certificate1113valid
theorem outputValid144 : DerivedMapBatches.Batch013.certificate1114.Valid := DerivedMapBatches.Batch013.certificate1114valid
theorem linkedComposition144 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1114.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1114.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1113.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1112.algebra.mat x) := by
  rw [firstLink144, secondLink144]
  exact DerivedMapBatches.Batch013.certificate1114valid.2 x
theorem firstLink145 : DerivedMapBatches.Batch013.certificate1115.algebra.mat = DerivedMapBatches.Batch013.certificate1117.a := by decide
theorem secondLink145 : DerivedMapBatches.Batch013.certificate1116.algebra.mat = DerivedMapBatches.Batch013.certificate1117.b := by decide
theorem firstValid145 : DerivedMapBatches.Batch013.certificate1115.Valid := DerivedMapBatches.Batch013.certificate1115valid
theorem secondValid145 : DerivedMapBatches.Batch013.certificate1116.Valid := DerivedMapBatches.Batch013.certificate1116valid
theorem outputValid145 : DerivedMapBatches.Batch013.certificate1117.Valid := DerivedMapBatches.Batch013.certificate1117valid
theorem linkedComposition145 (x : LinearCertificates.Vec DerivedMapBatches.Batch013.certificate1117.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch013.certificate1117.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1116.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1115.algebra.mat x) := by
  rw [firstLink145, secondLink145]
  exact DerivedMapBatches.Batch013.certificate1117valid.2 x
theorem firstLink146 : DerivedMapBatches.Batch013.certificate1118.algebra.mat = DerivedMapBatches.Batch014.certificate1120.a := by decide
theorem secondLink146 : DerivedMapBatches.Batch013.certificate1119.algebra.mat = DerivedMapBatches.Batch014.certificate1120.b := by decide
theorem firstValid146 : DerivedMapBatches.Batch013.certificate1118.Valid := DerivedMapBatches.Batch013.certificate1118valid
theorem secondValid146 : DerivedMapBatches.Batch013.certificate1119.Valid := DerivedMapBatches.Batch013.certificate1119valid
theorem outputValid146 : DerivedMapBatches.Batch014.certificate1120.Valid := DerivedMapBatches.Batch014.certificate1120valid
theorem linkedComposition146 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1120.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1120.c x = LinearCertificates.eval DerivedMapBatches.Batch013.certificate1119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1118.algebra.mat x) := by
  rw [firstLink146, secondLink146]
  exact DerivedMapBatches.Batch014.certificate1120valid.2 x
theorem firstLink147 : DerivedMapBatches.Batch014.certificate1121.algebra.mat = DerivedMapBatches.Batch014.certificate1123.a := by decide
theorem secondLink147 : DerivedMapBatches.Batch014.certificate1122.algebra.mat = DerivedMapBatches.Batch014.certificate1123.b := by decide
theorem firstValid147 : DerivedMapBatches.Batch014.certificate1121.Valid := DerivedMapBatches.Batch014.certificate1121valid
theorem secondValid147 : DerivedMapBatches.Batch014.certificate1122.Valid := DerivedMapBatches.Batch014.certificate1122valid
theorem outputValid147 : DerivedMapBatches.Batch014.certificate1123.Valid := DerivedMapBatches.Batch014.certificate1123valid
theorem linkedComposition147 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1123.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1123.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1122.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch014.certificate1121.algebra.mat x) := by
  rw [firstLink147, secondLink147]
  exact DerivedMapBatches.Batch014.certificate1123valid.2 x
theorem firstLink148 : DerivedMapBatches.Batch013.certificate1048.c = DerivedMapBatches.Batch014.certificate1125.a := by decide
theorem secondLink148 : DerivedMapBatches.Batch014.certificate1124.algebra.mat = DerivedMapBatches.Batch014.certificate1125.b := by decide
theorem firstValid148 : DerivedMapBatches.Batch013.certificate1048.Valid := DerivedMapBatches.Batch013.certificate1048valid
theorem secondValid148 : DerivedMapBatches.Batch014.certificate1124.Valid := DerivedMapBatches.Batch014.certificate1124valid
theorem outputValid148 : DerivedMapBatches.Batch014.certificate1125.Valid := DerivedMapBatches.Batch014.certificate1125valid
theorem linkedComposition148 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1125.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1125.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1124.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1048.c x) := by
  rw [firstLink148, secondLink148]
  exact DerivedMapBatches.Batch014.certificate1125valid.2 x
theorem firstLink149 : DerivedMapBatches.Batch013.certificate1051.c = DerivedMapBatches.Batch014.certificate1127.a := by decide
theorem secondLink149 : DerivedMapBatches.Batch014.certificate1126.algebra.mat = DerivedMapBatches.Batch014.certificate1127.b := by decide
theorem firstValid149 : DerivedMapBatches.Batch013.certificate1051.Valid := DerivedMapBatches.Batch013.certificate1051valid
theorem secondValid149 : DerivedMapBatches.Batch014.certificate1126.Valid := DerivedMapBatches.Batch014.certificate1126valid
theorem outputValid149 : DerivedMapBatches.Batch014.certificate1127.Valid := DerivedMapBatches.Batch014.certificate1127valid
theorem linkedComposition149 (x : LinearCertificates.Vec DerivedMapBatches.Batch014.certificate1127.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch014.certificate1127.c x = LinearCertificates.eval DerivedMapBatches.Batch014.certificate1126.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch013.certificate1051.c x) := by
  rw [firstLink149, secondLink149]
  exact DerivedMapBatches.Batch014.certificate1127valid.2 x
end DerivedLinkageBatches.Batch002
