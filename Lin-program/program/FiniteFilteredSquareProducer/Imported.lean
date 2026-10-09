import FiniteFilteredSquareProducer.Batch00
import FiniteFilteredSquareProducer.Batch01
import FiniteFilteredSquareProducer.Batch02
import FiniteFilteredSquareProducer.Batch03
import FiniteFilteredSquareProducer.Batch04
import FiniteFilteredSquareProducer.Batch05
import FiniteFilteredSquareProducer.Batch06
import FiniteFilteredSquareProducer.Batch07
import FiniteFilteredSquareProducer.Batch08
import FiniteFilteredSquareProducer.Batch09
import FiniteFilteredSquareProducer.Batch10
import FiniteFilteredSquareProducer.Batch11
import FiniteFilteredSquareProducer.Batch12
import FiniteFilteredSquareProducer.Batch13
import FiniteFilteredSquareProducer.Batch14
import FiniteFilteredSquareProducer.Batch15
import FiniteFilteredSquareProducer.Batch16
import FiniteFilteredSquareProducer.Batch17
import FiniteFilteredSquareProducer.Batch18
import FiniteFilteredSquareProducer.Batch19
import FiniteFilteredSquareProducer.Batch20
import FiniteFilteredSquareProducer.Batch21

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def nonzero_f : WireCertificate := finite_filtered_square_certificate% "FiniteFilteredSquareProducer/case_nonzero_f.json"
theorem nonzero_f_valid : WireValid nonzero_f := by finite_filtered_square_cert using ()

def nonzero_p : WireCertificate := finite_filtered_square_certificate% "FiniteFilteredSquareProducer/case_nonzero_p.json"
theorem nonzero_p_valid : WireValid nonzero_p := by finite_filtered_square_cert using ()

def corrected : WireCertificate := finite_filtered_square_certificate% "FiniteFilteredSquareProducer/case_corrected.json"
theorem corrected_valid : WireValid corrected := by finite_filtered_square_cert using ()

def empty : WireCertificate := finite_filtered_square_certificate% "FiniteFilteredSquareProducer/case_empty.json"
theorem empty_valid : WireValid empty := by finite_filtered_square_cert using ()

def allWires : List WireCertificate := batch00 ++ batch01 ++ batch02 ++ batch03 ++ batch04 ++ batch05 ++ batch06 ++ batch07 ++ batch08 ++ batch09 ++ batch10 ++ batch11 ++ batch12 ++ batch13 ++ batch14 ++ batch15 ++ batch16 ++ batch17 ++ batch18 ++ batch19 ++ batch20 ++ batch21
private theorem append_valid {xs ys : List WireCertificate}
    (hx : ∀ w ∈ xs, WireValid w) (hy : ∀ w ∈ ys, WireValid w) :
    ∀ w ∈ xs ++ ys, WireValid w := by
  intro w hw
  exact (List.mem_append.mp hw).elim (hx w) (hy w)
theorem all_valid : ∀ w ∈ allWires, WireValid w :=
  (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid batch00_valid batch01_valid) batch02_valid) batch03_valid) batch04_valid) batch05_valid) batch06_valid) batch07_valid) batch08_valid) batch09_valid) batch10_valid) batch11_valid) batch12_valid) batch13_valid) batch14_valid) batch15_valid) batch16_valid) batch17_valid) batch18_valid) batch19_valid) batch20_valid) batch21_valid)
theorem batch_count : allWires.length = 863 := by decide
#print axioms nonzero_f_valid
#print axioms nonzero_p_valid
#print axioms corrected_valid
#print axioms empty_valid
#print axioms all_valid
#print axioms batch_count
end FiniteFilteredSquareProducer
