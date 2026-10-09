"""Regenerate explicit proof batches from canonical JSON, no trusted code execution."""
import json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
def encode(v):
 if isinstance(v,bool):return 'true' if v else 'false'
 if isinstance(v,int):return str(v)
 if isinstance(v,str):return json.dumps(v)
 return '['+', '.join(encode(x) for x in v)+']'
for folder,file,size,namespace,typ,fields,claim in [
 ('page-transition-release','certificates.jsonl',50,'PageTransitionCertificates','WireComparison',['version','k','m','n','h','outgoing','incoming','inclusion','projection','up','down'],'c{idx}.Valid'),
 ('staircase-release','appendix.jsonl',100,'StaircaseCertificates','Wire',['version','object','s','t','dimension','basis','inverse','levels','unknown'],'IsBasis c{idx}.certificate')]:
 rows=[json.loads(s) for s in (root/folder/file).read_text().splitlines()]
 out=root/folder/'batches';out.mkdir(exist_ok=True)
 for start in range(0,len(rows),size):
  ns=namespace+'.Release'+str(start//size)
  lines=['import '+namespace+'.Import','namespace '+ns,'open LinProgramCertificates']
  for idx,w in enumerate(rows[start:start+size],start):
   if namespace == 'PageTransitionCertificates':
    lines += [f'def certificate{idx} : {typ} := ⟨'+', '.join(encode(w[k]) for k in fields)+'⟩', f'theorem comparison{idx} : certificate{idx}.Valid := by lin_cert using ()']
   else:
    lines += [f'def c{idx} : {typ} := ⟨'+', '.join(encode(w[k]) for k in fields)+'⟩', f'theorem basis{idx} : IsBasis c{idx}.certificate := by lin_cert using ()']
  lines.append('end '+ns)
  (out/f'Batch{start//size:03d}.lean').write_text('\n'.join(lines)+'\n')
 print(folder,len(rows),'statements')
