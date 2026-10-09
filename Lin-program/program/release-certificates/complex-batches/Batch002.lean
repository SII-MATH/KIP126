import LinearCertificates.Checker
namespace ReleaseComplex2
open LinearCertificates LinProgramCertificates
-- C2h4 s=19 t=143
def outgoing200 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming200 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex200 : IsComplex outgoing200 incoming200 := by lin_cert using ()
-- C2h4 s=19 t=144
def outgoing201 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming201 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex201 : IsComplex outgoing201 incoming201 := by lin_cert using ()
-- C2h4 s=19 t=145
def outgoing202 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming202 : Matrix 6 6 := fun i j => ([true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex202 : IsComplex outgoing202 incoming202 := by lin_cert using ()
-- C2h4 s=19 t=146
def outgoing203 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, true, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming203 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex203 : IsComplex outgoing203 incoming203 := by lin_cert using ()
-- C2h4 s=20 t=142
def outgoing204 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming204 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex204 : IsComplex outgoing204 incoming204 := by lin_cert using ()
-- C2h4 s=20 t=143
def outgoing205 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming205 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex205 : IsComplex outgoing205 incoming205 := by lin_cert using ()
-- C2h4 s=20 t=144
def outgoing206 : Matrix 3 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming206 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex206 : IsComplex outgoing206 incoming206 := by lin_cert using ()
-- C2h4 s=20 t=145
def outgoing207 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming207 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex207 : IsComplex outgoing207 incoming207 := by lin_cert using ()
-- C2h4 s=20 t=146
def outgoing208 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming208 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex208 : IsComplex outgoing208 incoming208 := by lin_cert using ()
-- C2h4 s=20 t=147
def outgoing209 : Matrix 3 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming209 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex209 : IsComplex outgoing209 incoming209 := by lin_cert using ()
-- C2h4 s=21 t=143
def outgoing210 : Matrix 4 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming210 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex210 : IsComplex outgoing210 incoming210 := by lin_cert using ()
-- C2h4 s=21 t=144
def outgoing211 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming211 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex211 : IsComplex outgoing211 incoming211 := by lin_cert using ()
-- C2h4 s=21 t=145
def outgoing212 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming212 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex212 : IsComplex outgoing212 incoming212 := by lin_cert using ()
-- C2h4 s=21 t=146
def outgoing213 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming213 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex213 : IsComplex outgoing213 incoming213 := by lin_cert using ()
-- C2h4 s=21 t=147
def outgoing214 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming214 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, true, false, false, true, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex214 : IsComplex outgoing214 incoming214 := by lin_cert using ()
-- C2h4 s=21 t=148
def outgoing215 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming215 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex215 : IsComplex outgoing215 incoming215 := by lin_cert using ()
-- C2h4 s=22 t=144
def outgoing216 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming216 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex216 : IsComplex outgoing216 incoming216 := by lin_cert using ()
-- C2h4 s=22 t=145
def outgoing217 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming217 : Matrix 3 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex217 : IsComplex outgoing217 incoming217 := by lin_cert using ()
-- C2h4 s=22 t=146
def outgoing218 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming218 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex218 : IsComplex outgoing218 incoming218 := by lin_cert using ()
-- C2h4 s=22 t=147
def outgoing219 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming219 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex219 : IsComplex outgoing219 incoming219 := by lin_cert using ()
-- C2h4 s=22 t=148
def outgoing220 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming220 : Matrix 3 5 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex220 : IsComplex outgoing220 incoming220 := by lin_cert using ()
-- C2h4 s=22 t=149
def outgoing221 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming221 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex221 : IsComplex outgoing221 incoming221 := by lin_cert using ()
-- C2h4 s=23 t=145
def outgoing222 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming222 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex222 : IsComplex outgoing222 incoming222 := by lin_cert using ()
-- C2h4 s=23 t=146
def outgoing223 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming223 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex223 : IsComplex outgoing223 incoming223 := by lin_cert using ()
-- C2h4 s=23 t=147
def outgoing224 : Matrix 3 5 := fun i j => ([false, false, true, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming224 : Matrix 5 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex224 : IsComplex outgoing224 incoming224 := by lin_cert using ()
-- C2h4 s=23 t=148
def outgoing225 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming225 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex225 : IsComplex outgoing225 incoming225 := by lin_cert using ()
-- C2h4 s=23 t=149
def outgoing226 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming226 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex226 : IsComplex outgoing226 incoming226 := by lin_cert using ()
-- C2h4 s=23 t=150
def outgoing227 : Matrix 3 6 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming227 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex227 : IsComplex outgoing227 incoming227 := by lin_cert using ()
-- C2h4 s=24 t=146
def outgoing228 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming228 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex228 : IsComplex outgoing228 incoming228 := by lin_cert using ()
-- C2h4 s=24 t=147
def outgoing229 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming229 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex229 : IsComplex outgoing229 incoming229 := by lin_cert using ()
-- C2h4 s=24 t=148
def outgoing230 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming230 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex230 : IsComplex outgoing230 incoming230 := by lin_cert using ()
-- C2h4 s=24 t=149
def outgoing231 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming231 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex231 : IsComplex outgoing231 incoming231 := by lin_cert using ()
-- C2h4 s=24 t=150
def outgoing232 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming232 : Matrix 5 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex232 : IsComplex outgoing232 incoming232 := by lin_cert using ()
-- C2h4 s=24 t=151
def outgoing233 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming233 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex233 : IsComplex outgoing233 incoming233 := by lin_cert using ()
-- C2h4 s=25 t=147
def outgoing234 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming234 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex234 : IsComplex outgoing234 incoming234 := by lin_cert using ()
-- C2h4 s=25 t=148
def outgoing235 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming235 : Matrix 3 5 := fun i j => ([false, false, true, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex235 : IsComplex outgoing235 incoming235 := by lin_cert using ()
-- C2h4 s=25 t=149
def outgoing236 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming236 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex236 : IsComplex outgoing236 incoming236 := by lin_cert using ()
-- C2h4 s=25 t=150
def outgoing237 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming237 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex237 : IsComplex outgoing237 incoming237 := by lin_cert using ()
-- C2h4 s=25 t=151
def outgoing238 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming238 : Matrix 3 6 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex238 : IsComplex outgoing238 incoming238 := by lin_cert using ()
-- C2h4 s=25 t=152
def outgoing239 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming239 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex239 : IsComplex outgoing239 incoming239 := by lin_cert using ()
-- C2h5 s=2 t=128
def outgoing240 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming240 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex240 : IsComplex outgoing240 incoming240 := by lin_cert using ()
-- C2h5 s=3 t=128
def outgoing241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming241 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex241 : IsComplex outgoing241 incoming241 := by lin_cert using ()
-- C2h5 s=4 t=128
def outgoing242 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming242 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex242 : IsComplex outgoing242 incoming242 := by lin_cert using ()
-- C2h5 s=4 t=129
def outgoing243 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming243 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex243 : IsComplex outgoing243 incoming243 := by lin_cert using ()
-- C2h5 s=4 t=130
def outgoing244 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming244 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex244 : IsComplex outgoing244 incoming244 := by lin_cert using ()
-- C2h5 s=4 t=131
def outgoing245 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming245 : Matrix 4 1 := fun i j => ([false, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex245 : IsComplex outgoing245 incoming245 := by lin_cert using ()
-- C2h5 s=5 t=130
def outgoing246 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming246 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex246 : IsComplex outgoing246 incoming246 := by lin_cert using ()
-- C2h5 s=5 t=132
def outgoing247 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming247 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex247 : IsComplex outgoing247 incoming247 := by lin_cert using ()
-- C2h5 s=6 t=129
def outgoing248 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming248 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex248 : IsComplex outgoing248 incoming248 := by lin_cert using ()
-- C2h5 s=6 t=130
def outgoing249 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming249 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex249 : IsComplex outgoing249 incoming249 := by lin_cert using ()
-- C2h5 s=6 t=131
def outgoing250 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming250 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex250 : IsComplex outgoing250 incoming250 := by lin_cert using ()
-- C2h5 s=6 t=132
def outgoing251 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming251 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex251 : IsComplex outgoing251 incoming251 := by lin_cert using ()
-- C2h5 s=6 t=133
def outgoing252 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming252 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex252 : IsComplex outgoing252 incoming252 := by lin_cert using ()
-- C2h5 s=7 t=129
def outgoing253 : Matrix 4 2 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming253 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex253 : IsComplex outgoing253 incoming253 := by lin_cert using ()
-- C2h5 s=7 t=131
def outgoing254 : Matrix 3 3 := fun i j => ([false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming254 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex254 : IsComplex outgoing254 incoming254 := by lin_cert using ()
-- C2h5 s=7 t=132
def outgoing255 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming255 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex255 : IsComplex outgoing255 incoming255 := by lin_cert using ()
-- C2h5 s=7 t=133
def outgoing256 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming256 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex256 : IsComplex outgoing256 incoming256 := by lin_cert using ()
-- C2h5 s=7 t=134
def outgoing257 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming257 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex257 : IsComplex outgoing257 incoming257 := by lin_cert using ()
-- C2h5 s=8 t=130
def outgoing258 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming258 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex258 : IsComplex outgoing258 incoming258 := by lin_cert using ()
-- C2h5 s=8 t=131
def outgoing259 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming259 : Matrix 2 3 := fun i j => ([true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex259 : IsComplex outgoing259 incoming259 := by lin_cert using ()
-- C2h5 s=8 t=132
def outgoing260 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming260 : Matrix 3 3 := fun i j => ([true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex260 : IsComplex outgoing260 incoming260 := by lin_cert using ()
-- C2h5 s=8 t=133
def outgoing261 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming261 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex261 : IsComplex outgoing261 incoming261 := by lin_cert using ()
-- C2h5 s=8 t=134
def outgoing262 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming262 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex262 : IsComplex outgoing262 incoming262 := by lin_cert using ()
-- C2h5 s=8 t=135
def outgoing263 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming263 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex263 : IsComplex outgoing263 incoming263 := by lin_cert using ()
-- C2h5 s=9 t=131
def outgoing264 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming264 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex264 : IsComplex outgoing264 incoming264 := by lin_cert using ()
-- C2h5 s=9 t=132
def outgoing265 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming265 : Matrix 3 3 := fun i j => ([false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex265 : IsComplex outgoing265 incoming265 := by lin_cert using ()
-- C2h5 s=9 t=133
def outgoing266 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming266 : Matrix 3 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex266 : IsComplex outgoing266 incoming266 := by lin_cert using ()
-- C2h5 s=9 t=134
def outgoing267 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming267 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex267 : IsComplex outgoing267 incoming267 := by lin_cert using ()
-- C2h5 s=9 t=135
def outgoing268 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming268 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex268 : IsComplex outgoing268 incoming268 := by lin_cert using ()
-- C2h5 s=9 t=136
def outgoing269 : Matrix 10 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming269 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex269 : IsComplex outgoing269 incoming269 := by lin_cert using ()
-- C2h5 s=10 t=132
def outgoing270 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming270 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex270 : IsComplex outgoing270 incoming270 := by lin_cert using ()
-- C2h5 s=10 t=133
def outgoing271 : Matrix 3 2 := fun i j => ([false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming271 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex271 : IsComplex outgoing271 incoming271 := by lin_cert using ()
-- C2h5 s=10 t=134
def outgoing272 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming272 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex272 : IsComplex outgoing272 incoming272 := by lin_cert using ()
-- C2h5 s=10 t=135
def outgoing273 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming273 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex273 : IsComplex outgoing273 incoming273 := by lin_cert using ()
-- C2h5 s=10 t=136
def outgoing274 : Matrix 10 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming274 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex274 : IsComplex outgoing274 incoming274 := by lin_cert using ()
-- C2h5 s=10 t=137
def outgoing275 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming275 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex275 : IsComplex outgoing275 incoming275 := by lin_cert using ()
-- C2h5 s=11 t=133
def outgoing276 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming276 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex276 : IsComplex outgoing276 incoming276 := by lin_cert using ()
-- C2h5 s=11 t=134
def outgoing277 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming277 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex277 : IsComplex outgoing277 incoming277 := by lin_cert using ()
-- C2h5 s=11 t=135
def outgoing278 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming278 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex278 : IsComplex outgoing278 incoming278 := by lin_cert using ()
-- C2h5 s=11 t=136
def outgoing279 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming279 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex279 : IsComplex outgoing279 incoming279 := by lin_cert using ()
-- C2h5 s=11 t=137
def outgoing280 : Matrix 3 10 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 10 + j.val]!
def incoming280 : Matrix 10 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex280 : IsComplex outgoing280 incoming280 := by lin_cert using ()
-- C2h5 s=11 t=138
def outgoing281 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming281 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex281 : IsComplex outgoing281 incoming281 := by lin_cert using ()
-- C2h5 s=12 t=134
def outgoing282 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming282 : Matrix 3 2 := fun i j => ([false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex282 : IsComplex outgoing282 incoming282 := by lin_cert using ()
-- C2h5 s=12 t=135
def outgoing283 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming283 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex283 : IsComplex outgoing283 incoming283 := by lin_cert using ()
-- C2h5 s=12 t=136
def outgoing284 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming284 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex284 : IsComplex outgoing284 incoming284 := by lin_cert using ()
-- C2h5 s=12 t=137
def outgoing285 : Matrix 4 10 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 10 + j.val]!
def incoming285 : Matrix 10 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex285 : IsComplex outgoing285 incoming285 := by lin_cert using ()
-- C2h5 s=12 t=138
def outgoing286 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming286 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex286 : IsComplex outgoing286 incoming286 := by lin_cert using ()
-- C2h5 s=12 t=139
def outgoing287 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming287 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex287 : IsComplex outgoing287 incoming287 := by lin_cert using ()
-- C2h5 s=13 t=135
def outgoing288 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming288 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex288 : IsComplex outgoing288 incoming288 := by lin_cert using ()
-- C2h5 s=13 t=136
def outgoing289 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming289 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex289 : IsComplex outgoing289 incoming289 := by lin_cert using ()
-- C2h5 s=13 t=137
def outgoing290 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming290 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex290 : IsComplex outgoing290 incoming290 := by lin_cert using ()
-- C2h5 s=13 t=138
def outgoing291 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming291 : Matrix 3 10 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 10 + j.val]!
theorem complex291 : IsComplex outgoing291 incoming291 := by lin_cert using ()
-- C2h5 s=13 t=139
def outgoing292 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming292 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex292 : IsComplex outgoing292 incoming292 := by lin_cert using ()
-- C2h5 s=13 t=140
def outgoing293 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming293 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex293 : IsComplex outgoing293 incoming293 := by lin_cert using ()
-- C2h5 s=14 t=136
def outgoing294 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming294 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex294 : IsComplex outgoing294 incoming294 := by lin_cert using ()
-- C2h5 s=14 t=137
def outgoing295 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming295 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex295 : IsComplex outgoing295 incoming295 := by lin_cert using ()
-- C2h5 s=14 t=138
def outgoing296 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming296 : Matrix 4 10 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 10 + j.val]!
theorem complex296 : IsComplex outgoing296 incoming296 := by lin_cert using ()
-- C2h5 s=14 t=139
def outgoing297 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming297 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex297 : IsComplex outgoing297 incoming297 := by lin_cert using ()
-- C2h5 s=14 t=140
def outgoing298 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming298 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex298 : IsComplex outgoing298 incoming298 := by lin_cert using ()
-- C2h5 s=14 t=141
def outgoing299 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming299 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex299 : IsComplex outgoing299 incoming299 := by lin_cert using ()
end ReleaseComplex2
