import sqlite3,json
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent;c=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
pro=json.loads((p/'audit.json').read_text())['columns'];pl=lambda x:'['+','.join('['+','.join(map(str,m))+']' for m in x)+']'
def mono(raw):
 a=list(map(int,raw.split(','))) if raw else [];return [g for g,e in zip(a[::2],a[1::2]) for _ in range(e)]
lines=['import Fact713C2Row3005.MapComparison','import ModuleMapCertificates.MatrixSemantics','namespace Fact713C2Row3005.MapSemantics','open LinearCertificates NamedElementCertificates ModuleMapCertificates MapActual MapComparison','local instance : Inhabited ModuleMonomial := ⟨⟨[],0⟩⟩']
for tag,s,t in [('middleMap',14,139),('outMap',16,140),('inMap',12,138),('upperMiddleMap',17,141),('upperOutMap',19,142),('upperInMap',15,140)]:
 rows=[x for x in pro if x['source_s']==s and x['source_t']==t];rels=[];terms=[];src=[]
 for row in rows:
  w=json.loads((p/f'wire/basis{row["source_id"]}.json').read_text());off=len(rels);rels+=w['relations'];terms.append([dict(relation=x['relation']+off,multiplier=x['multiplier']) for x in w['terms']]);src.append(w['input'])
 target=[mono(raw) for _,raw in c.execute('select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',(s,t-1))];n=len(rows);m=len(target)
 lines += [f'def {tag}Relations : List Polynomial := ['+','.join(pl(x) for x in rels)+']',f'def {tag}Source : Fin {n} → ModuleMonomial := fun i => (['+','.join('⟨['+','.join(map(str,x['coefficient']))+'],'+str(x['generator'])+'⟩' for x in src)+'] : List ModuleMonomial)[i.val]!',f'def {tag}Target : Fin {m} → Polynomial := fun i => (['+','.join(pl([x]) for x in target)+'] : List Polynomial)[i.val]!',f'def {tag}Terms : Fin {n} → List Term := fun i => (['+','.join('['+','.join('⟨'+str(x['relation'])+','+pl(x['multiplier'])+'⟩' for x in ts)+']' for ts in terms)+'] : List (List Term))[i.val]!',f'theorem {tag}Valid : MatrixValid images {tag}Relations {tag}Source {tag}Target {tag} := by lin_cert using {tag}Terms']
for tag in ['middleMap','outMap','inMap','upperMiddleMap','upperOutMap','upperInMap']:
 lines += [f'theorem {tag}Linear {{R M : Type*}} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]', '    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)', '    (compatible : ∀ g, f (generators g) = evaluate v (images g))',f'    (vanish : ∀ r ∈ {tag}Relations, evaluate v r = 0) (x : Vec _) :',f'    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v ({tag}Target i)) (eval {tag} x) =', f'      f (interpretModule (fun j => evaluateMonomial v ({tag}Source j).coefficient • generators ({tag}Source j).generator) x) :=',f'  matrixValid_linear f v generators images {tag}Relations {tag}Source {tag}Target {tag} {tag}Valid compatible vanish x']
lines += ['end Fact713C2Row3005.MapSemantics'];(p/'MapSemantics.lean').write_text('\n'.join(lines)+'\n')
