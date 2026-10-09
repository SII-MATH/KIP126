import Row3136SquareCandidates.Basic

namespace Row3136SquareCandidates.Parameters
open LinearCertificates PageTransitionCertificates Data

def sourceSelected (u a residual : Bool) : WireComparison :=
  match u, a, residual with
  | false, false, false => u0a0r0_source
  | false, false, true => u0a0r1_source
  | false, true, false => u0a1r0_source
  | false, true, true => u0a1r1_source
  | true, false, false => u1a0r0_source
  | true, false, true => u1a0r1_source
  | true, true, false => u1a1r0_source
  | true, true, true => u1a1r1_source

def targetSelected (u a residual : Bool) : WireComparison :=
  match u, a, residual with
  | false, false, false => u0a0r0_target
  | false, false, true => u0a0r1_target
  | false, true, false => u0a1r0_target
  | false, true, true => u0a1r1_target
  | true, false, false => u1a0r0_target
  | true, false, true => u1a0r1_target
  | true, true, false => u1a1r0_target
  | true, true, true => u1a1r1_target

theorem source_valid (u a residual : Bool) : (sourceSelected u a residual).Valid := by
  cases u <;> cases a <;> cases residual <;> lin_cert using ()
theorem target_valid (u a residual : Bool) : (targetSelected u a residual).Valid := by
  cases u <;> cases a <;> cases residual <;> lin_cert using ()

theorem all_bindings (u a residual : Bool) :
    (sourceSelected u a residual).k = 2 ∧ (sourceSelected u a residual).m = 2 ∧
    (sourceSelected u a residual).n = 1 ∧
    (sourceSelected u a residual).outgoing = [a,false,u && a,false] ∧
    (sourceSelected u a residual).incoming = [false,residual] ∧
    (targetSelected u a residual).k = 1 ∧ (targetSelected u a residual).m = 2 ∧
    (targetSelected u a residual).n = 2 ∧
    (targetSelected u a residual).outgoing = [u,true] ∧
    (targetSelected u a residual).incoming = (sourceSelected u a residual).outgoing := by
  cases u <;> cases a <;> cases residual <;> decide

theorem exact_dimensions (u a residual : Bool) :
    (sourceSelected u a residual).h = 2 - (if a then 1 else 0) - (if residual then 1 else 0) ∧
    (targetSelected u a residual).h = (if a then 0 else 1) := by
  cases u <;> cases a <;> cases residual <;> decide

#print axioms source_valid
#print axioms target_valid
#print axioms all_bindings
#print axioms exact_dimensions
end Row3136SquareCandidates.Parameters
