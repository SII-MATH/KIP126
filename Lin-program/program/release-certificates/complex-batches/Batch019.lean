import LinearCertificates.Checker
namespace ReleaseComplex19
open LinearCertificates LinProgramCertificates
-- Ceta s=24 t=147
def outgoing1900 : Matrix 3 1 := fun i j => ([true, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1900 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1900 : IsComplex outgoing1900 incoming1900 := by lin_cert using ()
-- Ceta s=24 t=148
def outgoing1901 : Matrix 4 5 := fun i j => ([true, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1901 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1901 : IsComplex outgoing1901 incoming1901 := by lin_cert using ()
-- Ceta s=24 t=149
def outgoing1902 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1902 : Matrix 4 3 := fun i j => ([true, false, false, false, false, true, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1902 : IsComplex outgoing1902 incoming1902 := by lin_cert using ()
-- Ceta s=24 t=150
def outgoing1903 : Matrix 4 2 := fun i j => ([true, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1903 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1903 : IsComplex outgoing1903 incoming1903 := by lin_cert using ()
-- Ceta s=24 t=151
def outgoing1904 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1904 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1904 : IsComplex outgoing1904 incoming1904 := by lin_cert using ()
-- Ceta s=25 t=147
def outgoing1905 : Matrix 4 1 := fun i j => ([true, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1905 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1905 : IsComplex outgoing1905 incoming1905 := by lin_cert using ()
-- Ceta s=25 t=148
def outgoing1906 : Matrix 2 4 := fun i j => ([false, true, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1906 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1906 : IsComplex outgoing1906 incoming1906 := by lin_cert using ()
-- Ceta s=25 t=149
def outgoing1907 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1907 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1907 : IsComplex outgoing1907 incoming1907 := by lin_cert using ()
-- Ceta s=25 t=150
def outgoing1908 : Matrix 4 2 := fun i j => ([true, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1908 : Matrix 2 4 := fun i j => ([false, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1908 : IsComplex outgoing1908 incoming1908 := by lin_cert using ()
-- Ceta s=25 t=151
def outgoing1909 : Matrix 4 6 := fun i j => ([true, false, false, false, false, false, false, true, false, false, true, false, true, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1909 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1909 : IsComplex outgoing1909 incoming1909 := by lin_cert using ()
-- Ceta s=25 t=152
def outgoing1910 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1910 : Matrix 7 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, true, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1910 : IsComplex outgoing1910 incoming1910 := by lin_cert using ()
-- Cnu s=1 t=128
def outgoing1911 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming1911 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1911 : IsComplex outgoing1911 incoming1911 := by lin_cert using ()
-- Cnu s=2 t=129
def outgoing1912 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1912 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1912 : IsComplex outgoing1912 incoming1912 := by lin_cert using ()
-- Cnu s=3 t=129
def outgoing1913 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1913 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1913 : IsComplex outgoing1913 incoming1913 := by lin_cert using ()
-- Cnu s=3 t=130
def outgoing1914 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1914 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1914 : IsComplex outgoing1914 incoming1914 := by lin_cert using ()
-- Cnu s=4 t=130
def outgoing1915 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1915 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1915 : IsComplex outgoing1915 incoming1915 := by lin_cert using ()
-- Cnu s=4 t=131
def outgoing1916 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1916 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1916 : IsComplex outgoing1916 incoming1916 := by lin_cert using ()
-- Cnu s=5 t=130
def outgoing1917 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1917 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1917 : IsComplex outgoing1917 incoming1917 := by lin_cert using ()
-- Cnu s=5 t=131
def outgoing1918 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1918 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1918 : IsComplex outgoing1918 incoming1918 := by lin_cert using ()
-- Cnu s=5 t=132
def outgoing1919 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1919 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1919 : IsComplex outgoing1919 incoming1919 := by lin_cert using ()
-- Cnu s=6 t=130
def outgoing1920 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1920 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1920 : IsComplex outgoing1920 incoming1920 := by lin_cert using ()
-- Cnu s=6 t=131
def outgoing1921 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1921 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1921 : IsComplex outgoing1921 incoming1921 := by lin_cert using ()
-- Cnu s=6 t=132
def outgoing1922 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1922 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1922 : IsComplex outgoing1922 incoming1922 := by lin_cert using ()
-- Cnu s=6 t=133
def outgoing1923 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1923 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1923 : IsComplex outgoing1923 incoming1923 := by lin_cert using ()
-- Cnu s=7 t=131
def outgoing1924 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1924 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1924 : IsComplex outgoing1924 incoming1924 := by lin_cert using ()
-- Cnu s=7 t=132
def outgoing1925 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1925 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1925 : IsComplex outgoing1925 incoming1925 := by lin_cert using ()
-- Cnu s=7 t=133
def outgoing1926 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1926 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1926 : IsComplex outgoing1926 incoming1926 := by lin_cert using ()
-- Cnu s=7 t=134
def outgoing1927 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1927 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1927 : IsComplex outgoing1927 incoming1927 := by lin_cert using ()
-- Cnu s=8 t=131
def outgoing1928 : Matrix 6 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1928 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1928 : IsComplex outgoing1928 incoming1928 := by lin_cert using ()
-- Cnu s=8 t=132
def outgoing1929 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1929 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1929 : IsComplex outgoing1929 incoming1929 := by lin_cert using ()
-- Cnu s=8 t=133
def outgoing1930 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1930 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1930 : IsComplex outgoing1930 incoming1930 := by lin_cert using ()
-- Cnu s=8 t=134
def outgoing1931 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1931 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1931 : IsComplex outgoing1931 incoming1931 := by lin_cert using ()
-- Cnu s=8 t=135
def outgoing1932 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1932 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1932 : IsComplex outgoing1932 incoming1932 := by lin_cert using ()
-- Cnu s=9 t=131
def outgoing1933 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1933 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1933 : IsComplex outgoing1933 incoming1933 := by lin_cert using ()
-- Cnu s=9 t=132
def outgoing1934 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1934 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1934 : IsComplex outgoing1934 incoming1934 := by lin_cert using ()
-- Cnu s=9 t=133
def outgoing1935 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1935 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1935 : IsComplex outgoing1935 incoming1935 := by lin_cert using ()
-- Cnu s=9 t=134
def outgoing1936 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1936 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1936 : IsComplex outgoing1936 incoming1936 := by lin_cert using ()
-- Cnu s=9 t=135
def outgoing1937 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1937 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1937 : IsComplex outgoing1937 incoming1937 := by lin_cert using ()
-- Cnu s=9 t=136
def outgoing1938 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1938 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1938 : IsComplex outgoing1938 incoming1938 := by lin_cert using ()
-- Cnu s=10 t=132
def outgoing1939 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1939 : Matrix 6 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1939 : IsComplex outgoing1939 incoming1939 := by lin_cert using ()
-- Cnu s=10 t=133
def outgoing1940 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1940 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1940 : IsComplex outgoing1940 incoming1940 := by lin_cert using ()
-- Cnu s=10 t=134
def outgoing1941 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1941 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1941 : IsComplex outgoing1941 incoming1941 := by lin_cert using ()
-- Cnu s=10 t=135
def outgoing1942 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1942 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1942 : IsComplex outgoing1942 incoming1942 := by lin_cert using ()
-- Cnu s=10 t=136
def outgoing1943 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1943 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1943 : IsComplex outgoing1943 incoming1943 := by lin_cert using ()
-- Cnu s=10 t=137
def outgoing1944 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1944 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1944 : IsComplex outgoing1944 incoming1944 := by lin_cert using ()
-- Cnu s=11 t=133
def outgoing1945 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1945 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1945 : IsComplex outgoing1945 incoming1945 := by lin_cert using ()
-- Cnu s=11 t=134
def outgoing1946 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1946 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1946 : IsComplex outgoing1946 incoming1946 := by lin_cert using ()
-- Cnu s=11 t=135
def outgoing1947 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1947 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1947 : IsComplex outgoing1947 incoming1947 := by lin_cert using ()
-- Cnu s=11 t=136
def outgoing1948 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1948 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1948 : IsComplex outgoing1948 incoming1948 := by lin_cert using ()
-- Cnu s=11 t=137
def outgoing1949 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1949 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1949 : IsComplex outgoing1949 incoming1949 := by lin_cert using ()
-- Cnu s=11 t=138
def outgoing1950 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1950 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1950 : IsComplex outgoing1950 incoming1950 := by lin_cert using ()
-- Cnu s=12 t=134
def outgoing1951 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1951 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1951 : IsComplex outgoing1951 incoming1951 := by lin_cert using ()
-- Cnu s=12 t=135
def outgoing1952 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1952 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1952 : IsComplex outgoing1952 incoming1952 := by lin_cert using ()
-- Cnu s=12 t=136
def outgoing1953 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1953 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1953 : IsComplex outgoing1953 incoming1953 := by lin_cert using ()
-- Cnu s=12 t=137
def outgoing1954 : Matrix 3 7 := fun i j => ([true, false, false, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1954 : Matrix 7 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1954 : IsComplex outgoing1954 incoming1954 := by lin_cert using ()
-- Cnu s=12 t=138
def outgoing1955 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1955 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1955 : IsComplex outgoing1955 incoming1955 := by lin_cert using ()
-- Cnu s=12 t=139
def outgoing1956 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1956 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1956 : IsComplex outgoing1956 incoming1956 := by lin_cert using ()
-- Cnu s=13 t=135
def outgoing1957 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1957 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1957 : IsComplex outgoing1957 incoming1957 := by lin_cert using ()
-- Cnu s=13 t=136
def outgoing1958 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1958 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1958 : IsComplex outgoing1958 incoming1958 := by lin_cert using ()
-- Cnu s=13 t=137
def outgoing1959 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1959 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1959 : IsComplex outgoing1959 incoming1959 := by lin_cert using ()
-- Cnu s=13 t=138
def outgoing1960 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1960 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1960 : IsComplex outgoing1960 incoming1960 := by lin_cert using ()
-- Cnu s=13 t=139
def outgoing1961 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1961 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1961 : IsComplex outgoing1961 incoming1961 := by lin_cert using ()
-- Cnu s=13 t=140
def outgoing1962 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1962 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1962 : IsComplex outgoing1962 incoming1962 := by lin_cert using ()
-- Cnu s=14 t=136
def outgoing1963 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1963 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1963 : IsComplex outgoing1963 incoming1963 := by lin_cert using ()
-- Cnu s=14 t=137
def outgoing1964 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1964 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1964 : IsComplex outgoing1964 incoming1964 := by lin_cert using ()
-- Cnu s=14 t=138
def outgoing1965 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1965 : Matrix 3 7 := fun i j => ([true, false, false, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1965 : IsComplex outgoing1965 incoming1965 := by lin_cert using ()
-- Cnu s=14 t=139
def outgoing1966 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1966 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1966 : IsComplex outgoing1966 incoming1966 := by lin_cert using ()
-- Cnu s=14 t=140
def outgoing1967 : Matrix 2 5 := fun i j => ([false, true, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1967 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1967 : IsComplex outgoing1967 incoming1967 := by lin_cert using ()
-- Cnu s=14 t=141
def outgoing1968 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1968 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1968 : IsComplex outgoing1968 incoming1968 := by lin_cert using ()
-- Cnu s=15 t=137
def outgoing1969 : Matrix 3 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 8 + j.val]!
def incoming1969 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1969 : IsComplex outgoing1969 incoming1969 := by lin_cert using ()
-- Cnu s=15 t=138
def outgoing1970 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1970 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1970 : IsComplex outgoing1970 incoming1970 := by lin_cert using ()
-- Cnu s=15 t=139
def outgoing1971 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1971 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1971 : IsComplex outgoing1971 incoming1971 := by lin_cert using ()
-- Cnu s=15 t=140
def outgoing1972 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1972 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1972 : IsComplex outgoing1972 incoming1972 := by lin_cert using ()
-- Cnu s=15 t=141
def outgoing1973 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1973 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1973 : IsComplex outgoing1973 incoming1973 := by lin_cert using ()
-- Cnu s=15 t=142
def outgoing1974 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1974 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1974 : IsComplex outgoing1974 incoming1974 := by lin_cert using ()
-- Cnu s=16 t=138
def outgoing1975 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming1975 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1975 : IsComplex outgoing1975 incoming1975 := by lin_cert using ()
-- Cnu s=16 t=139
def outgoing1976 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1976 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1976 : IsComplex outgoing1976 incoming1976 := by lin_cert using ()
-- Cnu s=16 t=140
def outgoing1977 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1977 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1977 : IsComplex outgoing1977 incoming1977 := by lin_cert using ()
-- Cnu s=16 t=141
def outgoing1978 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1978 : Matrix 2 5 := fun i j => ([false, true, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1978 : IsComplex outgoing1978 incoming1978 := by lin_cert using ()
-- Cnu s=16 t=142
def outgoing1979 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1979 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1979 : IsComplex outgoing1979 incoming1979 := by lin_cert using ()
-- Cnu s=16 t=143
def outgoing1980 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1980 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1980 : IsComplex outgoing1980 incoming1980 := by lin_cert using ()
-- Cnu s=17 t=139
def outgoing1981 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1981 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1981 : IsComplex outgoing1981 incoming1981 := by lin_cert using ()
-- Cnu s=17 t=140
def outgoing1982 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1982 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1982 : IsComplex outgoing1982 incoming1982 := by lin_cert using ()
-- Cnu s=17 t=141
def outgoing1983 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1983 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1983 : IsComplex outgoing1983 incoming1983 := by lin_cert using ()
-- Cnu s=17 t=142
def outgoing1984 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1984 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1984 : IsComplex outgoing1984 incoming1984 := by lin_cert using ()
-- Cnu s=17 t=143
def outgoing1985 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1985 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1985 : IsComplex outgoing1985 incoming1985 := by lin_cert using ()
-- Cnu s=17 t=144
def outgoing1986 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1986 : Matrix 3 7 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1986 : IsComplex outgoing1986 incoming1986 := by lin_cert using ()
-- Cnu s=18 t=140
def outgoing1987 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1987 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1987 : IsComplex outgoing1987 incoming1987 := by lin_cert using ()
-- Cnu s=18 t=141
def outgoing1988 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1988 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1988 : IsComplex outgoing1988 incoming1988 := by lin_cert using ()
-- Cnu s=18 t=142
def outgoing1989 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1989 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1989 : IsComplex outgoing1989 incoming1989 := by lin_cert using ()
-- Cnu s=18 t=143
def outgoing1990 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1990 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1990 : IsComplex outgoing1990 incoming1990 := by lin_cert using ()
-- Cnu s=18 t=144
def outgoing1991 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1991 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1991 : IsComplex outgoing1991 incoming1991 := by lin_cert using ()
-- Cnu s=18 t=145
def outgoing1992 : Matrix 4 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1992 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1992 : IsComplex outgoing1992 incoming1992 := by lin_cert using ()
-- Cnu s=19 t=141
def outgoing1993 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1993 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1993 : IsComplex outgoing1993 incoming1993 := by lin_cert using ()
-- Cnu s=19 t=142
def outgoing1994 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1994 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1994 : IsComplex outgoing1994 incoming1994 := by lin_cert using ()
-- Cnu s=19 t=143
def outgoing1995 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1995 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1995 : IsComplex outgoing1995 incoming1995 := by lin_cert using ()
-- Cnu s=19 t=144
def outgoing1996 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1996 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1996 : IsComplex outgoing1996 incoming1996 := by lin_cert using ()
-- Cnu s=19 t=145
def outgoing1997 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1997 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1997 : IsComplex outgoing1997 incoming1997 := by lin_cert using ()
-- Cnu s=19 t=146
def outgoing1998 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1998 : Matrix 4 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1998 : IsComplex outgoing1998 incoming1998 := by lin_cert using ()
-- Cnu s=20 t=142
def outgoing1999 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming1999 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1999 : IsComplex outgoing1999 incoming1999 := by lin_cert using ()
end ReleaseComplex19
