import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch046
import DerivedMapBatches.Batch047
import DerivedMapBatches.Batch048
import DerivedMapBatches.Batch049
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch015
theorem firstLink750 : DerivedMapBatches.Batch046.certificate3722.algebra.mat = DerivedMapBatches.Batch046.certificate3724.a := by decide
theorem secondLink750 : DerivedMapBatches.Batch046.certificate3723.algebra.mat = DerivedMapBatches.Batch046.certificate3724.b := by decide
theorem firstValid750 : DerivedMapBatches.Batch046.certificate3722.Valid := DerivedMapBatches.Batch046.certificate3722valid
theorem secondValid750 : DerivedMapBatches.Batch046.certificate3723.Valid := DerivedMapBatches.Batch046.certificate3723valid
theorem outputValid750 : DerivedMapBatches.Batch046.certificate3724.Valid := DerivedMapBatches.Batch046.certificate3724valid
theorem linkedComposition750 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3724.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3724.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3723.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3722.algebra.mat x) := by
  rw [firstLink750, secondLink750]
  exact DerivedMapBatches.Batch046.certificate3724valid.2 x
theorem firstLink751 : DerivedMapBatches.Batch046.certificate3725.algebra.mat = DerivedMapBatches.Batch046.certificate3727.a := by decide
theorem secondLink751 : DerivedMapBatches.Batch046.certificate3726.algebra.mat = DerivedMapBatches.Batch046.certificate3727.b := by decide
theorem firstValid751 : DerivedMapBatches.Batch046.certificate3725.Valid := DerivedMapBatches.Batch046.certificate3725valid
theorem secondValid751 : DerivedMapBatches.Batch046.certificate3726.Valid := DerivedMapBatches.Batch046.certificate3726valid
theorem outputValid751 : DerivedMapBatches.Batch046.certificate3727.Valid := DerivedMapBatches.Batch046.certificate3727valid
theorem linkedComposition751 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3727.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3727.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3726.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3725.algebra.mat x) := by
  rw [firstLink751, secondLink751]
  exact DerivedMapBatches.Batch046.certificate3727valid.2 x
theorem firstLink752 : DerivedMapBatches.Batch046.certificate3728.algebra.mat = DerivedMapBatches.Batch046.certificate3730.a := by decide
theorem secondLink752 : DerivedMapBatches.Batch046.certificate3729.algebra.mat = DerivedMapBatches.Batch046.certificate3730.b := by decide
theorem firstValid752 : DerivedMapBatches.Batch046.certificate3728.Valid := DerivedMapBatches.Batch046.certificate3728valid
theorem secondValid752 : DerivedMapBatches.Batch046.certificate3729.Valid := DerivedMapBatches.Batch046.certificate3729valid
theorem outputValid752 : DerivedMapBatches.Batch046.certificate3730.Valid := DerivedMapBatches.Batch046.certificate3730valid
theorem linkedComposition752 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3730.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3730.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3728.algebra.mat x) := by
  rw [firstLink752, secondLink752]
  exact DerivedMapBatches.Batch046.certificate3730valid.2 x
theorem firstLink753 : DerivedMapBatches.Batch046.certificate3731.algebra.mat = DerivedMapBatches.Batch046.certificate3733.a := by decide
theorem secondLink753 : DerivedMapBatches.Batch046.certificate3732.algebra.mat = DerivedMapBatches.Batch046.certificate3733.b := by decide
theorem firstValid753 : DerivedMapBatches.Batch046.certificate3731.Valid := DerivedMapBatches.Batch046.certificate3731valid
theorem secondValid753 : DerivedMapBatches.Batch046.certificate3732.Valid := DerivedMapBatches.Batch046.certificate3732valid
theorem outputValid753 : DerivedMapBatches.Batch046.certificate3733.Valid := DerivedMapBatches.Batch046.certificate3733valid
theorem linkedComposition753 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3733.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3733.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3731.algebra.mat x) := by
  rw [firstLink753, secondLink753]
  exact DerivedMapBatches.Batch046.certificate3733valid.2 x
theorem firstLink754 : DerivedMapBatches.Batch046.certificate3734.algebra.mat = DerivedMapBatches.Batch046.certificate3736.a := by decide
theorem secondLink754 : DerivedMapBatches.Batch046.certificate3735.algebra.mat = DerivedMapBatches.Batch046.certificate3736.b := by decide
theorem firstValid754 : DerivedMapBatches.Batch046.certificate3734.Valid := DerivedMapBatches.Batch046.certificate3734valid
theorem secondValid754 : DerivedMapBatches.Batch046.certificate3735.Valid := DerivedMapBatches.Batch046.certificate3735valid
theorem outputValid754 : DerivedMapBatches.Batch046.certificate3736.Valid := DerivedMapBatches.Batch046.certificate3736valid
theorem linkedComposition754 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3736.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3736.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3734.algebra.mat x) := by
  rw [firstLink754, secondLink754]
  exact DerivedMapBatches.Batch046.certificate3736valid.2 x
theorem firstLink755 : DerivedMapBatches.Batch046.certificate3737.algebra.mat = DerivedMapBatches.Batch046.certificate3739.a := by decide
theorem secondLink755 : DerivedMapBatches.Batch046.certificate3738.algebra.mat = DerivedMapBatches.Batch046.certificate3739.b := by decide
theorem firstValid755 : DerivedMapBatches.Batch046.certificate3737.Valid := DerivedMapBatches.Batch046.certificate3737valid
theorem secondValid755 : DerivedMapBatches.Batch046.certificate3738.Valid := DerivedMapBatches.Batch046.certificate3738valid
theorem outputValid755 : DerivedMapBatches.Batch046.certificate3739.Valid := DerivedMapBatches.Batch046.certificate3739valid
theorem linkedComposition755 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3739.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3739.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3737.algebra.mat x) := by
  rw [firstLink755, secondLink755]
  exact DerivedMapBatches.Batch046.certificate3739valid.2 x
theorem firstLink756 : DerivedMapBatches.Batch046.certificate3740.algebra.mat = DerivedMapBatches.Batch046.certificate3742.a := by decide
theorem secondLink756 : DerivedMapBatches.Batch046.certificate3741.algebra.mat = DerivedMapBatches.Batch046.certificate3742.b := by decide
theorem firstValid756 : DerivedMapBatches.Batch046.certificate3740.Valid := DerivedMapBatches.Batch046.certificate3740valid
theorem secondValid756 : DerivedMapBatches.Batch046.certificate3741.Valid := DerivedMapBatches.Batch046.certificate3741valid
theorem outputValid756 : DerivedMapBatches.Batch046.certificate3742.Valid := DerivedMapBatches.Batch046.certificate3742valid
theorem linkedComposition756 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3742.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3742.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3740.algebra.mat x) := by
  rw [firstLink756, secondLink756]
  exact DerivedMapBatches.Batch046.certificate3742valid.2 x
theorem firstLink757 : DerivedMapBatches.Batch046.certificate3743.algebra.mat = DerivedMapBatches.Batch046.certificate3745.a := by decide
theorem secondLink757 : DerivedMapBatches.Batch046.certificate3744.algebra.mat = DerivedMapBatches.Batch046.certificate3745.b := by decide
theorem firstValid757 : DerivedMapBatches.Batch046.certificate3743.Valid := DerivedMapBatches.Batch046.certificate3743valid
theorem secondValid757 : DerivedMapBatches.Batch046.certificate3744.Valid := DerivedMapBatches.Batch046.certificate3744valid
theorem outputValid757 : DerivedMapBatches.Batch046.certificate3745.Valid := DerivedMapBatches.Batch046.certificate3745valid
theorem linkedComposition757 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3745.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3745.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3743.algebra.mat x) := by
  rw [firstLink757, secondLink757]
  exact DerivedMapBatches.Batch046.certificate3745valid.2 x
theorem firstLink758 : DerivedMapBatches.Batch046.certificate3746.algebra.mat = DerivedMapBatches.Batch046.certificate3748.a := by decide
theorem secondLink758 : DerivedMapBatches.Batch046.certificate3747.algebra.mat = DerivedMapBatches.Batch046.certificate3748.b := by decide
theorem firstValid758 : DerivedMapBatches.Batch046.certificate3746.Valid := DerivedMapBatches.Batch046.certificate3746valid
theorem secondValid758 : DerivedMapBatches.Batch046.certificate3747.Valid := DerivedMapBatches.Batch046.certificate3747valid
theorem outputValid758 : DerivedMapBatches.Batch046.certificate3748.Valid := DerivedMapBatches.Batch046.certificate3748valid
theorem linkedComposition758 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3748.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3748.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3746.algebra.mat x) := by
  rw [firstLink758, secondLink758]
  exact DerivedMapBatches.Batch046.certificate3748valid.2 x
theorem firstLink759 : DerivedMapBatches.Batch046.certificate3749.algebra.mat = DerivedMapBatches.Batch046.certificate3751.a := by decide
theorem secondLink759 : DerivedMapBatches.Batch046.certificate3750.algebra.mat = DerivedMapBatches.Batch046.certificate3751.b := by decide
theorem firstValid759 : DerivedMapBatches.Batch046.certificate3749.Valid := DerivedMapBatches.Batch046.certificate3749valid
theorem secondValid759 : DerivedMapBatches.Batch046.certificate3750.Valid := DerivedMapBatches.Batch046.certificate3750valid
theorem outputValid759 : DerivedMapBatches.Batch046.certificate3751.Valid := DerivedMapBatches.Batch046.certificate3751valid
theorem linkedComposition759 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3751.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3751.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3749.algebra.mat x) := by
  rw [firstLink759, secondLink759]
  exact DerivedMapBatches.Batch046.certificate3751valid.2 x
theorem firstLink760 : DerivedMapBatches.Batch046.certificate3752.algebra.mat = DerivedMapBatches.Batch046.certificate3754.a := by decide
theorem secondLink760 : DerivedMapBatches.Batch046.certificate3753.algebra.mat = DerivedMapBatches.Batch046.certificate3754.b := by decide
theorem firstValid760 : DerivedMapBatches.Batch046.certificate3752.Valid := DerivedMapBatches.Batch046.certificate3752valid
theorem secondValid760 : DerivedMapBatches.Batch046.certificate3753.Valid := DerivedMapBatches.Batch046.certificate3753valid
theorem outputValid760 : DerivedMapBatches.Batch046.certificate3754.Valid := DerivedMapBatches.Batch046.certificate3754valid
theorem linkedComposition760 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3754.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3754.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3752.algebra.mat x) := by
  rw [firstLink760, secondLink760]
  exact DerivedMapBatches.Batch046.certificate3754valid.2 x
theorem firstLink761 : DerivedMapBatches.Batch046.certificate3755.algebra.mat = DerivedMapBatches.Batch046.certificate3757.a := by decide
theorem secondLink761 : DerivedMapBatches.Batch046.certificate3756.algebra.mat = DerivedMapBatches.Batch046.certificate3757.b := by decide
theorem firstValid761 : DerivedMapBatches.Batch046.certificate3755.Valid := DerivedMapBatches.Batch046.certificate3755valid
theorem secondValid761 : DerivedMapBatches.Batch046.certificate3756.Valid := DerivedMapBatches.Batch046.certificate3756valid
theorem outputValid761 : DerivedMapBatches.Batch046.certificate3757.Valid := DerivedMapBatches.Batch046.certificate3757valid
theorem linkedComposition761 (x : LinearCertificates.Vec DerivedMapBatches.Batch046.certificate3757.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch046.certificate3757.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3755.algebra.mat x) := by
  rw [firstLink761, secondLink761]
  exact DerivedMapBatches.Batch046.certificate3757valid.2 x
theorem firstLink762 : DerivedMapBatches.Batch046.certificate3758.algebra.mat = DerivedMapBatches.Batch047.certificate3760.a := by decide
theorem secondLink762 : DerivedMapBatches.Batch046.certificate3759.algebra.mat = DerivedMapBatches.Batch047.certificate3760.b := by decide
theorem firstValid762 : DerivedMapBatches.Batch046.certificate3758.Valid := DerivedMapBatches.Batch046.certificate3758valid
theorem secondValid762 : DerivedMapBatches.Batch046.certificate3759.Valid := DerivedMapBatches.Batch046.certificate3759valid
theorem outputValid762 : DerivedMapBatches.Batch047.certificate3760.Valid := DerivedMapBatches.Batch047.certificate3760valid
theorem linkedComposition762 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3760.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3760.c x = LinearCertificates.eval DerivedMapBatches.Batch046.certificate3759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch046.certificate3758.algebra.mat x) := by
  rw [firstLink762, secondLink762]
  exact DerivedMapBatches.Batch047.certificate3760valid.2 x
theorem firstLink763 : DerivedMapBatches.Batch047.certificate3761.algebra.mat = DerivedMapBatches.Batch047.certificate3763.a := by decide
theorem secondLink763 : DerivedMapBatches.Batch047.certificate3762.algebra.mat = DerivedMapBatches.Batch047.certificate3763.b := by decide
theorem firstValid763 : DerivedMapBatches.Batch047.certificate3761.Valid := DerivedMapBatches.Batch047.certificate3761valid
theorem secondValid763 : DerivedMapBatches.Batch047.certificate3762.Valid := DerivedMapBatches.Batch047.certificate3762valid
theorem outputValid763 : DerivedMapBatches.Batch047.certificate3763.Valid := DerivedMapBatches.Batch047.certificate3763valid
theorem linkedComposition763 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3763.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3763.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3761.algebra.mat x) := by
  rw [firstLink763, secondLink763]
  exact DerivedMapBatches.Batch047.certificate3763valid.2 x
theorem firstLink764 : DerivedMapBatches.Batch047.certificate3764.algebra.mat = DerivedMapBatches.Batch047.certificate3766.a := by decide
theorem secondLink764 : DerivedMapBatches.Batch047.certificate3765.algebra.mat = DerivedMapBatches.Batch047.certificate3766.b := by decide
theorem firstValid764 : DerivedMapBatches.Batch047.certificate3764.Valid := DerivedMapBatches.Batch047.certificate3764valid
theorem secondValid764 : DerivedMapBatches.Batch047.certificate3765.Valid := DerivedMapBatches.Batch047.certificate3765valid
theorem outputValid764 : DerivedMapBatches.Batch047.certificate3766.Valid := DerivedMapBatches.Batch047.certificate3766valid
theorem linkedComposition764 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3766.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3766.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3764.algebra.mat x) := by
  rw [firstLink764, secondLink764]
  exact DerivedMapBatches.Batch047.certificate3766valid.2 x
theorem firstLink765 : DerivedMapBatches.Batch047.certificate3767.algebra.mat = DerivedMapBatches.Batch047.certificate3769.a := by decide
theorem secondLink765 : DerivedMapBatches.Batch047.certificate3768.algebra.mat = DerivedMapBatches.Batch047.certificate3769.b := by decide
theorem firstValid765 : DerivedMapBatches.Batch047.certificate3767.Valid := DerivedMapBatches.Batch047.certificate3767valid
theorem secondValid765 : DerivedMapBatches.Batch047.certificate3768.Valid := DerivedMapBatches.Batch047.certificate3768valid
theorem outputValid765 : DerivedMapBatches.Batch047.certificate3769.Valid := DerivedMapBatches.Batch047.certificate3769valid
theorem linkedComposition765 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3769.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3769.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3767.algebra.mat x) := by
  rw [firstLink765, secondLink765]
  exact DerivedMapBatches.Batch047.certificate3769valid.2 x
theorem firstLink766 : DerivedMapBatches.Batch047.certificate3770.algebra.mat = DerivedMapBatches.Batch047.certificate3772.a := by decide
theorem secondLink766 : DerivedMapBatches.Batch047.certificate3771.algebra.mat = DerivedMapBatches.Batch047.certificate3772.b := by decide
theorem firstValid766 : DerivedMapBatches.Batch047.certificate3770.Valid := DerivedMapBatches.Batch047.certificate3770valid
theorem secondValid766 : DerivedMapBatches.Batch047.certificate3771.Valid := DerivedMapBatches.Batch047.certificate3771valid
theorem outputValid766 : DerivedMapBatches.Batch047.certificate3772.Valid := DerivedMapBatches.Batch047.certificate3772valid
theorem linkedComposition766 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3772.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3772.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3770.algebra.mat x) := by
  rw [firstLink766, secondLink766]
  exact DerivedMapBatches.Batch047.certificate3772valid.2 x
theorem firstLink767 : DerivedMapBatches.Batch047.certificate3773.algebra.mat = DerivedMapBatches.Batch047.certificate3775.a := by decide
theorem secondLink767 : DerivedMapBatches.Batch047.certificate3774.algebra.mat = DerivedMapBatches.Batch047.certificate3775.b := by decide
theorem firstValid767 : DerivedMapBatches.Batch047.certificate3773.Valid := DerivedMapBatches.Batch047.certificate3773valid
theorem secondValid767 : DerivedMapBatches.Batch047.certificate3774.Valid := DerivedMapBatches.Batch047.certificate3774valid
theorem outputValid767 : DerivedMapBatches.Batch047.certificate3775.Valid := DerivedMapBatches.Batch047.certificate3775valid
theorem linkedComposition767 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3775.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3775.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3773.algebra.mat x) := by
  rw [firstLink767, secondLink767]
  exact DerivedMapBatches.Batch047.certificate3775valid.2 x
theorem firstLink768 : DerivedMapBatches.Batch047.certificate3776.algebra.mat = DerivedMapBatches.Batch047.certificate3778.a := by decide
theorem secondLink768 : DerivedMapBatches.Batch047.certificate3777.algebra.mat = DerivedMapBatches.Batch047.certificate3778.b := by decide
theorem firstValid768 : DerivedMapBatches.Batch047.certificate3776.Valid := DerivedMapBatches.Batch047.certificate3776valid
theorem secondValid768 : DerivedMapBatches.Batch047.certificate3777.Valid := DerivedMapBatches.Batch047.certificate3777valid
theorem outputValid768 : DerivedMapBatches.Batch047.certificate3778.Valid := DerivedMapBatches.Batch047.certificate3778valid
theorem linkedComposition768 (x : LinearCertificates.Vec DerivedMapBatches.Batch047.certificate3778.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch047.certificate3778.c x = LinearCertificates.eval DerivedMapBatches.Batch047.certificate3777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch047.certificate3776.algebra.mat x) := by
  rw [firstLink768, secondLink768]
  exact DerivedMapBatches.Batch047.certificate3778valid.2 x
theorem firstLink769 : DerivedMapBatches.Batch048.certificate3883.algebra.mat = DerivedMapBatches.Batch048.certificate3885.a := by decide
theorem secondLink769 : DerivedMapBatches.Batch048.certificate3884.algebra.mat = DerivedMapBatches.Batch048.certificate3885.b := by decide
theorem firstValid769 : DerivedMapBatches.Batch048.certificate3883.Valid := DerivedMapBatches.Batch048.certificate3883valid
theorem secondValid769 : DerivedMapBatches.Batch048.certificate3884.Valid := DerivedMapBatches.Batch048.certificate3884valid
theorem outputValid769 : DerivedMapBatches.Batch048.certificate3885.Valid := DerivedMapBatches.Batch048.certificate3885valid
theorem linkedComposition769 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3885.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3885.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3884.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3883.algebra.mat x) := by
  rw [firstLink769, secondLink769]
  exact DerivedMapBatches.Batch048.certificate3885valid.2 x
theorem firstLink770 : DerivedMapBatches.Batch048.certificate3886.algebra.mat = DerivedMapBatches.Batch048.certificate3888.a := by decide
theorem secondLink770 : DerivedMapBatches.Batch048.certificate3887.algebra.mat = DerivedMapBatches.Batch048.certificate3888.b := by decide
theorem firstValid770 : DerivedMapBatches.Batch048.certificate3886.Valid := DerivedMapBatches.Batch048.certificate3886valid
theorem secondValid770 : DerivedMapBatches.Batch048.certificate3887.Valid := DerivedMapBatches.Batch048.certificate3887valid
theorem outputValid770 : DerivedMapBatches.Batch048.certificate3888.Valid := DerivedMapBatches.Batch048.certificate3888valid
theorem linkedComposition770 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3888.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3888.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3887.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3886.algebra.mat x) := by
  rw [firstLink770, secondLink770]
  exact DerivedMapBatches.Batch048.certificate3888valid.2 x
theorem firstLink771 : DerivedMapBatches.Batch048.certificate3889.algebra.mat = DerivedMapBatches.Batch048.certificate3891.a := by decide
theorem secondLink771 : DerivedMapBatches.Batch048.certificate3890.algebra.mat = DerivedMapBatches.Batch048.certificate3891.b := by decide
theorem firstValid771 : DerivedMapBatches.Batch048.certificate3889.Valid := DerivedMapBatches.Batch048.certificate3889valid
theorem secondValid771 : DerivedMapBatches.Batch048.certificate3890.Valid := DerivedMapBatches.Batch048.certificate3890valid
theorem outputValid771 : DerivedMapBatches.Batch048.certificate3891.Valid := DerivedMapBatches.Batch048.certificate3891valid
theorem linkedComposition771 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3891.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3891.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3890.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3889.algebra.mat x) := by
  rw [firstLink771, secondLink771]
  exact DerivedMapBatches.Batch048.certificate3891valid.2 x
theorem firstLink772 : DerivedMapBatches.Batch048.certificate3892.algebra.mat = DerivedMapBatches.Batch048.certificate3894.a := by decide
theorem secondLink772 : DerivedMapBatches.Batch048.certificate3893.algebra.mat = DerivedMapBatches.Batch048.certificate3894.b := by decide
theorem firstValid772 : DerivedMapBatches.Batch048.certificate3892.Valid := DerivedMapBatches.Batch048.certificate3892valid
theorem secondValid772 : DerivedMapBatches.Batch048.certificate3893.Valid := DerivedMapBatches.Batch048.certificate3893valid
theorem outputValid772 : DerivedMapBatches.Batch048.certificate3894.Valid := DerivedMapBatches.Batch048.certificate3894valid
theorem linkedComposition772 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3894.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3894.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3893.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3892.algebra.mat x) := by
  rw [firstLink772, secondLink772]
  exact DerivedMapBatches.Batch048.certificate3894valid.2 x
theorem firstLink773 : DerivedMapBatches.Batch048.certificate3895.algebra.mat = DerivedMapBatches.Batch048.certificate3897.a := by decide
theorem secondLink773 : DerivedMapBatches.Batch048.certificate3896.algebra.mat = DerivedMapBatches.Batch048.certificate3897.b := by decide
theorem firstValid773 : DerivedMapBatches.Batch048.certificate3895.Valid := DerivedMapBatches.Batch048.certificate3895valid
theorem secondValid773 : DerivedMapBatches.Batch048.certificate3896.Valid := DerivedMapBatches.Batch048.certificate3896valid
theorem outputValid773 : DerivedMapBatches.Batch048.certificate3897.Valid := DerivedMapBatches.Batch048.certificate3897valid
theorem linkedComposition773 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3897.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3897.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3896.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3895.algebra.mat x) := by
  rw [firstLink773, secondLink773]
  exact DerivedMapBatches.Batch048.certificate3897valid.2 x
theorem firstLink774 : DerivedMapBatches.Batch048.certificate3898.algebra.mat = DerivedMapBatches.Batch048.certificate3900.a := by decide
theorem secondLink774 : DerivedMapBatches.Batch048.certificate3899.algebra.mat = DerivedMapBatches.Batch048.certificate3900.b := by decide
theorem firstValid774 : DerivedMapBatches.Batch048.certificate3898.Valid := DerivedMapBatches.Batch048.certificate3898valid
theorem secondValid774 : DerivedMapBatches.Batch048.certificate3899.Valid := DerivedMapBatches.Batch048.certificate3899valid
theorem outputValid774 : DerivedMapBatches.Batch048.certificate3900.Valid := DerivedMapBatches.Batch048.certificate3900valid
theorem linkedComposition774 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3900.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3900.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3899.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3898.algebra.mat x) := by
  rw [firstLink774, secondLink774]
  exact DerivedMapBatches.Batch048.certificate3900valid.2 x
theorem firstLink775 : DerivedMapBatches.Batch048.certificate3901.algebra.mat = DerivedMapBatches.Batch048.certificate3903.a := by decide
theorem secondLink775 : DerivedMapBatches.Batch048.certificate3902.algebra.mat = DerivedMapBatches.Batch048.certificate3903.b := by decide
theorem firstValid775 : DerivedMapBatches.Batch048.certificate3901.Valid := DerivedMapBatches.Batch048.certificate3901valid
theorem secondValid775 : DerivedMapBatches.Batch048.certificate3902.Valid := DerivedMapBatches.Batch048.certificate3902valid
theorem outputValid775 : DerivedMapBatches.Batch048.certificate3903.Valid := DerivedMapBatches.Batch048.certificate3903valid
theorem linkedComposition775 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3903.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3903.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3902.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3901.algebra.mat x) := by
  rw [firstLink775, secondLink775]
  exact DerivedMapBatches.Batch048.certificate3903valid.2 x
theorem firstLink776 : DerivedMapBatches.Batch048.certificate3904.algebra.mat = DerivedMapBatches.Batch048.certificate3906.a := by decide
theorem secondLink776 : DerivedMapBatches.Batch048.certificate3905.algebra.mat = DerivedMapBatches.Batch048.certificate3906.b := by decide
theorem firstValid776 : DerivedMapBatches.Batch048.certificate3904.Valid := DerivedMapBatches.Batch048.certificate3904valid
theorem secondValid776 : DerivedMapBatches.Batch048.certificate3905.Valid := DerivedMapBatches.Batch048.certificate3905valid
theorem outputValid776 : DerivedMapBatches.Batch048.certificate3906.Valid := DerivedMapBatches.Batch048.certificate3906valid
theorem linkedComposition776 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3906.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3906.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3905.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3904.algebra.mat x) := by
  rw [firstLink776, secondLink776]
  exact DerivedMapBatches.Batch048.certificate3906valid.2 x
theorem firstLink777 : DerivedMapBatches.Batch048.certificate3907.algebra.mat = DerivedMapBatches.Batch048.certificate3909.a := by decide
theorem secondLink777 : DerivedMapBatches.Batch048.certificate3908.algebra.mat = DerivedMapBatches.Batch048.certificate3909.b := by decide
theorem firstValid777 : DerivedMapBatches.Batch048.certificate3907.Valid := DerivedMapBatches.Batch048.certificate3907valid
theorem secondValid777 : DerivedMapBatches.Batch048.certificate3908.Valid := DerivedMapBatches.Batch048.certificate3908valid
theorem outputValid777 : DerivedMapBatches.Batch048.certificate3909.Valid := DerivedMapBatches.Batch048.certificate3909valid
theorem linkedComposition777 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3909.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3909.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3908.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3907.algebra.mat x) := by
  rw [firstLink777, secondLink777]
  exact DerivedMapBatches.Batch048.certificate3909valid.2 x
theorem firstLink778 : DerivedMapBatches.Batch048.certificate3910.algebra.mat = DerivedMapBatches.Batch048.certificate3912.a := by decide
theorem secondLink778 : DerivedMapBatches.Batch048.certificate3911.algebra.mat = DerivedMapBatches.Batch048.certificate3912.b := by decide
theorem firstValid778 : DerivedMapBatches.Batch048.certificate3910.Valid := DerivedMapBatches.Batch048.certificate3910valid
theorem secondValid778 : DerivedMapBatches.Batch048.certificate3911.Valid := DerivedMapBatches.Batch048.certificate3911valid
theorem outputValid778 : DerivedMapBatches.Batch048.certificate3912.Valid := DerivedMapBatches.Batch048.certificate3912valid
theorem linkedComposition778 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3912.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3912.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3911.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3910.algebra.mat x) := by
  rw [firstLink778, secondLink778]
  exact DerivedMapBatches.Batch048.certificate3912valid.2 x
theorem firstLink779 : DerivedMapBatches.Batch048.certificate3913.algebra.mat = DerivedMapBatches.Batch048.certificate3915.a := by decide
theorem secondLink779 : DerivedMapBatches.Batch048.certificate3914.algebra.mat = DerivedMapBatches.Batch048.certificate3915.b := by decide
theorem firstValid779 : DerivedMapBatches.Batch048.certificate3913.Valid := DerivedMapBatches.Batch048.certificate3913valid
theorem secondValid779 : DerivedMapBatches.Batch048.certificate3914.Valid := DerivedMapBatches.Batch048.certificate3914valid
theorem outputValid779 : DerivedMapBatches.Batch048.certificate3915.Valid := DerivedMapBatches.Batch048.certificate3915valid
theorem linkedComposition779 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3915.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3915.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3914.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3913.algebra.mat x) := by
  rw [firstLink779, secondLink779]
  exact DerivedMapBatches.Batch048.certificate3915valid.2 x
theorem firstLink780 : DerivedMapBatches.Batch048.certificate3916.algebra.mat = DerivedMapBatches.Batch048.certificate3918.a := by decide
theorem secondLink780 : DerivedMapBatches.Batch048.certificate3917.algebra.mat = DerivedMapBatches.Batch048.certificate3918.b := by decide
theorem firstValid780 : DerivedMapBatches.Batch048.certificate3916.Valid := DerivedMapBatches.Batch048.certificate3916valid
theorem secondValid780 : DerivedMapBatches.Batch048.certificate3917.Valid := DerivedMapBatches.Batch048.certificate3917valid
theorem outputValid780 : DerivedMapBatches.Batch048.certificate3918.Valid := DerivedMapBatches.Batch048.certificate3918valid
theorem linkedComposition780 (x : LinearCertificates.Vec DerivedMapBatches.Batch048.certificate3918.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch048.certificate3918.c x = LinearCertificates.eval DerivedMapBatches.Batch048.certificate3917.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3916.algebra.mat x) := by
  rw [firstLink780, secondLink780]
  exact DerivedMapBatches.Batch048.certificate3918valid.2 x
theorem firstLink781 : DerivedMapBatches.Batch048.certificate3919.algebra.mat = DerivedMapBatches.Batch049.certificate3921.a := by decide
theorem secondLink781 : DerivedMapBatches.Batch049.certificate3920.algebra.mat = DerivedMapBatches.Batch049.certificate3921.b := by decide
theorem firstValid781 : DerivedMapBatches.Batch048.certificate3919.Valid := DerivedMapBatches.Batch048.certificate3919valid
theorem secondValid781 : DerivedMapBatches.Batch049.certificate3920.Valid := DerivedMapBatches.Batch049.certificate3920valid
theorem outputValid781 : DerivedMapBatches.Batch049.certificate3921.Valid := DerivedMapBatches.Batch049.certificate3921valid
theorem linkedComposition781 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3921.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3921.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3920.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch048.certificate3919.algebra.mat x) := by
  rw [firstLink781, secondLink781]
  exact DerivedMapBatches.Batch049.certificate3921valid.2 x
theorem firstLink782 : DerivedMapBatches.Batch049.certificate3922.algebra.mat = DerivedMapBatches.Batch049.certificate3924.a := by decide
theorem secondLink782 : DerivedMapBatches.Batch049.certificate3923.algebra.mat = DerivedMapBatches.Batch049.certificate3924.b := by decide
theorem firstValid782 : DerivedMapBatches.Batch049.certificate3922.Valid := DerivedMapBatches.Batch049.certificate3922valid
theorem secondValid782 : DerivedMapBatches.Batch049.certificate3923.Valid := DerivedMapBatches.Batch049.certificate3923valid
theorem outputValid782 : DerivedMapBatches.Batch049.certificate3924.Valid := DerivedMapBatches.Batch049.certificate3924valid
theorem linkedComposition782 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3924.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3924.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3923.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3922.algebra.mat x) := by
  rw [firstLink782, secondLink782]
  exact DerivedMapBatches.Batch049.certificate3924valid.2 x
theorem firstLink783 : DerivedMapBatches.Batch049.certificate3925.algebra.mat = DerivedMapBatches.Batch049.certificate3927.a := by decide
theorem secondLink783 : DerivedMapBatches.Batch049.certificate3926.algebra.mat = DerivedMapBatches.Batch049.certificate3927.b := by decide
theorem firstValid783 : DerivedMapBatches.Batch049.certificate3925.Valid := DerivedMapBatches.Batch049.certificate3925valid
theorem secondValid783 : DerivedMapBatches.Batch049.certificate3926.Valid := DerivedMapBatches.Batch049.certificate3926valid
theorem outputValid783 : DerivedMapBatches.Batch049.certificate3927.Valid := DerivedMapBatches.Batch049.certificate3927valid
theorem linkedComposition783 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3927.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3927.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3926.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3925.algebra.mat x) := by
  rw [firstLink783, secondLink783]
  exact DerivedMapBatches.Batch049.certificate3927valid.2 x
theorem firstLink784 : DerivedMapBatches.Batch049.certificate3928.algebra.mat = DerivedMapBatches.Batch049.certificate3930.a := by decide
theorem secondLink784 : DerivedMapBatches.Batch049.certificate3929.algebra.mat = DerivedMapBatches.Batch049.certificate3930.b := by decide
theorem firstValid784 : DerivedMapBatches.Batch049.certificate3928.Valid := DerivedMapBatches.Batch049.certificate3928valid
theorem secondValid784 : DerivedMapBatches.Batch049.certificate3929.Valid := DerivedMapBatches.Batch049.certificate3929valid
theorem outputValid784 : DerivedMapBatches.Batch049.certificate3930.Valid := DerivedMapBatches.Batch049.certificate3930valid
theorem linkedComposition784 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3930.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3930.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3929.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3928.algebra.mat x) := by
  rw [firstLink784, secondLink784]
  exact DerivedMapBatches.Batch049.certificate3930valid.2 x
theorem firstLink785 : DerivedMapBatches.Batch049.certificate3931.algebra.mat = DerivedMapBatches.Batch049.certificate3933.a := by decide
theorem secondLink785 : DerivedMapBatches.Batch049.certificate3932.algebra.mat = DerivedMapBatches.Batch049.certificate3933.b := by decide
theorem firstValid785 : DerivedMapBatches.Batch049.certificate3931.Valid := DerivedMapBatches.Batch049.certificate3931valid
theorem secondValid785 : DerivedMapBatches.Batch049.certificate3932.Valid := DerivedMapBatches.Batch049.certificate3932valid
theorem outputValid785 : DerivedMapBatches.Batch049.certificate3933.Valid := DerivedMapBatches.Batch049.certificate3933valid
theorem linkedComposition785 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3933.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3933.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3932.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3931.algebra.mat x) := by
  rw [firstLink785, secondLink785]
  exact DerivedMapBatches.Batch049.certificate3933valid.2 x
theorem firstLink786 : DerivedMapBatches.Batch049.certificate3934.algebra.mat = DerivedMapBatches.Batch049.certificate3936.a := by decide
theorem secondLink786 : DerivedMapBatches.Batch049.certificate3935.algebra.mat = DerivedMapBatches.Batch049.certificate3936.b := by decide
theorem firstValid786 : DerivedMapBatches.Batch049.certificate3934.Valid := DerivedMapBatches.Batch049.certificate3934valid
theorem secondValid786 : DerivedMapBatches.Batch049.certificate3935.Valid := DerivedMapBatches.Batch049.certificate3935valid
theorem outputValid786 : DerivedMapBatches.Batch049.certificate3936.Valid := DerivedMapBatches.Batch049.certificate3936valid
theorem linkedComposition786 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3936.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3936.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3935.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3934.algebra.mat x) := by
  rw [firstLink786, secondLink786]
  exact DerivedMapBatches.Batch049.certificate3936valid.2 x
theorem firstLink787 : DerivedMapBatches.Batch049.certificate3937.algebra.mat = DerivedMapBatches.Batch049.certificate3939.a := by decide
theorem secondLink787 : DerivedMapBatches.Batch049.certificate3938.algebra.mat = DerivedMapBatches.Batch049.certificate3939.b := by decide
theorem firstValid787 : DerivedMapBatches.Batch049.certificate3937.Valid := DerivedMapBatches.Batch049.certificate3937valid
theorem secondValid787 : DerivedMapBatches.Batch049.certificate3938.Valid := DerivedMapBatches.Batch049.certificate3938valid
theorem outputValid787 : DerivedMapBatches.Batch049.certificate3939.Valid := DerivedMapBatches.Batch049.certificate3939valid
theorem linkedComposition787 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3939.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3939.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3938.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3937.algebra.mat x) := by
  rw [firstLink787, secondLink787]
  exact DerivedMapBatches.Batch049.certificate3939valid.2 x
theorem firstLink788 : DerivedMapBatches.Batch049.certificate3940.algebra.mat = DerivedMapBatches.Batch049.certificate3942.a := by decide
theorem secondLink788 : DerivedMapBatches.Batch049.certificate3941.algebra.mat = DerivedMapBatches.Batch049.certificate3942.b := by decide
theorem firstValid788 : DerivedMapBatches.Batch049.certificate3940.Valid := DerivedMapBatches.Batch049.certificate3940valid
theorem secondValid788 : DerivedMapBatches.Batch049.certificate3941.Valid := DerivedMapBatches.Batch049.certificate3941valid
theorem outputValid788 : DerivedMapBatches.Batch049.certificate3942.Valid := DerivedMapBatches.Batch049.certificate3942valid
theorem linkedComposition788 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3942.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3942.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3941.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3940.algebra.mat x) := by
  rw [firstLink788, secondLink788]
  exact DerivedMapBatches.Batch049.certificate3942valid.2 x
theorem firstLink789 : DerivedMapBatches.Batch049.certificate3943.algebra.mat = DerivedMapBatches.Batch049.certificate3945.a := by decide
theorem secondLink789 : DerivedMapBatches.Batch049.certificate3944.algebra.mat = DerivedMapBatches.Batch049.certificate3945.b := by decide
theorem firstValid789 : DerivedMapBatches.Batch049.certificate3943.Valid := DerivedMapBatches.Batch049.certificate3943valid
theorem secondValid789 : DerivedMapBatches.Batch049.certificate3944.Valid := DerivedMapBatches.Batch049.certificate3944valid
theorem outputValid789 : DerivedMapBatches.Batch049.certificate3945.Valid := DerivedMapBatches.Batch049.certificate3945valid
theorem linkedComposition789 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3945.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3945.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3944.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3943.algebra.mat x) := by
  rw [firstLink789, secondLink789]
  exact DerivedMapBatches.Batch049.certificate3945valid.2 x
theorem firstLink790 : DerivedMapBatches.Batch049.certificate3946.algebra.mat = DerivedMapBatches.Batch049.certificate3948.a := by decide
theorem secondLink790 : DerivedMapBatches.Batch049.certificate3947.algebra.mat = DerivedMapBatches.Batch049.certificate3948.b := by decide
theorem firstValid790 : DerivedMapBatches.Batch049.certificate3946.Valid := DerivedMapBatches.Batch049.certificate3946valid
theorem secondValid790 : DerivedMapBatches.Batch049.certificate3947.Valid := DerivedMapBatches.Batch049.certificate3947valid
theorem outputValid790 : DerivedMapBatches.Batch049.certificate3948.Valid := DerivedMapBatches.Batch049.certificate3948valid
theorem linkedComposition790 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3948.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3948.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3947.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3946.algebra.mat x) := by
  rw [firstLink790, secondLink790]
  exact DerivedMapBatches.Batch049.certificate3948valid.2 x
theorem firstLink791 : DerivedMapBatches.Batch049.certificate3949.algebra.mat = DerivedMapBatches.Batch049.certificate3951.a := by decide
theorem secondLink791 : DerivedMapBatches.Batch049.certificate3950.algebra.mat = DerivedMapBatches.Batch049.certificate3951.b := by decide
theorem firstValid791 : DerivedMapBatches.Batch049.certificate3949.Valid := DerivedMapBatches.Batch049.certificate3949valid
theorem secondValid791 : DerivedMapBatches.Batch049.certificate3950.Valid := DerivedMapBatches.Batch049.certificate3950valid
theorem outputValid791 : DerivedMapBatches.Batch049.certificate3951.Valid := DerivedMapBatches.Batch049.certificate3951valid
theorem linkedComposition791 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3951.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3951.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3950.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3949.algebra.mat x) := by
  rw [firstLink791, secondLink791]
  exact DerivedMapBatches.Batch049.certificate3951valid.2 x
theorem firstLink792 : DerivedMapBatches.Batch049.certificate3952.algebra.mat = DerivedMapBatches.Batch049.certificate3954.a := by decide
theorem secondLink792 : DerivedMapBatches.Batch049.certificate3953.algebra.mat = DerivedMapBatches.Batch049.certificate3954.b := by decide
theorem firstValid792 : DerivedMapBatches.Batch049.certificate3952.Valid := DerivedMapBatches.Batch049.certificate3952valid
theorem secondValid792 : DerivedMapBatches.Batch049.certificate3953.Valid := DerivedMapBatches.Batch049.certificate3953valid
theorem outputValid792 : DerivedMapBatches.Batch049.certificate3954.Valid := DerivedMapBatches.Batch049.certificate3954valid
theorem linkedComposition792 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3954.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3954.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3953.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3952.algebra.mat x) := by
  rw [firstLink792, secondLink792]
  exact DerivedMapBatches.Batch049.certificate3954valid.2 x
theorem firstLink793 : DerivedMapBatches.Batch049.certificate3955.algebra.mat = DerivedMapBatches.Batch049.certificate3957.a := by decide
theorem secondLink793 : DerivedMapBatches.Batch049.certificate3956.algebra.mat = DerivedMapBatches.Batch049.certificate3957.b := by decide
theorem firstValid793 : DerivedMapBatches.Batch049.certificate3955.Valid := DerivedMapBatches.Batch049.certificate3955valid
theorem secondValid793 : DerivedMapBatches.Batch049.certificate3956.Valid := DerivedMapBatches.Batch049.certificate3956valid
theorem outputValid793 : DerivedMapBatches.Batch049.certificate3957.Valid := DerivedMapBatches.Batch049.certificate3957valid
theorem linkedComposition793 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3957.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3957.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3956.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3955.algebra.mat x) := by
  rw [firstLink793, secondLink793]
  exact DerivedMapBatches.Batch049.certificate3957valid.2 x
theorem firstLink794 : DerivedMapBatches.Batch049.certificate3958.algebra.mat = DerivedMapBatches.Batch049.certificate3960.a := by decide
theorem secondLink794 : DerivedMapBatches.Batch049.certificate3959.algebra.mat = DerivedMapBatches.Batch049.certificate3960.b := by decide
theorem firstValid794 : DerivedMapBatches.Batch049.certificate3958.Valid := DerivedMapBatches.Batch049.certificate3958valid
theorem secondValid794 : DerivedMapBatches.Batch049.certificate3959.Valid := DerivedMapBatches.Batch049.certificate3959valid
theorem outputValid794 : DerivedMapBatches.Batch049.certificate3960.Valid := DerivedMapBatches.Batch049.certificate3960valid
theorem linkedComposition794 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3960.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3960.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3959.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3958.algebra.mat x) := by
  rw [firstLink794, secondLink794]
  exact DerivedMapBatches.Batch049.certificate3960valid.2 x
theorem firstLink795 : DerivedMapBatches.Batch049.certificate3961.algebra.mat = DerivedMapBatches.Batch049.certificate3963.a := by decide
theorem secondLink795 : DerivedMapBatches.Batch049.certificate3962.algebra.mat = DerivedMapBatches.Batch049.certificate3963.b := by decide
theorem firstValid795 : DerivedMapBatches.Batch049.certificate3961.Valid := DerivedMapBatches.Batch049.certificate3961valid
theorem secondValid795 : DerivedMapBatches.Batch049.certificate3962.Valid := DerivedMapBatches.Batch049.certificate3962valid
theorem outputValid795 : DerivedMapBatches.Batch049.certificate3963.Valid := DerivedMapBatches.Batch049.certificate3963valid
theorem linkedComposition795 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3963.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3963.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3962.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3961.algebra.mat x) := by
  rw [firstLink795, secondLink795]
  exact DerivedMapBatches.Batch049.certificate3963valid.2 x
theorem firstLink796 : DerivedMapBatches.Batch049.certificate3964.algebra.mat = DerivedMapBatches.Batch049.certificate3966.a := by decide
theorem secondLink796 : DerivedMapBatches.Batch049.certificate3965.algebra.mat = DerivedMapBatches.Batch049.certificate3966.b := by decide
theorem firstValid796 : DerivedMapBatches.Batch049.certificate3964.Valid := DerivedMapBatches.Batch049.certificate3964valid
theorem secondValid796 : DerivedMapBatches.Batch049.certificate3965.Valid := DerivedMapBatches.Batch049.certificate3965valid
theorem outputValid796 : DerivedMapBatches.Batch049.certificate3966.Valid := DerivedMapBatches.Batch049.certificate3966valid
theorem linkedComposition796 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3966.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3966.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3965.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3964.algebra.mat x) := by
  rw [firstLink796, secondLink796]
  exact DerivedMapBatches.Batch049.certificate3966valid.2 x
theorem firstLink797 : DerivedMapBatches.Batch049.certificate3967.algebra.mat = DerivedMapBatches.Batch049.certificate3969.a := by decide
theorem secondLink797 : DerivedMapBatches.Batch049.certificate3968.algebra.mat = DerivedMapBatches.Batch049.certificate3969.b := by decide
theorem firstValid797 : DerivedMapBatches.Batch049.certificate3967.Valid := DerivedMapBatches.Batch049.certificate3967valid
theorem secondValid797 : DerivedMapBatches.Batch049.certificate3968.Valid := DerivedMapBatches.Batch049.certificate3968valid
theorem outputValid797 : DerivedMapBatches.Batch049.certificate3969.Valid := DerivedMapBatches.Batch049.certificate3969valid
theorem linkedComposition797 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3969.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3969.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3968.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3967.algebra.mat x) := by
  rw [firstLink797, secondLink797]
  exact DerivedMapBatches.Batch049.certificate3969valid.2 x
theorem firstLink798 : DerivedMapBatches.Batch049.certificate3970.algebra.mat = DerivedMapBatches.Batch049.certificate3972.a := by decide
theorem secondLink798 : DerivedMapBatches.Batch049.certificate3971.algebra.mat = DerivedMapBatches.Batch049.certificate3972.b := by decide
theorem firstValid798 : DerivedMapBatches.Batch049.certificate3970.Valid := DerivedMapBatches.Batch049.certificate3970valid
theorem secondValid798 : DerivedMapBatches.Batch049.certificate3971.Valid := DerivedMapBatches.Batch049.certificate3971valid
theorem outputValid798 : DerivedMapBatches.Batch049.certificate3972.Valid := DerivedMapBatches.Batch049.certificate3972valid
theorem linkedComposition798 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3972.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3972.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3971.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3970.algebra.mat x) := by
  rw [firstLink798, secondLink798]
  exact DerivedMapBatches.Batch049.certificate3972valid.2 x
theorem firstLink799 : DerivedMapBatches.Batch049.certificate3973.algebra.mat = DerivedMapBatches.Batch049.certificate3975.a := by decide
theorem secondLink799 : DerivedMapBatches.Batch049.certificate3974.algebra.mat = DerivedMapBatches.Batch049.certificate3975.b := by decide
theorem firstValid799 : DerivedMapBatches.Batch049.certificate3973.Valid := DerivedMapBatches.Batch049.certificate3973valid
theorem secondValid799 : DerivedMapBatches.Batch049.certificate3974.Valid := DerivedMapBatches.Batch049.certificate3974valid
theorem outputValid799 : DerivedMapBatches.Batch049.certificate3975.Valid := DerivedMapBatches.Batch049.certificate3975valid
theorem linkedComposition799 (x : LinearCertificates.Vec DerivedMapBatches.Batch049.certificate3975.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch049.certificate3975.c x = LinearCertificates.eval DerivedMapBatches.Batch049.certificate3974.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch049.certificate3973.algebra.mat x) := by
  rw [firstLink799, secondLink799]
  exact DerivedMapBatches.Batch049.certificate3975valid.2 x
end DerivedLinkageBatches.Batch015
