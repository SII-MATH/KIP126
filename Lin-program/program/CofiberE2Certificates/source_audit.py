"""Independent SQL provenance and polynomial identity checks; not kernel proof."""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
def conn(name):return sqlite3.connect(f'file:{BASE/name}?mode=ro',uri=True)
def mono(raw,module):
 xs=[] if raw=='' else list(map(int,raw.split(',')))
 if any(x<0 or x==4294967295 for x in xs):raise ValueError('unknown generator')
 if len(xs)%2!=int(module):raise ValueError('invalid monomial shape')
 return tuple(sorted(g for g,e in zip(xs[::2],xs[1::2]) for _ in range(e))),xs[-1] if module else 0

def parity(terms):return {x for x,n in collections.Counter(terms).items() if n%2}
def poly(raw,module):
 if raw is None:raise ValueError('unknown polynomial')
 if raw=='':return set()
 if not module and raw==';':return {((),0)}
 return parity(mono(x,module) for x in raw.split(';'))
def expr(xs):return parity((tuple(sorted(c)),i) for i,p in enumerate(xs) for c in p)
def scale(p,e):return parity((tuple(sorted(tuple(c)+d)),g) for c in p for d,g in e)
def main():
 cat=json.loads((BASE/'ss.json').read_text());objects={o['name']:o for o in cat['rings']+cat['modules']};rings={o['name'] for o in cat['rings']};db={n:conn(o['path']) for n,o in objects.items()};audit=json.loads((HERE/'audit.json').read_text());files={e['path']:json.loads((ROOT/e['path']).read_text()) for e in audit['files']};origins={e['path']:e['origin'] for e in audit['files']};checked=collections.Counter()
 def basis(n,s,t):return [(i,mono(raw,n not in rings)) for i,raw in db[n].execute(f'select id,mon from {n}_AdamsE2_basis where s=? and t=? order by id',(s,t))]
 for entry in audit['files']:
  w=files[entry['path']];kind=entry['kind'];o=entry['origin']
  if kind in ('composition','commutativity'):
   a,b=files[o['first']],files[o['second']]
   def named(p):
    z=files[p];meta=origins[p].get('metadata',z);return meta['sourceName'],meta['targetName']
   assert named(o['first'])==(w['sourceName'],w['middleName']) and named(o['second'])==(w['middleName'],w['targetName'])
   assert w['middleS']==w['sourceS']+w['firstShiftS'] and w['middleT']==w['sourceT']+w['firstShiftT']
   assert w['targetS']==w['middleS']+w['secondShiftS'] and w['targetT']==w['middleT']+w['secondShiftT']
   for component,ss,tt in [(a,w['sourceS'],w['sourceT']),(b,w['middleS'],w['middleT'])]:assert component['sourceS']==ss and component['sourceT']==tt
   def entries(x):return x['algebra']['entries'] if 'algebra'in x else x['output']
   assert w['first']==entries(a) and w['second']==entries(b)
   assert w['sourceT']<=w['firstLimit'] and w['sourceT']+w['firstShiftT']<=w['secondLimit']
   n,k,r=w['cols'],w['middle'],w['rows'];assert len(w['first'])==k*n and len(w['second'])==r*k
   assert w['output']==[sum(w['second'][i*k+h] and w['first'][h*n+j] for h in range(k))%2==1 for i in range(r) for j in range(n)]
   if kind=='commutativity':assert w['output']==(entries(files[o['rhs']]) if o['rhs'] else [False]*(r*n))
  else:
   m=o['metadata'];a=w['algebra'];source=basis(m['sourceName'],m['sourceS'],m['sourceT']);target=basis(m['targetName'],m['targetS'],m['targetT'])
   assert m['sourceIds']==[i for i,_ in source] and m['targetIds']==[i for i,_ in target]
   assert [expr(x) for x in a['source']]==[{term} for _,term in source]
   assert [expr(x) for x in a['target']]==[{term} for _,term in target]
   up=o['upstream'];tn=m['targetName']
   assert m['targetS']==m['sourceS']+m['shiftS'] and m['targetT']==m['sourceT']+m['shiftT']
   coefficient=tn if tn in rings else objects[tn]['over']
   rg=dict((i,(s,t)) for i,s,t in db[coefficient].execute(f'select id,s,t from {coefficient}_AdamsE2_generators'))
   tg={0:(0,0)} if tn in rings else dict((i,(s,t)) for i,s,t in db[tn].execute(f'select id,s,t from {tn}_AdamsE2_generators'))
   for p in a['target']:
    for co,g in expr(p):assert (tg[g][0]+sum(rg[x][0] for x in co),tg[g][1]+sum(rg[x][1] for x in co))==(m['targetS'],m['targetT'])
   if kind=='factor':
    fs,ft=up['factor'][1],up['factor'][0]+up['factor'][1];fo=tn if m['sourceName'] in rings else objects[m['sourceName']]['over'];fb=basis(fo,fs,ft);ids=up['factor'][2];ids=[ids] if isinstance(ids,int) else ids;factor=parity(fb[i][1] for i in ids);assert expr(w['factor'])==factor
    assert (w['shiftS'],w['shiftT'])==(fs,ft)
    for co,g in factor:
     dg=tg[g] if w['ringSource'] else (0,0)
     assert (dg[0]+sum(rg[x][0] for x in co),dg[1]+sum(rg[x][1] for x in co))==(fs,ft)
    assert [expr(x) for x in a['images']]==([factor] if w['ringSource'] else [{(c,g) for c,_ in factor} for g in range(a['sourceGenerators'])])
   else:
    mc=conn(up['path']);table=mc.execute("select name from sqlite_master where name like 'map_AdamsE2_%' and type='table'").fetchone()[0];images=dict(mc.execute('select id,map from "'+table+'"'));assert [expr(x) for x in a['images']]==[poly(images[g],tn not in rings) for g in range(a['sourceGenerators'])];mc.close()
   for relation,origin in zip(a['relations'],o['relations'],strict=True):
    n=origin['object'];raw=db[n].execute(f'select rel from {n}_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone()[0];terms=poly(raw,n not in rings)
    if 'lift_generator'in origin:terms={(c,origin['lift_generator']) for c,_ in terms}
    assert expr(relation)==terms
   for j,input in enumerate(a['source']):
    result=set()
    for co,g in expr(input):result.symmetric_difference_update(scale([co],expr(a['images'][g])))
    for term in a['terms'][j]:result.symmetric_difference_update(scale(term['multiplier'],expr(a['relations'][term['relation']])))
    expected=set()
    for i,target_expr in enumerate(a['target']):
     if a['entries'][i*a['cols']+j]:expected.symmetric_difference_update(expr(target_expr))
    assert result==expected
  checked[kind]+=1
 result=dict(checked=dict(checked),cofiber_records=len(audit['records']),generation_sha256=hashlib.sha256((HERE/'audit.json').read_bytes()).hexdigest(),certificate_sha256={p:hashlib.sha256((ROOT/p).read_bytes()).hexdigest() for p in sorted(files)},source_sha256={str(p.relative_to(BASE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(set([BASE/'ss.json']+[BASE/o['path'] for o in objects.values()]+[BASE/e['origin']['upstream']['path'] for e in audit['files'] if e['kind']=='direct_dependency']))},scope='Independent SQL/algebra audit, not kernel proof')
 (HERE/'source_audit.json').write_text(json.dumps(result,indent=2)+'\n');print({k:v for k,v in result.items() if k not in ('certificate_sha256','source_sha256')})
if __name__=='__main__':main()
