import LinearCertificates.Checker
namespace ReleaseComplex5
open LinearCertificates LinProgramCertificates
-- CW_2_eta s=7 t=134
def outgoing500 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming500 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex500 : IsComplex outgoing500 incoming500 := by lin_cert using ()
-- CW_2_eta s=8 t=130
def outgoing501 : Matrix 4 1 := fun i j => ([false, false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming501 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex501 : IsComplex outgoing501 incoming501 := by lin_cert using ()
-- CW_2_eta s=8 t=131
def outgoing502 : Matrix 4 1 := fun i j => ([false, true, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming502 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex502 : IsComplex outgoing502 incoming502 := by lin_cert using ()
-- CW_2_eta s=8 t=132
def outgoing503 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming503 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex503 : IsComplex outgoing503 incoming503 := by lin_cert using ()
-- CW_2_eta s=8 t=133
def outgoing504 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming504 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex504 : IsComplex outgoing504 incoming504 := by lin_cert using ()
-- CW_2_eta s=8 t=134
def outgoing505 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming505 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex505 : IsComplex outgoing505 incoming505 := by lin_cert using ()
-- CW_2_eta s=8 t=135
def outgoing506 : Matrix 6 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming506 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex506 : IsComplex outgoing506 incoming506 := by lin_cert using ()
-- CW_2_eta s=9 t=132
def outgoing507 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming507 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex507 : IsComplex outgoing507 incoming507 := by lin_cert using ()
-- CW_2_eta s=9 t=133
def outgoing508 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming508 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex508 : IsComplex outgoing508 incoming508 := by lin_cert using ()
-- CW_2_eta s=9 t=134
def outgoing509 : Matrix 4 7 := fun i j => ([false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming509 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex509 : IsComplex outgoing509 incoming509 := by lin_cert using ()
-- CW_2_eta s=9 t=135
def outgoing510 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming510 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex510 : IsComplex outgoing510 incoming510 := by lin_cert using ()
-- CW_2_eta s=9 t=136
def outgoing511 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming511 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex511 : IsComplex outgoing511 incoming511 := by lin_cert using ()
-- CW_2_eta s=10 t=132
def outgoing512 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming512 : Matrix 4 1 := fun i j => ([false, true, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex512 : IsComplex outgoing512 incoming512 := by lin_cert using ()
-- CW_2_eta s=10 t=133
def outgoing513 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming513 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex513 : IsComplex outgoing513 incoming513 := by lin_cert using ()
-- CW_2_eta s=10 t=134
def outgoing514 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming514 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex514 : IsComplex outgoing514 incoming514 := by lin_cert using ()
-- CW_2_eta s=10 t=135
def outgoing515 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming515 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex515 : IsComplex outgoing515 incoming515 := by lin_cert using ()
-- CW_2_eta s=10 t=136
def outgoing516 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming516 : Matrix 6 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex516 : IsComplex outgoing516 incoming516 := by lin_cert using ()
-- CW_2_eta s=10 t=137
def outgoing517 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming517 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex517 : IsComplex outgoing517 incoming517 := by lin_cert using ()
-- CW_2_eta s=11 t=133
def outgoing518 : Matrix 4 3 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming518 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex518 : IsComplex outgoing518 incoming518 := by lin_cert using ()
-- CW_2_eta s=11 t=134
def outgoing519 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming519 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex519 : IsComplex outgoing519 incoming519 := by lin_cert using ()
-- CW_2_eta s=11 t=135
def outgoing520 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming520 : Matrix 4 7 := fun i j => ([false, true, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex520 : IsComplex outgoing520 incoming520 := by lin_cert using ()
-- CW_2_eta s=11 t=136
def outgoing521 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming521 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex521 : IsComplex outgoing521 incoming521 := by lin_cert using ()
-- CW_2_eta s=11 t=137
def outgoing522 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming522 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex522 : IsComplex outgoing522 incoming522 := by lin_cert using ()
-- CW_2_eta s=11 t=138
def outgoing523 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming523 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex523 : IsComplex outgoing523 incoming523 := by lin_cert using ()
-- CW_2_eta s=12 t=134
def outgoing524 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming524 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex524 : IsComplex outgoing524 incoming524 := by lin_cert using ()
-- CW_2_eta s=12 t=135
def outgoing525 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming525 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex525 : IsComplex outgoing525 incoming525 := by lin_cert using ()
-- CW_2_eta s=12 t=136
def outgoing526 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming526 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex526 : IsComplex outgoing526 incoming526 := by lin_cert using ()
-- CW_2_eta s=12 t=137
def outgoing527 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming527 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex527 : IsComplex outgoing527 incoming527 := by lin_cert using ()
-- CW_2_eta s=12 t=138
def outgoing528 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming528 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex528 : IsComplex outgoing528 incoming528 := by lin_cert using ()
-- CW_2_eta s=12 t=139
def outgoing529 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming529 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex529 : IsComplex outgoing529 incoming529 := by lin_cert using ()
-- CW_2_eta s=13 t=135
def outgoing530 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming530 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex530 : IsComplex outgoing530 incoming530 := by lin_cert using ()
-- CW_2_eta s=13 t=136
def outgoing531 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming531 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex531 : IsComplex outgoing531 incoming531 := by lin_cert using ()
-- CW_2_eta s=13 t=137
def outgoing532 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming532 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex532 : IsComplex outgoing532 incoming532 := by lin_cert using ()
-- CW_2_eta s=13 t=138
def outgoing533 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming533 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex533 : IsComplex outgoing533 incoming533 := by lin_cert using ()
-- CW_2_eta s=13 t=139
def outgoing534 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming534 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex534 : IsComplex outgoing534 incoming534 := by lin_cert using ()
-- CW_2_eta s=13 t=140
def outgoing535 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming535 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex535 : IsComplex outgoing535 incoming535 := by lin_cert using ()
-- CW_2_eta s=14 t=136
def outgoing536 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming536 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex536 : IsComplex outgoing536 incoming536 := by lin_cert using ()
-- CW_2_eta s=14 t=137
def outgoing537 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming537 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex537 : IsComplex outgoing537 incoming537 := by lin_cert using ()
-- CW_2_eta s=14 t=138
def outgoing538 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming538 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex538 : IsComplex outgoing538 incoming538 := by lin_cert using ()
-- CW_2_eta s=14 t=139
def outgoing539 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming539 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex539 : IsComplex outgoing539 incoming539 := by lin_cert using ()
-- CW_2_eta s=14 t=140
def outgoing540 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming540 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex540 : IsComplex outgoing540 incoming540 := by lin_cert using ()
-- CW_2_eta s=14 t=141
def outgoing541 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming541 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex541 : IsComplex outgoing541 incoming541 := by lin_cert using ()
-- CW_2_eta s=15 t=137
def outgoing542 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming542 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex542 : IsComplex outgoing542 incoming542 := by lin_cert using ()
-- CW_2_eta s=15 t=138
def outgoing543 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming543 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex543 : IsComplex outgoing543 incoming543 := by lin_cert using ()
-- CW_2_eta s=15 t=139
def outgoing544 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming544 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex544 : IsComplex outgoing544 incoming544 := by lin_cert using ()
-- CW_2_eta s=15 t=140
def outgoing545 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming545 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex545 : IsComplex outgoing545 incoming545 := by lin_cert using ()
-- CW_2_eta s=15 t=141
def outgoing546 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming546 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex546 : IsComplex outgoing546 incoming546 := by lin_cert using ()
-- CW_2_eta s=15 t=142
def outgoing547 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming547 : Matrix 3 4 := fun i j => ([true, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex547 : IsComplex outgoing547 incoming547 := by lin_cert using ()
-- CW_2_eta s=16 t=138
def outgoing548 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming548 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex548 : IsComplex outgoing548 incoming548 := by lin_cert using ()
-- CW_2_eta s=16 t=139
def outgoing549 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming549 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex549 : IsComplex outgoing549 incoming549 := by lin_cert using ()
-- CW_2_eta s=16 t=140
def outgoing550 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming550 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex550 : IsComplex outgoing550 incoming550 := by lin_cert using ()
-- CW_2_eta s=16 t=141
def outgoing551 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming551 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex551 : IsComplex outgoing551 incoming551 := by lin_cert using ()
-- CW_2_eta s=16 t=142
def outgoing552 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming552 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex552 : IsComplex outgoing552 incoming552 := by lin_cert using ()
-- CW_2_eta s=16 t=143
def outgoing553 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming553 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex553 : IsComplex outgoing553 incoming553 := by lin_cert using ()
-- CW_2_eta s=17 t=140
def outgoing554 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming554 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex554 : IsComplex outgoing554 incoming554 := by lin_cert using ()
-- CW_2_eta s=17 t=141
def outgoing555 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming555 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex555 : IsComplex outgoing555 incoming555 := by lin_cert using ()
-- CW_2_eta s=17 t=142
def outgoing556 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming556 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex556 : IsComplex outgoing556 incoming556 := by lin_cert using ()
-- CW_2_eta s=17 t=143
def outgoing557 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming557 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex557 : IsComplex outgoing557 incoming557 := by lin_cert using ()
-- CW_2_eta s=17 t=144
def outgoing558 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming558 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex558 : IsComplex outgoing558 incoming558 := by lin_cert using ()
-- CW_2_eta s=18 t=140
def outgoing559 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming559 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex559 : IsComplex outgoing559 incoming559 := by lin_cert using ()
-- CW_2_eta s=18 t=141
def outgoing560 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming560 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex560 : IsComplex outgoing560 incoming560 := by lin_cert using ()
-- CW_2_eta s=18 t=142
def outgoing561 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming561 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex561 : IsComplex outgoing561 incoming561 := by lin_cert using ()
-- CW_2_eta s=18 t=143
def outgoing562 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming562 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex562 : IsComplex outgoing562 incoming562 := by lin_cert using ()
-- CW_2_eta s=18 t=144
def outgoing563 : Matrix 3 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming563 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex563 : IsComplex outgoing563 incoming563 := by lin_cert using ()
-- CW_2_eta s=18 t=145
def outgoing564 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming564 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex564 : IsComplex outgoing564 incoming564 := by lin_cert using ()
-- CW_2_eta s=19 t=141
def outgoing565 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming565 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex565 : IsComplex outgoing565 incoming565 := by lin_cert using ()
-- CW_2_eta s=19 t=142
def outgoing566 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming566 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex566 : IsComplex outgoing566 incoming566 := by lin_cert using ()
-- CW_2_eta s=19 t=143
def outgoing567 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming567 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex567 : IsComplex outgoing567 incoming567 := by lin_cert using ()
-- CW_2_eta s=19 t=144
def outgoing568 : Matrix 2 2 := fun i j => ([false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming568 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex568 : IsComplex outgoing568 incoming568 := by lin_cert using ()
-- CW_2_eta s=19 t=145
def outgoing569 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming569 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex569 : IsComplex outgoing569 incoming569 := by lin_cert using ()
-- CW_2_eta s=19 t=146
def outgoing570 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming570 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex570 : IsComplex outgoing570 incoming570 := by lin_cert using ()
-- CW_2_eta s=20 t=142
def outgoing571 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming571 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex571 : IsComplex outgoing571 incoming571 := by lin_cert using ()
-- CW_2_eta s=20 t=143
def outgoing572 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming572 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex572 : IsComplex outgoing572 incoming572 := by lin_cert using ()
-- CW_2_eta s=20 t=144
def outgoing573 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming573 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex573 : IsComplex outgoing573 incoming573 := by lin_cert using ()
-- CW_2_eta s=20 t=145
def outgoing574 : Matrix 2 3 := fun i j => ([false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming574 : Matrix 3 4 := fun i j => ([false, true, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex574 : IsComplex outgoing574 incoming574 := by lin_cert using ()
-- CW_2_eta s=20 t=146
def outgoing575 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming575 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex575 : IsComplex outgoing575 incoming575 := by lin_cert using ()
-- CW_2_eta s=20 t=147
def outgoing576 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming576 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex576 : IsComplex outgoing576 incoming576 := by lin_cert using ()
-- CW_2_eta s=21 t=143
def outgoing577 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming577 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex577 : IsComplex outgoing577 incoming577 := by lin_cert using ()
-- CW_2_eta s=21 t=144
def outgoing578 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming578 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex578 : IsComplex outgoing578 incoming578 := by lin_cert using ()
-- CW_2_eta s=21 t=145
def outgoing579 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming579 : Matrix 2 2 := fun i j => ([false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex579 : IsComplex outgoing579 incoming579 := by lin_cert using ()
-- CW_2_eta s=21 t=146
def outgoing580 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming580 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex580 : IsComplex outgoing580 incoming580 := by lin_cert using ()
-- CW_2_eta s=21 t=147
def outgoing581 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming581 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex581 : IsComplex outgoing581 incoming581 := by lin_cert using ()
-- CW_2_eta s=21 t=148
def outgoing582 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming582 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex582 : IsComplex outgoing582 incoming582 := by lin_cert using ()
-- CW_2_eta s=22 t=144
def outgoing583 : Matrix 1 4 := fun i j => ([true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming583 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex583 : IsComplex outgoing583 incoming583 := by lin_cert using ()
-- CW_2_eta s=22 t=145
def outgoing584 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming584 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex584 : IsComplex outgoing584 incoming584 := by lin_cert using ()
-- CW_2_eta s=22 t=146
def outgoing585 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming585 : Matrix 2 3 := fun i j => ([false, false, false, true, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex585 : IsComplex outgoing585 incoming585 := by lin_cert using ()
-- CW_2_eta s=22 t=147
def outgoing586 : Matrix 1 4 := fun i j => ([true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming586 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex586 : IsComplex outgoing586 incoming586 := by lin_cert using ()
-- CW_2_eta s=22 t=148
def outgoing587 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming587 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex587 : IsComplex outgoing587 incoming587 := by lin_cert using ()
-- CW_2_eta s=22 t=149
def outgoing588 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming588 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex588 : IsComplex outgoing588 incoming588 := by lin_cert using ()
-- CW_2_eta s=23 t=145
def outgoing589 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming589 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex589 : IsComplex outgoing589 incoming589 := by lin_cert using ()
-- CW_2_eta s=23 t=146
def outgoing590 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming590 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex590 : IsComplex outgoing590 incoming590 := by lin_cert using ()
-- CW_2_eta s=23 t=147
def outgoing591 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming591 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex591 : IsComplex outgoing591 incoming591 := by lin_cert using ()
-- CW_2_eta s=23 t=148
def outgoing592 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming592 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex592 : IsComplex outgoing592 incoming592 := by lin_cert using ()
-- CW_2_eta s=23 t=149
def outgoing593 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming593 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex593 : IsComplex outgoing593 incoming593 := by lin_cert using ()
-- CW_2_eta s=23 t=150
def outgoing594 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming594 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex594 : IsComplex outgoing594 incoming594 := by lin_cert using ()
-- CW_2_eta s=24 t=146
def outgoing595 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming595 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex595 : IsComplex outgoing595 incoming595 := by lin_cert using ()
-- CW_2_eta s=24 t=147
def outgoing596 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming596 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex596 : IsComplex outgoing596 incoming596 := by lin_cert using ()
-- CW_2_eta s=24 t=148
def outgoing597 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming597 : Matrix 1 4 := fun i j => ([true, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex597 : IsComplex outgoing597 incoming597 := by lin_cert using ()
-- CW_2_eta s=24 t=149
def outgoing598 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming598 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex598 : IsComplex outgoing598 incoming598 := by lin_cert using ()
-- CW_2_eta s=24 t=150
def outgoing599 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming599 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex599 : IsComplex outgoing599 incoming599 := by lin_cert using ()
end ReleaseComplex5
