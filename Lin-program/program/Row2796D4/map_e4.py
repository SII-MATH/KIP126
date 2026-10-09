"""Full comparison audit for the sole literal E2 candidate map."""
import json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;o='CW_nu_eta'
cat=json.loads((r/'upstream/category-inventory.json').read_text());path=next(x['source']['path'] for x in cat['records'] if x['section']=='modules' and x['source']['name']==o)
c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/{path}?mode=ro',uri=True)
dag=dict(degrees={},blocks={})
def visit(s,t,page):
 key=f'{o}:{s},{t}:d{page}'
 if key in dag['blocks']:return
 pred=[]
 for a,b in [(s-page,t-page+1),(s,t),(s+page,t+page-1)]:
  dag['degrees'][f'{o}:{a},{b}']=dict(e2=c.execute(f'select id,mon,d2 from {o}_AdamsE2_basis where s=? and t=? order by id',(a,b)).fetchall(),staircase=c.execute(f'select id,base,diff,level from {o}_AdamsE2_ss where s=? and t=? order by id',(a,b)).fetchall())
  if page>2:visit(a,b,page-1);pred.append(f'{o}:{a},{b}:d{page-1}')
 dag['blocks'][key]=dict(predecessors=pred)
for d in [(9,142),(13,145),(1,7)]:visit(*d,3)
ns={'__file__':str(p/'generate.py')};src=(r/'AggregateTwoDetectorConditional/generate.py').read_text().split('\ncandidates=[]')[0];exec(compile(src,str(p/'generate.py'),'exec'),ns);ns['dag']=dag
res={}
for label,(s,t) in dict(source=(9,142),target=(13,145),factor=(1,7)).items():
 try:
  w=ns['build'](o,s,t,3)['wire'];res[label]=dict(status='complete',dimension=w['h'])
 except ValueError as e:res[label]=dict(status='blocked',reason=str(e))
if f'{o}:13,145:d2' in ns['cache']:
 w=ns['cache'][f'{o}:13,145:d2']['wire'];v=[int(i==5) for i in range(w['m'])];res['target']['E3_coordinates']=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
 if f'{o}:13,145:d3' in ns['cache']:
  w=ns['cache'][f'{o}:13,145:d3']['wire'];v=res['target']['E3_coordinates']
  res['target']['E4_coordinates']=[sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['h'])]
  res['target']['d3_image']=[sum(w['outgoing'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['k'])]
(p/'map-e4.json').write_text(json.dumps(dict(results=res,failures=ns['failures'],comparisons=ns['cache'],dag=dag),indent=2)+'\n');print(res)
