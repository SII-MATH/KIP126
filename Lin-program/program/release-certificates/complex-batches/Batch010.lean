import LinearCertificates.Checker
namespace ReleaseComplex10
open LinearCertificates LinProgramCertificates
-- CW_eta_nu_sigma s=3 t=129
def outgoing1000 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1000 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1000 : IsComplex outgoing1000 incoming1000 := by lin_cert using ()
-- CW_eta_nu_sigma s=3 t=130
def outgoing1001 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming1001 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex1001 : IsComplex outgoing1001 incoming1001 := by lin_cert using ()
-- CW_eta_nu_sigma s=4 t=130
def outgoing1002 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1002 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1002 : IsComplex outgoing1002 incoming1002 := by lin_cert using ()
-- CW_eta_nu_sigma s=4 t=131
def outgoing1003 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1003 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex1003 : IsComplex outgoing1003 incoming1003 := by lin_cert using ()
-- CW_eta_nu_sigma s=5 t=128
def outgoing1004 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming1004 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex1004 : IsComplex outgoing1004 incoming1004 := by lin_cert using ()
-- CW_eta_nu_sigma s=5 t=130
def outgoing1005 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1005 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1005 : IsComplex outgoing1005 incoming1005 := by lin_cert using ()
-- CW_eta_nu_sigma s=5 t=132
def outgoing1006 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1006 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex1006 : IsComplex outgoing1006 incoming1006 := by lin_cert using ()
-- CW_eta_nu_sigma s=6 t=128
def outgoing1007 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1007 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1007 : IsComplex outgoing1007 incoming1007 := by lin_cert using ()
-- CW_eta_nu_sigma s=6 t=130
def outgoing1008 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1008 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1008 : IsComplex outgoing1008 incoming1008 := by lin_cert using ()
-- CW_eta_nu_sigma s=6 t=131
def outgoing1009 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1009 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1009 : IsComplex outgoing1009 incoming1009 := by lin_cert using ()
-- CW_eta_nu_sigma s=6 t=132
def outgoing1010 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1010 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1010 : IsComplex outgoing1010 incoming1010 := by lin_cert using ()
-- CW_eta_nu_sigma s=6 t=133
def outgoing1011 : Matrix 9 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1011 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1011 : IsComplex outgoing1011 incoming1011 := by lin_cert using ()
-- CW_eta_nu_sigma s=7 t=129
def outgoing1012 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming1012 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1012 : IsComplex outgoing1012 incoming1012 := by lin_cert using ()
-- CW_eta_nu_sigma s=7 t=131
def outgoing1013 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1013 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1013 : IsComplex outgoing1013 incoming1013 := by lin_cert using ()
-- CW_eta_nu_sigma s=7 t=133
def outgoing1014 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1014 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1014 : IsComplex outgoing1014 incoming1014 := by lin_cert using ()
-- CW_eta_nu_sigma s=7 t=134
def outgoing1015 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1015 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1015 : IsComplex outgoing1015 incoming1015 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=130
def outgoing1016 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming1016 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1016 : IsComplex outgoing1016 incoming1016 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=131
def outgoing1017 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1017 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1017 : IsComplex outgoing1017 incoming1017 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=132
def outgoing1018 : Matrix 4 4 := fun i j => ([true, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1018 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1018 : IsComplex outgoing1018 incoming1018 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=133
def outgoing1019 : Matrix 6 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1019 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1019 : IsComplex outgoing1019 incoming1019 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=134
def outgoing1020 : Matrix 5 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 9 + j.val]!
def incoming1020 : Matrix 9 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1020 : IsComplex outgoing1020 incoming1020 := by lin_cert using ()
-- CW_eta_nu_sigma s=8 t=135
def outgoing1021 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1021 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1021 : IsComplex outgoing1021 incoming1021 := by lin_cert using ()
-- CW_eta_nu_sigma s=9 t=132
def outgoing1022 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1022 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1022 : IsComplex outgoing1022 incoming1022 := by lin_cert using ()
-- CW_eta_nu_sigma s=9 t=133
def outgoing1023 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1023 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1023 : IsComplex outgoing1023 incoming1023 := by lin_cert using ()
-- CW_eta_nu_sigma s=9 t=134
def outgoing1024 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1024 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1024 : IsComplex outgoing1024 incoming1024 := by lin_cert using ()
-- CW_eta_nu_sigma s=9 t=135
def outgoing1025 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1025 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1025 : IsComplex outgoing1025 incoming1025 := by lin_cert using ()
-- CW_eta_nu_sigma s=9 t=136
def outgoing1026 : Matrix 7 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming1026 : Matrix 9 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1026 : IsComplex outgoing1026 incoming1026 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=132
def outgoing1027 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1027 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1027 : IsComplex outgoing1027 incoming1027 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=133
def outgoing1028 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1028 : Matrix 4 4 := fun i j => ([true, true, false, false, false, false, false, false, true, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1028 : IsComplex outgoing1028 incoming1028 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=134
def outgoing1029 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1029 : Matrix 6 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1029 : IsComplex outgoing1029 incoming1029 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=135
def outgoing1030 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1030 : Matrix 5 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 9 + j.val]!
theorem complex1030 : IsComplex outgoing1030 incoming1030 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=136
def outgoing1031 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1031 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1031 : IsComplex outgoing1031 incoming1031 := by lin_cert using ()
-- CW_eta_nu_sigma s=10 t=137
def outgoing1032 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
def incoming1032 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1032 : IsComplex outgoing1032 incoming1032 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=133
def outgoing1033 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1033 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1033 : IsComplex outgoing1033 incoming1033 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=134
def outgoing1034 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1034 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1034 : IsComplex outgoing1034 incoming1034 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=135
def outgoing1035 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1035 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1035 : IsComplex outgoing1035 incoming1035 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=136
def outgoing1036 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, true, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1036 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1036 : IsComplex outgoing1036 incoming1036 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=137
def outgoing1037 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1037 : Matrix 7 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex1037 : IsComplex outgoing1037 incoming1037 := by lin_cert using ()
-- CW_eta_nu_sigma s=11 t=138
def outgoing1038 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1038 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1038 : IsComplex outgoing1038 incoming1038 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=134
def outgoing1039 : Matrix 3 3 := fun i j => ([false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1039 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1039 : IsComplex outgoing1039 incoming1039 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=135
def outgoing1040 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1040 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1040 : IsComplex outgoing1040 incoming1040 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=136
def outgoing1041 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1041 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1041 : IsComplex outgoing1041 incoming1041 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=137
def outgoing1042 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming1042 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1042 : IsComplex outgoing1042 incoming1042 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=138
def outgoing1043 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1043 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1043 : IsComplex outgoing1043 incoming1043 := by lin_cert using ()
-- CW_eta_nu_sigma s=12 t=139
def outgoing1044 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1044 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1044 : IsComplex outgoing1044 incoming1044 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=135
def outgoing1045 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1045 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1045 : IsComplex outgoing1045 incoming1045 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=136
def outgoing1046 : Matrix 4 4 := fun i j => ([true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1046 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1046 : IsComplex outgoing1046 incoming1046 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=137
def outgoing1047 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1047 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, true, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1047 : IsComplex outgoing1047 incoming1047 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=138
def outgoing1048 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming1048 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1048 : IsComplex outgoing1048 incoming1048 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=139
def outgoing1049 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming1049 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1049 : IsComplex outgoing1049 incoming1049 := by lin_cert using ()
-- CW_eta_nu_sigma s=13 t=140
def outgoing1050 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1050 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1050 : IsComplex outgoing1050 incoming1050 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=136
def outgoing1051 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1051 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1051 : IsComplex outgoing1051 incoming1051 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=137
def outgoing1052 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1052 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1052 : IsComplex outgoing1052 incoming1052 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=138
def outgoing1053 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1053 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1053 : IsComplex outgoing1053 incoming1053 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=139
def outgoing1054 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1054 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1054 : IsComplex outgoing1054 incoming1054 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=140
def outgoing1055 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1055 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1055 : IsComplex outgoing1055 incoming1055 := by lin_cert using ()
-- CW_eta_nu_sigma s=14 t=141
def outgoing1056 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1056 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex1056 : IsComplex outgoing1056 incoming1056 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=137
def outgoing1057 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 4 + j.val]!
def incoming1057 : Matrix 4 4 := fun i j => ([true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1057 : IsComplex outgoing1057 incoming1057 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=138
def outgoing1058 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1058 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1058 : IsComplex outgoing1058 incoming1058 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=139
def outgoing1059 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1059 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1059 : IsComplex outgoing1059 incoming1059 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=140
def outgoing1060 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1060 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex1060 : IsComplex outgoing1060 incoming1060 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=141
def outgoing1061 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1061 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1061 : IsComplex outgoing1061 incoming1061 := by lin_cert using ()
-- CW_eta_nu_sigma s=15 t=142
def outgoing1062 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1062 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex1062 : IsComplex outgoing1062 incoming1062 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=138
def outgoing1063 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1063 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1063 : IsComplex outgoing1063 incoming1063 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=139
def outgoing1064 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1064 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1064 : IsComplex outgoing1064 incoming1064 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=140
def outgoing1065 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1065 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1065 : IsComplex outgoing1065 incoming1065 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=141
def outgoing1066 : Matrix 1 5 := fun i j => ([true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1066 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1066 : IsComplex outgoing1066 incoming1066 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=142
def outgoing1067 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1067 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1067 : IsComplex outgoing1067 incoming1067 := by lin_cert using ()
-- CW_eta_nu_sigma s=16 t=143
def outgoing1068 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1068 : Matrix 2 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1068 : IsComplex outgoing1068 incoming1068 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=139
def outgoing1069 : Matrix 1 4 := fun i j => ([true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1069 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1069 : IsComplex outgoing1069 incoming1069 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=140
def outgoing1070 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming1070 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1070 : IsComplex outgoing1070 incoming1070 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=141
def outgoing1071 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1071 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1071 : IsComplex outgoing1071 incoming1071 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=142
def outgoing1072 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1072 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1072 : IsComplex outgoing1072 incoming1072 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=143
def outgoing1073 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1073 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1073 : IsComplex outgoing1073 incoming1073 := by lin_cert using ()
-- CW_eta_nu_sigma s=17 t=144
def outgoing1074 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1074 : Matrix 3 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex1074 : IsComplex outgoing1074 incoming1074 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=140
def outgoing1075 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming1075 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1075 : IsComplex outgoing1075 incoming1075 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=141
def outgoing1076 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1076 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1076 : IsComplex outgoing1076 incoming1076 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=142
def outgoing1077 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming1077 : Matrix 1 5 := fun i j => ([true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1077 : IsComplex outgoing1077 incoming1077 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=143
def outgoing1078 : Matrix 2 6 := fun i j => ([true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1078 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex1078 : IsComplex outgoing1078 incoming1078 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=144
def outgoing1079 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming1079 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1079 : IsComplex outgoing1079 incoming1079 := by lin_cert using ()
-- CW_eta_nu_sigma s=18 t=145
def outgoing1080 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1080 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1080 : IsComplex outgoing1080 incoming1080 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=141
def outgoing1081 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming1081 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex1081 : IsComplex outgoing1081 incoming1081 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=142
def outgoing1082 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1082 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1082 : IsComplex outgoing1082 incoming1082 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=143
def outgoing1083 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1083 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1083 : IsComplex outgoing1083 incoming1083 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=144
def outgoing1084 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming1084 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1084 : IsComplex outgoing1084 incoming1084 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=145
def outgoing1085 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming1085 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1085 : IsComplex outgoing1085 incoming1085 := by lin_cert using ()
-- CW_eta_nu_sigma s=19 t=146
def outgoing1086 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming1086 : Matrix 6 7 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex1086 : IsComplex outgoing1086 incoming1086 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=142
def outgoing1087 : Matrix 1 5 := fun i j => ([false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming1087 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex1087 : IsComplex outgoing1087 incoming1087 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=143
def outgoing1088 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1088 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1088 : IsComplex outgoing1088 incoming1088 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=144
def outgoing1089 : Matrix 4 2 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1089 : Matrix 2 6 := fun i j => ([true, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1089 : IsComplex outgoing1089 incoming1089 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=145
def outgoing1090 : Matrix 1 8 := fun i j => ([false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming1090 : Matrix 8 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, true, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex1090 : IsComplex outgoing1090 incoming1090 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=146
def outgoing1091 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming1091 : Matrix 3 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1091 : IsComplex outgoing1091 incoming1091 := by lin_cert using ()
-- CW_eta_nu_sigma s=20 t=147
def outgoing1092 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1092 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1092 : IsComplex outgoing1092 incoming1092 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=143
def outgoing1093 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1093 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1093 : IsComplex outgoing1093 incoming1093 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=144
def outgoing1094 : Matrix 6 2 := fun i j => ([false, false, false, false, true, false, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1094 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1094 : IsComplex outgoing1094 incoming1094 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=145
def outgoing1095 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val * 6 + j.val]!
def incoming1095 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex1095 : IsComplex outgoing1095 incoming1095 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=146
def outgoing1096 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1096 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex1096 : IsComplex outgoing1096 incoming1096 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=147
def outgoing1097 : Matrix 7 2 := fun i j => ([false, false, true, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1097 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1097 : IsComplex outgoing1097 incoming1097 := by lin_cert using ()
-- CW_eta_nu_sigma s=21 t=148
def outgoing1098 : Matrix 1 7 := fun i j => ([false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming1098 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex1098 : IsComplex outgoing1098 incoming1098 := by lin_cert using ()
-- CW_eta_nu_sigma s=22 t=144
def outgoing1099 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming1099 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex1099 : IsComplex outgoing1099 incoming1099 := by lin_cert using ()
end ReleaseComplex10
