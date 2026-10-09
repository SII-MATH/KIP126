"""Bind ambiguous target blocks to their full incoming source comparisons."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent
branches=json.loads((P/'branches.json').read_text())['branches']
lines=['import Stem125E5Search.Branches','import Row3151BranchCertificates.Semantics','import Row3992BranchCertificates.Semantics','namespace Stem125E5Search.Family','open IndexedFamilyCertificates PageTransitionCertificates','set_option maxRecDepth 10000','set_option maxHeartbeats 8000000','def fifteenSource (i : Fin 4) : WireComparison := match i with']
for i,row in enumerate(branches['fifteen']):
 b,c=row['parameters']['b'],row['parameters']['c'];lines.append(f'  | ⟨{i},_⟩ => Row3151BranchCertificates.Semantics.comparison {str(bool(b)).lower()} {str(bool(c)).lower()}')
lines+=['  | ⟨n+4,h⟩ => False.elim (by omega)','def fifteenFamily (i : Fin 4) : Family := [','  ⟨⟨"S0",3,11,137⟩,AggregateD5Conditional.Data.b_S0_11_137_d3⟩,','  ⟨⟨"S0",3,15,140⟩,AggregateD5Conditional.Data.b_S0_15_140_d3⟩,','  ⟨⟨"S0",3,19,143⟩,AggregateD5Conditional.Data.b_S0_19_143_d3⟩,','  ⟨⟨"S0",4,11,137⟩,fifteenSource i⟩,','  ⟨⟨"S0",4,15,140⟩,Data.fifteen i⟩]','theorem fifteen_coherent (i : Fin 4) : Coherent (fifteenFamily i) := by fin_cases i <;> lin_cert using ()','def twentyfiveSource (i : Fin 20) : WireComparison := match i with']
for i,row in enumerate(branches['twentyfive']):
 ps=row['parameters'];b,c,d=(str(bool(ps[k])).lower() for k in ['b','c','d']);lines.append(f'  | ⟨{i},_⟩ => Row3992BranchCertificates.Imports.comparison {b} {c} {d}')
lines+=['  | ⟨n+20,h⟩ => False.elim (by omega)','def twentyfiveFamily (i : Fin 20) : Family := [','  ⟨⟨"S0",3,21,147⟩,AggregateLeibniz3564Conditional.Source.comparison⟩,','  ⟨⟨"S0",3,25,150⟩,AggregateD5Conditional.Data.b_S0_25_150_d3⟩,','  ⟨⟨"S0",3,29,153⟩,Data.b_S0_29_153_d3⟩,','  ⟨⟨"S0",4,21,147⟩,twentyfiveSource i⟩,','  ⟨⟨"S0",4,25,150⟩,Data.twentyfive i⟩]','theorem twentyfive_coherent (i : Fin 20) : Coherent (twentyfiveFamily i) := by fin_cases i <;> lin_cert using ()','def nineFamily (prefix : Fin 2) (out : Fin 2) (oldBranch : Bool) : Family := [','  ⟨⟨"S0",3,5,131⟩,Data.b_S0_5_131_d3⟩,','  ⟨⟨"S0",3,9,134⟩,Stem125E4Search.Data.branch oldBranch⟩,','  ⟨⟨"S0",3,13,137⟩,Data.target9prefix prefix⟩,','  ⟨⟨"S0",4,9,134⟩,Data.nine out⟩]','theorem nine_coherent (prefix : Fin 2) (out : Fin 2) (oldBranch : Bool) : Coherent (nineFamily prefix out oldBranch) := by fin_cases prefix <;> fin_cases out <;> cases oldBranch <;> lin_cert using ()','def fourteenFamily (i : Fin 3) : Family := [','  ⟨⟨"S0",3,10,136⟩,Data.source14prefix (Branches.source14Branch i)⟩,','  ⟨⟨"S0",3,14,139⟩,AggregateD5Conditional.Data.b_S0_14_139_d3⟩,','  ⟨⟨"S0",3,18,142⟩,AggregateD5Conditional.Data.b_S0_18_142_d3⟩,','  ⟨⟨"S0",4,14,139⟩,Data.fourteen i⟩]','theorem fourteen_coherent (i : Fin 3) : Coherent (fourteenFamily i) := by fin_cases i <;> lin_cert using ()','#print axioms fifteen_coherent','#print axioms twentyfive_coherent','#print axioms nine_coherent','#print axioms fourteen_coherent','end Stem125E5Search.Family']
s='\n'.join(lines)+'\n'
s=s.replace('(prefix :','(prefixIndex :').replace(' prefix',' prefixIndex') if False else s
s=s.replace('prefix : Fin','prefixIndex : Fin').replace('target9prefix prefix','target9prefix prefixIndex').replace('nineFamily prefix out','nineFamily prefixIndex out').replace('fin_cases prefix <','fin_cases prefixIndex <')
# The zero source comparison is an existing snapshot record, not a new data declaration.
s=s.replace('Data.b_S0_5_131_d3','AggregateD5Conditional.Data.b_S0_5_131_d3')

R=P.parent
old=json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks']
new=json.loads((P/'branches.json').read_text())['new_blocks']
e4new=json.loads((R/'Stem125E4Search/search.json').read_text())['new_blocks']
blocks=dict(old);blocks.update(e4new);blocks.update(new)
closure=set()
def visit(k):
 if k in closure:return
 closure.add(k)
 for dep in blocks[k]['predecessors']:visit(dep)
for row in json.loads((P/'branches.json').read_text())['known_centers']:visit(f'S0:{row["filtration"]},{row["filtration"]+125}:d4')
s=s.replace('end Stem125E5Search.Family\n','')
rows=[]
for k in sorted(closure,key=lambda k:(blocks[k]['page'],k)):
 x=blocks[k];name='b_'+k.replace(':','_').replace(',','_').replace('-','neg');ns='Data.' if k in new else 'Stem125E4Search.Data.' if k in e4new else 'AggregateD5Conditional.Data.'
 rows.append(f'  ⟨⟨"S0",{x["page"]},{x["center"][0]},{x["center"][1]}⟩,{ns}{name}⟩')
s+='def knownFamily : Family := [\n'+',\n'.join(rows)+'\n]\n'
s+='theorem known_coherent : Coherent knownFamily := by lin_cert using ()\n#print axioms known_coherent\nend Stem125E5Search.Family\n'
(P/'Family.lean').write_text(s)
