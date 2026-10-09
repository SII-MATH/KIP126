import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch052
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch018
theorem firstLink900 : DerivedMapBatches.Batch001.certificate113.algebra.mat = DerivedMapBatches.Batch052.certificate4162.a := by decide
theorem secondLink900 : DerivedMapBatches.Batch001.certificate143.algebra.mat = DerivedMapBatches.Batch052.certificate4162.b := by decide
theorem firstValid900 : DerivedMapBatches.Batch001.certificate113.Valid := DerivedMapBatches.Batch001.certificate113valid
theorem secondValid900 : DerivedMapBatches.Batch001.certificate143.Valid := DerivedMapBatches.Batch001.certificate143valid
theorem outputValid900 : DerivedMapBatches.Batch052.certificate4162.Valid := DerivedMapBatches.Batch052.certificate4162valid
theorem linkedComposition900 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4162.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4162.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) := by
  rw [firstLink900, secondLink900]
  exact DerivedMapBatches.Batch052.certificate4162valid.2 x
theorem outputZero900 : DerivedMapBatches.Batch052.certificate4162.c = (fun _ _ => false) := by decide
theorem linkedZero900 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4162.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate113.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition900, outputZero900]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink901 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch052.certificate4163.a := by decide
theorem secondLink901 : DerivedMapBatches.Batch001.certificate144.algebra.mat = DerivedMapBatches.Batch052.certificate4163.b := by decide
theorem firstValid901 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem secondValid901 : DerivedMapBatches.Batch001.certificate144.Valid := DerivedMapBatches.Batch001.certificate144valid
theorem outputValid901 : DerivedMapBatches.Batch052.certificate4163.Valid := DerivedMapBatches.Batch052.certificate4163valid
theorem linkedComposition901 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4163.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4163.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) := by
  rw [firstLink901, secondLink901]
  exact DerivedMapBatches.Batch052.certificate4163valid.2 x
theorem outputZero901 : DerivedMapBatches.Batch052.certificate4163.c = (fun _ _ => false) := by decide
theorem linkedZero901 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4163.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition901, outputZero901]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink902 : DerivedMapBatches.Batch001.certificate115.algebra.mat = DerivedMapBatches.Batch052.certificate4164.a := by decide
theorem secondLink902 : DerivedMapBatches.Batch001.certificate146.algebra.mat = DerivedMapBatches.Batch052.certificate4164.b := by decide
theorem firstValid902 : DerivedMapBatches.Batch001.certificate115.Valid := DerivedMapBatches.Batch001.certificate115valid
theorem secondValid902 : DerivedMapBatches.Batch001.certificate146.Valid := DerivedMapBatches.Batch001.certificate146valid
theorem outputValid902 : DerivedMapBatches.Batch052.certificate4164.Valid := DerivedMapBatches.Batch052.certificate4164valid
theorem linkedComposition902 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4164.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4164.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) := by
  rw [firstLink902, secondLink902]
  exact DerivedMapBatches.Batch052.certificate4164valid.2 x
theorem outputZero902 : DerivedMapBatches.Batch052.certificate4164.c = (fun _ _ => false) := by decide
theorem linkedZero902 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4164.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate115.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition902, outputZero902]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink903 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch052.certificate4166.a := by decide
theorem secondLink903 : DerivedMapBatches.Batch052.certificate4165.algebra.mat = DerivedMapBatches.Batch052.certificate4166.b := by decide
theorem firstValid903 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem secondValid903 : DerivedMapBatches.Batch052.certificate4165.Valid := DerivedMapBatches.Batch052.certificate4165valid
theorem outputValid903 : DerivedMapBatches.Batch052.certificate4166.Valid := DerivedMapBatches.Batch052.certificate4166valid
theorem linkedComposition903 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4166.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4166.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) := by
  rw [firstLink903, secondLink903]
  exact DerivedMapBatches.Batch052.certificate4166valid.2 x
theorem outputZero903 : DerivedMapBatches.Batch052.certificate4166.c = (fun _ _ => false) := by decide
theorem linkedZero903 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4166.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4165.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition903, outputZero903]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink904 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch052.certificate4167.a := by decide
theorem secondLink904 : DerivedMapBatches.Batch001.certificate147.algebra.mat = DerivedMapBatches.Batch052.certificate4167.b := by decide
theorem firstValid904 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem secondValid904 : DerivedMapBatches.Batch001.certificate147.Valid := DerivedMapBatches.Batch001.certificate147valid
theorem outputValid904 : DerivedMapBatches.Batch052.certificate4167.Valid := DerivedMapBatches.Batch052.certificate4167valid
theorem linkedComposition904 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4167.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) := by
  rw [firstLink904, secondLink904]
  exact DerivedMapBatches.Batch052.certificate4167valid.2 x
theorem outputZero904 : DerivedMapBatches.Batch052.certificate4167.c = (fun _ _ => false) := by decide
theorem linkedZero904 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition904, outputZero904]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink905 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch052.certificate4169.a := by decide
theorem secondLink905 : DerivedMapBatches.Batch052.certificate4168.algebra.mat = DerivedMapBatches.Batch052.certificate4169.b := by decide
theorem firstValid905 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem secondValid905 : DerivedMapBatches.Batch052.certificate4168.Valid := DerivedMapBatches.Batch052.certificate4168valid
theorem outputValid905 : DerivedMapBatches.Batch052.certificate4169.Valid := DerivedMapBatches.Batch052.certificate4169valid
theorem linkedComposition905 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4169.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4169.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) := by
  rw [firstLink905, secondLink905]
  exact DerivedMapBatches.Batch052.certificate4169valid.2 x
theorem outputZero905 : DerivedMapBatches.Batch052.certificate4169.c = (fun _ _ => false) := by decide
theorem linkedZero905 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4169.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition905, outputZero905]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink906 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch052.certificate4171.a := by decide
theorem secondLink906 : DerivedMapBatches.Batch052.certificate4170.algebra.mat = DerivedMapBatches.Batch052.certificate4171.b := by decide
theorem firstValid906 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem secondValid906 : DerivedMapBatches.Batch052.certificate4170.Valid := DerivedMapBatches.Batch052.certificate4170valid
theorem outputValid906 : DerivedMapBatches.Batch052.certificate4171.Valid := DerivedMapBatches.Batch052.certificate4171valid
theorem linkedComposition906 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4171.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4171.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) := by
  rw [firstLink906, secondLink906]
  exact DerivedMapBatches.Batch052.certificate4171valid.2 x
theorem outputZero906 : DerivedMapBatches.Batch052.certificate4171.c = (fun _ _ => false) := by decide
theorem linkedZero906 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4171.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition906, outputZero906]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink907 : DerivedMapBatches.Batch001.certificate120.algebra.mat = DerivedMapBatches.Batch052.certificate4172.a := by decide
theorem secondLink907 : DerivedMapBatches.Batch001.certificate148.algebra.mat = DerivedMapBatches.Batch052.certificate4172.b := by decide
theorem firstValid907 : DerivedMapBatches.Batch001.certificate120.Valid := DerivedMapBatches.Batch001.certificate120valid
theorem secondValid907 : DerivedMapBatches.Batch001.certificate148.Valid := DerivedMapBatches.Batch001.certificate148valid
theorem outputValid907 : DerivedMapBatches.Batch052.certificate4172.Valid := DerivedMapBatches.Batch052.certificate4172valid
theorem linkedComposition907 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4172.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4172.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) := by
  rw [firstLink907, secondLink907]
  exact DerivedMapBatches.Batch052.certificate4172valid.2 x
theorem outputZero907 : DerivedMapBatches.Batch052.certificate4172.c = (fun _ _ => false) := by decide
theorem linkedZero907 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4172.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate120.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition907, outputZero907]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink908 : DerivedMapBatches.Batch001.certificate121.algebra.mat = DerivedMapBatches.Batch052.certificate4174.a := by decide
theorem secondLink908 : DerivedMapBatches.Batch052.certificate4173.algebra.mat = DerivedMapBatches.Batch052.certificate4174.b := by decide
theorem firstValid908 : DerivedMapBatches.Batch001.certificate121.Valid := DerivedMapBatches.Batch001.certificate121valid
theorem secondValid908 : DerivedMapBatches.Batch052.certificate4173.Valid := DerivedMapBatches.Batch052.certificate4173valid
theorem outputValid908 : DerivedMapBatches.Batch052.certificate4174.Valid := DerivedMapBatches.Batch052.certificate4174valid
theorem linkedComposition908 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4174.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4174.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4173.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) := by
  rw [firstLink908, secondLink908]
  exact DerivedMapBatches.Batch052.certificate4174valid.2 x
theorem outputZero908 : DerivedMapBatches.Batch052.certificate4174.c = (fun _ _ => false) := by decide
theorem linkedZero908 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4174.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4173.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate121.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition908, outputZero908]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink909 : DerivedMapBatches.Batch001.certificate122.algebra.mat = DerivedMapBatches.Batch052.certificate4175.a := by decide
theorem secondLink909 : DerivedMapBatches.Batch001.certificate149.algebra.mat = DerivedMapBatches.Batch052.certificate4175.b := by decide
theorem firstValid909 : DerivedMapBatches.Batch001.certificate122.Valid := DerivedMapBatches.Batch001.certificate122valid
theorem secondValid909 : DerivedMapBatches.Batch001.certificate149.Valid := DerivedMapBatches.Batch001.certificate149valid
theorem outputValid909 : DerivedMapBatches.Batch052.certificate4175.Valid := DerivedMapBatches.Batch052.certificate4175valid
theorem linkedComposition909 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4175.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4175.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) := by
  rw [firstLink909, secondLink909]
  exact DerivedMapBatches.Batch052.certificate4175valid.2 x
theorem outputZero909 : DerivedMapBatches.Batch052.certificate4175.c = (fun _ _ => false) := by decide
theorem linkedZero909 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4175.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate122.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition909, outputZero909]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink910 : DerivedMapBatches.Batch001.certificate123.algebra.mat = DerivedMapBatches.Batch052.certificate4176.a := by decide
theorem secondLink910 : DerivedMapBatches.Batch001.certificate150.algebra.mat = DerivedMapBatches.Batch052.certificate4176.b := by decide
theorem firstValid910 : DerivedMapBatches.Batch001.certificate123.Valid := DerivedMapBatches.Batch001.certificate123valid
theorem secondValid910 : DerivedMapBatches.Batch001.certificate150.Valid := DerivedMapBatches.Batch001.certificate150valid
theorem outputValid910 : DerivedMapBatches.Batch052.certificate4176.Valid := DerivedMapBatches.Batch052.certificate4176valid
theorem linkedComposition910 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4176.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4176.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) := by
  rw [firstLink910, secondLink910]
  exact DerivedMapBatches.Batch052.certificate4176valid.2 x
theorem outputZero910 : DerivedMapBatches.Batch052.certificate4176.c = (fun _ _ => false) := by decide
theorem linkedZero910 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4176.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate123.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition910, outputZero910]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink911 : DerivedMapBatches.Batch001.certificate124.algebra.mat = DerivedMapBatches.Batch052.certificate4177.a := by decide
theorem secondLink911 : DerivedMapBatches.Batch001.certificate151.algebra.mat = DerivedMapBatches.Batch052.certificate4177.b := by decide
theorem firstValid911 : DerivedMapBatches.Batch001.certificate124.Valid := DerivedMapBatches.Batch001.certificate124valid
theorem secondValid911 : DerivedMapBatches.Batch001.certificate151.Valid := DerivedMapBatches.Batch001.certificate151valid
theorem outputValid911 : DerivedMapBatches.Batch052.certificate4177.Valid := DerivedMapBatches.Batch052.certificate4177valid
theorem linkedComposition911 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4177.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4177.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) := by
  rw [firstLink911, secondLink911]
  exact DerivedMapBatches.Batch052.certificate4177valid.2 x
theorem outputZero911 : DerivedMapBatches.Batch052.certificate4177.c = (fun _ _ => false) := by decide
theorem linkedZero911 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4177.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate124.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition911, outputZero911]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink912 : DerivedMapBatches.Batch001.certificate125.algebra.mat = DerivedMapBatches.Batch052.certificate4178.a := by decide
theorem secondLink912 : DerivedMapBatches.Batch001.certificate152.algebra.mat = DerivedMapBatches.Batch052.certificate4178.b := by decide
theorem firstValid912 : DerivedMapBatches.Batch001.certificate125.Valid := DerivedMapBatches.Batch001.certificate125valid
theorem secondValid912 : DerivedMapBatches.Batch001.certificate152.Valid := DerivedMapBatches.Batch001.certificate152valid
theorem outputValid912 : DerivedMapBatches.Batch052.certificate4178.Valid := DerivedMapBatches.Batch052.certificate4178valid
theorem linkedComposition912 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4178.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4178.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) := by
  rw [firstLink912, secondLink912]
  exact DerivedMapBatches.Batch052.certificate4178valid.2 x
theorem outputZero912 : DerivedMapBatches.Batch052.certificate4178.c = (fun _ _ => false) := by decide
theorem linkedZero912 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4178.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate125.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition912, outputZero912]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink913 : DerivedMapBatches.Batch001.certificate126.algebra.mat = DerivedMapBatches.Batch052.certificate4179.a := by decide
theorem secondLink913 : DerivedMapBatches.Batch001.certificate153.algebra.mat = DerivedMapBatches.Batch052.certificate4179.b := by decide
theorem firstValid913 : DerivedMapBatches.Batch001.certificate126.Valid := DerivedMapBatches.Batch001.certificate126valid
theorem secondValid913 : DerivedMapBatches.Batch001.certificate153.Valid := DerivedMapBatches.Batch001.certificate153valid
theorem outputValid913 : DerivedMapBatches.Batch052.certificate4179.Valid := DerivedMapBatches.Batch052.certificate4179valid
theorem linkedComposition913 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4179.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4179.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) := by
  rw [firstLink913, secondLink913]
  exact DerivedMapBatches.Batch052.certificate4179valid.2 x
theorem outputZero913 : DerivedMapBatches.Batch052.certificate4179.c = (fun _ _ => false) := by decide
theorem linkedZero913 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4179.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate126.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition913, outputZero913]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink914 : DerivedMapBatches.Batch001.certificate127.algebra.mat = DerivedMapBatches.Batch052.certificate4180.a := by decide
theorem secondLink914 : DerivedMapBatches.Batch001.certificate154.algebra.mat = DerivedMapBatches.Batch052.certificate4180.b := by decide
theorem firstValid914 : DerivedMapBatches.Batch001.certificate127.Valid := DerivedMapBatches.Batch001.certificate127valid
theorem secondValid914 : DerivedMapBatches.Batch001.certificate154.Valid := DerivedMapBatches.Batch001.certificate154valid
theorem outputValid914 : DerivedMapBatches.Batch052.certificate4180.Valid := DerivedMapBatches.Batch052.certificate4180valid
theorem linkedComposition914 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4180.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4180.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) := by
  rw [firstLink914, secondLink914]
  exact DerivedMapBatches.Batch052.certificate4180valid.2 x
theorem outputZero914 : DerivedMapBatches.Batch052.certificate4180.c = (fun _ _ => false) := by decide
theorem linkedZero914 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4180.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate127.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition914, outputZero914]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink915 : DerivedMapBatches.Batch001.certificate128.algebra.mat = DerivedMapBatches.Batch052.certificate4181.a := by decide
theorem secondLink915 : DerivedMapBatches.Batch001.certificate155.algebra.mat = DerivedMapBatches.Batch052.certificate4181.b := by decide
theorem firstValid915 : DerivedMapBatches.Batch001.certificate128.Valid := DerivedMapBatches.Batch001.certificate128valid
theorem secondValid915 : DerivedMapBatches.Batch001.certificate155.Valid := DerivedMapBatches.Batch001.certificate155valid
theorem outputValid915 : DerivedMapBatches.Batch052.certificate4181.Valid := DerivedMapBatches.Batch052.certificate4181valid
theorem linkedComposition915 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4181.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4181.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) := by
  rw [firstLink915, secondLink915]
  exact DerivedMapBatches.Batch052.certificate4181valid.2 x
theorem outputZero915 : DerivedMapBatches.Batch052.certificate4181.c = (fun _ _ => false) := by decide
theorem linkedZero915 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4181.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate128.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition915, outputZero915]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink916 : DerivedMapBatches.Batch001.certificate129.algebra.mat = DerivedMapBatches.Batch052.certificate4183.a := by decide
theorem secondLink916 : DerivedMapBatches.Batch052.certificate4182.algebra.mat = DerivedMapBatches.Batch052.certificate4183.b := by decide
theorem firstValid916 : DerivedMapBatches.Batch001.certificate129.Valid := DerivedMapBatches.Batch001.certificate129valid
theorem secondValid916 : DerivedMapBatches.Batch052.certificate4182.Valid := DerivedMapBatches.Batch052.certificate4182valid
theorem outputValid916 : DerivedMapBatches.Batch052.certificate4183.Valid := DerivedMapBatches.Batch052.certificate4183valid
theorem linkedComposition916 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4183.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4183.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4182.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) := by
  rw [firstLink916, secondLink916]
  exact DerivedMapBatches.Batch052.certificate4183valid.2 x
theorem outputZero916 : DerivedMapBatches.Batch052.certificate4183.c = (fun _ _ => false) := by decide
theorem linkedZero916 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4183.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4182.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate129.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition916, outputZero916]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink917 : DerivedMapBatches.Batch001.certificate130.algebra.mat = DerivedMapBatches.Batch052.certificate4184.a := by decide
theorem secondLink917 : DerivedMapBatches.Batch001.certificate158.algebra.mat = DerivedMapBatches.Batch052.certificate4184.b := by decide
theorem firstValid917 : DerivedMapBatches.Batch001.certificate130.Valid := DerivedMapBatches.Batch001.certificate130valid
theorem secondValid917 : DerivedMapBatches.Batch001.certificate158.Valid := DerivedMapBatches.Batch001.certificate158valid
theorem outputValid917 : DerivedMapBatches.Batch052.certificate4184.Valid := DerivedMapBatches.Batch052.certificate4184valid
theorem linkedComposition917 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4184.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4184.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate130.algebra.mat x) := by
  rw [firstLink917, secondLink917]
  exact DerivedMapBatches.Batch052.certificate4184valid.2 x
theorem outputZero917 : DerivedMapBatches.Batch052.certificate4184.c = (fun _ _ => false) := by decide
theorem linkedZero917 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4184.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate130.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition917, outputZero917]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink918 : DerivedMapBatches.Batch001.certificate131.algebra.mat = DerivedMapBatches.Batch052.certificate4186.a := by decide
theorem secondLink918 : DerivedMapBatches.Batch052.certificate4185.algebra.mat = DerivedMapBatches.Batch052.certificate4186.b := by decide
theorem firstValid918 : DerivedMapBatches.Batch001.certificate131.Valid := DerivedMapBatches.Batch001.certificate131valid
theorem secondValid918 : DerivedMapBatches.Batch052.certificate4185.Valid := DerivedMapBatches.Batch052.certificate4185valid
theorem outputValid918 : DerivedMapBatches.Batch052.certificate4186.Valid := DerivedMapBatches.Batch052.certificate4186valid
theorem linkedComposition918 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4186.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4186.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4185.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat x) := by
  rw [firstLink918, secondLink918]
  exact DerivedMapBatches.Batch052.certificate4186valid.2 x
theorem outputZero918 : DerivedMapBatches.Batch052.certificate4186.c = (fun _ _ => false) := by decide
theorem linkedZero918 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4186.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4185.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition918, outputZero918]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink919 : DerivedMapBatches.Batch001.certificate132.algebra.mat = DerivedMapBatches.Batch052.certificate4187.a := by decide
theorem secondLink919 : DerivedMapBatches.Batch002.certificate162.algebra.mat = DerivedMapBatches.Batch052.certificate4187.b := by decide
theorem firstValid919 : DerivedMapBatches.Batch001.certificate132.Valid := DerivedMapBatches.Batch001.certificate132valid
theorem secondValid919 : DerivedMapBatches.Batch002.certificate162.Valid := DerivedMapBatches.Batch002.certificate162valid
theorem outputValid919 : DerivedMapBatches.Batch052.certificate4187.Valid := DerivedMapBatches.Batch052.certificate4187valid
theorem linkedComposition919 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4187.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4187.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate132.algebra.mat x) := by
  rw [firstLink919, secondLink919]
  exact DerivedMapBatches.Batch052.certificate4187valid.2 x
theorem outputZero919 : DerivedMapBatches.Batch052.certificate4187.c = (fun _ _ => false) := by decide
theorem linkedZero919 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4187.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate132.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition919, outputZero919]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink920 : DerivedMapBatches.Batch001.certificate133.algebra.mat = DerivedMapBatches.Batch052.certificate4189.a := by decide
theorem secondLink920 : DerivedMapBatches.Batch052.certificate4188.algebra.mat = DerivedMapBatches.Batch052.certificate4189.b := by decide
theorem firstValid920 : DerivedMapBatches.Batch001.certificate133.Valid := DerivedMapBatches.Batch001.certificate133valid
theorem secondValid920 : DerivedMapBatches.Batch052.certificate4188.Valid := DerivedMapBatches.Batch052.certificate4188valid
theorem outputValid920 : DerivedMapBatches.Batch052.certificate4189.Valid := DerivedMapBatches.Batch052.certificate4189valid
theorem linkedComposition920 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4189.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4189.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4188.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat x) := by
  rw [firstLink920, secondLink920]
  exact DerivedMapBatches.Batch052.certificate4189valid.2 x
theorem outputZero920 : DerivedMapBatches.Batch052.certificate4189.c = (fun _ _ => false) := by decide
theorem linkedZero920 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4189.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4188.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition920, outputZero920]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink921 : DerivedMapBatches.Batch001.certificate134.algebra.mat = DerivedMapBatches.Batch052.certificate4190.a := by decide
theorem secondLink921 : DerivedMapBatches.Batch002.certificate166.algebra.mat = DerivedMapBatches.Batch052.certificate4190.b := by decide
theorem firstValid921 : DerivedMapBatches.Batch001.certificate134.Valid := DerivedMapBatches.Batch001.certificate134valid
theorem secondValid921 : DerivedMapBatches.Batch002.certificate166.Valid := DerivedMapBatches.Batch002.certificate166valid
theorem outputValid921 : DerivedMapBatches.Batch052.certificate4190.Valid := DerivedMapBatches.Batch052.certificate4190valid
theorem linkedComposition921 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4190.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4190.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate134.algebra.mat x) := by
  rw [firstLink921, secondLink921]
  exact DerivedMapBatches.Batch052.certificate4190valid.2 x
theorem outputZero921 : DerivedMapBatches.Batch052.certificate4190.c = (fun _ _ => false) := by decide
theorem linkedZero921 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4190.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate134.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition921, outputZero921]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink922 : DerivedMapBatches.Batch001.certificate135.algebra.mat = DerivedMapBatches.Batch052.certificate4192.a := by decide
theorem secondLink922 : DerivedMapBatches.Batch052.certificate4191.algebra.mat = DerivedMapBatches.Batch052.certificate4192.b := by decide
theorem firstValid922 : DerivedMapBatches.Batch001.certificate135.Valid := DerivedMapBatches.Batch001.certificate135valid
theorem secondValid922 : DerivedMapBatches.Batch052.certificate4191.Valid := DerivedMapBatches.Batch052.certificate4191valid
theorem outputValid922 : DerivedMapBatches.Batch052.certificate4192.Valid := DerivedMapBatches.Batch052.certificate4192valid
theorem linkedComposition922 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4192.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4192.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat x) := by
  rw [firstLink922, secondLink922]
  exact DerivedMapBatches.Batch052.certificate4192valid.2 x
theorem outputZero922 : DerivedMapBatches.Batch052.certificate4192.c = (fun _ _ => false) := by decide
theorem linkedZero922 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4192.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4191.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition922, outputZero922]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink923 : DerivedMapBatches.Batch001.certificate136.algebra.mat = DerivedMapBatches.Batch052.certificate4193.a := by decide
theorem secondLink923 : DerivedMapBatches.Batch002.certificate168.algebra.mat = DerivedMapBatches.Batch052.certificate4193.b := by decide
theorem firstValid923 : DerivedMapBatches.Batch001.certificate136.Valid := DerivedMapBatches.Batch001.certificate136valid
theorem secondValid923 : DerivedMapBatches.Batch002.certificate168.Valid := DerivedMapBatches.Batch002.certificate168valid
theorem outputValid923 : DerivedMapBatches.Batch052.certificate4193.Valid := DerivedMapBatches.Batch052.certificate4193valid
theorem linkedComposition923 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4193.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4193.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate136.algebra.mat x) := by
  rw [firstLink923, secondLink923]
  exact DerivedMapBatches.Batch052.certificate4193valid.2 x
theorem outputZero923 : DerivedMapBatches.Batch052.certificate4193.c = (fun _ _ => false) := by decide
theorem linkedZero923 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4193.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate136.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition923, outputZero923]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink924 : DerivedMapBatches.Batch001.certificate137.algebra.mat = DerivedMapBatches.Batch052.certificate4195.a := by decide
theorem secondLink924 : DerivedMapBatches.Batch052.certificate4194.algebra.mat = DerivedMapBatches.Batch052.certificate4195.b := by decide
theorem firstValid924 : DerivedMapBatches.Batch001.certificate137.Valid := DerivedMapBatches.Batch001.certificate137valid
theorem secondValid924 : DerivedMapBatches.Batch052.certificate4194.Valid := DerivedMapBatches.Batch052.certificate4194valid
theorem outputValid924 : DerivedMapBatches.Batch052.certificate4195.Valid := DerivedMapBatches.Batch052.certificate4195valid
theorem linkedComposition924 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4195.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4195.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat x) := by
  rw [firstLink924, secondLink924]
  exact DerivedMapBatches.Batch052.certificate4195valid.2 x
theorem outputZero924 : DerivedMapBatches.Batch052.certificate4195.c = (fun _ _ => false) := by decide
theorem linkedZero924 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4195.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition924, outputZero924]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink925 : DerivedMapBatches.Batch001.certificate138.algebra.mat = DerivedMapBatches.Batch052.certificate4196.a := by decide
theorem secondLink925 : DerivedMapBatches.Batch002.certificate169.algebra.mat = DerivedMapBatches.Batch052.certificate4196.b := by decide
theorem firstValid925 : DerivedMapBatches.Batch001.certificate138.Valid := DerivedMapBatches.Batch001.certificate138valid
theorem secondValid925 : DerivedMapBatches.Batch002.certificate169.Valid := DerivedMapBatches.Batch002.certificate169valid
theorem outputValid925 : DerivedMapBatches.Batch052.certificate4196.Valid := DerivedMapBatches.Batch052.certificate4196valid
theorem linkedComposition925 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4196.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4196.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat x) := by
  rw [firstLink925, secondLink925]
  exact DerivedMapBatches.Batch052.certificate4196valid.2 x
theorem outputZero925 : DerivedMapBatches.Batch052.certificate4196.c = (fun _ _ => false) := by decide
theorem linkedZero925 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4196.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition925, outputZero925]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink926 : DerivedMapBatches.Batch001.certificate139.algebra.mat = DerivedMapBatches.Batch052.certificate4197.a := by decide
theorem secondLink926 : DerivedMapBatches.Batch002.certificate170.algebra.mat = DerivedMapBatches.Batch052.certificate4197.b := by decide
theorem firstValid926 : DerivedMapBatches.Batch001.certificate139.Valid := DerivedMapBatches.Batch001.certificate139valid
theorem secondValid926 : DerivedMapBatches.Batch002.certificate170.Valid := DerivedMapBatches.Batch002.certificate170valid
theorem outputValid926 : DerivedMapBatches.Batch052.certificate4197.Valid := DerivedMapBatches.Batch052.certificate4197valid
theorem linkedComposition926 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4197.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4197.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat x) := by
  rw [firstLink926, secondLink926]
  exact DerivedMapBatches.Batch052.certificate4197valid.2 x
theorem outputZero926 : DerivedMapBatches.Batch052.certificate4197.c = (fun _ _ => false) := by decide
theorem linkedZero926 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4197.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition926, outputZero926]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink927 : DerivedMapBatches.Batch001.certificate140.algebra.mat = DerivedMapBatches.Batch052.certificate4198.a := by decide
theorem secondLink927 : DerivedMapBatches.Batch002.certificate171.algebra.mat = DerivedMapBatches.Batch052.certificate4198.b := by decide
theorem firstValid927 : DerivedMapBatches.Batch001.certificate140.Valid := DerivedMapBatches.Batch001.certificate140valid
theorem secondValid927 : DerivedMapBatches.Batch002.certificate171.Valid := DerivedMapBatches.Batch002.certificate171valid
theorem outputValid927 : DerivedMapBatches.Batch052.certificate4198.Valid := DerivedMapBatches.Batch052.certificate4198valid
theorem linkedComposition927 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4198.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4198.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate140.algebra.mat x) := by
  rw [firstLink927, secondLink927]
  exact DerivedMapBatches.Batch052.certificate4198valid.2 x
theorem outputZero927 : DerivedMapBatches.Batch052.certificate4198.c = (fun _ _ => false) := by decide
theorem linkedZero927 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4198.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate140.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition927, outputZero927]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink928 : DerivedMapBatches.Batch001.certificate141.algebra.mat = DerivedMapBatches.Batch052.certificate4200.a := by decide
theorem secondLink928 : DerivedMapBatches.Batch052.certificate4199.algebra.mat = DerivedMapBatches.Batch052.certificate4200.b := by decide
theorem firstValid928 : DerivedMapBatches.Batch001.certificate141.Valid := DerivedMapBatches.Batch001.certificate141valid
theorem secondValid928 : DerivedMapBatches.Batch052.certificate4199.Valid := DerivedMapBatches.Batch052.certificate4199valid
theorem outputValid928 : DerivedMapBatches.Batch052.certificate4200.Valid := DerivedMapBatches.Batch052.certificate4200valid
theorem linkedComposition928 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4200.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat x) := by
  rw [firstLink928, secondLink928]
  exact DerivedMapBatches.Batch052.certificate4200valid.2 x
theorem outputZero928 : DerivedMapBatches.Batch052.certificate4200.c = (fun _ _ => false) := by decide
theorem linkedZero928 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition928, outputZero928]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink929 : DerivedMapBatches.Batch001.certificate142.algebra.mat = DerivedMapBatches.Batch052.certificate4202.a := by decide
theorem secondLink929 : DerivedMapBatches.Batch052.certificate4201.algebra.mat = DerivedMapBatches.Batch052.certificate4202.b := by decide
theorem firstValid929 : DerivedMapBatches.Batch001.certificate142.Valid := DerivedMapBatches.Batch001.certificate142valid
theorem secondValid929 : DerivedMapBatches.Batch052.certificate4201.Valid := DerivedMapBatches.Batch052.certificate4201valid
theorem outputValid929 : DerivedMapBatches.Batch052.certificate4202.Valid := DerivedMapBatches.Batch052.certificate4202valid
theorem linkedComposition929 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4202.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4202.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4201.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat x) := by
  rw [firstLink929, secondLink929]
  exact DerivedMapBatches.Batch052.certificate4202valid.2 x
theorem outputZero929 : DerivedMapBatches.Batch052.certificate4202.c = (fun _ _ => false) := by decide
theorem linkedZero929 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4202.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4201.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition929, outputZero929]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink930 : DerivedMapBatches.Batch001.certificate143.algebra.mat = DerivedMapBatches.Batch052.certificate4204.a := by decide
theorem secondLink930 : DerivedMapBatches.Batch052.certificate4203.algebra.mat = DerivedMapBatches.Batch052.certificate4204.b := by decide
theorem firstValid930 : DerivedMapBatches.Batch001.certificate143.Valid := DerivedMapBatches.Batch001.certificate143valid
theorem secondValid930 : DerivedMapBatches.Batch052.certificate4203.Valid := DerivedMapBatches.Batch052.certificate4203valid
theorem outputValid930 : DerivedMapBatches.Batch052.certificate4204.Valid := DerivedMapBatches.Batch052.certificate4204valid
theorem linkedComposition930 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4204.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4204.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4203.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat x) := by
  rw [firstLink930, secondLink930]
  exact DerivedMapBatches.Batch052.certificate4204valid.2 x
theorem outputZero930 : DerivedMapBatches.Batch052.certificate4204.c = (fun _ _ => false) := by decide
theorem linkedZero930 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4204.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4203.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition930, outputZero930]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink931 : DerivedMapBatches.Batch001.certificate144.algebra.mat = DerivedMapBatches.Batch052.certificate4206.a := by decide
theorem secondLink931 : DerivedMapBatches.Batch052.certificate4205.algebra.mat = DerivedMapBatches.Batch052.certificate4206.b := by decide
theorem firstValid931 : DerivedMapBatches.Batch001.certificate144.Valid := DerivedMapBatches.Batch001.certificate144valid
theorem secondValid931 : DerivedMapBatches.Batch052.certificate4205.Valid := DerivedMapBatches.Batch052.certificate4205valid
theorem outputValid931 : DerivedMapBatches.Batch052.certificate4206.Valid := DerivedMapBatches.Batch052.certificate4206valid
theorem linkedComposition931 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4206.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4206.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4205.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat x) := by
  rw [firstLink931, secondLink931]
  exact DerivedMapBatches.Batch052.certificate4206valid.2 x
theorem outputZero931 : DerivedMapBatches.Batch052.certificate4206.c = (fun _ _ => false) := by decide
theorem linkedZero931 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4206.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4205.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition931, outputZero931]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink932 : DerivedMapBatches.Batch001.certificate145.algebra.mat = DerivedMapBatches.Batch052.certificate4208.a := by decide
theorem secondLink932 : DerivedMapBatches.Batch052.certificate4207.algebra.mat = DerivedMapBatches.Batch052.certificate4208.b := by decide
theorem firstValid932 : DerivedMapBatches.Batch001.certificate145.Valid := DerivedMapBatches.Batch001.certificate145valid
theorem secondValid932 : DerivedMapBatches.Batch052.certificate4207.Valid := DerivedMapBatches.Batch052.certificate4207valid
theorem outputValid932 : DerivedMapBatches.Batch052.certificate4208.Valid := DerivedMapBatches.Batch052.certificate4208valid
theorem linkedComposition932 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4208.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4208.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat x) := by
  rw [firstLink932, secondLink932]
  exact DerivedMapBatches.Batch052.certificate4208valid.2 x
theorem outputZero932 : DerivedMapBatches.Batch052.certificate4208.c = (fun _ _ => false) := by decide
theorem linkedZero932 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4208.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition932, outputZero932]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink933 : DerivedMapBatches.Batch001.certificate146.algebra.mat = DerivedMapBatches.Batch052.certificate4210.a := by decide
theorem secondLink933 : DerivedMapBatches.Batch052.certificate4209.algebra.mat = DerivedMapBatches.Batch052.certificate4210.b := by decide
theorem firstValid933 : DerivedMapBatches.Batch001.certificate146.Valid := DerivedMapBatches.Batch001.certificate146valid
theorem secondValid933 : DerivedMapBatches.Batch052.certificate4209.Valid := DerivedMapBatches.Batch052.certificate4209valid
theorem outputValid933 : DerivedMapBatches.Batch052.certificate4210.Valid := DerivedMapBatches.Batch052.certificate4210valid
theorem linkedComposition933 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4210.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4210.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4209.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat x) := by
  rw [firstLink933, secondLink933]
  exact DerivedMapBatches.Batch052.certificate4210valid.2 x
theorem outputZero933 : DerivedMapBatches.Batch052.certificate4210.c = (fun _ _ => false) := by decide
theorem linkedZero933 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4210.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4209.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition933, outputZero933]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink934 : DerivedMapBatches.Batch001.certificate147.algebra.mat = DerivedMapBatches.Batch052.certificate4212.a := by decide
theorem secondLink934 : DerivedMapBatches.Batch052.certificate4211.algebra.mat = DerivedMapBatches.Batch052.certificate4212.b := by decide
theorem firstValid934 : DerivedMapBatches.Batch001.certificate147.Valid := DerivedMapBatches.Batch001.certificate147valid
theorem secondValid934 : DerivedMapBatches.Batch052.certificate4211.Valid := DerivedMapBatches.Batch052.certificate4211valid
theorem outputValid934 : DerivedMapBatches.Batch052.certificate4212.Valid := DerivedMapBatches.Batch052.certificate4212valid
theorem linkedComposition934 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4212.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat x) := by
  rw [firstLink934, secondLink934]
  exact DerivedMapBatches.Batch052.certificate4212valid.2 x
theorem outputZero934 : DerivedMapBatches.Batch052.certificate4212.c = (fun _ _ => false) := by decide
theorem linkedZero934 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition934, outputZero934]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink935 : DerivedMapBatches.Batch001.certificate148.algebra.mat = DerivedMapBatches.Batch052.certificate4214.a := by decide
theorem secondLink935 : DerivedMapBatches.Batch052.certificate4213.algebra.mat = DerivedMapBatches.Batch052.certificate4214.b := by decide
theorem firstValid935 : DerivedMapBatches.Batch001.certificate148.Valid := DerivedMapBatches.Batch001.certificate148valid
theorem secondValid935 : DerivedMapBatches.Batch052.certificate4213.Valid := DerivedMapBatches.Batch052.certificate4213valid
theorem outputValid935 : DerivedMapBatches.Batch052.certificate4214.Valid := DerivedMapBatches.Batch052.certificate4214valid
theorem linkedComposition935 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4214.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4213.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat x) := by
  rw [firstLink935, secondLink935]
  exact DerivedMapBatches.Batch052.certificate4214valid.2 x
theorem outputZero935 : DerivedMapBatches.Batch052.certificate4214.c = (fun _ _ => false) := by decide
theorem linkedZero935 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4213.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition935, outputZero935]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink936 : DerivedMapBatches.Batch001.certificate149.algebra.mat = DerivedMapBatches.Batch052.certificate4216.a := by decide
theorem secondLink936 : DerivedMapBatches.Batch052.certificate4215.algebra.mat = DerivedMapBatches.Batch052.certificate4216.b := by decide
theorem firstValid936 : DerivedMapBatches.Batch001.certificate149.Valid := DerivedMapBatches.Batch001.certificate149valid
theorem secondValid936 : DerivedMapBatches.Batch052.certificate4215.Valid := DerivedMapBatches.Batch052.certificate4215valid
theorem outputValid936 : DerivedMapBatches.Batch052.certificate4216.Valid := DerivedMapBatches.Batch052.certificate4216valid
theorem linkedComposition936 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4216.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4216.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4215.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat x) := by
  rw [firstLink936, secondLink936]
  exact DerivedMapBatches.Batch052.certificate4216valid.2 x
theorem outputZero936 : DerivedMapBatches.Batch052.certificate4216.c = (fun _ _ => false) := by decide
theorem linkedZero936 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4216.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4215.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition936, outputZero936]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink937 : DerivedMapBatches.Batch001.certificate150.algebra.mat = DerivedMapBatches.Batch052.certificate4218.a := by decide
theorem secondLink937 : DerivedMapBatches.Batch052.certificate4217.algebra.mat = DerivedMapBatches.Batch052.certificate4218.b := by decide
theorem firstValid937 : DerivedMapBatches.Batch001.certificate150.Valid := DerivedMapBatches.Batch001.certificate150valid
theorem secondValid937 : DerivedMapBatches.Batch052.certificate4217.Valid := DerivedMapBatches.Batch052.certificate4217valid
theorem outputValid937 : DerivedMapBatches.Batch052.certificate4218.Valid := DerivedMapBatches.Batch052.certificate4218valid
theorem linkedComposition937 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4218.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4218.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4217.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat x) := by
  rw [firstLink937, secondLink937]
  exact DerivedMapBatches.Batch052.certificate4218valid.2 x
theorem outputZero937 : DerivedMapBatches.Batch052.certificate4218.c = (fun _ _ => false) := by decide
theorem linkedZero937 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4218.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4217.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition937, outputZero937]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink938 : DerivedMapBatches.Batch001.certificate151.algebra.mat = DerivedMapBatches.Batch052.certificate4220.a := by decide
theorem secondLink938 : DerivedMapBatches.Batch052.certificate4219.algebra.mat = DerivedMapBatches.Batch052.certificate4220.b := by decide
theorem firstValid938 : DerivedMapBatches.Batch001.certificate151.Valid := DerivedMapBatches.Batch001.certificate151valid
theorem secondValid938 : DerivedMapBatches.Batch052.certificate4219.Valid := DerivedMapBatches.Batch052.certificate4219valid
theorem outputValid938 : DerivedMapBatches.Batch052.certificate4220.Valid := DerivedMapBatches.Batch052.certificate4220valid
theorem linkedComposition938 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4220.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4220.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4219.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat x) := by
  rw [firstLink938, secondLink938]
  exact DerivedMapBatches.Batch052.certificate4220valid.2 x
theorem outputZero938 : DerivedMapBatches.Batch052.certificate4220.c = (fun _ _ => false) := by decide
theorem linkedZero938 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4220.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4219.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition938, outputZero938]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink939 : DerivedMapBatches.Batch001.certificate152.algebra.mat = DerivedMapBatches.Batch052.certificate4222.a := by decide
theorem secondLink939 : DerivedMapBatches.Batch052.certificate4221.algebra.mat = DerivedMapBatches.Batch052.certificate4222.b := by decide
theorem firstValid939 : DerivedMapBatches.Batch001.certificate152.Valid := DerivedMapBatches.Batch001.certificate152valid
theorem secondValid939 : DerivedMapBatches.Batch052.certificate4221.Valid := DerivedMapBatches.Batch052.certificate4221valid
theorem outputValid939 : DerivedMapBatches.Batch052.certificate4222.Valid := DerivedMapBatches.Batch052.certificate4222valid
theorem linkedComposition939 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4222.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4222.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4221.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat x) := by
  rw [firstLink939, secondLink939]
  exact DerivedMapBatches.Batch052.certificate4222valid.2 x
theorem outputZero939 : DerivedMapBatches.Batch052.certificate4222.c = (fun _ _ => false) := by decide
theorem linkedZero939 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4222.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4221.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition939, outputZero939]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink940 : DerivedMapBatches.Batch001.certificate153.algebra.mat = DerivedMapBatches.Batch052.certificate4224.a := by decide
theorem secondLink940 : DerivedMapBatches.Batch052.certificate4223.algebra.mat = DerivedMapBatches.Batch052.certificate4224.b := by decide
theorem firstValid940 : DerivedMapBatches.Batch001.certificate153.Valid := DerivedMapBatches.Batch001.certificate153valid
theorem secondValid940 : DerivedMapBatches.Batch052.certificate4223.Valid := DerivedMapBatches.Batch052.certificate4223valid
theorem outputValid940 : DerivedMapBatches.Batch052.certificate4224.Valid := DerivedMapBatches.Batch052.certificate4224valid
theorem linkedComposition940 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4224.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat x) := by
  rw [firstLink940, secondLink940]
  exact DerivedMapBatches.Batch052.certificate4224valid.2 x
theorem outputZero940 : DerivedMapBatches.Batch052.certificate4224.c = (fun _ _ => false) := by decide
theorem linkedZero940 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition940, outputZero940]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink941 : DerivedMapBatches.Batch001.certificate154.algebra.mat = DerivedMapBatches.Batch052.certificate4226.a := by decide
theorem secondLink941 : DerivedMapBatches.Batch052.certificate4225.algebra.mat = DerivedMapBatches.Batch052.certificate4226.b := by decide
theorem firstValid941 : DerivedMapBatches.Batch001.certificate154.Valid := DerivedMapBatches.Batch001.certificate154valid
theorem secondValid941 : DerivedMapBatches.Batch052.certificate4225.Valid := DerivedMapBatches.Batch052.certificate4225valid
theorem outputValid941 : DerivedMapBatches.Batch052.certificate4226.Valid := DerivedMapBatches.Batch052.certificate4226valid
theorem linkedComposition941 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4226.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4226.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4225.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat x) := by
  rw [firstLink941, secondLink941]
  exact DerivedMapBatches.Batch052.certificate4226valid.2 x
theorem outputZero941 : DerivedMapBatches.Batch052.certificate4226.c = (fun _ _ => false) := by decide
theorem linkedZero941 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4226.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4225.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition941, outputZero941]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink942 : DerivedMapBatches.Batch001.certificate155.algebra.mat = DerivedMapBatches.Batch052.certificate4228.a := by decide
theorem secondLink942 : DerivedMapBatches.Batch052.certificate4227.algebra.mat = DerivedMapBatches.Batch052.certificate4228.b := by decide
theorem firstValid942 : DerivedMapBatches.Batch001.certificate155.Valid := DerivedMapBatches.Batch001.certificate155valid
theorem secondValid942 : DerivedMapBatches.Batch052.certificate4227.Valid := DerivedMapBatches.Batch052.certificate4227valid
theorem outputValid942 : DerivedMapBatches.Batch052.certificate4228.Valid := DerivedMapBatches.Batch052.certificate4228valid
theorem linkedComposition942 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4228.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4228.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4227.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat x) := by
  rw [firstLink942, secondLink942]
  exact DerivedMapBatches.Batch052.certificate4228valid.2 x
theorem outputZero942 : DerivedMapBatches.Batch052.certificate4228.c = (fun _ _ => false) := by decide
theorem linkedZero942 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4228.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4227.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition942, outputZero942]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink943 : DerivedMapBatches.Batch001.certificate156.algebra.mat = DerivedMapBatches.Batch052.certificate4229.a := by decide
theorem secondLink943 : DerivedMapBatches.Batch002.certificate185.algebra.mat = DerivedMapBatches.Batch052.certificate4229.b := by decide
theorem firstValid943 : DerivedMapBatches.Batch001.certificate156.Valid := DerivedMapBatches.Batch001.certificate156valid
theorem secondValid943 : DerivedMapBatches.Batch002.certificate185.Valid := DerivedMapBatches.Batch002.certificate185valid
theorem outputValid943 : DerivedMapBatches.Batch052.certificate4229.Valid := DerivedMapBatches.Batch052.certificate4229valid
theorem linkedComposition943 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4229.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4229.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate156.algebra.mat x) := by
  rw [firstLink943, secondLink943]
  exact DerivedMapBatches.Batch052.certificate4229valid.2 x
theorem outputZero943 : DerivedMapBatches.Batch052.certificate4229.c = (fun _ _ => false) := by decide
theorem linkedZero943 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4229.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate185.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate156.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition943, outputZero943]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink944 : DerivedMapBatches.Batch001.certificate157.algebra.mat = DerivedMapBatches.Batch052.certificate4230.a := by decide
theorem secondLink944 : DerivedMapBatches.Batch002.certificate189.algebra.mat = DerivedMapBatches.Batch052.certificate4230.b := by decide
theorem firstValid944 : DerivedMapBatches.Batch001.certificate157.Valid := DerivedMapBatches.Batch001.certificate157valid
theorem secondValid944 : DerivedMapBatches.Batch002.certificate189.Valid := DerivedMapBatches.Batch002.certificate189valid
theorem outputValid944 : DerivedMapBatches.Batch052.certificate4230.Valid := DerivedMapBatches.Batch052.certificate4230valid
theorem linkedComposition944 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4230.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4230.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate157.algebra.mat x) := by
  rw [firstLink944, secondLink944]
  exact DerivedMapBatches.Batch052.certificate4230valid.2 x
theorem outputZero944 : DerivedMapBatches.Batch052.certificate4230.c = (fun _ _ => false) := by decide
theorem linkedZero944 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4230.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate189.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate157.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition944, outputZero944]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink945 : DerivedMapBatches.Batch001.certificate158.algebra.mat = DerivedMapBatches.Batch052.certificate4232.a := by decide
theorem secondLink945 : DerivedMapBatches.Batch052.certificate4231.algebra.mat = DerivedMapBatches.Batch052.certificate4232.b := by decide
theorem firstValid945 : DerivedMapBatches.Batch001.certificate158.Valid := DerivedMapBatches.Batch001.certificate158valid
theorem secondValid945 : DerivedMapBatches.Batch052.certificate4231.Valid := DerivedMapBatches.Batch052.certificate4231valid
theorem outputValid945 : DerivedMapBatches.Batch052.certificate4232.Valid := DerivedMapBatches.Batch052.certificate4232valid
theorem linkedComposition945 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4232.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4232.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4231.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat x) := by
  rw [firstLink945, secondLink945]
  exact DerivedMapBatches.Batch052.certificate4232valid.2 x
theorem outputZero945 : DerivedMapBatches.Batch052.certificate4232.c = (fun _ _ => false) := by decide
theorem linkedZero945 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4232.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4231.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition945, outputZero945]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink946 : DerivedMapBatches.Batch001.certificate159.algebra.mat = DerivedMapBatches.Batch052.certificate4233.a := by decide
theorem secondLink946 : DerivedMapBatches.Batch002.certificate190.algebra.mat = DerivedMapBatches.Batch052.certificate4233.b := by decide
theorem firstValid946 : DerivedMapBatches.Batch001.certificate159.Valid := DerivedMapBatches.Batch001.certificate159valid
theorem secondValid946 : DerivedMapBatches.Batch002.certificate190.Valid := DerivedMapBatches.Batch002.certificate190valid
theorem outputValid946 : DerivedMapBatches.Batch052.certificate4233.Valid := DerivedMapBatches.Batch052.certificate4233valid
theorem linkedComposition946 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4233.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4233.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate159.algebra.mat x) := by
  rw [firstLink946, secondLink946]
  exact DerivedMapBatches.Batch052.certificate4233valid.2 x
theorem outputZero946 : DerivedMapBatches.Batch052.certificate4233.c = (fun _ _ => false) := by decide
theorem linkedZero946 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4233.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate190.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate159.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition946, outputZero946]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink947 : DerivedMapBatches.Batch002.certificate160.algebra.mat = DerivedMapBatches.Batch052.certificate4235.a := by decide
theorem secondLink947 : DerivedMapBatches.Batch052.certificate4234.algebra.mat = DerivedMapBatches.Batch052.certificate4235.b := by decide
theorem firstValid947 : DerivedMapBatches.Batch002.certificate160.Valid := DerivedMapBatches.Batch002.certificate160valid
theorem secondValid947 : DerivedMapBatches.Batch052.certificate4234.Valid := DerivedMapBatches.Batch052.certificate4234valid
theorem outputValid947 : DerivedMapBatches.Batch052.certificate4235.Valid := DerivedMapBatches.Batch052.certificate4235valid
theorem linkedComposition947 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4235.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4235.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4234.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat x) := by
  rw [firstLink947, secondLink947]
  exact DerivedMapBatches.Batch052.certificate4235valid.2 x
theorem outputZero947 : DerivedMapBatches.Batch052.certificate4235.c = (fun _ _ => false) := by decide
theorem linkedZero947 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4235.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4234.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition947, outputZero947]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink948 : DerivedMapBatches.Batch002.certificate161.algebra.mat = DerivedMapBatches.Batch052.certificate4236.a := by decide
theorem secondLink948 : DerivedMapBatches.Batch002.certificate194.algebra.mat = DerivedMapBatches.Batch052.certificate4236.b := by decide
theorem firstValid948 : DerivedMapBatches.Batch002.certificate161.Valid := DerivedMapBatches.Batch002.certificate161valid
theorem secondValid948 : DerivedMapBatches.Batch002.certificate194.Valid := DerivedMapBatches.Batch002.certificate194valid
theorem outputValid948 : DerivedMapBatches.Batch052.certificate4236.Valid := DerivedMapBatches.Batch052.certificate4236valid
theorem linkedComposition948 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4236.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate161.algebra.mat x) := by
  rw [firstLink948, secondLink948]
  exact DerivedMapBatches.Batch052.certificate4236valid.2 x
theorem outputZero948 : DerivedMapBatches.Batch052.certificate4236.c = (fun _ _ => false) := by decide
theorem linkedZero948 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate194.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate161.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition948, outputZero948]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink949 : DerivedMapBatches.Batch002.certificate162.algebra.mat = DerivedMapBatches.Batch052.certificate4238.a := by decide
theorem secondLink949 : DerivedMapBatches.Batch052.certificate4237.algebra.mat = DerivedMapBatches.Batch052.certificate4238.b := by decide
theorem firstValid949 : DerivedMapBatches.Batch002.certificate162.Valid := DerivedMapBatches.Batch002.certificate162valid
theorem secondValid949 : DerivedMapBatches.Batch052.certificate4237.Valid := DerivedMapBatches.Batch052.certificate4237valid
theorem outputValid949 : DerivedMapBatches.Batch052.certificate4238.Valid := DerivedMapBatches.Batch052.certificate4238valid
theorem linkedComposition949 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4238.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4237.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat x) := by
  rw [firstLink949, secondLink949]
  exact DerivedMapBatches.Batch052.certificate4238valid.2 x
theorem outputZero949 : DerivedMapBatches.Batch052.certificate4238.c = (fun _ _ => false) := by decide
theorem linkedZero949 (x : LinearCertificates.Vec DerivedMapBatches.Batch052.certificate4238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4237.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate162.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition949, outputZero949]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch018
