import LinearCertificates.Checker
namespace ReleaseComplex1
open LinearCertificates LinProgramCertificates
-- C2 s=23 t=148
def outgoing100 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming100 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex100 : IsComplex outgoing100 incoming100 := by lin_cert using ()
-- C2 s=23 t=149
def outgoing101 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming101 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex101 : IsComplex outgoing101 incoming101 := by lin_cert using ()
-- C2 s=23 t=150
def outgoing102 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming102 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex102 : IsComplex outgoing102 incoming102 := by lin_cert using ()
-- C2 s=24 t=146
def outgoing103 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming103 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex103 : IsComplex outgoing103 incoming103 := by lin_cert using ()
-- C2 s=24 t=147
def outgoing104 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming104 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex104 : IsComplex outgoing104 incoming104 := by lin_cert using ()
-- C2 s=24 t=148
def outgoing105 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming105 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex105 : IsComplex outgoing105 incoming105 := by lin_cert using ()
-- C2 s=24 t=149
def outgoing106 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming106 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex106 : IsComplex outgoing106 incoming106 := by lin_cert using ()
-- C2 s=24 t=150
def outgoing107 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming107 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex107 : IsComplex outgoing107 incoming107 := by lin_cert using ()
-- C2 s=24 t=151
def outgoing108 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming108 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex108 : IsComplex outgoing108 incoming108 := by lin_cert using ()
-- C2 s=25 t=147
def outgoing109 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming109 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex109 : IsComplex outgoing109 incoming109 := by lin_cert using ()
-- C2 s=25 t=148
def outgoing110 : Matrix 4 2 := fun i j => ([false, false, true, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming110 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex110 : IsComplex outgoing110 incoming110 := by lin_cert using ()
-- C2 s=25 t=149
def outgoing111 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming111 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex111 : IsComplex outgoing111 incoming111 := by lin_cert using ()
-- C2 s=25 t=150
def outgoing112 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming112 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex112 : IsComplex outgoing112 incoming112 := by lin_cert using ()
-- C2 s=25 t=151
def outgoing113 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming113 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex113 : IsComplex outgoing113 incoming113 := by lin_cert using ()
-- C2 s=25 t=152
def outgoing114 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming114 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex114 : IsComplex outgoing114 incoming114 := by lin_cert using ()
-- C2h4 s=4 t=130
def outgoing115 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming115 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex115 : IsComplex outgoing115 incoming115 := by lin_cert using ()
-- C2h4 s=4 t=131
def outgoing116 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming116 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex116 : IsComplex outgoing116 incoming116 := by lin_cert using ()
-- C2h4 s=5 t=128
def outgoing117 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming117 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex117 : IsComplex outgoing117 incoming117 := by lin_cert using ()
-- C2h4 s=5 t=130
def outgoing118 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming118 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex118 : IsComplex outgoing118 incoming118 := by lin_cert using ()
-- C2h4 s=5 t=132
def outgoing119 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming119 : Matrix 3 1 := fun i j => ([true, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex119 : IsComplex outgoing119 incoming119 := by lin_cert using ()
-- C2h4 s=6 t=128
def outgoing120 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming120 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex120 : IsComplex outgoing120 incoming120 := by lin_cert using ()
-- C2h4 s=6 t=129
def outgoing121 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming121 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex121 : IsComplex outgoing121 incoming121 := by lin_cert using ()
-- C2h4 s=6 t=130
def outgoing122 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming122 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex122 : IsComplex outgoing122 incoming122 := by lin_cert using ()
-- C2h4 s=6 t=131
def outgoing123 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming123 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex123 : IsComplex outgoing123 incoming123 := by lin_cert using ()
-- C2h4 s=6 t=132
def outgoing124 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming124 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex124 : IsComplex outgoing124 incoming124 := by lin_cert using ()
-- C2h4 s=6 t=133
def outgoing125 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming125 : Matrix 7 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex125 : IsComplex outgoing125 incoming125 := by lin_cert using ()
-- C2h4 s=7 t=129
def outgoing126 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming126 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex126 : IsComplex outgoing126 incoming126 := by lin_cert using ()
-- C2h4 s=7 t=130
def outgoing127 : Matrix 3 3 := fun i j => ([true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming127 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex127 : IsComplex outgoing127 incoming127 := by lin_cert using ()
-- C2h4 s=7 t=131
def outgoing128 : Matrix 2 2 := fun i j => ([true, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming128 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex128 : IsComplex outgoing128 incoming128 := by lin_cert using ()
-- C2h4 s=7 t=132
def outgoing129 : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming129 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex129 : IsComplex outgoing129 incoming129 := by lin_cert using ()
-- C2h4 s=7 t=133
def outgoing130 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming130 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex130 : IsComplex outgoing130 incoming130 := by lin_cert using ()
-- C2h4 s=7 t=134
def outgoing131 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming131 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex131 : IsComplex outgoing131 incoming131 := by lin_cert using ()
-- C2h4 s=8 t=130
def outgoing132 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming132 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex132 : IsComplex outgoing132 incoming132 := by lin_cert using ()
-- C2h4 s=8 t=131
def outgoing133 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming133 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex133 : IsComplex outgoing133 incoming133 := by lin_cert using ()
-- C2h4 s=8 t=132
def outgoing134 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming134 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex134 : IsComplex outgoing134 incoming134 := by lin_cert using ()
-- C2h4 s=8 t=133
def outgoing135 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming135 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex135 : IsComplex outgoing135 incoming135 := by lin_cert using ()
-- C2h4 s=8 t=134
def outgoing136 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming136 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex136 : IsComplex outgoing136 incoming136 := by lin_cert using ()
-- C2h4 s=8 t=135
def outgoing137 : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming137 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex137 : IsComplex outgoing137 incoming137 := by lin_cert using ()
-- C2h4 s=9 t=131
def outgoing138 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming138 : Matrix 3 3 := fun i j => ([true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex138 : IsComplex outgoing138 incoming138 := by lin_cert using ()
-- C2h4 s=9 t=132
def outgoing139 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming139 : Matrix 2 2 := fun i j => ([true, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex139 : IsComplex outgoing139 incoming139 := by lin_cert using ()
-- C2h4 s=9 t=133
def outgoing140 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming140 : Matrix 6 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex140 : IsComplex outgoing140 incoming140 := by lin_cert using ()
-- C2h4 s=9 t=134
def outgoing141 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming141 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex141 : IsComplex outgoing141 incoming141 := by lin_cert using ()
-- C2h4 s=9 t=135
def outgoing142 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming142 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex142 : IsComplex outgoing142 incoming142 := by lin_cert using ()
-- C2h4 s=9 t=136
def outgoing143 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming143 : Matrix 7 8 := fun i j => ([false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex143 : IsComplex outgoing143 incoming143 := by lin_cert using ()
-- C2h4 s=10 t=132
def outgoing144 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming144 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex144 : IsComplex outgoing144 incoming144 := by lin_cert using ()
-- C2h4 s=10 t=133
def outgoing145 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming145 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex145 : IsComplex outgoing145 incoming145 := by lin_cert using ()
-- C2h4 s=10 t=134
def outgoing146 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming146 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex146 : IsComplex outgoing146 incoming146 := by lin_cert using ()
-- C2h4 s=10 t=135
def outgoing147 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming147 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex147 : IsComplex outgoing147 incoming147 := by lin_cert using ()
-- C2h4 s=10 t=136
def outgoing148 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming148 : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex148 : IsComplex outgoing148 incoming148 := by lin_cert using ()
-- C2h4 s=10 t=137
def outgoing149 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming149 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex149 : IsComplex outgoing149 incoming149 := by lin_cert using ()
-- C2h4 s=11 t=133
def outgoing150 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming150 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex150 : IsComplex outgoing150 incoming150 := by lin_cert using ()
-- C2h4 s=11 t=134
def outgoing151 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming151 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex151 : IsComplex outgoing151 incoming151 := by lin_cert using ()
-- C2h4 s=11 t=135
def outgoing152 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming152 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex152 : IsComplex outgoing152 incoming152 := by lin_cert using ()
-- C2h4 s=11 t=136
def outgoing153 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming153 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex153 : IsComplex outgoing153 incoming153 := by lin_cert using ()
-- C2h4 s=11 t=137
def outgoing154 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming154 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex154 : IsComplex outgoing154 incoming154 := by lin_cert using ()
-- C2h4 s=11 t=138
def outgoing155 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming155 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex155 : IsComplex outgoing155 incoming155 := by lin_cert using ()
-- C2h4 s=12 t=134
def outgoing156 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming156 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex156 : IsComplex outgoing156 incoming156 := by lin_cert using ()
-- C2h4 s=12 t=135
def outgoing157 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming157 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex157 : IsComplex outgoing157 incoming157 := by lin_cert using ()
-- C2h4 s=12 t=136
def outgoing158 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming158 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex158 : IsComplex outgoing158 incoming158 := by lin_cert using ()
-- C2h4 s=12 t=137
def outgoing159 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming159 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex159 : IsComplex outgoing159 incoming159 := by lin_cert using ()
-- C2h4 s=12 t=138
def outgoing160 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming160 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex160 : IsComplex outgoing160 incoming160 := by lin_cert using ()
-- C2h4 s=12 t=139
def outgoing161 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming161 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex161 : IsComplex outgoing161 incoming161 := by lin_cert using ()
-- C2h4 s=13 t=135
def outgoing162 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming162 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex162 : IsComplex outgoing162 incoming162 := by lin_cert using ()
-- C2h4 s=13 t=136
def outgoing163 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming163 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex163 : IsComplex outgoing163 incoming163 := by lin_cert using ()
-- C2h4 s=13 t=137
def outgoing164 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming164 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex164 : IsComplex outgoing164 incoming164 := by lin_cert using ()
-- C2h4 s=13 t=138
def outgoing165 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming165 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex165 : IsComplex outgoing165 incoming165 := by lin_cert using ()
-- C2h4 s=13 t=139
def outgoing166 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming166 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex166 : IsComplex outgoing166 incoming166 := by lin_cert using ()
-- C2h4 s=13 t=140
def outgoing167 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming167 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex167 : IsComplex outgoing167 incoming167 := by lin_cert using ()
-- C2h4 s=14 t=136
def outgoing168 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming168 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex168 : IsComplex outgoing168 incoming168 := by lin_cert using ()
-- C2h4 s=14 t=137
def outgoing169 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming169 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex169 : IsComplex outgoing169 incoming169 := by lin_cert using ()
-- C2h4 s=14 t=138
def outgoing170 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming170 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex170 : IsComplex outgoing170 incoming170 := by lin_cert using ()
-- C2h4 s=14 t=139
def outgoing171 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming171 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex171 : IsComplex outgoing171 incoming171 := by lin_cert using ()
-- C2h4 s=14 t=140
def outgoing172 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming172 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex172 : IsComplex outgoing172 incoming172 := by lin_cert using ()
-- C2h4 s=14 t=141
def outgoing173 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming173 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex173 : IsComplex outgoing173 incoming173 := by lin_cert using ()
-- C2h4 s=15 t=137
def outgoing174 : Matrix 3 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming174 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex174 : IsComplex outgoing174 incoming174 := by lin_cert using ()
-- C2h4 s=15 t=138
def outgoing175 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming175 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex175 : IsComplex outgoing175 incoming175 := by lin_cert using ()
-- C2h4 s=15 t=139
def outgoing176 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming176 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex176 : IsComplex outgoing176 incoming176 := by lin_cert using ()
-- C2h4 s=15 t=140
def outgoing177 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming177 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex177 : IsComplex outgoing177 incoming177 := by lin_cert using ()
-- C2h4 s=15 t=141
def outgoing178 : Matrix 7 4 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming178 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex178 : IsComplex outgoing178 incoming178 := by lin_cert using ()
-- C2h4 s=15 t=142
def outgoing179 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming179 : Matrix 6 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex179 : IsComplex outgoing179 incoming179 := by lin_cert using ()
-- C2h4 s=16 t=138
def outgoing180 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming180 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex180 : IsComplex outgoing180 incoming180 := by lin_cert using ()
-- C2h4 s=16 t=139
def outgoing181 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming181 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex181 : IsComplex outgoing181 incoming181 := by lin_cert using ()
-- C2h4 s=16 t=140
def outgoing182 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming182 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex182 : IsComplex outgoing182 incoming182 := by lin_cert using ()
-- C2h4 s=16 t=141
def outgoing183 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming183 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex183 : IsComplex outgoing183 incoming183 := by lin_cert using ()
-- C2h4 s=16 t=142
def outgoing184 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming184 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex184 : IsComplex outgoing184 incoming184 := by lin_cert using ()
-- C2h4 s=16 t=143
def outgoing185 : Matrix 5 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
def incoming185 : Matrix 9 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex185 : IsComplex outgoing185 incoming185 := by lin_cert using ()
-- C2h4 s=17 t=139
def outgoing186 : Matrix 6 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming186 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex186 : IsComplex outgoing186 incoming186 := by lin_cert using ()
-- C2h4 s=17 t=140
def outgoing187 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming187 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex187 : IsComplex outgoing187 incoming187 := by lin_cert using ()
-- C2h4 s=17 t=141
def outgoing188 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming188 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex188 : IsComplex outgoing188 incoming188 := by lin_cert using ()
-- C2h4 s=17 t=142
def outgoing189 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming189 : Matrix 7 4 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true, false, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex189 : IsComplex outgoing189 incoming189 := by lin_cert using ()
-- C2h4 s=17 t=143
def outgoing190 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming190 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex190 : IsComplex outgoing190 incoming190 := by lin_cert using ()
-- C2h4 s=17 t=144
def outgoing191 : Matrix 6 6 := fun i j => ([true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming191 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex191 : IsComplex outgoing191 incoming191 := by lin_cert using ()
-- C2h4 s=18 t=140
def outgoing192 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming192 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex192 : IsComplex outgoing192 incoming192 := by lin_cert using ()
-- C2h4 s=18 t=141
def outgoing193 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming193 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex193 : IsComplex outgoing193 incoming193 := by lin_cert using ()
-- C2h4 s=18 t=142
def outgoing194 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming194 : Matrix 5 1 := fun i j => ([false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex194 : IsComplex outgoing194 incoming194 := by lin_cert using ()
-- C2h4 s=18 t=143
def outgoing195 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming195 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex195 : IsComplex outgoing195 incoming195 := by lin_cert using ()
-- C2h4 s=18 t=144
def outgoing196 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming196 : Matrix 5 9 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 9 + j.val]!
theorem complex196 : IsComplex outgoing196 incoming196 := by lin_cert using ()
-- C2h4 s=18 t=145
def outgoing197 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming197 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex197 : IsComplex outgoing197 incoming197 := by lin_cert using ()
-- C2h4 s=19 t=141
def outgoing198 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming198 : Matrix 5 1 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex198 : IsComplex outgoing198 incoming198 := by lin_cert using ()
-- C2h4 s=19 t=142
def outgoing199 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming199 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex199 : IsComplex outgoing199 incoming199 := by lin_cert using ()
end ReleaseComplex1
