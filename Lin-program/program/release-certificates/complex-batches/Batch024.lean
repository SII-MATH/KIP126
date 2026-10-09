import LinearCertificates.Checker
namespace ReleaseComplex24
open LinearCertificates LinProgramCertificates
-- S0 s=3 t=130
def outgoing2400 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming2400 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2400 : IsComplex outgoing2400 incoming2400 := by lin_cert using ()
-- S0 s=4 t=130
def outgoing2401 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2401 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2401 : IsComplex outgoing2401 incoming2401 := by lin_cert using ()
-- S0 s=4 t=131
def outgoing2402 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2402 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2402 : IsComplex outgoing2402 incoming2402 := by lin_cert using ()
-- S0 s=5 t=130
def outgoing2403 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2403 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2403 : IsComplex outgoing2403 incoming2403 := by lin_cert using ()
-- S0 s=5 t=131
def outgoing2404 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2404 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2404 : IsComplex outgoing2404 incoming2404 := by lin_cert using ()
-- S0 s=5 t=132
def outgoing2405 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2405 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2405 : IsComplex outgoing2405 incoming2405 := by lin_cert using ()
-- S0 s=6 t=130
def outgoing2406 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming2406 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2406 : IsComplex outgoing2406 incoming2406 := by lin_cert using ()
-- S0 s=6 t=131
def outgoing2407 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2407 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2407 : IsComplex outgoing2407 incoming2407 := by lin_cert using ()
-- S0 s=6 t=132
def outgoing2408 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2408 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2408 : IsComplex outgoing2408 incoming2408 := by lin_cert using ()
-- S0 s=6 t=133
def outgoing2409 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2409 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2409 : IsComplex outgoing2409 incoming2409 := by lin_cert using ()
-- S0 s=7 t=131
def outgoing2410 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2410 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2410 : IsComplex outgoing2410 incoming2410 := by lin_cert using ()
-- S0 s=7 t=132
def outgoing2411 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming2411 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2411 : IsComplex outgoing2411 incoming2411 := by lin_cert using ()
-- S0 s=7 t=133
def outgoing2412 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2412 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2412 : IsComplex outgoing2412 incoming2412 := by lin_cert using ()
-- S0 s=7 t=134
def outgoing2413 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2413 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2413 : IsComplex outgoing2413 incoming2413 := by lin_cert using ()
-- S0 s=8 t=130
def outgoing2414 : Matrix 5 1 := fun i j => ([false, false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2414 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex2414 : IsComplex outgoing2414 incoming2414 := by lin_cert using ()
-- S0 s=8 t=132
def outgoing2415 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2415 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex2415 : IsComplex outgoing2415 incoming2415 := by lin_cert using ()
-- S0 s=8 t=133
def outgoing2416 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2416 : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2416 : IsComplex outgoing2416 incoming2416 := by lin_cert using ()
-- S0 s=8 t=134
def outgoing2417 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2417 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2417 : IsComplex outgoing2417 incoming2417 := by lin_cert using ()
-- S0 s=8 t=135
def outgoing2418 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2418 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex2418 : IsComplex outgoing2418 incoming2418 := by lin_cert using ()
-- S0 s=9 t=132
def outgoing2419 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2419 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2419 : IsComplex outgoing2419 incoming2419 := by lin_cert using ()
-- S0 s=9 t=133
def outgoing2420 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2420 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2420 : IsComplex outgoing2420 incoming2420 := by lin_cert using ()
-- S0 s=9 t=134
def outgoing2421 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2421 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2421 : IsComplex outgoing2421 incoming2421 := by lin_cert using ()
-- S0 s=9 t=135
def outgoing2422 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming2422 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2422 : IsComplex outgoing2422 incoming2422 := by lin_cert using ()
-- S0 s=9 t=136
def outgoing2423 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming2423 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2423 : IsComplex outgoing2423 incoming2423 := by lin_cert using ()
-- S0 s=10 t=133
def outgoing2424 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2424 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2424 : IsComplex outgoing2424 incoming2424 := by lin_cert using ()
-- S0 s=10 t=134
def outgoing2425 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2425 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2425 : IsComplex outgoing2425 incoming2425 := by lin_cert using ()
-- S0 s=10 t=135
def outgoing2426 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2426 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2426 : IsComplex outgoing2426 incoming2426 := by lin_cert using ()
-- S0 s=10 t=136
def outgoing2427 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2427 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2427 : IsComplex outgoing2427 incoming2427 := by lin_cert using ()
-- S0 s=10 t=137
def outgoing2428 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2428 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex2428 : IsComplex outgoing2428 incoming2428 := by lin_cert using ()
-- S0 s=11 t=133
def outgoing2429 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming2429 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2429 : IsComplex outgoing2429 incoming2429 := by lin_cert using ()
-- S0 s=11 t=134
def outgoing2430 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2430 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2430 : IsComplex outgoing2430 incoming2430 := by lin_cert using ()
-- S0 s=11 t=135
def outgoing2431 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2431 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2431 : IsComplex outgoing2431 incoming2431 := by lin_cert using ()
-- S0 s=11 t=136
def outgoing2432 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2432 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2432 : IsComplex outgoing2432 incoming2432 := by lin_cert using ()
-- S0 s=11 t=137
def outgoing2433 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2433 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2433 : IsComplex outgoing2433 incoming2433 := by lin_cert using ()
-- S0 s=11 t=138
def outgoing2434 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2434 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2434 : IsComplex outgoing2434 incoming2434 := by lin_cert using ()
-- S0 s=12 t=134
def outgoing2435 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2435 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2435 : IsComplex outgoing2435 incoming2435 := by lin_cert using ()
-- S0 s=12 t=135
def outgoing2436 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2436 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2436 : IsComplex outgoing2436 incoming2436 := by lin_cert using ()
-- S0 s=12 t=136
def outgoing2437 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2437 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2437 : IsComplex outgoing2437 incoming2437 := by lin_cert using ()
-- S0 s=12 t=137
def outgoing2438 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2438 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2438 : IsComplex outgoing2438 incoming2438 := by lin_cert using ()
-- S0 s=12 t=138
def outgoing2439 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2439 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2439 : IsComplex outgoing2439 incoming2439 := by lin_cert using ()
-- S0 s=12 t=139
def outgoing2440 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2440 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2440 : IsComplex outgoing2440 incoming2440 := by lin_cert using ()
-- S0 s=13 t=135
def outgoing2441 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2441 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2441 : IsComplex outgoing2441 incoming2441 := by lin_cert using ()
-- S0 s=13 t=136
def outgoing2442 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2442 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2442 : IsComplex outgoing2442 incoming2442 := by lin_cert using ()
-- S0 s=13 t=137
def outgoing2443 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2443 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2443 : IsComplex outgoing2443 incoming2443 := by lin_cert using ()
-- S0 s=13 t=138
def outgoing2444 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, true, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2444 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2444 : IsComplex outgoing2444 incoming2444 := by lin_cert using ()
-- S0 s=13 t=139
def outgoing2445 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2445 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2445 : IsComplex outgoing2445 incoming2445 := by lin_cert using ()
-- S0 s=13 t=140
def outgoing2446 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2446 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2446 : IsComplex outgoing2446 incoming2446 := by lin_cert using ()
-- S0 s=14 t=136
def outgoing2447 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2447 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2447 : IsComplex outgoing2447 incoming2447 := by lin_cert using ()
-- S0 s=14 t=137
def outgoing2448 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2448 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2448 : IsComplex outgoing2448 incoming2448 := by lin_cert using ()
-- S0 s=14 t=138
def outgoing2449 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2449 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2449 : IsComplex outgoing2449 incoming2449 := by lin_cert using ()
-- S0 s=14 t=139
def outgoing2450 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming2450 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2450 : IsComplex outgoing2450 incoming2450 := by lin_cert using ()
-- S0 s=14 t=140
def outgoing2451 : Matrix 2 4 := fun i j => ([true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2451 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2451 : IsComplex outgoing2451 incoming2451 := by lin_cert using ()
-- S0 s=14 t=141
def outgoing2452 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2452 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2452 : IsComplex outgoing2452 incoming2452 := by lin_cert using ()
-- S0 s=15 t=137
def outgoing2453 : Matrix 3 4 := fun i j => ([true, true, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2453 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2453 : IsComplex outgoing2453 incoming2453 := by lin_cert using ()
-- S0 s=15 t=138
def outgoing2454 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2454 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2454 : IsComplex outgoing2454 incoming2454 := by lin_cert using ()
-- S0 s=15 t=139
def outgoing2455 : Matrix 2 4 := fun i j => ([false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2455 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, true, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2455 : IsComplex outgoing2455 incoming2455 := by lin_cert using ()
-- S0 s=15 t=140
def outgoing2456 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming2456 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2456 : IsComplex outgoing2456 incoming2456 := by lin_cert using ()
-- S0 s=15 t=141
def outgoing2457 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2457 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2457 : IsComplex outgoing2457 incoming2457 := by lin_cert using ()
-- S0 s=15 t=142
def outgoing2458 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2458 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex2458 : IsComplex outgoing2458 incoming2458 := by lin_cert using ()
-- S0 s=16 t=138
def outgoing2459 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming2459 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2459 : IsComplex outgoing2459 incoming2459 := by lin_cert using ()
-- S0 s=16 t=139
def outgoing2460 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2460 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2460 : IsComplex outgoing2460 incoming2460 := by lin_cert using ()
-- S0 s=16 t=140
def outgoing2461 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2461 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2461 : IsComplex outgoing2461 incoming2461 := by lin_cert using ()
-- S0 s=16 t=141
def outgoing2462 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2462 : Matrix 2 4 := fun i j => ([true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2462 : IsComplex outgoing2462 incoming2462 := by lin_cert using ()
-- S0 s=16 t=142
def outgoing2463 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2463 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2463 : IsComplex outgoing2463 incoming2463 := by lin_cert using ()
-- S0 s=16 t=143
def outgoing2464 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2464 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex2464 : IsComplex outgoing2464 incoming2464 := by lin_cert using ()
-- S0 s=17 t=139
def outgoing2465 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2465 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2465 : IsComplex outgoing2465 incoming2465 := by lin_cert using ()
-- S0 s=17 t=140
def outgoing2466 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2466 : Matrix 2 4 := fun i j => ([false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2466 : IsComplex outgoing2466 incoming2466 := by lin_cert using ()
-- S0 s=17 t=141
def outgoing2467 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2467 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2467 : IsComplex outgoing2467 incoming2467 := by lin_cert using ()
-- S0 s=17 t=142
def outgoing2468 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming2468 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2468 : IsComplex outgoing2468 incoming2468 := by lin_cert using ()
-- S0 s=17 t=143
def outgoing2469 : Matrix 2 3 := fun i j => ([false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2469 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2469 : IsComplex outgoing2469 incoming2469 := by lin_cert using ()
-- S0 s=17 t=144
def outgoing2470 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2470 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2470 : IsComplex outgoing2470 incoming2470 := by lin_cert using ()
-- S0 s=18 t=140
def outgoing2471 : Matrix 1 2 := fun i j => ([false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2471 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2471 : IsComplex outgoing2471 incoming2471 := by lin_cert using ()
-- S0 s=18 t=141
def outgoing2472 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming2472 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2472 : IsComplex outgoing2472 incoming2472 := by lin_cert using ()
-- S0 s=18 t=142
def outgoing2473 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2473 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2473 : IsComplex outgoing2473 incoming2473 := by lin_cert using ()
-- S0 s=18 t=143
def outgoing2474 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming2474 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2474 : IsComplex outgoing2474 incoming2474 := by lin_cert using ()
-- S0 s=18 t=144
def outgoing2475 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2475 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2475 : IsComplex outgoing2475 incoming2475 := by lin_cert using ()
-- S0 s=18 t=145
def outgoing2476 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2476 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2476 : IsComplex outgoing2476 incoming2476 := by lin_cert using ()
-- S0 s=19 t=141
def outgoing2477 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2477 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2477 : IsComplex outgoing2477 incoming2477 := by lin_cert using ()
-- S0 s=19 t=142
def outgoing2478 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2478 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2478 : IsComplex outgoing2478 incoming2478 := by lin_cert using ()
-- S0 s=19 t=144
def outgoing2479 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2479 : Matrix 2 3 := fun i j => ([false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2479 : IsComplex outgoing2479 incoming2479 := by lin_cert using ()
-- S0 s=19 t=145
def outgoing2480 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2480 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2480 : IsComplex outgoing2480 incoming2480 := by lin_cert using ()
-- S0 s=19 t=146
def outgoing2481 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2481 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex2481 : IsComplex outgoing2481 incoming2481 := by lin_cert using ()
-- S0 s=20 t=142
def outgoing2482 : Matrix 3 2 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming2482 : Matrix 2 3 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2482 : IsComplex outgoing2482 incoming2482 := by lin_cert using ()
-- S0 s=20 t=143
def outgoing2483 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming2483 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2483 : IsComplex outgoing2483 incoming2483 := by lin_cert using ()
-- S0 s=20 t=145
def outgoing2484 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2484 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2484 : IsComplex outgoing2484 incoming2484 := by lin_cert using ()
-- S0 s=20 t=146
def outgoing2485 : Matrix 2 4 := fun i j => ([false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2485 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2485 : IsComplex outgoing2485 incoming2485 := by lin_cert using ()
-- S0 s=20 t=147
def outgoing2486 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2486 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2486 : IsComplex outgoing2486 incoming2486 := by lin_cert using ()
-- S0 s=21 t=143
def outgoing2487 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2487 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2487 : IsComplex outgoing2487 incoming2487 := by lin_cert using ()
-- S0 s=21 t=145
def outgoing2488 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming2488 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2488 : IsComplex outgoing2488 incoming2488 := by lin_cert using ()
-- S0 s=21 t=146
def outgoing2489 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val * 4 + j.val]!
def incoming2489 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2489 : IsComplex outgoing2489 incoming2489 := by lin_cert using ()
-- S0 s=21 t=147
def outgoing2490 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2490 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2490 : IsComplex outgoing2490 incoming2490 := by lin_cert using ()
-- S0 s=21 t=148
def outgoing2491 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2491 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2491 : IsComplex outgoing2491 incoming2491 := by lin_cert using ()
-- S0 s=22 t=144
def outgoing2492 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2492 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex2492 : IsComplex outgoing2492 incoming2492 := by lin_cert using ()
-- S0 s=22 t=146
def outgoing2493 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming2493 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2493 : IsComplex outgoing2493 incoming2493 := by lin_cert using ()
-- S0 s=22 t=147
def outgoing2494 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2494 : Matrix 2 4 := fun i j => ([false, false, true, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex2494 : IsComplex outgoing2494 incoming2494 := by lin_cert using ()
-- S0 s=22 t=148
def outgoing2495 : Matrix 4 1 := fun i j => ([false, true, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2495 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2495 : IsComplex outgoing2495 incoming2495 := by lin_cert using ()
-- S0 s=22 t=149
def outgoing2496 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2496 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2496 : IsComplex outgoing2496 incoming2496 := by lin_cert using ()
-- S0 s=23 t=145
def outgoing2497 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2497 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2497 : IsComplex outgoing2497 incoming2497 := by lin_cert using ()
-- S0 s=23 t=146
def outgoing2498 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2498 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2498 : IsComplex outgoing2498 incoming2498 := by lin_cert using ()
-- S0 s=23 t=148
def outgoing2499 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2499 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex2499 : IsComplex outgoing2499 incoming2499 := by lin_cert using ()
end ReleaseComplex24
