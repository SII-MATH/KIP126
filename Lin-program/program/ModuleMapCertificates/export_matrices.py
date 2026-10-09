"""Group previously verified actual module-map columns into complete degree blocks."""
import collections,json,pathlib,sqlite3
HERE=pathlib.Path(__file__).resolve().parent
BASE=HERE.parent/'upstream/kervaire-49'
def mono(raw):
 if not raw:return []
 xs=list(map(int,raw.split(',')))
 return [g for g,e in zip(xs[::2],xs[1::2]) for _ in range(e)]
def main():
 audit=json.loads((HERE/'audit.json').read_text());groups=collections.defaultdict(list)
 for r in audit['columns']:groups[r['source_s'],r['source_t']].append(r)
 c=sqlite3.connect(f'file:{BASE}/S0_AdamsSS_t261.db?mode=ro',uri=True)
 source=sqlite3.connect(f'file:{BASE}/Cnu_AdamsSS_t200.db?mode=ro',uri=True)
 out=HERE/'matrices';out.mkdir(exist_ok=True)
 lean=['import ModuleMapCertificates.MatrixImport','namespace ModuleMapCertificates.MatrixActual','open LinProgramCertificates']
 records=[]
 for (s,t),rows in sorted(groups.items()):
  expected=[r[0] for r in source.execute('select id from Cnu_AdamsE2_basis where s=? and t=? order by id',(s,t))]
  assert expected==[r['source_id'] for r in rows]
  target=list(c.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t-4)))
  terms=[];relations=[];images={};inputs=[]
  for r in rows:
   w=json.loads((HERE/'wire'/f'basis{r["source_id"]}.json').read_text());inputs.append(w['input']);offset=len(relations);relations+=w['relations'];terms.append([dict(term,relation=term['relation']+offset) for term in w['terms']])
   for g,p in w['images']:
    assert g not in images or images[g]==p
    images[g]=p
  wire=dict(version=1,sourceS=s,sourceT=t,targetS=s,targetT=t-4,rows=len(target),cols=len(rows),source=inputs,target=[[mono(raw)] for _,raw in target],entries=[i in r['target_basis_ids'] for i,_ in target for r in rows],images=sorted(images.items()),relations=relations,terms=terms)
  name=f's{s}t{t}';(out/f'{name}.json').write_text(json.dumps(wire,sort_keys=True,separators=(',',':'))+'\n')
  lean += [f'def {name} : MatrixWire := module_matrix% "ModuleMapCertificates/matrices/{name}.json"',f'theorem {name}valid : {name}.Valid := by lin_cert using ()']
  records.append(dict(name=name,source_ids=expected,target_ids=[i for i,_ in target],rows=len(target),cols=len(rows)))
 lean+=['#print axioms ModuleMapCertificates.matrixValid_linear','end ModuleMapCertificates.MatrixActual'];(HERE/'MatrixActual.lean').write_text('\n'.join(lean)+'\n');(HERE/'matrix_audit.json').write_text(json.dumps(records,indent=2)+'\n');print(len(records),'complete degree matrices')
if __name__=='__main__':main()
