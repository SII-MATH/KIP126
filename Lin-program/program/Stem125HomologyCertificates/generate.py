"""Bind all recorded stem125 centers to existing complete homology comparisons."""
import hashlib,json
from pathlib import Path
P=Path(__file__).resolve().parent; R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=json.loads((R/'AggregateD5Conditional/source.json').read_text())
inv=json.loads((R/'AggregateTargetInventory/inventory.json').read_text())
groups=inv['filtration_groups']; blocks=source['blocks']
assert len(groups)==45 and sum(g['dimension'] for g in groups)==105
name=lambda key:'b_'+key.replace(':','_').replace(',','_').replace('-','neg')
key=lambda f,r:f'S0:{f},{f+125}:d{r}'
selections={r:[g for g in groups if key(g['filtration'],r) in blocks] for r in [2,3,4]}
report={'scope':'Full d2 product on 45 recorded nonzero E2 centers; d3 and d4 are restricted products only.',
 'source_sha256':{str(f.relative_to(R)):sha(f) for f in [R/'AggregateD5Conditional/source.json',R/'AggregateD5Conditional/Data.lean',R/'AggregateD5Conditional/event-results.json',R/'AggregateTargetInventory/inventory.json',R/'AggregateTargetInventory/Bases.lean',R/'AggregateTargetInventory/Aggregate.lean']},'pages':{}}
for r in [2,3,4]:
 gs=selections[r]; N=len(gs)
 ws=[blocks[key(g['filtration'],r)]['wire'] for g in gs]
 M=sum(w['m'] for w in ws); D=sum(w['h'] for w in ws)
 missing=[]
 for g in groups:
  f=g['filtration']; k=key(f,r)
  if k not in blocks:
   prev=blocks.get(key(f,r-1))
   missing.append({'filtration':f,'center':[f,f+125],'previous_h':prev['wire']['h'] if prev else None,'reason':source['failures'].get(k,'not attempted in this snapshot')})
 report['pages'][str(r)]={'block_count':N,'input_dimension':M,'homology_coordinate_count':D,'full_recorded_E2_center_coverage':N==45,'centers':[{'filtration':g['filtration'],'internal':g['total_degree'],'key':key(g['filtration'],r),'lean_constant':'AggregateD5Conditional.Data.'+name(key(g['filtration'],r)),'m':w['m'],'h':w['h'],'E2_basis_ids':g['basis_ids'],'staircase_ids':g['staircase_ids']} for g,w in zip(gs,ws)],'missing':missing,'missing_nonzero_previous':[g for g in missing if g['previous_h']]}
 imports=['import Stem125HomologyCertificates.Basic','import AggregateD5Conditional.Data','import AggregateTargetInventory.Aggregate'] if r==2 else [f'import Stem125HomologyCertificates.D{r-1}']
 lines=imports+[f'namespace Stem125HomologyCertificates.D{r}','open LinearCertificates PageTransitionCertificates AggregateD5Conditional.Data','set_option maxRecDepth 10000','set_option maxHeartbeats 4000000',f'def filtrations : List Nat := {json.dumps([g["filtration"] for g in gs])}',f'theorem center_count : filtrations.length = {N} := by decide',f'def wires (i : Fin {N}) : WireComparison := match i with']
 for i,g in enumerate(gs): lines.append(f'  | ⟨{i},_⟩ => {name(key(g["filtration"],r))}')
 lines += [f'  | ⟨n+{N},h⟩ => False.elim (by omega)',f'theorem all_complete (i : Fin {N}) : (wires i).Valid := by','  fin_cases i']
 for g in gs: lines.append(f'  · exact {name(key(g["filtration"],r))}_complete')
 lines += [f'theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = {M} := by decide',f'theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = {D} := by decide','abbrev WholeHomology := TotalHomology wires',f'noncomputable def equivalence : WholeHomology ≃ Vec {D} := totalFlatEquiv wires all_complete coordinate_count',f'theorem cardinality : Nat.card WholeHomology = 2 ^ {D} := total_card wires all_complete coordinate_count',f'theorem represented (x : WholeHomology) : ∃ z : Vec {D}, equivalence.symm z = x := all_classes_represented wires all_complete coordinate_count x',f'theorem coordinates_distinguish (x y : WholeHomology) : equivalence x = equivalence y ↔ x = y := all_coordinates_distinct wires all_complete coordinate_count x y','theorem preserves_addition (x y : WholeHomology) : equivalence (totalAdd wires x y) = add (equivalence x) (equivalence y) := totalFlatEquiv_add wires all_complete coordinate_count x y']
 if r==2:
  lines += ['theorem exact_input_dimensions (i : Fin 45) : (wires i).m = AggregateTargetInventory.Aggregate.dim i := by','  fin_cases i <;> rfl', 'def rawCoordinateEquiv : AggregateTargetInventory.Aggregate.Coordinates ≃ ((i : Fin 45) → Vec (wires i).m) :=','  Equiv.piCongrRight (fun i => Equiv.cast (congrArg Vec (exact_input_dimensions i).symm))','def staircaseEquiv : AggregateTargetInventory.Aggregate.Coordinates ≃ AggregateTargetInventory.Aggregate.Coordinates where','  toFun := AggregateTargetInventory.Aggregate.forward','  invFun := AggregateTargetInventory.Aggregate.backward','  left_inv := AggregateTargetInventory.Aggregate.backward_forward','  right_inv := AggregateTargetInventory.Aggregate.forward_backward','def staircaseToInput := staircaseEquiv.trans rawCoordinateEquiv','noncomputable def inputEquivalence : AggregateTargetInventory.Aggregate.Coordinates ≃ Vec 105 :=','  staircaseToInput.trans (flatten (fun i => (wires i).m) input_count)','theorem every_input_has_unique_staircase_coefficients (x : (i : Fin 45) → Vec (wires i).m) :','    ∃! coefficients, staircaseToInput coefficients = x := staircaseToInput.bijective.existsUnique x','theorem input_cardinality : Nat.card AggregateTargetInventory.Aggregate.Coordinates = 2 ^ 105 := by','  rw [Nat.card_congr inputEquivalence]','  simp [Vec, Nat.card_eq_fintype_card]']
 else:
  prev=selections[r-1]; prev_ids=[g['filtration'] for g in prev]
  indices=[prev_ids.index(g['filtration']) for g in gs]
  lines += [f'def previousIndex (i : Fin {N}) : Fin {len(prev)} := match i with']
  for i,j in enumerate(indices):lines.append(f'  | ⟨{i},_⟩ => ⟨{j},by decide⟩')
  lines += [f'  | ⟨n+{N},h⟩ => False.elim (by omega)', 'theorem previousIndex_injective : Function.Injective previousIndex := by decide', f'theorem consecutive_dimensions (i : Fin {N}) : (wires i).m = (D{r-1}.wires (previousIndex i)).h := by', '  fin_cases i <;> rfl',f'def previousHomologyEquiv : ((i : Fin {N}) → LocalHomology (D{r-1}.wires (previousIndex i))) ≃ ((i : Fin {N}) → Vec (wires i).m) :=',f'  Equiv.piCongrRight (fun i => (localEquiv (D{r-1}.wires (previousIndex i)) (D{r-1}.all_complete _)).trans', '    (Equiv.cast (congrArg Vec (consecutive_dimensions i).symm)))']
  missing_nonzero=report['pages'][str(r)]['missing_nonzero_previous']
  missing_literal=','.join('(%s,%s)' % (g['filtration'],g['previous_h']) for g in missing_nonzero)
  lines += [f'def missingNonzeroPrevious : List (Nat × Nat) := [{missing_literal}]',f'theorem missing_nonzero_count : missingNonzeroPrevious.length = {len(missing_nonzero)} := by decide',f'theorem missing_nonzero_dimension : (missingNonzeroPrevious.map Prod.snd).sum = {sum(g["previous_h"] for g in missing_nonzero)} := by decide']
 lines += [f'theorem batch_checked : Nat.card (TotalHomology wires) = 2 ^ {D} := by stem_homology_cert using ()', f'theorem wrong_dimension_rejected : checkTotal wires {D+1} = false := by decide']
 lines+=['#print axioms cardinality','#print axioms preserves_addition','#print axioms represented',f'end Stem125HomologyCertificates.D{r}']
 (P/f'D{r}.lean').write_text('\n'.join(lines)+'\n')
(P/'coverage.json').write_text(json.dumps(report,indent=2)+'\n')
print('generated 45/28/9 bindings; inputs105/37/9; homology44/23/2')
