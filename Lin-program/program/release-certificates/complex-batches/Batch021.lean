import LinearCertificates.Checker
namespace ReleaseComplex21
open LinearCertificates LinProgramCertificates
-- Csigma s=15 t=141
def outgoing2100 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2100 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2100 : IsComplex outgoing2100 incoming2100 := by lin_cert using ()
-- Csigma s=15 t=142
def outgoing2101 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2101 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2101 : IsComplex outgoing2101 incoming2101 := by lin_cert using ()
-- Csigma s=16 t=138
def outgoing2102 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2102 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2102 : IsComplex outgoing2102 incoming2102 := by lin_cert using ()
-- Csigma s=16 t=139
def outgoing2103 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2103 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2103 : IsComplex outgoing2103 incoming2103 := by lin_cert using ()
-- Csigma s=16 t=140
def outgoing2104 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2104 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2104 : IsComplex outgoing2104 incoming2104 := by lin_cert using ()
-- Csigma s=16 t=141
def outgoing2105 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2105 : Matrix 2 8 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex2105 : IsComplex outgoing2105 incoming2105 := by lin_cert using ()
-- Csigma s=16 t=142
def outgoing2106 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2106 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2106 : IsComplex outgoing2106 incoming2106 := by lin_cert using ()
-- Csigma s=16 t=143
def outgoing2107 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2107 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2107 : IsComplex outgoing2107 incoming2107 := by lin_cert using ()
-- Csigma s=17 t=139
def outgoing2108 : Matrix 4 3 := fun i j => ([false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2108 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2108 : IsComplex outgoing2108 incoming2108 := by lin_cert using ()
-- Csigma s=17 t=140
def outgoing2109 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2109 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2109 : IsComplex outgoing2109 incoming2109 := by lin_cert using ()
-- Csigma s=17 t=141
def outgoing2110 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2110 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2110 : IsComplex outgoing2110 incoming2110 := by lin_cert using ()
-- Csigma s=17 t=142
def outgoing2111 : Matrix 1 6 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2111 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2111 : IsComplex outgoing2111 incoming2111 := by lin_cert using ()
-- Csigma s=17 t=143
def outgoing2112 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true, false, false, true, true, true, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming2112 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2112 : IsComplex outgoing2112 incoming2112 := by lin_cert using ()
-- Csigma s=17 t=144
def outgoing2113 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2113 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2113 : IsComplex outgoing2113 incoming2113 := by lin_cert using ()
-- Csigma s=18 t=140
def outgoing2114 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2114 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2114 : IsComplex outgoing2114 incoming2114 := by lin_cert using ()
-- Csigma s=18 t=141
def outgoing2115 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2115 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2115 : IsComplex outgoing2115 incoming2115 := by lin_cert using ()
-- Csigma s=18 t=142
def outgoing2116 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2116 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2116 : IsComplex outgoing2116 incoming2116 := by lin_cert using ()
-- Csigma s=18 t=143
def outgoing2117 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2117 : Matrix 6 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, true, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2117 : IsComplex outgoing2117 incoming2117 := by lin_cert using ()
-- Csigma s=18 t=144
def outgoing2118 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2118 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2118 : IsComplex outgoing2118 incoming2118 := by lin_cert using ()
-- Csigma s=18 t=145
def outgoing2119 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2119 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2119 : IsComplex outgoing2119 incoming2119 := by lin_cert using ()
-- Csigma s=19 t=141
def outgoing2120 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2120 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2120 : IsComplex outgoing2120 incoming2120 := by lin_cert using ()
-- Csigma s=19 t=142
def outgoing2121 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2121 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2121 : IsComplex outgoing2121 incoming2121 := by lin_cert using ()
-- Csigma s=19 t=143
def outgoing2122 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2122 : Matrix 1 6 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2122 : IsComplex outgoing2122 incoming2122 := by lin_cert using ()
-- Csigma s=19 t=144
def outgoing2123 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2123 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true, false, false, true, true, true, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2123 : IsComplex outgoing2123 incoming2123 := by lin_cert using ()
-- Csigma s=19 t=145
def outgoing2124 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2124 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2124 : IsComplex outgoing2124 incoming2124 := by lin_cert using ()
-- Csigma s=19 t=146
def outgoing2125 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2125 : Matrix 4 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2125 : IsComplex outgoing2125 incoming2125 := by lin_cert using ()
-- Csigma s=20 t=142
def outgoing2126 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2126 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2126 : IsComplex outgoing2126 incoming2126 := by lin_cert using ()
-- Csigma s=20 t=143
def outgoing2127 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2127 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2127 : IsComplex outgoing2127 incoming2127 := by lin_cert using ()
-- Csigma s=20 t=144
def outgoing2128 : Matrix 3 2 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2128 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2128 : IsComplex outgoing2128 incoming2128 := by lin_cert using ()
-- Csigma s=20 t=145
def outgoing2129 : Matrix 4 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2129 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2129 : IsComplex outgoing2129 incoming2129 := by lin_cert using ()
-- Csigma s=20 t=146
def outgoing2130 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2130 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2130 : IsComplex outgoing2130 incoming2130 := by lin_cert using ()
-- Csigma s=20 t=147
def outgoing2131 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2131 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2131 : IsComplex outgoing2131 incoming2131 := by lin_cert using ()
-- Csigma s=21 t=143
def outgoing2132 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2132 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2132 : IsComplex outgoing2132 incoming2132 := by lin_cert using ()
-- Csigma s=21 t=144
def outgoing2133 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2133 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2133 : IsComplex outgoing2133 incoming2133 := by lin_cert using ()
-- Csigma s=21 t=145
def outgoing2134 : Matrix 2 4 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2134 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2134 : IsComplex outgoing2134 incoming2134 := by lin_cert using ()
-- Csigma s=21 t=146
def outgoing2135 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2135 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2135 : IsComplex outgoing2135 incoming2135 := by lin_cert using ()
-- Csigma s=21 t=147
def outgoing2136 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2136 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2136 : IsComplex outgoing2136 incoming2136 := by lin_cert using ()
-- Csigma s=21 t=148
def outgoing2137 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2137 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2137 : IsComplex outgoing2137 incoming2137 := by lin_cert using ()
-- Csigma s=22 t=144
def outgoing2138 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2138 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2138 : IsComplex outgoing2138 incoming2138 := by lin_cert using ()
-- Csigma s=22 t=145
def outgoing2139 : Matrix 3 3 := fun i j => ([false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2139 : Matrix 3 2 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2139 : IsComplex outgoing2139 incoming2139 := by lin_cert using ()
-- Csigma s=22 t=146
def outgoing2140 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2140 : Matrix 4 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2140 : IsComplex outgoing2140 incoming2140 := by lin_cert using ()
-- Csigma s=22 t=147
def outgoing2141 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2141 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2141 : IsComplex outgoing2141 incoming2141 := by lin_cert using ()
-- Csigma s=22 t=148
def outgoing2142 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2142 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2142 : IsComplex outgoing2142 incoming2142 := by lin_cert using ()
-- Csigma s=22 t=149
def outgoing2143 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2143 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2143 : IsComplex outgoing2143 incoming2143 := by lin_cert using ()
-- Csigma s=23 t=145
def outgoing2144 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2144 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2144 : IsComplex outgoing2144 incoming2144 := by lin_cert using ()
-- Csigma s=23 t=146
def outgoing2145 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2145 : Matrix 2 4 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2145 : IsComplex outgoing2145 incoming2145 := by lin_cert using ()
-- Csigma s=23 t=147
def outgoing2146 : Matrix 3 2 := fun i j => ([false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2146 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2146 : IsComplex outgoing2146 incoming2146 := by lin_cert using ()
-- Csigma s=23 t=148
def outgoing2147 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2147 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2147 : IsComplex outgoing2147 incoming2147 := by lin_cert using ()
-- Csigma s=23 t=149
def outgoing2148 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2148 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2148 : IsComplex outgoing2148 incoming2148 := by lin_cert using ()
-- Csigma s=23 t=150
def outgoing2149 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2149 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2149 : IsComplex outgoing2149 incoming2149 := by lin_cert using ()
-- Csigma s=24 t=146
def outgoing2150 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2150 : Matrix 3 3 := fun i j => ([false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2150 : IsComplex outgoing2150 incoming2150 := by lin_cert using ()
-- Csigma s=24 t=147
def outgoing2151 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming2151 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2151 : IsComplex outgoing2151 incoming2151 := by lin_cert using ()
-- Csigma s=24 t=148
def outgoing2152 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2152 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2152 : IsComplex outgoing2152 incoming2152 := by lin_cert using ()
-- Csigma s=24 t=149
def outgoing2153 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2153 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2153 : IsComplex outgoing2153 incoming2153 := by lin_cert using ()
-- Csigma s=24 t=150
def outgoing2154 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2154 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2154 : IsComplex outgoing2154 incoming2154 := by lin_cert using ()
-- Csigma s=24 t=151
def outgoing2155 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2155 : Matrix 6 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2155 : IsComplex outgoing2155 incoming2155 := by lin_cert using ()
-- Csigma s=25 t=147
def outgoing2156 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming2156 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2156 : IsComplex outgoing2156 incoming2156 := by lin_cert using ()
-- Csigma s=25 t=148
def outgoing2157 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2157 : Matrix 3 2 := fun i j => ([false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2157 : IsComplex outgoing2157 incoming2157 := by lin_cert using ()
-- Csigma s=25 t=149
def outgoing2158 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2158 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2158 : IsComplex outgoing2158 incoming2158 := by lin_cert using ()
-- Csigma s=25 t=150
def outgoing2159 : Matrix 5 2 := fun i j => ([false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2159 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2159 : IsComplex outgoing2159 incoming2159 := by lin_cert using ()
-- Csigma s=25 t=151
def outgoing2160 : Matrix 2 4 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2160 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2160 : IsComplex outgoing2160 incoming2160 := by lin_cert using ()
-- Csigma s=25 t=152
def outgoing2161 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2161 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2161 : IsComplex outgoing2161 incoming2161 := by lin_cert using ()
-- DC2h4 s=1 t=128
def outgoing2162 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex2162 : IsComplex outgoing2162 incoming2162 := by lin_cert using ()
-- DC2h4 s=2 t=129
def outgoing2163 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2163 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2163 : IsComplex outgoing2163 incoming2163 := by lin_cert using ()
-- DC2h4 s=3 t=129
def outgoing2164 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2164 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2164 : IsComplex outgoing2164 incoming2164 := by lin_cert using ()
-- DC2h4 s=3 t=130
def outgoing2165 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2165 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2165 : IsComplex outgoing2165 incoming2165 := by lin_cert using ()
-- DC2h4 s=4 t=130
def outgoing2166 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2166 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2166 : IsComplex outgoing2166 incoming2166 := by lin_cert using ()
-- DC2h4 s=4 t=131
def outgoing2167 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2167 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2167 : IsComplex outgoing2167 incoming2167 := by lin_cert using ()
-- DC2h4 s=5 t=127
def outgoing2168 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2168 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2168 : IsComplex outgoing2168 incoming2168 := by lin_cert using ()
-- DC2h4 s=5 t=129
def outgoing2169 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2169 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2169 : IsComplex outgoing2169 incoming2169 := by lin_cert using ()
-- DC2h4 s=5 t=130
def outgoing2170 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2170 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2170 : IsComplex outgoing2170 incoming2170 := by lin_cert using ()
-- DC2h4 s=5 t=131
def outgoing2171 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2171 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2171 : IsComplex outgoing2171 incoming2171 := by lin_cert using ()
-- DC2h4 s=5 t=132
def outgoing2172 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2172 : Matrix 3 2 := fun i j => ([true, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2172 : IsComplex outgoing2172 incoming2172 := by lin_cert using ()
-- DC2h4 s=6 t=128
def outgoing2173 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2173 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2173 : IsComplex outgoing2173 incoming2173 := by lin_cert using ()
-- DC2h4 s=6 t=129
def outgoing2174 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2174 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2174 : IsComplex outgoing2174 incoming2174 := by lin_cert using ()
-- DC2h4 s=6 t=130
def outgoing2175 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2175 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2175 : IsComplex outgoing2175 incoming2175 := by lin_cert using ()
-- DC2h4 s=6 t=131
def outgoing2176 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2176 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2176 : IsComplex outgoing2176 incoming2176 := by lin_cert using ()
-- DC2h4 s=6 t=132
def outgoing2177 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2177 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2177 : IsComplex outgoing2177 incoming2177 := by lin_cert using ()
-- DC2h4 s=6 t=133
def outgoing2178 : Matrix 10 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2178 : Matrix 8 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2178 : IsComplex outgoing2178 incoming2178 := by lin_cert using ()
-- DC2h4 s=7 t=129
def outgoing2179 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2179 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2179 : IsComplex outgoing2179 incoming2179 := by lin_cert using ()
-- DC2h4 s=7 t=130
def outgoing2180 : Matrix 3 3 := fun i j => ([false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2180 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2180 : IsComplex outgoing2180 incoming2180 := by lin_cert using ()
-- DC2h4 s=7 t=131
def outgoing2181 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2181 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2181 : IsComplex outgoing2181 incoming2181 := by lin_cert using ()
-- DC2h4 s=7 t=132
def outgoing2182 : Matrix 9 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 5 + j.val]!
def incoming2182 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2182 : IsComplex outgoing2182 incoming2182 := by lin_cert using ()
-- DC2h4 s=7 t=133
def outgoing2183 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming2183 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2183 : IsComplex outgoing2183 incoming2183 := by lin_cert using ()
-- DC2h4 s=8 t=130
def outgoing2184 : Matrix 6 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2184 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2184 : IsComplex outgoing2184 incoming2184 := by lin_cert using ()
-- DC2h4 s=8 t=131
def outgoing2185 : Matrix 4 2 := fun i j => ([true, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2185 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2185 : IsComplex outgoing2185 incoming2185 := by lin_cert using ()
-- DC2h4 s=8 t=132
def outgoing2186 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2186 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2186 : IsComplex outgoing2186 incoming2186 := by lin_cert using ()
-- DC2h4 s=8 t=133
def outgoing2187 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2187 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2187 : IsComplex outgoing2187 incoming2187 := by lin_cert using ()
-- DC2h4 s=9 t=131
def outgoing2188 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2188 : Matrix 3 3 := fun i j => ([false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2188 : IsComplex outgoing2188 incoming2188 := by lin_cert using ()
-- DC2h4 s=9 t=132
def outgoing2189 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2189 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2189 : IsComplex outgoing2189 incoming2189 := by lin_cert using ()
-- DC2h4 s=9 t=133
def outgoing2190 : Matrix 3 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 9 + j.val]!
def incoming2190 : Matrix 9 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2190 : IsComplex outgoing2190 incoming2190 := by lin_cert using ()
-- DC2h4 s=10 t=132
def outgoing2191 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2191 : Matrix 4 2 := fun i j => ([true, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2191 : IsComplex outgoing2191 incoming2191 := by lin_cert using ()
-- DC2h4 s=10 t=133
def outgoing2192 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2192 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2192 : IsComplex outgoing2192 incoming2192 := by lin_cert using ()
-- DC2h4 s=11 t=133
def outgoing2193 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2193 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2193 : IsComplex outgoing2193 incoming2193 := by lin_cert using ()
-- DC2h5 s=1 t=128
def outgoing2194 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex2194 : IsComplex outgoing2194 incoming2194 := by lin_cert using ()
-- DC2h5 s=2 t=128
def outgoing2195 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2195 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2195 : IsComplex outgoing2195 incoming2195 := by lin_cert using ()
-- DC2h5 s=2 t=129
def outgoing2196 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2196 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2196 : IsComplex outgoing2196 incoming2196 := by lin_cert using ()
-- DC2h5 s=3 t=129
def outgoing2197 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2197 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2197 : IsComplex outgoing2197 incoming2197 := by lin_cert using ()
-- DC2h5 s=3 t=130
def outgoing2198 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2198 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2198 : IsComplex outgoing2198 incoming2198 := by lin_cert using ()
-- DC2h5 s=4 t=127
def outgoing2199 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2199 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2199 : IsComplex outgoing2199 incoming2199 := by lin_cert using ()
end ReleaseComplex21
