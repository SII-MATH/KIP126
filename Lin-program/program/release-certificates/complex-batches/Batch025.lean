import LinearCertificates.Checker
namespace ReleaseComplex25
open LinearCertificates LinProgramCertificates
-- S0 s=23 t=149
def outgoing2500 : Matrix 2 4 := fun i j => ([true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2500 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2500 : IsComplex outgoing2500 incoming2500 := by lin_cert using ()
-- S0 s=23 t=150
def outgoing2501 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming2501 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2501 : IsComplex outgoing2501 incoming2501 := by lin_cert using ()
-- S0 s=24 t=146
def outgoing2502 : Matrix 1 3 := fun i j => ([true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming2502 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2502 : IsComplex outgoing2502 incoming2502 := by lin_cert using ()
-- S0 s=24 t=148
def outgoing2503 : Matrix 3 2 := fun i j => ([false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2503 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2503 : IsComplex outgoing2503 incoming2503 := by lin_cert using ()
-- S0 s=24 t=149
def outgoing2504 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming2504 : Matrix 4 1 := fun i j => ([false, true, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2504 : IsComplex outgoing2504 incoming2504 := by lin_cert using ()
-- S0 s=24 t=150
def outgoing2505 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2505 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2505 : IsComplex outgoing2505 incoming2505 := by lin_cert using ()
-- S0 s=24 t=151
def outgoing2506 : Matrix 4 4 := fun i j => ([false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2506 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2506 : IsComplex outgoing2506 incoming2506 := by lin_cert using ()
-- S0 s=25 t=147
def outgoing2507 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming2507 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex2507 : IsComplex outgoing2507 incoming2507 := by lin_cert using ()
-- S0 s=25 t=149
def outgoing2508 : Matrix 1 4 := fun i j => ([true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming2508 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2508 : IsComplex outgoing2508 incoming2508 := by lin_cert using ()
-- S0 s=25 t=150
def outgoing2509 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming2509 : Matrix 2 4 := fun i j => ([true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex2509 : IsComplex outgoing2509 incoming2509 := by lin_cert using ()
-- S0 s=25 t=151
def outgoing2510 : Matrix 3 2 := fun i j => ([true, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming2510 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex2510 : IsComplex outgoing2510 incoming2510 := by lin_cert using ()
-- S0 s=25 t=152
def outgoing2511 : Matrix 2 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming2511 : Matrix 5 3 := fun i j => ([false, false, false, false, true, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex2511 : IsComplex outgoing2511 incoming2511 := by lin_cert using ()
end ReleaseComplex25
