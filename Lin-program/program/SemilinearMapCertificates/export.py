import collections,importlib.util,json,pathlib,sqlite3,hashlib
HERE=pathlib.Path(__file__).resolve().parent;ROOT=HERE.parent;BASE=ROOT/'upstream/kervaire-49'
spec=importlib.util.spec_from_file_location('ring',ROOT/'RealMapCertificates/export.py');ring=importlib.util.module_from_spec(spec);spec.loader.exec_module(ring)
def conn(p):return sqlite3.connect(f'file:{BASE/p}?mode=ro',uri=True)
def main():
 category=json.loads((BASE/'ss.json').read_text());sn='CW_sigma_nu_eta_2';obj=next(o for o in category['modules'] if o['name']==sn);m=next(m for m in category['maps'] if m['from']==sn and m['to']=='tmf');src=conn(obj['path']);tgt=conn('tmf_AdamsSS_t261.db');mp=conn(m['path']);cm=conn('map_AdamsSS_S0_to_tmf_t261.db')
 images={i:ring.poly(raw) for i,raw in mp.execute('select id,map from map_AdamsE2_CW_sigma_nu_eta_2_to_tmf')};coefficients={i:ring.poly(raw) for i,raw in cm.execute('select id,map from map_AdamsE2_S0_to_tmf')};basis=collections.defaultdict(dict)
 for i,raw,s,t in tgt.execute('select id,mon,s,t from tmf_AdamsE2_basis order by id'):basis[s,t][ring.mono(raw)]=i
 rels=[(i,[ring.mono(m) for m in raw.split(';')],s,t) for i,raw,s,t in tgt.execute('select rowid,rel,s,t from tmf_AdamsE2_relations')];audit=[];lean=['import SemilinearMapCertificates.Import','namespace SemilinearMapCertificates.Actual','open LinProgramCertificates'];out=HERE/'wire';out.mkdir(exist_ok=True)
 for bid,raw,s,t in src.execute(f'select id,mon,s,t from {sn}_AdamsE2_basis where t<=12 order by id'):
  cells=raw.split(',');g=int(cells[-1]);coeff=ring.mono(','.join(cells[:-1]));assert g in images and g!=4294967295;value={()}
  for x in coeff:
   if x not in coefficients:raise ValueError('missing coefficient-ring image')
   value=ring.multiply(value,coefficients[x])
  value=ring.multiply(value,images[g]);current=set(value);terms=[];used=[];seen=set()
  for step in range(10000):
   bad=next((x for x in sorted(current) if x not in basis[s,t]),None)
   if bad is None:break
   state=tuple(sorted(current));assert state not in seen;seen.add(state)
   choice=next(((rid,rel,ring.divide(bad,rel[0])) for rid,rel,rs,rt in rels if rs<=s and rt<=t and ring.divide(bad,rel[0]) is not None),None)
   if choice is None:raise ValueError('unresolved target reduction')
   rid,rel,q=choice;terms.append(dict(relation=len(used),multiplier=[q]));used.append((rid,rel));current.symmetric_difference_update(ring.multiply({q},rel))
  else:raise ValueError('step limit')
  w=dict(version=1,s=s,t=t,input=dict(coefficient=coeff,generator=g),coefficients=[[x,sorted(coefficients[x])] for x in sorted(set(coeff))],images=[[g,sorted(images[g])]],relations=[r for _,r in used],output=sorted(current),terms=terms);(out/f'basis{bid}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n');lean += [f'def basis{bid} : Wire := semilinear_map% "SemilinearMapCertificates/wire/basis{bid}.json"',f'theorem basis{bid}valid : basis{bid}.Valid := by lin_cert using ()'];audit.append(dict(source_id=bid,s=s,t=t,target_ids=[basis[s,t][x] for x in sorted(current)],relation_ids=[i for i,_ in used]))
 lean+=['#print axioms SemilinearMapCertificates.valid_semilinear','end SemilinearMapCertificates.Actual'];(HERE/'Actual.lean').write_text('\n'.join(lean)+'\n');(HERE/'audit.json').write_text(json.dumps(dict(map=m['name'],coefficient_map=m['over'],columns=audit,sources={p:hashlib.sha256((BASE/p).read_bytes()).hexdigest() for p in [obj['path'],m['path'],'tmf_AdamsSS_t261.db','map_AdamsSS_S0_to_tmf_t261.db']}),indent=2)+'\n');print(len(audit),'semilinear columns;',len({(r['s'],r['t']) for r in audit}),'blocks')
if __name__=='__main__':main()
