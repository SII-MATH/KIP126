import LinearCertificates.Checker
namespace ReleaseComplex6
open LinearCertificates LinProgramCertificates
-- CW_2_eta s=24 t=151
def outgoing600 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming600 : Matrix 1 6 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex600 : IsComplex outgoing600 incoming600 := by lin_cert using ()
-- CW_2_eta s=25 t=147
def outgoing601 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming601 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex601 : IsComplex outgoing601 incoming601 := by lin_cert using ()
-- CW_2_eta s=25 t=149
def outgoing602 : Matrix 2 2 := fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming602 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex602 : IsComplex outgoing602 incoming602 := by lin_cert using ()
-- CW_2_eta s=25 t=150
def outgoing603 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming603 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex603 : IsComplex outgoing603 incoming603 := by lin_cert using ()
-- CW_2_eta s=25 t=152
def outgoing604 : Matrix 2 2 := fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming604 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex604 : IsComplex outgoing604 incoming604 := by lin_cert using ()
-- CW_2_eta_nu s=4 t=130
def outgoing605 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming605 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex605 : IsComplex outgoing605 incoming605 := by lin_cert using ()
-- CW_2_eta_nu s=4 t=131
def outgoing606 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming606 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex606 : IsComplex outgoing606 incoming606 := by lin_cert using ()
-- CW_2_eta_nu s=5 t=130
def outgoing607 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming607 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex607 : IsComplex outgoing607 incoming607 := by lin_cert using ()
-- CW_2_eta_nu s=6 t=130
def outgoing608 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming608 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex608 : IsComplex outgoing608 incoming608 := by lin_cert using ()
-- CW_2_eta_nu s=6 t=131
def outgoing609 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming609 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex609 : IsComplex outgoing609 incoming609 := by lin_cert using ()
-- CW_2_eta_nu s=6 t=132
def outgoing610 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming610 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex610 : IsComplex outgoing610 incoming610 := by lin_cert using ()
-- CW_2_eta_nu s=6 t=133
def outgoing611 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming611 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex611 : IsComplex outgoing611 incoming611 := by lin_cert using ()
-- CW_2_eta_nu s=7 t=129
def outgoing612 : Matrix 4 1 := fun i j => ([true, true, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming612 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex612 : IsComplex outgoing612 incoming612 := by lin_cert using ()
-- CW_2_eta_nu s=7 t=131
def outgoing613 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming613 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex613 : IsComplex outgoing613 incoming613 := by lin_cert using ()
-- CW_2_eta_nu s=7 t=132
def outgoing614 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming614 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex614 : IsComplex outgoing614 incoming614 := by lin_cert using ()
-- CW_2_eta_nu s=7 t=133
def outgoing615 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming615 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex615 : IsComplex outgoing615 incoming615 := by lin_cert using ()
-- CW_2_eta_nu s=7 t=134
def outgoing616 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming616 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex616 : IsComplex outgoing616 incoming616 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=130
def outgoing617 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming617 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex617 : IsComplex outgoing617 incoming617 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=131
def outgoing618 : Matrix 3 2 := fun i j => ([false, true, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming618 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex618 : IsComplex outgoing618 incoming618 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=132
def outgoing619 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming619 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex619 : IsComplex outgoing619 incoming619 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=133
def outgoing620 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming620 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex620 : IsComplex outgoing620 incoming620 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=134
def outgoing621 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming621 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex621 : IsComplex outgoing621 incoming621 := by lin_cert using ()
-- CW_2_eta_nu s=8 t=135
def outgoing622 : Matrix 5 3 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming622 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex622 : IsComplex outgoing622 incoming622 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=131
def outgoing623 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming623 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex623 : IsComplex outgoing623 incoming623 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=132
def outgoing624 : Matrix 3 2 := fun i j => ([true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming624 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex624 : IsComplex outgoing624 incoming624 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=133
def outgoing625 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming625 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex625 : IsComplex outgoing625 incoming625 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=134
def outgoing626 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming626 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex626 : IsComplex outgoing626 incoming626 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=135
def outgoing627 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming627 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex627 : IsComplex outgoing627 incoming627 := by lin_cert using ()
-- CW_2_eta_nu s=9 t=136
def outgoing628 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming628 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex628 : IsComplex outgoing628 incoming628 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=132
def outgoing629 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming629 : Matrix 3 2 := fun i j => ([false, true, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex629 : IsComplex outgoing629 incoming629 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=133
def outgoing630 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming630 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex630 : IsComplex outgoing630 incoming630 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=134
def outgoing631 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming631 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex631 : IsComplex outgoing631 incoming631 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=135
def outgoing632 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming632 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex632 : IsComplex outgoing632 incoming632 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=136
def outgoing633 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming633 : Matrix 5 3 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex633 : IsComplex outgoing633 incoming633 := by lin_cert using ()
-- CW_2_eta_nu s=10 t=137
def outgoing634 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming634 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex634 : IsComplex outgoing634 incoming634 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=133
def outgoing635 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming635 : Matrix 3 2 := fun i j => ([true, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex635 : IsComplex outgoing635 incoming635 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=134
def outgoing636 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming636 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex636 : IsComplex outgoing636 incoming636 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=135
def outgoing637 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming637 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex637 : IsComplex outgoing637 incoming637 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=136
def outgoing638 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming638 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex638 : IsComplex outgoing638 incoming638 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=137
def outgoing639 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming639 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex639 : IsComplex outgoing639 incoming639 := by lin_cert using ()
-- CW_2_eta_nu s=11 t=138
def outgoing640 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming640 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex640 : IsComplex outgoing640 incoming640 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=134
def outgoing641 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming641 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex641 : IsComplex outgoing641 incoming641 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=135
def outgoing642 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
def incoming642 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex642 : IsComplex outgoing642 incoming642 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=136
def outgoing643 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming643 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex643 : IsComplex outgoing643 incoming643 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=137
def outgoing644 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming644 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex644 : IsComplex outgoing644 incoming644 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=138
def outgoing645 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming645 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex645 : IsComplex outgoing645 incoming645 := by lin_cert using ()
-- CW_2_eta_nu s=12 t=139
def outgoing646 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming646 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex646 : IsComplex outgoing646 incoming646 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=135
def outgoing647 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming647 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex647 : IsComplex outgoing647 incoming647 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=136
def outgoing648 : Matrix 2 3 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming648 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex648 : IsComplex outgoing648 incoming648 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=137
def outgoing649 : Matrix 2 4 := fun i j => ([false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming649 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex649 : IsComplex outgoing649 incoming649 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=138
def outgoing650 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming650 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex650 : IsComplex outgoing650 incoming650 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=139
def outgoing651 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming651 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex651 : IsComplex outgoing651 incoming651 := by lin_cert using ()
-- CW_2_eta_nu s=13 t=140
def outgoing652 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming652 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex652 : IsComplex outgoing652 incoming652 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=136
def outgoing653 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming653 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex653 : IsComplex outgoing653 incoming653 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=137
def outgoing654 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming654 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex654 : IsComplex outgoing654 incoming654 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=138
def outgoing655 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming655 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex655 : IsComplex outgoing655 incoming655 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=139
def outgoing656 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming656 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex656 : IsComplex outgoing656 incoming656 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=140
def outgoing657 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming657 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex657 : IsComplex outgoing657 incoming657 := by lin_cert using ()
-- CW_2_eta_nu s=14 t=141
def outgoing658 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming658 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex658 : IsComplex outgoing658 incoming658 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=137
def outgoing659 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming659 : Matrix 2 3 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex659 : IsComplex outgoing659 incoming659 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=138
def outgoing660 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming660 : Matrix 2 4 := fun i j => ([false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex660 : IsComplex outgoing660 incoming660 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=139
def outgoing661 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming661 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex661 : IsComplex outgoing661 incoming661 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=140
def outgoing662 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming662 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex662 : IsComplex outgoing662 incoming662 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=141
def outgoing663 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming663 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex663 : IsComplex outgoing663 incoming663 := by lin_cert using ()
-- CW_2_eta_nu s=15 t=142
def outgoing664 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming664 : Matrix 3 3 := fun i j => ([false, false, false, true, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex664 : IsComplex outgoing664 incoming664 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=138
def outgoing665 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming665 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex665 : IsComplex outgoing665 incoming665 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=139
def outgoing666 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming666 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex666 : IsComplex outgoing666 incoming666 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=140
def outgoing667 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, true, false, true, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming667 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex667 : IsComplex outgoing667 incoming667 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=141
def outgoing668 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming668 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex668 : IsComplex outgoing668 incoming668 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=142
def outgoing669 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming669 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex669 : IsComplex outgoing669 incoming669 := by lin_cert using ()
-- CW_2_eta_nu s=16 t=143
def outgoing670 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming670 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex670 : IsComplex outgoing670 incoming670 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=139
def outgoing671 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming671 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex671 : IsComplex outgoing671 incoming671 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=140
def outgoing672 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming672 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex672 : IsComplex outgoing672 incoming672 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=141
def outgoing673 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming673 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex673 : IsComplex outgoing673 incoming673 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=142
def outgoing674 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming674 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex674 : IsComplex outgoing674 incoming674 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=143
def outgoing675 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming675 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex675 : IsComplex outgoing675 incoming675 := by lin_cert using ()
-- CW_2_eta_nu s=17 t=144
def outgoing676 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val * 4 + j.val]!
def incoming676 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex676 : IsComplex outgoing676 incoming676 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=140
def outgoing677 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
def incoming677 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex677 : IsComplex outgoing677 incoming677 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=141
def outgoing678 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming678 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, true, false, true, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex678 : IsComplex outgoing678 incoming678 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=142
def outgoing679 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming679 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex679 : IsComplex outgoing679 incoming679 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=143
def outgoing680 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
def incoming680 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex680 : IsComplex outgoing680 incoming680 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=144
def outgoing681 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming681 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex681 : IsComplex outgoing681 incoming681 := by lin_cert using ()
-- CW_2_eta_nu s=18 t=145
def outgoing682 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming682 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex682 : IsComplex outgoing682 incoming682 := by lin_cert using ()
-- CW_2_eta_nu s=19 t=141
def outgoing683 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
def incoming683 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex683 : IsComplex outgoing683 incoming683 := by lin_cert using ()
-- CW_2_eta_nu s=19 t=142
def outgoing684 : Matrix 2 2 := fun i j => ([false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming684 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex684 : IsComplex outgoing684 incoming684 := by lin_cert using ()
-- CW_2_eta_nu s=19 t=143
def outgoing685 : Matrix 2 4 := fun i j => ([true, true, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming685 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex685 : IsComplex outgoing685 incoming685 := by lin_cert using ()
-- CW_2_eta_nu s=19 t=144
def outgoing686 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming686 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex686 : IsComplex outgoing686 incoming686 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=142
def outgoing687 : Matrix 2 2 := fun i j => ([false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming687 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex687 : IsComplex outgoing687 incoming687 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=143
def outgoing688 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming688 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex688 : IsComplex outgoing688 incoming688 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=144
def outgoing689 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming689 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex689 : IsComplex outgoing689 incoming689 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=145
def outgoing690 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming690 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex690 : IsComplex outgoing690 incoming690 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=146
def outgoing691 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming691 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex691 : IsComplex outgoing691 incoming691 := by lin_cert using ()
-- CW_2_eta_nu s=20 t=147
def outgoing692 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming692 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex692 : IsComplex outgoing692 incoming692 := by lin_cert using ()
-- CW_2_eta_nu s=21 t=143
def outgoing693 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming693 : Matrix 2 2 := fun i j => ([false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex693 : IsComplex outgoing693 incoming693 := by lin_cert using ()
-- CW_2_eta_nu s=21 t=144
def outgoing694 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming694 : Matrix 2 4 := fun i j => ([true, true, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex694 : IsComplex outgoing694 incoming694 := by lin_cert using ()
-- CW_2_eta_nu s=21 t=145
def outgoing695 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming695 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex695 : IsComplex outgoing695 incoming695 := by lin_cert using ()
-- CW_2_eta_nu s=21 t=148
def outgoing696 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming696 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex696 : IsComplex outgoing696 incoming696 := by lin_cert using ()
-- CW_2_eta_nu s=22 t=144
def outgoing697 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
def incoming697 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex697 : IsComplex outgoing697 incoming697 := by lin_cert using ()
-- CW_2_eta_nu s=22 t=146
def outgoing698 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming698 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex698 : IsComplex outgoing698 incoming698 := by lin_cert using ()
-- CW_2_eta_nu s=22 t=147
def outgoing699 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming699 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex699 : IsComplex outgoing699 incoming699 := by lin_cert using ()
end ReleaseComplex6
