import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch009
import DerivedMapBatches.Batch010
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch000
theorem firstLink0 : DerivedMapBatches.Batch009.certificate728.algebra.mat = DerivedMapBatches.Batch009.certificate730.a := by decide
theorem secondLink0 : DerivedMapBatches.Batch009.certificate729.algebra.mat = DerivedMapBatches.Batch009.certificate730.b := by decide
theorem firstValid0 : DerivedMapBatches.Batch009.certificate728.Valid := DerivedMapBatches.Batch009.certificate728valid
theorem secondValid0 : DerivedMapBatches.Batch009.certificate729.Valid := DerivedMapBatches.Batch009.certificate729valid
theorem outputValid0 : DerivedMapBatches.Batch009.certificate730.Valid := DerivedMapBatches.Batch009.certificate730valid
theorem linkedComposition0 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate730.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate730.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate729.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate728.algebra.mat x) := by
  rw [firstLink0, secondLink0]
  exact DerivedMapBatches.Batch009.certificate730valid.2 x
theorem firstLink1 : DerivedMapBatches.Batch009.certificate731.algebra.mat = DerivedMapBatches.Batch009.certificate733.a := by decide
theorem secondLink1 : DerivedMapBatches.Batch009.certificate732.algebra.mat = DerivedMapBatches.Batch009.certificate733.b := by decide
theorem firstValid1 : DerivedMapBatches.Batch009.certificate731.Valid := DerivedMapBatches.Batch009.certificate731valid
theorem secondValid1 : DerivedMapBatches.Batch009.certificate732.Valid := DerivedMapBatches.Batch009.certificate732valid
theorem outputValid1 : DerivedMapBatches.Batch009.certificate733.Valid := DerivedMapBatches.Batch009.certificate733valid
theorem linkedComposition1 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate733.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate733.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate732.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate731.algebra.mat x) := by
  rw [firstLink1, secondLink1]
  exact DerivedMapBatches.Batch009.certificate733valid.2 x
theorem firstLink2 : DerivedMapBatches.Batch009.certificate734.algebra.mat = DerivedMapBatches.Batch009.certificate736.a := by decide
theorem secondLink2 : DerivedMapBatches.Batch009.certificate735.algebra.mat = DerivedMapBatches.Batch009.certificate736.b := by decide
theorem firstValid2 : DerivedMapBatches.Batch009.certificate734.Valid := DerivedMapBatches.Batch009.certificate734valid
theorem secondValid2 : DerivedMapBatches.Batch009.certificate735.Valid := DerivedMapBatches.Batch009.certificate735valid
theorem outputValid2 : DerivedMapBatches.Batch009.certificate736.Valid := DerivedMapBatches.Batch009.certificate736valid
theorem linkedComposition2 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate736.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate736.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate735.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate734.algebra.mat x) := by
  rw [firstLink2, secondLink2]
  exact DerivedMapBatches.Batch009.certificate736valid.2 x
theorem firstLink3 : DerivedMapBatches.Batch009.certificate737.algebra.mat = DerivedMapBatches.Batch009.certificate739.a := by decide
theorem secondLink3 : DerivedMapBatches.Batch009.certificate738.algebra.mat = DerivedMapBatches.Batch009.certificate739.b := by decide
theorem firstValid3 : DerivedMapBatches.Batch009.certificate737.Valid := DerivedMapBatches.Batch009.certificate737valid
theorem secondValid3 : DerivedMapBatches.Batch009.certificate738.Valid := DerivedMapBatches.Batch009.certificate738valid
theorem outputValid3 : DerivedMapBatches.Batch009.certificate739.Valid := DerivedMapBatches.Batch009.certificate739valid
theorem linkedComposition3 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate739.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate739.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate738.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate737.algebra.mat x) := by
  rw [firstLink3, secondLink3]
  exact DerivedMapBatches.Batch009.certificate739valid.2 x
theorem firstLink4 : DerivedMapBatches.Batch009.certificate740.algebra.mat = DerivedMapBatches.Batch009.certificate742.a := by decide
theorem secondLink4 : DerivedMapBatches.Batch009.certificate741.algebra.mat = DerivedMapBatches.Batch009.certificate742.b := by decide
theorem firstValid4 : DerivedMapBatches.Batch009.certificate740.Valid := DerivedMapBatches.Batch009.certificate740valid
theorem secondValid4 : DerivedMapBatches.Batch009.certificate741.Valid := DerivedMapBatches.Batch009.certificate741valid
theorem outputValid4 : DerivedMapBatches.Batch009.certificate742.Valid := DerivedMapBatches.Batch009.certificate742valid
theorem linkedComposition4 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate742.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate742.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate741.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate740.algebra.mat x) := by
  rw [firstLink4, secondLink4]
  exact DerivedMapBatches.Batch009.certificate742valid.2 x
theorem firstLink5 : DerivedMapBatches.Batch009.certificate743.algebra.mat = DerivedMapBatches.Batch009.certificate745.a := by decide
theorem secondLink5 : DerivedMapBatches.Batch009.certificate744.algebra.mat = DerivedMapBatches.Batch009.certificate745.b := by decide
theorem firstValid5 : DerivedMapBatches.Batch009.certificate743.Valid := DerivedMapBatches.Batch009.certificate743valid
theorem secondValid5 : DerivedMapBatches.Batch009.certificate744.Valid := DerivedMapBatches.Batch009.certificate744valid
theorem outputValid5 : DerivedMapBatches.Batch009.certificate745.Valid := DerivedMapBatches.Batch009.certificate745valid
theorem linkedComposition5 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate745.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate745.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate744.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate743.algebra.mat x) := by
  rw [firstLink5, secondLink5]
  exact DerivedMapBatches.Batch009.certificate745valid.2 x
theorem firstLink6 : DerivedMapBatches.Batch009.certificate746.algebra.mat = DerivedMapBatches.Batch009.certificate748.a := by decide
theorem secondLink6 : DerivedMapBatches.Batch009.certificate747.algebra.mat = DerivedMapBatches.Batch009.certificate748.b := by decide
theorem firstValid6 : DerivedMapBatches.Batch009.certificate746.Valid := DerivedMapBatches.Batch009.certificate746valid
theorem secondValid6 : DerivedMapBatches.Batch009.certificate747.Valid := DerivedMapBatches.Batch009.certificate747valid
theorem outputValid6 : DerivedMapBatches.Batch009.certificate748.Valid := DerivedMapBatches.Batch009.certificate748valid
theorem linkedComposition6 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate748.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate748.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate747.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate746.algebra.mat x) := by
  rw [firstLink6, secondLink6]
  exact DerivedMapBatches.Batch009.certificate748valid.2 x
theorem firstLink7 : DerivedMapBatches.Batch009.certificate749.algebra.mat = DerivedMapBatches.Batch009.certificate751.a := by decide
theorem secondLink7 : DerivedMapBatches.Batch009.certificate750.algebra.mat = DerivedMapBatches.Batch009.certificate751.b := by decide
theorem firstValid7 : DerivedMapBatches.Batch009.certificate749.Valid := DerivedMapBatches.Batch009.certificate749valid
theorem secondValid7 : DerivedMapBatches.Batch009.certificate750.Valid := DerivedMapBatches.Batch009.certificate750valid
theorem outputValid7 : DerivedMapBatches.Batch009.certificate751.Valid := DerivedMapBatches.Batch009.certificate751valid
theorem linkedComposition7 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate751.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate751.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate750.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate749.algebra.mat x) := by
  rw [firstLink7, secondLink7]
  exact DerivedMapBatches.Batch009.certificate751valid.2 x
theorem firstLink8 : DerivedMapBatches.Batch009.certificate752.algebra.mat = DerivedMapBatches.Batch009.certificate754.a := by decide
theorem secondLink8 : DerivedMapBatches.Batch009.certificate753.algebra.mat = DerivedMapBatches.Batch009.certificate754.b := by decide
theorem firstValid8 : DerivedMapBatches.Batch009.certificate752.Valid := DerivedMapBatches.Batch009.certificate752valid
theorem secondValid8 : DerivedMapBatches.Batch009.certificate753.Valid := DerivedMapBatches.Batch009.certificate753valid
theorem outputValid8 : DerivedMapBatches.Batch009.certificate754.Valid := DerivedMapBatches.Batch009.certificate754valid
theorem linkedComposition8 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate754.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate754.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate753.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate752.algebra.mat x) := by
  rw [firstLink8, secondLink8]
  exact DerivedMapBatches.Batch009.certificate754valid.2 x
theorem firstLink9 : DerivedMapBatches.Batch009.certificate755.algebra.mat = DerivedMapBatches.Batch009.certificate757.a := by decide
theorem secondLink9 : DerivedMapBatches.Batch009.certificate756.algebra.mat = DerivedMapBatches.Batch009.certificate757.b := by decide
theorem firstValid9 : DerivedMapBatches.Batch009.certificate755.Valid := DerivedMapBatches.Batch009.certificate755valid
theorem secondValid9 : DerivedMapBatches.Batch009.certificate756.Valid := DerivedMapBatches.Batch009.certificate756valid
theorem outputValid9 : DerivedMapBatches.Batch009.certificate757.Valid := DerivedMapBatches.Batch009.certificate757valid
theorem linkedComposition9 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate757.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate757.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate756.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate755.algebra.mat x) := by
  rw [firstLink9, secondLink9]
  exact DerivedMapBatches.Batch009.certificate757valid.2 x
theorem firstLink10 : DerivedMapBatches.Batch009.certificate758.algebra.mat = DerivedMapBatches.Batch009.certificate760.a := by decide
theorem secondLink10 : DerivedMapBatches.Batch009.certificate759.algebra.mat = DerivedMapBatches.Batch009.certificate760.b := by decide
theorem firstValid10 : DerivedMapBatches.Batch009.certificate758.Valid := DerivedMapBatches.Batch009.certificate758valid
theorem secondValid10 : DerivedMapBatches.Batch009.certificate759.Valid := DerivedMapBatches.Batch009.certificate759valid
theorem outputValid10 : DerivedMapBatches.Batch009.certificate760.Valid := DerivedMapBatches.Batch009.certificate760valid
theorem linkedComposition10 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate760.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate760.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate759.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate758.algebra.mat x) := by
  rw [firstLink10, secondLink10]
  exact DerivedMapBatches.Batch009.certificate760valid.2 x
theorem firstLink11 : DerivedMapBatches.Batch009.certificate761.algebra.mat = DerivedMapBatches.Batch009.certificate763.a := by decide
theorem secondLink11 : DerivedMapBatches.Batch009.certificate762.algebra.mat = DerivedMapBatches.Batch009.certificate763.b := by decide
theorem firstValid11 : DerivedMapBatches.Batch009.certificate761.Valid := DerivedMapBatches.Batch009.certificate761valid
theorem secondValid11 : DerivedMapBatches.Batch009.certificate762.Valid := DerivedMapBatches.Batch009.certificate762valid
theorem outputValid11 : DerivedMapBatches.Batch009.certificate763.Valid := DerivedMapBatches.Batch009.certificate763valid
theorem linkedComposition11 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate763.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate763.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate762.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate761.algebra.mat x) := by
  rw [firstLink11, secondLink11]
  exact DerivedMapBatches.Batch009.certificate763valid.2 x
theorem firstLink12 : DerivedMapBatches.Batch009.certificate764.algebra.mat = DerivedMapBatches.Batch009.certificate766.a := by decide
theorem secondLink12 : DerivedMapBatches.Batch009.certificate765.algebra.mat = DerivedMapBatches.Batch009.certificate766.b := by decide
theorem firstValid12 : DerivedMapBatches.Batch009.certificate764.Valid := DerivedMapBatches.Batch009.certificate764valid
theorem secondValid12 : DerivedMapBatches.Batch009.certificate765.Valid := DerivedMapBatches.Batch009.certificate765valid
theorem outputValid12 : DerivedMapBatches.Batch009.certificate766.Valid := DerivedMapBatches.Batch009.certificate766valid
theorem linkedComposition12 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate766.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate766.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate765.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate764.algebra.mat x) := by
  rw [firstLink12, secondLink12]
  exact DerivedMapBatches.Batch009.certificate766valid.2 x
theorem firstLink13 : DerivedMapBatches.Batch009.certificate767.algebra.mat = DerivedMapBatches.Batch009.certificate769.a := by decide
theorem secondLink13 : DerivedMapBatches.Batch009.certificate768.algebra.mat = DerivedMapBatches.Batch009.certificate769.b := by decide
theorem firstValid13 : DerivedMapBatches.Batch009.certificate767.Valid := DerivedMapBatches.Batch009.certificate767valid
theorem secondValid13 : DerivedMapBatches.Batch009.certificate768.Valid := DerivedMapBatches.Batch009.certificate768valid
theorem outputValid13 : DerivedMapBatches.Batch009.certificate769.Valid := DerivedMapBatches.Batch009.certificate769valid
theorem linkedComposition13 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate769.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate769.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate768.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate767.algebra.mat x) := by
  rw [firstLink13, secondLink13]
  exact DerivedMapBatches.Batch009.certificate769valid.2 x
theorem firstLink14 : DerivedMapBatches.Batch009.certificate770.algebra.mat = DerivedMapBatches.Batch009.certificate772.a := by decide
theorem secondLink14 : DerivedMapBatches.Batch009.certificate771.algebra.mat = DerivedMapBatches.Batch009.certificate772.b := by decide
theorem firstValid14 : DerivedMapBatches.Batch009.certificate770.Valid := DerivedMapBatches.Batch009.certificate770valid
theorem secondValid14 : DerivedMapBatches.Batch009.certificate771.Valid := DerivedMapBatches.Batch009.certificate771valid
theorem outputValid14 : DerivedMapBatches.Batch009.certificate772.Valid := DerivedMapBatches.Batch009.certificate772valid
theorem linkedComposition14 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate772.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate772.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate771.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate770.algebra.mat x) := by
  rw [firstLink14, secondLink14]
  exact DerivedMapBatches.Batch009.certificate772valid.2 x
theorem firstLink15 : DerivedMapBatches.Batch009.certificate773.algebra.mat = DerivedMapBatches.Batch009.certificate775.a := by decide
theorem secondLink15 : DerivedMapBatches.Batch009.certificate774.algebra.mat = DerivedMapBatches.Batch009.certificate775.b := by decide
theorem firstValid15 : DerivedMapBatches.Batch009.certificate773.Valid := DerivedMapBatches.Batch009.certificate773valid
theorem secondValid15 : DerivedMapBatches.Batch009.certificate774.Valid := DerivedMapBatches.Batch009.certificate774valid
theorem outputValid15 : DerivedMapBatches.Batch009.certificate775.Valid := DerivedMapBatches.Batch009.certificate775valid
theorem linkedComposition15 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate775.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate775.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate774.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate773.algebra.mat x) := by
  rw [firstLink15, secondLink15]
  exact DerivedMapBatches.Batch009.certificate775valid.2 x
theorem firstLink16 : DerivedMapBatches.Batch009.certificate776.algebra.mat = DerivedMapBatches.Batch009.certificate778.a := by decide
theorem secondLink16 : DerivedMapBatches.Batch009.certificate777.algebra.mat = DerivedMapBatches.Batch009.certificate778.b := by decide
theorem firstValid16 : DerivedMapBatches.Batch009.certificate776.Valid := DerivedMapBatches.Batch009.certificate776valid
theorem secondValid16 : DerivedMapBatches.Batch009.certificate777.Valid := DerivedMapBatches.Batch009.certificate777valid
theorem outputValid16 : DerivedMapBatches.Batch009.certificate778.Valid := DerivedMapBatches.Batch009.certificate778valid
theorem linkedComposition16 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate778.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate778.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate777.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate776.algebra.mat x) := by
  rw [firstLink16, secondLink16]
  exact DerivedMapBatches.Batch009.certificate778valid.2 x
theorem firstLink17 : DerivedMapBatches.Batch009.certificate779.algebra.mat = DerivedMapBatches.Batch009.certificate781.a := by decide
theorem secondLink17 : DerivedMapBatches.Batch009.certificate780.algebra.mat = DerivedMapBatches.Batch009.certificate781.b := by decide
theorem firstValid17 : DerivedMapBatches.Batch009.certificate779.Valid := DerivedMapBatches.Batch009.certificate779valid
theorem secondValid17 : DerivedMapBatches.Batch009.certificate780.Valid := DerivedMapBatches.Batch009.certificate780valid
theorem outputValid17 : DerivedMapBatches.Batch009.certificate781.Valid := DerivedMapBatches.Batch009.certificate781valid
theorem linkedComposition17 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate781.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate781.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate780.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate779.algebra.mat x) := by
  rw [firstLink17, secondLink17]
  exact DerivedMapBatches.Batch009.certificate781valid.2 x
theorem firstLink18 : DerivedMapBatches.Batch009.certificate782.algebra.mat = DerivedMapBatches.Batch009.certificate784.a := by decide
theorem secondLink18 : DerivedMapBatches.Batch009.certificate783.algebra.mat = DerivedMapBatches.Batch009.certificate784.b := by decide
theorem firstValid18 : DerivedMapBatches.Batch009.certificate782.Valid := DerivedMapBatches.Batch009.certificate782valid
theorem secondValid18 : DerivedMapBatches.Batch009.certificate783.Valid := DerivedMapBatches.Batch009.certificate783valid
theorem outputValid18 : DerivedMapBatches.Batch009.certificate784.Valid := DerivedMapBatches.Batch009.certificate784valid
theorem linkedComposition18 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate784.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate784.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate783.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate782.algebra.mat x) := by
  rw [firstLink18, secondLink18]
  exact DerivedMapBatches.Batch009.certificate784valid.2 x
theorem firstLink19 : DerivedMapBatches.Batch009.certificate785.algebra.mat = DerivedMapBatches.Batch009.certificate787.a := by decide
theorem secondLink19 : DerivedMapBatches.Batch009.certificate786.algebra.mat = DerivedMapBatches.Batch009.certificate787.b := by decide
theorem firstValid19 : DerivedMapBatches.Batch009.certificate785.Valid := DerivedMapBatches.Batch009.certificate785valid
theorem secondValid19 : DerivedMapBatches.Batch009.certificate786.Valid := DerivedMapBatches.Batch009.certificate786valid
theorem outputValid19 : DerivedMapBatches.Batch009.certificate787.Valid := DerivedMapBatches.Batch009.certificate787valid
theorem linkedComposition19 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate787.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate787.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate786.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate785.algebra.mat x) := by
  rw [firstLink19, secondLink19]
  exact DerivedMapBatches.Batch009.certificate787valid.2 x
theorem firstLink20 : DerivedMapBatches.Batch009.certificate788.algebra.mat = DerivedMapBatches.Batch009.certificate790.a := by decide
theorem secondLink20 : DerivedMapBatches.Batch009.certificate789.algebra.mat = DerivedMapBatches.Batch009.certificate790.b := by decide
theorem firstValid20 : DerivedMapBatches.Batch009.certificate788.Valid := DerivedMapBatches.Batch009.certificate788valid
theorem secondValid20 : DerivedMapBatches.Batch009.certificate789.Valid := DerivedMapBatches.Batch009.certificate789valid
theorem outputValid20 : DerivedMapBatches.Batch009.certificate790.Valid := DerivedMapBatches.Batch009.certificate790valid
theorem linkedComposition20 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate790.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate790.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate789.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate788.algebra.mat x) := by
  rw [firstLink20, secondLink20]
  exact DerivedMapBatches.Batch009.certificate790valid.2 x
theorem firstLink21 : DerivedMapBatches.Batch009.certificate791.algebra.mat = DerivedMapBatches.Batch009.certificate793.a := by decide
theorem secondLink21 : DerivedMapBatches.Batch009.certificate792.algebra.mat = DerivedMapBatches.Batch009.certificate793.b := by decide
theorem firstValid21 : DerivedMapBatches.Batch009.certificate791.Valid := DerivedMapBatches.Batch009.certificate791valid
theorem secondValid21 : DerivedMapBatches.Batch009.certificate792.Valid := DerivedMapBatches.Batch009.certificate792valid
theorem outputValid21 : DerivedMapBatches.Batch009.certificate793.Valid := DerivedMapBatches.Batch009.certificate793valid
theorem linkedComposition21 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate793.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate793.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate792.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate791.algebra.mat x) := by
  rw [firstLink21, secondLink21]
  exact DerivedMapBatches.Batch009.certificate793valid.2 x
theorem firstLink22 : DerivedMapBatches.Batch009.certificate794.algebra.mat = DerivedMapBatches.Batch009.certificate796.a := by decide
theorem secondLink22 : DerivedMapBatches.Batch009.certificate795.algebra.mat = DerivedMapBatches.Batch009.certificate796.b := by decide
theorem firstValid22 : DerivedMapBatches.Batch009.certificate794.Valid := DerivedMapBatches.Batch009.certificate794valid
theorem secondValid22 : DerivedMapBatches.Batch009.certificate795.Valid := DerivedMapBatches.Batch009.certificate795valid
theorem outputValid22 : DerivedMapBatches.Batch009.certificate796.Valid := DerivedMapBatches.Batch009.certificate796valid
theorem linkedComposition22 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate796.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate796.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate795.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate794.algebra.mat x) := by
  rw [firstLink22, secondLink22]
  exact DerivedMapBatches.Batch009.certificate796valid.2 x
theorem firstLink23 : DerivedMapBatches.Batch009.certificate797.algebra.mat = DerivedMapBatches.Batch009.certificate799.a := by decide
theorem secondLink23 : DerivedMapBatches.Batch009.certificate798.algebra.mat = DerivedMapBatches.Batch009.certificate799.b := by decide
theorem firstValid23 : DerivedMapBatches.Batch009.certificate797.Valid := DerivedMapBatches.Batch009.certificate797valid
theorem secondValid23 : DerivedMapBatches.Batch009.certificate798.Valid := DerivedMapBatches.Batch009.certificate798valid
theorem outputValid23 : DerivedMapBatches.Batch009.certificate799.Valid := DerivedMapBatches.Batch009.certificate799valid
theorem linkedComposition23 (x : LinearCertificates.Vec DerivedMapBatches.Batch009.certificate799.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch009.certificate799.c x = LinearCertificates.eval DerivedMapBatches.Batch009.certificate798.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch009.certificate797.algebra.mat x) := by
  rw [firstLink23, secondLink23]
  exact DerivedMapBatches.Batch009.certificate799valid.2 x
theorem firstLink24 : DerivedMapBatches.Batch010.certificate800.algebra.mat = DerivedMapBatches.Batch010.certificate802.a := by decide
theorem secondLink24 : DerivedMapBatches.Batch010.certificate801.algebra.mat = DerivedMapBatches.Batch010.certificate802.b := by decide
theorem firstValid24 : DerivedMapBatches.Batch010.certificate800.Valid := DerivedMapBatches.Batch010.certificate800valid
theorem secondValid24 : DerivedMapBatches.Batch010.certificate801.Valid := DerivedMapBatches.Batch010.certificate801valid
theorem outputValid24 : DerivedMapBatches.Batch010.certificate802.Valid := DerivedMapBatches.Batch010.certificate802valid
theorem linkedComposition24 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate802.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate802.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate801.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate800.algebra.mat x) := by
  rw [firstLink24, secondLink24]
  exact DerivedMapBatches.Batch010.certificate802valid.2 x
theorem firstLink25 : DerivedMapBatches.Batch010.certificate803.algebra.mat = DerivedMapBatches.Batch010.certificate805.a := by decide
theorem secondLink25 : DerivedMapBatches.Batch010.certificate804.algebra.mat = DerivedMapBatches.Batch010.certificate805.b := by decide
theorem firstValid25 : DerivedMapBatches.Batch010.certificate803.Valid := DerivedMapBatches.Batch010.certificate803valid
theorem secondValid25 : DerivedMapBatches.Batch010.certificate804.Valid := DerivedMapBatches.Batch010.certificate804valid
theorem outputValid25 : DerivedMapBatches.Batch010.certificate805.Valid := DerivedMapBatches.Batch010.certificate805valid
theorem linkedComposition25 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate805.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate805.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate804.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate803.algebra.mat x) := by
  rw [firstLink25, secondLink25]
  exact DerivedMapBatches.Batch010.certificate805valid.2 x
theorem firstLink26 : DerivedMapBatches.Batch010.certificate806.algebra.mat = DerivedMapBatches.Batch010.certificate808.a := by decide
theorem secondLink26 : DerivedMapBatches.Batch010.certificate807.algebra.mat = DerivedMapBatches.Batch010.certificate808.b := by decide
theorem firstValid26 : DerivedMapBatches.Batch010.certificate806.Valid := DerivedMapBatches.Batch010.certificate806valid
theorem secondValid26 : DerivedMapBatches.Batch010.certificate807.Valid := DerivedMapBatches.Batch010.certificate807valid
theorem outputValid26 : DerivedMapBatches.Batch010.certificate808.Valid := DerivedMapBatches.Batch010.certificate808valid
theorem linkedComposition26 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate808.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate808.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate807.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate806.algebra.mat x) := by
  rw [firstLink26, secondLink26]
  exact DerivedMapBatches.Batch010.certificate808valid.2 x
theorem firstLink27 : DerivedMapBatches.Batch010.certificate809.algebra.mat = DerivedMapBatches.Batch010.certificate811.a := by decide
theorem secondLink27 : DerivedMapBatches.Batch010.certificate810.algebra.mat = DerivedMapBatches.Batch010.certificate811.b := by decide
theorem firstValid27 : DerivedMapBatches.Batch010.certificate809.Valid := DerivedMapBatches.Batch010.certificate809valid
theorem secondValid27 : DerivedMapBatches.Batch010.certificate810.Valid := DerivedMapBatches.Batch010.certificate810valid
theorem outputValid27 : DerivedMapBatches.Batch010.certificate811.Valid := DerivedMapBatches.Batch010.certificate811valid
theorem linkedComposition27 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate811.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate811.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate810.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate809.algebra.mat x) := by
  rw [firstLink27, secondLink27]
  exact DerivedMapBatches.Batch010.certificate811valid.2 x
theorem firstLink28 : DerivedMapBatches.Batch010.certificate812.algebra.mat = DerivedMapBatches.Batch010.certificate814.a := by decide
theorem secondLink28 : DerivedMapBatches.Batch010.certificate813.algebra.mat = DerivedMapBatches.Batch010.certificate814.b := by decide
theorem firstValid28 : DerivedMapBatches.Batch010.certificate812.Valid := DerivedMapBatches.Batch010.certificate812valid
theorem secondValid28 : DerivedMapBatches.Batch010.certificate813.Valid := DerivedMapBatches.Batch010.certificate813valid
theorem outputValid28 : DerivedMapBatches.Batch010.certificate814.Valid := DerivedMapBatches.Batch010.certificate814valid
theorem linkedComposition28 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate814.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate814.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate813.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate812.algebra.mat x) := by
  rw [firstLink28, secondLink28]
  exact DerivedMapBatches.Batch010.certificate814valid.2 x
theorem firstLink29 : DerivedMapBatches.Batch010.certificate815.algebra.mat = DerivedMapBatches.Batch010.certificate817.a := by decide
theorem secondLink29 : DerivedMapBatches.Batch010.certificate816.algebra.mat = DerivedMapBatches.Batch010.certificate817.b := by decide
theorem firstValid29 : DerivedMapBatches.Batch010.certificate815.Valid := DerivedMapBatches.Batch010.certificate815valid
theorem secondValid29 : DerivedMapBatches.Batch010.certificate816.Valid := DerivedMapBatches.Batch010.certificate816valid
theorem outputValid29 : DerivedMapBatches.Batch010.certificate817.Valid := DerivedMapBatches.Batch010.certificate817valid
theorem linkedComposition29 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate817.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate817.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate816.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate815.algebra.mat x) := by
  rw [firstLink29, secondLink29]
  exact DerivedMapBatches.Batch010.certificate817valid.2 x
theorem firstLink30 : DerivedMapBatches.Batch010.certificate818.algebra.mat = DerivedMapBatches.Batch010.certificate820.a := by decide
theorem secondLink30 : DerivedMapBatches.Batch010.certificate819.algebra.mat = DerivedMapBatches.Batch010.certificate820.b := by decide
theorem firstValid30 : DerivedMapBatches.Batch010.certificate818.Valid := DerivedMapBatches.Batch010.certificate818valid
theorem secondValid30 : DerivedMapBatches.Batch010.certificate819.Valid := DerivedMapBatches.Batch010.certificate819valid
theorem outputValid30 : DerivedMapBatches.Batch010.certificate820.Valid := DerivedMapBatches.Batch010.certificate820valid
theorem linkedComposition30 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate820.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate820.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate819.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate818.algebra.mat x) := by
  rw [firstLink30, secondLink30]
  exact DerivedMapBatches.Batch010.certificate820valid.2 x
theorem firstLink31 : DerivedMapBatches.Batch010.certificate821.algebra.mat = DerivedMapBatches.Batch010.certificate823.a := by decide
theorem secondLink31 : DerivedMapBatches.Batch010.certificate822.algebra.mat = DerivedMapBatches.Batch010.certificate823.b := by decide
theorem firstValid31 : DerivedMapBatches.Batch010.certificate821.Valid := DerivedMapBatches.Batch010.certificate821valid
theorem secondValid31 : DerivedMapBatches.Batch010.certificate822.Valid := DerivedMapBatches.Batch010.certificate822valid
theorem outputValid31 : DerivedMapBatches.Batch010.certificate823.Valid := DerivedMapBatches.Batch010.certificate823valid
theorem linkedComposition31 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate823.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate823.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate822.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate821.algebra.mat x) := by
  rw [firstLink31, secondLink31]
  exact DerivedMapBatches.Batch010.certificate823valid.2 x
theorem firstLink32 : DerivedMapBatches.Batch010.certificate824.algebra.mat = DerivedMapBatches.Batch010.certificate826.a := by decide
theorem secondLink32 : DerivedMapBatches.Batch010.certificate825.algebra.mat = DerivedMapBatches.Batch010.certificate826.b := by decide
theorem firstValid32 : DerivedMapBatches.Batch010.certificate824.Valid := DerivedMapBatches.Batch010.certificate824valid
theorem secondValid32 : DerivedMapBatches.Batch010.certificate825.Valid := DerivedMapBatches.Batch010.certificate825valid
theorem outputValid32 : DerivedMapBatches.Batch010.certificate826.Valid := DerivedMapBatches.Batch010.certificate826valid
theorem linkedComposition32 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate826.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate826.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate825.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate824.algebra.mat x) := by
  rw [firstLink32, secondLink32]
  exact DerivedMapBatches.Batch010.certificate826valid.2 x
theorem firstLink33 : DerivedMapBatches.Batch010.certificate827.algebra.mat = DerivedMapBatches.Batch010.certificate829.a := by decide
theorem secondLink33 : DerivedMapBatches.Batch010.certificate828.algebra.mat = DerivedMapBatches.Batch010.certificate829.b := by decide
theorem firstValid33 : DerivedMapBatches.Batch010.certificate827.Valid := DerivedMapBatches.Batch010.certificate827valid
theorem secondValid33 : DerivedMapBatches.Batch010.certificate828.Valid := DerivedMapBatches.Batch010.certificate828valid
theorem outputValid33 : DerivedMapBatches.Batch010.certificate829.Valid := DerivedMapBatches.Batch010.certificate829valid
theorem linkedComposition33 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate829.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate829.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate828.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate827.algebra.mat x) := by
  rw [firstLink33, secondLink33]
  exact DerivedMapBatches.Batch010.certificate829valid.2 x
theorem firstLink34 : DerivedMapBatches.Batch010.certificate830.algebra.mat = DerivedMapBatches.Batch010.certificate832.a := by decide
theorem secondLink34 : DerivedMapBatches.Batch010.certificate831.algebra.mat = DerivedMapBatches.Batch010.certificate832.b := by decide
theorem firstValid34 : DerivedMapBatches.Batch010.certificate830.Valid := DerivedMapBatches.Batch010.certificate830valid
theorem secondValid34 : DerivedMapBatches.Batch010.certificate831.Valid := DerivedMapBatches.Batch010.certificate831valid
theorem outputValid34 : DerivedMapBatches.Batch010.certificate832.Valid := DerivedMapBatches.Batch010.certificate832valid
theorem linkedComposition34 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate832.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate832.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate831.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate830.algebra.mat x) := by
  rw [firstLink34, secondLink34]
  exact DerivedMapBatches.Batch010.certificate832valid.2 x
theorem firstLink35 : DerivedMapBatches.Batch010.certificate833.algebra.mat = DerivedMapBatches.Batch010.certificate835.a := by decide
theorem secondLink35 : DerivedMapBatches.Batch010.certificate834.algebra.mat = DerivedMapBatches.Batch010.certificate835.b := by decide
theorem firstValid35 : DerivedMapBatches.Batch010.certificate833.Valid := DerivedMapBatches.Batch010.certificate833valid
theorem secondValid35 : DerivedMapBatches.Batch010.certificate834.Valid := DerivedMapBatches.Batch010.certificate834valid
theorem outputValid35 : DerivedMapBatches.Batch010.certificate835.Valid := DerivedMapBatches.Batch010.certificate835valid
theorem linkedComposition35 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate835.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate835.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate834.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate833.algebra.mat x) := by
  rw [firstLink35, secondLink35]
  exact DerivedMapBatches.Batch010.certificate835valid.2 x
theorem firstLink36 : DerivedMapBatches.Batch010.certificate836.algebra.mat = DerivedMapBatches.Batch010.certificate838.a := by decide
theorem secondLink36 : DerivedMapBatches.Batch010.certificate837.algebra.mat = DerivedMapBatches.Batch010.certificate838.b := by decide
theorem firstValid36 : DerivedMapBatches.Batch010.certificate836.Valid := DerivedMapBatches.Batch010.certificate836valid
theorem secondValid36 : DerivedMapBatches.Batch010.certificate837.Valid := DerivedMapBatches.Batch010.certificate837valid
theorem outputValid36 : DerivedMapBatches.Batch010.certificate838.Valid := DerivedMapBatches.Batch010.certificate838valid
theorem linkedComposition36 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate838.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate838.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate837.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate836.algebra.mat x) := by
  rw [firstLink36, secondLink36]
  exact DerivedMapBatches.Batch010.certificate838valid.2 x
theorem firstLink37 : DerivedMapBatches.Batch010.certificate839.algebra.mat = DerivedMapBatches.Batch010.certificate841.a := by decide
theorem secondLink37 : DerivedMapBatches.Batch010.certificate840.algebra.mat = DerivedMapBatches.Batch010.certificate841.b := by decide
theorem firstValid37 : DerivedMapBatches.Batch010.certificate839.Valid := DerivedMapBatches.Batch010.certificate839valid
theorem secondValid37 : DerivedMapBatches.Batch010.certificate840.Valid := DerivedMapBatches.Batch010.certificate840valid
theorem outputValid37 : DerivedMapBatches.Batch010.certificate841.Valid := DerivedMapBatches.Batch010.certificate841valid
theorem linkedComposition37 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate841.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate841.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate840.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate839.algebra.mat x) := by
  rw [firstLink37, secondLink37]
  exact DerivedMapBatches.Batch010.certificate841valid.2 x
theorem firstLink38 : DerivedMapBatches.Batch010.certificate842.algebra.mat = DerivedMapBatches.Batch010.certificate844.a := by decide
theorem secondLink38 : DerivedMapBatches.Batch010.certificate843.algebra.mat = DerivedMapBatches.Batch010.certificate844.b := by decide
theorem firstValid38 : DerivedMapBatches.Batch010.certificate842.Valid := DerivedMapBatches.Batch010.certificate842valid
theorem secondValid38 : DerivedMapBatches.Batch010.certificate843.Valid := DerivedMapBatches.Batch010.certificate843valid
theorem outputValid38 : DerivedMapBatches.Batch010.certificate844.Valid := DerivedMapBatches.Batch010.certificate844valid
theorem linkedComposition38 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate844.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate844.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate843.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate842.algebra.mat x) := by
  rw [firstLink38, secondLink38]
  exact DerivedMapBatches.Batch010.certificate844valid.2 x
theorem firstLink39 : DerivedMapBatches.Batch010.certificate845.algebra.mat = DerivedMapBatches.Batch010.certificate847.a := by decide
theorem secondLink39 : DerivedMapBatches.Batch010.certificate846.algebra.mat = DerivedMapBatches.Batch010.certificate847.b := by decide
theorem firstValid39 : DerivedMapBatches.Batch010.certificate845.Valid := DerivedMapBatches.Batch010.certificate845valid
theorem secondValid39 : DerivedMapBatches.Batch010.certificate846.Valid := DerivedMapBatches.Batch010.certificate846valid
theorem outputValid39 : DerivedMapBatches.Batch010.certificate847.Valid := DerivedMapBatches.Batch010.certificate847valid
theorem linkedComposition39 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate847.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate847.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate846.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate845.algebra.mat x) := by
  rw [firstLink39, secondLink39]
  exact DerivedMapBatches.Batch010.certificate847valid.2 x
theorem firstLink40 : DerivedMapBatches.Batch010.certificate848.algebra.mat = DerivedMapBatches.Batch010.certificate850.a := by decide
theorem secondLink40 : DerivedMapBatches.Batch010.certificate849.algebra.mat = DerivedMapBatches.Batch010.certificate850.b := by decide
theorem firstValid40 : DerivedMapBatches.Batch010.certificate848.Valid := DerivedMapBatches.Batch010.certificate848valid
theorem secondValid40 : DerivedMapBatches.Batch010.certificate849.Valid := DerivedMapBatches.Batch010.certificate849valid
theorem outputValid40 : DerivedMapBatches.Batch010.certificate850.Valid := DerivedMapBatches.Batch010.certificate850valid
theorem linkedComposition40 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate850.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate850.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate849.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate848.algebra.mat x) := by
  rw [firstLink40, secondLink40]
  exact DerivedMapBatches.Batch010.certificate850valid.2 x
theorem firstLink41 : DerivedMapBatches.Batch010.certificate851.algebra.mat = DerivedMapBatches.Batch010.certificate853.a := by decide
theorem secondLink41 : DerivedMapBatches.Batch010.certificate852.algebra.mat = DerivedMapBatches.Batch010.certificate853.b := by decide
theorem firstValid41 : DerivedMapBatches.Batch010.certificate851.Valid := DerivedMapBatches.Batch010.certificate851valid
theorem secondValid41 : DerivedMapBatches.Batch010.certificate852.Valid := DerivedMapBatches.Batch010.certificate852valid
theorem outputValid41 : DerivedMapBatches.Batch010.certificate853.Valid := DerivedMapBatches.Batch010.certificate853valid
theorem linkedComposition41 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate853.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate853.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate852.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate851.algebra.mat x) := by
  rw [firstLink41, secondLink41]
  exact DerivedMapBatches.Batch010.certificate853valid.2 x
theorem firstLink42 : DerivedMapBatches.Batch010.certificate854.algebra.mat = DerivedMapBatches.Batch010.certificate856.a := by decide
theorem secondLink42 : DerivedMapBatches.Batch010.certificate855.algebra.mat = DerivedMapBatches.Batch010.certificate856.b := by decide
theorem firstValid42 : DerivedMapBatches.Batch010.certificate854.Valid := DerivedMapBatches.Batch010.certificate854valid
theorem secondValid42 : DerivedMapBatches.Batch010.certificate855.Valid := DerivedMapBatches.Batch010.certificate855valid
theorem outputValid42 : DerivedMapBatches.Batch010.certificate856.Valid := DerivedMapBatches.Batch010.certificate856valid
theorem linkedComposition42 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate856.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate856.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate855.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate854.algebra.mat x) := by
  rw [firstLink42, secondLink42]
  exact DerivedMapBatches.Batch010.certificate856valid.2 x
theorem firstLink43 : DerivedMapBatches.Batch010.certificate857.algebra.mat = DerivedMapBatches.Batch010.certificate859.a := by decide
theorem secondLink43 : DerivedMapBatches.Batch010.certificate858.algebra.mat = DerivedMapBatches.Batch010.certificate859.b := by decide
theorem firstValid43 : DerivedMapBatches.Batch010.certificate857.Valid := DerivedMapBatches.Batch010.certificate857valid
theorem secondValid43 : DerivedMapBatches.Batch010.certificate858.Valid := DerivedMapBatches.Batch010.certificate858valid
theorem outputValid43 : DerivedMapBatches.Batch010.certificate859.Valid := DerivedMapBatches.Batch010.certificate859valid
theorem linkedComposition43 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate859.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate859.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate858.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate857.algebra.mat x) := by
  rw [firstLink43, secondLink43]
  exact DerivedMapBatches.Batch010.certificate859valid.2 x
theorem firstLink44 : DerivedMapBatches.Batch010.certificate860.algebra.mat = DerivedMapBatches.Batch010.certificate862.a := by decide
theorem secondLink44 : DerivedMapBatches.Batch010.certificate861.algebra.mat = DerivedMapBatches.Batch010.certificate862.b := by decide
theorem firstValid44 : DerivedMapBatches.Batch010.certificate860.Valid := DerivedMapBatches.Batch010.certificate860valid
theorem secondValid44 : DerivedMapBatches.Batch010.certificate861.Valid := DerivedMapBatches.Batch010.certificate861valid
theorem outputValid44 : DerivedMapBatches.Batch010.certificate862.Valid := DerivedMapBatches.Batch010.certificate862valid
theorem linkedComposition44 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate862.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate862.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate861.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate860.algebra.mat x) := by
  rw [firstLink44, secondLink44]
  exact DerivedMapBatches.Batch010.certificate862valid.2 x
theorem firstLink45 : DerivedMapBatches.Batch010.certificate863.algebra.mat = DerivedMapBatches.Batch010.certificate865.a := by decide
theorem secondLink45 : DerivedMapBatches.Batch010.certificate864.algebra.mat = DerivedMapBatches.Batch010.certificate865.b := by decide
theorem firstValid45 : DerivedMapBatches.Batch010.certificate863.Valid := DerivedMapBatches.Batch010.certificate863valid
theorem secondValid45 : DerivedMapBatches.Batch010.certificate864.Valid := DerivedMapBatches.Batch010.certificate864valid
theorem outputValid45 : DerivedMapBatches.Batch010.certificate865.Valid := DerivedMapBatches.Batch010.certificate865valid
theorem linkedComposition45 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate865.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate865.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate864.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate863.algebra.mat x) := by
  rw [firstLink45, secondLink45]
  exact DerivedMapBatches.Batch010.certificate865valid.2 x
theorem firstLink46 : DerivedMapBatches.Batch010.certificate866.algebra.mat = DerivedMapBatches.Batch010.certificate868.a := by decide
theorem secondLink46 : DerivedMapBatches.Batch010.certificate867.algebra.mat = DerivedMapBatches.Batch010.certificate868.b := by decide
theorem firstValid46 : DerivedMapBatches.Batch010.certificate866.Valid := DerivedMapBatches.Batch010.certificate866valid
theorem secondValid46 : DerivedMapBatches.Batch010.certificate867.Valid := DerivedMapBatches.Batch010.certificate867valid
theorem outputValid46 : DerivedMapBatches.Batch010.certificate868.Valid := DerivedMapBatches.Batch010.certificate868valid
theorem linkedComposition46 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate868.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate868.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate867.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate866.algebra.mat x) := by
  rw [firstLink46, secondLink46]
  exact DerivedMapBatches.Batch010.certificate868valid.2 x
theorem firstLink47 : DerivedMapBatches.Batch010.certificate869.algebra.mat = DerivedMapBatches.Batch010.certificate871.a := by decide
theorem secondLink47 : DerivedMapBatches.Batch010.certificate870.algebra.mat = DerivedMapBatches.Batch010.certificate871.b := by decide
theorem firstValid47 : DerivedMapBatches.Batch010.certificate869.Valid := DerivedMapBatches.Batch010.certificate869valid
theorem secondValid47 : DerivedMapBatches.Batch010.certificate870.Valid := DerivedMapBatches.Batch010.certificate870valid
theorem outputValid47 : DerivedMapBatches.Batch010.certificate871.Valid := DerivedMapBatches.Batch010.certificate871valid
theorem linkedComposition47 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate871.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate871.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate870.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate869.algebra.mat x) := by
  rw [firstLink47, secondLink47]
  exact DerivedMapBatches.Batch010.certificate871valid.2 x
theorem firstLink48 : DerivedMapBatches.Batch010.certificate872.algebra.mat = DerivedMapBatches.Batch010.certificate874.a := by decide
theorem secondLink48 : DerivedMapBatches.Batch010.certificate873.algebra.mat = DerivedMapBatches.Batch010.certificate874.b := by decide
theorem firstValid48 : DerivedMapBatches.Batch010.certificate872.Valid := DerivedMapBatches.Batch010.certificate872valid
theorem secondValid48 : DerivedMapBatches.Batch010.certificate873.Valid := DerivedMapBatches.Batch010.certificate873valid
theorem outputValid48 : DerivedMapBatches.Batch010.certificate874.Valid := DerivedMapBatches.Batch010.certificate874valid
theorem linkedComposition48 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate874.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate874.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate873.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate872.algebra.mat x) := by
  rw [firstLink48, secondLink48]
  exact DerivedMapBatches.Batch010.certificate874valid.2 x
theorem firstLink49 : DerivedMapBatches.Batch010.certificate875.algebra.mat = DerivedMapBatches.Batch010.certificate877.a := by decide
theorem secondLink49 : DerivedMapBatches.Batch010.certificate876.algebra.mat = DerivedMapBatches.Batch010.certificate877.b := by decide
theorem firstValid49 : DerivedMapBatches.Batch010.certificate875.Valid := DerivedMapBatches.Batch010.certificate875valid
theorem secondValid49 : DerivedMapBatches.Batch010.certificate876.Valid := DerivedMapBatches.Batch010.certificate876valid
theorem outputValid49 : DerivedMapBatches.Batch010.certificate877.Valid := DerivedMapBatches.Batch010.certificate877valid
theorem linkedComposition49 (x : LinearCertificates.Vec DerivedMapBatches.Batch010.certificate877.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch010.certificate877.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate876.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch010.certificate875.algebra.mat x) := by
  rw [firstLink49, secondLink49]
  exact DerivedMapBatches.Batch010.certificate877valid.2 x
end DerivedLinkageBatches.Batch000
