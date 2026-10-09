import Fact713C2Row3005.MapSemantics
import Fact713C2Row3005.MapImported
import Fact762CsigmasqD5.Descent
import Fact715IncomingTail.Basic

namespace Row3005D4Search.Data
open LinearCertificates PageTransitionCertificates
open Fact713C2Row3005.MapComparison

def sphere3 : WireComparison := page_comparison% "Row3005D4Search/wire/sphere3.json"
theorem sphere3_valid : sphere3.Valid := by lin_cert using ()
def empty2 : WireComparison := page_comparison% "Row3005D4Search/wire/empty2.json"
theorem empty2_valid : empty2.Valid := by lin_cert using ()
def empty3 : WireComparison := page_comparison% "Row3005D4Search/wire/empty3.json"
theorem empty3_valid : empty3.Valid := by lin_cert using ()

def c2Raw : Vec 5 := fun i => decide (i.val = 0)
def sphereRaw : Vec 5 := fun i => decide (i.val = 2)
def sphereName : Vec 1 := fun _ => true

theorem c2_cycle2 : InKernel (matrixOf source.k source.m source.outgoing) c2Raw := by
  change eval (matrixOf source.k source.m source.outgoing) c2Raw = zero
  decide
theorem map_named2 : eval middleMap c2Raw = sphereRaw := by decide
theorem sphere_next2 : eval target.comparison.projection sphereRaw = sphereName := by decide
theorem sphere_zero3 (v : Vec 1) : InKernel (matrixOf sphere3.k sphere3.m sphere3.outgoing) v := by
  change eval (matrixOf sphere3.k sphere3.m sphere3.outgoing) v = zero
  exact (show ∀ v : Vec 1, eval (matrixOf sphere3.k sphere3.m sphere3.outgoing) v = zero from by decide) v
theorem sphere_next3 : eval sphere3.comparison.projection sphereName = sphereName := by decide
theorem upper_identity (v : Vec 1) :
    eval (coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap) v = v := by
  exact (show ∀ v : Vec 1,
    eval (coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap) v = v from by decide) v
theorem upper_reflects : ∀ v : Vec 1,
    eval (coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap) v = zero → v = zero := by
  intro v h
  rw [upper_identity] at h
  exact h
theorem named_nonzero : sphereName ≠ zero := by decide
theorem empty_dimensions : empty2.m = 0 ∧ empty2.h = 0 ∧ empty3.m = 0 ∧ empty3.h = 0 := by decide

#print axioms sphere3_valid
#print axioms empty2_valid
#print axioms empty3_valid
#print axioms c2_cycle2
#print axioms map_named2
#print axioms sphere_next2
#print axioms sphere_zero3
#print axioms sphere_next3
#print axioms upper_identity
#print axioms upper_reflects
#print axioms named_nonzero
#print axioms empty_dimensions
end Row3005D4Search.Data
