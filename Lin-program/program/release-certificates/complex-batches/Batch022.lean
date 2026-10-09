import LinearCertificates.Checker
namespace ReleaseComplex22
open LinearCertificates LinProgramCertificates
-- DC2h5 s=4 t=129
def outgoing2200 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2200 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2200 : IsComplex outgoing2200 incoming2200 := by lin_cert using ()
-- DC2h5 s=4 t=130
def outgoing2201 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2201 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2201 : IsComplex outgoing2201 incoming2201 := by lin_cert using ()
-- DC2h5 s=4 t=131
def outgoing2202 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2202 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2202 : IsComplex outgoing2202 incoming2202 := by lin_cert using ()
-- DC2h5 s=5 t=129
def outgoing2203 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2203 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2203 : IsComplex outgoing2203 incoming2203 := by lin_cert using ()
-- DC2h5 s=5 t=130
def outgoing2204 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2204 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2204 : IsComplex outgoing2204 incoming2204 := by lin_cert using ()
-- DC2h5 s=5 t=131
def outgoing2205 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2205 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2205 : IsComplex outgoing2205 incoming2205 := by lin_cert using ()
-- DC2h5 s=5 t=132
def outgoing2206 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2206 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2206 : IsComplex outgoing2206 incoming2206 := by lin_cert using ()
-- DC2h5 s=6 t=128
def outgoing2207 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2207 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2207 : IsComplex outgoing2207 incoming2207 := by lin_cert using ()
-- DC2h5 s=6 t=129
def outgoing2208 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2208 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2208 : IsComplex outgoing2208 incoming2208 := by lin_cert using ()
-- DC2h5 s=6 t=130
def outgoing2209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming2209 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2209 : IsComplex outgoing2209 incoming2209 := by lin_cert using ()
-- DC2h5 s=6 t=131
def outgoing2210 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2210 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2210 : IsComplex outgoing2210 incoming2210 := by lin_cert using ()
-- DC2h5 s=6 t=132
def outgoing2211 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2211 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2211 : IsComplex outgoing2211 incoming2211 := by lin_cert using ()
-- DC2h5 s=6 t=133
def outgoing2212 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2212 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2212 : IsComplex outgoing2212 incoming2212 := by lin_cert using ()
-- DC2h5 s=7 t=130
def outgoing2213 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2213 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2213 : IsComplex outgoing2213 incoming2213 := by lin_cert using ()
-- DC2h5 s=7 t=131
def outgoing2214 : Matrix 4 4 := fun i j => ([true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2214 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2214 : IsComplex outgoing2214 incoming2214 := by lin_cert using ()
-- DC2h5 s=7 t=132
def outgoing2215 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, true, true, true, true] : List Bool)[i.val * 5 + j.val]!
def incoming2215 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2215 : IsComplex outgoing2215 incoming2215 := by lin_cert using ()
-- DC2h5 s=7 t=133
def outgoing2216 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming2216 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2216 : IsComplex outgoing2216 incoming2216 := by lin_cert using ()
-- DC2h5 s=7 t=134
def outgoing2217 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2217 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2217 : IsComplex outgoing2217 incoming2217 := by lin_cert using ()
-- DC2h5 s=8 t=130
def outgoing2218 : Matrix 7 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2218 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2218 : IsComplex outgoing2218 incoming2218 := by lin_cert using ()
-- DC2h5 s=8 t=132
def outgoing2219 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2219 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2219 : IsComplex outgoing2219 incoming2219 := by lin_cert using ()
-- DC2h5 s=8 t=133
def outgoing2220 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2220 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2220 : IsComplex outgoing2220 incoming2220 := by lin_cert using ()
-- DC2h5 s=8 t=134
def outgoing2221 : Matrix 7 8 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming2221 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2221 : IsComplex outgoing2221 incoming2221 := by lin_cert using ()
-- DC2h5 s=8 t=135
def outgoing2222 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2222 : Matrix 7 10 := fun i j => ([true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 10 + j.val]!
theorem complex2222 : IsComplex outgoing2222 incoming2222 := by lin_cert using ()
-- DC2h5 s=9 t=131
def outgoing2223 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2223 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2223 : IsComplex outgoing2223 incoming2223 := by lin_cert using ()
-- DC2h5 s=9 t=132
def outgoing2224 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2224 : Matrix 4 4 := fun i j => ([true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2224 : IsComplex outgoing2224 incoming2224 := by lin_cert using ()
-- DC2h5 s=9 t=133
def outgoing2225 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming2225 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, true, true, true, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2225 : IsComplex outgoing2225 incoming2225 := by lin_cert using ()
-- DC2h5 s=9 t=134
def outgoing2226 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2226 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2226 : IsComplex outgoing2226 incoming2226 := by lin_cert using ()
-- DC2h5 s=9 t=135
def outgoing2227 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming2227 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex2227 : IsComplex outgoing2227 incoming2227 := by lin_cert using ()
-- DC2h5 s=9 t=136
def outgoing2228 : Matrix 7 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming2228 : Matrix 9 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2228 : IsComplex outgoing2228 incoming2228 := by lin_cert using ()
-- DC2h5 s=10 t=133
def outgoing2229 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2229 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2229 : IsComplex outgoing2229 incoming2229 := by lin_cert using ()
-- DC2h5 s=10 t=134
def outgoing2230 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2230 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex2230 : IsComplex outgoing2230 incoming2230 := by lin_cert using ()
-- DC2h5 s=10 t=135
def outgoing2231 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2231 : Matrix 7 8 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex2231 : IsComplex outgoing2231 incoming2231 := by lin_cert using ()
-- DC2h5 s=10 t=136
def outgoing2232 : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2232 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2232 : IsComplex outgoing2232 incoming2232 := by lin_cert using ()
-- DC2h5 s=10 t=137
def outgoing2233 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2233 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2233 : IsComplex outgoing2233 incoming2233 := by lin_cert using ()
-- DC2h5 s=11 t=133
def outgoing2234 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2234 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2234 : IsComplex outgoing2234 incoming2234 := by lin_cert using ()
-- DC2h5 s=11 t=134
def outgoing2235 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2235 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2235 : IsComplex outgoing2235 incoming2235 := by lin_cert using ()
-- DC2h5 s=11 t=135
def outgoing2236 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2236 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2236 : IsComplex outgoing2236 incoming2236 := by lin_cert using ()
-- DC2h5 s=11 t=136
def outgoing2237 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2237 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2237 : IsComplex outgoing2237 incoming2237 := by lin_cert using ()
-- DC2h5 s=11 t=137
def outgoing2238 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2238 : Matrix 7 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex2238 : IsComplex outgoing2238 incoming2238 := by lin_cert using ()
-- DC2h5 s=12 t=134
def outgoing2239 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2239 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2239 : IsComplex outgoing2239 incoming2239 := by lin_cert using ()
-- DC2h5 s=12 t=135
def outgoing2240 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2240 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2240 : IsComplex outgoing2240 incoming2240 := by lin_cert using ()
-- DC2h5 s=12 t=136
def outgoing2241 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2241 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2241 : IsComplex outgoing2241 incoming2241 := by lin_cert using ()
-- DC2h5 s=12 t=137
def outgoing2242 : Matrix 4 8 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, true, true, false, false, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2242 : Matrix 8 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex2242 : IsComplex outgoing2242 incoming2242 := by lin_cert using ()
-- DC2h5 s=13 t=135
def outgoing2243 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2243 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2243 : IsComplex outgoing2243 incoming2243 := by lin_cert using ()
-- DC2h5 s=13 t=136
def outgoing2244 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2244 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2244 : IsComplex outgoing2244 incoming2244 := by lin_cert using ()
-- DC2h5 s=13 t=137
def outgoing2245 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2245 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2245 : IsComplex outgoing2245 incoming2245 := by lin_cert using ()
-- DC2h5 s=14 t=136
def outgoing2246 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2246 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2246 : IsComplex outgoing2246 incoming2246 := by lin_cert using ()
-- DC2h5 s=14 t=137
def outgoing2247 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2247 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2247 : IsComplex outgoing2247 incoming2247 := by lin_cert using ()
-- DC2h5 s=15 t=137
def outgoing2248 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2248 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2248 : IsComplex outgoing2248 incoming2248 := by lin_cert using ()
-- DC2h6 s=1 t=128
def outgoing2249 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2249 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2249 : IsComplex outgoing2249 incoming2249 := by lin_cert using ()
-- DC2h6 s=2 t=127
def outgoing2250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming2250 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2250 : IsComplex outgoing2250 incoming2250 := by lin_cert using ()
-- DC2h6 s=2 t=128
def outgoing2251 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming2251 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2251 : IsComplex outgoing2251 incoming2251 := by lin_cert using ()
-- DC2h6 s=2 t=129
def outgoing2252 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2252 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2252 : IsComplex outgoing2252 incoming2252 := by lin_cert using ()
-- DC2h6 s=3 t=129
def outgoing2253 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2253 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2253 : IsComplex outgoing2253 incoming2253 := by lin_cert using ()
-- DC2h6 s=3 t=130
def outgoing2254 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2254 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2254 : IsComplex outgoing2254 incoming2254 := by lin_cert using ()
-- DC2h6 s=4 t=129
def outgoing2255 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2255 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2255 : IsComplex outgoing2255 incoming2255 := by lin_cert using ()
-- DC2h6 s=4 t=130
def outgoing2256 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2256 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2256 : IsComplex outgoing2256 incoming2256 := by lin_cert using ()
-- DC2h6 s=4 t=131
def outgoing2257 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2257 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2257 : IsComplex outgoing2257 incoming2257 := by lin_cert using ()
-- DC2h6 s=5 t=130
def outgoing2258 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2258 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2258 : IsComplex outgoing2258 incoming2258 := by lin_cert using ()
-- DC2h6 s=5 t=131
def outgoing2259 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2259 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2259 : IsComplex outgoing2259 incoming2259 := by lin_cert using ()
-- DC2h6 s=5 t=132
def outgoing2260 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2260 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2260 : IsComplex outgoing2260 incoming2260 := by lin_cert using ()
-- DC2h6 s=6 t=130
def outgoing2261 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2261 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2261 : IsComplex outgoing2261 incoming2261 := by lin_cert using ()
-- DC2h6 s=6 t=131
def outgoing2262 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2262 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2262 : IsComplex outgoing2262 incoming2262 := by lin_cert using ()
-- DC2h6 s=6 t=132
def outgoing2263 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2263 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2263 : IsComplex outgoing2263 incoming2263 := by lin_cert using ()
-- DC2h6 s=6 t=133
def outgoing2264 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2264 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2264 : IsComplex outgoing2264 incoming2264 := by lin_cert using ()
-- DC2h6 s=7 t=131
def outgoing2265 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2265 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2265 : IsComplex outgoing2265 incoming2265 := by lin_cert using ()
-- DC2h6 s=7 t=132
def outgoing2266 : Matrix 6 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, true] : List Bool)[i.val * 5 + j.val]!
def incoming2266 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2266 : IsComplex outgoing2266 incoming2266 := by lin_cert using ()
-- DC2h6 s=7 t=133
def outgoing2267 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2267 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2267 : IsComplex outgoing2267 incoming2267 := by lin_cert using ()
-- DC2h6 s=7 t=134
def outgoing2268 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2268 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2268 : IsComplex outgoing2268 incoming2268 := by lin_cert using ()
-- DC2h6 s=8 t=130
def outgoing2269 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2269 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2269 : IsComplex outgoing2269 incoming2269 := by lin_cert using ()
-- DC2h6 s=8 t=131
def outgoing2270 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2270 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2270 : IsComplex outgoing2270 incoming2270 := by lin_cert using ()
-- DC2h6 s=8 t=132
def outgoing2271 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2271 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2271 : IsComplex outgoing2271 incoming2271 := by lin_cert using ()
-- DC2h6 s=8 t=133
def outgoing2272 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2272 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2272 : IsComplex outgoing2272 incoming2272 := by lin_cert using ()
-- DC2h6 s=8 t=134
def outgoing2273 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming2273 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2273 : IsComplex outgoing2273 incoming2273 := by lin_cert using ()
-- DC2h6 s=8 t=135
def outgoing2274 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2274 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex2274 : IsComplex outgoing2274 incoming2274 := by lin_cert using ()
-- DC2h6 s=9 t=132
def outgoing2275 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2275 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2275 : IsComplex outgoing2275 incoming2275 := by lin_cert using ()
-- DC2h6 s=9 t=133
def outgoing2276 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2276 : Matrix 6 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2276 : IsComplex outgoing2276 incoming2276 := by lin_cert using ()
-- DC2h6 s=9 t=134
def outgoing2277 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2277 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2277 : IsComplex outgoing2277 incoming2277 := by lin_cert using ()
-- DC2h6 s=9 t=135
def outgoing2278 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming2278 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex2278 : IsComplex outgoing2278 incoming2278 := by lin_cert using ()
-- DC2h6 s=9 t=136
def outgoing2279 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2279 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2279 : IsComplex outgoing2279 incoming2279 := by lin_cert using ()
-- DC2h6 s=10 t=132
def outgoing2280 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2280 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2280 : IsComplex outgoing2280 incoming2280 := by lin_cert using ()
-- DC2h6 s=10 t=133
def outgoing2281 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2281 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2281 : IsComplex outgoing2281 incoming2281 := by lin_cert using ()
-- DC2h6 s=10 t=134
def outgoing2282 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2282 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2282 : IsComplex outgoing2282 incoming2282 := by lin_cert using ()
-- DC2h6 s=10 t=135
def outgoing2283 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2283 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex2283 : IsComplex outgoing2283 incoming2283 := by lin_cert using ()
-- DC2h6 s=10 t=136
def outgoing2284 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2284 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2284 : IsComplex outgoing2284 incoming2284 := by lin_cert using ()
-- DC2h6 s=10 t=137
def outgoing2285 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2285 : Matrix 4 7 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2285 : IsComplex outgoing2285 incoming2285 := by lin_cert using ()
-- DC2h6 s=11 t=133
def outgoing2286 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2286 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2286 : IsComplex outgoing2286 incoming2286 := by lin_cert using ()
-- DC2h6 s=11 t=134
def outgoing2287 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2287 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2287 : IsComplex outgoing2287 incoming2287 := by lin_cert using ()
-- DC2h6 s=11 t=135
def outgoing2288 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2288 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2288 : IsComplex outgoing2288 incoming2288 := by lin_cert using ()
-- DC2h6 s=11 t=136
def outgoing2289 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2289 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2289 : IsComplex outgoing2289 incoming2289 := by lin_cert using ()
-- DC2h6 s=11 t=137
def outgoing2290 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2290 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2290 : IsComplex outgoing2290 incoming2290 := by lin_cert using ()
-- DC2h6 s=11 t=138
def outgoing2291 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2291 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2291 : IsComplex outgoing2291 incoming2291 := by lin_cert using ()
-- DC2h6 s=12 t=134
def outgoing2292 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2292 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2292 : IsComplex outgoing2292 incoming2292 := by lin_cert using ()
-- DC2h6 s=12 t=135
def outgoing2293 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2293 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2293 : IsComplex outgoing2293 incoming2293 := by lin_cert using ()
-- DC2h6 s=12 t=136
def outgoing2294 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2294 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2294 : IsComplex outgoing2294 incoming2294 := by lin_cert using ()
-- DC2h6 s=12 t=137
def outgoing2295 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2295 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2295 : IsComplex outgoing2295 incoming2295 := by lin_cert using ()
-- DC2h6 s=12 t=138
def outgoing2296 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2296 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2296 : IsComplex outgoing2296 incoming2296 := by lin_cert using ()
-- DC2h6 s=12 t=139
def outgoing2297 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2297 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2297 : IsComplex outgoing2297 incoming2297 := by lin_cert using ()
-- DC2h6 s=13 t=135
def outgoing2298 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2298 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2298 : IsComplex outgoing2298 incoming2298 := by lin_cert using ()
-- DC2h6 s=13 t=136
def outgoing2299 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2299 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2299 : IsComplex outgoing2299 incoming2299 := by lin_cert using ()
end ReleaseComplex22
