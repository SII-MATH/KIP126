import LinearCertificates.Checker
namespace ReleaseComplex0
open LinearCertificates LinProgramCertificates
-- C2 s=4 t=130
def outgoing0 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming0 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex0 : IsComplex outgoing0 incoming0 := by lin_cert using ()
-- C2 s=4 t=131
def outgoing1 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming1 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex1 : IsComplex outgoing1 incoming1 := by lin_cert using ()
-- C2 s=5 t=130
def outgoing2 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2 : IsComplex outgoing2 incoming2 := by lin_cert using ()
-- C2 s=6 t=130
def outgoing3 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming3 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex3 : IsComplex outgoing3 incoming3 := by lin_cert using ()
-- C2 s=6 t=131
def outgoing4 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming4 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex4 : IsComplex outgoing4 incoming4 := by lin_cert using ()
-- C2 s=6 t=132
def outgoing5 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming5 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex5 : IsComplex outgoing5 incoming5 := by lin_cert using ()
-- C2 s=6 t=133
def outgoing6 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming6 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex6 : IsComplex outgoing6 incoming6 := by lin_cert using ()
-- C2 s=7 t=129
def outgoing7 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming7 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex7 : IsComplex outgoing7 incoming7 := by lin_cert using ()
-- C2 s=7 t=131
def outgoing8 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming8 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex8 : IsComplex outgoing8 incoming8 := by lin_cert using ()
-- C2 s=7 t=132
def outgoing9 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming9 : Matrix 3 3 := fun i j => ([false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex9 : IsComplex outgoing9 incoming9 := by lin_cert using ()
-- C2 s=7 t=133
def outgoing10 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming10 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex10 : IsComplex outgoing10 incoming10 := by lin_cert using ()
-- C2 s=7 t=134
def outgoing11 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming11 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex11 : IsComplex outgoing11 incoming11 := by lin_cert using ()
-- C2 s=8 t=130
def outgoing12 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming12 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex12 : IsComplex outgoing12 incoming12 := by lin_cert using ()
-- C2 s=8 t=131
def outgoing13 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming13 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex13 : IsComplex outgoing13 incoming13 := by lin_cert using ()
-- C2 s=8 t=132
def outgoing14 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming14 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex14 : IsComplex outgoing14 incoming14 := by lin_cert using ()
-- C2 s=8 t=133
def outgoing15 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming15 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex15 : IsComplex outgoing15 incoming15 := by lin_cert using ()
-- C2 s=8 t=134
def outgoing16 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming16 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex16 : IsComplex outgoing16 incoming16 := by lin_cert using ()
-- C2 s=8 t=135
def outgoing17 : Matrix 6 4 := fun i j => ([false, false, true, false, false, false, true, false, false, false, true, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming17 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex17 : IsComplex outgoing17 incoming17 := by lin_cert using ()
-- C2 s=9 t=131
def outgoing18 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming18 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex18 : IsComplex outgoing18 incoming18 := by lin_cert using ()
-- C2 s=9 t=132
def outgoing19 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming19 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex19 : IsComplex outgoing19 incoming19 := by lin_cert using ()
-- C2 s=9 t=133
def outgoing20 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming20 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex20 : IsComplex outgoing20 incoming20 := by lin_cert using ()
-- C2 s=9 t=134
def outgoing21 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming21 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex21 : IsComplex outgoing21 incoming21 := by lin_cert using ()
-- C2 s=9 t=135
def outgoing22 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming22 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex22 : IsComplex outgoing22 incoming22 := by lin_cert using ()
-- C2 s=9 t=136
def outgoing23 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming23 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex23 : IsComplex outgoing23 incoming23 := by lin_cert using ()
-- C2 s=10 t=132
def outgoing24 : Matrix 2 5 := fun i j => ([false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming24 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex24 : IsComplex outgoing24 incoming24 := by lin_cert using ()
-- C2 s=10 t=133
def outgoing25 : Matrix 3 2 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming25 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex25 : IsComplex outgoing25 incoming25 := by lin_cert using ()
-- C2 s=10 t=134
def outgoing26 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming26 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex26 : IsComplex outgoing26 incoming26 := by lin_cert using ()
-- C2 s=10 t=135
def outgoing27 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming27 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex27 : IsComplex outgoing27 incoming27 := by lin_cert using ()
-- C2 s=10 t=136
def outgoing28 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming28 : Matrix 6 4 := fun i j => ([false, false, true, false, false, false, true, false, false, false, true, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex28 : IsComplex outgoing28 incoming28 := by lin_cert using ()
-- C2 s=10 t=137
def outgoing29 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming29 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex29 : IsComplex outgoing29 incoming29 := by lin_cert using ()
-- C2 s=11 t=134
def outgoing30 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming30 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex30 : IsComplex outgoing30 incoming30 := by lin_cert using ()
-- C2 s=11 t=135
def outgoing31 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming31 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex31 : IsComplex outgoing31 incoming31 := by lin_cert using ()
-- C2 s=11 t=136
def outgoing32 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming32 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex32 : IsComplex outgoing32 incoming32 := by lin_cert using ()
-- C2 s=11 t=137
def outgoing33 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming33 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex33 : IsComplex outgoing33 incoming33 := by lin_cert using ()
-- C2 s=11 t=138
def outgoing34 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming34 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex34 : IsComplex outgoing34 incoming34 := by lin_cert using ()
-- C2 s=12 t=134
def outgoing35 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming35 : Matrix 3 2 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex35 : IsComplex outgoing35 incoming35 := by lin_cert using ()
-- C2 s=12 t=135
def outgoing36 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming36 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex36 : IsComplex outgoing36 incoming36 := by lin_cert using ()
-- C2 s=12 t=136
def outgoing37 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming37 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex37 : IsComplex outgoing37 incoming37 := by lin_cert using ()
-- C2 s=12 t=137
def outgoing38 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming38 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex38 : IsComplex outgoing38 incoming38 := by lin_cert using ()
-- C2 s=12 t=138
def outgoing39 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming39 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex39 : IsComplex outgoing39 incoming39 := by lin_cert using ()
-- C2 s=12 t=139
def outgoing40 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming40 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex40 : IsComplex outgoing40 incoming40 := by lin_cert using ()
-- C2 s=13 t=135
def outgoing41 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming41 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex41 : IsComplex outgoing41 incoming41 := by lin_cert using ()
-- C2 s=13 t=136
def outgoing42 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming42 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex42 : IsComplex outgoing42 incoming42 := by lin_cert using ()
-- C2 s=13 t=137
def outgoing43 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming43 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex43 : IsComplex outgoing43 incoming43 := by lin_cert using ()
-- C2 s=13 t=138
def outgoing44 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming44 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex44 : IsComplex outgoing44 incoming44 := by lin_cert using ()
-- C2 s=13 t=139
def outgoing45 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming45 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex45 : IsComplex outgoing45 incoming45 := by lin_cert using ()
-- C2 s=13 t=140
def outgoing46 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming46 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex46 : IsComplex outgoing46 incoming46 := by lin_cert using ()
-- C2 s=14 t=136
def outgoing47 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming47 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex47 : IsComplex outgoing47 incoming47 := by lin_cert using ()
-- C2 s=14 t=137
def outgoing48 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming48 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex48 : IsComplex outgoing48 incoming48 := by lin_cert using ()
-- C2 s=14 t=138
def outgoing49 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming49 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex49 : IsComplex outgoing49 incoming49 := by lin_cert using ()
-- C2 s=14 t=139
def outgoing50 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming50 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex50 : IsComplex outgoing50 incoming50 := by lin_cert using ()
-- C2 s=14 t=140
def outgoing51 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val * 4 + j.val]!
def incoming51 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex51 : IsComplex outgoing51 incoming51 := by lin_cert using ()
-- C2 s=14 t=141
def outgoing52 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming52 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex52 : IsComplex outgoing52 incoming52 := by lin_cert using ()
-- C2 s=15 t=137
def outgoing53 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming53 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex53 : IsComplex outgoing53 incoming53 := by lin_cert using ()
-- C2 s=15 t=138
def outgoing54 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming54 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex54 : IsComplex outgoing54 incoming54 := by lin_cert using ()
-- C2 s=15 t=139
def outgoing55 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming55 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex55 : IsComplex outgoing55 incoming55 := by lin_cert using ()
-- C2 s=15 t=140
def outgoing56 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming56 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex56 : IsComplex outgoing56 incoming56 := by lin_cert using ()
-- C2 s=15 t=141
def outgoing57 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming57 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex57 : IsComplex outgoing57 incoming57 := by lin_cert using ()
-- C2 s=15 t=142
def outgoing58 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming58 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex58 : IsComplex outgoing58 incoming58 := by lin_cert using ()
-- C2 s=16 t=138
def outgoing59 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming59 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex59 : IsComplex outgoing59 incoming59 := by lin_cert using ()
-- C2 s=16 t=139
def outgoing60 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming60 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex60 : IsComplex outgoing60 incoming60 := by lin_cert using ()
-- C2 s=16 t=140
def outgoing61 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming61 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex61 : IsComplex outgoing61 incoming61 := by lin_cert using ()
-- C2 s=16 t=142
def outgoing62 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming62 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex62 : IsComplex outgoing62 incoming62 := by lin_cert using ()
-- C2 s=16 t=143
def outgoing63 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming63 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex63 : IsComplex outgoing63 incoming63 := by lin_cert using ()
-- C2 s=17 t=139
def outgoing64 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming64 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex64 : IsComplex outgoing64 incoming64 := by lin_cert using ()
-- C2 s=17 t=140
def outgoing65 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming65 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex65 : IsComplex outgoing65 incoming65 := by lin_cert using ()
-- C2 s=17 t=141
def outgoing66 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming66 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex66 : IsComplex outgoing66 incoming66 := by lin_cert using ()
-- C2 s=17 t=142
def outgoing67 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming67 : Matrix 5 2 := fun i j => ([false, false, false, false, true, false, true, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex67 : IsComplex outgoing67 incoming67 := by lin_cert using ()
-- C2 s=17 t=143
def outgoing68 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming68 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex68 : IsComplex outgoing68 incoming68 := by lin_cert using ()
-- C2 s=17 t=144
def outgoing69 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming69 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex69 : IsComplex outgoing69 incoming69 := by lin_cert using ()
-- C2 s=18 t=140
def outgoing70 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming70 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex70 : IsComplex outgoing70 incoming70 := by lin_cert using ()
-- C2 s=18 t=141
def outgoing71 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming71 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex71 : IsComplex outgoing71 incoming71 := by lin_cert using ()
-- C2 s=18 t=143
def outgoing72 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming72 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex72 : IsComplex outgoing72 incoming72 := by lin_cert using ()
-- C2 s=18 t=144
def outgoing73 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming73 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex73 : IsComplex outgoing73 incoming73 := by lin_cert using ()
-- C2 s=18 t=145
def outgoing74 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming74 : Matrix 3 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex74 : IsComplex outgoing74 incoming74 := by lin_cert using ()
-- C2 s=19 t=141
def outgoing75 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming75 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex75 : IsComplex outgoing75 incoming75 := by lin_cert using ()
-- C2 s=19 t=142
def outgoing76 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming76 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex76 : IsComplex outgoing76 incoming76 := by lin_cert using ()
-- C2 s=19 t=143
def outgoing77 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming77 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex77 : IsComplex outgoing77 incoming77 := by lin_cert using ()
-- C2 s=19 t=145
def outgoing78 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming78 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex78 : IsComplex outgoing78 incoming78 := by lin_cert using ()
-- C2 s=19 t=146
def outgoing79 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming79 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex79 : IsComplex outgoing79 incoming79 := by lin_cert using ()
-- C2 s=20 t=142
def outgoing80 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming80 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex80 : IsComplex outgoing80 incoming80 := by lin_cert using ()
-- C2 s=20 t=143
def outgoing81 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming81 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex81 : IsComplex outgoing81 incoming81 := by lin_cert using ()
-- C2 s=20 t=144
def outgoing82 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming82 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex82 : IsComplex outgoing82 incoming82 := by lin_cert using ()
-- C2 s=20 t=145
def outgoing83 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming83 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex83 : IsComplex outgoing83 incoming83 := by lin_cert using ()
-- C2 s=20 t=146
def outgoing84 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming84 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex84 : IsComplex outgoing84 incoming84 := by lin_cert using ()
-- C2 s=20 t=147
def outgoing85 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming85 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex85 : IsComplex outgoing85 incoming85 := by lin_cert using ()
-- C2 s=21 t=143
def outgoing86 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming86 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex86 : IsComplex outgoing86 incoming86 := by lin_cert using ()
-- C2 s=21 t=144
def outgoing87 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming87 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex87 : IsComplex outgoing87 incoming87 := by lin_cert using ()
-- C2 s=21 t=146
def outgoing88 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming88 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex88 : IsComplex outgoing88 incoming88 := by lin_cert using ()
-- C2 s=21 t=147
def outgoing89 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming89 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex89 : IsComplex outgoing89 incoming89 := by lin_cert using ()
-- C2 s=21 t=148
def outgoing90 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming90 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex90 : IsComplex outgoing90 incoming90 := by lin_cert using ()
-- C2 s=22 t=144
def outgoing91 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming91 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex91 : IsComplex outgoing91 incoming91 := by lin_cert using ()
-- C2 s=22 t=145
def outgoing92 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming92 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex92 : IsComplex outgoing92 incoming92 := by lin_cert using ()
-- C2 s=22 t=146
def outgoing93 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming93 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex93 : IsComplex outgoing93 incoming93 := by lin_cert using ()
-- C2 s=22 t=147
def outgoing94 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming94 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex94 : IsComplex outgoing94 incoming94 := by lin_cert using ()
-- C2 s=22 t=148
def outgoing95 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming95 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex95 : IsComplex outgoing95 incoming95 := by lin_cert using ()
-- C2 s=22 t=149
def outgoing96 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming96 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex96 : IsComplex outgoing96 incoming96 := by lin_cert using ()
-- C2 s=23 t=145
def outgoing97 : Matrix 3 2 := fun i j => ([false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming97 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex97 : IsComplex outgoing97 incoming97 := by lin_cert using ()
-- C2 s=23 t=146
def outgoing98 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming98 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex98 : IsComplex outgoing98 incoming98 := by lin_cert using ()
-- C2 s=23 t=147
def outgoing99 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming99 : Matrix 2 3 := fun i j => ([true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex99 : IsComplex outgoing99 incoming99 := by lin_cert using ()
end ReleaseComplex0
