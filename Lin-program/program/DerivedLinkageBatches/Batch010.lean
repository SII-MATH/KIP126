import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch010
import DerivedMapBatches.Batch023
import DerivedMapBatches.Batch024
import DerivedMapBatches.Batch025
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch010
theorem firstLink500 : DerivedMapBatches.Batch023.certificate1875.algebra.mat = DerivedMapBatches.Batch023.certificate1879.a := by decide
theorem secondLink500 : DerivedMapBatches.Batch023.certificate1878.c = DerivedMapBatches.Batch023.certificate1879.b := by decide
theorem firstValid500 : DerivedMapBatches.Batch023.certificate1875.Valid := DerivedMapBatches.Batch023.certificate1875valid
theorem secondValid500 : DerivedMapBatches.Batch023.certificate1878.Valid := DerivedMapBatches.Batch023.certificate1878valid
theorem outputValid500 : DerivedMapBatches.Batch023.certificate1879.Valid := DerivedMapBatches.Batch023.certificate1879valid
theorem linkedComposition500 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1879.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1879.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1878.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1875.algebra.mat x) := by
  rw [firstLink500, secondLink500]
  exact DerivedMapBatches.Batch023.certificate1879valid.2 x
theorem firstLink501 : DerivedMapBatches.Batch023.certificate1881.algebra.mat = DerivedMapBatches.Batch023.certificate1882.a := by decide
theorem secondLink501 : DerivedMapBatches.Batch010.certificate837.algebra.mat = DerivedMapBatches.Batch023.certificate1882.b := by decide
theorem firstValid501 : DerivedMapBatches.Batch023.certificate1881.Valid := DerivedMapBatches.Batch023.certificate1881valid
theorem secondValid501 : DerivedMapBatches.Batch010.certificate837.Valid := DerivedMapBatches.Batch010.certificate837valid
theorem outputValid501 : DerivedMapBatches.Batch023.certificate1882.Valid := DerivedMapBatches.Batch023.certificate1882valid
theorem linkedComposition501 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1882.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1882.c x = LinearCertificates.eval DerivedMapBatches.Batch010.certificate837.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1881.algebra.mat x) := by
  rw [firstLink501, secondLink501]
  exact DerivedMapBatches.Batch023.certificate1882valid.2 x
theorem firstLink502 : DerivedMapBatches.Batch023.certificate1880.algebra.mat = DerivedMapBatches.Batch023.certificate1883.a := by decide
theorem secondLink502 : DerivedMapBatches.Batch023.certificate1882.c = DerivedMapBatches.Batch023.certificate1883.b := by decide
theorem firstValid502 : DerivedMapBatches.Batch023.certificate1880.Valid := DerivedMapBatches.Batch023.certificate1880valid
theorem secondValid502 : DerivedMapBatches.Batch023.certificate1882.Valid := DerivedMapBatches.Batch023.certificate1882valid
theorem outputValid502 : DerivedMapBatches.Batch023.certificate1883.Valid := DerivedMapBatches.Batch023.certificate1883valid
theorem linkedComposition502 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1883.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1883.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1882.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1880.algebra.mat x) := by
  rw [firstLink502, secondLink502]
  exact DerivedMapBatches.Batch023.certificate1883valid.2 x
theorem firstLink503 : DerivedMapBatches.Batch023.certificate1885.algebra.mat = DerivedMapBatches.Batch023.certificate1887.a := by decide
theorem secondLink503 : DerivedMapBatches.Batch023.certificate1886.algebra.mat = DerivedMapBatches.Batch023.certificate1887.b := by decide
theorem firstValid503 : DerivedMapBatches.Batch023.certificate1885.Valid := DerivedMapBatches.Batch023.certificate1885valid
theorem secondValid503 : DerivedMapBatches.Batch023.certificate1886.Valid := DerivedMapBatches.Batch023.certificate1886valid
theorem outputValid503 : DerivedMapBatches.Batch023.certificate1887.Valid := DerivedMapBatches.Batch023.certificate1887valid
theorem linkedComposition503 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1887.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1887.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1886.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1885.algebra.mat x) := by
  rw [firstLink503, secondLink503]
  exact DerivedMapBatches.Batch023.certificate1887valid.2 x
theorem firstLink504 : DerivedMapBatches.Batch023.certificate1884.algebra.mat = DerivedMapBatches.Batch023.certificate1888.a := by decide
theorem secondLink504 : DerivedMapBatches.Batch023.certificate1887.c = DerivedMapBatches.Batch023.certificate1888.b := by decide
theorem firstValid504 : DerivedMapBatches.Batch023.certificate1884.Valid := DerivedMapBatches.Batch023.certificate1884valid
theorem secondValid504 : DerivedMapBatches.Batch023.certificate1887.Valid := DerivedMapBatches.Batch023.certificate1887valid
theorem outputValid504 : DerivedMapBatches.Batch023.certificate1888.Valid := DerivedMapBatches.Batch023.certificate1888valid
theorem linkedComposition504 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1888.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1888.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1887.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1884.algebra.mat x) := by
  rw [firstLink504, secondLink504]
  exact DerivedMapBatches.Batch023.certificate1888valid.2 x
theorem firstLink505 : DerivedMapBatches.Batch023.certificate1890.algebra.mat = DerivedMapBatches.Batch023.certificate1892.a := by decide
theorem secondLink505 : DerivedMapBatches.Batch023.certificate1891.algebra.mat = DerivedMapBatches.Batch023.certificate1892.b := by decide
theorem firstValid505 : DerivedMapBatches.Batch023.certificate1890.Valid := DerivedMapBatches.Batch023.certificate1890valid
theorem secondValid505 : DerivedMapBatches.Batch023.certificate1891.Valid := DerivedMapBatches.Batch023.certificate1891valid
theorem outputValid505 : DerivedMapBatches.Batch023.certificate1892.Valid := DerivedMapBatches.Batch023.certificate1892valid
theorem linkedComposition505 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1892.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1892.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1891.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1890.algebra.mat x) := by
  rw [firstLink505, secondLink505]
  exact DerivedMapBatches.Batch023.certificate1892valid.2 x
theorem firstLink506 : DerivedMapBatches.Batch023.certificate1889.algebra.mat = DerivedMapBatches.Batch023.certificate1893.a := by decide
theorem secondLink506 : DerivedMapBatches.Batch023.certificate1892.c = DerivedMapBatches.Batch023.certificate1893.b := by decide
theorem firstValid506 : DerivedMapBatches.Batch023.certificate1889.Valid := DerivedMapBatches.Batch023.certificate1889valid
theorem secondValid506 : DerivedMapBatches.Batch023.certificate1892.Valid := DerivedMapBatches.Batch023.certificate1892valid
theorem outputValid506 : DerivedMapBatches.Batch023.certificate1893.Valid := DerivedMapBatches.Batch023.certificate1893valid
theorem linkedComposition506 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1893.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1893.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1892.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1889.algebra.mat x) := by
  rw [firstLink506, secondLink506]
  exact DerivedMapBatches.Batch023.certificate1893valid.2 x
theorem firstLink507 : DerivedMapBatches.Batch023.certificate1895.algebra.mat = DerivedMapBatches.Batch023.certificate1897.a := by decide
theorem secondLink507 : DerivedMapBatches.Batch023.certificate1896.algebra.mat = DerivedMapBatches.Batch023.certificate1897.b := by decide
theorem firstValid507 : DerivedMapBatches.Batch023.certificate1895.Valid := DerivedMapBatches.Batch023.certificate1895valid
theorem secondValid507 : DerivedMapBatches.Batch023.certificate1896.Valid := DerivedMapBatches.Batch023.certificate1896valid
theorem outputValid507 : DerivedMapBatches.Batch023.certificate1897.Valid := DerivedMapBatches.Batch023.certificate1897valid
theorem linkedComposition507 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1897.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1897.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1896.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1895.algebra.mat x) := by
  rw [firstLink507, secondLink507]
  exact DerivedMapBatches.Batch023.certificate1897valid.2 x
theorem firstLink508 : DerivedMapBatches.Batch023.certificate1894.algebra.mat = DerivedMapBatches.Batch023.certificate1898.a := by decide
theorem secondLink508 : DerivedMapBatches.Batch023.certificate1897.c = DerivedMapBatches.Batch023.certificate1898.b := by decide
theorem firstValid508 : DerivedMapBatches.Batch023.certificate1894.Valid := DerivedMapBatches.Batch023.certificate1894valid
theorem secondValid508 : DerivedMapBatches.Batch023.certificate1897.Valid := DerivedMapBatches.Batch023.certificate1897valid
theorem outputValid508 : DerivedMapBatches.Batch023.certificate1898.Valid := DerivedMapBatches.Batch023.certificate1898valid
theorem linkedComposition508 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1898.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1898.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1897.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1894.algebra.mat x) := by
  rw [firstLink508, secondLink508]
  exact DerivedMapBatches.Batch023.certificate1898valid.2 x
theorem firstLink509 : DerivedMapBatches.Batch023.certificate1900.algebra.mat = DerivedMapBatches.Batch023.certificate1902.a := by decide
theorem secondLink509 : DerivedMapBatches.Batch023.certificate1901.algebra.mat = DerivedMapBatches.Batch023.certificate1902.b := by decide
theorem firstValid509 : DerivedMapBatches.Batch023.certificate1900.Valid := DerivedMapBatches.Batch023.certificate1900valid
theorem secondValid509 : DerivedMapBatches.Batch023.certificate1901.Valid := DerivedMapBatches.Batch023.certificate1901valid
theorem outputValid509 : DerivedMapBatches.Batch023.certificate1902.Valid := DerivedMapBatches.Batch023.certificate1902valid
theorem linkedComposition509 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1902.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1902.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1901.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1900.algebra.mat x) := by
  rw [firstLink509, secondLink509]
  exact DerivedMapBatches.Batch023.certificate1902valid.2 x
theorem firstLink510 : DerivedMapBatches.Batch023.certificate1899.algebra.mat = DerivedMapBatches.Batch023.certificate1903.a := by decide
theorem secondLink510 : DerivedMapBatches.Batch023.certificate1902.c = DerivedMapBatches.Batch023.certificate1903.b := by decide
theorem firstValid510 : DerivedMapBatches.Batch023.certificate1899.Valid := DerivedMapBatches.Batch023.certificate1899valid
theorem secondValid510 : DerivedMapBatches.Batch023.certificate1902.Valid := DerivedMapBatches.Batch023.certificate1902valid
theorem outputValid510 : DerivedMapBatches.Batch023.certificate1903.Valid := DerivedMapBatches.Batch023.certificate1903valid
theorem linkedComposition510 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1903.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1903.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1902.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1899.algebra.mat x) := by
  rw [firstLink510, secondLink510]
  exact DerivedMapBatches.Batch023.certificate1903valid.2 x
theorem firstLink511 : DerivedMapBatches.Batch023.certificate1905.algebra.mat = DerivedMapBatches.Batch023.certificate1907.a := by decide
theorem secondLink511 : DerivedMapBatches.Batch023.certificate1906.algebra.mat = DerivedMapBatches.Batch023.certificate1907.b := by decide
theorem firstValid511 : DerivedMapBatches.Batch023.certificate1905.Valid := DerivedMapBatches.Batch023.certificate1905valid
theorem secondValid511 : DerivedMapBatches.Batch023.certificate1906.Valid := DerivedMapBatches.Batch023.certificate1906valid
theorem outputValid511 : DerivedMapBatches.Batch023.certificate1907.Valid := DerivedMapBatches.Batch023.certificate1907valid
theorem linkedComposition511 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1907.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1907.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1906.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1905.algebra.mat x) := by
  rw [firstLink511, secondLink511]
  exact DerivedMapBatches.Batch023.certificate1907valid.2 x
theorem firstLink512 : DerivedMapBatches.Batch023.certificate1904.algebra.mat = DerivedMapBatches.Batch023.certificate1908.a := by decide
theorem secondLink512 : DerivedMapBatches.Batch023.certificate1907.c = DerivedMapBatches.Batch023.certificate1908.b := by decide
theorem firstValid512 : DerivedMapBatches.Batch023.certificate1904.Valid := DerivedMapBatches.Batch023.certificate1904valid
theorem secondValid512 : DerivedMapBatches.Batch023.certificate1907.Valid := DerivedMapBatches.Batch023.certificate1907valid
theorem outputValid512 : DerivedMapBatches.Batch023.certificate1908.Valid := DerivedMapBatches.Batch023.certificate1908valid
theorem linkedComposition512 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1908.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1908.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1907.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1904.algebra.mat x) := by
  rw [firstLink512, secondLink512]
  exact DerivedMapBatches.Batch023.certificate1908valid.2 x
theorem firstLink513 : DerivedMapBatches.Batch023.certificate1910.algebra.mat = DerivedMapBatches.Batch023.certificate1912.a := by decide
theorem secondLink513 : DerivedMapBatches.Batch023.certificate1911.algebra.mat = DerivedMapBatches.Batch023.certificate1912.b := by decide
theorem firstValid513 : DerivedMapBatches.Batch023.certificate1910.Valid := DerivedMapBatches.Batch023.certificate1910valid
theorem secondValid513 : DerivedMapBatches.Batch023.certificate1911.Valid := DerivedMapBatches.Batch023.certificate1911valid
theorem outputValid513 : DerivedMapBatches.Batch023.certificate1912.Valid := DerivedMapBatches.Batch023.certificate1912valid
theorem linkedComposition513 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1912.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1912.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1911.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1910.algebra.mat x) := by
  rw [firstLink513, secondLink513]
  exact DerivedMapBatches.Batch023.certificate1912valid.2 x
theorem firstLink514 : DerivedMapBatches.Batch023.certificate1909.algebra.mat = DerivedMapBatches.Batch023.certificate1913.a := by decide
theorem secondLink514 : DerivedMapBatches.Batch023.certificate1912.c = DerivedMapBatches.Batch023.certificate1913.b := by decide
theorem firstValid514 : DerivedMapBatches.Batch023.certificate1909.Valid := DerivedMapBatches.Batch023.certificate1909valid
theorem secondValid514 : DerivedMapBatches.Batch023.certificate1912.Valid := DerivedMapBatches.Batch023.certificate1912valid
theorem outputValid514 : DerivedMapBatches.Batch023.certificate1913.Valid := DerivedMapBatches.Batch023.certificate1913valid
theorem linkedComposition514 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1913.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1913.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1912.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1909.algebra.mat x) := by
  rw [firstLink514, secondLink514]
  exact DerivedMapBatches.Batch023.certificate1913valid.2 x
theorem firstLink515 : DerivedMapBatches.Batch023.certificate1915.algebra.mat = DerivedMapBatches.Batch023.certificate1917.a := by decide
theorem secondLink515 : DerivedMapBatches.Batch023.certificate1916.algebra.mat = DerivedMapBatches.Batch023.certificate1917.b := by decide
theorem firstValid515 : DerivedMapBatches.Batch023.certificate1915.Valid := DerivedMapBatches.Batch023.certificate1915valid
theorem secondValid515 : DerivedMapBatches.Batch023.certificate1916.Valid := DerivedMapBatches.Batch023.certificate1916valid
theorem outputValid515 : DerivedMapBatches.Batch023.certificate1917.Valid := DerivedMapBatches.Batch023.certificate1917valid
theorem linkedComposition515 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1917.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1917.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1916.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1915.algebra.mat x) := by
  rw [firstLink515, secondLink515]
  exact DerivedMapBatches.Batch023.certificate1917valid.2 x
theorem firstLink516 : DerivedMapBatches.Batch023.certificate1914.algebra.mat = DerivedMapBatches.Batch023.certificate1918.a := by decide
theorem secondLink516 : DerivedMapBatches.Batch023.certificate1917.c = DerivedMapBatches.Batch023.certificate1918.b := by decide
theorem firstValid516 : DerivedMapBatches.Batch023.certificate1914.Valid := DerivedMapBatches.Batch023.certificate1914valid
theorem secondValid516 : DerivedMapBatches.Batch023.certificate1917.Valid := DerivedMapBatches.Batch023.certificate1917valid
theorem outputValid516 : DerivedMapBatches.Batch023.certificate1918.Valid := DerivedMapBatches.Batch023.certificate1918valid
theorem linkedComposition516 (x : LinearCertificates.Vec DerivedMapBatches.Batch023.certificate1918.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch023.certificate1918.c x = LinearCertificates.eval DerivedMapBatches.Batch023.certificate1917.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1914.algebra.mat x) := by
  rw [firstLink516, secondLink516]
  exact DerivedMapBatches.Batch023.certificate1918valid.2 x
theorem firstLink517 : DerivedMapBatches.Batch024.certificate1920.algebra.mat = DerivedMapBatches.Batch024.certificate1922.a := by decide
theorem secondLink517 : DerivedMapBatches.Batch024.certificate1921.algebra.mat = DerivedMapBatches.Batch024.certificate1922.b := by decide
theorem firstValid517 : DerivedMapBatches.Batch024.certificate1920.Valid := DerivedMapBatches.Batch024.certificate1920valid
theorem secondValid517 : DerivedMapBatches.Batch024.certificate1921.Valid := DerivedMapBatches.Batch024.certificate1921valid
theorem outputValid517 : DerivedMapBatches.Batch024.certificate1922.Valid := DerivedMapBatches.Batch024.certificate1922valid
theorem linkedComposition517 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1922.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1922.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1921.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1920.algebra.mat x) := by
  rw [firstLink517, secondLink517]
  exact DerivedMapBatches.Batch024.certificate1922valid.2 x
theorem firstLink518 : DerivedMapBatches.Batch023.certificate1919.algebra.mat = DerivedMapBatches.Batch024.certificate1923.a := by decide
theorem secondLink518 : DerivedMapBatches.Batch024.certificate1922.c = DerivedMapBatches.Batch024.certificate1923.b := by decide
theorem firstValid518 : DerivedMapBatches.Batch023.certificate1919.Valid := DerivedMapBatches.Batch023.certificate1919valid
theorem secondValid518 : DerivedMapBatches.Batch024.certificate1922.Valid := DerivedMapBatches.Batch024.certificate1922valid
theorem outputValid518 : DerivedMapBatches.Batch024.certificate1923.Valid := DerivedMapBatches.Batch024.certificate1923valid
theorem linkedComposition518 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1923.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1923.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1922.c (LinearCertificates.eval DerivedMapBatches.Batch023.certificate1919.algebra.mat x) := by
  rw [firstLink518, secondLink518]
  exact DerivedMapBatches.Batch024.certificate1923valid.2 x
theorem firstLink519 : DerivedMapBatches.Batch024.certificate1925.algebra.mat = DerivedMapBatches.Batch024.certificate1927.a := by decide
theorem secondLink519 : DerivedMapBatches.Batch024.certificate1926.algebra.mat = DerivedMapBatches.Batch024.certificate1927.b := by decide
theorem firstValid519 : DerivedMapBatches.Batch024.certificate1925.Valid := DerivedMapBatches.Batch024.certificate1925valid
theorem secondValid519 : DerivedMapBatches.Batch024.certificate1926.Valid := DerivedMapBatches.Batch024.certificate1926valid
theorem outputValid519 : DerivedMapBatches.Batch024.certificate1927.Valid := DerivedMapBatches.Batch024.certificate1927valid
theorem linkedComposition519 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1927.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1927.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1926.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1925.algebra.mat x) := by
  rw [firstLink519, secondLink519]
  exact DerivedMapBatches.Batch024.certificate1927valid.2 x
theorem firstLink520 : DerivedMapBatches.Batch024.certificate1924.algebra.mat = DerivedMapBatches.Batch024.certificate1928.a := by decide
theorem secondLink520 : DerivedMapBatches.Batch024.certificate1927.c = DerivedMapBatches.Batch024.certificate1928.b := by decide
theorem firstValid520 : DerivedMapBatches.Batch024.certificate1924.Valid := DerivedMapBatches.Batch024.certificate1924valid
theorem secondValid520 : DerivedMapBatches.Batch024.certificate1927.Valid := DerivedMapBatches.Batch024.certificate1927valid
theorem outputValid520 : DerivedMapBatches.Batch024.certificate1928.Valid := DerivedMapBatches.Batch024.certificate1928valid
theorem linkedComposition520 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1928.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1928.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1927.c (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1924.algebra.mat x) := by
  rw [firstLink520, secondLink520]
  exact DerivedMapBatches.Batch024.certificate1928valid.2 x
theorem firstLink521 : DerivedMapBatches.Batch024.certificate1929.algebra.mat = DerivedMapBatches.Batch024.certificate1931.a := by decide
theorem secondLink521 : DerivedMapBatches.Batch024.certificate1930.algebra.mat = DerivedMapBatches.Batch024.certificate1931.b := by decide
theorem firstValid521 : DerivedMapBatches.Batch024.certificate1929.Valid := DerivedMapBatches.Batch024.certificate1929valid
theorem secondValid521 : DerivedMapBatches.Batch024.certificate1930.Valid := DerivedMapBatches.Batch024.certificate1930valid
theorem outputValid521 : DerivedMapBatches.Batch024.certificate1931.Valid := DerivedMapBatches.Batch024.certificate1931valid
theorem linkedComposition521 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1931.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1931.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1930.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1929.algebra.mat x) := by
  rw [firstLink521, secondLink521]
  exact DerivedMapBatches.Batch024.certificate1931valid.2 x
theorem firstLink522 : DerivedMapBatches.Batch024.certificate1932.algebra.mat = DerivedMapBatches.Batch024.certificate1934.a := by decide
theorem secondLink522 : DerivedMapBatches.Batch024.certificate1933.algebra.mat = DerivedMapBatches.Batch024.certificate1934.b := by decide
theorem firstValid522 : DerivedMapBatches.Batch024.certificate1932.Valid := DerivedMapBatches.Batch024.certificate1932valid
theorem secondValid522 : DerivedMapBatches.Batch024.certificate1933.Valid := DerivedMapBatches.Batch024.certificate1933valid
theorem outputValid522 : DerivedMapBatches.Batch024.certificate1934.Valid := DerivedMapBatches.Batch024.certificate1934valid
theorem linkedComposition522 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1934.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1934.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1933.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1932.algebra.mat x) := by
  rw [firstLink522, secondLink522]
  exact DerivedMapBatches.Batch024.certificate1934valid.2 x
theorem firstLink523 : DerivedMapBatches.Batch024.certificate1935.algebra.mat = DerivedMapBatches.Batch024.certificate1937.a := by decide
theorem secondLink523 : DerivedMapBatches.Batch024.certificate1936.algebra.mat = DerivedMapBatches.Batch024.certificate1937.b := by decide
theorem firstValid523 : DerivedMapBatches.Batch024.certificate1935.Valid := DerivedMapBatches.Batch024.certificate1935valid
theorem secondValid523 : DerivedMapBatches.Batch024.certificate1936.Valid := DerivedMapBatches.Batch024.certificate1936valid
theorem outputValid523 : DerivedMapBatches.Batch024.certificate1937.Valid := DerivedMapBatches.Batch024.certificate1937valid
theorem linkedComposition523 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1937.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1937.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1936.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1935.algebra.mat x) := by
  rw [firstLink523, secondLink523]
  exact DerivedMapBatches.Batch024.certificate1937valid.2 x
theorem firstLink524 : DerivedMapBatches.Batch024.certificate1938.algebra.mat = DerivedMapBatches.Batch024.certificate1940.a := by decide
theorem secondLink524 : DerivedMapBatches.Batch024.certificate1939.algebra.mat = DerivedMapBatches.Batch024.certificate1940.b := by decide
theorem firstValid524 : DerivedMapBatches.Batch024.certificate1938.Valid := DerivedMapBatches.Batch024.certificate1938valid
theorem secondValid524 : DerivedMapBatches.Batch024.certificate1939.Valid := DerivedMapBatches.Batch024.certificate1939valid
theorem outputValid524 : DerivedMapBatches.Batch024.certificate1940.Valid := DerivedMapBatches.Batch024.certificate1940valid
theorem linkedComposition524 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1940.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1940.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1939.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1938.algebra.mat x) := by
  rw [firstLink524, secondLink524]
  exact DerivedMapBatches.Batch024.certificate1940valid.2 x
theorem firstLink525 : DerivedMapBatches.Batch024.certificate1941.algebra.mat = DerivedMapBatches.Batch024.certificate1943.a := by decide
theorem secondLink525 : DerivedMapBatches.Batch024.certificate1942.algebra.mat = DerivedMapBatches.Batch024.certificate1943.b := by decide
theorem firstValid525 : DerivedMapBatches.Batch024.certificate1941.Valid := DerivedMapBatches.Batch024.certificate1941valid
theorem secondValid525 : DerivedMapBatches.Batch024.certificate1942.Valid := DerivedMapBatches.Batch024.certificate1942valid
theorem outputValid525 : DerivedMapBatches.Batch024.certificate1943.Valid := DerivedMapBatches.Batch024.certificate1943valid
theorem linkedComposition525 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1943.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1943.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1942.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1941.algebra.mat x) := by
  rw [firstLink525, secondLink525]
  exact DerivedMapBatches.Batch024.certificate1943valid.2 x
theorem firstLink526 : DerivedMapBatches.Batch024.certificate1944.algebra.mat = DerivedMapBatches.Batch024.certificate1946.a := by decide
theorem secondLink526 : DerivedMapBatches.Batch024.certificate1945.algebra.mat = DerivedMapBatches.Batch024.certificate1946.b := by decide
theorem firstValid526 : DerivedMapBatches.Batch024.certificate1944.Valid := DerivedMapBatches.Batch024.certificate1944valid
theorem secondValid526 : DerivedMapBatches.Batch024.certificate1945.Valid := DerivedMapBatches.Batch024.certificate1945valid
theorem outputValid526 : DerivedMapBatches.Batch024.certificate1946.Valid := DerivedMapBatches.Batch024.certificate1946valid
theorem linkedComposition526 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1946.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1946.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1945.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1944.algebra.mat x) := by
  rw [firstLink526, secondLink526]
  exact DerivedMapBatches.Batch024.certificate1946valid.2 x
theorem firstLink527 : DerivedMapBatches.Batch024.certificate1947.algebra.mat = DerivedMapBatches.Batch024.certificate1949.a := by decide
theorem secondLink527 : DerivedMapBatches.Batch024.certificate1948.algebra.mat = DerivedMapBatches.Batch024.certificate1949.b := by decide
theorem firstValid527 : DerivedMapBatches.Batch024.certificate1947.Valid := DerivedMapBatches.Batch024.certificate1947valid
theorem secondValid527 : DerivedMapBatches.Batch024.certificate1948.Valid := DerivedMapBatches.Batch024.certificate1948valid
theorem outputValid527 : DerivedMapBatches.Batch024.certificate1949.Valid := DerivedMapBatches.Batch024.certificate1949valid
theorem linkedComposition527 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1949.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1949.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1948.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1947.algebra.mat x) := by
  rw [firstLink527, secondLink527]
  exact DerivedMapBatches.Batch024.certificate1949valid.2 x
theorem firstLink528 : DerivedMapBatches.Batch024.certificate1950.algebra.mat = DerivedMapBatches.Batch024.certificate1952.a := by decide
theorem secondLink528 : DerivedMapBatches.Batch024.certificate1951.algebra.mat = DerivedMapBatches.Batch024.certificate1952.b := by decide
theorem firstValid528 : DerivedMapBatches.Batch024.certificate1950.Valid := DerivedMapBatches.Batch024.certificate1950valid
theorem secondValid528 : DerivedMapBatches.Batch024.certificate1951.Valid := DerivedMapBatches.Batch024.certificate1951valid
theorem outputValid528 : DerivedMapBatches.Batch024.certificate1952.Valid := DerivedMapBatches.Batch024.certificate1952valid
theorem linkedComposition528 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1952.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1952.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1951.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1950.algebra.mat x) := by
  rw [firstLink528, secondLink528]
  exact DerivedMapBatches.Batch024.certificate1952valid.2 x
theorem firstLink529 : DerivedMapBatches.Batch024.certificate1953.algebra.mat = DerivedMapBatches.Batch024.certificate1955.a := by decide
theorem secondLink529 : DerivedMapBatches.Batch024.certificate1954.algebra.mat = DerivedMapBatches.Batch024.certificate1955.b := by decide
theorem firstValid529 : DerivedMapBatches.Batch024.certificate1953.Valid := DerivedMapBatches.Batch024.certificate1953valid
theorem secondValid529 : DerivedMapBatches.Batch024.certificate1954.Valid := DerivedMapBatches.Batch024.certificate1954valid
theorem outputValid529 : DerivedMapBatches.Batch024.certificate1955.Valid := DerivedMapBatches.Batch024.certificate1955valid
theorem linkedComposition529 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1955.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1955.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1954.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1953.algebra.mat x) := by
  rw [firstLink529, secondLink529]
  exact DerivedMapBatches.Batch024.certificate1955valid.2 x
theorem firstLink530 : DerivedMapBatches.Batch024.certificate1956.algebra.mat = DerivedMapBatches.Batch024.certificate1958.a := by decide
theorem secondLink530 : DerivedMapBatches.Batch024.certificate1957.algebra.mat = DerivedMapBatches.Batch024.certificate1958.b := by decide
theorem firstValid530 : DerivedMapBatches.Batch024.certificate1956.Valid := DerivedMapBatches.Batch024.certificate1956valid
theorem secondValid530 : DerivedMapBatches.Batch024.certificate1957.Valid := DerivedMapBatches.Batch024.certificate1957valid
theorem outputValid530 : DerivedMapBatches.Batch024.certificate1958.Valid := DerivedMapBatches.Batch024.certificate1958valid
theorem linkedComposition530 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1958.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1958.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1957.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1956.algebra.mat x) := by
  rw [firstLink530, secondLink530]
  exact DerivedMapBatches.Batch024.certificate1958valid.2 x
theorem firstLink531 : DerivedMapBatches.Batch024.certificate1959.algebra.mat = DerivedMapBatches.Batch024.certificate1961.a := by decide
theorem secondLink531 : DerivedMapBatches.Batch024.certificate1960.algebra.mat = DerivedMapBatches.Batch024.certificate1961.b := by decide
theorem firstValid531 : DerivedMapBatches.Batch024.certificate1959.Valid := DerivedMapBatches.Batch024.certificate1959valid
theorem secondValid531 : DerivedMapBatches.Batch024.certificate1960.Valid := DerivedMapBatches.Batch024.certificate1960valid
theorem outputValid531 : DerivedMapBatches.Batch024.certificate1961.Valid := DerivedMapBatches.Batch024.certificate1961valid
theorem linkedComposition531 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1961.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1961.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1960.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1959.algebra.mat x) := by
  rw [firstLink531, secondLink531]
  exact DerivedMapBatches.Batch024.certificate1961valid.2 x
theorem firstLink532 : DerivedMapBatches.Batch024.certificate1962.algebra.mat = DerivedMapBatches.Batch024.certificate1964.a := by decide
theorem secondLink532 : DerivedMapBatches.Batch024.certificate1963.algebra.mat = DerivedMapBatches.Batch024.certificate1964.b := by decide
theorem firstValid532 : DerivedMapBatches.Batch024.certificate1962.Valid := DerivedMapBatches.Batch024.certificate1962valid
theorem secondValid532 : DerivedMapBatches.Batch024.certificate1963.Valid := DerivedMapBatches.Batch024.certificate1963valid
theorem outputValid532 : DerivedMapBatches.Batch024.certificate1964.Valid := DerivedMapBatches.Batch024.certificate1964valid
theorem linkedComposition532 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1964.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1964.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1963.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1962.algebra.mat x) := by
  rw [firstLink532, secondLink532]
  exact DerivedMapBatches.Batch024.certificate1964valid.2 x
theorem firstLink533 : DerivedMapBatches.Batch024.certificate1965.algebra.mat = DerivedMapBatches.Batch024.certificate1967.a := by decide
theorem secondLink533 : DerivedMapBatches.Batch024.certificate1966.algebra.mat = DerivedMapBatches.Batch024.certificate1967.b := by decide
theorem firstValid533 : DerivedMapBatches.Batch024.certificate1965.Valid := DerivedMapBatches.Batch024.certificate1965valid
theorem secondValid533 : DerivedMapBatches.Batch024.certificate1966.Valid := DerivedMapBatches.Batch024.certificate1966valid
theorem outputValid533 : DerivedMapBatches.Batch024.certificate1967.Valid := DerivedMapBatches.Batch024.certificate1967valid
theorem linkedComposition533 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1967.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1967.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1966.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1965.algebra.mat x) := by
  rw [firstLink533, secondLink533]
  exact DerivedMapBatches.Batch024.certificate1967valid.2 x
theorem firstLink534 : DerivedMapBatches.Batch024.certificate1968.algebra.mat = DerivedMapBatches.Batch024.certificate1970.a := by decide
theorem secondLink534 : DerivedMapBatches.Batch024.certificate1969.algebra.mat = DerivedMapBatches.Batch024.certificate1970.b := by decide
theorem firstValid534 : DerivedMapBatches.Batch024.certificate1968.Valid := DerivedMapBatches.Batch024.certificate1968valid
theorem secondValid534 : DerivedMapBatches.Batch024.certificate1969.Valid := DerivedMapBatches.Batch024.certificate1969valid
theorem outputValid534 : DerivedMapBatches.Batch024.certificate1970.Valid := DerivedMapBatches.Batch024.certificate1970valid
theorem linkedComposition534 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1970.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1970.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1969.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1968.algebra.mat x) := by
  rw [firstLink534, secondLink534]
  exact DerivedMapBatches.Batch024.certificate1970valid.2 x
theorem firstLink535 : DerivedMapBatches.Batch024.certificate1971.algebra.mat = DerivedMapBatches.Batch024.certificate1973.a := by decide
theorem secondLink535 : DerivedMapBatches.Batch024.certificate1972.algebra.mat = DerivedMapBatches.Batch024.certificate1973.b := by decide
theorem firstValid535 : DerivedMapBatches.Batch024.certificate1971.Valid := DerivedMapBatches.Batch024.certificate1971valid
theorem secondValid535 : DerivedMapBatches.Batch024.certificate1972.Valid := DerivedMapBatches.Batch024.certificate1972valid
theorem outputValid535 : DerivedMapBatches.Batch024.certificate1973.Valid := DerivedMapBatches.Batch024.certificate1973valid
theorem linkedComposition535 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1973.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1973.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1972.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1971.algebra.mat x) := by
  rw [firstLink535, secondLink535]
  exact DerivedMapBatches.Batch024.certificate1973valid.2 x
theorem firstLink536 : DerivedMapBatches.Batch024.certificate1974.algebra.mat = DerivedMapBatches.Batch024.certificate1976.a := by decide
theorem secondLink536 : DerivedMapBatches.Batch024.certificate1975.algebra.mat = DerivedMapBatches.Batch024.certificate1976.b := by decide
theorem firstValid536 : DerivedMapBatches.Batch024.certificate1974.Valid := DerivedMapBatches.Batch024.certificate1974valid
theorem secondValid536 : DerivedMapBatches.Batch024.certificate1975.Valid := DerivedMapBatches.Batch024.certificate1975valid
theorem outputValid536 : DerivedMapBatches.Batch024.certificate1976.Valid := DerivedMapBatches.Batch024.certificate1976valid
theorem linkedComposition536 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1976.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1976.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1975.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1974.algebra.mat x) := by
  rw [firstLink536, secondLink536]
  exact DerivedMapBatches.Batch024.certificate1976valid.2 x
theorem firstLink537 : DerivedMapBatches.Batch024.certificate1977.algebra.mat = DerivedMapBatches.Batch024.certificate1979.a := by decide
theorem secondLink537 : DerivedMapBatches.Batch024.certificate1978.algebra.mat = DerivedMapBatches.Batch024.certificate1979.b := by decide
theorem firstValid537 : DerivedMapBatches.Batch024.certificate1977.Valid := DerivedMapBatches.Batch024.certificate1977valid
theorem secondValid537 : DerivedMapBatches.Batch024.certificate1978.Valid := DerivedMapBatches.Batch024.certificate1978valid
theorem outputValid537 : DerivedMapBatches.Batch024.certificate1979.Valid := DerivedMapBatches.Batch024.certificate1979valid
theorem linkedComposition537 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1979.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1979.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1978.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1977.algebra.mat x) := by
  rw [firstLink537, secondLink537]
  exact DerivedMapBatches.Batch024.certificate1979valid.2 x
theorem firstLink538 : DerivedMapBatches.Batch024.certificate1980.algebra.mat = DerivedMapBatches.Batch024.certificate1982.a := by decide
theorem secondLink538 : DerivedMapBatches.Batch024.certificate1981.algebra.mat = DerivedMapBatches.Batch024.certificate1982.b := by decide
theorem firstValid538 : DerivedMapBatches.Batch024.certificate1980.Valid := DerivedMapBatches.Batch024.certificate1980valid
theorem secondValid538 : DerivedMapBatches.Batch024.certificate1981.Valid := DerivedMapBatches.Batch024.certificate1981valid
theorem outputValid538 : DerivedMapBatches.Batch024.certificate1982.Valid := DerivedMapBatches.Batch024.certificate1982valid
theorem linkedComposition538 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1982.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1982.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1981.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1980.algebra.mat x) := by
  rw [firstLink538, secondLink538]
  exact DerivedMapBatches.Batch024.certificate1982valid.2 x
theorem firstLink539 : DerivedMapBatches.Batch024.certificate1983.algebra.mat = DerivedMapBatches.Batch024.certificate1985.a := by decide
theorem secondLink539 : DerivedMapBatches.Batch024.certificate1984.algebra.mat = DerivedMapBatches.Batch024.certificate1985.b := by decide
theorem firstValid539 : DerivedMapBatches.Batch024.certificate1983.Valid := DerivedMapBatches.Batch024.certificate1983valid
theorem secondValid539 : DerivedMapBatches.Batch024.certificate1984.Valid := DerivedMapBatches.Batch024.certificate1984valid
theorem outputValid539 : DerivedMapBatches.Batch024.certificate1985.Valid := DerivedMapBatches.Batch024.certificate1985valid
theorem linkedComposition539 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1985.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1985.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1984.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1983.algebra.mat x) := by
  rw [firstLink539, secondLink539]
  exact DerivedMapBatches.Batch024.certificate1985valid.2 x
theorem firstLink540 : DerivedMapBatches.Batch024.certificate1986.algebra.mat = DerivedMapBatches.Batch024.certificate1988.a := by decide
theorem secondLink540 : DerivedMapBatches.Batch024.certificate1987.algebra.mat = DerivedMapBatches.Batch024.certificate1988.b := by decide
theorem firstValid540 : DerivedMapBatches.Batch024.certificate1986.Valid := DerivedMapBatches.Batch024.certificate1986valid
theorem secondValid540 : DerivedMapBatches.Batch024.certificate1987.Valid := DerivedMapBatches.Batch024.certificate1987valid
theorem outputValid540 : DerivedMapBatches.Batch024.certificate1988.Valid := DerivedMapBatches.Batch024.certificate1988valid
theorem linkedComposition540 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1988.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1988.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1987.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1986.algebra.mat x) := by
  rw [firstLink540, secondLink540]
  exact DerivedMapBatches.Batch024.certificate1988valid.2 x
theorem firstLink541 : DerivedMapBatches.Batch024.certificate1989.algebra.mat = DerivedMapBatches.Batch024.certificate1991.a := by decide
theorem secondLink541 : DerivedMapBatches.Batch024.certificate1990.algebra.mat = DerivedMapBatches.Batch024.certificate1991.b := by decide
theorem firstValid541 : DerivedMapBatches.Batch024.certificate1989.Valid := DerivedMapBatches.Batch024.certificate1989valid
theorem secondValid541 : DerivedMapBatches.Batch024.certificate1990.Valid := DerivedMapBatches.Batch024.certificate1990valid
theorem outputValid541 : DerivedMapBatches.Batch024.certificate1991.Valid := DerivedMapBatches.Batch024.certificate1991valid
theorem linkedComposition541 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1991.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1991.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1990.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1989.algebra.mat x) := by
  rw [firstLink541, secondLink541]
  exact DerivedMapBatches.Batch024.certificate1991valid.2 x
theorem firstLink542 : DerivedMapBatches.Batch024.certificate1992.algebra.mat = DerivedMapBatches.Batch024.certificate1994.a := by decide
theorem secondLink542 : DerivedMapBatches.Batch024.certificate1993.algebra.mat = DerivedMapBatches.Batch024.certificate1994.b := by decide
theorem firstValid542 : DerivedMapBatches.Batch024.certificate1992.Valid := DerivedMapBatches.Batch024.certificate1992valid
theorem secondValid542 : DerivedMapBatches.Batch024.certificate1993.Valid := DerivedMapBatches.Batch024.certificate1993valid
theorem outputValid542 : DerivedMapBatches.Batch024.certificate1994.Valid := DerivedMapBatches.Batch024.certificate1994valid
theorem linkedComposition542 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1994.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1994.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1993.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1992.algebra.mat x) := by
  rw [firstLink542, secondLink542]
  exact DerivedMapBatches.Batch024.certificate1994valid.2 x
theorem firstLink543 : DerivedMapBatches.Batch024.certificate1995.algebra.mat = DerivedMapBatches.Batch024.certificate1997.a := by decide
theorem secondLink543 : DerivedMapBatches.Batch024.certificate1996.algebra.mat = DerivedMapBatches.Batch024.certificate1997.b := by decide
theorem firstValid543 : DerivedMapBatches.Batch024.certificate1995.Valid := DerivedMapBatches.Batch024.certificate1995valid
theorem secondValid543 : DerivedMapBatches.Batch024.certificate1996.Valid := DerivedMapBatches.Batch024.certificate1996valid
theorem outputValid543 : DerivedMapBatches.Batch024.certificate1997.Valid := DerivedMapBatches.Batch024.certificate1997valid
theorem linkedComposition543 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1997.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1997.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1996.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1995.algebra.mat x) := by
  rw [firstLink543, secondLink543]
  exact DerivedMapBatches.Batch024.certificate1997valid.2 x
theorem firstLink544 : DerivedMapBatches.Batch024.certificate1998.algebra.mat = DerivedMapBatches.Batch024.certificate1999.a := by decide
theorem secondLink544 : DerivedMapBatches.Batch024.certificate1931.c = DerivedMapBatches.Batch024.certificate1999.b := by decide
theorem firstValid544 : DerivedMapBatches.Batch024.certificate1998.Valid := DerivedMapBatches.Batch024.certificate1998valid
theorem secondValid544 : DerivedMapBatches.Batch024.certificate1931.Valid := DerivedMapBatches.Batch024.certificate1931valid
theorem outputValid544 : DerivedMapBatches.Batch024.certificate1999.Valid := DerivedMapBatches.Batch024.certificate1999valid
theorem linkedComposition544 (x : LinearCertificates.Vec DerivedMapBatches.Batch024.certificate1999.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch024.certificate1999.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1931.c (LinearCertificates.eval DerivedMapBatches.Batch024.certificate1998.algebra.mat x) := by
  rw [firstLink544, secondLink544]
  exact DerivedMapBatches.Batch024.certificate1999valid.2 x
theorem firstLink545 : DerivedMapBatches.Batch025.certificate2000.algebra.mat = DerivedMapBatches.Batch025.certificate2001.a := by decide
theorem secondLink545 : DerivedMapBatches.Batch024.certificate1934.c = DerivedMapBatches.Batch025.certificate2001.b := by decide
theorem firstValid545 : DerivedMapBatches.Batch025.certificate2000.Valid := DerivedMapBatches.Batch025.certificate2000valid
theorem secondValid545 : DerivedMapBatches.Batch024.certificate1934.Valid := DerivedMapBatches.Batch024.certificate1934valid
theorem outputValid545 : DerivedMapBatches.Batch025.certificate2001.Valid := DerivedMapBatches.Batch025.certificate2001valid
theorem linkedComposition545 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2001.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2001.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1934.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2000.algebra.mat x) := by
  rw [firstLink545, secondLink545]
  exact DerivedMapBatches.Batch025.certificate2001valid.2 x
theorem firstLink546 : DerivedMapBatches.Batch025.certificate2003.algebra.mat = DerivedMapBatches.Batch025.certificate2005.a := by decide
theorem secondLink546 : DerivedMapBatches.Batch025.certificate2004.algebra.mat = DerivedMapBatches.Batch025.certificate2005.b := by decide
theorem firstValid546 : DerivedMapBatches.Batch025.certificate2003.Valid := DerivedMapBatches.Batch025.certificate2003valid
theorem secondValid546 : DerivedMapBatches.Batch025.certificate2004.Valid := DerivedMapBatches.Batch025.certificate2004valid
theorem outputValid546 : DerivedMapBatches.Batch025.certificate2005.Valid := DerivedMapBatches.Batch025.certificate2005valid
theorem linkedComposition546 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2005.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2005.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2004.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2003.algebra.mat x) := by
  rw [firstLink546, secondLink546]
  exact DerivedMapBatches.Batch025.certificate2005valid.2 x
theorem firstLink547 : DerivedMapBatches.Batch025.certificate2002.algebra.mat = DerivedMapBatches.Batch025.certificate2006.a := by decide
theorem secondLink547 : DerivedMapBatches.Batch025.certificate2005.c = DerivedMapBatches.Batch025.certificate2006.b := by decide
theorem firstValid547 : DerivedMapBatches.Batch025.certificate2002.Valid := DerivedMapBatches.Batch025.certificate2002valid
theorem secondValid547 : DerivedMapBatches.Batch025.certificate2005.Valid := DerivedMapBatches.Batch025.certificate2005valid
theorem outputValid547 : DerivedMapBatches.Batch025.certificate2006.Valid := DerivedMapBatches.Batch025.certificate2006valid
theorem linkedComposition547 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2006.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2006.c x = LinearCertificates.eval DerivedMapBatches.Batch025.certificate2005.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2002.algebra.mat x) := by
  rw [firstLink547, secondLink547]
  exact DerivedMapBatches.Batch025.certificate2006valid.2 x
theorem firstLink548 : DerivedMapBatches.Batch025.certificate2007.algebra.mat = DerivedMapBatches.Batch025.certificate2008.a := by decide
theorem secondLink548 : DerivedMapBatches.Batch024.certificate1937.c = DerivedMapBatches.Batch025.certificate2008.b := by decide
theorem firstValid548 : DerivedMapBatches.Batch025.certificate2007.Valid := DerivedMapBatches.Batch025.certificate2007valid
theorem secondValid548 : DerivedMapBatches.Batch024.certificate1937.Valid := DerivedMapBatches.Batch024.certificate1937valid
theorem outputValid548 : DerivedMapBatches.Batch025.certificate2008.Valid := DerivedMapBatches.Batch025.certificate2008valid
theorem linkedComposition548 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2008.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2008.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1937.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2007.algebra.mat x) := by
  rw [firstLink548, secondLink548]
  exact DerivedMapBatches.Batch025.certificate2008valid.2 x
theorem firstLink549 : DerivedMapBatches.Batch025.certificate2009.algebra.mat = DerivedMapBatches.Batch025.certificate2010.a := by decide
theorem secondLink549 : DerivedMapBatches.Batch024.certificate1940.c = DerivedMapBatches.Batch025.certificate2010.b := by decide
theorem firstValid549 : DerivedMapBatches.Batch025.certificate2009.Valid := DerivedMapBatches.Batch025.certificate2009valid
theorem secondValid549 : DerivedMapBatches.Batch024.certificate1940.Valid := DerivedMapBatches.Batch024.certificate1940valid
theorem outputValid549 : DerivedMapBatches.Batch025.certificate2010.Valid := DerivedMapBatches.Batch025.certificate2010valid
theorem linkedComposition549 (x : LinearCertificates.Vec DerivedMapBatches.Batch025.certificate2010.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch025.certificate2010.c x = LinearCertificates.eval DerivedMapBatches.Batch024.certificate1940.c (LinearCertificates.eval DerivedMapBatches.Batch025.certificate2009.algebra.mat x) := by
  rw [firstLink549, secondLink549]
  exact DerivedMapBatches.Batch025.certificate2010valid.2 x
end DerivedLinkageBatches.Batch010
