"""Generate kernel-rechecked full staircase bases and finite status partition."""
import json
from pathlib import Path
p=Path(__file__).resolve().parent;x=json.loads((p/'inventory.json').read_text())
def inverse(B):
 n=len(B);a=[row[:]+[int(i==j) for j in range(n)] for i,row in enumerate(B)]
 for j in range(n):
  q=next((i for i in range(j,n) if a[i][j]),None)
  if q is None:raise ValueError('singular staircase')
  a[q],a[j]=a[j],a[q]
  for i in range(n):
   if i!=j and a[i][j]:a[i]=[v^w for v,w in zip(a[i],a[j])]
 return [row[n:] for row in a]
def bl(v):return '['+','.join('true' if z else 'false' for z in v)+']'
lines=['import StaircaseCertificates.Basic','import PageTransitionCertificates.Import','namespace AggregateTargetInventory.Bases','open LinearCertificates StaircaseCertificates PageTransitionCertificates']
for g in x['filtration_groups']:
 s=g['filtration'];n=g['dimension'];rows=[z for z in x['staircase'] if z['filtration']==s];B=[[int(i in row['base_local_indices']) for row in rows] for i in range(n)];I=inverse(B)
 lines += [f'def f{s} : BasisCertificate {n} := ⟨matrixOf {n} {n} {bl(sum(B,[]))},matrixOf {n} {n} {bl(sum(I,[]))}⟩',f'theorem f{s}_basis : IsBasis f{s} := by lin_cert using ()']
 for j,row in enumerate(rows):lines.append(f'theorem row{row["staircase_id"]}_coordinates : ∀ i : Fin {n}, f{s}.basis i ⟨{j},by decide⟩ = ({bl([i in row["base_local_indices"] for i in range(n)])} : List Bool)[i.val]! := by decide')
lines+=['end AggregateTargetInventory.Bases'];(p/'Bases.lean').write_text('\n'.join(lines)+'\n')
lines=['import AggregateTargetInventory.Bases','import Mathlib.Tactic.FinCases','import Mathlib.Data.Fintype.Fin','namespace AggregateTargetInventory.Aggregate','open LinearCertificates StaircaseCertificates Bases', 'def dimensions : List Nat := ['+','.join(str(g['dimension']) for g in x['filtration_groups'])+']','theorem filtration_count : dimensions.length = 45 := by decide','theorem total_dimension : dimensions.sum = 105 := by decide','def dim (i : Fin 45) : Nat := dimensions[i.val]!','abbrev Coordinates := (i : Fin 45) → Vec (dim i)','def bases (i : Fin 45) : BasisCertificate (dim i) := match i with']
for i,g in enumerate(x['filtration_groups']):lines.append(f'  | ⟨{i},_⟩ => f{g["filtration"]}')
lines+=['  | ⟨n+45,h⟩ => False.elim (by omega)','theorem all_bases (i : Fin 45) : IsBasis (bases i) := by','  fin_cases i']
for g in x['filtration_groups']:lines.append(f'  · exact f{g["filtration"]}_basis')
lines+=['def forward (x : Coordinates) : Coordinates := fun i => eval (bases i).basis (x i)','def backward (x : Coordinates) : Coordinates := fun i => eval (bases i).inverse (x i)','theorem forward_backward (x : Coordinates) : forward (backward x) = x := by','  funext i','  exact (all_bases i).1 (x i)','theorem backward_forward (x : Coordinates) : backward (forward x) = x := by','  funext i','  exact (all_bases i).2 (x i)','inductive Status where | incoming | outgoing | unknown deriving DecidableEq','def statuses : List Status := ['+','.join('.'+{'stored_incoming':'incoming','stored_outgoing':'outgoing','sentinel_unknown':'unknown'}[z['status']] for z in x['staircase'])+']','theorem status_count : statuses.length = 105 := by decide','theorem incoming_count : (statuses.filter (· == .incoming)).length = 38 := by decide','theorem outgoing_count : (statuses.filter (· == .outgoing)).length = 63 := by decide','theorem unknown_count : (statuses.filter (· == .unknown)).length = 4 := by decide','theorem partition_count : 38 + 63 + 4 = 105 := by decide']
lines+=['def unknownRows : List (Nat × Nat × List Nat) := ['+','.join(f'({z["staircase_id"]},{z["filtration"]},['+','.join(map(str,z['base_local_indices']))+'])' for z in x['four_sentinel_candidates'])+']','theorem unknown_rows_exact : unknownRows = [(2695,9,[2]),(3080,14,[1]),(3993,25,[2]),(3994,25,[0,1])] := by rfl','#print axioms forward_backward','end AggregateTargetInventory.Aggregate'];(p/'Aggregate.lean').write_text('\n'.join(lines)+'\n')
print('45 full basis certificates,105 exact column identities,aggregate inverse laws')
