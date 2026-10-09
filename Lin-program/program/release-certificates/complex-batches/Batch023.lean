import LinearCertificates.Checker
namespace ReleaseComplex23
open LinearCertificates LinProgramCertificates
-- DC2h6 s=13 t=137
def outgoing2300 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2300 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2300 : IsComplex outgoing2300 incoming2300 := by lin_cert using ()
-- DC2h6 s=13 t=138
def outgoing2301 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2301 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2301 : IsComplex outgoing2301 incoming2301 := by lin_cert using ()
-- DC2h6 s=13 t=139
def outgoing2302 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2302 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2302 : IsComplex outgoing2302 incoming2302 := by lin_cert using ()
-- DC2h6 s=13 t=140
def outgoing2303 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2303 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2303 : IsComplex outgoing2303 incoming2303 := by lin_cert using ()
-- DC2h6 s=14 t=136
def outgoing2304 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2304 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2304 : IsComplex outgoing2304 incoming2304 := by lin_cert using ()
-- DC2h6 s=14 t=137
def outgoing2305 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2305 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2305 : IsComplex outgoing2305 incoming2305 := by lin_cert using ()
-- DC2h6 s=14 t=138
def outgoing2306 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2306 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex2306 : IsComplex outgoing2306 incoming2306 := by lin_cert using ()
-- DC2h6 s=14 t=139
def outgoing2307 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2307 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2307 : IsComplex outgoing2307 incoming2307 := by lin_cert using ()
-- DC2h6 s=14 t=140
def outgoing2308 : Matrix 2 4 := fun i j => ([false, true, false, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2308 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2308 : IsComplex outgoing2308 incoming2308 := by lin_cert using ()
-- DC2h6 s=14 t=141
def outgoing2309 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2309 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2309 : IsComplex outgoing2309 incoming2309 := by lin_cert using ()
-- DC2h6 s=15 t=137
def outgoing2310 : Matrix 3 5 := fun i j => ([true, true, true, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2310 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2310 : IsComplex outgoing2310 incoming2310 := by lin_cert using ()
-- DC2h6 s=15 t=138
def outgoing2311 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2311 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2311 : IsComplex outgoing2311 incoming2311 := by lin_cert using ()
-- DC2h6 s=15 t=139
def outgoing2312 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2312 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2312 : IsComplex outgoing2312 incoming2312 := by lin_cert using ()
-- DC2h6 s=15 t=140
def outgoing2313 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2313 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2313 : IsComplex outgoing2313 incoming2313 := by lin_cert using ()
-- DC2h6 s=15 t=141
def outgoing2314 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2314 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2314 : IsComplex outgoing2314 incoming2314 := by lin_cert using ()
-- DC2h6 s=15 t=142
def outgoing2315 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2315 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2315 : IsComplex outgoing2315 incoming2315 := by lin_cert using ()
-- DC2h6 s=16 t=138
def outgoing2316 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2316 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2316 : IsComplex outgoing2316 incoming2316 := by lin_cert using ()
-- DC2h6 s=16 t=139
def outgoing2317 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2317 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2317 : IsComplex outgoing2317 incoming2317 := by lin_cert using ()
-- DC2h6 s=16 t=140
def outgoing2318 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2318 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2318 : IsComplex outgoing2318 incoming2318 := by lin_cert using ()
-- DC2h6 s=16 t=141
def outgoing2319 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2319 : Matrix 2 4 := fun i j => ([false, true, false, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2319 : IsComplex outgoing2319 incoming2319 := by lin_cert using ()
-- DC2h6 s=16 t=142
def outgoing2320 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2320 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2320 : IsComplex outgoing2320 incoming2320 := by lin_cert using ()
-- DC2h6 s=16 t=143
def outgoing2321 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2321 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2321 : IsComplex outgoing2321 incoming2321 := by lin_cert using ()
-- DC2h6 s=17 t=139
def outgoing2322 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2322 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2322 : IsComplex outgoing2322 incoming2322 := by lin_cert using ()
-- DC2h6 s=17 t=140
def outgoing2323 : Matrix 2 3 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2323 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2323 : IsComplex outgoing2323 incoming2323 := by lin_cert using ()
-- DC2h6 s=17 t=141
def outgoing2324 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2324 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2324 : IsComplex outgoing2324 incoming2324 := by lin_cert using ()
-- DC2h6 s=17 t=142
def outgoing2325 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2325 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2325 : IsComplex outgoing2325 incoming2325 := by lin_cert using ()
-- DC2h6 s=17 t=143
def outgoing2326 : Matrix 1 4 := fun i j => ([false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2326 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2326 : IsComplex outgoing2326 incoming2326 := by lin_cert using ()
-- DC2h6 s=17 t=144
def outgoing2327 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2327 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2327 : IsComplex outgoing2327 incoming2327 := by lin_cert using ()
-- DC2h6 s=18 t=140
def outgoing2328 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2328 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2328 : IsComplex outgoing2328 incoming2328 := by lin_cert using ()
-- DC2h6 s=18 t=141
def outgoing2329 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2329 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2329 : IsComplex outgoing2329 incoming2329 := by lin_cert using ()
-- DC2h6 s=18 t=142
def outgoing2330 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2330 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2330 : IsComplex outgoing2330 incoming2330 := by lin_cert using ()
-- DC2h6 s=18 t=143
def outgoing2331 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming2331 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2331 : IsComplex outgoing2331 incoming2331 := by lin_cert using ()
-- DC2h6 s=18 t=144
def outgoing2332 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2332 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2332 : IsComplex outgoing2332 incoming2332 := by lin_cert using ()
-- DC2h6 s=19 t=141
def outgoing2333 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2333 : Matrix 2 3 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2333 : IsComplex outgoing2333 incoming2333 := by lin_cert using ()
-- DC2h6 s=19 t=142
def outgoing2334 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2334 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2334 : IsComplex outgoing2334 incoming2334 := by lin_cert using ()
-- DC2h6 s=19 t=143
def outgoing2335 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2335 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2335 : IsComplex outgoing2335 incoming2335 := by lin_cert using ()
-- DC2h6 s=19 t=144
def outgoing2336 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2336 : Matrix 1 4 := fun i j => ([false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2336 : IsComplex outgoing2336 incoming2336 := by lin_cert using ()
-- DC2h6 s=20 t=142
def outgoing2337 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2337 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2337 : IsComplex outgoing2337 incoming2337 := by lin_cert using ()
-- DC2h6 s=20 t=143
def outgoing2338 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2338 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2338 : IsComplex outgoing2338 incoming2338 := by lin_cert using ()
-- DC2h6 s=21 t=143
def outgoing2339 : Matrix 1 5 := fun i j => ([false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2339 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2339 : IsComplex outgoing2339 incoming2339 := by lin_cert using ()
-- DC2h6 s=21 t=144
def outgoing2340 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2340 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2340 : IsComplex outgoing2340 incoming2340 := by lin_cert using ()
-- DC2h6 s=22 t=144
def outgoing2341 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2341 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2341 : IsComplex outgoing2341 incoming2341 := by lin_cert using ()
-- Joker s=4 t=130
def outgoing2342 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2342 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2342 : IsComplex outgoing2342 incoming2342 := by lin_cert using ()
-- Joker s=4 t=131
def outgoing2343 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2343 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2343 : IsComplex outgoing2343 incoming2343 := by lin_cert using ()
-- Joker s=5 t=130
def outgoing2344 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2344 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2344 : IsComplex outgoing2344 incoming2344 := by lin_cert using ()
-- Joker s=5 t=132
def outgoing2345 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2345 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2345 : IsComplex outgoing2345 incoming2345 := by lin_cert using ()
-- Joker s=6 t=130
def outgoing2346 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2346 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2346 : IsComplex outgoing2346 incoming2346 := by lin_cert using ()
-- Joker s=6 t=131
def outgoing2347 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2347 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2347 : IsComplex outgoing2347 incoming2347 := by lin_cert using ()
-- Joker s=6 t=132
def outgoing2348 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2348 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2348 : IsComplex outgoing2348 incoming2348 := by lin_cert using ()
-- Joker s=6 t=133
def outgoing2349 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2349 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2349 : IsComplex outgoing2349 incoming2349 := by lin_cert using ()
-- Joker s=7 t=129
def outgoing2350 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2350 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2350 : IsComplex outgoing2350 incoming2350 := by lin_cert using ()
-- Joker s=7 t=130
def outgoing2351 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2351 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2351 : IsComplex outgoing2351 incoming2351 := by lin_cert using ()
-- Joker s=7 t=131
def outgoing2352 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2352 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2352 : IsComplex outgoing2352 incoming2352 := by lin_cert using ()
-- Joker s=7 t=132
def outgoing2353 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2353 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2353 : IsComplex outgoing2353 incoming2353 := by lin_cert using ()
-- Joker s=7 t=133
def outgoing2354 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2354 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2354 : IsComplex outgoing2354 incoming2354 := by lin_cert using ()
-- Joker s=7 t=134
def outgoing2355 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2355 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2355 : IsComplex outgoing2355 incoming2355 := by lin_cert using ()
-- Joker s=8 t=130
def outgoing2356 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2356 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2356 : IsComplex outgoing2356 incoming2356 := by lin_cert using ()
-- Joker s=8 t=131
def outgoing2357 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2357 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2357 : IsComplex outgoing2357 incoming2357 := by lin_cert using ()
-- Joker s=8 t=132
def outgoing2358 : Matrix 6 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2358 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2358 : IsComplex outgoing2358 incoming2358 := by lin_cert using ()
-- Joker s=8 t=133
def outgoing2359 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2359 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2359 : IsComplex outgoing2359 incoming2359 := by lin_cert using ()
-- Joker s=8 t=134
def outgoing2360 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming2360 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2360 : IsComplex outgoing2360 incoming2360 := by lin_cert using ()
-- Joker s=9 t=131
def outgoing2361 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2361 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2361 : IsComplex outgoing2361 incoming2361 := by lin_cert using ()
-- Joker s=9 t=132
def outgoing2362 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2362 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2362 : IsComplex outgoing2362 incoming2362 := by lin_cert using ()
-- Joker s=9 t=133
def outgoing2363 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2363 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2363 : IsComplex outgoing2363 incoming2363 := by lin_cert using ()
-- Joker s=9 t=134
def outgoing2364 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming2364 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2364 : IsComplex outgoing2364 incoming2364 := by lin_cert using ()
-- Joker s=10 t=132
def outgoing2365 : Matrix 4 3 := fun i j => ([false, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2365 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2365 : IsComplex outgoing2365 incoming2365 := by lin_cert using ()
-- Joker s=10 t=133
def outgoing2366 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2366 : Matrix 6 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2366 : IsComplex outgoing2366 incoming2366 := by lin_cert using ()
-- Joker s=10 t=134
def outgoing2367 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2367 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2367 : IsComplex outgoing2367 incoming2367 := by lin_cert using ()
-- Joker s=11 t=133
def outgoing2368 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2368 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2368 : IsComplex outgoing2368 incoming2368 := by lin_cert using ()
-- Joker s=11 t=134
def outgoing2369 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2369 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2369 : IsComplex outgoing2369 incoming2369 := by lin_cert using ()
-- Joker s=12 t=134
def outgoing2370 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2370 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2370 : IsComplex outgoing2370 incoming2370 := by lin_cert using ()
-- RP1_4 s=4 t=131
def outgoing2371 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2371 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2371 : IsComplex outgoing2371 incoming2371 := by lin_cert using ()
-- RP1_4 s=5 t=131
def outgoing2372 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2372 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2372 : IsComplex outgoing2372 incoming2372 := by lin_cert using ()
-- RP1_4 s=6 t=131
def outgoing2373 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2373 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2373 : IsComplex outgoing2373 incoming2373 := by lin_cert using ()
-- RP1_4 s=6 t=132
def outgoing2374 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2374 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2374 : IsComplex outgoing2374 incoming2374 := by lin_cert using ()
-- RP1_4 s=6 t=133
def outgoing2375 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2375 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2375 : IsComplex outgoing2375 incoming2375 := by lin_cert using ()
-- RP1_4 s=7 t=129
def outgoing2376 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2376 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2376 : IsComplex outgoing2376 incoming2376 := by lin_cert using ()
-- RP1_4 s=7 t=130
def outgoing2377 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2377 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2377 : IsComplex outgoing2377 incoming2377 := by lin_cert using ()
-- RP1_4 s=7 t=131
def outgoing2378 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming2378 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2378 : IsComplex outgoing2378 incoming2378 := by lin_cert using ()
-- RP1_4 s=7 t=132
def outgoing2379 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2379 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2379 : IsComplex outgoing2379 incoming2379 := by lin_cert using ()
-- RP1_4 s=7 t=133
def outgoing2380 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2380 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2380 : IsComplex outgoing2380 incoming2380 := by lin_cert using ()
-- RP1_4 s=7 t=134
def outgoing2381 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2381 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2381 : IsComplex outgoing2381 incoming2381 := by lin_cert using ()
-- RP1_4 s=8 t=130
def outgoing2382 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2382 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2382 : IsComplex outgoing2382 incoming2382 := by lin_cert using ()
-- RP1_4 s=8 t=131
def outgoing2383 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2383 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2383 : IsComplex outgoing2383 incoming2383 := by lin_cert using ()
-- RP1_4 s=8 t=132
def outgoing2384 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2384 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2384 : IsComplex outgoing2384 incoming2384 := by lin_cert using ()
-- RP1_4 s=8 t=133
def outgoing2385 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2385 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2385 : IsComplex outgoing2385 incoming2385 := by lin_cert using ()
-- RP1_4 s=8 t=134
def outgoing2386 : Matrix 7 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2386 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2386 : IsComplex outgoing2386 incoming2386 := by lin_cert using ()
-- RP1_4 s=9 t=131
def outgoing2387 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2387 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2387 : IsComplex outgoing2387 incoming2387 := by lin_cert using ()
-- RP1_4 s=9 t=132
def outgoing2388 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2388 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2388 : IsComplex outgoing2388 incoming2388 := by lin_cert using ()
-- RP1_4 s=9 t=133
def outgoing2389 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2389 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2389 : IsComplex outgoing2389 incoming2389 := by lin_cert using ()
-- RP1_4 s=9 t=134
def outgoing2390 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2390 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2390 : IsComplex outgoing2390 incoming2390 := by lin_cert using ()
-- RP1_4 s=10 t=132
def outgoing2391 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2391 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2391 : IsComplex outgoing2391 incoming2391 := by lin_cert using ()
-- RP1_4 s=10 t=133
def outgoing2392 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2392 : Matrix 5 4 := fun i j => ([false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2392 : IsComplex outgoing2392 incoming2392 := by lin_cert using ()
-- RP1_4 s=10 t=134
def outgoing2393 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2393 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2393 : IsComplex outgoing2393 incoming2393 := by lin_cert using ()
-- RP1_4 s=11 t=133
def outgoing2394 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2394 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2394 : IsComplex outgoing2394 incoming2394 := by lin_cert using ()
-- RP1_4 s=11 t=134
def outgoing2395 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2395 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2395 : IsComplex outgoing2395 incoming2395 := by lin_cert using ()
-- RP1_4 s=12 t=134
def outgoing2396 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2396 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2396 : IsComplex outgoing2396 incoming2396 := by lin_cert using ()
-- S0 s=1 t=128
def outgoing2397 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2397 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex2397 : IsComplex outgoing2397 incoming2397 := by lin_cert using ()
-- S0 s=2 t=129
def outgoing2398 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2398 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2398 : IsComplex outgoing2398 incoming2398 := by lin_cert using ()
-- S0 s=3 t=129
def outgoing2399 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2399 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2399 : IsComplex outgoing2399 incoming2399 := by lin_cert using ()
end ReleaseComplex23
