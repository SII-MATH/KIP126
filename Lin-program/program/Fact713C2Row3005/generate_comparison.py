import sqlite3,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
src=sqlite3.connect(f'file:{r}/upstream/kervaire-49/C2_AdamsSS_t200.db?mode=ro',uri=True);tgt=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def rows(c,obj,s,t):return c.execute(f'select id,mon,d2 from {obj}_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
def bl(a):return '['+','.join('true' if b else 'false' for b in a)+']'
def mat(rs,n):
 cs=[]
 for _,_,raw in rs:
  assert raw is not None;ids=list(map(int,raw.split(','))) if raw else [];cs.append([i in ids for i in range(n)])
 return [v[i] for i in range(n) for v in cs]
audit=[];lines=['import Fact713C2Row3005.MapActual','import PageTransitionCertificates.InducedMap','import PageTransitionCertificates.Import','namespace Fact713C2Row3005.MapComparison','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
for tag,c,obj,s,t in [('source',src,'C2',14,139),('target',tgt,'S0',14,138),('upperSource',src,'C2',17,141),('upperTarget',tgt,'S0',17,140)]:
 rs=[rows(c,obj,s-2,t-1),rows(c,obj,s,t),rows(c,obj,s+2,t+1)];n,m,k=map(len,rs);args=list(map(str,[k,m,n]))+[''.join('1' if b else '0' for b in x) or '-' for x in [mat(rs[1],k),mat(rs[0],m)]];w=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),*args],text=True))
 lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{w["h"]},'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()'];audit.append(dict(tag=tag,object=obj,s=s,t=t,rows=rs,wire=w))
pro=json.loads((p/'audit.json').read_text())['columns']
for tag,s,t in [('middleMap',14,139),('outMap',16,140),('inMap',12,138),('upperMiddleMap',17,141),('upperOutMap',19,142),('upperInMap',15,140)]:
 sr=rows(src,'C2',s,t);tr=rows(tgt,'S0',s,t-1);cols=[next(x for x in pro if x['source_id']==i)['target_basis_ids'] for i,_,_ in sr];bits=[i in x for i,_,_ in tr for x in cols];lines += [f'def {tag} : Matrix {len(tr)} {len(sr)} := matrixOf {len(tr)} {len(sr)} {bl(bits)}']
for pre,S,T,F,U,L in [('', 'source','target','middleMap','outMap','inMap'),('upper','upperSource','upperTarget','upperMiddleMap','upperOutMap','upperInMap')]:
 lines += [f'theorem {pre}compatible : CompatibleMap (matrixOf {S}.k {S}.m {S}.outgoing) (matrixOf {S}.m {S}.n {S}.incoming) (matrixOf {T}.k {T}.m {T}.outgoing) (matrixOf {T}.m {T}.n {T}.incoming) {F} {U} {L} := by lin_cert using ()']
lines += ['end Fact713C2Row3005.MapComparison'];(p/'MapComparison.lean').write_text('\n'.join(lines)+'\n');(p/'comparison-source.json').write_text(json.dumps(audit,indent=2)+'\n')
