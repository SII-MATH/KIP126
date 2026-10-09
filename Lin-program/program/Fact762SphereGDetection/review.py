"""Independent exhaustive replay, source provenance, and latest Lean evidence."""
import hashlib,itertools,json,sqlite3
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent
j=json.loads((H/'provisional.json').read_text());m=json.loads((H/'by-sigma-maps.json').read_text());d2=json.loads((H/'by-sigma-d2.json').read_text());s=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True);c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/CW_nu_eta_2_AdamsSS_t200.db?mode=ro',uri=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def vec(n):return itertools.product(range(2),repeat=n)
def ev(a,m,n,v):assert len(a)==m*n;return tuple(sum(a[i*n+k]*v[k] for k in range(n))%2 for i in range(m))
def add(a,b):return tuple(x^y for x,y in zip(a,b))
def mono(raw):
 x=list(map(int,raw.split(','))) if raw else [];return tuple(sorted(i for i,e in zip(x[::2],x[1::2]) for _ in range(e)))
def parity(xs):
 out=set()
 for x in xs:out.symmetric_difference_update({x})
 return out
def mult(p,q):return parity(tuple(sorted(x+y)) for x in p for y in q)
quotient_pairs=0;vectors=0;relation_steps=0
for k,b in j['comparisons'].items():
 w=b['wire'];n,mm,kk,hh=[w[z] for z in ['n','m','k','h']];O=lambda v:ev(w['outgoing'],kk,mm,v);I=lambda v:ev(w['incoming'],mm,n,v);P=lambda v:ev(w['projection'],hh,mm,v);J=lambda v:ev(w['inclusion'],mm,hh,v);im={I(v) for v in vec(n)};cyc=[v for v in vec(mm) if not any(O(v))]
 assert len(cyc)==len(im)*2**hh
 for v in cyc:
  assert add(v,J(P(v))) in im;vectors+=1
 for x in cyc:
  for y in cyc:assert (P(x)==P(y))==(add(x,y) in im);quotient_pairs+=1
 for v in vec(hh):assert P(J(v))==v and not any(O(J(v)))
for p in j['products']:
 cur=mult({mono(p['left'][1])},{mono(p['right'][1])});assert cur=={tuple(x) for x in p['input']}
 for tr in p['trace']:
  raw,ss,tt=s.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(tr['rowid'],)).fetchone();assert raw==tr['raw'] and [ss,tt]==tr['degree'];poly={mono(x) for x in raw.split(';')};assert poly=={tuple(x) for x in tr['polynomial']};cur.symmetric_difference_update(mult({tuple(tr['multiplier'])},poly));relation_steps+=1
 assert cur=={tuple(x) for x in p['output']}
 assert sorted(i for i,row in enumerate(p['target']) if mono(row[1]) in cur)==p['coordinates']
for name,b in m['maps'].items():
 w=b['wire'];a=w['algebra'];assert len(a['entries'])==a['rows']*a['cols']
 for origin in b['origins']:
  raw,ss,tt=s.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone();assert raw==origin['raw'] and [ss,tt]==origin['degree']
 for column,raw in enumerate(b['source']):
  fields=list(map(int,raw[1].split(',')));g=fields[-1];co=mono(','.join(map(str,fields[:-1])));gid=m['generators'].index(g);cur=mult({co},{tuple(x) for x in a['images'][gid][0]})
  for term in a['terms'][column]:cur.symmetric_difference_update(mult({tuple(x) for x in term['multiplier']},{tuple(x) for x in a['relations'][term['relation']][0]}));relation_steps+=1
  assert cur=={mono(b['target'][i][1]) for i in b['columns'][column]}
for b in d2['matrices'].values():
 for col in b['columns']:
  if col.get('kind'):
   rid,base,diff,level=c.execute('select id,base,diff,level from CW_nu_eta_2_AdamsE2_ss where id=?',(col['staircase_row'],)).fetchone();assert 2<=level<5000 or 9000<level<9998;assert col['coordinates']==[]
  else:
   cur={(tuple(co),g) for co,g in col['input']}
   for tr in col['trace']:
    o=tr['origin'];raw,ss,tt=c.execute('select rel,s,t from CW_nu_eta_2_AdamsE2_relations where rowid=?',(o['rowid'],)).fetchone();assert raw==o['raw'] and [ss,tt]==o['degree'];cur.symmetric_difference_update(parity((tuple(sorted(tuple(co)+tuple(tr['multiplier']))),g) for co,g in tr['polynomial']));relation_steps+=1
   assert cur=={(tuple(co),g) for co,g in col['output']}
# All imported graph rows are exact. Negative filtration denotes the empty algebraic source only.
for d in j['graph']['degrees'].values():
 degree=d['degree'];assert [list(x) for x in s.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree)]==d['e2'];assert [list(x) for x in s.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',degree)]==d['staircase']
assert j['products'][0]['coordinates']==[] and j['products'][1]['coordinates']==[] and j['products'][2]['coordinates']==[0]
assert m['maps']['m19_157']['columns']==[[],[],[2]]
hp=json.loads((H/'h0-provenance.json').read_text())
for column,item in enumerate(hp['records']):
 w=item['bundle'];cur={tuple(x) for x in w['input']}
 assert cur==mult({(0,)},{mono(item['source'][1])})
 for term,origin in zip(w['terms'],item['origins']):
  rid,raw,ss,tt=origin
  assert s.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(rid,)).fetchone()==(raw,ss,tt)
  cur.symmetric_difference_update(mult({tuple(x) for x in term['multiplier']},{mono(x) for x in raw.split(';')}));relation_steps+=1
 assert cur=={tuple(x) for x in w['output']}
 assert sorted(i for i,row in enumerate(hp['target']) if mono(row[1]) in cur)==hp['columns'][column]
product_vectors=0
for r in [2,3,4]:
 w=json.loads((H/f'product{r}.json').read_text());l,b,t=[w[x] for x in ['left','right','target']]
 def tensor(v,x,y):return tuple(sum(v[(k*l['m']+i)*b['m']+q]*x[i]*y[q] for i in range(l['m']) for q in range(b['m']))%2 for k in range(t['m']))
 im={ev(t['incoming'],t['m'],t['n'],u) for u in vec(t['n'])}
 for x in vec(l['m']):
  for y in vec(b['m']):
   if not any(ev(l['outgoing'],l['k'],l['m'],x)) and not any(ev(b['outgoing'],b['k'],b['m'],y)):
    assert not any(ev(t['outgoing'],t['k'],t['m'],tensor(w['tensor'],x,y)));product_vectors+=1
 for u in vec(l['n']):
  for y in vec(b['m']):
   if not any(ev(b['outgoing'],b['k'],b['m'],y)):assert tensor(w['tensor'],ev(l['incoming'],l['m'],l['n'],u),y) in im
 for x in vec(l['m']):
  for v in vec(b['n']):
   if not any(ev(l['outgoing'],l['k'],l['m'],x)):assert tensor(w['tensor'],x,ev(b['incoming'],b['m'],b['n'],v)) in im
# Failure model for omitting the derived incoming column.
poison=[0,1,1,0,0,0];assert ev(poison,3,2,[1,0])==(0,1,0)
modules=(H/'modules.txt').read_text().splitlines();axioms=0
for mod in modules:
 name=mod.split('.')[-1];record=json.loads((H/f'{name}-compile.json').read_text());assert record['observed_exit_code']==0 and record['inputs_stable'];assert sha(H/f'{name}.lean')==record['source_sha256'];assert sha(H/record['log'])==record['log_sha256'];assert sha(R/'.lake/build/lib/lean'/f'{mod.replace(".","/")}.olean')==record['olean_sha256']
 for dep,hash in record['dependencies_sha256'].items():assert sha(R/dep)==hash
 log=(H/record['log']).read_text();assert 'sorryAx' not in log;axioms+=log.count('depends on axioms:')
 text=(H/f'{name}.lean').read_text();assert not any(word in text for word in ['sorry','admit','native_decide','unsafe','axiom '])
report=dict(status='passed',modules=len(modules),latest_standard_axiom_reports=axioms,complete_comparisons=len(j['comparisons']),homology_vectors=vectors,quotient_pairs=quotient_pairs,relation_steps=relation_steps,product_cycle_pairs=product_vectors,by_sigma_E2_columns=sum(x['wire']['algebra']['cols'] for x in m['maps'].values()),derived_raw_NULL_columns=[['S0',5382,3],['S0',5574,3],['S0',5575,3],['S0',5574,4],['S0',5575,4]],explicit_finite_prefixes=[['CW_nu_eta_2',4427,3,9955],['S0',5468,3,9995],['S0',5468,4,9995]],known_event=['S0',5383,3,'0','1',9997],limitation='Actual full mathematical interpretations and selected known finite prefixes remain inputs. No future permanence or original topological realization claim.')
(H/'review.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
