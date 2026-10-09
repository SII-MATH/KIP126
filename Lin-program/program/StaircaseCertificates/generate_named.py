"""Bind audited scalar expressions to a checked staircase change of basis.
This proves coordinate/span statements only, not spectral-sequence permanence.
"""
import json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
source={ (w['s'],w['t']):w for w in map(json.loads,(root/'StaircaseCertificates/S0.jsonl').read_text().splitlines()) }
claims=json.loads((root/'NamedElementCertificates/name_audit.json').read_text())['claims']
def lean_bits(xs):return '['+', '.join('true' if x else 'false' for x in xs)+']'
lines=['import StaircaseCertificates.Import','namespace StaircaseCertificates.Named','open LinearCertificates LinProgramCertificates']
audit=[]
for idx,c in enumerate(claims):
 if c['status']!='resolved_S0_basis':continue
 w=source[c['s'],c['t']];n=w['dimension'];x=[False]*n
 for v in c['coordinates']:x[v['degree_local_index']]=not x[v['degree_local_index']]
 z=[sum(w['inverse'][i*n+j]*x[j] for j in range(n))%2==1 for i in range(n)]
 active=[dict(index=i,level=w['levels'][i],unknown=w['unknown'][i]) for i in range(n) if z[i]]
 name='case'+str(idx)
 lines += [f'-- {c["claim"]} s={c["s"]} t={c["t"]}',f'def {name}Basis : BasisCertificate {n} :=',f'  ⟨fun i j => ({lean_bits(w["basis"])} : List Bool)[i.val * {n} + j.val]!,',f'   fun i j => ({lean_bits(w["inverse"])} : List Bool)[i.val * {n} + j.val]!⟩',f'def {name}Input : Vec {n} := fun i => ({lean_bits(x)} : List Bool)[i.val]!',f'def {name}Coordinates : Vec {n} := fun i => ({lean_bits(z)} : List Bool)[i.val]!',f'theorem {name}Invertible : IsBasis {name}Basis := by lin_cert using ()',f'theorem {name}CoordinatesCorrect : ∀ i, eval {name}Basis.inverse {name}Input i = {name}Coordinates i := by decide']
 audit.append(dict(claim=c['claim'],s=c['s'],t=c['t'],input=x,coordinates=z,active=active,status='coordinates_only'))
lines+=['end StaircaseCertificates.Named']
(root/'StaircaseCertificates/Named.lean').write_text('\n'.join(lines)+'\n')
(root/'StaircaseCertificates/named_coordinates.json').write_text(json.dumps(audit,indent=2)+'\n')
print(len(audit),'named expressions bound to invertible staircase bases')
