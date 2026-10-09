import NamedPageComparison.Fact761
import Fact715PageCertificates.Survivor
import PageTransitionCertificates.Trajectory
import PropagationCertificates.Level

namespace NamedPageComparison.Fact761D3
open LinearCertificates PageTransitionCertificates

-- Incoming degree(5,132): its sole E2 vector supports d2, hence E3=0.
def inOut : Matrix 2 1 := fun i _ => i.val == 1
def inIn : Matrix 1 0 := fun _ j => Fin.elim0 j
def inComparison : Comparison 2 1 0 0 where
  inclusion := fun _ j => Fin.elim0 j
  projection := fun i _ => Fin.elim0 i
  up := fun i _ => Fin.elim0 i
  down := fun _ j => j.val == 1
theorem incomingE3_zero : HomologyComparison inOut inIn inComparison := by lin_cert using ()

-- Actual target staircase E3 representatives: e1,e2,e3,e0.
def targetComparison : Comparison 4 5 6 4 where
  inclusion := fun i j => if j.val < 3 then i.val == j.val+1 else i.val == 0
  projection := fun i j => if i.val < 3 then j.val == i.val+1 else j.val == 0
  up := fun _ _ => false
  down := fun i j => i.val == 4 && j.val == 3
theorem targetE3_complete : HomologyComparison Fact715PageCertificates.outgoing
    Fact715PageCertificates.incoming targetComparison := by lin_cert using ()

-- This is a constructed finite d3, decoded from the imported level assertions.
-- Decoding those assertions does not establish their true Adams provenance.
def d3 : Matrix 4 4 := fun i j => (i.val == 0 && j.val == 2) || (i.val == 1 && j.val == 3)
def incomingD3 : Matrix 4 0 := fun _ j => Fin.elim0 j

/-- Raw source-row fields; `none` preserves SQL NULL. -/
structure ImportedRow where
  row : Nat
  base : List Nat
  level : Nat
  diff : Option (List Nat)

def sourceRows (j : Fin 4) : ImportedRow :=
  if j.val = 0 then ⟨2701, [4], 9983, none⟩
  else if j.val = 1 then ⟨2702, [0,3], 9994, none⟩
  else if j.val = 2 then ⟨2703, [3], 9997, some [1]⟩
  else ⟨2704, [2], 9997, some [2]⟩

/-- Finite interpretation of an imported outgoing level. Before its stored event
page the query returns zero; at that page NULL remains unknown. This definition
is a data interpretation, not a theorem that the stored assertion is Adams d_r. -/
def queryStored (r : ImportedRow) (page : Nat) : Option (Vec 5) :=
  match PropagationCertificates.decodeLevel r.level with
  | some (.outgoing eventPage) =>
    if 2 ≤ page ∧ page < eventPage then some (fun _ => false)
    else if page = eventPage then
      r.diff.map (fun entries i => entries.contains i.val)
    else none
  | _ => none

theorem stored_unknown_pages :
    PropagationCertificates.decodeLevel (sourceRows 0).level = some (.outgoing 17) ∧
    PropagationCertificates.decodeLevel (sourceRows 1).level = some (.outgoing 6) ∧
    queryStored (sourceRows 0) 17 = none ∧
    queryStored (sourceRows 1) 6 = none := by decide

/-- Every constructed column is exactly the stored query transported by the
checked target quotient projection. In particular the two zero columns use the
decoded earlier-page prefix, never an assignment of zero to NULL at its page. -/
theorem d3_columns_from_stored_query : ∀ j i : Fin 4,
    (queryStored (sourceRows j) 3).map (fun v => eval targetComparison.projection v i) =
      some (d3 i j) := by decide

def comparison : Comparison 4 4 0 2 where
  inclusion := fun i j => i.val == j.val
  projection := fun i j => i.val == j.val
  up := fun i _ => Fin.elim0 i
  down := fun i j => i.val == j.val+2

theorem d3_complete : HomologyComparison d3 incomingD3 comparison := by lin_cert using ()

def firstWire : WireComparison := ⟨1,5,6,2,4,
  Fact761PageCertificates.wire.outgoing,Fact761PageCertificates.wire.incoming,
  (List.finRange 6).flatMap (fun i => (List.finRange 4).map (fun j => Fact761.comparison.inclusion i j)),
  (List.finRange 4).flatMap (fun i => (List.finRange 6).map (fun j => Fact761.comparison.projection i j)),
  (List.finRange 2).flatMap (fun i => (List.finRange 6).map (fun j => Fact761.comparison.up i j)),
  (List.finRange 6).flatMap (fun i => (List.finRange 5).map (fun j => Fact761.comparison.down i j))⟩
def secondWire : WireComparison := ⟨1,4,4,0,2,
  (List.finRange 4).flatMap (fun i => (List.finRange 4).map (fun j => d3 i j)),[],
  (List.finRange 4).flatMap (fun i => (List.finRange 2).map (fun j => comparison.inclusion i j)),
  (List.finRange 2).flatMap (fun i => (List.finRange 4).map (fun j => comparison.projection i j)),[],
  (List.finRange 4).flatMap (fun i => (List.finRange 4).map (fun j => comparison.down i j))⟩
def stages : List Stage := [⟨firstWire,[true,false,false,true,false,false]⟩,
  ⟨secondWire,[false,true,false,false]⟩]
theorem named_d2_d3_trajectory : TrajectoryValid stages := by lin_cert using ()

end NamedPageComparison.Fact761D3
