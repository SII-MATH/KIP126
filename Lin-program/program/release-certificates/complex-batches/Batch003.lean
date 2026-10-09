import LinearCertificates.Checker
namespace ReleaseComplex3
open LinearCertificates LinProgramCertificates
-- C2h5 s=15 t=137
def outgoing300 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming300 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex300 : IsComplex outgoing300 incoming300 := by lin_cert using ()
-- C2h5 s=15 t=138
def outgoing301 : Matrix 3 5 := fun i j => ([true, true, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming301 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex301 : IsComplex outgoing301 incoming301 := by lin_cert using ()
-- C2h5 s=15 t=139
def outgoing302 : Matrix 2 6 := fun i j => ([false, true, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming302 : Matrix 6 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex302 : IsComplex outgoing302 incoming302 := by lin_cert using ()
-- C2h5 s=15 t=140
def outgoing303 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming303 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex303 : IsComplex outgoing303 incoming303 := by lin_cert using ()
-- C2h5 s=15 t=141
def outgoing304 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming304 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex304 : IsComplex outgoing304 incoming304 := by lin_cert using ()
-- C2h5 s=15 t=142
def outgoing305 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming305 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex305 : IsComplex outgoing305 incoming305 := by lin_cert using ()
-- C2h5 s=16 t=138
def outgoing306 : Matrix 6 2 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming306 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex306 : IsComplex outgoing306 incoming306 := by lin_cert using ()
-- C2h5 s=16 t=139
def outgoing307 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming307 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex307 : IsComplex outgoing307 incoming307 := by lin_cert using ()
-- C2h5 s=16 t=140
def outgoing308 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming308 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex308 : IsComplex outgoing308 incoming308 := by lin_cert using ()
-- C2h5 s=16 t=141
def outgoing309 : Matrix 5 1 := fun i j => ([false, true, false, false, false] : List Bool)[i.val * 1 + j.val]!
def incoming309 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex309 : IsComplex outgoing309 incoming309 := by lin_cert using ()
-- C2h5 s=16 t=142
def outgoing310 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming310 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex310 : IsComplex outgoing310 incoming310 := by lin_cert using ()
-- C2h5 s=16 t=143
def outgoing311 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming311 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex311 : IsComplex outgoing311 incoming311 := by lin_cert using ()
-- C2h5 s=17 t=139
def outgoing312 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming312 : Matrix 3 5 := fun i j => ([true, true, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex312 : IsComplex outgoing312 incoming312 := by lin_cert using ()
-- C2h5 s=17 t=140
def outgoing313 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming313 : Matrix 2 6 := fun i j => ([false, true, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex313 : IsComplex outgoing313 incoming313 := by lin_cert using ()
-- C2h5 s=17 t=141
def outgoing314 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming314 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex314 : IsComplex outgoing314 incoming314 := by lin_cert using ()
-- C2h5 s=17 t=142
def outgoing315 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming315 : Matrix 7 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex315 : IsComplex outgoing315 incoming315 := by lin_cert using ()
-- C2h5 s=17 t=143
def outgoing316 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming316 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex316 : IsComplex outgoing316 incoming316 := by lin_cert using ()
-- C2h5 s=17 t=144
def outgoing317 : Matrix 5 3 := fun i j => ([false, false, false, true, true, false, true, true, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming317 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex317 : IsComplex outgoing317 incoming317 := by lin_cert using ()
-- C2h5 s=18 t=140
def outgoing318 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming318 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex318 : IsComplex outgoing318 incoming318 := by lin_cert using ()
-- C2h5 s=18 t=141
def outgoing319 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming319 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex319 : IsComplex outgoing319 incoming319 := by lin_cert using ()
-- C2h5 s=18 t=142
def outgoing320 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming320 : Matrix 5 1 := fun i j => ([false, true, false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex320 : IsComplex outgoing320 incoming320 := by lin_cert using ()
-- C2h5 s=18 t=143
def outgoing321 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming321 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex321 : IsComplex outgoing321 incoming321 := by lin_cert using ()
-- C2h5 s=18 t=144
def outgoing322 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming322 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex322 : IsComplex outgoing322 incoming322 := by lin_cert using ()
-- C2h5 s=18 t=145
def outgoing323 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming323 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex323 : IsComplex outgoing323 incoming323 := by lin_cert using ()
-- C2h5 s=19 t=141
def outgoing324 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming324 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex324 : IsComplex outgoing324 incoming324 := by lin_cert using ()
-- C2h5 s=19 t=142
def outgoing325 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming325 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex325 : IsComplex outgoing325 incoming325 := by lin_cert using ()
-- C2h5 s=19 t=143
def outgoing326 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming326 : Matrix 2 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex326 : IsComplex outgoing326 incoming326 := by lin_cert using ()
-- C2h5 s=19 t=145
def outgoing327 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming327 : Matrix 5 3 := fun i j => ([false, false, false, true, true, false, true, true, false, true, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex327 : IsComplex outgoing327 incoming327 := by lin_cert using ()
-- C2h5 s=19 t=146
def outgoing328 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming328 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex328 : IsComplex outgoing328 incoming328 := by lin_cert using ()
-- C2h5 s=20 t=142
def outgoing329 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming329 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex329 : IsComplex outgoing329 incoming329 := by lin_cert using ()
-- C2h5 s=20 t=143
def outgoing330 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming330 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex330 : IsComplex outgoing330 incoming330 := by lin_cert using ()
-- C2h5 s=20 t=144
def outgoing331 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming331 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex331 : IsComplex outgoing331 incoming331 := by lin_cert using ()
-- C2h5 s=20 t=145
def outgoing332 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming332 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex332 : IsComplex outgoing332 incoming332 := by lin_cert using ()
-- C2h5 s=20 t=146
def outgoing333 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming333 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex333 : IsComplex outgoing333 incoming333 := by lin_cert using ()
-- C2h5 s=20 t=147
def outgoing334 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming334 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex334 : IsComplex outgoing334 incoming334 := by lin_cert using ()
-- C2h5 s=21 t=143
def outgoing335 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming335 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex335 : IsComplex outgoing335 incoming335 := by lin_cert using ()
-- C2h5 s=21 t=144
def outgoing336 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming336 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex336 : IsComplex outgoing336 incoming336 := by lin_cert using ()
-- C2h5 s=21 t=146
def outgoing337 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming337 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex337 : IsComplex outgoing337 incoming337 := by lin_cert using ()
-- C2h5 s=21 t=147
def outgoing338 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming338 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex338 : IsComplex outgoing338 incoming338 := by lin_cert using ()
-- C2h5 s=21 t=148
def outgoing339 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming339 : Matrix 5 5 := fun i j => ([true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex339 : IsComplex outgoing339 incoming339 := by lin_cert using ()
-- C2h5 s=22 t=144
def outgoing340 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming340 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex340 : IsComplex outgoing340 incoming340 := by lin_cert using ()
-- C2h5 s=22 t=145
def outgoing341 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming341 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex341 : IsComplex outgoing341 incoming341 := by lin_cert using ()
-- C2h5 s=22 t=146
def outgoing342 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming342 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex342 : IsComplex outgoing342 incoming342 := by lin_cert using ()
-- C2h5 s=22 t=147
def outgoing343 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming343 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex343 : IsComplex outgoing343 incoming343 := by lin_cert using ()
-- C2h5 s=22 t=148
def outgoing344 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming344 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex344 : IsComplex outgoing344 incoming344 := by lin_cert using ()
-- C2h5 s=22 t=149
def outgoing345 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming345 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex345 : IsComplex outgoing345 incoming345 := by lin_cert using ()
-- C2h5 s=23 t=145
def outgoing346 : Matrix 4 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming346 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex346 : IsComplex outgoing346 incoming346 := by lin_cert using ()
-- C2h5 s=23 t=146
def outgoing347 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming347 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex347 : IsComplex outgoing347 incoming347 := by lin_cert using ()
-- C2h5 s=23 t=147
def outgoing348 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming348 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex348 : IsComplex outgoing348 incoming348 := by lin_cert using ()
-- C2h5 s=23 t=148
def outgoing349 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming349 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex349 : IsComplex outgoing349 incoming349 := by lin_cert using ()
-- C2h5 s=23 t=149
def outgoing350 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming350 : Matrix 8 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex350 : IsComplex outgoing350 incoming350 := by lin_cert using ()
-- C2h5 s=23 t=150
def outgoing351 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming351 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex351 : IsComplex outgoing351 incoming351 := by lin_cert using ()
-- C2h5 s=24 t=146
def outgoing352 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming352 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex352 : IsComplex outgoing352 incoming352 := by lin_cert using ()
-- C2h5 s=24 t=147
def outgoing353 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming353 : Matrix 2 4 := fun i j => ([true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex353 : IsComplex outgoing353 incoming353 := by lin_cert using ()
-- C2h5 s=24 t=148
def outgoing354 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming354 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex354 : IsComplex outgoing354 incoming354 := by lin_cert using ()
-- C2h5 s=24 t=149
def outgoing355 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming355 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex355 : IsComplex outgoing355 incoming355 := by lin_cert using ()
-- C2h5 s=24 t=150
def outgoing356 : Matrix 4 3 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming356 : Matrix 3 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex356 : IsComplex outgoing356 incoming356 := by lin_cert using ()
-- C2h5 s=24 t=151
def outgoing357 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming357 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex357 : IsComplex outgoing357 incoming357 := by lin_cert using ()
-- C2h5 s=25 t=147
def outgoing358 : Matrix 3 3 := fun i j => ([false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming358 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex358 : IsComplex outgoing358 incoming358 := by lin_cert using ()
-- C2h5 s=25 t=148
def outgoing359 : Matrix 4 3 := fun i j => ([false, false, false, false, true, false, false, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming359 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex359 : IsComplex outgoing359 incoming359 := by lin_cert using ()
-- C2h5 s=25 t=149
def outgoing360 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming360 : Matrix 5 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex360 : IsComplex outgoing360 incoming360 := by lin_cert using ()
-- C2h5 s=25 t=150
def outgoing361 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming361 : Matrix 4 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex361 : IsComplex outgoing361 incoming361 := by lin_cert using ()
-- C2h5 s=25 t=151
def outgoing362 : Matrix 5 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming362 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex362 : IsComplex outgoing362 incoming362 := by lin_cert using ()
-- C2h5 s=25 t=152
def outgoing363 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming363 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex363 : IsComplex outgoing363 incoming363 := by lin_cert using ()
-- C2h6 s=1 t=128
def outgoing364 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming364 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex364 : IsComplex outgoing364 incoming364 := by lin_cert using ()
-- C2h6 s=2 t=128
def outgoing365 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming365 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex365 : IsComplex outgoing365 incoming365 := by lin_cert using ()
-- C2h6 s=2 t=129
def outgoing366 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming366 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex366 : IsComplex outgoing366 incoming366 := by lin_cert using ()
-- C2h6 s=3 t=129
def outgoing367 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming367 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex367 : IsComplex outgoing367 incoming367 := by lin_cert using ()
-- C2h6 s=3 t=130
def outgoing368 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming368 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex368 : IsComplex outgoing368 incoming368 := by lin_cert using ()
-- C2h6 s=4 t=129
def outgoing369 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming369 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex369 : IsComplex outgoing369 incoming369 := by lin_cert using ()
-- C2h6 s=4 t=130
def outgoing370 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming370 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex370 : IsComplex outgoing370 incoming370 := by lin_cert using ()
-- C2h6 s=4 t=131
def outgoing371 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming371 : Matrix 4 2 := fun i j => ([false, false, false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex371 : IsComplex outgoing371 incoming371 := by lin_cert using ()
-- C2h6 s=5 t=130
def outgoing372 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming372 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex372 : IsComplex outgoing372 incoming372 := by lin_cert using ()
-- C2h6 s=5 t=131
def outgoing373 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, true, true, true, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming373 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex373 : IsComplex outgoing373 incoming373 := by lin_cert using ()
-- C2h6 s=5 t=132
def outgoing374 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming374 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex374 : IsComplex outgoing374 incoming374 := by lin_cert using ()
-- C2h6 s=6 t=130
def outgoing375 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming375 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex375 : IsComplex outgoing375 incoming375 := by lin_cert using ()
-- C2h6 s=6 t=131
def outgoing376 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
def incoming376 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex376 : IsComplex outgoing376 incoming376 := by lin_cert using ()
-- C2h6 s=6 t=132
def outgoing377 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming377 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex377 : IsComplex outgoing377 incoming377 := by lin_cert using ()
-- C2h6 s=6 t=133
def outgoing378 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming378 : Matrix 6 3 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex378 : IsComplex outgoing378 incoming378 := by lin_cert using ()
-- C2h6 s=7 t=129
def outgoing379 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming379 : Matrix 3 2 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex379 : IsComplex outgoing379 incoming379 := by lin_cert using ()
-- C2h6 s=7 t=131
def outgoing380 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming380 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex380 : IsComplex outgoing380 incoming380 := by lin_cert using ()
-- C2h6 s=7 t=132
def outgoing381 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming381 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, true, true, true, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex381 : IsComplex outgoing381 incoming381 := by lin_cert using ()
-- C2h6 s=7 t=133
def outgoing382 : Matrix 8 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming382 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex382 : IsComplex outgoing382 incoming382 := by lin_cert using ()
-- C2h6 s=7 t=134
def outgoing383 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming383 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex383 : IsComplex outgoing383 incoming383 := by lin_cert using ()
-- C2h6 s=8 t=130
def outgoing384 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming384 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex384 : IsComplex outgoing384 incoming384 := by lin_cert using ()
-- C2h6 s=8 t=131
def outgoing385 : Matrix 6 1 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
def incoming385 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex385 : IsComplex outgoing385 incoming385 := by lin_cert using ()
-- C2h6 s=8 t=132
def outgoing386 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming386 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex386 : IsComplex outgoing386 incoming386 := by lin_cert using ()
-- C2h6 s=8 t=133
def outgoing387 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming387 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex387 : IsComplex outgoing387 incoming387 := by lin_cert using ()
-- C2h6 s=8 t=134
def outgoing388 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming388 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex388 : IsComplex outgoing388 incoming388 := by lin_cert using ()
-- C2h6 s=8 t=135
def outgoing389 : Matrix 7 6 := fun i j => ([false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming389 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex389 : IsComplex outgoing389 incoming389 := by lin_cert using ()
-- C2h6 s=9 t=131
def outgoing390 : Matrix 6 2 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming390 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex390 : IsComplex outgoing390 incoming390 := by lin_cert using ()
-- C2h6 s=9 t=132
def outgoing391 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming391 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex391 : IsComplex outgoing391 incoming391 := by lin_cert using ()
-- C2h6 s=9 t=133
def outgoing392 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming392 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex392 : IsComplex outgoing392 incoming392 := by lin_cert using ()
-- C2h6 s=9 t=134
def outgoing393 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming393 : Matrix 8 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex393 : IsComplex outgoing393 incoming393 := by lin_cert using ()
-- C2h6 s=9 t=135
def outgoing394 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming394 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex394 : IsComplex outgoing394 incoming394 := by lin_cert using ()
-- C2h6 s=9 t=136
def outgoing395 : Matrix 7 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming395 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex395 : IsComplex outgoing395 incoming395 := by lin_cert using ()
-- C2h6 s=10 t=132
def outgoing396 : Matrix 2 6 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming396 : Matrix 6 1 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex396 : IsComplex outgoing396 incoming396 := by lin_cert using ()
-- C2h6 s=10 t=133
def outgoing397 : Matrix 3 2 := fun i j => ([false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming397 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex397 : IsComplex outgoing397 incoming397 := by lin_cert using ()
-- C2h6 s=10 t=134
def outgoing398 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming398 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex398 : IsComplex outgoing398 incoming398 := by lin_cert using ()
-- C2h6 s=10 t=135
def outgoing399 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming399 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex399 : IsComplex outgoing399 incoming399 := by lin_cert using ()
end ReleaseComplex3
