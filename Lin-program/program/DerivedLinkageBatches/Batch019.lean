import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch001
import DerivedMapBatches.Batch002
import DerivedMapBatches.Batch052
import DerivedMapBatches.Batch053
import DerivedMapBatches.Batch054
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch019
theorem firstLink950 : DerivedMapBatches.Batch002.certificate163.algebra.mat = DerivedMapBatches.Batch053.certificate4240.a := by decide
theorem secondLink950 : DerivedMapBatches.Batch052.certificate4239.algebra.mat = DerivedMapBatches.Batch053.certificate4240.b := by decide
theorem firstValid950 : DerivedMapBatches.Batch002.certificate163.Valid := DerivedMapBatches.Batch002.certificate163valid
theorem secondValid950 : DerivedMapBatches.Batch052.certificate4239.Valid := DerivedMapBatches.Batch052.certificate4239valid
theorem outputValid950 : DerivedMapBatches.Batch053.certificate4240.Valid := DerivedMapBatches.Batch053.certificate4240valid
theorem linkedComposition950 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4240.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4240.c x = LinearCertificates.eval DerivedMapBatches.Batch052.certificate4239.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate163.algebra.mat x) := by
  rw [firstLink950, secondLink950]
  exact DerivedMapBatches.Batch053.certificate4240valid.2 x
theorem outputZero950 : DerivedMapBatches.Batch053.certificate4240.c = (fun _ _ => false) := by decide
theorem linkedZero950 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4240.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch052.certificate4239.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate163.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition950, outputZero950]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink951 : DerivedMapBatches.Batch002.certificate164.algebra.mat = DerivedMapBatches.Batch053.certificate4241.a := by decide
theorem secondLink951 : DerivedMapBatches.Batch002.certificate197.algebra.mat = DerivedMapBatches.Batch053.certificate4241.b := by decide
theorem firstValid951 : DerivedMapBatches.Batch002.certificate164.Valid := DerivedMapBatches.Batch002.certificate164valid
theorem secondValid951 : DerivedMapBatches.Batch002.certificate197.Valid := DerivedMapBatches.Batch002.certificate197valid
theorem outputValid951 : DerivedMapBatches.Batch053.certificate4241.Valid := DerivedMapBatches.Batch053.certificate4241valid
theorem linkedComposition951 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4241.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4241.c x = LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate164.algebra.mat x) := by
  rw [firstLink951, secondLink951]
  exact DerivedMapBatches.Batch053.certificate4241valid.2 x
theorem outputZero951 : DerivedMapBatches.Batch053.certificate4241.c = (fun _ _ => false) := by decide
theorem linkedZero951 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4241.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch002.certificate197.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate164.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition951, outputZero951]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink952 : DerivedMapBatches.Batch002.certificate165.algebra.mat = DerivedMapBatches.Batch053.certificate4243.a := by decide
theorem secondLink952 : DerivedMapBatches.Batch053.certificate4242.algebra.mat = DerivedMapBatches.Batch053.certificate4243.b := by decide
theorem firstValid952 : DerivedMapBatches.Batch002.certificate165.Valid := DerivedMapBatches.Batch002.certificate165valid
theorem secondValid952 : DerivedMapBatches.Batch053.certificate4242.Valid := DerivedMapBatches.Batch053.certificate4242valid
theorem outputValid952 : DerivedMapBatches.Batch053.certificate4243.Valid := DerivedMapBatches.Batch053.certificate4243valid
theorem linkedComposition952 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4243.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4243.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4242.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat x) := by
  rw [firstLink952, secondLink952]
  exact DerivedMapBatches.Batch053.certificate4243valid.2 x
theorem outputZero952 : DerivedMapBatches.Batch053.certificate4243.c = (fun _ _ => false) := by decide
theorem linkedZero952 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4243.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4242.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate165.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition952, outputZero952]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink953 : DerivedMapBatches.Batch002.certificate166.algebra.mat = DerivedMapBatches.Batch053.certificate4245.a := by decide
theorem secondLink953 : DerivedMapBatches.Batch053.certificate4244.algebra.mat = DerivedMapBatches.Batch053.certificate4245.b := by decide
theorem firstValid953 : DerivedMapBatches.Batch002.certificate166.Valid := DerivedMapBatches.Batch002.certificate166valid
theorem secondValid953 : DerivedMapBatches.Batch053.certificate4244.Valid := DerivedMapBatches.Batch053.certificate4244valid
theorem outputValid953 : DerivedMapBatches.Batch053.certificate4245.Valid := DerivedMapBatches.Batch053.certificate4245valid
theorem linkedComposition953 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4245.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4245.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4244.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat x) := by
  rw [firstLink953, secondLink953]
  exact DerivedMapBatches.Batch053.certificate4245valid.2 x
theorem outputZero953 : DerivedMapBatches.Batch053.certificate4245.c = (fun _ _ => false) := by decide
theorem linkedZero953 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4245.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4244.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate166.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition953, outputZero953]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink954 : DerivedMapBatches.Batch002.certificate167.algebra.mat = DerivedMapBatches.Batch053.certificate4247.a := by decide
theorem secondLink954 : DerivedMapBatches.Batch053.certificate4246.algebra.mat = DerivedMapBatches.Batch053.certificate4247.b := by decide
theorem firstValid954 : DerivedMapBatches.Batch002.certificate167.Valid := DerivedMapBatches.Batch002.certificate167valid
theorem secondValid954 : DerivedMapBatches.Batch053.certificate4246.Valid := DerivedMapBatches.Batch053.certificate4246valid
theorem outputValid954 : DerivedMapBatches.Batch053.certificate4247.Valid := DerivedMapBatches.Batch053.certificate4247valid
theorem linkedComposition954 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4247.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4247.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4246.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate167.algebra.mat x) := by
  rw [firstLink954, secondLink954]
  exact DerivedMapBatches.Batch053.certificate4247valid.2 x
theorem outputZero954 : DerivedMapBatches.Batch053.certificate4247.c = (fun _ _ => false) := by decide
theorem linkedZero954 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4247.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4246.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate167.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition954, outputZero954]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink955 : DerivedMapBatches.Batch002.certificate168.algebra.mat = DerivedMapBatches.Batch053.certificate4249.a := by decide
theorem secondLink955 : DerivedMapBatches.Batch053.certificate4248.algebra.mat = DerivedMapBatches.Batch053.certificate4249.b := by decide
theorem firstValid955 : DerivedMapBatches.Batch002.certificate168.Valid := DerivedMapBatches.Batch002.certificate168valid
theorem secondValid955 : DerivedMapBatches.Batch053.certificate4248.Valid := DerivedMapBatches.Batch053.certificate4248valid
theorem outputValid955 : DerivedMapBatches.Batch053.certificate4249.Valid := DerivedMapBatches.Batch053.certificate4249valid
theorem linkedComposition955 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4249.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4249.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4248.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat x) := by
  rw [firstLink955, secondLink955]
  exact DerivedMapBatches.Batch053.certificate4249valid.2 x
theorem outputZero955 : DerivedMapBatches.Batch053.certificate4249.c = (fun _ _ => false) := by decide
theorem linkedZero955 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4249.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4248.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate168.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition955, outputZero955]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink956 : DerivedMapBatches.Batch002.certificate169.algebra.mat = DerivedMapBatches.Batch053.certificate4251.a := by decide
theorem secondLink956 : DerivedMapBatches.Batch053.certificate4250.algebra.mat = DerivedMapBatches.Batch053.certificate4251.b := by decide
theorem firstValid956 : DerivedMapBatches.Batch002.certificate169.Valid := DerivedMapBatches.Batch002.certificate169valid
theorem secondValid956 : DerivedMapBatches.Batch053.certificate4250.Valid := DerivedMapBatches.Batch053.certificate4250valid
theorem outputValid956 : DerivedMapBatches.Batch053.certificate4251.Valid := DerivedMapBatches.Batch053.certificate4251valid
theorem linkedComposition956 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4251.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4251.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat x) := by
  rw [firstLink956, secondLink956]
  exact DerivedMapBatches.Batch053.certificate4251valid.2 x
theorem outputZero956 : DerivedMapBatches.Batch053.certificate4251.c = (fun _ _ => false) := by decide
theorem linkedZero956 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4251.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4250.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate169.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition956, outputZero956]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink957 : DerivedMapBatches.Batch002.certificate170.algebra.mat = DerivedMapBatches.Batch053.certificate4253.a := by decide
theorem secondLink957 : DerivedMapBatches.Batch053.certificate4252.algebra.mat = DerivedMapBatches.Batch053.certificate4253.b := by decide
theorem firstValid957 : DerivedMapBatches.Batch002.certificate170.Valid := DerivedMapBatches.Batch002.certificate170valid
theorem secondValid957 : DerivedMapBatches.Batch053.certificate4252.Valid := DerivedMapBatches.Batch053.certificate4252valid
theorem outputValid957 : DerivedMapBatches.Batch053.certificate4253.Valid := DerivedMapBatches.Batch053.certificate4253valid
theorem linkedComposition957 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4253.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4253.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4252.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat x) := by
  rw [firstLink957, secondLink957]
  exact DerivedMapBatches.Batch053.certificate4253valid.2 x
theorem outputZero957 : DerivedMapBatches.Batch053.certificate4253.c = (fun _ _ => false) := by decide
theorem linkedZero957 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4253.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4252.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate170.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition957, outputZero957]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink958 : DerivedMapBatches.Batch002.certificate171.algebra.mat = DerivedMapBatches.Batch053.certificate4255.a := by decide
theorem secondLink958 : DerivedMapBatches.Batch053.certificate4254.algebra.mat = DerivedMapBatches.Batch053.certificate4255.b := by decide
theorem firstValid958 : DerivedMapBatches.Batch002.certificate171.Valid := DerivedMapBatches.Batch002.certificate171valid
theorem secondValid958 : DerivedMapBatches.Batch053.certificate4254.Valid := DerivedMapBatches.Batch053.certificate4254valid
theorem outputValid958 : DerivedMapBatches.Batch053.certificate4255.Valid := DerivedMapBatches.Batch053.certificate4255valid
theorem linkedComposition958 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4255.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4255.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4254.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat x) := by
  rw [firstLink958, secondLink958]
  exact DerivedMapBatches.Batch053.certificate4255valid.2 x
theorem outputZero958 : DerivedMapBatches.Batch053.certificate4255.c = (fun _ _ => false) := by decide
theorem linkedZero958 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4255.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4254.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate171.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition958, outputZero958]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink959 : DerivedMapBatches.Batch002.certificate172.algebra.mat = DerivedMapBatches.Batch053.certificate4257.a := by decide
theorem secondLink959 : DerivedMapBatches.Batch053.certificate4256.algebra.mat = DerivedMapBatches.Batch053.certificate4257.b := by decide
theorem firstValid959 : DerivedMapBatches.Batch002.certificate172.Valid := DerivedMapBatches.Batch002.certificate172valid
theorem secondValid959 : DerivedMapBatches.Batch053.certificate4256.Valid := DerivedMapBatches.Batch053.certificate4256valid
theorem outputValid959 : DerivedMapBatches.Batch053.certificate4257.Valid := DerivedMapBatches.Batch053.certificate4257valid
theorem linkedComposition959 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4257.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4257.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4256.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate172.algebra.mat x) := by
  rw [firstLink959, secondLink959]
  exact DerivedMapBatches.Batch053.certificate4257valid.2 x
theorem outputZero959 : DerivedMapBatches.Batch053.certificate4257.c = (fun _ _ => false) := by decide
theorem linkedZero959 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4257.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4256.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate172.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition959, outputZero959]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink960 : DerivedMapBatches.Batch002.certificate173.algebra.mat = DerivedMapBatches.Batch053.certificate4259.a := by decide
theorem secondLink960 : DerivedMapBatches.Batch053.certificate4258.algebra.mat = DerivedMapBatches.Batch053.certificate4259.b := by decide
theorem firstValid960 : DerivedMapBatches.Batch002.certificate173.Valid := DerivedMapBatches.Batch002.certificate173valid
theorem secondValid960 : DerivedMapBatches.Batch053.certificate4258.Valid := DerivedMapBatches.Batch053.certificate4258valid
theorem outputValid960 : DerivedMapBatches.Batch053.certificate4259.Valid := DerivedMapBatches.Batch053.certificate4259valid
theorem linkedComposition960 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4259.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4259.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4258.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat x) := by
  rw [firstLink960, secondLink960]
  exact DerivedMapBatches.Batch053.certificate4259valid.2 x
theorem outputZero960 : DerivedMapBatches.Batch053.certificate4259.c = (fun _ _ => false) := by decide
theorem linkedZero960 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4259.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4258.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate173.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition960, outputZero960]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink961 : DerivedMapBatches.Batch002.certificate174.algebra.mat = DerivedMapBatches.Batch053.certificate4261.a := by decide
theorem secondLink961 : DerivedMapBatches.Batch053.certificate4260.algebra.mat = DerivedMapBatches.Batch053.certificate4261.b := by decide
theorem firstValid961 : DerivedMapBatches.Batch002.certificate174.Valid := DerivedMapBatches.Batch002.certificate174valid
theorem secondValid961 : DerivedMapBatches.Batch053.certificate4260.Valid := DerivedMapBatches.Batch053.certificate4260valid
theorem outputValid961 : DerivedMapBatches.Batch053.certificate4261.Valid := DerivedMapBatches.Batch053.certificate4261valid
theorem linkedComposition961 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4261.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4261.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4260.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate174.algebra.mat x) := by
  rw [firstLink961, secondLink961]
  exact DerivedMapBatches.Batch053.certificate4261valid.2 x
theorem outputZero961 : DerivedMapBatches.Batch053.certificate4261.c = (fun _ _ => false) := by decide
theorem linkedZero961 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4261.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4260.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate174.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition961, outputZero961]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink962 : DerivedMapBatches.Batch002.certificate175.algebra.mat = DerivedMapBatches.Batch053.certificate4263.a := by decide
theorem secondLink962 : DerivedMapBatches.Batch053.certificate4262.algebra.mat = DerivedMapBatches.Batch053.certificate4263.b := by decide
theorem firstValid962 : DerivedMapBatches.Batch002.certificate175.Valid := DerivedMapBatches.Batch002.certificate175valid
theorem secondValid962 : DerivedMapBatches.Batch053.certificate4262.Valid := DerivedMapBatches.Batch053.certificate4262valid
theorem outputValid962 : DerivedMapBatches.Batch053.certificate4263.Valid := DerivedMapBatches.Batch053.certificate4263valid
theorem linkedComposition962 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4263.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4263.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4262.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate175.algebra.mat x) := by
  rw [firstLink962, secondLink962]
  exact DerivedMapBatches.Batch053.certificate4263valid.2 x
theorem outputZero962 : DerivedMapBatches.Batch053.certificate4263.c = (fun _ _ => false) := by decide
theorem linkedZero962 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4263.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4262.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate175.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition962, outputZero962]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink963 : DerivedMapBatches.Batch002.certificate176.algebra.mat = DerivedMapBatches.Batch053.certificate4265.a := by decide
theorem secondLink963 : DerivedMapBatches.Batch053.certificate4264.algebra.mat = DerivedMapBatches.Batch053.certificate4265.b := by decide
theorem firstValid963 : DerivedMapBatches.Batch002.certificate176.Valid := DerivedMapBatches.Batch002.certificate176valid
theorem secondValid963 : DerivedMapBatches.Batch053.certificate4264.Valid := DerivedMapBatches.Batch053.certificate4264valid
theorem outputValid963 : DerivedMapBatches.Batch053.certificate4265.Valid := DerivedMapBatches.Batch053.certificate4265valid
theorem linkedComposition963 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4265.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4265.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4264.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate176.algebra.mat x) := by
  rw [firstLink963, secondLink963]
  exact DerivedMapBatches.Batch053.certificate4265valid.2 x
theorem outputZero963 : DerivedMapBatches.Batch053.certificate4265.c = (fun _ _ => false) := by decide
theorem linkedZero963 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4265.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4264.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate176.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition963, outputZero963]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink964 : DerivedMapBatches.Batch002.certificate177.algebra.mat = DerivedMapBatches.Batch053.certificate4267.a := by decide
theorem secondLink964 : DerivedMapBatches.Batch053.certificate4266.algebra.mat = DerivedMapBatches.Batch053.certificate4267.b := by decide
theorem firstValid964 : DerivedMapBatches.Batch002.certificate177.Valid := DerivedMapBatches.Batch002.certificate177valid
theorem secondValid964 : DerivedMapBatches.Batch053.certificate4266.Valid := DerivedMapBatches.Batch053.certificate4266valid
theorem outputValid964 : DerivedMapBatches.Batch053.certificate4267.Valid := DerivedMapBatches.Batch053.certificate4267valid
theorem linkedComposition964 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4267.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4267.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4266.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate177.algebra.mat x) := by
  rw [firstLink964, secondLink964]
  exact DerivedMapBatches.Batch053.certificate4267valid.2 x
theorem outputZero964 : DerivedMapBatches.Batch053.certificate4267.c = (fun _ _ => false) := by decide
theorem linkedZero964 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4267.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4266.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate177.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition964, outputZero964]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink965 : DerivedMapBatches.Batch002.certificate178.algebra.mat = DerivedMapBatches.Batch053.certificate4269.a := by decide
theorem secondLink965 : DerivedMapBatches.Batch053.certificate4268.algebra.mat = DerivedMapBatches.Batch053.certificate4269.b := by decide
theorem firstValid965 : DerivedMapBatches.Batch002.certificate178.Valid := DerivedMapBatches.Batch002.certificate178valid
theorem secondValid965 : DerivedMapBatches.Batch053.certificate4268.Valid := DerivedMapBatches.Batch053.certificate4268valid
theorem outputValid965 : DerivedMapBatches.Batch053.certificate4269.Valid := DerivedMapBatches.Batch053.certificate4269valid
theorem linkedComposition965 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4269.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4269.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4268.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate178.algebra.mat x) := by
  rw [firstLink965, secondLink965]
  exact DerivedMapBatches.Batch053.certificate4269valid.2 x
theorem outputZero965 : DerivedMapBatches.Batch053.certificate4269.c = (fun _ _ => false) := by decide
theorem linkedZero965 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4269.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4268.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate178.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition965, outputZero965]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink966 : DerivedMapBatches.Batch002.certificate179.algebra.mat = DerivedMapBatches.Batch053.certificate4271.a := by decide
theorem secondLink966 : DerivedMapBatches.Batch053.certificate4270.algebra.mat = DerivedMapBatches.Batch053.certificate4271.b := by decide
theorem firstValid966 : DerivedMapBatches.Batch002.certificate179.Valid := DerivedMapBatches.Batch002.certificate179valid
theorem secondValid966 : DerivedMapBatches.Batch053.certificate4270.Valid := DerivedMapBatches.Batch053.certificate4270valid
theorem outputValid966 : DerivedMapBatches.Batch053.certificate4271.Valid := DerivedMapBatches.Batch053.certificate4271valid
theorem linkedComposition966 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4271.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4271.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4270.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate179.algebra.mat x) := by
  rw [firstLink966, secondLink966]
  exact DerivedMapBatches.Batch053.certificate4271valid.2 x
theorem outputZero966 : DerivedMapBatches.Batch053.certificate4271.c = (fun _ _ => false) := by decide
theorem linkedZero966 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4271.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4270.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate179.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition966, outputZero966]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink967 : DerivedMapBatches.Batch002.certificate180.algebra.mat = DerivedMapBatches.Batch053.certificate4273.a := by decide
theorem secondLink967 : DerivedMapBatches.Batch053.certificate4272.algebra.mat = DerivedMapBatches.Batch053.certificate4273.b := by decide
theorem firstValid967 : DerivedMapBatches.Batch002.certificate180.Valid := DerivedMapBatches.Batch002.certificate180valid
theorem secondValid967 : DerivedMapBatches.Batch053.certificate4272.Valid := DerivedMapBatches.Batch053.certificate4272valid
theorem outputValid967 : DerivedMapBatches.Batch053.certificate4273.Valid := DerivedMapBatches.Batch053.certificate4273valid
theorem linkedComposition967 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4273.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4273.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4272.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate180.algebra.mat x) := by
  rw [firstLink967, secondLink967]
  exact DerivedMapBatches.Batch053.certificate4273valid.2 x
theorem outputZero967 : DerivedMapBatches.Batch053.certificate4273.c = (fun _ _ => false) := by decide
theorem linkedZero967 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4273.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4272.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate180.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition967, outputZero967]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink968 : DerivedMapBatches.Batch002.certificate181.algebra.mat = DerivedMapBatches.Batch053.certificate4275.a := by decide
theorem secondLink968 : DerivedMapBatches.Batch053.certificate4274.algebra.mat = DerivedMapBatches.Batch053.certificate4275.b := by decide
theorem firstValid968 : DerivedMapBatches.Batch002.certificate181.Valid := DerivedMapBatches.Batch002.certificate181valid
theorem secondValid968 : DerivedMapBatches.Batch053.certificate4274.Valid := DerivedMapBatches.Batch053.certificate4274valid
theorem outputValid968 : DerivedMapBatches.Batch053.certificate4275.Valid := DerivedMapBatches.Batch053.certificate4275valid
theorem linkedComposition968 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4275.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4275.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4274.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate181.algebra.mat x) := by
  rw [firstLink968, secondLink968]
  exact DerivedMapBatches.Batch053.certificate4275valid.2 x
theorem outputZero968 : DerivedMapBatches.Batch053.certificate4275.c = (fun _ _ => false) := by decide
theorem linkedZero968 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4275.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4274.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate181.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition968, outputZero968]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink969 : DerivedMapBatches.Batch001.certificate130.algebra.mat = DerivedMapBatches.Batch053.certificate4276.a := by decide
theorem secondLink969 : DerivedMapBatches.Batch001.certificate106.algebra.mat = DerivedMapBatches.Batch053.certificate4276.b := by decide
theorem firstValid969 : DerivedMapBatches.Batch001.certificate130.Valid := DerivedMapBatches.Batch001.certificate130valid
theorem secondValid969 : DerivedMapBatches.Batch001.certificate106.Valid := DerivedMapBatches.Batch001.certificate106valid
theorem outputValid969 : DerivedMapBatches.Batch053.certificate4276.Valid := DerivedMapBatches.Batch053.certificate4276valid
theorem linkedComposition969 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4276.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4276.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate130.algebra.mat x) := by
  rw [firstLink969, secondLink969]
  exact DerivedMapBatches.Batch053.certificate4276valid.2 x
theorem outputZero969 : DerivedMapBatches.Batch053.certificate4276.c = (fun _ _ => false) := by decide
theorem linkedZero969 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4276.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate106.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate130.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition969, outputZero969]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink970 : DerivedMapBatches.Batch001.certificate131.algebra.mat = DerivedMapBatches.Batch053.certificate4278.a := by decide
theorem secondLink970 : DerivedMapBatches.Batch053.certificate4277.algebra.mat = DerivedMapBatches.Batch053.certificate4278.b := by decide
theorem firstValid970 : DerivedMapBatches.Batch001.certificate131.Valid := DerivedMapBatches.Batch001.certificate131valid
theorem secondValid970 : DerivedMapBatches.Batch053.certificate4277.Valid := DerivedMapBatches.Batch053.certificate4277valid
theorem outputValid970 : DerivedMapBatches.Batch053.certificate4278.Valid := DerivedMapBatches.Batch053.certificate4278valid
theorem linkedComposition970 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4278.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4278.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat x) := by
  rw [firstLink970, secondLink970]
  exact DerivedMapBatches.Batch053.certificate4278valid.2 x
theorem outputZero970 : DerivedMapBatches.Batch053.certificate4278.c = (fun _ _ => false) := by decide
theorem linkedZero970 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4278.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4277.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate131.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition970, outputZero970]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink971 : DerivedMapBatches.Batch001.certificate132.algebra.mat = DerivedMapBatches.Batch053.certificate4279.a := by decide
theorem secondLink971 : DerivedMapBatches.Batch001.certificate110.algebra.mat = DerivedMapBatches.Batch053.certificate4279.b := by decide
theorem firstValid971 : DerivedMapBatches.Batch001.certificate132.Valid := DerivedMapBatches.Batch001.certificate132valid
theorem secondValid971 : DerivedMapBatches.Batch001.certificate110.Valid := DerivedMapBatches.Batch001.certificate110valid
theorem outputValid971 : DerivedMapBatches.Batch053.certificate4279.Valid := DerivedMapBatches.Batch053.certificate4279valid
theorem linkedComposition971 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4279.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4279.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate132.algebra.mat x) := by
  rw [firstLink971, secondLink971]
  exact DerivedMapBatches.Batch053.certificate4279valid.2 x
theorem outputZero971 : DerivedMapBatches.Batch053.certificate4279.c = (fun _ _ => false) := by decide
theorem linkedZero971 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4279.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate132.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition971, outputZero971]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink972 : DerivedMapBatches.Batch001.certificate133.algebra.mat = DerivedMapBatches.Batch053.certificate4281.a := by decide
theorem secondLink972 : DerivedMapBatches.Batch053.certificate4280.algebra.mat = DerivedMapBatches.Batch053.certificate4281.b := by decide
theorem firstValid972 : DerivedMapBatches.Batch001.certificate133.Valid := DerivedMapBatches.Batch001.certificate133valid
theorem secondValid972 : DerivedMapBatches.Batch053.certificate4280.Valid := DerivedMapBatches.Batch053.certificate4280valid
theorem outputValid972 : DerivedMapBatches.Batch053.certificate4281.Valid := DerivedMapBatches.Batch053.certificate4281valid
theorem linkedComposition972 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4281.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4281.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4280.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat x) := by
  rw [firstLink972, secondLink972]
  exact DerivedMapBatches.Batch053.certificate4281valid.2 x
theorem outputZero972 : DerivedMapBatches.Batch053.certificate4281.c = (fun _ _ => false) := by decide
theorem linkedZero972 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4281.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4280.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition972, outputZero972]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink973 : DerivedMapBatches.Batch001.certificate134.algebra.mat = DerivedMapBatches.Batch053.certificate4282.a := by decide
theorem secondLink973 : DerivedMapBatches.Batch001.certificate114.algebra.mat = DerivedMapBatches.Batch053.certificate4282.b := by decide
theorem firstValid973 : DerivedMapBatches.Batch001.certificate134.Valid := DerivedMapBatches.Batch001.certificate134valid
theorem secondValid973 : DerivedMapBatches.Batch001.certificate114.Valid := DerivedMapBatches.Batch001.certificate114valid
theorem outputValid973 : DerivedMapBatches.Batch053.certificate4282.Valid := DerivedMapBatches.Batch053.certificate4282valid
theorem linkedComposition973 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4282.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4282.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate134.algebra.mat x) := by
  rw [firstLink973, secondLink973]
  exact DerivedMapBatches.Batch053.certificate4282valid.2 x
theorem outputZero973 : DerivedMapBatches.Batch053.certificate4282.c = (fun _ _ => false) := by decide
theorem linkedZero973 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4282.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate114.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate134.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition973, outputZero973]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink974 : DerivedMapBatches.Batch001.certificate135.algebra.mat = DerivedMapBatches.Batch053.certificate4284.a := by decide
theorem secondLink974 : DerivedMapBatches.Batch053.certificate4283.algebra.mat = DerivedMapBatches.Batch053.certificate4284.b := by decide
theorem firstValid974 : DerivedMapBatches.Batch001.certificate135.Valid := DerivedMapBatches.Batch001.certificate135valid
theorem secondValid974 : DerivedMapBatches.Batch053.certificate4283.Valid := DerivedMapBatches.Batch053.certificate4283valid
theorem outputValid974 : DerivedMapBatches.Batch053.certificate4284.Valid := DerivedMapBatches.Batch053.certificate4284valid
theorem linkedComposition974 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4284.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4284.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4283.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat x) := by
  rw [firstLink974, secondLink974]
  exact DerivedMapBatches.Batch053.certificate4284valid.2 x
theorem outputZero974 : DerivedMapBatches.Batch053.certificate4284.c = (fun _ _ => false) := by decide
theorem linkedZero974 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4284.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4283.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate135.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition974, outputZero974]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink975 : DerivedMapBatches.Batch001.certificate136.algebra.mat = DerivedMapBatches.Batch053.certificate4285.a := by decide
theorem secondLink975 : DerivedMapBatches.Batch001.certificate116.algebra.mat = DerivedMapBatches.Batch053.certificate4285.b := by decide
theorem firstValid975 : DerivedMapBatches.Batch001.certificate136.Valid := DerivedMapBatches.Batch001.certificate136valid
theorem secondValid975 : DerivedMapBatches.Batch001.certificate116.Valid := DerivedMapBatches.Batch001.certificate116valid
theorem outputValid975 : DerivedMapBatches.Batch053.certificate4285.Valid := DerivedMapBatches.Batch053.certificate4285valid
theorem linkedComposition975 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4285.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4285.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate136.algebra.mat x) := by
  rw [firstLink975, secondLink975]
  exact DerivedMapBatches.Batch053.certificate4285valid.2 x
theorem outputZero975 : DerivedMapBatches.Batch053.certificate4285.c = (fun _ _ => false) := by decide
theorem linkedZero975 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4285.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate116.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate136.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition975, outputZero975]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink976 : DerivedMapBatches.Batch001.certificate137.algebra.mat = DerivedMapBatches.Batch053.certificate4287.a := by decide
theorem secondLink976 : DerivedMapBatches.Batch053.certificate4286.algebra.mat = DerivedMapBatches.Batch053.certificate4287.b := by decide
theorem firstValid976 : DerivedMapBatches.Batch001.certificate137.Valid := DerivedMapBatches.Batch001.certificate137valid
theorem secondValid976 : DerivedMapBatches.Batch053.certificate4286.Valid := DerivedMapBatches.Batch053.certificate4286valid
theorem outputValid976 : DerivedMapBatches.Batch053.certificate4287.Valid := DerivedMapBatches.Batch053.certificate4287valid
theorem linkedComposition976 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4287.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4287.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4286.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat x) := by
  rw [firstLink976, secondLink976]
  exact DerivedMapBatches.Batch053.certificate4287valid.2 x
theorem outputZero976 : DerivedMapBatches.Batch053.certificate4287.c = (fun _ _ => false) := by decide
theorem linkedZero976 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4287.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4286.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition976, outputZero976]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink977 : DerivedMapBatches.Batch001.certificate138.algebra.mat = DerivedMapBatches.Batch053.certificate4288.a := by decide
theorem secondLink977 : DerivedMapBatches.Batch001.certificate117.algebra.mat = DerivedMapBatches.Batch053.certificate4288.b := by decide
theorem firstValid977 : DerivedMapBatches.Batch001.certificate138.Valid := DerivedMapBatches.Batch001.certificate138valid
theorem secondValid977 : DerivedMapBatches.Batch001.certificate117.Valid := DerivedMapBatches.Batch001.certificate117valid
theorem outputValid977 : DerivedMapBatches.Batch053.certificate4288.Valid := DerivedMapBatches.Batch053.certificate4288valid
theorem linkedComposition977 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4288.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4288.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat x) := by
  rw [firstLink977, secondLink977]
  exact DerivedMapBatches.Batch053.certificate4288valid.2 x
theorem outputZero977 : DerivedMapBatches.Batch053.certificate4288.c = (fun _ _ => false) := by decide
theorem linkedZero977 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4288.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate117.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition977, outputZero977]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink978 : DerivedMapBatches.Batch001.certificate139.algebra.mat = DerivedMapBatches.Batch053.certificate4289.a := by decide
theorem secondLink978 : DerivedMapBatches.Batch001.certificate118.algebra.mat = DerivedMapBatches.Batch053.certificate4289.b := by decide
theorem firstValid978 : DerivedMapBatches.Batch001.certificate139.Valid := DerivedMapBatches.Batch001.certificate139valid
theorem secondValid978 : DerivedMapBatches.Batch001.certificate118.Valid := DerivedMapBatches.Batch001.certificate118valid
theorem outputValid978 : DerivedMapBatches.Batch053.certificate4289.Valid := DerivedMapBatches.Batch053.certificate4289valid
theorem linkedComposition978 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4289.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4289.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat x) := by
  rw [firstLink978, secondLink978]
  exact DerivedMapBatches.Batch053.certificate4289valid.2 x
theorem outputZero978 : DerivedMapBatches.Batch053.certificate4289.c = (fun _ _ => false) := by decide
theorem linkedZero978 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4289.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate118.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate139.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition978, outputZero978]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink979 : DerivedMapBatches.Batch001.certificate140.algebra.mat = DerivedMapBatches.Batch053.certificate4290.a := by decide
theorem secondLink979 : DerivedMapBatches.Batch001.certificate119.algebra.mat = DerivedMapBatches.Batch053.certificate4290.b := by decide
theorem firstValid979 : DerivedMapBatches.Batch001.certificate140.Valid := DerivedMapBatches.Batch001.certificate140valid
theorem secondValid979 : DerivedMapBatches.Batch001.certificate119.Valid := DerivedMapBatches.Batch001.certificate119valid
theorem outputValid979 : DerivedMapBatches.Batch053.certificate4290.Valid := DerivedMapBatches.Batch053.certificate4290valid
theorem linkedComposition979 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4290.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4290.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate140.algebra.mat x) := by
  rw [firstLink979, secondLink979]
  exact DerivedMapBatches.Batch053.certificate4290valid.2 x
theorem outputZero979 : DerivedMapBatches.Batch053.certificate4290.c = (fun _ _ => false) := by decide
theorem linkedZero979 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4290.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate119.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate140.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition979, outputZero979]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink980 : DerivedMapBatches.Batch001.certificate141.algebra.mat = DerivedMapBatches.Batch053.certificate4292.a := by decide
theorem secondLink980 : DerivedMapBatches.Batch053.certificate4291.algebra.mat = DerivedMapBatches.Batch053.certificate4292.b := by decide
theorem firstValid980 : DerivedMapBatches.Batch001.certificate141.Valid := DerivedMapBatches.Batch001.certificate141valid
theorem secondValid980 : DerivedMapBatches.Batch053.certificate4291.Valid := DerivedMapBatches.Batch053.certificate4291valid
theorem outputValid980 : DerivedMapBatches.Batch053.certificate4292.Valid := DerivedMapBatches.Batch053.certificate4292valid
theorem linkedComposition980 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4292.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4292.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4291.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat x) := by
  rw [firstLink980, secondLink980]
  exact DerivedMapBatches.Batch053.certificate4292valid.2 x
theorem outputZero980 : DerivedMapBatches.Batch053.certificate4292.c = (fun _ _ => false) := by decide
theorem linkedZero980 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4292.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4291.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate141.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition980, outputZero980]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink981 : DerivedMapBatches.Batch001.certificate142.algebra.mat = DerivedMapBatches.Batch053.certificate4294.a := by decide
theorem secondLink981 : DerivedMapBatches.Batch053.certificate4293.algebra.mat = DerivedMapBatches.Batch053.certificate4294.b := by decide
theorem firstValid981 : DerivedMapBatches.Batch001.certificate142.Valid := DerivedMapBatches.Batch001.certificate142valid
theorem secondValid981 : DerivedMapBatches.Batch053.certificate4293.Valid := DerivedMapBatches.Batch053.certificate4293valid
theorem outputValid981 : DerivedMapBatches.Batch053.certificate4294.Valid := DerivedMapBatches.Batch053.certificate4294valid
theorem linkedComposition981 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4294.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4294.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4293.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat x) := by
  rw [firstLink981, secondLink981]
  exact DerivedMapBatches.Batch053.certificate4294valid.2 x
theorem outputZero981 : DerivedMapBatches.Batch053.certificate4294.c = (fun _ _ => false) := by decide
theorem linkedZero981 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4294.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4293.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate142.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition981, outputZero981]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink982 : DerivedMapBatches.Batch001.certificate143.algebra.mat = DerivedMapBatches.Batch053.certificate4296.a := by decide
theorem secondLink982 : DerivedMapBatches.Batch053.certificate4295.algebra.mat = DerivedMapBatches.Batch053.certificate4296.b := by decide
theorem firstValid982 : DerivedMapBatches.Batch001.certificate143.Valid := DerivedMapBatches.Batch001.certificate143valid
theorem secondValid982 : DerivedMapBatches.Batch053.certificate4295.Valid := DerivedMapBatches.Batch053.certificate4295valid
theorem outputValid982 : DerivedMapBatches.Batch053.certificate4296.Valid := DerivedMapBatches.Batch053.certificate4296valid
theorem linkedComposition982 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4296.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4296.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4295.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat x) := by
  rw [firstLink982, secondLink982]
  exact DerivedMapBatches.Batch053.certificate4296valid.2 x
theorem outputZero982 : DerivedMapBatches.Batch053.certificate4296.c = (fun _ _ => false) := by decide
theorem linkedZero982 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4296.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4295.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate143.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition982, outputZero982]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink983 : DerivedMapBatches.Batch001.certificate144.algebra.mat = DerivedMapBatches.Batch053.certificate4298.a := by decide
theorem secondLink983 : DerivedMapBatches.Batch053.certificate4297.algebra.mat = DerivedMapBatches.Batch053.certificate4298.b := by decide
theorem firstValid983 : DerivedMapBatches.Batch001.certificate144.Valid := DerivedMapBatches.Batch001.certificate144valid
theorem secondValid983 : DerivedMapBatches.Batch053.certificate4297.Valid := DerivedMapBatches.Batch053.certificate4297valid
theorem outputValid983 : DerivedMapBatches.Batch053.certificate4298.Valid := DerivedMapBatches.Batch053.certificate4298valid
theorem linkedComposition983 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4298.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4298.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4297.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat x) := by
  rw [firstLink983, secondLink983]
  exact DerivedMapBatches.Batch053.certificate4298valid.2 x
theorem outputZero983 : DerivedMapBatches.Batch053.certificate4298.c = (fun _ _ => false) := by decide
theorem linkedZero983 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4298.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4297.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate144.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition983, outputZero983]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink984 : DerivedMapBatches.Batch001.certificate145.algebra.mat = DerivedMapBatches.Batch053.certificate4300.a := by decide
theorem secondLink984 : DerivedMapBatches.Batch053.certificate4299.algebra.mat = DerivedMapBatches.Batch053.certificate4300.b := by decide
theorem firstValid984 : DerivedMapBatches.Batch001.certificate145.Valid := DerivedMapBatches.Batch001.certificate145valid
theorem secondValid984 : DerivedMapBatches.Batch053.certificate4299.Valid := DerivedMapBatches.Batch053.certificate4299valid
theorem outputValid984 : DerivedMapBatches.Batch053.certificate4300.Valid := DerivedMapBatches.Batch053.certificate4300valid
theorem linkedComposition984 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4300.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4300.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4299.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat x) := by
  rw [firstLink984, secondLink984]
  exact DerivedMapBatches.Batch053.certificate4300valid.2 x
theorem outputZero984 : DerivedMapBatches.Batch053.certificate4300.c = (fun _ _ => false) := by decide
theorem linkedZero984 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4300.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4299.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate145.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition984, outputZero984]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink985 : DerivedMapBatches.Batch001.certificate146.algebra.mat = DerivedMapBatches.Batch053.certificate4302.a := by decide
theorem secondLink985 : DerivedMapBatches.Batch053.certificate4301.algebra.mat = DerivedMapBatches.Batch053.certificate4302.b := by decide
theorem firstValid985 : DerivedMapBatches.Batch001.certificate146.Valid := DerivedMapBatches.Batch001.certificate146valid
theorem secondValid985 : DerivedMapBatches.Batch053.certificate4301.Valid := DerivedMapBatches.Batch053.certificate4301valid
theorem outputValid985 : DerivedMapBatches.Batch053.certificate4302.Valid := DerivedMapBatches.Batch053.certificate4302valid
theorem linkedComposition985 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4302.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4302.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4301.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat x) := by
  rw [firstLink985, secondLink985]
  exact DerivedMapBatches.Batch053.certificate4302valid.2 x
theorem outputZero985 : DerivedMapBatches.Batch053.certificate4302.c = (fun _ _ => false) := by decide
theorem linkedZero985 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4302.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4301.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate146.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition985, outputZero985]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink986 : DerivedMapBatches.Batch001.certificate147.algebra.mat = DerivedMapBatches.Batch053.certificate4304.a := by decide
theorem secondLink986 : DerivedMapBatches.Batch053.certificate4303.algebra.mat = DerivedMapBatches.Batch053.certificate4304.b := by decide
theorem firstValid986 : DerivedMapBatches.Batch001.certificate147.Valid := DerivedMapBatches.Batch001.certificate147valid
theorem secondValid986 : DerivedMapBatches.Batch053.certificate4303.Valid := DerivedMapBatches.Batch053.certificate4303valid
theorem outputValid986 : DerivedMapBatches.Batch053.certificate4304.Valid := DerivedMapBatches.Batch053.certificate4304valid
theorem linkedComposition986 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4304.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4304.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4303.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat x) := by
  rw [firstLink986, secondLink986]
  exact DerivedMapBatches.Batch053.certificate4304valid.2 x
theorem outputZero986 : DerivedMapBatches.Batch053.certificate4304.c = (fun _ _ => false) := by decide
theorem linkedZero986 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4304.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4303.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate147.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition986, outputZero986]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink987 : DerivedMapBatches.Batch001.certificate148.algebra.mat = DerivedMapBatches.Batch053.certificate4306.a := by decide
theorem secondLink987 : DerivedMapBatches.Batch053.certificate4305.algebra.mat = DerivedMapBatches.Batch053.certificate4306.b := by decide
theorem firstValid987 : DerivedMapBatches.Batch001.certificate148.Valid := DerivedMapBatches.Batch001.certificate148valid
theorem secondValid987 : DerivedMapBatches.Batch053.certificate4305.Valid := DerivedMapBatches.Batch053.certificate4305valid
theorem outputValid987 : DerivedMapBatches.Batch053.certificate4306.Valid := DerivedMapBatches.Batch053.certificate4306valid
theorem linkedComposition987 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4306.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4306.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4305.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat x) := by
  rw [firstLink987, secondLink987]
  exact DerivedMapBatches.Batch053.certificate4306valid.2 x
theorem outputZero987 : DerivedMapBatches.Batch053.certificate4306.c = (fun _ _ => false) := by decide
theorem linkedZero987 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4306.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4305.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate148.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition987, outputZero987]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink988 : DerivedMapBatches.Batch001.certificate149.algebra.mat = DerivedMapBatches.Batch053.certificate4308.a := by decide
theorem secondLink988 : DerivedMapBatches.Batch053.certificate4307.algebra.mat = DerivedMapBatches.Batch053.certificate4308.b := by decide
theorem firstValid988 : DerivedMapBatches.Batch001.certificate149.Valid := DerivedMapBatches.Batch001.certificate149valid
theorem secondValid988 : DerivedMapBatches.Batch053.certificate4307.Valid := DerivedMapBatches.Batch053.certificate4307valid
theorem outputValid988 : DerivedMapBatches.Batch053.certificate4308.Valid := DerivedMapBatches.Batch053.certificate4308valid
theorem linkedComposition988 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4308.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4308.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4307.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat x) := by
  rw [firstLink988, secondLink988]
  exact DerivedMapBatches.Batch053.certificate4308valid.2 x
theorem outputZero988 : DerivedMapBatches.Batch053.certificate4308.c = (fun _ _ => false) := by decide
theorem linkedZero988 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4308.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4307.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate149.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition988, outputZero988]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink989 : DerivedMapBatches.Batch001.certificate150.algebra.mat = DerivedMapBatches.Batch053.certificate4310.a := by decide
theorem secondLink989 : DerivedMapBatches.Batch053.certificate4309.algebra.mat = DerivedMapBatches.Batch053.certificate4310.b := by decide
theorem firstValid989 : DerivedMapBatches.Batch001.certificate150.Valid := DerivedMapBatches.Batch001.certificate150valid
theorem secondValid989 : DerivedMapBatches.Batch053.certificate4309.Valid := DerivedMapBatches.Batch053.certificate4309valid
theorem outputValid989 : DerivedMapBatches.Batch053.certificate4310.Valid := DerivedMapBatches.Batch053.certificate4310valid
theorem linkedComposition989 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4310.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4310.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4309.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat x) := by
  rw [firstLink989, secondLink989]
  exact DerivedMapBatches.Batch053.certificate4310valid.2 x
theorem outputZero989 : DerivedMapBatches.Batch053.certificate4310.c = (fun _ _ => false) := by decide
theorem linkedZero989 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4310.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4309.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate150.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition989, outputZero989]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink990 : DerivedMapBatches.Batch001.certificate151.algebra.mat = DerivedMapBatches.Batch053.certificate4312.a := by decide
theorem secondLink990 : DerivedMapBatches.Batch053.certificate4311.algebra.mat = DerivedMapBatches.Batch053.certificate4312.b := by decide
theorem firstValid990 : DerivedMapBatches.Batch001.certificate151.Valid := DerivedMapBatches.Batch001.certificate151valid
theorem secondValid990 : DerivedMapBatches.Batch053.certificate4311.Valid := DerivedMapBatches.Batch053.certificate4311valid
theorem outputValid990 : DerivedMapBatches.Batch053.certificate4312.Valid := DerivedMapBatches.Batch053.certificate4312valid
theorem linkedComposition990 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4312.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4312.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4311.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat x) := by
  rw [firstLink990, secondLink990]
  exact DerivedMapBatches.Batch053.certificate4312valid.2 x
theorem outputZero990 : DerivedMapBatches.Batch053.certificate4312.c = (fun _ _ => false) := by decide
theorem linkedZero990 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4312.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4311.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate151.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition990, outputZero990]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink991 : DerivedMapBatches.Batch001.certificate152.algebra.mat = DerivedMapBatches.Batch053.certificate4314.a := by decide
theorem secondLink991 : DerivedMapBatches.Batch053.certificate4313.algebra.mat = DerivedMapBatches.Batch053.certificate4314.b := by decide
theorem firstValid991 : DerivedMapBatches.Batch001.certificate152.Valid := DerivedMapBatches.Batch001.certificate152valid
theorem secondValid991 : DerivedMapBatches.Batch053.certificate4313.Valid := DerivedMapBatches.Batch053.certificate4313valid
theorem outputValid991 : DerivedMapBatches.Batch053.certificate4314.Valid := DerivedMapBatches.Batch053.certificate4314valid
theorem linkedComposition991 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4314.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4314.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4313.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat x) := by
  rw [firstLink991, secondLink991]
  exact DerivedMapBatches.Batch053.certificate4314valid.2 x
theorem outputZero991 : DerivedMapBatches.Batch053.certificate4314.c = (fun _ _ => false) := by decide
theorem linkedZero991 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4314.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4313.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate152.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition991, outputZero991]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink992 : DerivedMapBatches.Batch001.certificate153.algebra.mat = DerivedMapBatches.Batch053.certificate4316.a := by decide
theorem secondLink992 : DerivedMapBatches.Batch053.certificate4315.algebra.mat = DerivedMapBatches.Batch053.certificate4316.b := by decide
theorem firstValid992 : DerivedMapBatches.Batch001.certificate153.Valid := DerivedMapBatches.Batch001.certificate153valid
theorem secondValid992 : DerivedMapBatches.Batch053.certificate4315.Valid := DerivedMapBatches.Batch053.certificate4315valid
theorem outputValid992 : DerivedMapBatches.Batch053.certificate4316.Valid := DerivedMapBatches.Batch053.certificate4316valid
theorem linkedComposition992 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4316.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4316.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4315.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat x) := by
  rw [firstLink992, secondLink992]
  exact DerivedMapBatches.Batch053.certificate4316valid.2 x
theorem outputZero992 : DerivedMapBatches.Batch053.certificate4316.c = (fun _ _ => false) := by decide
theorem linkedZero992 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4316.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4315.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate153.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition992, outputZero992]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink993 : DerivedMapBatches.Batch001.certificate154.algebra.mat = DerivedMapBatches.Batch053.certificate4318.a := by decide
theorem secondLink993 : DerivedMapBatches.Batch053.certificate4317.algebra.mat = DerivedMapBatches.Batch053.certificate4318.b := by decide
theorem firstValid993 : DerivedMapBatches.Batch001.certificate154.Valid := DerivedMapBatches.Batch001.certificate154valid
theorem secondValid993 : DerivedMapBatches.Batch053.certificate4317.Valid := DerivedMapBatches.Batch053.certificate4317valid
theorem outputValid993 : DerivedMapBatches.Batch053.certificate4318.Valid := DerivedMapBatches.Batch053.certificate4318valid
theorem linkedComposition993 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4318.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4318.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4317.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat x) := by
  rw [firstLink993, secondLink993]
  exact DerivedMapBatches.Batch053.certificate4318valid.2 x
theorem outputZero993 : DerivedMapBatches.Batch053.certificate4318.c = (fun _ _ => false) := by decide
theorem linkedZero993 (x : LinearCertificates.Vec DerivedMapBatches.Batch053.certificate4318.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4317.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate154.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition993, outputZero993]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink994 : DerivedMapBatches.Batch001.certificate155.algebra.mat = DerivedMapBatches.Batch054.certificate4320.a := by decide
theorem secondLink994 : DerivedMapBatches.Batch053.certificate4319.algebra.mat = DerivedMapBatches.Batch054.certificate4320.b := by decide
theorem firstValid994 : DerivedMapBatches.Batch001.certificate155.Valid := DerivedMapBatches.Batch001.certificate155valid
theorem secondValid994 : DerivedMapBatches.Batch053.certificate4319.Valid := DerivedMapBatches.Batch053.certificate4319valid
theorem outputValid994 : DerivedMapBatches.Batch054.certificate4320.Valid := DerivedMapBatches.Batch054.certificate4320valid
theorem linkedComposition994 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4320.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4320.c x = LinearCertificates.eval DerivedMapBatches.Batch053.certificate4319.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat x) := by
  rw [firstLink994, secondLink994]
  exact DerivedMapBatches.Batch054.certificate4320valid.2 x
theorem outputZero994 : DerivedMapBatches.Batch054.certificate4320.c = (fun _ _ => false) := by decide
theorem linkedZero994 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4320.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch053.certificate4319.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate155.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition994, outputZero994]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink995 : DerivedMapBatches.Batch001.certificate156.algebra.mat = DerivedMapBatches.Batch054.certificate4321.a := by decide
theorem secondLink995 : DerivedMapBatches.Batch001.certificate133.algebra.mat = DerivedMapBatches.Batch054.certificate4321.b := by decide
theorem firstValid995 : DerivedMapBatches.Batch001.certificate156.Valid := DerivedMapBatches.Batch001.certificate156valid
theorem secondValid995 : DerivedMapBatches.Batch001.certificate133.Valid := DerivedMapBatches.Batch001.certificate133valid
theorem outputValid995 : DerivedMapBatches.Batch054.certificate4321.Valid := DerivedMapBatches.Batch054.certificate4321valid
theorem linkedComposition995 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4321.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4321.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate156.algebra.mat x) := by
  rw [firstLink995, secondLink995]
  exact DerivedMapBatches.Batch054.certificate4321valid.2 x
theorem outputZero995 : DerivedMapBatches.Batch054.certificate4321.c = (fun _ _ => false) := by decide
theorem linkedZero995 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4321.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate133.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate156.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition995, outputZero995]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink996 : DerivedMapBatches.Batch001.certificate157.algebra.mat = DerivedMapBatches.Batch054.certificate4322.a := by decide
theorem secondLink996 : DerivedMapBatches.Batch001.certificate137.algebra.mat = DerivedMapBatches.Batch054.certificate4322.b := by decide
theorem firstValid996 : DerivedMapBatches.Batch001.certificate157.Valid := DerivedMapBatches.Batch001.certificate157valid
theorem secondValid996 : DerivedMapBatches.Batch001.certificate137.Valid := DerivedMapBatches.Batch001.certificate137valid
theorem outputValid996 : DerivedMapBatches.Batch054.certificate4322.Valid := DerivedMapBatches.Batch054.certificate4322valid
theorem linkedComposition996 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4322.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4322.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate157.algebra.mat x) := by
  rw [firstLink996, secondLink996]
  exact DerivedMapBatches.Batch054.certificate4322valid.2 x
theorem outputZero996 : DerivedMapBatches.Batch054.certificate4322.c = (fun _ _ => false) := by decide
theorem linkedZero996 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4322.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate137.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate157.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition996, outputZero996]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink997 : DerivedMapBatches.Batch001.certificate158.algebra.mat = DerivedMapBatches.Batch054.certificate4324.a := by decide
theorem secondLink997 : DerivedMapBatches.Batch054.certificate4323.algebra.mat = DerivedMapBatches.Batch054.certificate4324.b := by decide
theorem firstValid997 : DerivedMapBatches.Batch001.certificate158.Valid := DerivedMapBatches.Batch001.certificate158valid
theorem secondValid997 : DerivedMapBatches.Batch054.certificate4323.Valid := DerivedMapBatches.Batch054.certificate4323valid
theorem outputValid997 : DerivedMapBatches.Batch054.certificate4324.Valid := DerivedMapBatches.Batch054.certificate4324valid
theorem linkedComposition997 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4324.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4324.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4323.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat x) := by
  rw [firstLink997, secondLink997]
  exact DerivedMapBatches.Batch054.certificate4324valid.2 x
theorem outputZero997 : DerivedMapBatches.Batch054.certificate4324.c = (fun _ _ => false) := by decide
theorem linkedZero997 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4324.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4323.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate158.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition997, outputZero997]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink998 : DerivedMapBatches.Batch001.certificate159.algebra.mat = DerivedMapBatches.Batch054.certificate4325.a := by decide
theorem secondLink998 : DerivedMapBatches.Batch001.certificate138.algebra.mat = DerivedMapBatches.Batch054.certificate4325.b := by decide
theorem firstValid998 : DerivedMapBatches.Batch001.certificate159.Valid := DerivedMapBatches.Batch001.certificate159valid
theorem secondValid998 : DerivedMapBatches.Batch001.certificate138.Valid := DerivedMapBatches.Batch001.certificate138valid
theorem outputValid998 : DerivedMapBatches.Batch054.certificate4325.Valid := DerivedMapBatches.Batch054.certificate4325valid
theorem linkedComposition998 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4325.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4325.c x = LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate159.algebra.mat x) := by
  rw [firstLink998, secondLink998]
  exact DerivedMapBatches.Batch054.certificate4325valid.2 x
theorem outputZero998 : DerivedMapBatches.Batch054.certificate4325.c = (fun _ _ => false) := by decide
theorem linkedZero998 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4325.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch001.certificate138.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch001.certificate159.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition998, outputZero998]
  funext i
  exact LinearCertificates.zero_dot x
theorem firstLink999 : DerivedMapBatches.Batch002.certificate160.algebra.mat = DerivedMapBatches.Batch054.certificate4327.a := by decide
theorem secondLink999 : DerivedMapBatches.Batch054.certificate4326.algebra.mat = DerivedMapBatches.Batch054.certificate4327.b := by decide
theorem firstValid999 : DerivedMapBatches.Batch002.certificate160.Valid := DerivedMapBatches.Batch002.certificate160valid
theorem secondValid999 : DerivedMapBatches.Batch054.certificate4326.Valid := DerivedMapBatches.Batch054.certificate4326valid
theorem outputValid999 : DerivedMapBatches.Batch054.certificate4327.Valid := DerivedMapBatches.Batch054.certificate4327valid
theorem linkedComposition999 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4327.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4327.c x = LinearCertificates.eval DerivedMapBatches.Batch054.certificate4326.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat x) := by
  rw [firstLink999, secondLink999]
  exact DerivedMapBatches.Batch054.certificate4327valid.2 x
theorem outputZero999 : DerivedMapBatches.Batch054.certificate4327.c = (fun _ _ => false) := by decide
theorem linkedZero999 (x : LinearCertificates.Vec DerivedMapBatches.Batch054.certificate4327.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch054.certificate4326.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch002.certificate160.algebra.mat x) = LinearCertificates.zero := by
  rw [← linkedComposition999, outputZero999]
  funext i
  exact LinearCertificates.zero_dot x
end DerivedLinkageBatches.Batch019
