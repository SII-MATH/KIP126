"""Generate isolated complete missing-center and two-branch E4 certificate bindings."""
import hashlib,json,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
search=json.loads((P/'search.json').read_text());old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks']
coverage=json.loads((R/'Stem125HomologyCertificates/coverage.json').read_text())['pages']['2']['centers']
new=search['new_blocks'];fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
name=lambda key:'b_'+key.replace(':','_').replace(',','_').replace('-','neg')
lines=['import Stem125HomologyCertificates.D3','namespace Stem125E4Search.Data','open LinearCertificates PageTransitionCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 4000000']
for k,b in sorted(new.items(),key=lambda kv:(kv[1]['page'],kv[0])):
 literal=','.join(json.dumps(b['wire'][field],separators=(',',':')) for field in fields)
 lines += [f'def {name(k)} : WireComparison := ⟨{literal}⟩',f'theorem {name(k)}_complete : {name(k)}.Valid := by lin_cert using ()']
for bit in [0,1]:
 out='001';inc=f'{bit}10'
 proc=subprocess.run([str(R/'PageTransitionCertificates/page-transition-export'),'1','3','1',out,inc],capture_output=True,text=True,check=True)
 w=json.loads(proc.stdout)
 assert w==json.loads((R/f'AffineRemainingSearch/branch2574-{bit}.json').read_text())
 (P/f'branch{bit}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
 lines += [f'def branch{bit} : WireComparison := page_comparison% "Stem125E4Search/branch{bit}.json"',f'theorem branch{bit}_complete : branch{bit}.Valid := by lin_cert using ()']
lines+=['def branch (b : Bool) : WireComparison := if b then branch1 else branch0','theorem branch_complete (b : Bool) : (branch b).Valid := by cases b <;> first | exact branch0_complete | exact branch1_complete','#print axioms branch_complete','end Stem125E4Search.Data']
(P/'Data.lean').write_text('\n'.join(lines)+'\n')
nonzero=[(i,g) for i,g in enumerate(coverage) if g['h']];zero=[(i,g) for i,g in enumerate(coverage) if not g['h']]
assert len(nonzero)==31 and len(zero)==14
lines=['import Stem125E4Search.Data','namespace Stem125E4Search.Product','open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates','open AggregateD5Conditional.Data Data','set_option maxRecDepth 10000','set_option maxHeartbeats 8000000','def nonzeroIndices : List Nat := '+json.dumps([i for i,g in nonzero]),'def zeroIndices : List Nat := '+json.dumps([i for i,g in zero]),'def nonzeroFiltrations : List Nat := '+json.dumps([g['filtration'] for i,g in nonzero]),'def zeroFiltrations : List Nat := '+json.dumps([g['filtration'] for i,g in zero]),'theorem partition_complete : ∀ i : Fin 45, i.val ∈ nonzeroIndices ∨ i.val ∈ zeroIndices := by decide','theorem partition_disjoint : ∀ i ∈ nonzeroIndices, i ∉ zeroIndices := by decide','theorem partition_nodup : nonzeroIndices.Nodup ∧ zeroIndices.Nodup := by decide','def nonzeroIndex (i : Fin 31) : Fin 45 := match i with']
for j,(i,g) in enumerate(nonzero):lines.append(f'  | ⟨{j},_⟩ => ⟨{i},by decide⟩')
lines+=['  | ⟨n+31,h⟩ => False.elim (by omega)','def zeroIndex (i : Fin 14) : Fin 45 := match i with']
for j,(i,g) in enumerate(zero):lines.append(f'  | ⟨{j},_⟩ => ⟨{i},by decide⟩')
lines+=['  | ⟨n+14,h⟩ => False.elim (by omega)','theorem zero_previous_dimension (i : Fin 14) : (D2.wires (zeroIndex i)).h = 0 := by fin_cases i <;> rfl','theorem nonzeroIndex_injective : Function.Injective nonzeroIndex := by decide','theorem zeroIndex_injective : Function.Injective zeroIndex := by decide','def wires (b : Bool) (i : Fin 31) : WireComparison := match i with']
for j,(i,g) in enumerate(nonzero):
 f=g['filtration'];k=f'S0:{f},{f+125}:d3'
 wire='Data.branch b' if f==9 else ('Data.' if k in new else 'AggregateD5Conditional.Data.')+name(k)
 assert f==9 or k in new or k in old
 lines.append(f'  | ⟨{j},_⟩ => {wire}')
lines+=['  | ⟨n+31,h⟩ => False.elim (by omega)','theorem all_complete (b : Bool) (i : Fin 31) : (wires b i).Valid := by','  fin_cases i']
for j,(i,g) in enumerate(nonzero):
 f=g['filtration'];k=f'S0:{f},{f+125}:d3'
 proof='Data.branch_complete b' if f==9 else ('Data.' if k in new else 'AggregateD5Conditional.Data.')+name(k)+'_complete'
 lines.append('  · exact '+proof)
lines += ['def partitionMap : Fin 31 ⊕ Fin 14 → Fin 45 := Sum.elim nonzeroIndex zeroIndex', 'theorem partition_bijective : Function.Bijective partitionMap := by decide', 'noncomputable def partitionEquiv : (Fin 31 ⊕ Fin 14) ≃ Fin 45 := Equiv.ofBijective partitionMap partition_bijective']
lines+=['theorem previous_dimensions (b : Bool) (i : Fin 31) : (wires b i).m = (D2.wires (nonzeroIndex i)).h := by','  cases b <;> fin_cases i <;> rfl','theorem input_count (b : Bool) : Fintype.card (CoordinateIndex (fun i => (wires b i).m)) = 44 := by cases b <;> decide','theorem coordinate_count (b : Bool) : Fintype.card (CoordinateIndex (fun i => (wires b i).h)) = 24 := by cases b <;> decide','def previousHomologyEquiv (b : Bool) : ((i : Fin 31) → LocalHomology (D2.wires (nonzeroIndex i))) ≃ ((i : Fin 31) → Vec (wires b i).m) :=','  Equiv.piCongrRight (fun i => (localEquiv (D2.wires (nonzeroIndex i)) (D2.all_complete _)).trans','    (Equiv.cast (congrArg Vec (previous_dimensions b i).symm)))','abbrev NonzeroHomology (b : Bool) := TotalHomology (wires b)','noncomputable def equivalence (b : Bool) : NonzeroHomology b ≃ Vec 24 := totalFlatEquiv (wires b) (all_complete b) (coordinate_count b)','theorem cardinality (b : Bool) : Nat.card (NonzeroHomology b) = 2 ^ 24 := total_card (wires b) (all_complete b) (coordinate_count b)','theorem preserves_addition (b : Bool) (x y : NonzeroHomology b) : equivalence b (totalAdd (wires b) x y) = add (equivalence b x) (equivalence b y) := totalFlatEquiv_add (wires b) (all_complete b) (coordinate_count b) x y','theorem batch_checked (b : Bool) : Nat.card (TotalHomology (wires b)) = 2 ^ 24 := by cases b <;> stem_homology_cert using ()','#print axioms cardinality','#print axioms preserves_addition','end Stem125E4Search.Product']
(P/'Product.lean').write_text('\n'.join(lines)+'\n')
report=dict(nonzero_centers=[dict(original_index=i,**g) for i,g in nonzero],zero_centers=[dict(original_index=i,**g) for i,g in zero],branch_homology_dimensions=[1,1],nonzero_input_dimension=44,whole_E4_coordinate_count=24,source_sha256={str(p.relative_to(R)):sha(p) for p in [P/'search.json',R/'AggregateD5Conditional/source.json',R/'Stem125HomologyCertificates/coverage.json',R/'AffineRemainingSearch/branch2574-0.json',R/'AffineRemainingSearch/branch2574-1.json']})
(P/'coverage.json').write_text(json.dumps(report,indent=2)+'\n')

# Preserve the full predecessor closure for every positive center and both branch endpoints.
all_blocks=dict(old);all_blocks.update(new)
roots={f'S0:{g["filtration"]},{g["internal"]}:d3' for i,g in nonzero if g['filtration']!=9}
roots.update(['S0:6,132:d2','S0:9,134:d2','S0:12,136:d3'])
closure=set()
def visit(k):
 if k in closure:return
 closure.add(k)
 for pred in all_blocks[k]['predecessors']:visit(pred)
for k in roots:visit(k)
entries=[]
for k in sorted(closure,key=lambda k:(all_blocks[k]['page'],k)):
 b=all_blocks[k];const=('Data.' if k in new else 'AggregateD5Conditional.Data.')+name(k)
 entries.append(f'  ⟨⟨"S0",{b["page"]},{b["center"][0]},{b["center"][1]}⟩,{const}⟩')
family=['import Stem125E4Search.Branches','namespace Stem125E4Search.Family','open IndexedFamilyCertificates PageTransitionCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 12000000','def baseline : IndexedFamilyCertificates.Family := [',',\n'.join(entries),']','def family (b : Bool) : IndexedFamilyCertificates.Family := baseline ++ [⟨⟨"S0",3,9,134⟩,Data.branch b⟩]','theorem coherent (b : Bool) : Coherent (family b) := by cases b <;> lin_cert using ()',f'theorem count (b : Bool) : (family b).length = {len(closure)+1} := by cases b <;> decide','#print axioms coherent','end Stem125E4Search.Family']
(P/'Family.lean').write_text('\n'.join(family)+'\n')
report['predecessor_closure']=sorted(closure)
report['new_full_family_key']='S0:9,134:d3'
(P/'coverage.json').write_text(json.dumps(report,indent=2)+'\n')
print('8 new comparisons; 31 positive and 14 zero centers; two branch products of coordinate count24')
