"""Independent finite source provenance and F2 substitution/relation audit."""
import collections,hashlib,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
def mono(raw):
 if not raw:return ()
 xs=list(map(int,raw.split(',')));assert len(xs)%2==0 and 4294967295 not in xs
 return tuple(g for g,e in zip(xs[::2],xs[1::2]) for _ in range(e))
def parity(xs):return {m for m,n in collections.Counter(xs).items() if n%2}
def poly(raw):
 assert raw is not None and '4294967295' not in raw
 return set() if raw=='' else {()} if raw==';' else parity(mono(x) for x in raw.split(';'))
def mul(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def main():
 a=json.loads((HERE/'audit.json').read_text())
 for path,expected in a['sources'].items():assert hashlib.sha256((BASE/path).read_bytes()).hexdigest()==expected
 cat=json.loads((BASE/'ss.json').read_text());obj=next(o for o in cat['modules'] if o['name']=='CW_sigma_nu_eta_2');src=sqlite3.connect(f'file:{BASE}/{obj["path"]}?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{BASE}/tmf_AdamsSS_t261.db?mode=ro',uri=True);c=sqlite3.connect(f'file:{BASE}/map_AdamsSS_S0_to_tmf_t261.db?mode=ro',uri=True);coeff=dict(c.execute('select id,map from map_AdamsE2_S0_to_tmf'));c=sqlite3.connect(f'file:{BASE}/map_AdamsSS_CW_sigma_nu_eta_2_to_tmf_t200.db?mode=ro',uri=True);images=dict(c.execute('select id,map from map_AdamsE2_CW_sigma_nu_eta_2_to_tmf'))
 expected=src.execute('select id,mon,s,t from CW_sigma_nu_eta_2_AdamsE2_basis where t<=12 order by id').fetchall();assert len(expected)==len(a['columns'])==21
 for (bid,raw,s,t),row in zip(expected,a['columns']):
  w=json.loads((HERE/'wire'/f'basis{bid}.json').read_text());cells=raw.split(',');g=int(cells[-1]);m=mono(','.join(cells[:-1]));assert w['input']==dict(coefficient=list(m),generator=g)
  assert w['coefficients']==[[i,[list(x) for x in sorted(poly(coeff[i]))]] for i in sorted(set(m))];assert w['images']==[[g,[list(x) for x in sorted(poly(images[g]))]]]
  value={()}
  for i in m:value=mul(value,poly(coeff[i]))
  value=mul(value,poly(images[g]));output={tuple(x) for x in w['output']};rhs=set()
  for term in w['terms']:rhs.symmetric_difference_update(mul({tuple(x) for x in term['multiplier']},{tuple(x) for x in w['relations'][term['relation']]}))
  assert value^output==rhs
  for rel,rid in zip(w['relations'],row['relation_ids']):assert {tuple(x) for x in rel}==poly(tgt.execute('select rel from tmf_AdamsE2_relations where rowid=?',(rid,)).fetchone()[0])
  target={mono(raw):i for i,raw in tgt.execute('select id,mon from tmf_AdamsE2_basis where s=? and t=?',(s,t))};assert sorted(target[x] for x in output)==sorted(row['target_ids'])
 print('PASS 21 complete source blocks, explicit actual coefficient map, unit image and independent relation oracle')
if __name__=='__main__':main()
