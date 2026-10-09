import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch048
import DerivedMapBatches.Batch049
import DerivedMapBatches.Batch050
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch016
theorem firstLink800 : DerivedMapBatches.Batch049.certificate3930.c = DerivedMapBatches.Batch049.certificate3977.a := by decide
theorem secondLink800 : DerivedMapBatches.Batch049.certificate3976.algebra.mat = DerivedMapBatches.Batch049.certificate3977.b := by decide
theorem firstValid800 : DerivedMapBatches.Batch049.certificate3930.Valid := DerivedMapBatches.Batch049.certificate3930valid
theorem secondValid800 : DerivedMapBatches.Batch049.certificate3976.Valid := DerivedMapBatches.Batch049.certificate3976valid
theorem outputValid800 : DerivedMapBatches.Batch049.certificate3977.Valid := DerivedMapBatches.Batch049.certificate3977valid
theorem linkedComposition800 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3977.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3977.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3976.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3930.c x) := by
  rw [firstLink800, secondLink800]
  exact DerivedMapBatches.Batch049.certificate3977valid.2 x
theorem firstLink801 : DerivedMapBatches.Batch049.certificate3933.c = DerivedMapBatches.Batch049.certificate3979.a := by decide
theorem secondLink801 : DerivedMapBatches.Batch049.certificate3978.algebra.mat = DerivedMapBatches.Batch049.certificate3979.b := by decide
theorem firstValid801 : DerivedMapBatches.Batch049.certificate3933.Valid := DerivedMapBatches.Batch049.certificate3933valid
theorem secondValid801 : DerivedMapBatches.Batch049.certificate3978.Valid := DerivedMapBatches.Batch049.certificate3978valid
theorem outputValid801 : DerivedMapBatches.Batch049.certificate3979.Valid := DerivedMapBatches.Batch049.certificate3979valid
theorem linkedComposition801 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3979.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3979.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3933.c x) := by
  rw [firstLink801, secondLink801]
  exact DerivedMapBatches.Batch049.certificate3979valid.2 x
theorem firstLink802 : DerivedMapBatches.Batch049.certificate3936.c = DerivedMapBatches.Batch049.certificate3981.a := by decide
theorem secondLink802 : DerivedMapBatches.Batch049.certificate3980.algebra.mat = DerivedMapBatches.Batch049.certificate3981.b := by decide
theorem firstValid802 : DerivedMapBatches.Batch049.certificate3936.Valid := DerivedMapBatches.Batch049.certificate3936valid
theorem secondValid802 : DerivedMapBatches.Batch049.certificate3980.Valid := DerivedMapBatches.Batch049.certificate3980valid
theorem outputValid802 : DerivedMapBatches.Batch049.certificate3981.Valid := DerivedMapBatches.Batch049.certificate3981valid
theorem linkedComposition802 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3981.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3981.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3980.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3936.c x) := by
  rw [firstLink802, secondLink802]
  exact DerivedMapBatches.Batch049.certificate3981valid.2 x
theorem firstLink803 : DerivedMapBatches.Batch049.certificate3939.c = DerivedMapBatches.Batch049.certificate3983.a := by decide
theorem secondLink803 : DerivedMapBatches.Batch049.certificate3982.algebra.mat = DerivedMapBatches.Batch049.certificate3983.b := by decide
theorem firstValid803 : DerivedMapBatches.Batch049.certificate3939.Valid := DerivedMapBatches.Batch049.certificate3939valid
theorem secondValid803 : DerivedMapBatches.Batch049.certificate3982.Valid := DerivedMapBatches.Batch049.certificate3982valid
theorem outputValid803 : DerivedMapBatches.Batch049.certificate3983.Valid := DerivedMapBatches.Batch049.certificate3983valid
theorem linkedComposition803 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3983.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3983.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3982.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3939.c x) := by
  rw [firstLink803, secondLink803]
  exact DerivedMapBatches.Batch049.certificate3983valid.2 x
theorem firstLink804 : DerivedMapBatches.Batch049.certificate3942.c = DerivedMapBatches.Batch049.certificate3985.a := by decide
theorem secondLink804 : DerivedMapBatches.Batch049.certificate3984.algebra.mat = DerivedMapBatches.Batch049.certificate3985.b := by decide
theorem firstValid804 : DerivedMapBatches.Batch049.certificate3942.Valid := DerivedMapBatches.Batch049.certificate3942valid
theorem secondValid804 : DerivedMapBatches.Batch049.certificate3984.Valid := DerivedMapBatches.Batch049.certificate3984valid
theorem outputValid804 : DerivedMapBatches.Batch049.certificate3985.Valid := DerivedMapBatches.Batch049.certificate3985valid
theorem linkedComposition804 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3985.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3985.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3984.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3942.c x) := by
  rw [firstLink804, secondLink804]
  exact DerivedMapBatches.Batch049.certificate3985valid.2 x
theorem firstLink805 : DerivedMapBatches.Batch049.certificate3945.c = DerivedMapBatches.Batch049.certificate3987.a := by decide
theorem secondLink805 : DerivedMapBatches.Batch049.certificate3986.algebra.mat = DerivedMapBatches.Batch049.certificate3987.b := by decide
theorem firstValid805 : DerivedMapBatches.Batch049.certificate3945.Valid := DerivedMapBatches.Batch049.certificate3945valid
theorem secondValid805 : DerivedMapBatches.Batch049.certificate3986.Valid := DerivedMapBatches.Batch049.certificate3986valid
theorem outputValid805 : DerivedMapBatches.Batch049.certificate3987.Valid := DerivedMapBatches.Batch049.certificate3987valid
theorem linkedComposition805 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3987.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3987.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3986.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3945.c x) := by
  rw [firstLink805, secondLink805]
  exact DerivedMapBatches.Batch049.certificate3987valid.2 x
theorem firstLink806 : DerivedMapBatches.Batch049.certificate3948.c = DerivedMapBatches.Batch049.certificate3989.a := by decide
theorem secondLink806 : DerivedMapBatches.Batch049.certificate3988.algebra.mat = DerivedMapBatches.Batch049.certificate3989.b := by decide
theorem firstValid806 : DerivedMapBatches.Batch049.certificate3948.Valid := DerivedMapBatches.Batch049.certificate3948valid
theorem secondValid806 : DerivedMapBatches.Batch049.certificate3988.Valid := DerivedMapBatches.Batch049.certificate3988valid
theorem outputValid806 : DerivedMapBatches.Batch049.certificate3989.Valid := DerivedMapBatches.Batch049.certificate3989valid
theorem linkedComposition806 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3989.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3989.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3988.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3948.c x) := by
  rw [firstLink806, secondLink806]
  exact DerivedMapBatches.Batch049.certificate3989valid.2 x
theorem firstLink807 : DerivedMapBatches.Batch049.certificate3951.c = DerivedMapBatches.Batch049.certificate3991.a := by decide
theorem secondLink807 : DerivedMapBatches.Batch049.certificate3990.algebra.mat = DerivedMapBatches.Batch049.certificate3991.b := by decide
theorem firstValid807 : DerivedMapBatches.Batch049.certificate3951.Valid := DerivedMapBatches.Batch049.certificate3951valid
theorem secondValid807 : DerivedMapBatches.Batch049.certificate3990.Valid := DerivedMapBatches.Batch049.certificate3990valid
theorem outputValid807 : DerivedMapBatches.Batch049.certificate3991.Valid := DerivedMapBatches.Batch049.certificate3991valid
theorem linkedComposition807 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3991.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3991.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3990.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3951.c x) := by
  rw [firstLink807, secondLink807]
  exact DerivedMapBatches.Batch049.certificate3991valid.2 x
theorem firstLink808 : DerivedMapBatches.Batch049.certificate3954.c = DerivedMapBatches.Batch049.certificate3993.a := by decide
theorem secondLink808 : DerivedMapBatches.Batch049.certificate3992.algebra.mat = DerivedMapBatches.Batch049.certificate3993.b := by decide
theorem firstValid808 : DerivedMapBatches.Batch049.certificate3954.Valid := DerivedMapBatches.Batch049.certificate3954valid
theorem secondValid808 : DerivedMapBatches.Batch049.certificate3992.Valid := DerivedMapBatches.Batch049.certificate3992valid
theorem outputValid808 : DerivedMapBatches.Batch049.certificate3993.Valid := DerivedMapBatches.Batch049.certificate3993valid
theorem linkedComposition808 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3993.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3993.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3992.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3954.c x) := by
  rw [firstLink808, secondLink808]
  exact DerivedMapBatches.Batch049.certificate3993valid.2 x
theorem firstLink809 : DerivedMapBatches.Batch049.certificate3957.c = DerivedMapBatches.Batch049.certificate3995.a := by decide
theorem secondLink809 : DerivedMapBatches.Batch049.certificate3994.algebra.mat = DerivedMapBatches.Batch049.certificate3995.b := by decide
theorem firstValid809 : DerivedMapBatches.Batch049.certificate3957.Valid := DerivedMapBatches.Batch049.certificate3957valid
theorem secondValid809 : DerivedMapBatches.Batch049.certificate3994.Valid := DerivedMapBatches.Batch049.certificate3994valid
theorem outputValid809 : DerivedMapBatches.Batch049.certificate3995.Valid := DerivedMapBatches.Batch049.certificate3995valid
theorem linkedComposition809 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3995.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3995.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3994.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3957.c x) := by
  rw [firstLink809, secondLink809]
  exact DerivedMapBatches.Batch049.certificate3995valid.2 x
theorem firstLink810 : DerivedMapBatches.Batch049.certificate3960.c = DerivedMapBatches.Batch049.certificate3997.a := by decide
theorem secondLink810 : DerivedMapBatches.Batch049.certificate3996.algebra.mat = DerivedMapBatches.Batch049.certificate3997.b := by decide
theorem firstValid810 : DerivedMapBatches.Batch049.certificate3960.Valid := DerivedMapBatches.Batch049.certificate3960valid
theorem secondValid810 : DerivedMapBatches.Batch049.certificate3996.Valid := DerivedMapBatches.Batch049.certificate3996valid
theorem outputValid810 : DerivedMapBatches.Batch049.certificate3997.Valid := DerivedMapBatches.Batch049.certificate3997valid
theorem linkedComposition810 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3997.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3997.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3996.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3960.c x) := by
  rw [firstLink810, secondLink810]
  exact DerivedMapBatches.Batch049.certificate3997valid.2 x
theorem firstLink811 : DerivedMapBatches.Batch049.certificate3963.c = DerivedMapBatches.Batch049.certificate3999.a := by decide
theorem secondLink811 : DerivedMapBatches.Batch049.certificate3998.algebra.mat = DerivedMapBatches.Batch049.certificate3999.b := by decide
theorem firstValid811 : DerivedMapBatches.Batch049.certificate3963.Valid := DerivedMapBatches.Batch049.certificate3963valid
theorem secondValid811 : DerivedMapBatches.Batch049.certificate3998.Valid := DerivedMapBatches.Batch049.certificate3998valid
theorem outputValid811 : DerivedMapBatches.Batch049.certificate3999.Valid := DerivedMapBatches.Batch049.certificate3999valid
theorem linkedComposition811 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3999.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3999.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3998.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3963.c x) := by
  rw [firstLink811, secondLink811]
  exact DerivedMapBatches.Batch049.certificate3999valid.2 x
theorem firstLink812 : DerivedMapBatches.Batch049.certificate3966.c = DerivedMapBatches.Batch050.certificate4001.a := by decide
theorem secondLink812 : DerivedMapBatches.Batch050.certificate4000.algebra.mat = DerivedMapBatches.Batch050.certificate4001.b := by decide
theorem firstValid812 : DerivedMapBatches.Batch049.certificate3966.Valid := DerivedMapBatches.Batch049.certificate3966valid
theorem secondValid812 : DerivedMapBatches.Batch050.certificate4000.Valid := DerivedMapBatches.Batch050.certificate4000valid
theorem outputValid812 : DerivedMapBatches.Batch050.certificate4001.Valid := DerivedMapBatches.Batch050.certificate4001valid
theorem linkedComposition812 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4001.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4001.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4000.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3966.c x) := by
  rw [firstLink812, secondLink812]
  exact DerivedMapBatches.Batch050.certificate4001valid.2 x
theorem firstLink813 : DerivedMapBatches.Batch049.certificate3969.c = DerivedMapBatches.Batch050.certificate4003.a := by decide
theorem secondLink813 : DerivedMapBatches.Batch050.certificate4002.algebra.mat = DerivedMapBatches.Batch050.certificate4003.b := by decide
theorem firstValid813 : DerivedMapBatches.Batch049.certificate3969.Valid := DerivedMapBatches.Batch049.certificate3969valid
theorem secondValid813 : DerivedMapBatches.Batch050.certificate4002.Valid := DerivedMapBatches.Batch050.certificate4002valid
theorem outputValid813 : DerivedMapBatches.Batch050.certificate4003.Valid := DerivedMapBatches.Batch050.certificate4003valid
theorem linkedComposition813 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4003.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4003.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4002.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3969.c x) := by
  rw [firstLink813, secondLink813]
  exact DerivedMapBatches.Batch050.certificate4003valid.2 x
theorem firstLink814 : DerivedMapBatches.Batch049.certificate3972.c = DerivedMapBatches.Batch050.certificate4005.a := by decide
theorem secondLink814 : DerivedMapBatches.Batch050.certificate4004.algebra.mat = DerivedMapBatches.Batch050.certificate4005.b := by decide
theorem firstValid814 : DerivedMapBatches.Batch049.certificate3972.Valid := DerivedMapBatches.Batch049.certificate3972valid
theorem secondValid814 : DerivedMapBatches.Batch050.certificate4004.Valid := DerivedMapBatches.Batch050.certificate4004valid
theorem outputValid814 : DerivedMapBatches.Batch050.certificate4005.Valid := DerivedMapBatches.Batch050.certificate4005valid
theorem linkedComposition814 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4005.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4005.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4004.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3972.c x) := by
  rw [firstLink814, secondLink814]
  exact DerivedMapBatches.Batch050.certificate4005valid.2 x
theorem firstLink815 : DerivedMapBatches.Batch049.certificate3975.c = DerivedMapBatches.Batch050.certificate4007.a := by decide
theorem secondLink815 : DerivedMapBatches.Batch050.certificate4006.algebra.mat = DerivedMapBatches.Batch050.certificate4007.b := by decide
theorem firstValid815 : DerivedMapBatches.Batch049.certificate3975.Valid := DerivedMapBatches.Batch049.certificate3975valid
theorem secondValid815 : DerivedMapBatches.Batch050.certificate4006.Valid := DerivedMapBatches.Batch050.certificate4006valid
theorem outputValid815 : DerivedMapBatches.Batch050.certificate4007.Valid := DerivedMapBatches.Batch050.certificate4007valid
theorem linkedComposition815 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4007.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4007.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4006.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3975.c x) := by
  rw [firstLink815, secondLink815]
  exact DerivedMapBatches.Batch050.certificate4007valid.2 x
theorem firstLink816 : DerivedMapBatches.Batch049.certificate3977.c = DerivedMapBatches.Batch050.certificate4009.a := by decide
theorem secondLink816 : DerivedMapBatches.Batch050.certificate4008.algebra.mat = DerivedMapBatches.Batch050.certificate4009.b := by decide
theorem firstValid816 : DerivedMapBatches.Batch049.certificate3977.Valid := DerivedMapBatches.Batch049.certificate3977valid
theorem secondValid816 : DerivedMapBatches.Batch050.certificate4008.Valid := DerivedMapBatches.Batch050.certificate4008valid
theorem outputValid816 : DerivedMapBatches.Batch050.certificate4009.Valid := DerivedMapBatches.Batch050.certificate4009valid
theorem linkedComposition816 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4009.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4009.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4008.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3977.c x) := by
  rw [firstLink816, secondLink816]
  exact DerivedMapBatches.Batch050.certificate4009valid.2 x
theorem firstLink817 : DerivedMapBatches.Batch049.certificate3979.c = DerivedMapBatches.Batch050.certificate4011.a := by decide
theorem secondLink817 : DerivedMapBatches.Batch050.certificate4010.algebra.mat = DerivedMapBatches.Batch050.certificate4011.b := by decide
theorem firstValid817 : DerivedMapBatches.Batch049.certificate3979.Valid := DerivedMapBatches.Batch049.certificate3979valid
theorem secondValid817 : DerivedMapBatches.Batch050.certificate4010.Valid := DerivedMapBatches.Batch050.certificate4010valid
theorem outputValid817 : DerivedMapBatches.Batch050.certificate4011.Valid := DerivedMapBatches.Batch050.certificate4011valid
theorem linkedComposition817 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4011.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4011.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4010.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3979.c x) := by
  rw [firstLink817, secondLink817]
  exact DerivedMapBatches.Batch050.certificate4011valid.2 x
theorem firstLink818 : DerivedMapBatches.Batch049.certificate3981.c = DerivedMapBatches.Batch050.certificate4013.a := by decide
theorem secondLink818 : DerivedMapBatches.Batch050.certificate4012.algebra.mat = DerivedMapBatches.Batch050.certificate4013.b := by decide
theorem firstValid818 : DerivedMapBatches.Batch049.certificate3981.Valid := DerivedMapBatches.Batch049.certificate3981valid
theorem secondValid818 : DerivedMapBatches.Batch050.certificate4012.Valid := DerivedMapBatches.Batch050.certificate4012valid
theorem outputValid818 : DerivedMapBatches.Batch050.certificate4013.Valid := DerivedMapBatches.Batch050.certificate4013valid
theorem linkedComposition818 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4013.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4013.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4012.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3981.c x) := by
  rw [firstLink818, secondLink818]
  exact DerivedMapBatches.Batch050.certificate4013valid.2 x
theorem firstLink819 : DerivedMapBatches.Batch049.certificate3983.c = DerivedMapBatches.Batch050.certificate4015.a := by decide
theorem secondLink819 : DerivedMapBatches.Batch050.certificate4014.algebra.mat = DerivedMapBatches.Batch050.certificate4015.b := by decide
theorem firstValid819 : DerivedMapBatches.Batch049.certificate3983.Valid := DerivedMapBatches.Batch049.certificate3983valid
theorem secondValid819 : DerivedMapBatches.Batch050.certificate4014.Valid := DerivedMapBatches.Batch050.certificate4014valid
theorem outputValid819 : DerivedMapBatches.Batch050.certificate4015.Valid := DerivedMapBatches.Batch050.certificate4015valid
theorem linkedComposition819 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4015.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4015.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4014.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3983.c x) := by
  rw [firstLink819, secondLink819]
  exact DerivedMapBatches.Batch050.certificate4015valid.2 x
theorem firstLink820 : DerivedMapBatches.Batch049.certificate3985.c = DerivedMapBatches.Batch050.certificate4017.a := by decide
theorem secondLink820 : DerivedMapBatches.Batch050.certificate4016.algebra.mat = DerivedMapBatches.Batch050.certificate4017.b := by decide
theorem firstValid820 : DerivedMapBatches.Batch049.certificate3985.Valid := DerivedMapBatches.Batch049.certificate3985valid
theorem secondValid820 : DerivedMapBatches.Batch050.certificate4016.Valid := DerivedMapBatches.Batch050.certificate4016valid
theorem outputValid820 : DerivedMapBatches.Batch050.certificate4017.Valid := DerivedMapBatches.Batch050.certificate4017valid
theorem linkedComposition820 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4017.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4017.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4016.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3985.c x) := by
  rw [firstLink820, secondLink820]
  exact DerivedMapBatches.Batch050.certificate4017valid.2 x
theorem firstLink821 : DerivedMapBatches.Batch049.certificate3987.c = DerivedMapBatches.Batch050.certificate4019.a := by decide
theorem secondLink821 : DerivedMapBatches.Batch050.certificate4018.algebra.mat = DerivedMapBatches.Batch050.certificate4019.b := by decide
theorem firstValid821 : DerivedMapBatches.Batch049.certificate3987.Valid := DerivedMapBatches.Batch049.certificate3987valid
theorem secondValid821 : DerivedMapBatches.Batch050.certificate4018.Valid := DerivedMapBatches.Batch050.certificate4018valid
theorem outputValid821 : DerivedMapBatches.Batch050.certificate4019.Valid := DerivedMapBatches.Batch050.certificate4019valid
theorem linkedComposition821 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4019.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4019.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4018.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3987.c x) := by
  rw [firstLink821, secondLink821]
  exact DerivedMapBatches.Batch050.certificate4019valid.2 x
theorem firstLink822 : DerivedMapBatches.Batch049.certificate3989.c = DerivedMapBatches.Batch050.certificate4021.a := by decide
theorem secondLink822 : DerivedMapBatches.Batch050.certificate4020.algebra.mat = DerivedMapBatches.Batch050.certificate4021.b := by decide
theorem firstValid822 : DerivedMapBatches.Batch049.certificate3989.Valid := DerivedMapBatches.Batch049.certificate3989valid
theorem secondValid822 : DerivedMapBatches.Batch050.certificate4020.Valid := DerivedMapBatches.Batch050.certificate4020valid
theorem outputValid822 : DerivedMapBatches.Batch050.certificate4021.Valid := DerivedMapBatches.Batch050.certificate4021valid
theorem linkedComposition822 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4021.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4021.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4020.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3989.c x) := by
  rw [firstLink822, secondLink822]
  exact DerivedMapBatches.Batch050.certificate4021valid.2 x
theorem firstLink823 : DerivedMapBatches.Batch049.certificate3991.c = DerivedMapBatches.Batch050.certificate4023.a := by decide
theorem secondLink823 : DerivedMapBatches.Batch050.certificate4022.algebra.mat = DerivedMapBatches.Batch050.certificate4023.b := by decide
theorem firstValid823 : DerivedMapBatches.Batch049.certificate3991.Valid := DerivedMapBatches.Batch049.certificate3991valid
theorem secondValid823 : DerivedMapBatches.Batch050.certificate4022.Valid := DerivedMapBatches.Batch050.certificate4022valid
theorem outputValid823 : DerivedMapBatches.Batch050.certificate4023.Valid := DerivedMapBatches.Batch050.certificate4023valid
theorem linkedComposition823 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4023.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4023.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4022.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3991.c x) := by
  rw [firstLink823, secondLink823]
  exact DerivedMapBatches.Batch050.certificate4023valid.2 x
theorem firstLink824 : DerivedMapBatches.Batch049.certificate3993.c = DerivedMapBatches.Batch050.certificate4025.a := by decide
theorem secondLink824 : DerivedMapBatches.Batch050.certificate4024.algebra.mat = DerivedMapBatches.Batch050.certificate4025.b := by decide
theorem firstValid824 : DerivedMapBatches.Batch049.certificate3993.Valid := DerivedMapBatches.Batch049.certificate3993valid
theorem secondValid824 : DerivedMapBatches.Batch050.certificate4024.Valid := DerivedMapBatches.Batch050.certificate4024valid
theorem outputValid824 : DerivedMapBatches.Batch050.certificate4025.Valid := DerivedMapBatches.Batch050.certificate4025valid
theorem linkedComposition824 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4025.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4025.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4024.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3993.c x) := by
  rw [firstLink824, secondLink824]
  exact DerivedMapBatches.Batch050.certificate4025valid.2 x
theorem firstLink825 : DerivedMapBatches.Batch049.certificate3995.c = DerivedMapBatches.Batch050.certificate4027.a := by decide
theorem secondLink825 : DerivedMapBatches.Batch050.certificate4026.algebra.mat = DerivedMapBatches.Batch050.certificate4027.b := by decide
theorem firstValid825 : DerivedMapBatches.Batch049.certificate3995.Valid := DerivedMapBatches.Batch049.certificate3995valid
theorem secondValid825 : DerivedMapBatches.Batch050.certificate4026.Valid := DerivedMapBatches.Batch050.certificate4026valid
theorem outputValid825 : DerivedMapBatches.Batch050.certificate4027.Valid := DerivedMapBatches.Batch050.certificate4027valid
theorem linkedComposition825 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4027.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4027.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4026.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3995.c x) := by
  rw [firstLink825, secondLink825]
  exact DerivedMapBatches.Batch050.certificate4027valid.2 x
theorem firstLink826 : DerivedMapBatches.Batch049.certificate3997.c = DerivedMapBatches.Batch050.certificate4029.a := by decide
theorem secondLink826 : DerivedMapBatches.Batch050.certificate4028.algebra.mat = DerivedMapBatches.Batch050.certificate4029.b := by decide
theorem firstValid826 : DerivedMapBatches.Batch049.certificate3997.Valid := DerivedMapBatches.Batch049.certificate3997valid
theorem secondValid826 : DerivedMapBatches.Batch050.certificate4028.Valid := DerivedMapBatches.Batch050.certificate4028valid
theorem outputValid826 : DerivedMapBatches.Batch050.certificate4029.Valid := DerivedMapBatches.Batch050.certificate4029valid
theorem linkedComposition826 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4029.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4029.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4028.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3997.c x) := by
  rw [firstLink826, secondLink826]
  exact DerivedMapBatches.Batch050.certificate4029valid.2 x
theorem firstLink827 : DerivedMapBatches.Batch049.certificate3999.c = DerivedMapBatches.Batch050.certificate4031.a := by decide
theorem secondLink827 : DerivedMapBatches.Batch050.certificate4030.algebra.mat = DerivedMapBatches.Batch050.certificate4031.b := by decide
theorem firstValid827 : DerivedMapBatches.Batch049.certificate3999.Valid := DerivedMapBatches.Batch049.certificate3999valid
theorem secondValid827 : DerivedMapBatches.Batch050.certificate4030.Valid := DerivedMapBatches.Batch050.certificate4030valid
theorem outputValid827 : DerivedMapBatches.Batch050.certificate4031.Valid := DerivedMapBatches.Batch050.certificate4031valid
theorem linkedComposition827 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4031.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4031.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4030.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3999.c x) := by
  rw [firstLink827, secondLink827]
  exact DerivedMapBatches.Batch050.certificate4031valid.2 x
theorem firstLink828 : DerivedMapBatches.Batch050.certificate4001.c = DerivedMapBatches.Batch050.certificate4033.a := by decide
theorem secondLink828 : DerivedMapBatches.Batch050.certificate4032.algebra.mat = DerivedMapBatches.Batch050.certificate4033.b := by decide
theorem firstValid828 : DerivedMapBatches.Batch050.certificate4001.Valid := DerivedMapBatches.Batch050.certificate4001valid
theorem secondValid828 : DerivedMapBatches.Batch050.certificate4032.Valid := DerivedMapBatches.Batch050.certificate4032valid
theorem outputValid828 : DerivedMapBatches.Batch050.certificate4033.Valid := DerivedMapBatches.Batch050.certificate4033valid
theorem linkedComposition828 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4033.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4033.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4032.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4001.c x) := by
  rw [firstLink828, secondLink828]
  exact DerivedMapBatches.Batch050.certificate4033valid.2 x
theorem firstLink829 : DerivedMapBatches.Batch050.certificate4003.c = DerivedMapBatches.Batch050.certificate4035.a := by decide
theorem secondLink829 : DerivedMapBatches.Batch050.certificate4034.algebra.mat = DerivedMapBatches.Batch050.certificate4035.b := by decide
theorem firstValid829 : DerivedMapBatches.Batch050.certificate4003.Valid := DerivedMapBatches.Batch050.certificate4003valid
theorem secondValid829 : DerivedMapBatches.Batch050.certificate4034.Valid := DerivedMapBatches.Batch050.certificate4034valid
theorem outputValid829 : DerivedMapBatches.Batch050.certificate4035.Valid := DerivedMapBatches.Batch050.certificate4035valid
theorem linkedComposition829 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4035.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4035.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4034.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4003.c x) := by
  rw [firstLink829, secondLink829]
  exact DerivedMapBatches.Batch050.certificate4035valid.2 x
theorem firstLink830 : DerivedMapBatches.Batch050.certificate4005.c = DerivedMapBatches.Batch050.certificate4037.a := by decide
theorem secondLink830 : DerivedMapBatches.Batch050.certificate4036.algebra.mat = DerivedMapBatches.Batch050.certificate4037.b := by decide
theorem firstValid830 : DerivedMapBatches.Batch050.certificate4005.Valid := DerivedMapBatches.Batch050.certificate4005valid
theorem secondValid830 : DerivedMapBatches.Batch050.certificate4036.Valid := DerivedMapBatches.Batch050.certificate4036valid
theorem outputValid830 : DerivedMapBatches.Batch050.certificate4037.Valid := DerivedMapBatches.Batch050.certificate4037valid
theorem linkedComposition830 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4037.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4037.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4036.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4005.c x) := by
  rw [firstLink830, secondLink830]
  exact DerivedMapBatches.Batch050.certificate4037valid.2 x
theorem firstLink831 : DerivedMapBatches.Batch050.certificate4007.c = DerivedMapBatches.Batch050.certificate4039.a := by decide
theorem secondLink831 : DerivedMapBatches.Batch050.certificate4038.algebra.mat = DerivedMapBatches.Batch050.certificate4039.b := by decide
theorem firstValid831 : DerivedMapBatches.Batch050.certificate4007.Valid := DerivedMapBatches.Batch050.certificate4007valid
theorem secondValid831 : DerivedMapBatches.Batch050.certificate4038.Valid := DerivedMapBatches.Batch050.certificate4038valid
theorem outputValid831 : DerivedMapBatches.Batch050.certificate4039.Valid := DerivedMapBatches.Batch050.certificate4039valid
theorem linkedComposition831 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4039.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4039.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4038.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4007.c x) := by
  rw [firstLink831, secondLink831]
  exact DerivedMapBatches.Batch050.certificate4039valid.2 x
theorem firstLink832 : DerivedMapBatches.Batch048.certificate3884.algebra.mat = DerivedMapBatches.Batch050.certificate4040.a := by decide
theorem secondLink832 : DerivedMapBatches.Batch050.certificate4009.c = DerivedMapBatches.Batch050.certificate4040.b := by decide
theorem firstValid832 : DerivedMapBatches.Batch048.certificate3884.Valid := DerivedMapBatches.Batch048.certificate3884valid
theorem secondValid832 : DerivedMapBatches.Batch050.certificate4009.Valid := DerivedMapBatches.Batch050.certificate4009valid
theorem outputValid832 : DerivedMapBatches.Batch050.certificate4040.Valid := DerivedMapBatches.Batch050.certificate4040valid
theorem linkedComposition832 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4040.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4040.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4009.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3884.algebra.mat x) := by
  rw [firstLink832, secondLink832]
  exact DerivedMapBatches.Batch050.certificate4040valid.2 x
theorem firstLink833 : DerivedMapBatches.Batch050.certificate4041.algebra.mat = DerivedMapBatches.Batch050.certificate4042.a := by decide
theorem secondLink833 : DerivedMapBatches.Batch050.certificate4011.c = DerivedMapBatches.Batch050.certificate4042.b := by decide
theorem firstValid833 : DerivedMapBatches.Batch050.certificate4041.Valid := DerivedMapBatches.Batch050.certificate4041valid
theorem secondValid833 : DerivedMapBatches.Batch050.certificate4011.Valid := DerivedMapBatches.Batch050.certificate4011valid
theorem outputValid833 : DerivedMapBatches.Batch050.certificate4042.Valid := DerivedMapBatches.Batch050.certificate4042valid
theorem linkedComposition833 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4042.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4042.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4011.c (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4041.algebra.mat x) := by
  rw [firstLink833, secondLink833]
  exact DerivedMapBatches.Batch050.certificate4042valid.2 x
theorem firstLink834 : DerivedMapBatches.Batch048.certificate3887.algebra.mat = DerivedMapBatches.Batch050.certificate4043.a := by decide
theorem secondLink834 : DerivedMapBatches.Batch050.certificate4013.c = DerivedMapBatches.Batch050.certificate4043.b := by decide
theorem firstValid834 : DerivedMapBatches.Batch048.certificate3887.Valid := DerivedMapBatches.Batch048.certificate3887valid
theorem secondValid834 : DerivedMapBatches.Batch050.certificate4013.Valid := DerivedMapBatches.Batch050.certificate4013valid
theorem outputValid834 : DerivedMapBatches.Batch050.certificate4043.Valid := DerivedMapBatches.Batch050.certificate4043valid
theorem linkedComposition834 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4043.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4043.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4013.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3887.algebra.mat x) := by
  rw [firstLink834, secondLink834]
  exact DerivedMapBatches.Batch050.certificate4043valid.2 x
theorem firstLink835 : DerivedMapBatches.Batch048.certificate3890.algebra.mat = DerivedMapBatches.Batch050.certificate4044.a := by decide
theorem secondLink835 : DerivedMapBatches.Batch050.certificate4015.c = DerivedMapBatches.Batch050.certificate4044.b := by decide
theorem firstValid835 : DerivedMapBatches.Batch048.certificate3890.Valid := DerivedMapBatches.Batch048.certificate3890valid
theorem secondValid835 : DerivedMapBatches.Batch050.certificate4015.Valid := DerivedMapBatches.Batch050.certificate4015valid
theorem outputValid835 : DerivedMapBatches.Batch050.certificate4044.Valid := DerivedMapBatches.Batch050.certificate4044valid
theorem linkedComposition835 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4044.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4044.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4015.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3890.algebra.mat x) := by
  rw [firstLink835, secondLink835]
  exact DerivedMapBatches.Batch050.certificate4044valid.2 x
theorem firstLink836 : DerivedMapBatches.Batch048.certificate3893.algebra.mat = DerivedMapBatches.Batch050.certificate4045.a := by decide
theorem secondLink836 : DerivedMapBatches.Batch050.certificate4017.c = DerivedMapBatches.Batch050.certificate4045.b := by decide
theorem firstValid836 : DerivedMapBatches.Batch048.certificate3893.Valid := DerivedMapBatches.Batch048.certificate3893valid
theorem secondValid836 : DerivedMapBatches.Batch050.certificate4017.Valid := DerivedMapBatches.Batch050.certificate4017valid
theorem outputValid836 : DerivedMapBatches.Batch050.certificate4045.Valid := DerivedMapBatches.Batch050.certificate4045valid
theorem linkedComposition836 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4045.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4045.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4017.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3893.algebra.mat x) := by
  rw [firstLink836, secondLink836]
  exact DerivedMapBatches.Batch050.certificate4045valid.2 x
theorem firstLink837 : DerivedMapBatches.Batch050.certificate4046.algebra.mat = DerivedMapBatches.Batch050.certificate4047.a := by decide
theorem secondLink837 : DerivedMapBatches.Batch050.certificate4019.c = DerivedMapBatches.Batch050.certificate4047.b := by decide
theorem firstValid837 : DerivedMapBatches.Batch050.certificate4046.Valid := DerivedMapBatches.Batch050.certificate4046valid
theorem secondValid837 : DerivedMapBatches.Batch050.certificate4019.Valid := DerivedMapBatches.Batch050.certificate4019valid
theorem outputValid837 : DerivedMapBatches.Batch050.certificate4047.Valid := DerivedMapBatches.Batch050.certificate4047valid
theorem linkedComposition837 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4047.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4047.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4019.c (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4046.algebra.mat x) := by
  rw [firstLink837, secondLink837]
  exact DerivedMapBatches.Batch050.certificate4047valid.2 x
theorem firstLink838 : DerivedMapBatches.Batch048.certificate3896.algebra.mat = DerivedMapBatches.Batch050.certificate4048.a := by decide
theorem secondLink838 : DerivedMapBatches.Batch050.certificate4023.c = DerivedMapBatches.Batch050.certificate4048.b := by decide
theorem firstValid838 : DerivedMapBatches.Batch048.certificate3896.Valid := DerivedMapBatches.Batch048.certificate3896valid
theorem secondValid838 : DerivedMapBatches.Batch050.certificate4023.Valid := DerivedMapBatches.Batch050.certificate4023valid
theorem outputValid838 : DerivedMapBatches.Batch050.certificate4048.Valid := DerivedMapBatches.Batch050.certificate4048valid
theorem linkedComposition838 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4048.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4048.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4023.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3896.algebra.mat x) := by
  rw [firstLink838, secondLink838]
  exact DerivedMapBatches.Batch050.certificate4048valid.2 x
theorem firstLink839 : DerivedMapBatches.Batch050.certificate4049.algebra.mat = DerivedMapBatches.Batch050.certificate4050.a := by decide
theorem secondLink839 : DerivedMapBatches.Batch050.certificate4025.c = DerivedMapBatches.Batch050.certificate4050.b := by decide
theorem firstValid839 : DerivedMapBatches.Batch050.certificate4049.Valid := DerivedMapBatches.Batch050.certificate4049valid
theorem secondValid839 : DerivedMapBatches.Batch050.certificate4025.Valid := DerivedMapBatches.Batch050.certificate4025valid
theorem outputValid839 : DerivedMapBatches.Batch050.certificate4050.Valid := DerivedMapBatches.Batch050.certificate4050valid
theorem linkedComposition839 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4050.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4050.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4025.c (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4049.algebra.mat x) := by
  rw [firstLink839, secondLink839]
  exact DerivedMapBatches.Batch050.certificate4050valid.2 x
theorem firstLink840 : DerivedMapBatches.Batch048.certificate3899.algebra.mat = DerivedMapBatches.Batch050.certificate4051.a := by decide
theorem secondLink840 : DerivedMapBatches.Batch050.certificate4027.c = DerivedMapBatches.Batch050.certificate4051.b := by decide
theorem firstValid840 : DerivedMapBatches.Batch048.certificate3899.Valid := DerivedMapBatches.Batch048.certificate3899valid
theorem secondValid840 : DerivedMapBatches.Batch050.certificate4027.Valid := DerivedMapBatches.Batch050.certificate4027valid
theorem outputValid840 : DerivedMapBatches.Batch050.certificate4051.Valid := DerivedMapBatches.Batch050.certificate4051valid
theorem linkedComposition840 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4051.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4051.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4027.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3899.algebra.mat x) := by
  rw [firstLink840, secondLink840]
  exact DerivedMapBatches.Batch050.certificate4051valid.2 x
theorem firstLink841 : DerivedMapBatches.Batch050.certificate4053.algebra.mat = DerivedMapBatches.Batch050.certificate4055.a := by decide
theorem secondLink841 : DerivedMapBatches.Batch050.certificate4054.algebra.mat = DerivedMapBatches.Batch050.certificate4055.b := by decide
theorem firstValid841 : DerivedMapBatches.Batch050.certificate4053.Valid := DerivedMapBatches.Batch050.certificate4053valid
theorem secondValid841 : DerivedMapBatches.Batch050.certificate4054.Valid := DerivedMapBatches.Batch050.certificate4054valid
theorem outputValid841 : DerivedMapBatches.Batch050.certificate4055.Valid := DerivedMapBatches.Batch050.certificate4055valid
theorem linkedComposition841 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4055.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4055.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4054.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4053.algebra.mat x) := by
  rw [firstLink841, secondLink841]
  exact DerivedMapBatches.Batch050.certificate4055valid.2 x
theorem firstLink842 : DerivedMapBatches.Batch050.certificate4055.c = DerivedMapBatches.Batch050.certificate4057.a := by decide
theorem secondLink842 : DerivedMapBatches.Batch050.certificate4056.algebra.mat = DerivedMapBatches.Batch050.certificate4057.b := by decide
theorem firstValid842 : DerivedMapBatches.Batch050.certificate4055.Valid := DerivedMapBatches.Batch050.certificate4055valid
theorem secondValid842 : DerivedMapBatches.Batch050.certificate4056.Valid := DerivedMapBatches.Batch050.certificate4056valid
theorem outputValid842 : DerivedMapBatches.Batch050.certificate4057.Valid := DerivedMapBatches.Batch050.certificate4057valid
theorem linkedComposition842 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4057.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4057.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4056.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4055.c x) := by
  rw [firstLink842, secondLink842]
  exact DerivedMapBatches.Batch050.certificate4057valid.2 x
theorem firstLink843 : DerivedMapBatches.Batch050.certificate4057.c = DerivedMapBatches.Batch050.certificate4059.a := by decide
theorem secondLink843 : DerivedMapBatches.Batch050.certificate4058.algebra.mat = DerivedMapBatches.Batch050.certificate4059.b := by decide
theorem firstValid843 : DerivedMapBatches.Batch050.certificate4057.Valid := DerivedMapBatches.Batch050.certificate4057valid
theorem secondValid843 : DerivedMapBatches.Batch050.certificate4058.Valid := DerivedMapBatches.Batch050.certificate4058valid
theorem outputValid843 : DerivedMapBatches.Batch050.certificate4059.Valid := DerivedMapBatches.Batch050.certificate4059valid
theorem linkedComposition843 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4059.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4059.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4058.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4057.c x) := by
  rw [firstLink843, secondLink843]
  exact DerivedMapBatches.Batch050.certificate4059valid.2 x
theorem firstLink844 : DerivedMapBatches.Batch050.certificate4052.algebra.mat = DerivedMapBatches.Batch050.certificate4060.a := by decide
theorem secondLink844 : DerivedMapBatches.Batch050.certificate4059.c = DerivedMapBatches.Batch050.certificate4060.b := by decide
theorem firstValid844 : DerivedMapBatches.Batch050.certificate4052.Valid := DerivedMapBatches.Batch050.certificate4052valid
theorem secondValid844 : DerivedMapBatches.Batch050.certificate4059.Valid := DerivedMapBatches.Batch050.certificate4059valid
theorem outputValid844 : DerivedMapBatches.Batch050.certificate4060.Valid := DerivedMapBatches.Batch050.certificate4060valid
theorem linkedComposition844 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4060.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4060.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4059.c (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4052.algebra.mat x) := by
  rw [firstLink844, secondLink844]
  exact DerivedMapBatches.Batch050.certificate4060valid.2 x
theorem firstLink845 : DerivedMapBatches.Batch048.certificate3905.algebra.mat = DerivedMapBatches.Batch050.certificate4061.a := by decide
theorem secondLink845 : DerivedMapBatches.Batch050.certificate4029.c = DerivedMapBatches.Batch050.certificate4061.b := by decide
theorem firstValid845 : DerivedMapBatches.Batch048.certificate3905.Valid := DerivedMapBatches.Batch048.certificate3905valid
theorem secondValid845 : DerivedMapBatches.Batch050.certificate4029.Valid := DerivedMapBatches.Batch050.certificate4029valid
theorem outputValid845 : DerivedMapBatches.Batch050.certificate4061.Valid := DerivedMapBatches.Batch050.certificate4061valid
theorem linkedComposition845 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4061.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4061.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4029.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3905.algebra.mat x) := by
  rw [firstLink845, secondLink845]
  exact DerivedMapBatches.Batch050.certificate4061valid.2 x
theorem firstLink846 : DerivedMapBatches.Batch048.certificate3908.algebra.mat = DerivedMapBatches.Batch050.certificate4062.a := by decide
theorem secondLink846 : DerivedMapBatches.Batch050.certificate4031.c = DerivedMapBatches.Batch050.certificate4062.b := by decide
theorem firstValid846 : DerivedMapBatches.Batch048.certificate3908.Valid := DerivedMapBatches.Batch048.certificate3908valid
theorem secondValid846 : DerivedMapBatches.Batch050.certificate4031.Valid := DerivedMapBatches.Batch050.certificate4031valid
theorem outputValid846 : DerivedMapBatches.Batch050.certificate4062.Valid := DerivedMapBatches.Batch050.certificate4062valid
theorem linkedComposition846 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4062.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4062.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4031.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3908.algebra.mat x) := by
  rw [firstLink846, secondLink846]
  exact DerivedMapBatches.Batch050.certificate4062valid.2 x
theorem firstLink847 : DerivedMapBatches.Batch048.certificate3911.algebra.mat = DerivedMapBatches.Batch050.certificate4063.a := by decide
theorem secondLink847 : DerivedMapBatches.Batch050.certificate4033.c = DerivedMapBatches.Batch050.certificate4063.b := by decide
theorem firstValid847 : DerivedMapBatches.Batch048.certificate3911.Valid := DerivedMapBatches.Batch048.certificate3911valid
theorem secondValid847 : DerivedMapBatches.Batch050.certificate4033.Valid := DerivedMapBatches.Batch050.certificate4033valid
theorem outputValid847 : DerivedMapBatches.Batch050.certificate4063.Valid := DerivedMapBatches.Batch050.certificate4063valid
theorem linkedComposition847 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4063.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4063.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4033.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3911.algebra.mat x) := by
  rw [firstLink847, secondLink847]
  exact DerivedMapBatches.Batch050.certificate4063valid.2 x
theorem firstLink848 : DerivedMapBatches.Batch048.certificate3914.algebra.mat = DerivedMapBatches.Batch050.certificate4064.a := by decide
theorem secondLink848 : DerivedMapBatches.Batch050.certificate4035.c = DerivedMapBatches.Batch050.certificate4064.b := by decide
theorem firstValid848 : DerivedMapBatches.Batch048.certificate3914.Valid := DerivedMapBatches.Batch048.certificate3914valid
theorem secondValid848 : DerivedMapBatches.Batch050.certificate4035.Valid := DerivedMapBatches.Batch050.certificate4035valid
theorem outputValid848 : DerivedMapBatches.Batch050.certificate4064.Valid := DerivedMapBatches.Batch050.certificate4064valid
theorem linkedComposition848 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4064.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4064.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4035.c (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3914.algebra.mat x) := by
  rw [firstLink848, secondLink848]
  exact DerivedMapBatches.Batch050.certificate4064valid.2 x
theorem firstLink849 : DerivedMapBatches.Batch050.certificate4065.algebra.mat = DerivedMapBatches.Batch050.certificate4066.a := by decide
theorem secondLink849 : DerivedMapBatches.Batch050.certificate4037.c = DerivedMapBatches.Batch050.certificate4066.b := by decide
theorem firstValid849 : DerivedMapBatches.Batch050.certificate4065.Valid := DerivedMapBatches.Batch050.certificate4065valid
theorem secondValid849 : DerivedMapBatches.Batch050.certificate4037.Valid := DerivedMapBatches.Batch050.certificate4037valid
theorem outputValid849 : DerivedMapBatches.Batch050.certificate4066.Valid := DerivedMapBatches.Batch050.certificate4066valid
theorem linkedComposition849 (x : LinearCertificates.Vec DerivedMapBatches.Batch050.certificate4066.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch050.certificate4066.c x = LinearCertificates.eval DerivedMapBatches.Batch050.certificate4037.c (LinearCertificates.eval DerivedMapBatches.Batch050.certificate4065.algebra.mat x) := by
  rw [firstLink849, secondLink849]
  exact DerivedMapBatches.Batch050.certificate4066valid.2 x
end DerivedLinkageBatches.Batch016
