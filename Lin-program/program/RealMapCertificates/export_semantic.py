"""Combine actual map columns into whole-matrix semantic certificates."""
import json,pathlib,sqlite3
from export import mono,poly
HERE=pathlib.Path(__file__).resolve().parent
BASE=HERE.parent/'upstream/kervaire-49'
def run():
 a=json.loads((HERE/'audit.json').read_text());src={r['source_basis_id']:r for r in a['resolved']}
 c=sqlite3.connect(f'file:{BASE}/tmf_AdamsSS_t261.db?mode=ro',uri=True)
 target={i:mono(raw) for i,raw in c.execute('select id,mon from tmf_AdamsE2_basis')}
 c=sqlite3.connect(f'file:{BASE}/map_AdamsSS_S0_to_tmf_t261.db?mode=ro',uri=True)
 images={i:sorted(poly(raw)) for i,raw in c.execute('select id,map from map_AdamsE2_S0_to_tmf')}
 out=HERE/'semantic';out.mkdir(exist_ok=True)
 lean=['import RealMapCertificates.MatrixImport','namespace RealMapCertificates.SemanticExamples','open LinProgramCertificates']
 for mat in a['matrices']:
  ids=mat['source_basis_ids'];monomials=[mono(src[i]['source_monomial']) for i in ids]
  relations=[];terms=[]
  for i in ids:
   b=json.loads((HERE/src[i]['certificate']).read_text());offset=len(relations);relations.extend(b['relations']);terms.append([dict(t,relation=t['relation']+offset) for t in b['terms']])
  w=dict(version=1,rows=mat['rows'],cols=mat['cols'],source=monomials,target=[[target[i]] for i in mat['target_basis_ids']],entries=mat['entries'],images=[[g,images[g]] for g in sorted({g for mon in monomials for g in mon})],relations=relations,terms=terms)
  name=f's{mat["s"]}t{mat["t"]}'
  (out/f'{name}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
  if (mat['s'],mat['t']) in [(21,147),(25,150),(1,1),(2,4)]:
   lean += [f'def {name} : WireMatrixSemantics := semantic_map% "RealMapCertificates/semantic/{name}.json"',f'theorem {name}valid : {name}.Valid := by lin_cert using ()']
 lean += ['#print axioms RealMapCertificates.matrixValid_hom','end RealMapCertificates.SemanticExamples']
 (HERE/'SemanticExamples.lean').write_text('\n'.join(lean)+'\n');print(len(a['matrices']),'whole-matrix certificates')
if __name__=='__main__':run()
