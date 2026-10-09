import LinearCertificates.Checker
namespace ReleaseComplex4
open LinearCertificates LinProgramCertificates
-- C2h6 s=10 t=136
def outgoing400 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming400 : Matrix 7 6 := fun i j => ([false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex400 : IsComplex outgoing400 incoming400 := by lin_cert using ()
-- C2h6 s=10 t=137
def outgoing401 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming401 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex401 : IsComplex outgoing401 incoming401 := by lin_cert using ()
-- C2h6 s=11 t=134
def outgoing402 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming402 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex402 : IsComplex outgoing402 incoming402 := by lin_cert using ()
-- C2h6 s=11 t=135
def outgoing403 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming403 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex403 : IsComplex outgoing403 incoming403 := by lin_cert using ()
-- C2h6 s=11 t=136
def outgoing404 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming404 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex404 : IsComplex outgoing404 incoming404 := by lin_cert using ()
-- C2h6 s=11 t=137
def outgoing405 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming405 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex405 : IsComplex outgoing405 incoming405 := by lin_cert using ()
-- C2h6 s=11 t=138
def outgoing406 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming406 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex406 : IsComplex outgoing406 incoming406 := by lin_cert using ()
-- C2h6 s=12 t=134
def outgoing407 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming407 : Matrix 3 2 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex407 : IsComplex outgoing407 incoming407 := by lin_cert using ()
-- C2h6 s=12 t=135
def outgoing408 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming408 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex408 : IsComplex outgoing408 incoming408 := by lin_cert using ()
-- C2h6 s=12 t=136
def outgoing409 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming409 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex409 : IsComplex outgoing409 incoming409 := by lin_cert using ()
-- C2h6 s=12 t=137
def outgoing410 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming410 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex410 : IsComplex outgoing410 incoming410 := by lin_cert using ()
-- C2h6 s=12 t=138
def outgoing411 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming411 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex411 : IsComplex outgoing411 incoming411 := by lin_cert using ()
-- C2h6 s=12 t=139
def outgoing412 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming412 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex412 : IsComplex outgoing412 incoming412 := by lin_cert using ()
-- C2h6 s=13 t=135
def outgoing413 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming413 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex413 : IsComplex outgoing413 incoming413 := by lin_cert using ()
-- C2h6 s=13 t=136
def outgoing414 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming414 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex414 : IsComplex outgoing414 incoming414 := by lin_cert using ()
-- C2h6 s=13 t=137
def outgoing415 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming415 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex415 : IsComplex outgoing415 incoming415 := by lin_cert using ()
-- C2h6 s=13 t=138
def outgoing416 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming416 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex416 : IsComplex outgoing416 incoming416 := by lin_cert using ()
-- C2h6 s=13 t=139
def outgoing417 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming417 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex417 : IsComplex outgoing417 incoming417 := by lin_cert using ()
-- C2h6 s=13 t=140
def outgoing418 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming418 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex418 : IsComplex outgoing418 incoming418 := by lin_cert using ()
-- C2h6 s=14 t=136
def outgoing419 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming419 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex419 : IsComplex outgoing419 incoming419 := by lin_cert using ()
-- C2h6 s=14 t=137
def outgoing420 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming420 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex420 : IsComplex outgoing420 incoming420 := by lin_cert using ()
-- C2h6 s=14 t=138
def outgoing421 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming421 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex421 : IsComplex outgoing421 incoming421 := by lin_cert using ()
-- C2h6 s=14 t=139
def outgoing422 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming422 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex422 : IsComplex outgoing422 incoming422 := by lin_cert using ()
-- C2h6 s=14 t=140
def outgoing423 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming423 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex423 : IsComplex outgoing423 incoming423 := by lin_cert using ()
-- C2h6 s=14 t=141
def outgoing424 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming424 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex424 : IsComplex outgoing424 incoming424 := by lin_cert using ()
-- C2h6 s=15 t=137
def outgoing425 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming425 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex425 : IsComplex outgoing425 incoming425 := by lin_cert using ()
-- C2h6 s=15 t=138
def outgoing426 : Matrix 2 4 := fun i j => ([true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming426 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex426 : IsComplex outgoing426 incoming426 := by lin_cert using ()
-- C2h6 s=15 t=139
def outgoing427 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming427 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex427 : IsComplex outgoing427 incoming427 := by lin_cert using ()
-- C2h6 s=15 t=140
def outgoing428 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming428 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex428 : IsComplex outgoing428 incoming428 := by lin_cert using ()
-- C2h6 s=15 t=141
def outgoing429 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, true, false, true, true, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming429 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex429 : IsComplex outgoing429 incoming429 := by lin_cert using ()
-- C2h6 s=15 t=142
def outgoing430 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming430 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex430 : IsComplex outgoing430 incoming430 := by lin_cert using ()
-- C2h6 s=16 t=138
def outgoing431 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming431 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex431 : IsComplex outgoing431 incoming431 := by lin_cert using ()
-- C2h6 s=16 t=139
def outgoing432 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming432 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex432 : IsComplex outgoing432 incoming432 := by lin_cert using ()
-- C2h6 s=16 t=140
def outgoing433 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming433 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex433 : IsComplex outgoing433 incoming433 := by lin_cert using ()
-- C2h6 s=16 t=141
def outgoing434 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming434 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex434 : IsComplex outgoing434 incoming434 := by lin_cert using ()
-- C2h6 s=16 t=142
def outgoing435 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming435 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex435 : IsComplex outgoing435 incoming435 := by lin_cert using ()
-- C2h6 s=16 t=143
def outgoing436 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming436 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex436 : IsComplex outgoing436 incoming436 := by lin_cert using ()
-- C2h6 s=17 t=139
def outgoing437 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming437 : Matrix 2 4 := fun i j => ([true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex437 : IsComplex outgoing437 incoming437 := by lin_cert using ()
-- C2h6 s=17 t=140
def outgoing438 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming438 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex438 : IsComplex outgoing438 incoming438 := by lin_cert using ()
-- C2h6 s=17 t=141
def outgoing439 : Matrix 3 2 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming439 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex439 : IsComplex outgoing439 incoming439 := by lin_cert using ()
-- C2h6 s=17 t=142
def outgoing440 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming440 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, true, false, true, true, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex440 : IsComplex outgoing440 incoming440 := by lin_cert using ()
-- C2h6 s=17 t=143
def outgoing441 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming441 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex441 : IsComplex outgoing441 incoming441 := by lin_cert using ()
-- C2h6 s=17 t=144
def outgoing442 : Matrix 3 4 := fun i j => ([true, true, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming442 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex442 : IsComplex outgoing442 incoming442 := by lin_cert using ()
-- C2h6 s=18 t=140
def outgoing443 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming443 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex443 : IsComplex outgoing443 incoming443 := by lin_cert using ()
-- C2h6 s=18 t=141
def outgoing444 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming444 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex444 : IsComplex outgoing444 incoming444 := by lin_cert using ()
-- C2h6 s=18 t=142
def outgoing445 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming445 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex445 : IsComplex outgoing445 incoming445 := by lin_cert using ()
-- C2h6 s=18 t=143
def outgoing446 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming446 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex446 : IsComplex outgoing446 incoming446 := by lin_cert using ()
-- C2h6 s=18 t=144
def outgoing447 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming447 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex447 : IsComplex outgoing447 incoming447 := by lin_cert using ()
-- C2h6 s=18 t=145
def outgoing448 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming448 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex448 : IsComplex outgoing448 incoming448 := by lin_cert using ()
-- C2h6 s=19 t=141
def outgoing449 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming449 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex449 : IsComplex outgoing449 incoming449 := by lin_cert using ()
-- C2h6 s=19 t=142
def outgoing450 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming450 : Matrix 3 2 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex450 : IsComplex outgoing450 incoming450 := by lin_cert using ()
-- C2h6 s=19 t=143
def outgoing451 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming451 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex451 : IsComplex outgoing451 incoming451 := by lin_cert using ()
-- C2h6 s=19 t=145
def outgoing452 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming452 : Matrix 3 4 := fun i j => ([true, true, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex452 : IsComplex outgoing452 incoming452 := by lin_cert using ()
-- C2h6 s=19 t=146
def outgoing453 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming453 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex453 : IsComplex outgoing453 incoming453 := by lin_cert using ()
-- C2h6 s=20 t=142
def outgoing454 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming454 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex454 : IsComplex outgoing454 incoming454 := by lin_cert using ()
-- C2h6 s=20 t=143
def outgoing455 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming455 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex455 : IsComplex outgoing455 incoming455 := by lin_cert using ()
-- C2h6 s=20 t=144
def outgoing456 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming456 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex456 : IsComplex outgoing456 incoming456 := by lin_cert using ()
-- C2h6 s=20 t=145
def outgoing457 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming457 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex457 : IsComplex outgoing457 incoming457 := by lin_cert using ()
-- C2h6 s=20 t=146
def outgoing458 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming458 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex458 : IsComplex outgoing458 incoming458 := by lin_cert using ()
-- C2h6 s=20 t=147
def outgoing459 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming459 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex459 : IsComplex outgoing459 incoming459 := by lin_cert using ()
-- C2h6 s=21 t=143
def outgoing460 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming460 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex460 : IsComplex outgoing460 incoming460 := by lin_cert using ()
-- C2h6 s=21 t=144
def outgoing461 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming461 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex461 : IsComplex outgoing461 incoming461 := by lin_cert using ()
-- C2h6 s=21 t=146
def outgoing462 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming462 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex462 : IsComplex outgoing462 incoming462 := by lin_cert using ()
-- C2h6 s=21 t=147
def outgoing463 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming463 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex463 : IsComplex outgoing463 incoming463 := by lin_cert using ()
-- C2h6 s=21 t=148
def outgoing464 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming464 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex464 : IsComplex outgoing464 incoming464 := by lin_cert using ()
-- C2h6 s=22 t=144
def outgoing465 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming465 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex465 : IsComplex outgoing465 incoming465 := by lin_cert using ()
-- C2h6 s=22 t=145
def outgoing466 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming466 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex466 : IsComplex outgoing466 incoming466 := by lin_cert using ()
-- C2h6 s=22 t=146
def outgoing467 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming467 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex467 : IsComplex outgoing467 incoming467 := by lin_cert using ()
-- C2h6 s=22 t=147
def outgoing468 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming468 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex468 : IsComplex outgoing468 incoming468 := by lin_cert using ()
-- C2h6 s=22 t=148
def outgoing469 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming469 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex469 : IsComplex outgoing469 incoming469 := by lin_cert using ()
-- C2h6 s=22 t=149
def outgoing470 : Matrix 2 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming470 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex470 : IsComplex outgoing470 incoming470 := by lin_cert using ()
-- C2h6 s=23 t=145
def outgoing471 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming471 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex471 : IsComplex outgoing471 incoming471 := by lin_cert using ()
-- C2h6 s=23 t=146
def outgoing472 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming472 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex472 : IsComplex outgoing472 incoming472 := by lin_cert using ()
-- C2h6 s=23 t=147
def outgoing473 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming473 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex473 : IsComplex outgoing473 incoming473 := by lin_cert using ()
-- C2h6 s=23 t=148
def outgoing474 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming474 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex474 : IsComplex outgoing474 incoming474 := by lin_cert using ()
-- C2h6 s=23 t=149
def outgoing475 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming475 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex475 : IsComplex outgoing475 incoming475 := by lin_cert using ()
-- C2h6 s=23 t=150
def outgoing476 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming476 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex476 : IsComplex outgoing476 incoming476 := by lin_cert using ()
-- C2h6 s=24 t=146
def outgoing477 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming477 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex477 : IsComplex outgoing477 incoming477 := by lin_cert using ()
-- C2h6 s=24 t=147
def outgoing478 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming478 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex478 : IsComplex outgoing478 incoming478 := by lin_cert using ()
-- C2h6 s=24 t=148
def outgoing479 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming479 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex479 : IsComplex outgoing479 incoming479 := by lin_cert using ()
-- C2h6 s=24 t=149
def outgoing480 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming480 : Matrix 5 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex480 : IsComplex outgoing480 incoming480 := by lin_cert using ()
-- C2h6 s=24 t=150
def outgoing481 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming481 : Matrix 2 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex481 : IsComplex outgoing481 incoming481 := by lin_cert using ()
-- C2h6 s=24 t=151
def outgoing482 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming482 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex482 : IsComplex outgoing482 incoming482 := by lin_cert using ()
-- C2h6 s=25 t=147
def outgoing483 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming483 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex483 : IsComplex outgoing483 incoming483 := by lin_cert using ()
-- C2h6 s=25 t=148
def outgoing484 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming484 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex484 : IsComplex outgoing484 incoming484 := by lin_cert using ()
-- C2h6 s=25 t=149
def outgoing485 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming485 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex485 : IsComplex outgoing485 incoming485 := by lin_cert using ()
-- C2h6 s=25 t=150
def outgoing486 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming486 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex486 : IsComplex outgoing486 incoming486 := by lin_cert using ()
-- C2h6 s=25 t=151
def outgoing487 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming487 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex487 : IsComplex outgoing487 incoming487 := by lin_cert using ()
-- C2h6 s=25 t=152
def outgoing488 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming488 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex488 : IsComplex outgoing488 incoming488 := by lin_cert using ()
-- CW_2_eta s=4 t=130
def outgoing489 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming489 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex489 : IsComplex outgoing489 incoming489 := by lin_cert using ()
-- CW_2_eta s=4 t=131
def outgoing490 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming490 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex490 : IsComplex outgoing490 incoming490 := by lin_cert using ()
-- CW_2_eta s=5 t=130
def outgoing491 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming491 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex491 : IsComplex outgoing491 incoming491 := by lin_cert using ()
-- CW_2_eta s=6 t=130
def outgoing492 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming492 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex492 : IsComplex outgoing492 incoming492 := by lin_cert using ()
-- CW_2_eta s=6 t=131
def outgoing493 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming493 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex493 : IsComplex outgoing493 incoming493 := by lin_cert using ()
-- CW_2_eta s=6 t=132
def outgoing494 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming494 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex494 : IsComplex outgoing494 incoming494 := by lin_cert using ()
-- CW_2_eta s=6 t=133
def outgoing495 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming495 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex495 : IsComplex outgoing495 incoming495 := by lin_cert using ()
-- CW_2_eta s=7 t=129
def outgoing496 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming496 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex496 : IsComplex outgoing496 incoming496 := by lin_cert using ()
-- CW_2_eta s=7 t=131
def outgoing497 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming497 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex497 : IsComplex outgoing497 incoming497 := by lin_cert using ()
-- CW_2_eta s=7 t=132
def outgoing498 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming498 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex498 : IsComplex outgoing498 incoming498 := by lin_cert using ()
-- CW_2_eta s=7 t=133
def outgoing499 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming499 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex499 : IsComplex outgoing499 incoming499 := by lin_cert using ()
end ReleaseComplex4
