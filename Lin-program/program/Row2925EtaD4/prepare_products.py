"""Complete quotient products for the ordinary eta Leibniz terms."""
import json, subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
builder=R/'Stem125E4Search/search.py'
outer={'__file__':str(builder)}
exec(compile(builder.read_text().split('\nrows=[]')[0],str(builder),'exec'),outer)
blocks=json.loads((R/'Row2925D4Search/comparisons.json').read_text())['blocks']
blocks.update(json.loads((R/'AggregateD5Conditional/source.json').read_text())['blocks'])
for s,t in [(5,5)]:
 for q in [2,3]:
  outer['ensure']('S0',s,t,q)
blocks.update(outer['ns']['cache'])
canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
records=[]
for name,st in [('deta',(5,5)),('source',(11,137)),('target',(15,140)),('targetProduct',(16,142))]:
 for q in [2,3]:
  b=blocks[f'S0:{st[0]},{st[1]}:d{q}']
  (P/f'{name}D{q}.json').write_text(canon(b['wire']))
  records.append(dict(name=name,**b))
pro=json.loads((P/'products-provenance.json').read_text())
left=json.loads((P/'h05-provenance.json').read_text())
def entries(rows,st):
 cols=[r for r in rows if r['source_degree']==list(st)]
 return [i in c['target_coordinates'] for i in range(len(cols[0]['target_basis_ids'])) for c in cols]
def ev(M,m,n,x):return [bool(sum(M[i*n+j] and x[j] for j in range(n))%2) for i in range(m)]
batches=[]
for name,st,rows,lt,rt,tg in [('leftTerm',(11,137),left,'deta','source','targetProduct')]:
 mat=entries(rows,st)
 for q in [2,3]:
  if q==3:
   s=blocks[f'S0:{st[0]},{st[1]}:d2']['wire']
   targetDegree=(16,142) if name=='leftTerm' else (st[0]+1,st[1]+2)
   t=blocks[f'S0:{targetDegree[0]},{targetDegree[1]}:d2']['wire']
   result=[]
   for j in range(s['h']):
    inc=[s['inclusion'][i*s['h']+j] for i in range(s['m'])]
    out=ev(t['projection'],t['h'],t['m'],ev(mat,t['m'],s['m'],inc))
    result.append(out)
   mat=[result[j][i] for i in range(t['h']) for j in range(s['h'])]
  bits=''.join('1' if x else '0' for x in mat) or '-'
  line=f'{P}/{lt}D{q}.json {P}/{rt}D{q}.json {P}/{tg}D{q}.json {bits}'
  batch=P/f'{name}D{q}.batch';batch.write_text(line+'\n')
  run=subprocess.run([str(R/'PageProductCertificates/page-product-export'),'--batch',str(batch)],capture_output=True,text=True,check=True)
  (P/f'{name}D{q}.json').write_text(run.stdout)
  batches.append(dict(name=name,page=q,tensor=mat))
(P/'product-source.json').write_text(json.dumps(dict(comparisons=records,products=batches),indent=2,sort_keys=True)+'\n')
print('8 complete low/source/target comparisons,2 whole left-term quotient products')
