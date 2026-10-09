import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch026
import DerivedMapBatches.Batch027
import DerivedMapBatches.Batch028
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch012
theorem firstLink600 : DerivedMapBatches.Batch026.certificate2129.algebra.mat = DerivedMapBatches.Batch026.certificate2131.a := by decide
theorem secondLink600 : DerivedMapBatches.Batch026.certificate2130.algebra.mat = DerivedMapBatches.Batch026.certificate2131.b := by decide
theorem firstValid600 : DerivedMapBatches.Batch026.certificate2129.Valid := DerivedMapBatches.Batch026.certificate2129valid
theorem secondValid600 : DerivedMapBatches.Batch026.certificate2130.Valid := DerivedMapBatches.Batch026.certificate2130valid
theorem outputValid600 : DerivedMapBatches.Batch026.certificate2131.Valid := DerivedMapBatches.Batch026.certificate2131valid
theorem linkedComposition600 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2131.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2131.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2130.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2129.algebra.mat x) := by
  rw [firstLink600, secondLink600]
  exact DerivedMapBatches.Batch026.certificate2131valid.2 x
theorem firstLink601 : DerivedMapBatches.Batch026.certificate2132.algebra.mat = DerivedMapBatches.Batch026.certificate2134.a := by decide
theorem secondLink601 : DerivedMapBatches.Batch026.certificate2133.algebra.mat = DerivedMapBatches.Batch026.certificate2134.b := by decide
theorem firstValid601 : DerivedMapBatches.Batch026.certificate2132.Valid := DerivedMapBatches.Batch026.certificate2132valid
theorem secondValid601 : DerivedMapBatches.Batch026.certificate2133.Valid := DerivedMapBatches.Batch026.certificate2133valid
theorem outputValid601 : DerivedMapBatches.Batch026.certificate2134.Valid := DerivedMapBatches.Batch026.certificate2134valid
theorem linkedComposition601 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2134.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2134.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2133.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2132.algebra.mat x) := by
  rw [firstLink601, secondLink601]
  exact DerivedMapBatches.Batch026.certificate2134valid.2 x
theorem firstLink602 : DerivedMapBatches.Batch026.certificate2135.algebra.mat = DerivedMapBatches.Batch026.certificate2137.a := by decide
theorem secondLink602 : DerivedMapBatches.Batch026.certificate2136.algebra.mat = DerivedMapBatches.Batch026.certificate2137.b := by decide
theorem firstValid602 : DerivedMapBatches.Batch026.certificate2135.Valid := DerivedMapBatches.Batch026.certificate2135valid
theorem secondValid602 : DerivedMapBatches.Batch026.certificate2136.Valid := DerivedMapBatches.Batch026.certificate2136valid
theorem outputValid602 : DerivedMapBatches.Batch026.certificate2137.Valid := DerivedMapBatches.Batch026.certificate2137valid
theorem linkedComposition602 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2137.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2137.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2136.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2135.algebra.mat x) := by
  rw [firstLink602, secondLink602]
  exact DerivedMapBatches.Batch026.certificate2137valid.2 x
theorem firstLink603 : DerivedMapBatches.Batch026.certificate2138.algebra.mat = DerivedMapBatches.Batch026.certificate2140.a := by decide
theorem secondLink603 : DerivedMapBatches.Batch026.certificate2139.algebra.mat = DerivedMapBatches.Batch026.certificate2140.b := by decide
theorem firstValid603 : DerivedMapBatches.Batch026.certificate2138.Valid := DerivedMapBatches.Batch026.certificate2138valid
theorem secondValid603 : DerivedMapBatches.Batch026.certificate2139.Valid := DerivedMapBatches.Batch026.certificate2139valid
theorem outputValid603 : DerivedMapBatches.Batch026.certificate2140.Valid := DerivedMapBatches.Batch026.certificate2140valid
theorem linkedComposition603 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2140.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2140.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2139.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2138.algebra.mat x) := by
  rw [firstLink603, secondLink603]
  exact DerivedMapBatches.Batch026.certificate2140valid.2 x
theorem firstLink604 : DerivedMapBatches.Batch026.certificate2141.algebra.mat = DerivedMapBatches.Batch026.certificate2143.a := by decide
theorem secondLink604 : DerivedMapBatches.Batch026.certificate2142.algebra.mat = DerivedMapBatches.Batch026.certificate2143.b := by decide
theorem firstValid604 : DerivedMapBatches.Batch026.certificate2141.Valid := DerivedMapBatches.Batch026.certificate2141valid
theorem secondValid604 : DerivedMapBatches.Batch026.certificate2142.Valid := DerivedMapBatches.Batch026.certificate2142valid
theorem outputValid604 : DerivedMapBatches.Batch026.certificate2143.Valid := DerivedMapBatches.Batch026.certificate2143valid
theorem linkedComposition604 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2143.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2143.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2142.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2141.algebra.mat x) := by
  rw [firstLink604, secondLink604]
  exact DerivedMapBatches.Batch026.certificate2143valid.2 x
theorem firstLink605 : DerivedMapBatches.Batch026.certificate2144.algebra.mat = DerivedMapBatches.Batch026.certificate2146.a := by decide
theorem secondLink605 : DerivedMapBatches.Batch026.certificate2145.algebra.mat = DerivedMapBatches.Batch026.certificate2146.b := by decide
theorem firstValid605 : DerivedMapBatches.Batch026.certificate2144.Valid := DerivedMapBatches.Batch026.certificate2144valid
theorem secondValid605 : DerivedMapBatches.Batch026.certificate2145.Valid := DerivedMapBatches.Batch026.certificate2145valid
theorem outputValid605 : DerivedMapBatches.Batch026.certificate2146.Valid := DerivedMapBatches.Batch026.certificate2146valid
theorem linkedComposition605 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2146.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2146.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2145.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2144.algebra.mat x) := by
  rw [firstLink605, secondLink605]
  exact DerivedMapBatches.Batch026.certificate2146valid.2 x
theorem firstLink606 : DerivedMapBatches.Batch026.certificate2147.algebra.mat = DerivedMapBatches.Batch026.certificate2149.a := by decide
theorem secondLink606 : DerivedMapBatches.Batch026.certificate2148.algebra.mat = DerivedMapBatches.Batch026.certificate2149.b := by decide
theorem firstValid606 : DerivedMapBatches.Batch026.certificate2147.Valid := DerivedMapBatches.Batch026.certificate2147valid
theorem secondValid606 : DerivedMapBatches.Batch026.certificate2148.Valid := DerivedMapBatches.Batch026.certificate2148valid
theorem outputValid606 : DerivedMapBatches.Batch026.certificate2149.Valid := DerivedMapBatches.Batch026.certificate2149valid
theorem linkedComposition606 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2149.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2149.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2148.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2147.algebra.mat x) := by
  rw [firstLink606, secondLink606]
  exact DerivedMapBatches.Batch026.certificate2149valid.2 x
theorem firstLink607 : DerivedMapBatches.Batch026.certificate2150.algebra.mat = DerivedMapBatches.Batch026.certificate2152.a := by decide
theorem secondLink607 : DerivedMapBatches.Batch026.certificate2151.algebra.mat = DerivedMapBatches.Batch026.certificate2152.b := by decide
theorem firstValid607 : DerivedMapBatches.Batch026.certificate2150.Valid := DerivedMapBatches.Batch026.certificate2150valid
theorem secondValid607 : DerivedMapBatches.Batch026.certificate2151.Valid := DerivedMapBatches.Batch026.certificate2151valid
theorem outputValid607 : DerivedMapBatches.Batch026.certificate2152.Valid := DerivedMapBatches.Batch026.certificate2152valid
theorem linkedComposition607 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2152.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2152.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2151.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2150.algebra.mat x) := by
  rw [firstLink607, secondLink607]
  exact DerivedMapBatches.Batch026.certificate2152valid.2 x
theorem firstLink608 : DerivedMapBatches.Batch026.certificate2153.algebra.mat = DerivedMapBatches.Batch026.certificate2155.a := by decide
theorem secondLink608 : DerivedMapBatches.Batch026.certificate2154.algebra.mat = DerivedMapBatches.Batch026.certificate2155.b := by decide
theorem firstValid608 : DerivedMapBatches.Batch026.certificate2153.Valid := DerivedMapBatches.Batch026.certificate2153valid
theorem secondValid608 : DerivedMapBatches.Batch026.certificate2154.Valid := DerivedMapBatches.Batch026.certificate2154valid
theorem outputValid608 : DerivedMapBatches.Batch026.certificate2155.Valid := DerivedMapBatches.Batch026.certificate2155valid
theorem linkedComposition608 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2155.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2155.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2154.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2153.algebra.mat x) := by
  rw [firstLink608, secondLink608]
  exact DerivedMapBatches.Batch026.certificate2155valid.2 x
theorem firstLink609 : DerivedMapBatches.Batch026.certificate2156.algebra.mat = DerivedMapBatches.Batch026.certificate2158.a := by decide
theorem secondLink609 : DerivedMapBatches.Batch026.certificate2157.algebra.mat = DerivedMapBatches.Batch026.certificate2158.b := by decide
theorem firstValid609 : DerivedMapBatches.Batch026.certificate2156.Valid := DerivedMapBatches.Batch026.certificate2156valid
theorem secondValid609 : DerivedMapBatches.Batch026.certificate2157.Valid := DerivedMapBatches.Batch026.certificate2157valid
theorem outputValid609 : DerivedMapBatches.Batch026.certificate2158.Valid := DerivedMapBatches.Batch026.certificate2158valid
theorem linkedComposition609 (x : LinearCertificates.Vec DerivedMapBatches.Batch026.certificate2158.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch026.certificate2158.c x = LinearCertificates.eval DerivedMapBatches.Batch026.certificate2157.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2156.algebra.mat x) := by
  rw [firstLink609, secondLink609]
  exact DerivedMapBatches.Batch026.certificate2158valid.2 x
theorem firstLink610 : DerivedMapBatches.Batch026.certificate2159.algebra.mat = DerivedMapBatches.Batch027.certificate2161.a := by decide
theorem secondLink610 : DerivedMapBatches.Batch027.certificate2160.algebra.mat = DerivedMapBatches.Batch027.certificate2161.b := by decide
theorem firstValid610 : DerivedMapBatches.Batch026.certificate2159.Valid := DerivedMapBatches.Batch026.certificate2159valid
theorem secondValid610 : DerivedMapBatches.Batch027.certificate2160.Valid := DerivedMapBatches.Batch027.certificate2160valid
theorem outputValid610 : DerivedMapBatches.Batch027.certificate2161.Valid := DerivedMapBatches.Batch027.certificate2161valid
theorem linkedComposition610 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2161.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2161.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2160.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2159.algebra.mat x) := by
  rw [firstLink610, secondLink610]
  exact DerivedMapBatches.Batch027.certificate2161valid.2 x
theorem firstLink611 : DerivedMapBatches.Batch027.certificate2162.algebra.mat = DerivedMapBatches.Batch027.certificate2164.a := by decide
theorem secondLink611 : DerivedMapBatches.Batch027.certificate2163.algebra.mat = DerivedMapBatches.Batch027.certificate2164.b := by decide
theorem firstValid611 : DerivedMapBatches.Batch027.certificate2162.Valid := DerivedMapBatches.Batch027.certificate2162valid
theorem secondValid611 : DerivedMapBatches.Batch027.certificate2163.Valid := DerivedMapBatches.Batch027.certificate2163valid
theorem outputValid611 : DerivedMapBatches.Batch027.certificate2164.Valid := DerivedMapBatches.Batch027.certificate2164valid
theorem linkedComposition611 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2164.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2164.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2163.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2162.algebra.mat x) := by
  rw [firstLink611, secondLink611]
  exact DerivedMapBatches.Batch027.certificate2164valid.2 x
theorem firstLink612 : DerivedMapBatches.Batch027.certificate2165.algebra.mat = DerivedMapBatches.Batch027.certificate2167.a := by decide
theorem secondLink612 : DerivedMapBatches.Batch027.certificate2166.algebra.mat = DerivedMapBatches.Batch027.certificate2167.b := by decide
theorem firstValid612 : DerivedMapBatches.Batch027.certificate2165.Valid := DerivedMapBatches.Batch027.certificate2165valid
theorem secondValid612 : DerivedMapBatches.Batch027.certificate2166.Valid := DerivedMapBatches.Batch027.certificate2166valid
theorem outputValid612 : DerivedMapBatches.Batch027.certificate2167.Valid := DerivedMapBatches.Batch027.certificate2167valid
theorem linkedComposition612 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2167.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2167.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2166.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2165.algebra.mat x) := by
  rw [firstLink612, secondLink612]
  exact DerivedMapBatches.Batch027.certificate2167valid.2 x
theorem firstLink613 : DerivedMapBatches.Batch027.certificate2168.algebra.mat = DerivedMapBatches.Batch027.certificate2170.a := by decide
theorem secondLink613 : DerivedMapBatches.Batch027.certificate2169.algebra.mat = DerivedMapBatches.Batch027.certificate2170.b := by decide
theorem firstValid613 : DerivedMapBatches.Batch027.certificate2168.Valid := DerivedMapBatches.Batch027.certificate2168valid
theorem secondValid613 : DerivedMapBatches.Batch027.certificate2169.Valid := DerivedMapBatches.Batch027.certificate2169valid
theorem outputValid613 : DerivedMapBatches.Batch027.certificate2170.Valid := DerivedMapBatches.Batch027.certificate2170valid
theorem linkedComposition613 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2170.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2170.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2169.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2168.algebra.mat x) := by
  rw [firstLink613, secondLink613]
  exact DerivedMapBatches.Batch027.certificate2170valid.2 x
theorem firstLink614 : DerivedMapBatches.Batch027.certificate2171.algebra.mat = DerivedMapBatches.Batch027.certificate2173.a := by decide
theorem secondLink614 : DerivedMapBatches.Batch027.certificate2172.algebra.mat = DerivedMapBatches.Batch027.certificate2173.b := by decide
theorem firstValid614 : DerivedMapBatches.Batch027.certificate2171.Valid := DerivedMapBatches.Batch027.certificate2171valid
theorem secondValid614 : DerivedMapBatches.Batch027.certificate2172.Valid := DerivedMapBatches.Batch027.certificate2172valid
theorem outputValid614 : DerivedMapBatches.Batch027.certificate2173.Valid := DerivedMapBatches.Batch027.certificate2173valid
theorem linkedComposition614 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2173.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2173.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2172.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2171.algebra.mat x) := by
  rw [firstLink614, secondLink614]
  exact DerivedMapBatches.Batch027.certificate2173valid.2 x
theorem firstLink615 : DerivedMapBatches.Batch027.certificate2174.algebra.mat = DerivedMapBatches.Batch027.certificate2176.a := by decide
theorem secondLink615 : DerivedMapBatches.Batch027.certificate2175.algebra.mat = DerivedMapBatches.Batch027.certificate2176.b := by decide
theorem firstValid615 : DerivedMapBatches.Batch027.certificate2174.Valid := DerivedMapBatches.Batch027.certificate2174valid
theorem secondValid615 : DerivedMapBatches.Batch027.certificate2175.Valid := DerivedMapBatches.Batch027.certificate2175valid
theorem outputValid615 : DerivedMapBatches.Batch027.certificate2176.Valid := DerivedMapBatches.Batch027.certificate2176valid
theorem linkedComposition615 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2176.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2176.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2175.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2174.algebra.mat x) := by
  rw [firstLink615, secondLink615]
  exact DerivedMapBatches.Batch027.certificate2176valid.2 x
theorem firstLink616 : DerivedMapBatches.Batch027.certificate2177.algebra.mat = DerivedMapBatches.Batch027.certificate2179.a := by decide
theorem secondLink616 : DerivedMapBatches.Batch027.certificate2178.algebra.mat = DerivedMapBatches.Batch027.certificate2179.b := by decide
theorem firstValid616 : DerivedMapBatches.Batch027.certificate2177.Valid := DerivedMapBatches.Batch027.certificate2177valid
theorem secondValid616 : DerivedMapBatches.Batch027.certificate2178.Valid := DerivedMapBatches.Batch027.certificate2178valid
theorem outputValid616 : DerivedMapBatches.Batch027.certificate2179.Valid := DerivedMapBatches.Batch027.certificate2179valid
theorem linkedComposition616 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2179.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2179.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2178.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2177.algebra.mat x) := by
  rw [firstLink616, secondLink616]
  exact DerivedMapBatches.Batch027.certificate2179valid.2 x
theorem firstLink617 : DerivedMapBatches.Batch027.certificate2180.algebra.mat = DerivedMapBatches.Batch027.certificate2182.a := by decide
theorem secondLink617 : DerivedMapBatches.Batch027.certificate2181.algebra.mat = DerivedMapBatches.Batch027.certificate2182.b := by decide
theorem firstValid617 : DerivedMapBatches.Batch027.certificate2180.Valid := DerivedMapBatches.Batch027.certificate2180valid
theorem secondValid617 : DerivedMapBatches.Batch027.certificate2181.Valid := DerivedMapBatches.Batch027.certificate2181valid
theorem outputValid617 : DerivedMapBatches.Batch027.certificate2182.Valid := DerivedMapBatches.Batch027.certificate2182valid
theorem linkedComposition617 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2182.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2182.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2181.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2180.algebra.mat x) := by
  rw [firstLink617, secondLink617]
  exact DerivedMapBatches.Batch027.certificate2182valid.2 x
theorem firstLink618 : DerivedMapBatches.Batch027.certificate2183.algebra.mat = DerivedMapBatches.Batch027.certificate2185.a := by decide
theorem secondLink618 : DerivedMapBatches.Batch027.certificate2184.algebra.mat = DerivedMapBatches.Batch027.certificate2185.b := by decide
theorem firstValid618 : DerivedMapBatches.Batch027.certificate2183.Valid := DerivedMapBatches.Batch027.certificate2183valid
theorem secondValid618 : DerivedMapBatches.Batch027.certificate2184.Valid := DerivedMapBatches.Batch027.certificate2184valid
theorem outputValid618 : DerivedMapBatches.Batch027.certificate2185.Valid := DerivedMapBatches.Batch027.certificate2185valid
theorem linkedComposition618 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2185.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2185.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2184.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2183.algebra.mat x) := by
  rw [firstLink618, secondLink618]
  exact DerivedMapBatches.Batch027.certificate2185valid.2 x
theorem firstLink619 : DerivedMapBatches.Batch027.certificate2186.algebra.mat = DerivedMapBatches.Batch027.certificate2188.a := by decide
theorem secondLink619 : DerivedMapBatches.Batch027.certificate2187.algebra.mat = DerivedMapBatches.Batch027.certificate2188.b := by decide
theorem firstValid619 : DerivedMapBatches.Batch027.certificate2186.Valid := DerivedMapBatches.Batch027.certificate2186valid
theorem secondValid619 : DerivedMapBatches.Batch027.certificate2187.Valid := DerivedMapBatches.Batch027.certificate2187valid
theorem outputValid619 : DerivedMapBatches.Batch027.certificate2188.Valid := DerivedMapBatches.Batch027.certificate2188valid
theorem linkedComposition619 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2188.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2188.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2187.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2186.algebra.mat x) := by
  rw [firstLink619, secondLink619]
  exact DerivedMapBatches.Batch027.certificate2188valid.2 x
theorem firstLink620 : DerivedMapBatches.Batch027.certificate2189.algebra.mat = DerivedMapBatches.Batch027.certificate2191.a := by decide
theorem secondLink620 : DerivedMapBatches.Batch027.certificate2190.algebra.mat = DerivedMapBatches.Batch027.certificate2191.b := by decide
theorem firstValid620 : DerivedMapBatches.Batch027.certificate2189.Valid := DerivedMapBatches.Batch027.certificate2189valid
theorem secondValid620 : DerivedMapBatches.Batch027.certificate2190.Valid := DerivedMapBatches.Batch027.certificate2190valid
theorem outputValid620 : DerivedMapBatches.Batch027.certificate2191.Valid := DerivedMapBatches.Batch027.certificate2191valid
theorem linkedComposition620 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2191.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2191.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2190.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2189.algebra.mat x) := by
  rw [firstLink620, secondLink620]
  exact DerivedMapBatches.Batch027.certificate2191valid.2 x
theorem firstLink621 : DerivedMapBatches.Batch027.certificate2192.algebra.mat = DerivedMapBatches.Batch027.certificate2194.a := by decide
theorem secondLink621 : DerivedMapBatches.Batch027.certificate2193.algebra.mat = DerivedMapBatches.Batch027.certificate2194.b := by decide
theorem firstValid621 : DerivedMapBatches.Batch027.certificate2192.Valid := DerivedMapBatches.Batch027.certificate2192valid
theorem secondValid621 : DerivedMapBatches.Batch027.certificate2193.Valid := DerivedMapBatches.Batch027.certificate2193valid
theorem outputValid621 : DerivedMapBatches.Batch027.certificate2194.Valid := DerivedMapBatches.Batch027.certificate2194valid
theorem linkedComposition621 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2194.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2194.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2193.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2192.algebra.mat x) := by
  rw [firstLink621, secondLink621]
  exact DerivedMapBatches.Batch027.certificate2194valid.2 x
theorem firstLink622 : DerivedMapBatches.Batch027.certificate2195.algebra.mat = DerivedMapBatches.Batch027.certificate2197.a := by decide
theorem secondLink622 : DerivedMapBatches.Batch027.certificate2196.algebra.mat = DerivedMapBatches.Batch027.certificate2197.b := by decide
theorem firstValid622 : DerivedMapBatches.Batch027.certificate2195.Valid := DerivedMapBatches.Batch027.certificate2195valid
theorem secondValid622 : DerivedMapBatches.Batch027.certificate2196.Valid := DerivedMapBatches.Batch027.certificate2196valid
theorem outputValid622 : DerivedMapBatches.Batch027.certificate2197.Valid := DerivedMapBatches.Batch027.certificate2197valid
theorem linkedComposition622 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2197.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2197.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2196.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2195.algebra.mat x) := by
  rw [firstLink622, secondLink622]
  exact DerivedMapBatches.Batch027.certificate2197valid.2 x
theorem firstLink623 : DerivedMapBatches.Batch027.certificate2198.algebra.mat = DerivedMapBatches.Batch027.certificate2200.a := by decide
theorem secondLink623 : DerivedMapBatches.Batch027.certificate2199.algebra.mat = DerivedMapBatches.Batch027.certificate2200.b := by decide
theorem firstValid623 : DerivedMapBatches.Batch027.certificate2198.Valid := DerivedMapBatches.Batch027.certificate2198valid
theorem secondValid623 : DerivedMapBatches.Batch027.certificate2199.Valid := DerivedMapBatches.Batch027.certificate2199valid
theorem outputValid623 : DerivedMapBatches.Batch027.certificate2200.Valid := DerivedMapBatches.Batch027.certificate2200valid
theorem linkedComposition623 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2200.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2200.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2199.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2198.algebra.mat x) := by
  rw [firstLink623, secondLink623]
  exact DerivedMapBatches.Batch027.certificate2200valid.2 x
theorem firstLink624 : DerivedMapBatches.Batch027.certificate2201.algebra.mat = DerivedMapBatches.Batch027.certificate2203.a := by decide
theorem secondLink624 : DerivedMapBatches.Batch027.certificate2202.algebra.mat = DerivedMapBatches.Batch027.certificate2203.b := by decide
theorem firstValid624 : DerivedMapBatches.Batch027.certificate2201.Valid := DerivedMapBatches.Batch027.certificate2201valid
theorem secondValid624 : DerivedMapBatches.Batch027.certificate2202.Valid := DerivedMapBatches.Batch027.certificate2202valid
theorem outputValid624 : DerivedMapBatches.Batch027.certificate2203.Valid := DerivedMapBatches.Batch027.certificate2203valid
theorem linkedComposition624 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2203.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2203.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2202.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2201.algebra.mat x) := by
  rw [firstLink624, secondLink624]
  exact DerivedMapBatches.Batch027.certificate2203valid.2 x
theorem firstLink625 : DerivedMapBatches.Batch027.certificate2204.algebra.mat = DerivedMapBatches.Batch027.certificate2206.a := by decide
theorem secondLink625 : DerivedMapBatches.Batch027.certificate2205.algebra.mat = DerivedMapBatches.Batch027.certificate2206.b := by decide
theorem firstValid625 : DerivedMapBatches.Batch027.certificate2204.Valid := DerivedMapBatches.Batch027.certificate2204valid
theorem secondValid625 : DerivedMapBatches.Batch027.certificate2205.Valid := DerivedMapBatches.Batch027.certificate2205valid
theorem outputValid625 : DerivedMapBatches.Batch027.certificate2206.Valid := DerivedMapBatches.Batch027.certificate2206valid
theorem linkedComposition625 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2206.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2206.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2205.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2204.algebra.mat x) := by
  rw [firstLink625, secondLink625]
  exact DerivedMapBatches.Batch027.certificate2206valid.2 x
theorem firstLink626 : DerivedMapBatches.Batch026.certificate2119.c = DerivedMapBatches.Batch027.certificate2208.a := by decide
theorem secondLink626 : DerivedMapBatches.Batch027.certificate2207.algebra.mat = DerivedMapBatches.Batch027.certificate2208.b := by decide
theorem firstValid626 : DerivedMapBatches.Batch026.certificate2119.Valid := DerivedMapBatches.Batch026.certificate2119valid
theorem secondValid626 : DerivedMapBatches.Batch027.certificate2207.Valid := DerivedMapBatches.Batch027.certificate2207valid
theorem outputValid626 : DerivedMapBatches.Batch027.certificate2208.Valid := DerivedMapBatches.Batch027.certificate2208valid
theorem linkedComposition626 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2208.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2208.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2207.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2119.c x) := by
  rw [firstLink626, secondLink626]
  exact DerivedMapBatches.Batch027.certificate2208valid.2 x
theorem firstLink627 : DerivedMapBatches.Batch026.certificate2122.c = DerivedMapBatches.Batch027.certificate2210.a := by decide
theorem secondLink627 : DerivedMapBatches.Batch027.certificate2209.algebra.mat = DerivedMapBatches.Batch027.certificate2210.b := by decide
theorem firstValid627 : DerivedMapBatches.Batch026.certificate2122.Valid := DerivedMapBatches.Batch026.certificate2122valid
theorem secondValid627 : DerivedMapBatches.Batch027.certificate2209.Valid := DerivedMapBatches.Batch027.certificate2209valid
theorem outputValid627 : DerivedMapBatches.Batch027.certificate2210.Valid := DerivedMapBatches.Batch027.certificate2210valid
theorem linkedComposition627 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2210.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2210.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2209.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2122.c x) := by
  rw [firstLink627, secondLink627]
  exact DerivedMapBatches.Batch027.certificate2210valid.2 x
theorem firstLink628 : DerivedMapBatches.Batch026.certificate2125.c = DerivedMapBatches.Batch027.certificate2212.a := by decide
theorem secondLink628 : DerivedMapBatches.Batch027.certificate2211.algebra.mat = DerivedMapBatches.Batch027.certificate2212.b := by decide
theorem firstValid628 : DerivedMapBatches.Batch026.certificate2125.Valid := DerivedMapBatches.Batch026.certificate2125valid
theorem secondValid628 : DerivedMapBatches.Batch027.certificate2211.Valid := DerivedMapBatches.Batch027.certificate2211valid
theorem outputValid628 : DerivedMapBatches.Batch027.certificate2212.Valid := DerivedMapBatches.Batch027.certificate2212valid
theorem linkedComposition628 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2212.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2212.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2211.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2125.c x) := by
  rw [firstLink628, secondLink628]
  exact DerivedMapBatches.Batch027.certificate2212valid.2 x
theorem firstLink629 : DerivedMapBatches.Batch026.certificate2128.c = DerivedMapBatches.Batch027.certificate2214.a := by decide
theorem secondLink629 : DerivedMapBatches.Batch027.certificate2213.algebra.mat = DerivedMapBatches.Batch027.certificate2214.b := by decide
theorem firstValid629 : DerivedMapBatches.Batch026.certificate2128.Valid := DerivedMapBatches.Batch026.certificate2128valid
theorem secondValid629 : DerivedMapBatches.Batch027.certificate2213.Valid := DerivedMapBatches.Batch027.certificate2213valid
theorem outputValid629 : DerivedMapBatches.Batch027.certificate2214.Valid := DerivedMapBatches.Batch027.certificate2214valid
theorem linkedComposition629 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2214.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2214.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2213.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2128.c x) := by
  rw [firstLink629, secondLink629]
  exact DerivedMapBatches.Batch027.certificate2214valid.2 x
theorem firstLink630 : DerivedMapBatches.Batch026.certificate2131.c = DerivedMapBatches.Batch027.certificate2216.a := by decide
theorem secondLink630 : DerivedMapBatches.Batch027.certificate2215.algebra.mat = DerivedMapBatches.Batch027.certificate2216.b := by decide
theorem firstValid630 : DerivedMapBatches.Batch026.certificate2131.Valid := DerivedMapBatches.Batch026.certificate2131valid
theorem secondValid630 : DerivedMapBatches.Batch027.certificate2215.Valid := DerivedMapBatches.Batch027.certificate2215valid
theorem outputValid630 : DerivedMapBatches.Batch027.certificate2216.Valid := DerivedMapBatches.Batch027.certificate2216valid
theorem linkedComposition630 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2216.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2216.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2215.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2131.c x) := by
  rw [firstLink630, secondLink630]
  exact DerivedMapBatches.Batch027.certificate2216valid.2 x
theorem firstLink631 : DerivedMapBatches.Batch026.certificate2134.c = DerivedMapBatches.Batch027.certificate2218.a := by decide
theorem secondLink631 : DerivedMapBatches.Batch027.certificate2217.algebra.mat = DerivedMapBatches.Batch027.certificate2218.b := by decide
theorem firstValid631 : DerivedMapBatches.Batch026.certificate2134.Valid := DerivedMapBatches.Batch026.certificate2134valid
theorem secondValid631 : DerivedMapBatches.Batch027.certificate2217.Valid := DerivedMapBatches.Batch027.certificate2217valid
theorem outputValid631 : DerivedMapBatches.Batch027.certificate2218.Valid := DerivedMapBatches.Batch027.certificate2218valid
theorem linkedComposition631 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2218.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2218.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2217.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2134.c x) := by
  rw [firstLink631, secondLink631]
  exact DerivedMapBatches.Batch027.certificate2218valid.2 x
theorem firstLink632 : DerivedMapBatches.Batch026.certificate2137.c = DerivedMapBatches.Batch027.certificate2220.a := by decide
theorem secondLink632 : DerivedMapBatches.Batch027.certificate2219.algebra.mat = DerivedMapBatches.Batch027.certificate2220.b := by decide
theorem firstValid632 : DerivedMapBatches.Batch026.certificate2137.Valid := DerivedMapBatches.Batch026.certificate2137valid
theorem secondValid632 : DerivedMapBatches.Batch027.certificate2219.Valid := DerivedMapBatches.Batch027.certificate2219valid
theorem outputValid632 : DerivedMapBatches.Batch027.certificate2220.Valid := DerivedMapBatches.Batch027.certificate2220valid
theorem linkedComposition632 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2220.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2220.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2219.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2137.c x) := by
  rw [firstLink632, secondLink632]
  exact DerivedMapBatches.Batch027.certificate2220valid.2 x
theorem firstLink633 : DerivedMapBatches.Batch026.certificate2140.c = DerivedMapBatches.Batch027.certificate2222.a := by decide
theorem secondLink633 : DerivedMapBatches.Batch027.certificate2221.algebra.mat = DerivedMapBatches.Batch027.certificate2222.b := by decide
theorem firstValid633 : DerivedMapBatches.Batch026.certificate2140.Valid := DerivedMapBatches.Batch026.certificate2140valid
theorem secondValid633 : DerivedMapBatches.Batch027.certificate2221.Valid := DerivedMapBatches.Batch027.certificate2221valid
theorem outputValid633 : DerivedMapBatches.Batch027.certificate2222.Valid := DerivedMapBatches.Batch027.certificate2222valid
theorem linkedComposition633 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2222.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2222.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2221.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2140.c x) := by
  rw [firstLink633, secondLink633]
  exact DerivedMapBatches.Batch027.certificate2222valid.2 x
theorem firstLink634 : DerivedMapBatches.Batch026.certificate2143.c = DerivedMapBatches.Batch027.certificate2224.a := by decide
theorem secondLink634 : DerivedMapBatches.Batch027.certificate2223.algebra.mat = DerivedMapBatches.Batch027.certificate2224.b := by decide
theorem firstValid634 : DerivedMapBatches.Batch026.certificate2143.Valid := DerivedMapBatches.Batch026.certificate2143valid
theorem secondValid634 : DerivedMapBatches.Batch027.certificate2223.Valid := DerivedMapBatches.Batch027.certificate2223valid
theorem outputValid634 : DerivedMapBatches.Batch027.certificate2224.Valid := DerivedMapBatches.Batch027.certificate2224valid
theorem linkedComposition634 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2224.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2224.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2223.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2143.c x) := by
  rw [firstLink634, secondLink634]
  exact DerivedMapBatches.Batch027.certificate2224valid.2 x
theorem firstLink635 : DerivedMapBatches.Batch026.certificate2146.c = DerivedMapBatches.Batch027.certificate2226.a := by decide
theorem secondLink635 : DerivedMapBatches.Batch027.certificate2225.algebra.mat = DerivedMapBatches.Batch027.certificate2226.b := by decide
theorem firstValid635 : DerivedMapBatches.Batch026.certificate2146.Valid := DerivedMapBatches.Batch026.certificate2146valid
theorem secondValid635 : DerivedMapBatches.Batch027.certificate2225.Valid := DerivedMapBatches.Batch027.certificate2225valid
theorem outputValid635 : DerivedMapBatches.Batch027.certificate2226.Valid := DerivedMapBatches.Batch027.certificate2226valid
theorem linkedComposition635 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2226.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2226.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2225.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2146.c x) := by
  rw [firstLink635, secondLink635]
  exact DerivedMapBatches.Batch027.certificate2226valid.2 x
theorem firstLink636 : DerivedMapBatches.Batch026.certificate2149.c = DerivedMapBatches.Batch027.certificate2228.a := by decide
theorem secondLink636 : DerivedMapBatches.Batch027.certificate2227.algebra.mat = DerivedMapBatches.Batch027.certificate2228.b := by decide
theorem firstValid636 : DerivedMapBatches.Batch026.certificate2149.Valid := DerivedMapBatches.Batch026.certificate2149valid
theorem secondValid636 : DerivedMapBatches.Batch027.certificate2227.Valid := DerivedMapBatches.Batch027.certificate2227valid
theorem outputValid636 : DerivedMapBatches.Batch027.certificate2228.Valid := DerivedMapBatches.Batch027.certificate2228valid
theorem linkedComposition636 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2228.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2228.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2227.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2149.c x) := by
  rw [firstLink636, secondLink636]
  exact DerivedMapBatches.Batch027.certificate2228valid.2 x
theorem firstLink637 : DerivedMapBatches.Batch026.certificate2152.c = DerivedMapBatches.Batch027.certificate2230.a := by decide
theorem secondLink637 : DerivedMapBatches.Batch027.certificate2229.algebra.mat = DerivedMapBatches.Batch027.certificate2230.b := by decide
theorem firstValid637 : DerivedMapBatches.Batch026.certificate2152.Valid := DerivedMapBatches.Batch026.certificate2152valid
theorem secondValid637 : DerivedMapBatches.Batch027.certificate2229.Valid := DerivedMapBatches.Batch027.certificate2229valid
theorem outputValid637 : DerivedMapBatches.Batch027.certificate2230.Valid := DerivedMapBatches.Batch027.certificate2230valid
theorem linkedComposition637 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2230.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2230.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2229.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2152.c x) := by
  rw [firstLink637, secondLink637]
  exact DerivedMapBatches.Batch027.certificate2230valid.2 x
theorem firstLink638 : DerivedMapBatches.Batch026.certificate2155.c = DerivedMapBatches.Batch027.certificate2232.a := by decide
theorem secondLink638 : DerivedMapBatches.Batch027.certificate2231.algebra.mat = DerivedMapBatches.Batch027.certificate2232.b := by decide
theorem firstValid638 : DerivedMapBatches.Batch026.certificate2155.Valid := DerivedMapBatches.Batch026.certificate2155valid
theorem secondValid638 : DerivedMapBatches.Batch027.certificate2231.Valid := DerivedMapBatches.Batch027.certificate2231valid
theorem outputValid638 : DerivedMapBatches.Batch027.certificate2232.Valid := DerivedMapBatches.Batch027.certificate2232valid
theorem linkedComposition638 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2232.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2232.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2231.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2155.c x) := by
  rw [firstLink638, secondLink638]
  exact DerivedMapBatches.Batch027.certificate2232valid.2 x
theorem firstLink639 : DerivedMapBatches.Batch026.certificate2158.c = DerivedMapBatches.Batch027.certificate2234.a := by decide
theorem secondLink639 : DerivedMapBatches.Batch027.certificate2233.algebra.mat = DerivedMapBatches.Batch027.certificate2234.b := by decide
theorem firstValid639 : DerivedMapBatches.Batch026.certificate2158.Valid := DerivedMapBatches.Batch026.certificate2158valid
theorem secondValid639 : DerivedMapBatches.Batch027.certificate2233.Valid := DerivedMapBatches.Batch027.certificate2233valid
theorem outputValid639 : DerivedMapBatches.Batch027.certificate2234.Valid := DerivedMapBatches.Batch027.certificate2234valid
theorem linkedComposition639 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2234.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2234.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2233.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch026.certificate2158.c x) := by
  rw [firstLink639, secondLink639]
  exact DerivedMapBatches.Batch027.certificate2234valid.2 x
theorem firstLink640 : DerivedMapBatches.Batch027.certificate2161.c = DerivedMapBatches.Batch027.certificate2236.a := by decide
theorem secondLink640 : DerivedMapBatches.Batch027.certificate2235.algebra.mat = DerivedMapBatches.Batch027.certificate2236.b := by decide
theorem firstValid640 : DerivedMapBatches.Batch027.certificate2161.Valid := DerivedMapBatches.Batch027.certificate2161valid
theorem secondValid640 : DerivedMapBatches.Batch027.certificate2235.Valid := DerivedMapBatches.Batch027.certificate2235valid
theorem outputValid640 : DerivedMapBatches.Batch027.certificate2236.Valid := DerivedMapBatches.Batch027.certificate2236valid
theorem linkedComposition640 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2236.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2236.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2235.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2161.c x) := by
  rw [firstLink640, secondLink640]
  exact DerivedMapBatches.Batch027.certificate2236valid.2 x
theorem firstLink641 : DerivedMapBatches.Batch027.certificate2164.c = DerivedMapBatches.Batch027.certificate2238.a := by decide
theorem secondLink641 : DerivedMapBatches.Batch027.certificate2237.algebra.mat = DerivedMapBatches.Batch027.certificate2238.b := by decide
theorem firstValid641 : DerivedMapBatches.Batch027.certificate2164.Valid := DerivedMapBatches.Batch027.certificate2164valid
theorem secondValid641 : DerivedMapBatches.Batch027.certificate2237.Valid := DerivedMapBatches.Batch027.certificate2237valid
theorem outputValid641 : DerivedMapBatches.Batch027.certificate2238.Valid := DerivedMapBatches.Batch027.certificate2238valid
theorem linkedComposition641 (x : LinearCertificates.Vec DerivedMapBatches.Batch027.certificate2238.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch027.certificate2238.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2237.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2164.c x) := by
  rw [firstLink641, secondLink641]
  exact DerivedMapBatches.Batch027.certificate2238valid.2 x
theorem firstLink642 : DerivedMapBatches.Batch027.certificate2167.c = DerivedMapBatches.Batch028.certificate2240.a := by decide
theorem secondLink642 : DerivedMapBatches.Batch027.certificate2239.algebra.mat = DerivedMapBatches.Batch028.certificate2240.b := by decide
theorem firstValid642 : DerivedMapBatches.Batch027.certificate2167.Valid := DerivedMapBatches.Batch027.certificate2167valid
theorem secondValid642 : DerivedMapBatches.Batch027.certificate2239.Valid := DerivedMapBatches.Batch027.certificate2239valid
theorem outputValid642 : DerivedMapBatches.Batch028.certificate2240.Valid := DerivedMapBatches.Batch028.certificate2240valid
theorem linkedComposition642 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2240.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2240.c x = LinearCertificates.eval DerivedMapBatches.Batch027.certificate2239.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2167.c x) := by
  rw [firstLink642, secondLink642]
  exact DerivedMapBatches.Batch028.certificate2240valid.2 x
theorem firstLink643 : DerivedMapBatches.Batch027.certificate2170.c = DerivedMapBatches.Batch028.certificate2242.a := by decide
theorem secondLink643 : DerivedMapBatches.Batch028.certificate2241.algebra.mat = DerivedMapBatches.Batch028.certificate2242.b := by decide
theorem firstValid643 : DerivedMapBatches.Batch027.certificate2170.Valid := DerivedMapBatches.Batch027.certificate2170valid
theorem secondValid643 : DerivedMapBatches.Batch028.certificate2241.Valid := DerivedMapBatches.Batch028.certificate2241valid
theorem outputValid643 : DerivedMapBatches.Batch028.certificate2242.Valid := DerivedMapBatches.Batch028.certificate2242valid
theorem linkedComposition643 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2242.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2242.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2241.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2170.c x) := by
  rw [firstLink643, secondLink643]
  exact DerivedMapBatches.Batch028.certificate2242valid.2 x
theorem firstLink644 : DerivedMapBatches.Batch027.certificate2173.c = DerivedMapBatches.Batch028.certificate2244.a := by decide
theorem secondLink644 : DerivedMapBatches.Batch028.certificate2243.algebra.mat = DerivedMapBatches.Batch028.certificate2244.b := by decide
theorem firstValid644 : DerivedMapBatches.Batch027.certificate2173.Valid := DerivedMapBatches.Batch027.certificate2173valid
theorem secondValid644 : DerivedMapBatches.Batch028.certificate2243.Valid := DerivedMapBatches.Batch028.certificate2243valid
theorem outputValid644 : DerivedMapBatches.Batch028.certificate2244.Valid := DerivedMapBatches.Batch028.certificate2244valid
theorem linkedComposition644 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2244.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2244.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2243.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2173.c x) := by
  rw [firstLink644, secondLink644]
  exact DerivedMapBatches.Batch028.certificate2244valid.2 x
theorem firstLink645 : DerivedMapBatches.Batch027.certificate2176.c = DerivedMapBatches.Batch028.certificate2246.a := by decide
theorem secondLink645 : DerivedMapBatches.Batch028.certificate2245.algebra.mat = DerivedMapBatches.Batch028.certificate2246.b := by decide
theorem firstValid645 : DerivedMapBatches.Batch027.certificate2176.Valid := DerivedMapBatches.Batch027.certificate2176valid
theorem secondValid645 : DerivedMapBatches.Batch028.certificate2245.Valid := DerivedMapBatches.Batch028.certificate2245valid
theorem outputValid645 : DerivedMapBatches.Batch028.certificate2246.Valid := DerivedMapBatches.Batch028.certificate2246valid
theorem linkedComposition645 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2246.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2246.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2245.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2176.c x) := by
  rw [firstLink645, secondLink645]
  exact DerivedMapBatches.Batch028.certificate2246valid.2 x
theorem firstLink646 : DerivedMapBatches.Batch027.certificate2179.c = DerivedMapBatches.Batch028.certificate2248.a := by decide
theorem secondLink646 : DerivedMapBatches.Batch028.certificate2247.algebra.mat = DerivedMapBatches.Batch028.certificate2248.b := by decide
theorem firstValid646 : DerivedMapBatches.Batch027.certificate2179.Valid := DerivedMapBatches.Batch027.certificate2179valid
theorem secondValid646 : DerivedMapBatches.Batch028.certificate2247.Valid := DerivedMapBatches.Batch028.certificate2247valid
theorem outputValid646 : DerivedMapBatches.Batch028.certificate2248.Valid := DerivedMapBatches.Batch028.certificate2248valid
theorem linkedComposition646 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2248.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2248.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2247.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2179.c x) := by
  rw [firstLink646, secondLink646]
  exact DerivedMapBatches.Batch028.certificate2248valid.2 x
theorem firstLink647 : DerivedMapBatches.Batch027.certificate2182.c = DerivedMapBatches.Batch028.certificate2250.a := by decide
theorem secondLink647 : DerivedMapBatches.Batch028.certificate2249.algebra.mat = DerivedMapBatches.Batch028.certificate2250.b := by decide
theorem firstValid647 : DerivedMapBatches.Batch027.certificate2182.Valid := DerivedMapBatches.Batch027.certificate2182valid
theorem secondValid647 : DerivedMapBatches.Batch028.certificate2249.Valid := DerivedMapBatches.Batch028.certificate2249valid
theorem outputValid647 : DerivedMapBatches.Batch028.certificate2250.Valid := DerivedMapBatches.Batch028.certificate2250valid
theorem linkedComposition647 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2250.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2250.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2249.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2182.c x) := by
  rw [firstLink647, secondLink647]
  exact DerivedMapBatches.Batch028.certificate2250valid.2 x
theorem firstLink648 : DerivedMapBatches.Batch027.certificate2185.c = DerivedMapBatches.Batch028.certificate2252.a := by decide
theorem secondLink648 : DerivedMapBatches.Batch028.certificate2251.algebra.mat = DerivedMapBatches.Batch028.certificate2252.b := by decide
theorem firstValid648 : DerivedMapBatches.Batch027.certificate2185.Valid := DerivedMapBatches.Batch027.certificate2185valid
theorem secondValid648 : DerivedMapBatches.Batch028.certificate2251.Valid := DerivedMapBatches.Batch028.certificate2251valid
theorem outputValid648 : DerivedMapBatches.Batch028.certificate2252.Valid := DerivedMapBatches.Batch028.certificate2252valid
theorem linkedComposition648 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2252.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2252.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2251.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2185.c x) := by
  rw [firstLink648, secondLink648]
  exact DerivedMapBatches.Batch028.certificate2252valid.2 x
theorem firstLink649 : DerivedMapBatches.Batch027.certificate2188.c = DerivedMapBatches.Batch028.certificate2254.a := by decide
theorem secondLink649 : DerivedMapBatches.Batch028.certificate2253.algebra.mat = DerivedMapBatches.Batch028.certificate2254.b := by decide
theorem firstValid649 : DerivedMapBatches.Batch027.certificate2188.Valid := DerivedMapBatches.Batch027.certificate2188valid
theorem secondValid649 : DerivedMapBatches.Batch028.certificate2253.Valid := DerivedMapBatches.Batch028.certificate2253valid
theorem outputValid649 : DerivedMapBatches.Batch028.certificate2254.Valid := DerivedMapBatches.Batch028.certificate2254valid
theorem linkedComposition649 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2254.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2254.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2253.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2188.c x) := by
  rw [firstLink649, secondLink649]
  exact DerivedMapBatches.Batch028.certificate2254valid.2 x
end DerivedLinkageBatches.Batch012
