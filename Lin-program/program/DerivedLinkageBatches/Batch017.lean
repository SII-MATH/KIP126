import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch048
import DerivedMapBatches.Batch049
import DerivedMapBatches.Batch050
import DerivedMapBatches.Batch051
import DerivedMapBatches.Batch052
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch017
theorem firstLink850 : DerivedMapBatches.Batch049.certificate3920.algebra.mat = DerivedMapBatches.Batch050.certificate4067.a := by decide
theorem secondLink850 : DerivedMapBatches.Batch050.certificate4039.c = DerivedMapBatches.Batch050.certificate4067.b := by decide
theorem firstValid850 : DerivedMapBatches.Batch049.certificate3920.Valid := DerivedMapBatches.Batch049.certificate3920valid
theorem secondValid850 : DerivedMapBatches.Batch050.certificate4039.Valid := DerivedMapBatches.Batch050.certificate4039valid
theorem outputValid850 : DerivedMapBatches.Batch050.certificate4067.Valid := DerivedMapBatches.Batch050.certificate4067valid
theorem linkedComposition850 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4067.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4067.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4039.c (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3920.algebra.mat x) := by
  rw [firstLink850, secondLink850]
  exact DerivedMapBatches.Batch050.certificate4067valid.2 x
theorem firstLink851 : DerivedMapBatches.Batch048.certificate3885.c = DerivedMapBatches.Batch050.certificate4068.a := by decide
theorem secondLink851 : DerivedMapBatches.Batch050.certificate4009.c = DerivedMapBatches.Batch050.certificate4068.b := by decide
theorem firstValid851 : DerivedMapBatches.Batch048.certificate3885.Valid := DerivedMapBatches.Batch048.certificate3885valid
theorem secondValid851 : DerivedMapBatches.Batch050.certificate4009.Valid := DerivedMapBatches.Batch050.certificate4009valid
theorem outputValid851 : DerivedMapBatches.Batch050.certificate4068.Valid := DerivedMapBatches.Batch050.certificate4068valid
theorem linkedComposition851 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4068.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4068.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4009.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3885.c x) := by
  rw [firstLink851, secondLink851]
  exact DerivedMapBatches.Batch050.certificate4068valid.2 x
theorem firstLink852 : DerivedMapBatches.Batch048.certificate3888.c = DerivedMapBatches.Batch050.certificate4069.a := by decide
theorem secondLink852 : DerivedMapBatches.Batch050.certificate4013.c = DerivedMapBatches.Batch050.certificate4069.b := by decide
theorem firstValid852 : DerivedMapBatches.Batch048.certificate3888.Valid := DerivedMapBatches.Batch048.certificate3888valid
theorem secondValid852 : DerivedMapBatches.Batch050.certificate4013.Valid := DerivedMapBatches.Batch050.certificate4013valid
theorem outputValid852 : DerivedMapBatches.Batch050.certificate4069.Valid := DerivedMapBatches.Batch050.certificate4069valid
theorem linkedComposition852 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4069.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4069.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4013.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3888.c x) := by
  rw [firstLink852, secondLink852]
  exact DerivedMapBatches.Batch050.certificate4069valid.2 x
theorem firstLink853 : DerivedMapBatches.Batch048.certificate3891.c = DerivedMapBatches.Batch050.certificate4070.a := by decide
theorem secondLink853 : DerivedMapBatches.Batch050.certificate4015.c = DerivedMapBatches.Batch050.certificate4070.b := by decide
theorem firstValid853 : DerivedMapBatches.Batch048.certificate3891.Valid := DerivedMapBatches.Batch048.certificate3891valid
theorem secondValid853 : DerivedMapBatches.Batch050.certificate4015.Valid := DerivedMapBatches.Batch050.certificate4015valid
theorem outputValid853 : DerivedMapBatches.Batch050.certificate4070.Valid := DerivedMapBatches.Batch050.certificate4070valid
theorem linkedComposition853 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4070.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4070.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4015.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3891.c x) := by
  rw [firstLink853, secondLink853]
  exact DerivedMapBatches.Batch050.certificate4070valid.2 x
theorem firstLink854 : DerivedMapBatches.Batch048.certificate3894.c = DerivedMapBatches.Batch050.certificate4071.a := by decide
theorem secondLink854 : DerivedMapBatches.Batch050.certificate4017.c = DerivedMapBatches.Batch050.certificate4071.b := by decide
theorem firstValid854 : DerivedMapBatches.Batch048.certificate3894.Valid := DerivedMapBatches.Batch048.certificate3894valid
theorem secondValid854 : DerivedMapBatches.Batch050.certificate4017.Valid := DerivedMapBatches.Batch050.certificate4017valid
theorem outputValid854 : DerivedMapBatches.Batch050.certificate4071.Valid := DerivedMapBatches.Batch050.certificate4071valid
theorem linkedComposition854 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4071.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4071.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4017.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3894.c x) := by
  rw [firstLink854, secondLink854]
  exact DerivedMapBatches.Batch050.certificate4071valid.2 x
theorem firstLink855 : DerivedMapBatches.Batch048.certificate3897.c = DerivedMapBatches.Batch050.certificate4072.a := by decide
theorem secondLink855 : DerivedMapBatches.Batch050.certificate4023.c = DerivedMapBatches.Batch050.certificate4072.b := by decide
theorem firstValid855 : DerivedMapBatches.Batch048.certificate3897.Valid := DerivedMapBatches.Batch048.certificate3897valid
theorem secondValid855 : DerivedMapBatches.Batch050.certificate4023.Valid := DerivedMapBatches.Batch050.certificate4023valid
theorem outputValid855 : DerivedMapBatches.Batch050.certificate4072.Valid := DerivedMapBatches.Batch050.certificate4072valid
theorem linkedComposition855 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4072.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4072.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4023.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3897.c x) := by
  rw [firstLink855, secondLink855]
  exact DerivedMapBatches.Batch050.certificate4072valid.2 x
theorem firstLink856 : DerivedMapBatches.Batch048.certificate3900.c = DerivedMapBatches.Batch050.certificate4073.a := by decide
theorem secondLink856 : DerivedMapBatches.Batch050.certificate4027.c = DerivedMapBatches.Batch050.certificate4073.b := by decide
theorem firstValid856 : DerivedMapBatches.Batch048.certificate3900.Valid := DerivedMapBatches.Batch048.certificate3900valid
theorem secondValid856 : DerivedMapBatches.Batch050.certificate4027.Valid := DerivedMapBatches.Batch050.certificate4027valid
theorem outputValid856 : DerivedMapBatches.Batch050.certificate4073.Valid := DerivedMapBatches.Batch050.certificate4073valid
theorem linkedComposition856 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4073.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4073.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4027.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3900.c x) := by
  rw [firstLink856, secondLink856]
  exact DerivedMapBatches.Batch050.certificate4073valid.2 x
theorem firstLink857 : DerivedMapBatches.Batch050.certificate4074.algebra.mat = DerivedMapBatches.Batch050.certificate4076.a := by decide
theorem secondLink857 : DerivedMapBatches.Batch050.certificate4075.algebra.mat = DerivedMapBatches.Batch050.certificate4076.b := by decide
theorem firstValid857 : DerivedMapBatches.Batch050.certificate4074.Valid := DerivedMapBatches.Batch050.certificate4074valid
theorem secondValid857 : DerivedMapBatches.Batch050.certificate4075.Valid := DerivedMapBatches.Batch050.certificate4075valid
theorem outputValid857 : DerivedMapBatches.Batch050.certificate4076.Valid := DerivedMapBatches.Batch050.certificate4076valid
theorem linkedComposition857 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4076.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4076.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4075.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4074.algebra.mat x) := by
  rw [firstLink857, secondLink857]
  exact DerivedMapBatches.Batch050.certificate4076valid.2 x
theorem firstLink858 : DerivedMapBatches.Batch050.certificate4076.c = DerivedMapBatches.Batch050.certificate4078.a := by decide
theorem secondLink858 : DerivedMapBatches.Batch050.certificate4077.algebra.mat = DerivedMapBatches.Batch050.certificate4078.b := by decide
theorem firstValid858 : DerivedMapBatches.Batch050.certificate4076.Valid := DerivedMapBatches.Batch050.certificate4076valid
theorem secondValid858 : DerivedMapBatches.Batch050.certificate4077.Valid := DerivedMapBatches.Batch050.certificate4077valid
theorem outputValid858 : DerivedMapBatches.Batch050.certificate4078.Valid := DerivedMapBatches.Batch050.certificate4078valid
theorem linkedComposition858 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4078.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4078.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4077.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4076.c x) := by
  rw [firstLink858, secondLink858]
  exact DerivedMapBatches.Batch050.certificate4078valid.2 x
theorem firstLink859 : DerivedMapBatches.Batch050.certificate4078.c = DerivedMapBatches.Batch051.certificate4080.a := by decide
theorem secondLink859 : DerivedMapBatches.Batch050.certificate4079.algebra.mat = DerivedMapBatches.Batch051.certificate4080.b := by decide
theorem firstValid859 : DerivedMapBatches.Batch050.certificate4078.Valid := DerivedMapBatches.Batch050.certificate4078valid
theorem secondValid859 : DerivedMapBatches.Batch050.certificate4079.Valid := DerivedMapBatches.Batch050.certificate4079valid
theorem outputValid859 : DerivedMapBatches.Batch051.certificate4080.Valid := DerivedMapBatches.Batch051.certificate4080valid
theorem linkedComposition859 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4080.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4080.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4079.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4078.c x) := by
  rw [firstLink859, secondLink859]
  exact DerivedMapBatches.Batch051.certificate4080valid.2 x
theorem firstLink860 : DerivedMapBatches.Batch048.certificate3903.c = DerivedMapBatches.Batch051.certificate4081.a := by decide
theorem secondLink860 : DerivedMapBatches.Batch051.certificate4080.c = DerivedMapBatches.Batch051.certificate4081.b := by decide
theorem firstValid860 : DerivedMapBatches.Batch048.certificate3903.Valid := DerivedMapBatches.Batch048.certificate3903valid
theorem secondValid860 : DerivedMapBatches.Batch051.certificate4080.Valid := DerivedMapBatches.Batch051.certificate4080valid
theorem outputValid860 : DerivedMapBatches.Batch051.certificate4081.Valid := DerivedMapBatches.Batch051.certificate4081valid
theorem linkedComposition860 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4081.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4081.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4080.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3903.c x) := by
  rw [firstLink860, secondLink860]
  exact DerivedMapBatches.Batch051.certificate4081valid.2 x
theorem firstLink861 : DerivedMapBatches.Batch048.certificate3906.c = DerivedMapBatches.Batch051.certificate4082.a := by decide
theorem secondLink861 : DerivedMapBatches.Batch050.certificate4029.c = DerivedMapBatches.Batch051.certificate4082.b := by decide
theorem firstValid861 : DerivedMapBatches.Batch048.certificate3906.Valid := DerivedMapBatches.Batch048.certificate3906valid
theorem secondValid861 : DerivedMapBatches.Batch050.certificate4029.Valid := DerivedMapBatches.Batch050.certificate4029valid
theorem outputValid861 : DerivedMapBatches.Batch051.certificate4082.Valid := DerivedMapBatches.Batch051.certificate4082valid
theorem linkedComposition861 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4082.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4082.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4029.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3906.c x) := by
  rw [firstLink861, secondLink861]
  exact DerivedMapBatches.Batch051.certificate4082valid.2 x
theorem firstLink862 : DerivedMapBatches.Batch048.certificate3909.c = DerivedMapBatches.Batch051.certificate4083.a := by decide
theorem secondLink862 : DerivedMapBatches.Batch050.certificate4031.c = DerivedMapBatches.Batch051.certificate4083.b := by decide
theorem firstValid862 : DerivedMapBatches.Batch048.certificate3909.Valid := DerivedMapBatches.Batch048.certificate3909valid
theorem secondValid862 : DerivedMapBatches.Batch050.certificate4031.Valid := DerivedMapBatches.Batch050.certificate4031valid
theorem outputValid862 : DerivedMapBatches.Batch051.certificate4083.Valid := DerivedMapBatches.Batch051.certificate4083valid
theorem linkedComposition862 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4083.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4083.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4031.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3909.c x) := by
  rw [firstLink862, secondLink862]
  exact DerivedMapBatches.Batch051.certificate4083valid.2 x
theorem firstLink863 : DerivedMapBatches.Batch048.certificate3912.c = DerivedMapBatches.Batch051.certificate4084.a := by decide
theorem secondLink863 : DerivedMapBatches.Batch050.certificate4033.c = DerivedMapBatches.Batch051.certificate4084.b := by decide
theorem firstValid863 : DerivedMapBatches.Batch048.certificate3912.Valid := DerivedMapBatches.Batch048.certificate3912valid
theorem secondValid863 : DerivedMapBatches.Batch050.certificate4033.Valid := DerivedMapBatches.Batch050.certificate4033valid
theorem outputValid863 : DerivedMapBatches.Batch051.certificate4084.Valid := DerivedMapBatches.Batch051.certificate4084valid
theorem linkedComposition863 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4084.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4084.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4033.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3912.c x) := by
  rw [firstLink863, secondLink863]
  exact DerivedMapBatches.Batch051.certificate4084valid.2 x
theorem firstLink864 : DerivedMapBatches.Batch048.certificate3915.c = DerivedMapBatches.Batch051.certificate4085.a := by decide
theorem secondLink864 : DerivedMapBatches.Batch050.certificate4035.c = DerivedMapBatches.Batch051.certificate4085.b := by decide
theorem firstValid864 : DerivedMapBatches.Batch048.certificate3915.Valid := DerivedMapBatches.Batch048.certificate3915valid
theorem secondValid864 : DerivedMapBatches.Batch050.certificate4035.Valid := DerivedMapBatches.Batch050.certificate4035valid
theorem outputValid864 : DerivedMapBatches.Batch051.certificate4085.Valid := DerivedMapBatches.Batch051.certificate4085valid
theorem linkedComposition864 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4085.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4085.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4035.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3915.c x) := by
  rw [firstLink864, secondLink864]
  exact DerivedMapBatches.Batch051.certificate4085valid.2 x
theorem firstLink865 : DerivedMapBatches.Batch051.certificate4086.algebra.mat = DerivedMapBatches.Batch051.certificate4088.a := by decide
theorem secondLink865 : DerivedMapBatches.Batch051.certificate4087.algebra.mat = DerivedMapBatches.Batch051.certificate4088.b := by decide
theorem firstValid865 : DerivedMapBatches.Batch051.certificate4086.Valid := DerivedMapBatches.Batch051.certificate4086valid
theorem secondValid865 : DerivedMapBatches.Batch051.certificate4087.Valid := DerivedMapBatches.Batch051.certificate4087valid
theorem outputValid865 : DerivedMapBatches.Batch051.certificate4088.Valid := DerivedMapBatches.Batch051.certificate4088valid
theorem linkedComposition865 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4088.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4088.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4087.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4086.algebra.mat x) := by
  rw [firstLink865, secondLink865]
  exact DerivedMapBatches.Batch051.certificate4088valid.2 x
theorem firstLink866 : DerivedMapBatches.Batch051.certificate4088.c = DerivedMapBatches.Batch051.certificate4090.a := by decide
theorem secondLink866 : DerivedMapBatches.Batch051.certificate4089.algebra.mat = DerivedMapBatches.Batch051.certificate4090.b := by decide
theorem firstValid866 : DerivedMapBatches.Batch051.certificate4088.Valid := DerivedMapBatches.Batch051.certificate4088valid
theorem secondValid866 : DerivedMapBatches.Batch051.certificate4089.Valid := DerivedMapBatches.Batch051.certificate4089valid
theorem outputValid866 : DerivedMapBatches.Batch051.certificate4090.Valid := DerivedMapBatches.Batch051.certificate4090valid
theorem linkedComposition866 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4090.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4090.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4089.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4088.c x) := by
  rw [firstLink866, secondLink866]
  exact DerivedMapBatches.Batch051.certificate4090valid.2 x
theorem firstLink867 : DerivedMapBatches.Batch051.certificate4090.c = DerivedMapBatches.Batch051.certificate4092.a := by decide
theorem secondLink867 : DerivedMapBatches.Batch051.certificate4091.algebra.mat = DerivedMapBatches.Batch051.certificate4092.b := by decide
theorem firstValid867 : DerivedMapBatches.Batch051.certificate4090.Valid := DerivedMapBatches.Batch051.certificate4090valid
theorem secondValid867 : DerivedMapBatches.Batch051.certificate4091.Valid := DerivedMapBatches.Batch051.certificate4091valid
theorem outputValid867 : DerivedMapBatches.Batch051.certificate4092.Valid := DerivedMapBatches.Batch051.certificate4092valid
theorem linkedComposition867 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4092.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4092.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4091.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4090.c x) := by
  rw [firstLink867, secondLink867]
  exact DerivedMapBatches.Batch051.certificate4092valid.2 x
theorem firstLink868 : DerivedMapBatches.Batch048.certificate3918.c = DerivedMapBatches.Batch051.certificate4093.a := by decide
theorem secondLink868 : DerivedMapBatches.Batch051.certificate4092.c = DerivedMapBatches.Batch051.certificate4093.b := by decide
theorem firstValid868 : DerivedMapBatches.Batch048.certificate3918.Valid := DerivedMapBatches.Batch048.certificate3918valid
theorem secondValid868 : DerivedMapBatches.Batch051.certificate4092.Valid := DerivedMapBatches.Batch051.certificate4092valid
theorem outputValid868 : DerivedMapBatches.Batch051.certificate4093.Valid := DerivedMapBatches.Batch051.certificate4093valid
theorem linkedComposition868 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4093.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4093.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4092.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3918.c x) := by
  rw [firstLink868, secondLink868]
  exact DerivedMapBatches.Batch051.certificate4093valid.2 x
theorem firstLink869 : DerivedMapBatches.Batch049.certificate3921.c = DerivedMapBatches.Batch051.certificate4094.a := by decide
theorem secondLink869 : DerivedMapBatches.Batch050.certificate4039.c = DerivedMapBatches.Batch051.certificate4094.b := by decide
theorem firstValid869 : DerivedMapBatches.Batch049.certificate3921.Valid := DerivedMapBatches.Batch049.certificate3921valid
theorem secondValid869 : DerivedMapBatches.Batch050.certificate4039.Valid := DerivedMapBatches.Batch050.certificate4039valid
theorem outputValid869 : DerivedMapBatches.Batch051.certificate4094.Valid := DerivedMapBatches.Batch051.certificate4094valid
theorem linkedComposition869 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4094.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4094.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4039.c (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3921.c x) := by
  rw [firstLink869, secondLink869]
  exact DerivedMapBatches.Batch051.certificate4094valid.2 x
theorem firstLink870 : DerivedMapBatches.Batch051.certificate4095.algebra.mat = DerivedMapBatches.Batch051.certificate4097.a := by decide
theorem secondLink870 : DerivedMapBatches.Batch051.certificate4096.algebra.mat = DerivedMapBatches.Batch051.certificate4097.b := by decide
theorem firstValid870 : DerivedMapBatches.Batch051.certificate4095.Valid := DerivedMapBatches.Batch051.certificate4095valid
theorem secondValid870 : DerivedMapBatches.Batch051.certificate4096.Valid := DerivedMapBatches.Batch051.certificate4096valid
theorem outputValid870 : DerivedMapBatches.Batch051.certificate4097.Valid := DerivedMapBatches.Batch051.certificate4097valid
theorem linkedComposition870 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4097.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4097.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4096.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4095.algebra.mat x) := by
  rw [firstLink870, secondLink870]
  exact DerivedMapBatches.Batch051.certificate4097valid.2 x
theorem firstLink871 : DerivedMapBatches.Batch051.certificate4097.c = DerivedMapBatches.Batch051.certificate4099.a := by decide
theorem secondLink871 : DerivedMapBatches.Batch051.certificate4098.algebra.mat = DerivedMapBatches.Batch051.certificate4099.b := by decide
theorem firstValid871 : DerivedMapBatches.Batch051.certificate4097.Valid := DerivedMapBatches.Batch051.certificate4097valid
theorem secondValid871 : DerivedMapBatches.Batch051.certificate4098.Valid := DerivedMapBatches.Batch051.certificate4098valid
theorem outputValid871 : DerivedMapBatches.Batch051.certificate4099.Valid := DerivedMapBatches.Batch051.certificate4099valid
theorem linkedComposition871 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4099.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4099.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4098.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4097.c x) := by
  rw [firstLink871, secondLink871]
  exact DerivedMapBatches.Batch051.certificate4099valid.2 x
theorem firstLink872 : DerivedMapBatches.Batch051.certificate4099.c = DerivedMapBatches.Batch051.certificate4101.a := by decide
theorem secondLink872 : DerivedMapBatches.Batch051.certificate4100.algebra.mat = DerivedMapBatches.Batch051.certificate4101.b := by decide
theorem firstValid872 : DerivedMapBatches.Batch051.certificate4099.Valid := DerivedMapBatches.Batch051.certificate4099valid
theorem secondValid872 : DerivedMapBatches.Batch051.certificate4100.Valid := DerivedMapBatches.Batch051.certificate4100valid
theorem outputValid872 : DerivedMapBatches.Batch051.certificate4101.Valid := DerivedMapBatches.Batch051.certificate4101valid
theorem linkedComposition872 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4101.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4101.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4100.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4099.c x) := by
  rw [firstLink872, secondLink872]
  exact DerivedMapBatches.Batch051.certificate4101valid.2 x
theorem firstLink873 : DerivedMapBatches.Batch049.certificate3924.c = DerivedMapBatches.Batch051.certificate4102.a := by decide
theorem secondLink873 : DerivedMapBatches.Batch051.certificate4101.c = DerivedMapBatches.Batch051.certificate4102.b := by decide
theorem firstValid873 : DerivedMapBatches.Batch049.certificate3924.Valid := DerivedMapBatches.Batch049.certificate3924valid
theorem secondValid873 : DerivedMapBatches.Batch051.certificate4101.Valid := DerivedMapBatches.Batch051.certificate4101valid
theorem outputValid873 : DerivedMapBatches.Batch051.certificate4102.Valid := DerivedMapBatches.Batch051.certificate4102valid
theorem linkedComposition873 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4102.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4102.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4101.c (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3924.c x) := by
  rw [firstLink873, secondLink873]
  exact DerivedMapBatches.Batch051.certificate4102valid.2 x
theorem firstLink874 : DerivedMapBatches.Batch051.certificate4103.algebra.mat = DerivedMapBatches.Batch051.certificate4105.a := by decide
theorem secondLink874 : DerivedMapBatches.Batch051.certificate4104.algebra.mat = DerivedMapBatches.Batch051.certificate4105.b := by decide
theorem firstValid874 : DerivedMapBatches.Batch051.certificate4103.Valid := DerivedMapBatches.Batch051.certificate4103valid
theorem secondValid874 : DerivedMapBatches.Batch051.certificate4104.Valid := DerivedMapBatches.Batch051.certificate4104valid
theorem outputValid874 : DerivedMapBatches.Batch051.certificate4105.Valid := DerivedMapBatches.Batch051.certificate4105valid
theorem linkedComposition874 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4105.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4105.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4104.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4103.algebra.mat x) := by
  rw [firstLink874, secondLink874]
  exact DerivedMapBatches.Batch051.certificate4105valid.2 x
theorem firstLink875 : DerivedMapBatches.Batch051.certificate4105.c = DerivedMapBatches.Batch051.certificate4107.a := by decide
theorem secondLink875 : DerivedMapBatches.Batch051.certificate4106.algebra.mat = DerivedMapBatches.Batch051.certificate4107.b := by decide
theorem firstValid875 : DerivedMapBatches.Batch051.certificate4105.Valid := DerivedMapBatches.Batch051.certificate4105valid
theorem secondValid875 : DerivedMapBatches.Batch051.certificate4106.Valid := DerivedMapBatches.Batch051.certificate4106valid
theorem outputValid875 : DerivedMapBatches.Batch051.certificate4107.Valid := DerivedMapBatches.Batch051.certificate4107valid
theorem linkedComposition875 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4107.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4107.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4106.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4105.c x) := by
  rw [firstLink875, secondLink875]
  exact DerivedMapBatches.Batch051.certificate4107valid.2 x
theorem firstLink876 : DerivedMapBatches.Batch051.certificate4107.c = DerivedMapBatches.Batch051.certificate4109.a := by decide
theorem secondLink876 : DerivedMapBatches.Batch051.certificate4108.algebra.mat = DerivedMapBatches.Batch051.certificate4109.b := by decide
theorem firstValid876 : DerivedMapBatches.Batch051.certificate4107.Valid := DerivedMapBatches.Batch051.certificate4107valid
theorem secondValid876 : DerivedMapBatches.Batch051.certificate4108.Valid := DerivedMapBatches.Batch051.certificate4108valid
theorem outputValid876 : DerivedMapBatches.Batch051.certificate4109.Valid := DerivedMapBatches.Batch051.certificate4109valid
theorem linkedComposition876 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4109.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4109.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4108.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4107.c x) := by
  rw [firstLink876, secondLink876]
  exact DerivedMapBatches.Batch051.certificate4109valid.2 x
theorem firstLink877 : DerivedMapBatches.Batch049.certificate3927.c = DerivedMapBatches.Batch051.certificate4110.a := by decide
theorem secondLink877 : DerivedMapBatches.Batch051.certificate4109.c = DerivedMapBatches.Batch051.certificate4110.b := by decide
theorem firstValid877 : DerivedMapBatches.Batch049.certificate3927.Valid := DerivedMapBatches.Batch049.certificate3927valid
theorem secondValid877 : DerivedMapBatches.Batch051.certificate4109.Valid := DerivedMapBatches.Batch051.certificate4109valid
theorem outputValid877 : DerivedMapBatches.Batch051.certificate4110.Valid := DerivedMapBatches.Batch051.certificate4110valid
theorem linkedComposition877 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4110.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4110.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4109.c (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3927.c x) := by
  rw [firstLink877, secondLink877]
  exact DerivedMapBatches.Batch051.certificate4110valid.2 x
theorem firstLink878 : DerivedMapBatches.Batch051.certificate4111.algebra.mat = DerivedMapBatches.Batch051.certificate4113.a := by decide
theorem secondLink878 : DerivedMapBatches.Batch051.certificate4112.algebra.mat = DerivedMapBatches.Batch051.certificate4113.b := by decide
theorem firstValid878 : DerivedMapBatches.Batch051.certificate4111.Valid := DerivedMapBatches.Batch051.certificate4111valid
theorem secondValid878 : DerivedMapBatches.Batch051.certificate4112.Valid := DerivedMapBatches.Batch051.certificate4112valid
theorem outputValid878 : DerivedMapBatches.Batch051.certificate4113.Valid := DerivedMapBatches.Batch051.certificate4113valid
theorem linkedComposition878 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4113.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4113.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4112.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4111.algebra.mat x) := by
  rw [firstLink878, secondLink878]
  exact DerivedMapBatches.Batch051.certificate4113valid.2 x
theorem firstLink879 : DerivedMapBatches.Batch051.certificate4114.algebra.mat = DerivedMapBatches.Batch051.certificate4116.a := by decide
theorem secondLink879 : DerivedMapBatches.Batch051.certificate4115.algebra.mat = DerivedMapBatches.Batch051.certificate4116.b := by decide
theorem firstValid879 : DerivedMapBatches.Batch051.certificate4114.Valid := DerivedMapBatches.Batch051.certificate4114valid
theorem secondValid879 : DerivedMapBatches.Batch051.certificate4115.Valid := DerivedMapBatches.Batch051.certificate4115valid
theorem outputValid879 : DerivedMapBatches.Batch051.certificate4116.Valid := DerivedMapBatches.Batch051.certificate4116valid
theorem linkedComposition879 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4116.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4116.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4115.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4114.algebra.mat x) := by
  rw [firstLink879, secondLink879]
  exact DerivedMapBatches.Batch051.certificate4116valid.2 x
theorem firstLink880 : DerivedMapBatches.Batch051.certificate4117.algebra.mat = DerivedMapBatches.Batch051.certificate4119.a := by decide
theorem secondLink880 : DerivedMapBatches.Batch051.certificate4118.algebra.mat = DerivedMapBatches.Batch051.certificate4119.b := by decide
theorem firstValid880 : DerivedMapBatches.Batch051.certificate4117.Valid := DerivedMapBatches.Batch051.certificate4117valid
theorem secondValid880 : DerivedMapBatches.Batch051.certificate4118.Valid := DerivedMapBatches.Batch051.certificate4118valid
theorem outputValid880 : DerivedMapBatches.Batch051.certificate4119.Valid := DerivedMapBatches.Batch051.certificate4119valid
theorem linkedComposition880 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4119.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4119.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4118.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4117.algebra.mat x) := by
  rw [firstLink880, secondLink880]
  exact DerivedMapBatches.Batch051.certificate4119valid.2 x
theorem firstLink881 : DerivedMapBatches.Batch051.certificate4120.algebra.mat = DerivedMapBatches.Batch051.certificate4122.a := by decide
theorem secondLink881 : DerivedMapBatches.Batch051.certificate4121.algebra.mat = DerivedMapBatches.Batch051.certificate4122.b := by decide
theorem firstValid881 : DerivedMapBatches.Batch051.certificate4120.Valid := DerivedMapBatches.Batch051.certificate4120valid
theorem secondValid881 : DerivedMapBatches.Batch051.certificate4121.Valid := DerivedMapBatches.Batch051.certificate4121valid
theorem outputValid881 : DerivedMapBatches.Batch051.certificate4122.Valid := DerivedMapBatches.Batch051.certificate4122valid
theorem linkedComposition881 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4122.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4122.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4121.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4120.algebra.mat x) := by
  rw [firstLink881, secondLink881]
  exact DerivedMapBatches.Batch051.certificate4122valid.2 x
theorem firstLink882 : DerivedMapBatches.Batch051.certificate4123.algebra.mat = DerivedMapBatches.Batch051.certificate4125.a := by decide
theorem secondLink882 : DerivedMapBatches.Batch051.certificate4124.algebra.mat = DerivedMapBatches.Batch051.certificate4125.b := by decide
theorem firstValid882 : DerivedMapBatches.Batch051.certificate4123.Valid := DerivedMapBatches.Batch051.certificate4123valid
theorem secondValid882 : DerivedMapBatches.Batch051.certificate4124.Valid := DerivedMapBatches.Batch051.certificate4124valid
theorem outputValid882 : DerivedMapBatches.Batch051.certificate4125.Valid := DerivedMapBatches.Batch051.certificate4125valid
theorem linkedComposition882 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4125.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4125.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4124.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4123.algebra.mat x) := by
  rw [firstLink882, secondLink882]
  exact DerivedMapBatches.Batch051.certificate4125valid.2 x
theorem firstLink883 : DerivedMapBatches.Batch051.certificate4126.algebra.mat = DerivedMapBatches.Batch051.certificate4128.a := by decide
theorem secondLink883 : DerivedMapBatches.Batch051.certificate4127.algebra.mat = DerivedMapBatches.Batch051.certificate4128.b := by decide
theorem firstValid883 : DerivedMapBatches.Batch051.certificate4126.Valid := DerivedMapBatches.Batch051.certificate4126valid
theorem secondValid883 : DerivedMapBatches.Batch051.certificate4127.Valid := DerivedMapBatches.Batch051.certificate4127valid
theorem outputValid883 : DerivedMapBatches.Batch051.certificate4128.Valid := DerivedMapBatches.Batch051.certificate4128valid
theorem linkedComposition883 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4128.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4128.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4127.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4126.algebra.mat x) := by
  rw [firstLink883, secondLink883]
  exact DerivedMapBatches.Batch051.certificate4128valid.2 x
theorem firstLink884 : DerivedMapBatches.Batch051.certificate4129.algebra.mat = DerivedMapBatches.Batch051.certificate4131.a := by decide
theorem secondLink884 : DerivedMapBatches.Batch051.certificate4130.algebra.mat = DerivedMapBatches.Batch051.certificate4131.b := by decide
theorem firstValid884 : DerivedMapBatches.Batch051.certificate4129.Valid := DerivedMapBatches.Batch051.certificate4129valid
theorem secondValid884 : DerivedMapBatches.Batch051.certificate4130.Valid := DerivedMapBatches.Batch051.certificate4130valid
theorem outputValid884 : DerivedMapBatches.Batch051.certificate4131.Valid := DerivedMapBatches.Batch051.certificate4131valid
theorem linkedComposition884 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4131.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4131.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4129.algebra.mat x) := by
  rw [firstLink884, secondLink884]
  exact DerivedMapBatches.Batch051.certificate4131valid.2 x
theorem firstLink885 : DerivedMapBatches.Batch051.certificate4132.algebra.mat = DerivedMapBatches.Batch051.certificate4134.a := by decide
theorem secondLink885 : DerivedMapBatches.Batch051.certificate4133.algebra.mat = DerivedMapBatches.Batch051.certificate4134.b := by decide
theorem firstValid885 : DerivedMapBatches.Batch051.certificate4132.Valid := DerivedMapBatches.Batch051.certificate4132valid
theorem secondValid885 : DerivedMapBatches.Batch051.certificate4133.Valid := DerivedMapBatches.Batch051.certificate4133valid
theorem outputValid885 : DerivedMapBatches.Batch051.certificate4134.Valid := DerivedMapBatches.Batch051.certificate4134valid
theorem linkedComposition885 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4134.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4134.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4133.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4132.algebra.mat x) := by
  rw [firstLink885, secondLink885]
  exact DerivedMapBatches.Batch051.certificate4134valid.2 x
theorem firstLink886 : DerivedMapBatches.Batch051.certificate4135.algebra.mat = DerivedMapBatches.Batch051.certificate4137.a := by decide
theorem secondLink886 : DerivedMapBatches.Batch051.certificate4136.algebra.mat = DerivedMapBatches.Batch051.certificate4137.b := by decide
theorem firstValid886 : DerivedMapBatches.Batch051.certificate4135.Valid := DerivedMapBatches.Batch051.certificate4135valid
theorem secondValid886 : DerivedMapBatches.Batch051.certificate4136.Valid := DerivedMapBatches.Batch051.certificate4136valid
theorem outputValid886 : DerivedMapBatches.Batch051.certificate4137.Valid := DerivedMapBatches.Batch051.certificate4137valid
theorem linkedComposition886 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4137.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4137.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4136.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4135.algebra.mat x) := by
  rw [firstLink886, secondLink886]
  exact DerivedMapBatches.Batch051.certificate4137valid.2 x
theorem firstLink887 : DerivedMapBatches.Batch051.certificate4138.algebra.mat = DerivedMapBatches.Batch051.certificate4140.a := by decide
theorem secondLink887 : DerivedMapBatches.Batch051.certificate4139.algebra.mat = DerivedMapBatches.Batch051.certificate4140.b := by decide
theorem firstValid887 : DerivedMapBatches.Batch051.certificate4138.Valid := DerivedMapBatches.Batch051.certificate4138valid
theorem secondValid887 : DerivedMapBatches.Batch051.certificate4139.Valid := DerivedMapBatches.Batch051.certificate4139valid
theorem outputValid887 : DerivedMapBatches.Batch051.certificate4140.Valid := DerivedMapBatches.Batch051.certificate4140valid
theorem linkedComposition887 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4140.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4140.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4139.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4138.algebra.mat x) := by
  rw [firstLink887, secondLink887]
  exact DerivedMapBatches.Batch051.certificate4140valid.2 x
theorem firstLink888 : DerivedMapBatches.Batch051.certificate4141.algebra.mat = DerivedMapBatches.Batch051.certificate4143.a := by decide
theorem secondLink888 : DerivedMapBatches.Batch051.certificate4142.algebra.mat = DerivedMapBatches.Batch051.certificate4143.b := by decide
theorem firstValid888 : DerivedMapBatches.Batch051.certificate4141.Valid := DerivedMapBatches.Batch051.certificate4141valid
theorem secondValid888 : DerivedMapBatches.Batch051.certificate4142.Valid := DerivedMapBatches.Batch051.certificate4142valid
theorem outputValid888 : DerivedMapBatches.Batch051.certificate4143.Valid := DerivedMapBatches.Batch051.certificate4143valid
theorem linkedComposition888 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4143.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4143.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4141.algebra.mat x) := by
  rw [firstLink888, secondLink888]
  exact DerivedMapBatches.Batch051.certificate4143valid.2 x
theorem firstLink889 : DerivedMapBatches.Batch051.certificate4144.algebra.mat = DerivedMapBatches.Batch051.certificate4146.a := by decide
theorem secondLink889 : DerivedMapBatches.Batch051.certificate4145.algebra.mat = DerivedMapBatches.Batch051.certificate4146.b := by decide
theorem firstValid889 : DerivedMapBatches.Batch051.certificate4144.Valid := DerivedMapBatches.Batch051.certificate4144valid
theorem secondValid889 : DerivedMapBatches.Batch051.certificate4145.Valid := DerivedMapBatches.Batch051.certificate4145valid
theorem outputValid889 : DerivedMapBatches.Batch051.certificate4146.Valid := DerivedMapBatches.Batch051.certificate4146valid
theorem linkedComposition889 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4146.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4146.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4145.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4144.algebra.mat x) := by
  rw [firstLink889, secondLink889]
  exact DerivedMapBatches.Batch051.certificate4146valid.2 x
theorem firstLink890 : DerivedMapBatches.Batch051.certificate4147.algebra.mat = DerivedMapBatches.Batch051.certificate4149.a := by decide
theorem secondLink890 : DerivedMapBatches.Batch051.certificate4148.algebra.mat = DerivedMapBatches.Batch051.certificate4149.b := by decide
theorem firstValid890 : DerivedMapBatches.Batch051.certificate4147.Valid := DerivedMapBatches.Batch051.certificate4147valid
theorem secondValid890 : DerivedMapBatches.Batch051.certificate4148.Valid := DerivedMapBatches.Batch051.certificate4148valid
theorem outputValid890 : DerivedMapBatches.Batch051.certificate4149.Valid := DerivedMapBatches.Batch051.certificate4149valid
theorem linkedComposition890 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4149.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4149.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch051.certificate4147.algebra.mat x) := by
  rw [firstLink890, secondLink890]
  exact DerivedMapBatches.Batch051.certificate4149valid.2 x
theorem firstLink891 : DerivedMapBatches.Batch001.certificate104.algebra.mat = DerivedMapBatches.Batch051.certificate4150.a := by decide
theorem secondLink891 : DerivedMapBatches.Batch001.certificate131.algebra.mat = DerivedMapBatches.Batch051.certificate4150.b := by decide
theorem firstValid891 : DerivedMapBatches.Batch001.certificate104.Valid := DerivedMapBatches.Batch001.certificate104valid
theorem secondValid891 : DerivedMapBatches.Batch001.certificate131.Valid := DerivedMapBatches.Batch001.certificate131valid
theorem outputValid891 : DerivedMapBatches.Batch051.certificate4150.Valid := DerivedMapBatches.Batch051.certificate4150valid
theorem linkedComposition891 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4150.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4150.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate104.algebra.mat x) := by
  rw [firstLink891, secondLink891]
  exact DerivedMapBatches.Batch051.certificate4150valid.2 x
theorem outputZero891 : DerivedMapBatches.Batch051.certificate4150.c = (fun _ _ => false) := by decide
theorem linkedZero891 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4150.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate104.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition891, outputZero891]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink892 : DerivedMapBatches.Batch001.certificate105.algebra.mat = DerivedMapBatches.Batch051.certificate4151.a := by decide
theorem secondLink892 : DerivedMapBatches.Batch001.certificate135.algebra.mat = DerivedMapBatches.Batch051.certificate4151.b := by decide
theorem firstValid892 : DerivedMapBatches.Batch001.certificate105.Valid := DerivedMapBatches.Batch001.certificate105valid
theorem secondValid892 : DerivedMapBatches.Batch001.certificate135.Valid := DerivedMapBatches.Batch001.certificate135valid
theorem outputValid892 : DerivedMapBatches.Batch051.certificate4151.Valid := DerivedMapBatches.Batch051.certificate4151valid
theorem linkedComposition892 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4151.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4151.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) := by
  rw [firstLink892, secondLink892]
  exact DerivedMapBatches.Batch051.certificate4151valid.2 x
theorem outputZero892 : DerivedMapBatches.Batch051.certificate4151.c = (fun _ _ => false) := by decide
theorem linkedZero892 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4151.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate105.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition892, outputZero892]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink893 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch051.certificate4153.a := by decide
theorem secondLink893 : DerivedMapBatches.Batch051.certificate4152.algebra.mat = DerivedMapBatches.Batch051.certificate4153.b := by decide
theorem firstValid893 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem secondValid893 : DerivedMapBatches.Batch051.certificate4152.Valid := DerivedMapBatches.Batch051.certificate4152valid
theorem outputValid893 : DerivedMapBatches.Batch051.certificate4153.Valid := DerivedMapBatches.Batch051.certificate4153valid
theorem linkedComposition893 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4153.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4153.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) := by
  rw [firstLink893, secondLink893]
  exact DerivedMapBatches.Batch051.certificate4153valid.2 x
theorem outputZero893 : DerivedMapBatches.Batch051.certificate4153.c = (fun _ _ => false) := by decide
theorem linkedZero893 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4153.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition893, outputZero893]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink894 : DerivedMapBatches.Batch001.certificate107.algebra.mat = DerivedMapBatches.Batch051.certificate4154.a := by decide
theorem secondLink894 : DerivedMapBatches.Batch001.certificate137.algebra.mat = DerivedMapBatches.Batch051.certificate4154.b := by decide
theorem firstValid894 : DerivedMapBatches.Batch001.certificate107.Valid := DerivedMapBatches.Batch001.certificate107valid
theorem secondValid894 : DerivedMapBatches.Batch001.certificate137.Valid := DerivedMapBatches.Batch001.certificate137valid
theorem outputValid894 : DerivedMapBatches.Batch051.certificate4154.Valid := DerivedMapBatches.Batch051.certificate4154valid
theorem linkedComposition894 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4154.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4154.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) := by
  rw [firstLink894, secondLink894]
  exact DerivedMapBatches.Batch051.certificate4154valid.2 x
theorem outputZero894 : DerivedMapBatches.Batch051.certificate4154.c = (fun _ _ => false) := by decide
theorem linkedZero894 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4154.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate107.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition894, outputZero894]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink895 : DerivedMapBatches.Batch001.certificate108.algebra.mat = DerivedMapBatches.Batch051.certificate4155.a := by decide
theorem secondLink895 : DerivedMapBatches.Batch001.certificate139.algebra.mat = DerivedMapBatches.Batch051.certificate4155.b := by decide
theorem firstValid895 : DerivedMapBatches.Batch001.certificate108.Valid := DerivedMapBatches.Batch001.certificate108valid
theorem secondValid895 : DerivedMapBatches.Batch001.certificate139.Valid := DerivedMapBatches.Batch001.certificate139valid
theorem outputValid895 : DerivedMapBatches.Batch051.certificate4155.Valid := DerivedMapBatches.Batch051.certificate4155valid
theorem linkedComposition895 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4155.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) := by
  rw [firstLink895, secondLink895]
  exact DerivedMapBatches.Batch051.certificate4155valid.2 x
theorem outputZero895 : DerivedMapBatches.Batch051.certificate4155.c = (fun _ _ => false) := by decide
theorem linkedZero895 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate108.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition895, outputZero895]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink896 : DerivedMapBatches.Batch001.certificate109.algebra.mat = DerivedMapBatches.Batch051.certificate4156.a := by decide
theorem secondLink896 : DerivedMapBatches.Batch001.certificate141.algebra.mat = DerivedMapBatches.Batch051.certificate4156.b := by decide
theorem firstValid896 : DerivedMapBatches.Batch001.certificate109.Valid := DerivedMapBatches.Batch001.certificate109valid
theorem secondValid896 : DerivedMapBatches.Batch001.certificate141.Valid := DerivedMapBatches.Batch001.certificate141valid
theorem outputValid896 : DerivedMapBatches.Batch051.certificate4156.Valid := DerivedMapBatches.Batch051.certificate4156valid
theorem linkedComposition896 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4156.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4156.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) := by
  rw [firstLink896, secondLink896]
  exact DerivedMapBatches.Batch051.certificate4156valid.2 x
theorem outputZero896 : DerivedMapBatches.Batch051.certificate4156.c = (fun _ _ => false) := by decide
theorem linkedZero896 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4156.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate109.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition896, outputZero896]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink897 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch051.certificate4158.a := by decide
theorem secondLink897 : DerivedMapBatches.Batch051.certificate4157.algebra.mat = DerivedMapBatches.Batch051.certificate4158.b := by decide
theorem firstValid897 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem secondValid897 : DerivedMapBatches.Batch051.certificate4157.Valid := DerivedMapBatches.Batch051.certificate4157valid
theorem outputValid897 : DerivedMapBatches.Batch051.certificate4158.Valid := DerivedMapBatches.Batch051.certificate4158valid
theorem linkedComposition897 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4158.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4158.c x = LinearCertificates.eval DerivedMapBatches.Batch051.certificate4157.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) := by
  rw [firstLink897, secondLink897]
  exact DerivedMapBatches.Batch051.certificate4158valid.2 x
theorem outputZero897 : DerivedMapBatches.Batch051.certificate4158.c = (fun _ _ => false) := by decide
theorem linkedZero897 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4158.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4157.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition897, outputZero897]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink898 : DerivedMapBatches.Batch001.certificate111.algebra.mat = DerivedMapBatches.Batch051.certificate4159.a := by decide
theorem secondLink898 : DerivedMapBatches.Batch001.certificate142.algebra.mat = DerivedMapBatches.Batch051.certificate4159.b := by decide
theorem firstValid898 : DerivedMapBatches.Batch001.certificate111.Valid := DerivedMapBatches.Batch001.certificate111valid
theorem secondValid898 : DerivedMapBatches.Batch001.certificate142.Valid := DerivedMapBatches.Batch001.certificate142valid
theorem outputValid898 : DerivedMapBatches.Batch051.certificate4159.Valid := DerivedMapBatches.Batch051.certificate4159valid
theorem linkedComposition898 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4159.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch051.certificate4159.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) := by
  rw [firstLink898, secondLink898]
  exact DerivedMapBatches.Batch051.certificate4159valid.2 x
theorem outputZero898 : DerivedMapBatches.Batch051.certificate4159.c = (fun _ _ => false) := by decide
theorem linkedZero898 (x : LinearCertificates.Vec DerivedMapBatches.Batch051.certificate4159.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate111.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition898, outputZero898]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink899 : DerivedMapBatches.Batch001.certificate112.algebra.mat = DerivedMapBatches.Batch052.certificate4161.a := by decide
theorem secondLink899 : DerivedMapBatches.Batch052.certificate4160.algebra.mat = DerivedMapBatches.Batch052.certificate4161.b := by decide
theorem firstValid899 : DerivedMapBatches.Batch001.certificate112.Valid := DerivedMapBatches.Batch001.certificate112valid
theorem secondValid899 : DerivedMapBatches.Batch052.certificate4160.Valid := DerivedMapBatches.Batch052.certificate4160valid
theorem outputValid899 : DerivedMapBatches.Batch052.certificate4161.Valid := DerivedMapBatches.Batch052.certificate4161valid
theorem linkedComposition899 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4161.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) := by
  rw [firstLink899, secondLink899]
  exact DerivedMapBatches.Batch052.certificate4161valid.2 x
theorem outputZero899 : DerivedMapBatches.Batch052.certificate4161.c = (fun _ _ => false) := by decide
theorem linkedZero899 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate112.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition899, outputZero899]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch017
