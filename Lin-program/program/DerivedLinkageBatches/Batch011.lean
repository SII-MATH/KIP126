import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch024
import DerivedMapBatches.Batch025
import DerivedMapBatches.Batch026
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch011
theorem firstLink550 : DerivedMapBatches.Batch025.certificate2011.algebra.mat = DerivedMapBatches.Batch025.certificate2012.a := by decide
theorem secondLink550 : DerivedMapBatches.Batch024.certificate1943.c = DerivedMapBatches.Batch025.certificate2012.b := by decide
theorem firstValid550 : DerivedMapBatches.Batch025.certificate2011.Valid := DerivedMapBatches.Batch025.certificate2011valid
theorem secondValid550 : DerivedMapBatches.Batch024.certificate1943.Valid := DerivedMapBatches.Batch024.certificate1943valid
theorem outputValid550 : DerivedMapBatches.Batch025.certificate2012.Valid := DerivedMapBatches.Batch025.certificate2012valid
theorem linkedComposition550 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2012.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2012.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1943.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2011.algebra.mat x) := by
  rw [firstLink550, secondLink550]
  exact DerivedMapBatches.Batch025.certificate2012valid.2 x
theorem firstLink551 : DerivedMapBatches.Batch025.certificate2013.algebra.mat = DerivedMapBatches.Batch025.certificate2014.a := by decide
theorem secondLink551 : DerivedMapBatches.Batch024.certificate1946.c = DerivedMapBatches.Batch025.certificate2014.b := by decide
theorem firstValid551 : DerivedMapBatches.Batch025.certificate2013.Valid := DerivedMapBatches.Batch025.certificate2013valid
theorem secondValid551 : DerivedMapBatches.Batch024.certificate1946.Valid := DerivedMapBatches.Batch024.certificate1946valid
theorem outputValid551 : DerivedMapBatches.Batch025.certificate2014.Valid := DerivedMapBatches.Batch025.certificate2014valid
theorem linkedComposition551 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2014.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2014.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1946.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2013.algebra.mat x) := by
  rw [firstLink551, secondLink551]
  exact DerivedMapBatches.Batch025.certificate2014valid.2 x
theorem firstLink552 : DerivedMapBatches.Batch025.certificate2016.algebra.mat = DerivedMapBatches.Batch025.certificate2018.a := by decide
theorem secondLink552 : DerivedMapBatches.Batch025.certificate2017.algebra.mat = DerivedMapBatches.Batch025.certificate2018.b := by decide
theorem firstValid552 : DerivedMapBatches.Batch025.certificate2016.Valid := DerivedMapBatches.Batch025.certificate2016valid
theorem secondValid552 : DerivedMapBatches.Batch025.certificate2017.Valid := DerivedMapBatches.Batch025.certificate2017valid
theorem outputValid552 : DerivedMapBatches.Batch025.certificate2018.Valid := DerivedMapBatches.Batch025.certificate2018valid
theorem linkedComposition552 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2018.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2018.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2017.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2016.algebra.mat x) := by
  rw [firstLink552, secondLink552]
  exact DerivedMapBatches.Batch025.certificate2018valid.2 x
theorem firstLink553 : DerivedMapBatches.Batch025.certificate2015.algebra.mat = DerivedMapBatches.Batch025.certificate2019.a := by decide
theorem secondLink553 : DerivedMapBatches.Batch025.certificate2018.c = DerivedMapBatches.Batch025.certificate2019.b := by decide
theorem firstValid553 : DerivedMapBatches.Batch025.certificate2015.Valid := DerivedMapBatches.Batch025.certificate2015valid
theorem secondValid553 : DerivedMapBatches.Batch025.certificate2018.Valid := DerivedMapBatches.Batch025.certificate2018valid
theorem outputValid553 : DerivedMapBatches.Batch025.certificate2019.Valid := DerivedMapBatches.Batch025.certificate2019valid
theorem linkedComposition553 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2019.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2019.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2018.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2015.algebra.mat x) := by
  rw [firstLink553, secondLink553]
  exact DerivedMapBatches.Batch025.certificate2019valid.2 x
theorem firstLink554 : DerivedMapBatches.Batch025.certificate2021.algebra.mat = DerivedMapBatches.Batch025.certificate2023.a := by decide
theorem secondLink554 : DerivedMapBatches.Batch025.certificate2022.algebra.mat = DerivedMapBatches.Batch025.certificate2023.b := by decide
theorem firstValid554 : DerivedMapBatches.Batch025.certificate2021.Valid := DerivedMapBatches.Batch025.certificate2021valid
theorem secondValid554 : DerivedMapBatches.Batch025.certificate2022.Valid := DerivedMapBatches.Batch025.certificate2022valid
theorem outputValid554 : DerivedMapBatches.Batch025.certificate2023.Valid := DerivedMapBatches.Batch025.certificate2023valid
theorem linkedComposition554 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2023.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2023.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2022.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2021.algebra.mat x) := by
  rw [firstLink554, secondLink554]
  exact DerivedMapBatches.Batch025.certificate2023valid.2 x
theorem firstLink555 : DerivedMapBatches.Batch025.certificate2020.algebra.mat = DerivedMapBatches.Batch025.certificate2024.a := by decide
theorem secondLink555 : DerivedMapBatches.Batch025.certificate2023.c = DerivedMapBatches.Batch025.certificate2024.b := by decide
theorem firstValid555 : DerivedMapBatches.Batch025.certificate2020.Valid := DerivedMapBatches.Batch025.certificate2020valid
theorem secondValid555 : DerivedMapBatches.Batch025.certificate2023.Valid := DerivedMapBatches.Batch025.certificate2023valid
theorem outputValid555 : DerivedMapBatches.Batch025.certificate2024.Valid := DerivedMapBatches.Batch025.certificate2024valid
theorem linkedComposition555 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2024.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2024.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2023.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2020.algebra.mat x) := by
  rw [firstLink555, secondLink555]
  exact DerivedMapBatches.Batch025.certificate2024valid.2 x
theorem firstLink556 : DerivedMapBatches.Batch025.certificate2025.algebra.mat = DerivedMapBatches.Batch025.certificate2026.a := by decide
theorem secondLink556 : DerivedMapBatches.Batch024.certificate1949.c = DerivedMapBatches.Batch025.certificate2026.b := by decide
theorem firstValid556 : DerivedMapBatches.Batch025.certificate2025.Valid := DerivedMapBatches.Batch025.certificate2025valid
theorem secondValid556 : DerivedMapBatches.Batch024.certificate1949.Valid := DerivedMapBatches.Batch024.certificate1949valid
theorem outputValid556 : DerivedMapBatches.Batch025.certificate2026.Valid := DerivedMapBatches.Batch025.certificate2026valid
theorem linkedComposition556 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2026.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2026.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1949.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2025.algebra.mat x) := by
  rw [firstLink556, secondLink556]
  exact DerivedMapBatches.Batch025.certificate2026valid.2 x
theorem firstLink557 : DerivedMapBatches.Batch025.certificate2027.algebra.mat = DerivedMapBatches.Batch025.certificate2028.a := by decide
theorem secondLink557 : DerivedMapBatches.Batch024.certificate1952.c = DerivedMapBatches.Batch025.certificate2028.b := by decide
theorem firstValid557 : DerivedMapBatches.Batch025.certificate2027.Valid := DerivedMapBatches.Batch025.certificate2027valid
theorem secondValid557 : DerivedMapBatches.Batch024.certificate1952.Valid := DerivedMapBatches.Batch024.certificate1952valid
theorem outputValid557 : DerivedMapBatches.Batch025.certificate2028.Valid := DerivedMapBatches.Batch025.certificate2028valid
theorem linkedComposition557 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2028.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2028.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1952.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2027.algebra.mat x) := by
  rw [firstLink557, secondLink557]
  exact DerivedMapBatches.Batch025.certificate2028valid.2 x
theorem firstLink558 : DerivedMapBatches.Batch025.certificate2029.algebra.mat = DerivedMapBatches.Batch025.certificate2030.a := by decide
theorem secondLink558 : DerivedMapBatches.Batch024.certificate1955.c = DerivedMapBatches.Batch025.certificate2030.b := by decide
theorem firstValid558 : DerivedMapBatches.Batch025.certificate2029.Valid := DerivedMapBatches.Batch025.certificate2029valid
theorem secondValid558 : DerivedMapBatches.Batch024.certificate1955.Valid := DerivedMapBatches.Batch024.certificate1955valid
theorem outputValid558 : DerivedMapBatches.Batch025.certificate2030.Valid := DerivedMapBatches.Batch025.certificate2030valid
theorem linkedComposition558 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2030.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2030.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1955.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2029.algebra.mat x) := by
  rw [firstLink558, secondLink558]
  exact DerivedMapBatches.Batch025.certificate2030valid.2 x
theorem firstLink559 : DerivedMapBatches.Batch025.certificate2031.algebra.mat = DerivedMapBatches.Batch025.certificate2032.a := by decide
theorem secondLink559 : DerivedMapBatches.Batch024.certificate1958.c = DerivedMapBatches.Batch025.certificate2032.b := by decide
theorem firstValid559 : DerivedMapBatches.Batch025.certificate2031.Valid := DerivedMapBatches.Batch025.certificate2031valid
theorem secondValid559 : DerivedMapBatches.Batch024.certificate1958.Valid := DerivedMapBatches.Batch024.certificate1958valid
theorem outputValid559 : DerivedMapBatches.Batch025.certificate2032.Valid := DerivedMapBatches.Batch025.certificate2032valid
theorem linkedComposition559 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2032.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2032.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1958.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2031.algebra.mat x) := by
  rw [firstLink559, secondLink559]
  exact DerivedMapBatches.Batch025.certificate2032valid.2 x
theorem firstLink560 : DerivedMapBatches.Batch025.certificate2034.algebra.mat = DerivedMapBatches.Batch025.certificate2036.a := by decide
theorem secondLink560 : DerivedMapBatches.Batch025.certificate2035.algebra.mat = DerivedMapBatches.Batch025.certificate2036.b := by decide
theorem firstValid560 : DerivedMapBatches.Batch025.certificate2034.Valid := DerivedMapBatches.Batch025.certificate2034valid
theorem secondValid560 : DerivedMapBatches.Batch025.certificate2035.Valid := DerivedMapBatches.Batch025.certificate2035valid
theorem outputValid560 : DerivedMapBatches.Batch025.certificate2036.Valid := DerivedMapBatches.Batch025.certificate2036valid
theorem linkedComposition560 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2036.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2036.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2035.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2034.algebra.mat x) := by
  rw [firstLink560, secondLink560]
  exact DerivedMapBatches.Batch025.certificate2036valid.2 x
theorem firstLink561 : DerivedMapBatches.Batch025.certificate2033.algebra.mat = DerivedMapBatches.Batch025.certificate2037.a := by decide
theorem secondLink561 : DerivedMapBatches.Batch025.certificate2036.c = DerivedMapBatches.Batch025.certificate2037.b := by decide
theorem firstValid561 : DerivedMapBatches.Batch025.certificate2033.Valid := DerivedMapBatches.Batch025.certificate2033valid
theorem secondValid561 : DerivedMapBatches.Batch025.certificate2036.Valid := DerivedMapBatches.Batch025.certificate2036valid
theorem outputValid561 : DerivedMapBatches.Batch025.certificate2037.Valid := DerivedMapBatches.Batch025.certificate2037valid
theorem linkedComposition561 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2037.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2037.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2036.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2033.algebra.mat x) := by
  rw [firstLink561, secondLink561]
  exact DerivedMapBatches.Batch025.certificate2037valid.2 x
theorem firstLink562 : DerivedMapBatches.Batch025.certificate2038.algebra.mat = DerivedMapBatches.Batch025.certificate2039.a := by decide
theorem secondLink562 : DerivedMapBatches.Batch024.certificate1961.c = DerivedMapBatches.Batch025.certificate2039.b := by decide
theorem firstValid562 : DerivedMapBatches.Batch025.certificate2038.Valid := DerivedMapBatches.Batch025.certificate2038valid
theorem secondValid562 : DerivedMapBatches.Batch024.certificate1961.Valid := DerivedMapBatches.Batch024.certificate1961valid
theorem outputValid562 : DerivedMapBatches.Batch025.certificate2039.Valid := DerivedMapBatches.Batch025.certificate2039valid
theorem linkedComposition562 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2039.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2039.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1961.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2038.algebra.mat x) := by
  rw [firstLink562, secondLink562]
  exact DerivedMapBatches.Batch025.certificate2039valid.2 x
theorem firstLink563 : DerivedMapBatches.Batch025.certificate2041.algebra.mat = DerivedMapBatches.Batch025.certificate2043.a := by decide
theorem secondLink563 : DerivedMapBatches.Batch025.certificate2042.algebra.mat = DerivedMapBatches.Batch025.certificate2043.b := by decide
theorem firstValid563 : DerivedMapBatches.Batch025.certificate2041.Valid := DerivedMapBatches.Batch025.certificate2041valid
theorem secondValid563 : DerivedMapBatches.Batch025.certificate2042.Valid := DerivedMapBatches.Batch025.certificate2042valid
theorem outputValid563 : DerivedMapBatches.Batch025.certificate2043.Valid := DerivedMapBatches.Batch025.certificate2043valid
theorem linkedComposition563 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2043.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2043.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2042.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2041.algebra.mat x) := by
  rw [firstLink563, secondLink563]
  exact DerivedMapBatches.Batch025.certificate2043valid.2 x
theorem firstLink564 : DerivedMapBatches.Batch025.certificate2040.algebra.mat = DerivedMapBatches.Batch025.certificate2044.a := by decide
theorem secondLink564 : DerivedMapBatches.Batch025.certificate2043.c = DerivedMapBatches.Batch025.certificate2044.b := by decide
theorem firstValid564 : DerivedMapBatches.Batch025.certificate2040.Valid := DerivedMapBatches.Batch025.certificate2040valid
theorem secondValid564 : DerivedMapBatches.Batch025.certificate2043.Valid := DerivedMapBatches.Batch025.certificate2043valid
theorem outputValid564 : DerivedMapBatches.Batch025.certificate2044.Valid := DerivedMapBatches.Batch025.certificate2044valid
theorem linkedComposition564 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2044.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2044.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2043.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2040.algebra.mat x) := by
  rw [firstLink564, secondLink564]
  exact DerivedMapBatches.Batch025.certificate2044valid.2 x
theorem firstLink565 : DerivedMapBatches.Batch025.certificate2046.algebra.mat = DerivedMapBatches.Batch025.certificate2048.a := by decide
theorem secondLink565 : DerivedMapBatches.Batch025.certificate2047.algebra.mat = DerivedMapBatches.Batch025.certificate2048.b := by decide
theorem firstValid565 : DerivedMapBatches.Batch025.certificate2046.Valid := DerivedMapBatches.Batch025.certificate2046valid
theorem secondValid565 : DerivedMapBatches.Batch025.certificate2047.Valid := DerivedMapBatches.Batch025.certificate2047valid
theorem outputValid565 : DerivedMapBatches.Batch025.certificate2048.Valid := DerivedMapBatches.Batch025.certificate2048valid
theorem linkedComposition565 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2048.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2048.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2047.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2046.algebra.mat x) := by
  rw [firstLink565, secondLink565]
  exact DerivedMapBatches.Batch025.certificate2048valid.2 x
theorem firstLink566 : DerivedMapBatches.Batch025.certificate2045.algebra.mat = DerivedMapBatches.Batch025.certificate2049.a := by decide
theorem secondLink566 : DerivedMapBatches.Batch025.certificate2048.c = DerivedMapBatches.Batch025.certificate2049.b := by decide
theorem firstValid566 : DerivedMapBatches.Batch025.certificate2045.Valid := DerivedMapBatches.Batch025.certificate2045valid
theorem secondValid566 : DerivedMapBatches.Batch025.certificate2048.Valid := DerivedMapBatches.Batch025.certificate2048valid
theorem outputValid566 : DerivedMapBatches.Batch025.certificate2049.Valid := DerivedMapBatches.Batch025.certificate2049valid
theorem linkedComposition566 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2049.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2049.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2048.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2045.algebra.mat x) := by
  rw [firstLink566, secondLink566]
  exact DerivedMapBatches.Batch025.certificate2049valid.2 x
theorem firstLink567 : DerivedMapBatches.Batch025.certificate2050.algebra.mat = DerivedMapBatches.Batch025.certificate2051.a := by decide
theorem secondLink567 : DerivedMapBatches.Batch024.certificate1967.c = DerivedMapBatches.Batch025.certificate2051.b := by decide
theorem firstValid567 : DerivedMapBatches.Batch025.certificate2050.Valid := DerivedMapBatches.Batch025.certificate2050valid
theorem secondValid567 : DerivedMapBatches.Batch024.certificate1967.Valid := DerivedMapBatches.Batch024.certificate1967valid
theorem outputValid567 : DerivedMapBatches.Batch025.certificate2051.Valid := DerivedMapBatches.Batch025.certificate2051valid
theorem linkedComposition567 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2051.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2051.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1967.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2050.algebra.mat x) := by
  rw [firstLink567, secondLink567]
  exact DerivedMapBatches.Batch025.certificate2051valid.2 x
theorem firstLink568 : DerivedMapBatches.Batch025.certificate2053.algebra.mat = DerivedMapBatches.Batch025.certificate2055.a := by decide
theorem secondLink568 : DerivedMapBatches.Batch025.certificate2054.algebra.mat = DerivedMapBatches.Batch025.certificate2055.b := by decide
theorem firstValid568 : DerivedMapBatches.Batch025.certificate2053.Valid := DerivedMapBatches.Batch025.certificate2053valid
theorem secondValid568 : DerivedMapBatches.Batch025.certificate2054.Valid := DerivedMapBatches.Batch025.certificate2054valid
theorem outputValid568 : DerivedMapBatches.Batch025.certificate2055.Valid := DerivedMapBatches.Batch025.certificate2055valid
theorem linkedComposition568 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2055.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2055.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2054.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2053.algebra.mat x) := by
  rw [firstLink568, secondLink568]
  exact DerivedMapBatches.Batch025.certificate2055valid.2 x
theorem firstLink569 : DerivedMapBatches.Batch025.certificate2052.algebra.mat = DerivedMapBatches.Batch025.certificate2056.a := by decide
theorem secondLink569 : DerivedMapBatches.Batch025.certificate2055.c = DerivedMapBatches.Batch025.certificate2056.b := by decide
theorem firstValid569 : DerivedMapBatches.Batch025.certificate2052.Valid := DerivedMapBatches.Batch025.certificate2052valid
theorem secondValid569 : DerivedMapBatches.Batch025.certificate2055.Valid := DerivedMapBatches.Batch025.certificate2055valid
theorem outputValid569 : DerivedMapBatches.Batch025.certificate2056.Valid := DerivedMapBatches.Batch025.certificate2056valid
theorem linkedComposition569 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2056.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2056.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2055.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2052.algebra.mat x) := by
  rw [firstLink569, secondLink569]
  exact DerivedMapBatches.Batch025.certificate2056valid.2 x
theorem firstLink570 : DerivedMapBatches.Batch025.certificate2058.algebra.mat = DerivedMapBatches.Batch025.certificate2060.a := by decide
theorem secondLink570 : DerivedMapBatches.Batch025.certificate2059.algebra.mat = DerivedMapBatches.Batch025.certificate2060.b := by decide
theorem firstValid570 : DerivedMapBatches.Batch025.certificate2058.Valid := DerivedMapBatches.Batch025.certificate2058valid
theorem secondValid570 : DerivedMapBatches.Batch025.certificate2059.Valid := DerivedMapBatches.Batch025.certificate2059valid
theorem outputValid570 : DerivedMapBatches.Batch025.certificate2060.Valid := DerivedMapBatches.Batch025.certificate2060valid
theorem linkedComposition570 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2060.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2060.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2059.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2058.algebra.mat x) := by
  rw [firstLink570, secondLink570]
  exact DerivedMapBatches.Batch025.certificate2060valid.2 x
theorem firstLink571 : DerivedMapBatches.Batch025.certificate2057.algebra.mat = DerivedMapBatches.Batch025.certificate2061.a := by decide
theorem secondLink571 : DerivedMapBatches.Batch025.certificate2060.c = DerivedMapBatches.Batch025.certificate2061.b := by decide
theorem firstValid571 : DerivedMapBatches.Batch025.certificate2057.Valid := DerivedMapBatches.Batch025.certificate2057valid
theorem secondValid571 : DerivedMapBatches.Batch025.certificate2060.Valid := DerivedMapBatches.Batch025.certificate2060valid
theorem outputValid571 : DerivedMapBatches.Batch025.certificate2061.Valid := DerivedMapBatches.Batch025.certificate2061valid
theorem linkedComposition571 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2061.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2061.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2060.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2057.algebra.mat x) := by
  rw [firstLink571, secondLink571]
  exact DerivedMapBatches.Batch025.certificate2061valid.2 x
theorem firstLink572 : DerivedMapBatches.Batch025.certificate2062.algebra.mat = DerivedMapBatches.Batch025.certificate2063.a := by decide
theorem secondLink572 : DerivedMapBatches.Batch024.certificate1970.c = DerivedMapBatches.Batch025.certificate2063.b := by decide
theorem firstValid572 : DerivedMapBatches.Batch025.certificate2062.Valid := DerivedMapBatches.Batch025.certificate2062valid
theorem secondValid572 : DerivedMapBatches.Batch024.certificate1970.Valid := DerivedMapBatches.Batch024.certificate1970valid
theorem outputValid572 : DerivedMapBatches.Batch025.certificate2063.Valid := DerivedMapBatches.Batch025.certificate2063valid
theorem linkedComposition572 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2063.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2063.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1970.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2062.algebra.mat x) := by
  rw [firstLink572, secondLink572]
  exact DerivedMapBatches.Batch025.certificate2063valid.2 x
theorem firstLink573 : DerivedMapBatches.Batch025.certificate2065.algebra.mat = DerivedMapBatches.Batch025.certificate2067.a := by decide
theorem secondLink573 : DerivedMapBatches.Batch025.certificate2066.algebra.mat = DerivedMapBatches.Batch025.certificate2067.b := by decide
theorem firstValid573 : DerivedMapBatches.Batch025.certificate2065.Valid := DerivedMapBatches.Batch025.certificate2065valid
theorem secondValid573 : DerivedMapBatches.Batch025.certificate2066.Valid := DerivedMapBatches.Batch025.certificate2066valid
theorem outputValid573 : DerivedMapBatches.Batch025.certificate2067.Valid := DerivedMapBatches.Batch025.certificate2067valid
theorem linkedComposition573 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2067.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2067.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2066.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2065.algebra.mat x) := by
  rw [firstLink573, secondLink573]
  exact DerivedMapBatches.Batch025.certificate2067valid.2 x
theorem firstLink574 : DerivedMapBatches.Batch025.certificate2064.algebra.mat = DerivedMapBatches.Batch025.certificate2068.a := by decide
theorem secondLink574 : DerivedMapBatches.Batch025.certificate2067.c = DerivedMapBatches.Batch025.certificate2068.b := by decide
theorem firstValid574 : DerivedMapBatches.Batch025.certificate2064.Valid := DerivedMapBatches.Batch025.certificate2064valid
theorem secondValid574 : DerivedMapBatches.Batch025.certificate2067.Valid := DerivedMapBatches.Batch025.certificate2067valid
theorem outputValid574 : DerivedMapBatches.Batch025.certificate2068.Valid := DerivedMapBatches.Batch025.certificate2068valid
theorem linkedComposition574 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2068.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2068.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2067.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2064.algebra.mat x) := by
  rw [firstLink574, secondLink574]
  exact DerivedMapBatches.Batch025.certificate2068valid.2 x
theorem firstLink575 : DerivedMapBatches.Batch025.certificate2069.algebra.mat = DerivedMapBatches.Batch025.certificate2070.a := by decide
theorem secondLink575 : DerivedMapBatches.Batch024.certificate1973.c = DerivedMapBatches.Batch025.certificate2070.b := by decide
theorem firstValid575 : DerivedMapBatches.Batch025.certificate2069.Valid := DerivedMapBatches.Batch025.certificate2069valid
theorem secondValid575 : DerivedMapBatches.Batch024.certificate1973.Valid := DerivedMapBatches.Batch024.certificate1973valid
theorem outputValid575 : DerivedMapBatches.Batch025.certificate2070.Valid := DerivedMapBatches.Batch025.certificate2070valid
theorem linkedComposition575 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2070.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2070.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1973.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2069.algebra.mat x) := by
  rw [firstLink575, secondLink575]
  exact DerivedMapBatches.Batch025.certificate2070valid.2 x
theorem firstLink576 : DerivedMapBatches.Batch025.certificate2071.algebra.mat = DerivedMapBatches.Batch025.certificate2072.a := by decide
theorem secondLink576 : DerivedMapBatches.Batch024.certificate1976.c = DerivedMapBatches.Batch025.certificate2072.b := by decide
theorem firstValid576 : DerivedMapBatches.Batch025.certificate2071.Valid := DerivedMapBatches.Batch025.certificate2071valid
theorem secondValid576 : DerivedMapBatches.Batch024.certificate1976.Valid := DerivedMapBatches.Batch024.certificate1976valid
theorem outputValid576 : DerivedMapBatches.Batch025.certificate2072.Valid := DerivedMapBatches.Batch025.certificate2072valid
theorem linkedComposition576 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2072.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2072.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1976.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2071.algebra.mat x) := by
  rw [firstLink576, secondLink576]
  exact DerivedMapBatches.Batch025.certificate2072valid.2 x
theorem firstLink577 : DerivedMapBatches.Batch025.certificate2074.algebra.mat = DerivedMapBatches.Batch025.certificate2076.a := by decide
theorem secondLink577 : DerivedMapBatches.Batch025.certificate2075.algebra.mat = DerivedMapBatches.Batch025.certificate2076.b := by decide
theorem firstValid577 : DerivedMapBatches.Batch025.certificate2074.Valid := DerivedMapBatches.Batch025.certificate2074valid
theorem secondValid577 : DerivedMapBatches.Batch025.certificate2075.Valid := DerivedMapBatches.Batch025.certificate2075valid
theorem outputValid577 : DerivedMapBatches.Batch025.certificate2076.Valid := DerivedMapBatches.Batch025.certificate2076valid
theorem linkedComposition577 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2076.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2076.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2075.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2074.algebra.mat x) := by
  rw [firstLink577, secondLink577]
  exact DerivedMapBatches.Batch025.certificate2076valid.2 x
theorem firstLink578 : DerivedMapBatches.Batch025.certificate2073.algebra.mat = DerivedMapBatches.Batch025.certificate2077.a := by decide
theorem secondLink578 : DerivedMapBatches.Batch025.certificate2076.c = DerivedMapBatches.Batch025.certificate2077.b := by decide
theorem firstValid578 : DerivedMapBatches.Batch025.certificate2073.Valid := DerivedMapBatches.Batch025.certificate2073valid
theorem secondValid578 : DerivedMapBatches.Batch025.certificate2076.Valid := DerivedMapBatches.Batch025.certificate2076valid
theorem outputValid578 : DerivedMapBatches.Batch025.certificate2077.Valid := DerivedMapBatches.Batch025.certificate2077valid
theorem linkedComposition578 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2077.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2077.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2076.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2073.algebra.mat x) := by
  rw [firstLink578, secondLink578]
  exact DerivedMapBatches.Batch025.certificate2077valid.2 x
theorem firstLink579 : DerivedMapBatches.Batch025.certificate2078.algebra.mat = DerivedMapBatches.Batch025.certificate2079.a := by decide
theorem secondLink579 : DerivedMapBatches.Batch024.certificate1979.c = DerivedMapBatches.Batch025.certificate2079.b := by decide
theorem firstValid579 : DerivedMapBatches.Batch025.certificate2078.Valid := DerivedMapBatches.Batch025.certificate2078valid
theorem secondValid579 : DerivedMapBatches.Batch024.certificate1979.Valid := DerivedMapBatches.Batch024.certificate1979valid
theorem outputValid579 : DerivedMapBatches.Batch025.certificate2079.Valid := DerivedMapBatches.Batch025.certificate2079valid
theorem linkedComposition579 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2079.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2079.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1979.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2078.algebra.mat x) := by
  rw [firstLink579, secondLink579]
  exact DerivedMapBatches.Batch025.certificate2079valid.2 x
theorem firstLink580 : DerivedMapBatches.Batch026.certificate2081.algebra.mat = DerivedMapBatches.Batch026.certificate2083.a := by decide
theorem secondLink580 : DerivedMapBatches.Batch026.certificate2082.algebra.mat = DerivedMapBatches.Batch026.certificate2083.b := by decide
theorem firstValid580 : DerivedMapBatches.Batch026.certificate2081.Valid := DerivedMapBatches.Batch026.certificate2081valid
theorem secondValid580 : DerivedMapBatches.Batch026.certificate2082.Valid := DerivedMapBatches.Batch026.certificate2082valid
theorem outputValid580 : DerivedMapBatches.Batch026.certificate2083.Valid := DerivedMapBatches.Batch026.certificate2083valid
theorem linkedComposition580 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2083.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2083.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2082.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2081.algebra.mat x) := by
  rw [firstLink580, secondLink580]
  exact DerivedMapBatches.Batch026.certificate2083valid.2 x
theorem firstLink581 : DerivedMapBatches.Batch026.certificate2080.algebra.mat = DerivedMapBatches.Batch026.certificate2084.a := by decide
theorem secondLink581 : DerivedMapBatches.Batch026.certificate2083.c = DerivedMapBatches.Batch026.certificate2084.b := by decide
theorem firstValid581 : DerivedMapBatches.Batch026.certificate2080.Valid := DerivedMapBatches.Batch026.certificate2080valid
theorem secondValid581 : DerivedMapBatches.Batch026.certificate2083.Valid := DerivedMapBatches.Batch026.certificate2083valid
theorem outputValid581 : DerivedMapBatches.Batch026.certificate2084.Valid := DerivedMapBatches.Batch026.certificate2084valid
theorem linkedComposition581 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2084.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2084.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2083.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2080.algebra.mat x) := by
  rw [firstLink581, secondLink581]
  exact DerivedMapBatches.Batch026.certificate2084valid.2 x
theorem firstLink582 : DerivedMapBatches.Batch026.certificate2085.algebra.mat = DerivedMapBatches.Batch026.certificate2086.a := by decide
theorem secondLink582 : DerivedMapBatches.Batch024.certificate1982.c = DerivedMapBatches.Batch026.certificate2086.b := by decide
theorem firstValid582 : DerivedMapBatches.Batch026.certificate2085.Valid := DerivedMapBatches.Batch026.certificate2085valid
theorem secondValid582 : DerivedMapBatches.Batch024.certificate1982.Valid := DerivedMapBatches.Batch024.certificate1982valid
theorem outputValid582 : DerivedMapBatches.Batch026.certificate2086.Valid := DerivedMapBatches.Batch026.certificate2086valid
theorem linkedComposition582 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2086.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2086.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1982.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2085.algebra.mat x) := by
  rw [firstLink582, secondLink582]
  exact DerivedMapBatches.Batch026.certificate2086valid.2 x
theorem firstLink583 : DerivedMapBatches.Batch026.certificate2088.algebra.mat = DerivedMapBatches.Batch026.certificate2090.a := by decide
theorem secondLink583 : DerivedMapBatches.Batch026.certificate2089.algebra.mat = DerivedMapBatches.Batch026.certificate2090.b := by decide
theorem firstValid583 : DerivedMapBatches.Batch026.certificate2088.Valid := DerivedMapBatches.Batch026.certificate2088valid
theorem secondValid583 : DerivedMapBatches.Batch026.certificate2089.Valid := DerivedMapBatches.Batch026.certificate2089valid
theorem outputValid583 : DerivedMapBatches.Batch026.certificate2090.Valid := DerivedMapBatches.Batch026.certificate2090valid
theorem linkedComposition583 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2090.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2090.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2089.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2088.algebra.mat x) := by
  rw [firstLink583, secondLink583]
  exact DerivedMapBatches.Batch026.certificate2090valid.2 x
theorem firstLink584 : DerivedMapBatches.Batch026.certificate2087.algebra.mat = DerivedMapBatches.Batch026.certificate2091.a := by decide
theorem secondLink584 : DerivedMapBatches.Batch026.certificate2090.c = DerivedMapBatches.Batch026.certificate2091.b := by decide
theorem firstValid584 : DerivedMapBatches.Batch026.certificate2087.Valid := DerivedMapBatches.Batch026.certificate2087valid
theorem secondValid584 : DerivedMapBatches.Batch026.certificate2090.Valid := DerivedMapBatches.Batch026.certificate2090valid
theorem outputValid584 : DerivedMapBatches.Batch026.certificate2091.Valid := DerivedMapBatches.Batch026.certificate2091valid
theorem linkedComposition584 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2091.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2091.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2090.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2087.algebra.mat x) := by
  rw [firstLink584, secondLink584]
  exact DerivedMapBatches.Batch026.certificate2091valid.2 x
theorem firstLink585 : DerivedMapBatches.Batch026.certificate2092.algebra.mat = DerivedMapBatches.Batch026.certificate2093.a := by decide
theorem secondLink585 : DerivedMapBatches.Batch024.certificate1985.c = DerivedMapBatches.Batch026.certificate2093.b := by decide
theorem firstValid585 : DerivedMapBatches.Batch026.certificate2092.Valid := DerivedMapBatches.Batch026.certificate2092valid
theorem secondValid585 : DerivedMapBatches.Batch024.certificate1985.Valid := DerivedMapBatches.Batch024.certificate1985valid
theorem outputValid585 : DerivedMapBatches.Batch026.certificate2093.Valid := DerivedMapBatches.Batch026.certificate2093valid
theorem linkedComposition585 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2093.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2093.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1985.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2092.algebra.mat x) := by
  rw [firstLink585, secondLink585]
  exact DerivedMapBatches.Batch026.certificate2093valid.2 x
theorem firstLink586 : DerivedMapBatches.Batch026.certificate2095.algebra.mat = DerivedMapBatches.Batch026.certificate2097.a := by decide
theorem secondLink586 : DerivedMapBatches.Batch026.certificate2096.algebra.mat = DerivedMapBatches.Batch026.certificate2097.b := by decide
theorem firstValid586 : DerivedMapBatches.Batch026.certificate2095.Valid := DerivedMapBatches.Batch026.certificate2095valid
theorem secondValid586 : DerivedMapBatches.Batch026.certificate2096.Valid := DerivedMapBatches.Batch026.certificate2096valid
theorem outputValid586 : DerivedMapBatches.Batch026.certificate2097.Valid := DerivedMapBatches.Batch026.certificate2097valid
theorem linkedComposition586 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2097.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2097.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2096.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2095.algebra.mat x) := by
  rw [firstLink586, secondLink586]
  exact DerivedMapBatches.Batch026.certificate2097valid.2 x
theorem firstLink587 : DerivedMapBatches.Batch026.certificate2094.algebra.mat = DerivedMapBatches.Batch026.certificate2098.a := by decide
theorem secondLink587 : DerivedMapBatches.Batch026.certificate2097.c = DerivedMapBatches.Batch026.certificate2098.b := by decide
theorem firstValid587 : DerivedMapBatches.Batch026.certificate2094.Valid := DerivedMapBatches.Batch026.certificate2094valid
theorem secondValid587 : DerivedMapBatches.Batch026.certificate2097.Valid := DerivedMapBatches.Batch026.certificate2097valid
theorem outputValid587 : DerivedMapBatches.Batch026.certificate2098.Valid := DerivedMapBatches.Batch026.certificate2098valid
theorem linkedComposition587 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2098.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2098.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2097.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2094.algebra.mat x) := by
  rw [firstLink587, secondLink587]
  exact DerivedMapBatches.Batch026.certificate2098valid.2 x
theorem firstLink588 : DerivedMapBatches.Batch026.certificate2099.algebra.mat = DerivedMapBatches.Batch026.certificate2100.a := by decide
theorem secondLink588 : DerivedMapBatches.Batch024.certificate1988.c = DerivedMapBatches.Batch026.certificate2100.b := by decide
theorem firstValid588 : DerivedMapBatches.Batch026.certificate2099.Valid := DerivedMapBatches.Batch026.certificate2099valid
theorem secondValid588 : DerivedMapBatches.Batch024.certificate1988.Valid := DerivedMapBatches.Batch024.certificate1988valid
theorem outputValid588 : DerivedMapBatches.Batch026.certificate2100.Valid := DerivedMapBatches.Batch026.certificate2100valid
theorem linkedComposition588 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2100.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2100.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1988.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2099.algebra.mat x) := by
  rw [firstLink588, secondLink588]
  exact DerivedMapBatches.Batch026.certificate2100valid.2 x
theorem firstLink589 : DerivedMapBatches.Batch026.certificate2102.algebra.mat = DerivedMapBatches.Batch026.certificate2104.a := by decide
theorem secondLink589 : DerivedMapBatches.Batch026.certificate2103.algebra.mat = DerivedMapBatches.Batch026.certificate2104.b := by decide
theorem firstValid589 : DerivedMapBatches.Batch026.certificate2102.Valid := DerivedMapBatches.Batch026.certificate2102valid
theorem secondValid589 : DerivedMapBatches.Batch026.certificate2103.Valid := DerivedMapBatches.Batch026.certificate2103valid
theorem outputValid589 : DerivedMapBatches.Batch026.certificate2104.Valid := DerivedMapBatches.Batch026.certificate2104valid
theorem linkedComposition589 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2104.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2104.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2103.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2102.algebra.mat x) := by
  rw [firstLink589, secondLink589]
  exact DerivedMapBatches.Batch026.certificate2104valid.2 x
theorem firstLink590 : DerivedMapBatches.Batch026.certificate2101.algebra.mat = DerivedMapBatches.Batch026.certificate2105.a := by decide
theorem secondLink590 : DerivedMapBatches.Batch026.certificate2104.c = DerivedMapBatches.Batch026.certificate2105.b := by decide
theorem firstValid590 : DerivedMapBatches.Batch026.certificate2101.Valid := DerivedMapBatches.Batch026.certificate2101valid
theorem secondValid590 : DerivedMapBatches.Batch026.certificate2104.Valid := DerivedMapBatches.Batch026.certificate2104valid
theorem outputValid590 : DerivedMapBatches.Batch026.certificate2105.Valid := DerivedMapBatches.Batch026.certificate2105valid
theorem linkedComposition590 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2105.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2105.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2104.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2101.algebra.mat x) := by
  rw [firstLink590, secondLink590]
  exact DerivedMapBatches.Batch026.certificate2105valid.2 x
theorem firstLink591 : DerivedMapBatches.Batch026.certificate2106.algebra.mat = DerivedMapBatches.Batch026.certificate2107.a := by decide
theorem secondLink591 : DerivedMapBatches.Batch024.certificate1991.c = DerivedMapBatches.Batch026.certificate2107.b := by decide
theorem firstValid591 : DerivedMapBatches.Batch026.certificate2106.Valid := DerivedMapBatches.Batch026.certificate2106valid
theorem secondValid591 : DerivedMapBatches.Batch024.certificate1991.Valid := DerivedMapBatches.Batch024.certificate1991valid
theorem outputValid591 : DerivedMapBatches.Batch026.certificate2107.Valid := DerivedMapBatches.Batch026.certificate2107valid
theorem linkedComposition591 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2107.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2107.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1991.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2106.algebra.mat x) := by
  rw [firstLink591, secondLink591]
  exact DerivedMapBatches.Batch026.certificate2107valid.2 x
theorem firstLink592 : DerivedMapBatches.Batch026.certificate2109.algebra.mat = DerivedMapBatches.Batch026.certificate2111.a := by decide
theorem secondLink592 : DerivedMapBatches.Batch026.certificate2110.algebra.mat = DerivedMapBatches.Batch026.certificate2111.b := by decide
theorem firstValid592 : DerivedMapBatches.Batch026.certificate2109.Valid := DerivedMapBatches.Batch026.certificate2109valid
theorem secondValid592 : DerivedMapBatches.Batch026.certificate2110.Valid := DerivedMapBatches.Batch026.certificate2110valid
theorem outputValid592 : DerivedMapBatches.Batch026.certificate2111.Valid := DerivedMapBatches.Batch026.certificate2111valid
theorem linkedComposition592 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2111.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2111.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2110.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2109.algebra.mat x) := by
  rw [firstLink592, secondLink592]
  exact DerivedMapBatches.Batch026.certificate2111valid.2 x
theorem firstLink593 : DerivedMapBatches.Batch026.certificate2108.algebra.mat = DerivedMapBatches.Batch026.certificate2112.a := by decide
theorem secondLink593 : DerivedMapBatches.Batch026.certificate2111.c = DerivedMapBatches.Batch026.certificate2112.b := by decide
theorem firstValid593 : DerivedMapBatches.Batch026.certificate2108.Valid := DerivedMapBatches.Batch026.certificate2108valid
theorem secondValid593 : DerivedMapBatches.Batch026.certificate2111.Valid := DerivedMapBatches.Batch026.certificate2111valid
theorem outputValid593 : DerivedMapBatches.Batch026.certificate2112.Valid := DerivedMapBatches.Batch026.certificate2112valid
theorem linkedComposition593 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2112.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2112.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2111.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2108.algebra.mat x) := by
  rw [firstLink593, secondLink593]
  exact DerivedMapBatches.Batch026.certificate2112valid.2 x
theorem firstLink594 : DerivedMapBatches.Batch026.certificate2113.algebra.mat = DerivedMapBatches.Batch026.certificate2114.a := by decide
theorem secondLink594 : DerivedMapBatches.Batch024.certificate1994.c = DerivedMapBatches.Batch026.certificate2114.b := by decide
theorem firstValid594 : DerivedMapBatches.Batch026.certificate2113.Valid := DerivedMapBatches.Batch026.certificate2113valid
theorem secondValid594 : DerivedMapBatches.Batch024.certificate1994.Valid := DerivedMapBatches.Batch024.certificate1994valid
theorem outputValid594 : DerivedMapBatches.Batch026.certificate2114.Valid := DerivedMapBatches.Batch026.certificate2114valid
theorem linkedComposition594 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2114.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2114.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1994.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2113.algebra.mat x) := by
  rw [firstLink594, secondLink594]
  exact DerivedMapBatches.Batch026.certificate2114valid.2 x
theorem firstLink595 : DerivedMapBatches.Batch026.certificate2115.algebra.mat = DerivedMapBatches.Batch026.certificate2116.a := by decide
theorem secondLink595 : DerivedMapBatches.Batch024.certificate1997.c = DerivedMapBatches.Batch026.certificate2116.b := by decide
theorem firstValid595 : DerivedMapBatches.Batch026.certificate2115.Valid := DerivedMapBatches.Batch026.certificate2115valid
theorem secondValid595 : DerivedMapBatches.Batch024.certificate1997.Valid := DerivedMapBatches.Batch024.certificate1997valid
theorem outputValid595 : DerivedMapBatches.Batch026.certificate2116.Valid := DerivedMapBatches.Batch026.certificate2116valid
theorem linkedComposition595 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2116.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2116.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1997.c (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2115.algebra.mat x) := by
  rw [firstLink595, secondLink595]
  exact DerivedMapBatches.Batch026.certificate2116valid.2 x
theorem firstLink596 : DerivedMapBatches.Batch026.certificate2117.algebra.mat = DerivedMapBatches.Batch026.certificate2119.a := by decide
theorem secondLink596 : DerivedMapBatches.Batch026.certificate2118.algebra.mat = DerivedMapBatches.Batch026.certificate2119.b := by decide
theorem firstValid596 : DerivedMapBatches.Batch026.certificate2117.Valid := DerivedMapBatches.Batch026.certificate2117valid
theorem secondValid596 : DerivedMapBatches.Batch026.certificate2118.Valid := DerivedMapBatches.Batch026.certificate2118valid
theorem outputValid596 : DerivedMapBatches.Batch026.certificate2119.Valid := DerivedMapBatches.Batch026.certificate2119valid
theorem linkedComposition596 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2119.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2119.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2118.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2117.algebra.mat x) := by
  rw [firstLink596, secondLink596]
  exact DerivedMapBatches.Batch026.certificate2119valid.2 x
theorem firstLink597 : DerivedMapBatches.Batch026.certificate2120.algebra.mat = DerivedMapBatches.Batch026.certificate2122.a := by decide
theorem secondLink597 : DerivedMapBatches.Batch026.certificate2121.algebra.mat = DerivedMapBatches.Batch026.certificate2122.b := by decide
theorem firstValid597 : DerivedMapBatches.Batch026.certificate2120.Valid := DerivedMapBatches.Batch026.certificate2120valid
theorem secondValid597 : DerivedMapBatches.Batch026.certificate2121.Valid := DerivedMapBatches.Batch026.certificate2121valid
theorem outputValid597 : DerivedMapBatches.Batch026.certificate2122.Valid := DerivedMapBatches.Batch026.certificate2122valid
theorem linkedComposition597 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2122.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2122.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2121.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2120.algebra.mat x) := by
  rw [firstLink597, secondLink597]
  exact DerivedMapBatches.Batch026.certificate2122valid.2 x
theorem firstLink598 : DerivedMapBatches.Batch026.certificate2123.algebra.mat = DerivedMapBatches.Batch026.certificate2125.a := by decide
theorem secondLink598 : DerivedMapBatches.Batch026.certificate2124.algebra.mat = DerivedMapBatches.Batch026.certificate2125.b := by decide
theorem firstValid598 : DerivedMapBatches.Batch026.certificate2123.Valid := DerivedMapBatches.Batch026.certificate2123valid
theorem secondValid598 : DerivedMapBatches.Batch026.certificate2124.Valid := DerivedMapBatches.Batch026.certificate2124valid
theorem outputValid598 : DerivedMapBatches.Batch026.certificate2125.Valid := DerivedMapBatches.Batch026.certificate2125valid
theorem linkedComposition598 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2125.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2125.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2124.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2123.algebra.mat x) := by
  rw [firstLink598, secondLink598]
  exact DerivedMapBatches.Batch026.certificate2125valid.2 x
theorem firstLink599 : DerivedMapBatches.Batch026.certificate2126.algebra.mat = DerivedMapBatches.Batch026.certificate2128.a := by decide
theorem secondLink599 : DerivedMapBatches.Batch026.certificate2127.algebra.mat = DerivedMapBatches.Batch026.certificate2128.b := by decide
theorem firstValid599 : DerivedMapBatches.Batch026.certificate2126.Valid := DerivedMapBatches.Batch026.certificate2126valid
theorem secondValid599 : DerivedMapBatches.Batch026.certificate2127.Valid := DerivedMapBatches.Batch026.certificate2127valid
theorem outputValid599 : DerivedMapBatches.Batch026.certificate2128.Valid := DerivedMapBatches.Batch026.certificate2128valid
theorem linkedComposition599 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2128.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2128.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2127.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2126.algebra.mat x) := by
  rw [firstLink599, secondLink599]
  exact DerivedMapBatches.Batch026.certificate2128valid.2 x
end DerivedLinkageBatches.Batch011
