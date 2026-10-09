"""Explore complete stem125 d4 comparisons from each preserved E4 branch."""
import hashlib,json,sqlite3
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
old=json.loads((R/'AggregateD5Conditional/source.json').read_text())
e4=json.loads((R/'Stem125E4Search/search.json').read_text())
coverage=json.loads((R/'Stem125E4Search/coverage.json').read_text())
base_script=R/'Stem125E4Search/search.py'
reports=[]
for bit in [0,1]:
 outer={'__file__':str(base_script)}
 exec(compile(base_script.read_text().split('rows=[]')[0],str(base_script),'exec'),outer)
 ns=outer['ns'];ns['cache'].update(e4['new_blocks']);ns['cache']['S0:9,134:d3']=dict(object='S0',center=[9,134],page=3,wire=json.loads((R/f'Stem125E4Search/branch{bit}.json').read_text()),projection_rows=[[1,bit,0]],uses=[dict(kind='branch2574_two_product_constraints',branch=bit)],predecessors=['S0:6,132:d2','S0:9,134:d2','S0:12,136:d2'])
 ns['cache']['S0:21,147:d3']=json.loads((R/'AggregateLeibniz3564Conditional/source.json').read_text())['blocks']['S0:21,147:d3']
 branch_base=dict(ns['cache']);rows=[]
 for x in coverage['nonzero_centers']:
  f=x['filtration'];t=f+125;k=f'S0:{f},{t}:d3';w=ns['cache'][k]['wire']
  if not w['h']:continue
  row=dict(filtration=f,center=[f,t],E4_dimension=w['h'],raw={})
  for a,b in [(f-4,t-3),(f,t),(f+4,t+3)]:
   row['raw'][f'{a},{b}']=[list(z) for z in outer['sql'].execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(a,b))]
  try:
   result=outer['ensure']('S0',f,t,4)
   row.update(status='complete',homology=result['wire']['h'],uses=result['uses'])
  except (ValueError,KeyError,AssertionError) as e:row.update(status='unresolved',reason=str(e))
  rows.append(row)
 assert all(ns['cache'][k]==v for k,v in branch_base.items())
 report=dict(branch=bit,positive_centers=rows,new_blocks={k:v for k,v in ns['cache'].items() if k not in branch_base},failures=ns['failures'],requested=outer['requested'],degree_data=ns['dag']['degrees'])
 reports.append(report)
 print('branch',bit,'E4dimension',sum(r['E4_dimension'] for r in rows),'centers',len(rows))
 for row in rows:print(row['filtration'],row['E4_dimension'],row['status'],row.get('homology'),row.get('reason',''))
(P/'search.json').write_text(json.dumps(dict(branches=reports,input_sha256={str(p.relative_to(R)):sha(p) for p in [R/'AggregateD5Conditional/source.json',R/'AggregateLeibniz3564Conditional/source.json',R/'Stem125E4Search/search.json',R/'Stem125E4Search/coverage.json',R/'Stem125E4Search/branch0.json',R/'Stem125E4Search/branch1.json',Path(__file__),base_script]},scope='Conditional finite comparison exploration only; no branch chosen and no unknown matrix filled.'),indent=2,sort_keys=True)+'\n')
