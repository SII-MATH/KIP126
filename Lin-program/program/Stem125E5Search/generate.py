"""Generate complete local comparisons for every unchosen compatible d4 branch."""
import hashlib,itertools,json,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
search=json.loads((P/'search.json').read_text());old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks']
assert search['branches'][0]['new_blocks']==search['branches'][1]['new_blocks']
new=search['branches'][0]['new_blocks'];fields=['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down']
name=lambda k:'b_'+k.replace(':','_').replace(',','_').replace('-','neg')
lines=['import Stem125E4Search.Zero','namespace Stem125E5Search.Data','open LinearCertificates PageTransitionCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 8000000']
for k,b in sorted(new.items(),key=lambda kv:(kv[1]['page'],kv[0])):
 literal=','.join(json.dumps(b['wire'][f],separators=(',',':')) for f in fields)
 lines += [f'def {name(k)} : WireComparison := ⟨{literal}⟩',f'theorem {name(k)}_complete : {name(k)}.Valid := by lin_cert using ()']
branches={}
def comparison(k,m,n,out,inc):
 args=[str(k),str(m),str(n),''.join(map(str,out)) or '-',''.join(map(str,inc)) or '-']
 run=subprocess.run([str(R/'PageTransitionCertificates/page-transition-export'),*args],capture_output=True,text=True,check=True)
 return json.loads(run.stdout)
branches['nine']=[dict(parameters={'outgoing':u},wire=comparison(1,1,0,[u],[])) for u in [0,1]]
branches['fourteen']=[dict(parameters={'source_dimension':0,'incoming':None},wire=comparison(0,1,0,[],[]))]+[dict(parameters={'source_dimension':1,'incoming':v},wire=comparison(0,1,1,[],[v])) for v in [0,1]]
branches['fifteen']=[dict(parameters={'b':b,'c':c},wire=comparison(1,2,2,[0,0],[b,1,c,0])) for b,c in itertools.product([0,1],repeat=2)]
branches['twentyfive']=[]
for b,c,d,u,v in itertools.product([0,1],repeat=5):
 if (c*u)^(d*v):continue
 branches['twentyfive'].append(dict(parameters=dict(b=b,c=c,d=d,u=u,v=v),wire=comparison(1,3,2,[0,u,v],[1,b,0,c,0,d])))
branches['target9prefix']=[dict(parameters={'row2916':b},wire=comparison(1,3,1,[0,b,1],[1,0,0])) for b in [0,1]]
branches['source14prefix']=[dict(parameters={'row2708':a},wire=comparison(5,1,2,[0,0,0,0,0],[0,a])) for a in [0,1]]
# The true d3 target dimension of (10,136) comes from (13,138), not its E2 dimension.
pred=old['S0:13,138:d2']['wire']['h']
branches['source14prefix']=[dict(parameters={'row2708':a},wire=comparison(pred,1,2,[0]*pred,[0,a])) for a in [0,1]]
for group,rows in branches.items():
 for j,row in enumerate(rows):
  literal=','.join(json.dumps(row['wire'][f],separators=(',',':')) for f in fields)
  const=f'{group}_{j}'
  lines += [f'def {const} : WireComparison := ⟨{literal}⟩',f'theorem {const}_complete : {const}.Valid := by lin_cert using ()']
 N=len(rows);lines += [f'def {group} (i : Fin {N}) : WireComparison := match i with']
 for j in range(N):lines.append(f'  | ⟨{j},_⟩ => {group}_{j}')
 lines += [f'  | ⟨n+{N},h⟩ => False.elim (by omega)',f'theorem {group}_complete (i : Fin {N}) : ({group} i).Valid := by','  fin_cases i']
 for j in range(N):lines.append(f'  · exact {group}_{j}_complete')
lines+=['#print axioms twentyfive_complete','end Stem125E5Search.Data']
(P/'Data.lean').write_text('\n'.join(lines)+'\n')
known=[row for row in search['branches'][0]['positive_centers'] if row['status']=='complete']
assert len(known)==13 and sum(row['E4_dimension'] for row in known)==17 and sum(row['homology'] for row in known)==2
lines=['import Stem125E5Search.Data','namespace Stem125E5Search.Known','open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 8000000','def filtrations : List Nat := '+json.dumps([r['filtration'] for r in known]),'def wires (i : Fin 13) : WireComparison := match i with']
for j,row in enumerate(known):
 f=row['filtration'];k=f'S0:{f},{f+125}:d4';const=('Data.' if k in new else 'AggregateD5Conditional.Data.')+name(k)
 lines.append(f'  | ⟨{j},_⟩ => {const}')
lines+=['  | ⟨n+13,h⟩ => False.elim (by omega)','theorem all_complete (i : Fin 13) : (wires i).Valid := by','  fin_cases i']
for row in known:
 f=row['filtration'];k=f'S0:{f},{f+125}:d4';const=('Data.' if k in new else 'AggregateD5Conditional.Data.')+name(k)
 lines.append(f'  · exact {const}_complete')
lines+=['theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = 17 := by decide','theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = 2 := by decide','abbrev KnownHomology := TotalHomology wires','noncomputable def equivalence : KnownHomology ≃ Vec 2 := totalFlatEquiv wires all_complete coordinate_count','theorem cardinality : Nat.card KnownHomology = 2 ^ 2 := total_card wires all_complete coordinate_count','#print axioms cardinality','end Stem125E5Search.Known']
(P/'Known.lean').write_text('\n'.join(lines)+'\n')
(P/'branches.json').write_text(json.dumps(dict(branches=branches,known_centers=known,new_blocks=new,limitation='All finite choices retained; exact matrix interpretations and zero/prefix/source premises must be proved. No unique actual E5 dimension follows.'),indent=2,sort_keys=True)+'\n')
print('21 new complete comparisons;13centers17->2; local branch counts2/3/4/20; prefix branch counts2/2')
