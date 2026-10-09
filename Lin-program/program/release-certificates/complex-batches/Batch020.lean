import LinearCertificates.Checker
namespace ReleaseComplex20
open LinearCertificates LinProgramCertificates
-- Cnu s=20 t=143
def outgoing2000 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2000 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2000 : IsComplex outgoing2000 incoming2000 := by lin_cert using ()
-- Cnu s=20 t=144
def outgoing2001 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2001 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2001 : IsComplex outgoing2001 incoming2001 := by lin_cert using ()
-- Cnu s=20 t=145
def outgoing2002 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2002 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2002 : IsComplex outgoing2002 incoming2002 := by lin_cert using ()
-- Cnu s=20 t=146
def outgoing2003 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2003 : Matrix 4 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2003 : IsComplex outgoing2003 incoming2003 := by lin_cert using ()
-- Cnu s=20 t=147
def outgoing2004 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2004 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2004 : IsComplex outgoing2004 incoming2004 := by lin_cert using ()
-- Cnu s=21 t=143
def outgoing2005 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2005 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2005 : IsComplex outgoing2005 incoming2005 := by lin_cert using ()
-- Cnu s=21 t=144
def outgoing2006 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2006 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2006 : IsComplex outgoing2006 incoming2006 := by lin_cert using ()
-- Cnu s=21 t=145
def outgoing2007 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2007 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2007 : IsComplex outgoing2007 incoming2007 := by lin_cert using ()
-- Cnu s=21 t=146
def outgoing2008 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2008 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2008 : IsComplex outgoing2008 incoming2008 := by lin_cert using ()
-- Cnu s=21 t=147
def outgoing2009 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2009 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2009 : IsComplex outgoing2009 incoming2009 := by lin_cert using ()
-- Cnu s=21 t=148
def outgoing2010 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2010 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2010 : IsComplex outgoing2010 incoming2010 := by lin_cert using ()
-- Cnu s=22 t=144
def outgoing2011 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2011 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2011 : IsComplex outgoing2011 incoming2011 := by lin_cert using ()
-- Cnu s=22 t=145
def outgoing2012 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2012 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2012 : IsComplex outgoing2012 incoming2012 := by lin_cert using ()
-- Cnu s=22 t=146
def outgoing2013 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2013 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2013 : IsComplex outgoing2013 incoming2013 := by lin_cert using ()
-- Cnu s=22 t=147
def outgoing2014 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2014 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2014 : IsComplex outgoing2014 incoming2014 := by lin_cert using ()
-- Cnu s=22 t=148
def outgoing2015 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2015 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2015 : IsComplex outgoing2015 incoming2015 := by lin_cert using ()
-- Cnu s=22 t=149
def outgoing2016 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2016 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2016 : IsComplex outgoing2016 incoming2016 := by lin_cert using ()
-- Cnu s=23 t=145
def outgoing2017 : Matrix 3 2 := fun i j => ([false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2017 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2017 : IsComplex outgoing2017 incoming2017 := by lin_cert using ()
-- Cnu s=23 t=146
def outgoing2018 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2018 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2018 : IsComplex outgoing2018 incoming2018 := by lin_cert using ()
-- Cnu s=23 t=147
def outgoing2019 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2019 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2019 : IsComplex outgoing2019 incoming2019 := by lin_cert using ()
-- Cnu s=23 t=148
def outgoing2020 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2020 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2020 : IsComplex outgoing2020 incoming2020 := by lin_cert using ()
-- Cnu s=23 t=149
def outgoing2021 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2021 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2021 : IsComplex outgoing2021 incoming2021 := by lin_cert using ()
-- Cnu s=23 t=150
def outgoing2022 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2022 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2022 : IsComplex outgoing2022 incoming2022 := by lin_cert using ()
-- Cnu s=24 t=146
def outgoing2023 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2023 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2023 : IsComplex outgoing2023 incoming2023 := by lin_cert using ()
-- Cnu s=24 t=147
def outgoing2024 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2024 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2024 : IsComplex outgoing2024 incoming2024 := by lin_cert using ()
-- Cnu s=24 t=148
def outgoing2025 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2025 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2025 : IsComplex outgoing2025 incoming2025 := by lin_cert using ()
-- Cnu s=24 t=149
def outgoing2026 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2026 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2026 : IsComplex outgoing2026 incoming2026 := by lin_cert using ()
-- Cnu s=24 t=150
def outgoing2027 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2027 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2027 : IsComplex outgoing2027 incoming2027 := by lin_cert using ()
-- Cnu s=24 t=151
def outgoing2028 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2028 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2028 : IsComplex outgoing2028 incoming2028 := by lin_cert using ()
-- Cnu s=25 t=147
def outgoing2029 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2029 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2029 : IsComplex outgoing2029 incoming2029 := by lin_cert using ()
-- Cnu s=25 t=148
def outgoing2030 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2030 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2030 : IsComplex outgoing2030 incoming2030 := by lin_cert using ()
-- Cnu s=25 t=149
def outgoing2031 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2031 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2031 : IsComplex outgoing2031 incoming2031 := by lin_cert using ()
-- Cnu s=25 t=150
def outgoing2032 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2032 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2032 : IsComplex outgoing2032 incoming2032 := by lin_cert using ()
-- Cnu s=25 t=151
def outgoing2033 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2033 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2033 : IsComplex outgoing2033 incoming2033 := by lin_cert using ()
-- Cnu s=25 t=152
def outgoing2034 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2034 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2034 : IsComplex outgoing2034 incoming2034 := by lin_cert using ()
-- Csigma s=1 t=128
def outgoing2035 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2035 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex2035 : IsComplex outgoing2035 incoming2035 := by lin_cert using ()
-- Csigma s=2 t=129
def outgoing2036 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2036 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2036 : IsComplex outgoing2036 incoming2036 := by lin_cert using ()
-- Csigma s=3 t=129
def outgoing2037 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2037 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2037 : IsComplex outgoing2037 incoming2037 := by lin_cert using ()
-- Csigma s=3 t=130
def outgoing2038 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2038 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2038 : IsComplex outgoing2038 incoming2038 := by lin_cert using ()
-- Csigma s=4 t=130
def outgoing2039 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2039 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2039 : IsComplex outgoing2039 incoming2039 := by lin_cert using ()
-- Csigma s=4 t=131
def outgoing2040 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2040 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2040 : IsComplex outgoing2040 incoming2040 := by lin_cert using ()
-- Csigma s=5 t=130
def outgoing2041 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2041 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2041 : IsComplex outgoing2041 incoming2041 := by lin_cert using ()
-- Csigma s=5 t=131
def outgoing2042 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2042 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2042 : IsComplex outgoing2042 incoming2042 := by lin_cert using ()
-- Csigma s=5 t=132
def outgoing2043 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2043 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2043 : IsComplex outgoing2043 incoming2043 := by lin_cert using ()
-- Csigma s=6 t=128
def outgoing2044 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2044 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2044 : IsComplex outgoing2044 incoming2044 := by lin_cert using ()
-- Csigma s=6 t=129
def outgoing2045 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2045 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2045 : IsComplex outgoing2045 incoming2045 := by lin_cert using ()
-- Csigma s=6 t=130
def outgoing2046 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2046 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2046 : IsComplex outgoing2046 incoming2046 := by lin_cert using ()
-- Csigma s=6 t=131
def outgoing2047 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2047 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2047 : IsComplex outgoing2047 incoming2047 := by lin_cert using ()
-- Csigma s=6 t=132
def outgoing2048 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2048 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2048 : IsComplex outgoing2048 incoming2048 := by lin_cert using ()
-- Csigma s=6 t=133
def outgoing2049 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2049 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2049 : IsComplex outgoing2049 incoming2049 := by lin_cert using ()
-- Csigma s=7 t=131
def outgoing2050 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2050 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2050 : IsComplex outgoing2050 incoming2050 := by lin_cert using ()
-- Csigma s=7 t=132
def outgoing2051 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming2051 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2051 : IsComplex outgoing2051 incoming2051 := by lin_cert using ()
-- Csigma s=7 t=133
def outgoing2052 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2052 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2052 : IsComplex outgoing2052 incoming2052 := by lin_cert using ()
-- Csigma s=7 t=134
def outgoing2053 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2053 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2053 : IsComplex outgoing2053 incoming2053 := by lin_cert using ()
-- Csigma s=8 t=130
def outgoing2054 : Matrix 6 2 := fun i j => ([false, false, false, false, true, false, true, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming2054 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2054 : IsComplex outgoing2054 incoming2054 := by lin_cert using ()
-- Csigma s=8 t=131
def outgoing2055 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2055 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2055 : IsComplex outgoing2055 incoming2055 := by lin_cert using ()
-- Csigma s=8 t=132
def outgoing2056 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2056 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2056 : IsComplex outgoing2056 incoming2056 := by lin_cert using ()
-- Csigma s=8 t=133
def outgoing2057 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2057 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2057 : IsComplex outgoing2057 incoming2057 := by lin_cert using ()
-- Csigma s=8 t=134
def outgoing2058 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2058 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2058 : IsComplex outgoing2058 incoming2058 := by lin_cert using ()
-- Csigma s=8 t=135
def outgoing2059 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2059 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2059 : IsComplex outgoing2059 incoming2059 := by lin_cert using ()
-- Csigma s=9 t=131
def outgoing2060 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2060 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2060 : IsComplex outgoing2060 incoming2060 := by lin_cert using ()
-- Csigma s=9 t=132
def outgoing2061 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2061 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2061 : IsComplex outgoing2061 incoming2061 := by lin_cert using ()
-- Csigma s=9 t=133
def outgoing2062 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming2062 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2062 : IsComplex outgoing2062 incoming2062 := by lin_cert using ()
-- Csigma s=9 t=134
def outgoing2063 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2063 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2063 : IsComplex outgoing2063 incoming2063 := by lin_cert using ()
-- Csigma s=9 t=135
def outgoing2064 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2064 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2064 : IsComplex outgoing2064 incoming2064 := by lin_cert using ()
-- Csigma s=9 t=136
def outgoing2065 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2065 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2065 : IsComplex outgoing2065 incoming2065 := by lin_cert using ()
-- Csigma s=10 t=132
def outgoing2066 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2066 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2066 : IsComplex outgoing2066 incoming2066 := by lin_cert using ()
-- Csigma s=10 t=133
def outgoing2067 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2067 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2067 : IsComplex outgoing2067 incoming2067 := by lin_cert using ()
-- Csigma s=10 t=134
def outgoing2068 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2068 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2068 : IsComplex outgoing2068 incoming2068 := by lin_cert using ()
-- Csigma s=10 t=135
def outgoing2069 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2069 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2069 : IsComplex outgoing2069 incoming2069 := by lin_cert using ()
-- Csigma s=10 t=136
def outgoing2070 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2070 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2070 : IsComplex outgoing2070 incoming2070 := by lin_cert using ()
-- Csigma s=10 t=137
def outgoing2071 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2071 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2071 : IsComplex outgoing2071 incoming2071 := by lin_cert using ()
-- Csigma s=11 t=133
def outgoing2072 : Matrix 4 1 := fun i j => ([false, true, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2072 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2072 : IsComplex outgoing2072 incoming2072 := by lin_cert using ()
-- Csigma s=11 t=134
def outgoing2073 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2073 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2073 : IsComplex outgoing2073 incoming2073 := by lin_cert using ()
-- Csigma s=11 t=135
def outgoing2074 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2074 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2074 : IsComplex outgoing2074 incoming2074 := by lin_cert using ()
-- Csigma s=11 t=136
def outgoing2075 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2075 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2075 : IsComplex outgoing2075 incoming2075 := by lin_cert using ()
-- Csigma s=11 t=137
def outgoing2076 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2076 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2076 : IsComplex outgoing2076 incoming2076 := by lin_cert using ()
-- Csigma s=11 t=138
def outgoing2077 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2077 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2077 : IsComplex outgoing2077 incoming2077 := by lin_cert using ()
-- Csigma s=12 t=134
def outgoing2078 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2078 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2078 : IsComplex outgoing2078 incoming2078 := by lin_cert using ()
-- Csigma s=12 t=135
def outgoing2079 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2079 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2079 : IsComplex outgoing2079 incoming2079 := by lin_cert using ()
-- Csigma s=12 t=136
def outgoing2080 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2080 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2080 : IsComplex outgoing2080 incoming2080 := by lin_cert using ()
-- Csigma s=12 t=137
def outgoing2081 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2081 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2081 : IsComplex outgoing2081 incoming2081 := by lin_cert using ()
-- Csigma s=12 t=138
def outgoing2082 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2082 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2082 : IsComplex outgoing2082 incoming2082 := by lin_cert using ()
-- Csigma s=12 t=139
def outgoing2083 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2083 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2083 : IsComplex outgoing2083 incoming2083 := by lin_cert using ()
-- Csigma s=13 t=135
def outgoing2084 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2084 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2084 : IsComplex outgoing2084 incoming2084 := by lin_cert using ()
-- Csigma s=13 t=136
def outgoing2085 : Matrix 8 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2085 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2085 : IsComplex outgoing2085 incoming2085 := by lin_cert using ()
-- Csigma s=13 t=137
def outgoing2086 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2086 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2086 : IsComplex outgoing2086 incoming2086 := by lin_cert using ()
-- Csigma s=13 t=138
def outgoing2087 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2087 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2087 : IsComplex outgoing2087 incoming2087 := by lin_cert using ()
-- Csigma s=13 t=139
def outgoing2088 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2088 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2088 : IsComplex outgoing2088 incoming2088 := by lin_cert using ()
-- Csigma s=13 t=140
def outgoing2089 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2089 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2089 : IsComplex outgoing2089 incoming2089 := by lin_cert using ()
-- Csigma s=14 t=136
def outgoing2090 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2090 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2090 : IsComplex outgoing2090 incoming2090 := by lin_cert using ()
-- Csigma s=14 t=137
def outgoing2091 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2091 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2091 : IsComplex outgoing2091 incoming2091 := by lin_cert using ()
-- Csigma s=14 t=138
def outgoing2092 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2092 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2092 : IsComplex outgoing2092 incoming2092 := by lin_cert using ()
-- Csigma s=14 t=139
def outgoing2093 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2093 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2093 : IsComplex outgoing2093 incoming2093 := by lin_cert using ()
-- Csigma s=14 t=140
def outgoing2094 : Matrix 2 8 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming2094 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2094 : IsComplex outgoing2094 incoming2094 := by lin_cert using ()
-- Csigma s=14 t=141
def outgoing2095 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2095 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2095 : IsComplex outgoing2095 incoming2095 := by lin_cert using ()
-- Csigma s=15 t=137
def outgoing2096 : Matrix 2 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 8 + j.val]!
def incoming2096 : Matrix 8 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2096 : IsComplex outgoing2096 incoming2096 := by lin_cert using ()
-- Csigma s=15 t=138
def outgoing2097 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2097 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2097 : IsComplex outgoing2097 incoming2097 := by lin_cert using ()
-- Csigma s=15 t=139
def outgoing2098 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2098 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2098 : IsComplex outgoing2098 incoming2098 := by lin_cert using ()
-- Csigma s=15 t=140
def outgoing2099 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2099 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2099 : IsComplex outgoing2099 incoming2099 := by lin_cert using ()
end ReleaseComplex20
