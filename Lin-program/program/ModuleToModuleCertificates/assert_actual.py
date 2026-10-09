"""Independent read-only source-data audit of the 30 complete actual blocks."""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;BASE=HERE.parent/'upstream/kervaire-49'
def mon(raw):
 cells=list(map(int,raw.split(',')))
 assert len(cells)%2==1
 return tuple(g for g,e in zip(cells[:-1:2],cells[1:-1:2]) for _ in range(e)),cells[-1]
def poly(raw):
 assert raw is not None
 return [] if raw=='' else [mon(s) for s in raw.split(';')]
def expr(terms,n):
 out=[[] for _ in range(n)]
 for m,g in terms:
  assert g<n;out[g].append(list(m))
 return out
def parity(xs):return {m for m,n in collections.Counter(xs).items() if n%2}
def flat(xs):return parity((tuple(sorted(m)),g) for g,p in enumerate(xs) for m in p)
def main():
 a=json.loads((HERE/'audit.json').read_text());assert len(a['verified_candidates'])==30 and a['unresolved']==[]
 for name,h in a['sources'].items():assert hashlib.sha256((BASE/name).read_bytes()).hexdigest()==h
 src=sqlite3.connect(f'file:{BASE}/Cnu_AdamsSS_t200.db?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{BASE}/CW_nu_eta_AdamsSS_t200.db?mode=ro',uri=True);mp=sqlite3.connect(f'file:{BASE}/map_AdamsSS_Cnu_to_CW_nu_eta_t180.db?mode=ro',uri=True)
 images=dict(mp.execute('select id,map from map_AdamsE2_Cnu_to_CW_nu_eta'));seen=[]
 for r in a['verified_candidates']:
  s,t=r['s'],r['t'];w=json.loads((HERE/f's{s}t{t}.json').read_text())
  source=list(src.execute('select id,mon from Cnu_AdamsE2_basis where s=? and t=? order by id',(s,t)));target=list(tgt.execute('select id,mon from CW_nu_eta_AdamsE2_basis where s=? and t=? order by id',(s,t)))
  assert [i for i,_ in source]==r['source_ids'] and [i for i,_ in target]==r['target_ids']
  assert w['source']==[expr([mon(raw)],w['sourceGenerators']) for _,raw in source]
  assert w['target']==[expr([mon(raw)],w['targetGenerators']) for _,raw in target]
  assert w['images']==[expr(poly(images[i]),w['targetGenerators']) for i in range(w['sourceGenerators'])]
  assert w['sourceS']==w['targetS']==s and w['sourceT']==w['targetT']==t
  assert w['rows']==len(target) and w['cols']==len(source) and len(w['entries'])==len(source)*len(target)
  assert w['relations']==[expr(poly(tgt.execute('select rel from CW_nu_eta_AdamsE2_relations where rowid=?',(rid,)).fetchone()[0]),w['targetGenerators']) for rid in r['relation_ids']]
  for j,(_,raw) in enumerate(source):
   coeff,g=mon(raw);lhs=parity((tuple(sorted(coeff+m)),h) for m,h in poly(images[g]))
   output=set()
   for i,(_,rawt) in enumerate(target):
    if w['entries'][i*len(source)+j]:output.symmetric_difference_update({mon(rawt)})
   rhs=set()
   for term in w['terms'][j]:
    assert term['relation']<len(w['relations'])
    rhs.symmetric_difference_update(parity((tuple(sorted(tuple(mult)+m)),g) for mult in term['multiplier'] for m,g in flat(w['relations'][term['relation']])))
   assert lhs.symmetric_difference(output)==rhs
  seen.extend(r['source_ids'])
 assert sorted(seen)==[i for i, in src.execute('select id from Cnu_AdamsE2_basis where t<=12 order by id')]
 print(f'PASS 30 complete blocks, {len(seen)} columns, original generator images/bases/relations, independent coefficient oracle')
if __name__=='__main__':main()
